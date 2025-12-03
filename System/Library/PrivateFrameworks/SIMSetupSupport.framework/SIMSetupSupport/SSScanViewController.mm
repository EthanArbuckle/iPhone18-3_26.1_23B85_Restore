@interface SSScanViewController
- (CGPoint)makeCGPoint:(id)point;
- (SSScanViewController)initWithTitle:(id)title detail:(id)detail;
- (SSScanViewControllerDelegate)qrcodeDelegate;
- (TSSIMSetupFlowDelegate)delegate;
- (int64_t)_getCurrentDeviceOrientation;
- (void)_otherButtonTapped;
- (void)_setNavigationItem;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)decodeMetadata:(id)metadata;
- (void)didChangeValueForKey:(id)key;
- (void)drawQRBox:(id)box;
- (void)startScanning;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SSScanViewController

- (SSScanViewController)initWithTitle:(id)title detail:(id)detail
{
  v7.receiver = self;
  v7.super_class = SSScanViewController;
  v4 = [(SSScanViewController *)&v7 initWithTitle:title detailText:detail symbolName:0 contentLayout:1];
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
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(SSScanViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

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
  contentView = [(SSScanViewController *)self contentView];
  [contentView addSubview:self->_scanView];

  v13 = [[TSCellularPlanQRCodeScannerView alloc] initWithFrame:v6, v7, v8, v9];
  scannerView = self->_scannerView;
  self->_scannerView = v13;

  [(TSCellularPlanQRCodeScannerView *)self->_scannerView setDelegate:self];
  [(TSCellularPlanQRCodeScannerView *)self->_scannerView setupCameraSession];
  v15 = self->_scannerView;
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(TSCellularPlanQRCodeScannerView *)v15 setBackgroundColor:blackColor];

  [(UIView *)self->_scanView addSubview:self->_scannerView];
  layer = [MEMORY[0x277CD9F90] layer];
  holeOutlineLayer = self->_holeOutlineLayer;
  self->_holeOutlineLayer = layer;

  clearColor = [MEMORY[0x277D75348] clearColor];
  -[CAShapeLayer setFillColor:](self->_holeOutlineLayer, "setFillColor:", [clearColor CGColor]);

  systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
  -[CAShapeLayer setStrokeColor:](self->_holeOutlineLayer, "setStrokeColor:", [systemYellowColor CGColor]);

  [(CAShapeLayer *)self->_holeOutlineLayer setLineWidth:2.0];
  v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
  cutoutView = self->_cutoutView;
  self->_cutoutView = v21;

  [(UIView *)self->_cutoutView setTranslatesAutoresizingMaskIntoConstraints:0];
  layer2 = [(UIView *)self->_cutoutView layer];
  [layer2 addSublayer:self->_holeOutlineLayer];

  [(UIView *)self->_cutoutView setAlpha:0.0];
  contentView2 = [(SSScanViewController *)self contentView];
  [contentView2 addSubview:self->_cutoutView];

  contentView3 = [(SSScanViewController *)self contentView];
  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  [contentView3 setBackgroundColor:systemBackgroundColor2];

  v27 = +[SSOBLinkTrayButton linkButton];
  enterDetailsManuallyButton = self->_enterDetailsManuallyButton;
  self->_enterDetailsManuallyButton = v27;

  [(SSOBLinkTrayButton *)self->_enterDetailsManuallyButton addTarget:self action:sel__otherButtonTapped forControlEvents:64];
  v29 = self->_enterDetailsManuallyButton;
  v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"SOURCE_ENTER_DETAILS_MANUALLY" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBLinkTrayButton *)v29 setTitle:v31 forState:0];

  buttonTray = [(SSScanViewController *)self buttonTray];
  [buttonTray addButton:self->_enterDetailsManuallyButton];

  centerYAnchor = [(UIView *)self->_scanView centerYAnchor];
  contentView4 = [(SSScanViewController *)self contentView];
  centerYAnchor2 = [contentView4 centerYAnchor];
  v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v36 setActive:1];

  leadingAnchor = [(UIView *)self->_scanView leadingAnchor];
  view2 = [(SSScanViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v40 setActive:1];

  trailingAnchor = [(UIView *)self->_scanView trailingAnchor];
  view3 = [(SSScanViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v44 setActive:1];

  heightAnchor = [(UIView *)self->_scanView heightAnchor];
  v46 = [heightAnchor constraintEqualToConstant:242.0];
  [v46 setActive:1];

  leadingAnchor3 = [(UIView *)self->_cutoutView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_scanView leadingAnchor];
  v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v49 setActive:1];

  topAnchor = [(UIView *)self->_cutoutView topAnchor];
  topAnchor2 = [(UIView *)self->_scanView topAnchor];
  v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v52 setActive:1];

  widthAnchor = [(UIView *)self->_cutoutView widthAnchor];
  widthAnchor2 = [(UIView *)self->_scanView widthAnchor];
  v55 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v55 setActive:1];

  heightAnchor2 = [(UIView *)self->_cutoutView heightAnchor];
  heightAnchor3 = [(UIView *)self->_scanView heightAnchor];
  v58 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  [v58 setActive:1];
}

- (void)_setNavigationItem
{
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:0 animated:0];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SSScanViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLayoutSubviews];
  view = [(SSScanViewController *)self view];
  [view layoutIfNeeded];

  scannerView = self->_scannerView;
  [(UIView *)self->_scanView bounds];
  [(TSCellularPlanQRCodeScannerView *)scannerView setFrame:?];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SSScanViewController;
  coordinatorCopy = coordinator;
  [(OBBaseWelcomeController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__SSScanViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_279B45690;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

uint64_t __75__SSScanViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[159];
  v3 = [v1 _getCurrentDeviceOrientation];

  return [v2 setOrientation:v3];
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  objectsCopy = objects;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SSScanViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke;
  v8[3] = &unk_279B44490;
  v9 = objectsCopy;
  selfCopy = self;
  v7 = objectsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __78__SSScanViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  [*(a1 + 40) decodeMetadata:v2];
}

- (void)decodeMetadata:(id)metadata
{
  v23 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  stringValue = [metadataCopy stringValue];
  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = stringValue;
    v21 = 2080;
    v22 = "[SSScanViewController decodeMetadata:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "scannedCode %@ @%s", buf, 0x16u);
  }

  if (stringValue)
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
      objc_storeStrong(&self->_scannedCode, stringValue);
      WeakRetained = objc_loadWeakRetained(&self->_qrcodeDelegate);
      if (WeakRetained)
      {
        [(SSScanViewController *)self _stopScanning];
        view = [(SSScanViewController *)self view];
        [view setUserInteractionEnabled:0];

        corners = [metadataCopy corners];
        [(SSScanViewController *)self drawQRBox:corners];

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
        v15 = stringValue;
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

- (CGPoint)makeCGPoint:(id)point
{
  pointCopy = point;
  v5 = [pointCopy valueForKey:@"X"];
  [v5 floatValue];
  v7 = v6;
  v8 = [pointCopy valueForKey:@"Y"];

  [v8 floatValue];
  v10 = v9;

  scannerView = self->_scannerView;

  [(TSCellularPlanQRCodeScannerView *)scannerView pointForCaptureDevicePointOfInterest:v7, v10];
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)drawQRBox:(id)box
{
  boxCopy = box;
  if ([boxCopy count])
  {
    v4 = [boxCopy objectAtIndexedSubscript:0];
    [(SSScanViewController *)self makeCGPoint:v4];
    v6 = v5;
    v8 = v7;

    v9 = [boxCopy objectAtIndexedSubscript:2];
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

    bezierPath = [MEMORY[0x277D75208] bezierPath];
    v36.origin.x = v6;
    v36.origin.y = v8;
    v36.size.width = v14;
    v36.size.height = v14;
    v17 = CGRectGetMinX(v36) + 5.0;
    v37.origin.x = v6;
    v37.origin.y = v8;
    v37.size.width = v14;
    v37.size.height = v14;
    [bezierPath moveToPoint:{v17, CGRectGetMinY(v37)}];
    v38.origin.x = v6;
    v38.origin.y = v8;
    v38.size.width = v14;
    v38.size.height = v14;
    v18 = v15 + CGRectGetMinX(v38);
    v39.origin.x = v6;
    v39.origin.y = v8;
    v39.size.width = v14;
    v39.size.height = v14;
    [bezierPath addLineToPoint:{v18, CGRectGetMinY(v39)}];
    v40.origin.x = v6;
    v40.origin.y = v8;
    v40.size.width = v14;
    v40.size.height = v14;
    v19 = CGRectGetMaxX(v40) - v15;
    v41.origin.x = v6;
    v41.origin.y = v8;
    v41.size.width = v14;
    v41.size.height = v14;
    [bezierPath moveToPoint:{v19, CGRectGetMinY(v41)}];
    v42.origin.x = v6;
    v42.origin.y = v8;
    v42.size.width = v14;
    v42.size.height = v14;
    v20 = CGRectGetMaxX(v42) + -5.0;
    v43.origin.x = v6;
    v43.origin.y = v8;
    v43.size.width = v14;
    v43.size.height = v14;
    [bezierPath addLineToPoint:{v20, CGRectGetMinY(v43)}];
    v44.origin.x = v6;
    v44.origin.y = v8;
    v44.size.width = v14;
    v44.size.height = v14;
    v21 = CGRectGetMaxX(v44) + -5.0;
    v45.origin.x = v6;
    v45.origin.y = v8;
    v45.size.width = v14;
    v45.size.height = v14;
    [bezierPath addArcWithCenter:1 radius:v21 startAngle:CGRectGetMinY(v45) + 5.0 endAngle:5.0 clockwise:?];
    v46.origin.x = v6;
    v46.origin.y = v8;
    v46.size.width = v14;
    v46.size.height = v14;
    MaxX = CGRectGetMaxX(v46);
    v47.origin.x = v6;
    v47.origin.y = v8;
    v47.size.width = v14;
    v47.size.height = v14;
    [bezierPath addLineToPoint:{MaxX, v15 + CGRectGetMinY(v47)}];
    v48.origin.x = v6;
    v48.origin.y = v8;
    v48.size.width = v14;
    v48.size.height = v14;
    v23 = CGRectGetMaxX(v48);
    v49.origin.x = v6;
    v49.origin.y = v8;
    v49.size.width = v14;
    v49.size.height = v14;
    [bezierPath moveToPoint:{v23, CGRectGetMaxY(v49) - v15}];
    v50.origin.x = v6;
    v50.origin.y = v8;
    v50.size.width = v14;
    v50.size.height = v14;
    v24 = CGRectGetMaxX(v50);
    v51.origin.x = v6;
    v51.origin.y = v8;
    v51.size.width = v14;
    v51.size.height = v14;
    [bezierPath addLineToPoint:{v24, CGRectGetMaxY(v51) + -5.0}];
    v52.origin.x = v6;
    v52.origin.y = v8;
    v52.size.width = v14;
    v52.size.height = v14;
    v25 = CGRectGetMaxX(v52) + -5.0;
    v53.origin.x = v6;
    v53.origin.y = v8;
    v53.size.width = v14;
    v53.size.height = v14;
    [bezierPath addArcWithCenter:1 radius:v25 startAngle:CGRectGetMaxY(v53) + -5.0 endAngle:5.0 clockwise:{0.0, 1.57079633}];
    v54.origin.x = v6;
    v54.origin.y = v8;
    v54.size.width = v14;
    v54.size.height = v14;
    v26 = CGRectGetMaxX(v54) - v15;
    v55.origin.x = v6;
    v55.origin.y = v8;
    v55.size.width = v14;
    v55.size.height = v14;
    [bezierPath addLineToPoint:{v26, CGRectGetMaxY(v55)}];
    v56.origin.x = v6;
    v56.origin.y = v8;
    v56.size.width = v14;
    v56.size.height = v14;
    v27 = v15 + CGRectGetMinX(v56);
    v57.origin.x = v6;
    v57.origin.y = v8;
    v57.size.width = v14;
    v57.size.height = v14;
    [bezierPath moveToPoint:{v27, CGRectGetMaxY(v57)}];
    v58.origin.x = v6;
    v58.origin.y = v8;
    v58.size.width = v14;
    v58.size.height = v14;
    v28 = CGRectGetMinX(v58) + 5.0;
    v59.origin.x = v6;
    v59.origin.y = v8;
    v59.size.width = v14;
    v59.size.height = v14;
    [bezierPath addLineToPoint:{v28, CGRectGetMaxY(v59)}];
    v60.origin.x = v6;
    v60.origin.y = v8;
    v60.size.width = v14;
    v60.size.height = v14;
    v29 = CGRectGetMinX(v60) + 5.0;
    v61.origin.x = v6;
    v61.origin.y = v8;
    v61.size.width = v14;
    v61.size.height = v14;
    [bezierPath addArcWithCenter:1 radius:v29 startAngle:CGRectGetMaxY(v61) + -5.0 endAngle:5.0 clockwise:{1.57079633, 3.14159265}];
    v62.origin.x = v6;
    v62.origin.y = v8;
    v62.size.width = v14;
    v62.size.height = v14;
    MinX = CGRectGetMinX(v62);
    v63.origin.x = v6;
    v63.origin.y = v8;
    v63.size.width = v14;
    v63.size.height = v14;
    [bezierPath addLineToPoint:{MinX, CGRectGetMaxY(v63) - v15}];
    v64.origin.x = v6;
    v64.origin.y = v8;
    v64.size.width = v14;
    v64.size.height = v14;
    v31 = CGRectGetMinX(v64);
    v65.origin.x = v6;
    v65.origin.y = v8;
    v65.size.width = v14;
    v65.size.height = v14;
    [bezierPath moveToPoint:{v31, v15 + CGRectGetMinY(v65)}];
    v66.origin.x = v6;
    v66.origin.y = v8;
    v66.size.width = v14;
    v66.size.height = v14;
    v32 = CGRectGetMinX(v66);
    v67.origin.x = v6;
    v67.origin.y = v8;
    v67.size.width = v14;
    v67.size.height = v14;
    [bezierPath addLineToPoint:{v32, CGRectGetMinY(v67) + 5.0}];
    v68.origin.x = v6;
    v68.origin.y = v8;
    v68.size.width = v14;
    v68.size.height = v14;
    v33 = CGRectGetMinX(v68) + 5.0;
    v69.origin.x = v6;
    v69.origin.y = v8;
    v69.size.width = v14;
    v69.size.height = v14;
    [bezierPath addArcWithCenter:1 radius:v33 startAngle:CGRectGetMinY(v69) + 5.0 endAngle:5.0 clockwise:{3.14159265, 4.71238898}];
    -[CAShapeLayer setPath:](self->_holeOutlineLayer, "setPath:", [bezierPath CGPath]);
  }
}

- (void)didChangeValueForKey:(id)key
{
  if ([key isEqualToString:@"userConsentAllowed"])
  {
    scannerView = self->_scannerView;

    [(TSCellularPlanQRCodeScannerView *)scannerView startRunning];
  }
}

- (int64_t)_getCurrentDeviceOrientation
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  orientation = [currentDevice orientation];

  if ((orientation - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return orientation;
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