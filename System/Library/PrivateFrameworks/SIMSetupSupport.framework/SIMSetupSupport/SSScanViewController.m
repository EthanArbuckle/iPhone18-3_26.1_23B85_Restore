@interface SSScanViewController
- (CGPoint)makeCGPoint:(id)a3;
- (SSScanViewController)initWithTitle:(id)a3 detail:(id)a4;
- (SSScanViewControllerDelegate)qrcodeDelegate;
- (TSSIMSetupFlowDelegate)delegate;
- (int64_t)_getCurrentDeviceOrientation;
- (void)_otherButtonTapped;
- (void)_setNavigationItem;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)decodeMetadata:(id)a3;
- (void)didChangeValueForKey:(id)a3;
- (void)drawQRBox:(id)a3;
- (void)startScanning;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SSScanViewController

- (SSScanViewController)initWithTitle:(id)a3 detail:(id)a4
{
  v7.receiver = self;
  v7.super_class = SSScanViewController;
  v4 = [(SSScanViewController *)&v7 initWithTitle:a3 detailText:a4 symbolName:0 contentLayout:1];
  v5 = v4;
  if (v4)
  {
    [(SSScanViewController *)v4 setModalInPresentation:1];
  }

  return v5;
}

- (void)startScanning
{
  scannedCode = self->_scannedCode;
  self->_scannedCode = 0;

  scannerView = self->_scannerView;

  [(TSCellularPlanQRCodeScannerView *)scannerView startRunning];
}

- (void)viewDidLoad
{
  v59.receiver = self;
  v59.super_class = SSScanViewController;
  [(TSOBWelcomeController *)&v59 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(SSScanViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(UIViewController *)self setNavigationBarColor];
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
  scanView = self->_scanView;
  self->_scanView = v10;

  [(UIView *)self->_scanView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(SSScanViewController *)self contentView];
  [v12 addSubview:self->_scanView];

  v13 = [[TSCellularPlanQRCodeScannerView alloc] initWithFrame:v6, v7, v8, v9];
  scannerView = self->_scannerView;
  self->_scannerView = v13;

  [(TSCellularPlanQRCodeScannerView *)self->_scannerView setDelegate:self];
  [(TSCellularPlanQRCodeScannerView *)self->_scannerView setupCameraSession];
  v15 = self->_scannerView;
  v16 = [MEMORY[0x277D75348] blackColor];
  [(TSCellularPlanQRCodeScannerView *)v15 setBackgroundColor:v16];

  [(UIView *)self->_scanView addSubview:self->_scannerView];
  v17 = [MEMORY[0x277CD9F90] layer];
  holeOutlineLayer = self->_holeOutlineLayer;
  self->_holeOutlineLayer = v17;

  v19 = [MEMORY[0x277D75348] clearColor];
  -[CAShapeLayer setFillColor:](self->_holeOutlineLayer, "setFillColor:", [v19 CGColor]);

  v20 = [MEMORY[0x277D75348] systemYellowColor];
  -[CAShapeLayer setStrokeColor:](self->_holeOutlineLayer, "setStrokeColor:", [v20 CGColor]);

  [(CAShapeLayer *)self->_holeOutlineLayer setLineWidth:2.0];
  v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
  cutoutView = self->_cutoutView;
  self->_cutoutView = v21;

  [(UIView *)self->_cutoutView setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [(UIView *)self->_cutoutView layer];
  [v23 addSublayer:self->_holeOutlineLayer];

  [(UIView *)self->_cutoutView setAlpha:0.0];
  v24 = [(SSScanViewController *)self contentView];
  [v24 addSubview:self->_cutoutView];

  v25 = [(SSScanViewController *)self contentView];
  v26 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v25 setBackgroundColor:v26];

  v27 = +[SSOBLinkTrayButton linkButton];
  enterDetailsManuallyButton = self->_enterDetailsManuallyButton;
  self->_enterDetailsManuallyButton = v27;

  [(SSOBLinkTrayButton *)self->_enterDetailsManuallyButton addTarget:self action:sel__otherButtonTapped forControlEvents:64];
  v29 = self->_enterDetailsManuallyButton;
  v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"SOURCE_ENTER_DETAILS_MANUALLY" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBLinkTrayButton *)v29 setTitle:v31 forState:0];

  v32 = [(SSScanViewController *)self buttonTray];
  [v32 addButton:self->_enterDetailsManuallyButton];

  v33 = [(UIView *)self->_scanView centerYAnchor];
  v34 = [(SSScanViewController *)self contentView];
  v35 = [v34 centerYAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  [v36 setActive:1];

  v37 = [(UIView *)self->_scanView leadingAnchor];
  v38 = [(SSScanViewController *)self view];
  v39 = [v38 leadingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  [v40 setActive:1];

  v41 = [(UIView *)self->_scanView trailingAnchor];
  v42 = [(SSScanViewController *)self view];
  v43 = [v42 trailingAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  v45 = [(UIView *)self->_scanView heightAnchor];
  v46 = [v45 constraintEqualToConstant:242.0];
  [v46 setActive:1];

  v47 = [(UIView *)self->_cutoutView leadingAnchor];
  v48 = [(UIView *)self->_scanView leadingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  v50 = [(UIView *)self->_cutoutView topAnchor];
  v51 = [(UIView *)self->_scanView topAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  [v52 setActive:1];

  v53 = [(UIView *)self->_cutoutView widthAnchor];
  v54 = [(UIView *)self->_scanView widthAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];
  [v55 setActive:1];

  v56 = [(UIView *)self->_cutoutView heightAnchor];
  v57 = [(UIView *)self->_scanView heightAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];
  [v58 setActive:1];
}

- (void)_setNavigationItem
{
  v2 = [(OBBaseWelcomeController *)self navigationItem];
  [v2 setHidesBackButton:0 animated:0];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SSScanViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLayoutSubviews];
  v3 = [(SSScanViewController *)self view];
  [v3 layoutIfNeeded];

  scannerView = self->_scannerView;
  [(UIView *)self->_scanView bounds];
  [(TSCellularPlanQRCodeScannerView *)scannerView setFrame:?];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SSScanViewController;
  v7 = a4;
  [(OBBaseWelcomeController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__SSScanViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_279B45690;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

uint64_t __75__SSScanViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[159];
  v3 = [v1 _getCurrentDeviceOrientation];

  return [v2 setOrientation:v3];
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SSScanViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke;
  v8[3] = &unk_279B44490;
  v9 = v6;
  v10 = self;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __78__SSScanViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  [*(a1 + 40) decodeMetadata:v2];
}

- (void)decodeMetadata:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringValue];
  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v5;
    v21 = 2080;
    v22 = "[SSScanViewController decodeMetadata:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "scannedCode %@ @%s", buf, 0x16u);
  }

  if (v5)
  {
    if (self->_scannedCode)
    {
      WeakRetained = _TSLogDomain();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[SSScanViewController decodeMetadata:]";
        _os_log_impl(&dword_262AA8000, WeakRetained, OS_LOG_TYPE_DEFAULT, "already scanned the code. Ignoring this @%s", buf, 0xCu);
      }
    }

    else
    {
      objc_storeStrong(&self->_scannedCode, v5);
      WeakRetained = objc_loadWeakRetained(&self->_qrcodeDelegate);
      if (WeakRetained)
      {
        [(SSScanViewController *)self _stopScanning];
        v8 = [(SSScanViewController *)self view];
        [v8 setUserInteractionEnabled:0];

        v9 = [v4 corners];
        [(SSScanViewController *)self drawQRBox:v9];

        objc_initWeak(buf, self);
        v10 = MEMORY[0x277D75D18];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __39__SSScanViewController_decodeMetadata___block_invoke;
        v17[3] = &unk_279B44400;
        objc_copyWeak(&v18, buf);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __39__SSScanViewController_decodeMetadata___block_invoke_2;
        v13[3] = &unk_279B44660;
        WeakRetained = WeakRetained;
        v14 = WeakRetained;
        v15 = v5;
        objc_copyWeak(&v16, buf);
        [v10 animateWithDuration:v17 animations:v13 completion:0.25];
        objc_destroyWeak(&v16);

        objc_destroyWeak(&v18);
        objc_destroyWeak(buf);
      }

      else
      {
        v11 = _TSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [SSScanViewController decodeMetadata:v11];
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __39__SSScanViewController_decodeMetadata___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained cutoutView];
  [v1 setAlpha:1.0];
}

void __39__SSScanViewController_decodeMetadata___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __39__SSScanViewController_decodeMetadata___block_invoke_2_cold_1(v3);
    }
  }

  AudioServicesPlaySystemSound(0xFFFu);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SSScanViewController_decodeMetadata___block_invoke_50;
  v6[3] = &unk_279B44D40;
  objc_copyWeak(&v7, (a1 + 48));
  [v4 onCodeDetected:v5 completion:v6];
  objc_destroyWeak(&v7);
}

void __39__SSScanViewController_decodeMetadata___block_invoke_50(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained delegate];
    v4 = objc_loadWeakRetained((a1 + 32));
    [v3 viewControllerDidComplete:v4];

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[SSScanViewController decodeMetadata:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "unexpect qrcode @%s", buf, 0xCu);
    }

    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 view];
    [v8 setUserInteractionEnabled:1];

    v9 = objc_loadWeakRetained((a1 + 32));
    [v9 startScanning];

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (CGPoint)makeCGPoint:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"X"];
  [v5 floatValue];
  v7 = v6;
  v8 = [v4 valueForKey:@"Y"];

  [v8 floatValue];
  v10 = v9;

  scannerView = self->_scannerView;

  [(TSCellularPlanQRCodeScannerView *)scannerView pointForCaptureDevicePointOfInterest:v7, v10];
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)drawQRBox:(id)a3
{
  v34 = a3;
  if ([v34 count])
  {
    v4 = [v34 objectAtIndexedSubscript:0];
    [(SSScanViewController *)self makeCGPoint:v4];
    v6 = v5;
    v8 = v7;

    v9 = [v34 objectAtIndexedSubscript:2];
    [(SSScanViewController *)self makeCGPoint:v9];
    v11 = v10;
    v13 = v12;

    if (v11 - v6 <= v13 - v8)
    {
      v14 = v13 - v8;
    }

    else
    {
      v14 = v11 - v6;
    }

    if (v14 / 5.0 >= 5.0)
    {
      v15 = v14 / 5.0;
    }

    else
    {
      v15 = 5.0;
    }

    v16 = [MEMORY[0x277D75208] bezierPath];
    v36.origin.x = v6;
    v36.origin.y = v8;
    v36.size.width = v14;
    v36.size.height = v14;
    v17 = CGRectGetMinX(v36) + 5.0;
    v37.origin.x = v6;
    v37.origin.y = v8;
    v37.size.width = v14;
    v37.size.height = v14;
    [v16 moveToPoint:{v17, CGRectGetMinY(v37)}];
    v38.origin.x = v6;
    v38.origin.y = v8;
    v38.size.width = v14;
    v38.size.height = v14;
    v18 = v15 + CGRectGetMinX(v38);
    v39.origin.x = v6;
    v39.origin.y = v8;
    v39.size.width = v14;
    v39.size.height = v14;
    [v16 addLineToPoint:{v18, CGRectGetMinY(v39)}];
    v40.origin.x = v6;
    v40.origin.y = v8;
    v40.size.width = v14;
    v40.size.height = v14;
    v19 = CGRectGetMaxX(v40) - v15;
    v41.origin.x = v6;
    v41.origin.y = v8;
    v41.size.width = v14;
    v41.size.height = v14;
    [v16 moveToPoint:{v19, CGRectGetMinY(v41)}];
    v42.origin.x = v6;
    v42.origin.y = v8;
    v42.size.width = v14;
    v42.size.height = v14;
    v20 = CGRectGetMaxX(v42) + -5.0;
    v43.origin.x = v6;
    v43.origin.y = v8;
    v43.size.width = v14;
    v43.size.height = v14;
    [v16 addLineToPoint:{v20, CGRectGetMinY(v43)}];
    v44.origin.x = v6;
    v44.origin.y = v8;
    v44.size.width = v14;
    v44.size.height = v14;
    v21 = CGRectGetMaxX(v44) + -5.0;
    v45.origin.x = v6;
    v45.origin.y = v8;
    v45.size.width = v14;
    v45.size.height = v14;
    [v16 addArcWithCenter:1 radius:v21 startAngle:CGRectGetMinY(v45) + 5.0 endAngle:5.0 clockwise:?];
    v46.origin.x = v6;
    v46.origin.y = v8;
    v46.size.width = v14;
    v46.size.height = v14;
    MaxX = CGRectGetMaxX(v46);
    v47.origin.x = v6;
    v47.origin.y = v8;
    v47.size.width = v14;
    v47.size.height = v14;
    [v16 addLineToPoint:{MaxX, v15 + CGRectGetMinY(v47)}];
    v48.origin.x = v6;
    v48.origin.y = v8;
    v48.size.width = v14;
    v48.size.height = v14;
    v23 = CGRectGetMaxX(v48);
    v49.origin.x = v6;
    v49.origin.y = v8;
    v49.size.width = v14;
    v49.size.height = v14;
    [v16 moveToPoint:{v23, CGRectGetMaxY(v49) - v15}];
    v50.origin.x = v6;
    v50.origin.y = v8;
    v50.size.width = v14;
    v50.size.height = v14;
    v24 = CGRectGetMaxX(v50);
    v51.origin.x = v6;
    v51.origin.y = v8;
    v51.size.width = v14;
    v51.size.height = v14;
    [v16 addLineToPoint:{v24, CGRectGetMaxY(v51) + -5.0}];
    v52.origin.x = v6;
    v52.origin.y = v8;
    v52.size.width = v14;
    v52.size.height = v14;
    v25 = CGRectGetMaxX(v52) + -5.0;
    v53.origin.x = v6;
    v53.origin.y = v8;
    v53.size.width = v14;
    v53.size.height = v14;
    [v16 addArcWithCenter:1 radius:v25 startAngle:CGRectGetMaxY(v53) + -5.0 endAngle:5.0 clockwise:{0.0, 1.57079633}];
    v54.origin.x = v6;
    v54.origin.y = v8;
    v54.size.width = v14;
    v54.size.height = v14;
    v26 = CGRectGetMaxX(v54) - v15;
    v55.origin.x = v6;
    v55.origin.y = v8;
    v55.size.width = v14;
    v55.size.height = v14;
    [v16 addLineToPoint:{v26, CGRectGetMaxY(v55)}];
    v56.origin.x = v6;
    v56.origin.y = v8;
    v56.size.width = v14;
    v56.size.height = v14;
    v27 = v15 + CGRectGetMinX(v56);
    v57.origin.x = v6;
    v57.origin.y = v8;
    v57.size.width = v14;
    v57.size.height = v14;
    [v16 moveToPoint:{v27, CGRectGetMaxY(v57)}];
    v58.origin.x = v6;
    v58.origin.y = v8;
    v58.size.width = v14;
    v58.size.height = v14;
    v28 = CGRectGetMinX(v58) + 5.0;
    v59.origin.x = v6;
    v59.origin.y = v8;
    v59.size.width = v14;
    v59.size.height = v14;
    [v16 addLineToPoint:{v28, CGRectGetMaxY(v59)}];
    v60.origin.x = v6;
    v60.origin.y = v8;
    v60.size.width = v14;
    v60.size.height = v14;
    v29 = CGRectGetMinX(v60) + 5.0;
    v61.origin.x = v6;
    v61.origin.y = v8;
    v61.size.width = v14;
    v61.size.height = v14;
    [v16 addArcWithCenter:1 radius:v29 startAngle:CGRectGetMaxY(v61) + -5.0 endAngle:5.0 clockwise:{1.57079633, 3.14159265}];
    v62.origin.x = v6;
    v62.origin.y = v8;
    v62.size.width = v14;
    v62.size.height = v14;
    MinX = CGRectGetMinX(v62);
    v63.origin.x = v6;
    v63.origin.y = v8;
    v63.size.width = v14;
    v63.size.height = v14;
    [v16 addLineToPoint:{MinX, CGRectGetMaxY(v63) - v15}];
    v64.origin.x = v6;
    v64.origin.y = v8;
    v64.size.width = v14;
    v64.size.height = v14;
    v31 = CGRectGetMinX(v64);
    v65.origin.x = v6;
    v65.origin.y = v8;
    v65.size.width = v14;
    v65.size.height = v14;
    [v16 moveToPoint:{v31, v15 + CGRectGetMinY(v65)}];
    v66.origin.x = v6;
    v66.origin.y = v8;
    v66.size.width = v14;
    v66.size.height = v14;
    v32 = CGRectGetMinX(v66);
    v67.origin.x = v6;
    v67.origin.y = v8;
    v67.size.width = v14;
    v67.size.height = v14;
    [v16 addLineToPoint:{v32, CGRectGetMinY(v67) + 5.0}];
    v68.origin.x = v6;
    v68.origin.y = v8;
    v68.size.width = v14;
    v68.size.height = v14;
    v33 = CGRectGetMinX(v68) + 5.0;
    v69.origin.x = v6;
    v69.origin.y = v8;
    v69.size.width = v14;
    v69.size.height = v14;
    [v16 addArcWithCenter:1 radius:v33 startAngle:CGRectGetMinY(v69) + 5.0 endAngle:5.0 clockwise:{3.14159265, 4.71238898}];
    -[CAShapeLayer setPath:](self->_holeOutlineLayer, "setPath:", [v16 CGPath]);
  }
}

- (void)didChangeValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"userConsentAllowed"])
  {
    scannerView = self->_scannerView;

    [(TSCellularPlanQRCodeScannerView *)scannerView startRunning];
  }
}

- (int64_t)_getCurrentDeviceOrientation
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 orientation];

  if ((v3 - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)_otherButtonTapped
{
  self->_isEnterManuallyTapped = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SSScanViewControllerDelegate)qrcodeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_qrcodeDelegate);

  return WeakRetained;
}

- (void)decodeMetadata:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SSScanViewController decodeMetadata:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid qrcode delegate @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __39__SSScanViewController_decodeMetadata___block_invoke_2_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SSScanViewController decodeMetadata:]_block_invoke_2";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]animation failed! @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end