@interface PXModelDeliveryModalDownloadViewController
- (PXModelDeliveryModalDownloadViewController)init;
- (void)clearErrorState;
- (void)createViewsWithCancelBlock:(id)a3 revertBlock:(id)a4;
- (void)reportProgress:(double)a3 stage:(unint64_t)a4;
- (void)setErrorState:(id)a3;
@end

@implementation PXModelDeliveryModalDownloadViewController

- (void)clearErrorState
{
  v2 = [(PXModelDeliveryModalDownloadViewController *)self progressController];
  [v2 clearErrorState];
}

- (void)setErrorState:(id)a3
{
  v4 = a3;
  v5 = [(PXModelDeliveryModalDownloadViewController *)self progressController];
  [v5 setErrorState:v4];

  if (v4)
  {
    v6 = [(PXModelDeliveryModalDownloadViewController *)self descriptionLabel];
    [v6 setHidden:1];

    v7 = [(PXModelDeliveryModalDownloadViewController *)self descriptionAndProgressBind];
    [v7 setActive:0];
  }
}

- (void)reportProgress:(double)a3 stage:(unint64_t)a4
{
  v6 = [(PXModelDeliveryModalDownloadViewController *)self progressController];
  [v6 reportProgress:a4 stage:a3];
}

- (void)createViewsWithCancelBlock:(id)a3 revertBlock:(id)a4
{
  v89[16] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v81 = objc_alloc_init(PXModelDeliveryProgressObjCViewController);
  [(PXModelDeliveryModalDownloadViewController *)self setProgressController:v81];
  v8 = [(PXModelDeliveryModalDownloadViewController *)self view];
  v84 = [(PXModelDeliveryProgressObjCViewController *)v81 view];
  [v8 addSubview:v84];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v10 = PELocalizedString();
  [v9 setText:v10];

  v11 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v9 setFont:v11];

  v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v13 = PELocalizedString();
  [v12 setText:v13];

  [v12 setNumberOfLines:0];
  [v12 setTextAlignment:1];
  [v8 addSubview:v9];
  [v8 addSubview:v12];
  v14 = MEMORY[0x1E69DC628];
  v15 = PELocalizedString();
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __85__PXModelDeliveryModalDownloadViewController_createViewsWithCancelBlock_revertBlock___block_invoke;
  v87[3] = &unk_1E7742C90;
  v88 = v6;
  v80 = v6;
  v78 = [v14 actionWithTitle:v15 image:0 identifier:0 handler:v87];

  v16 = MEMORY[0x1E69DC628];
  v17 = PELocalizedString();
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __85__PXModelDeliveryModalDownloadViewController_createViewsWithCancelBlock_revertBlock___block_invoke_2;
  v85[3] = &unk_1E7742C90;
  v86 = v7;
  v79 = v7;
  v18 = [v16 actionWithTitle:v17 image:0 identifier:0 handler:v85];

  v77 = v18;
  [v18 setAttributes:2];
  v19 = [MEMORY[0x1E69DC738] systemButtonWithPrimaryAction:v78];
  v82 = [MEMORY[0x1E69DC738] systemButtonWithPrimaryAction:v18];
  [v8 addSubview:v19];
  [v8 addSubview:v82];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXModelDeliveryModalDownloadViewController *)self setDescriptionLabel:v12];
  v20 = [v84 topAnchor];
  v21 = [v9 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:10.0];

  LODWORD(v23) = 1144750080;
  v66 = v22;
  [v22 setPriority:v23];
  v24 = [v84 topAnchor];
  v25 = [v12 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:20.0];
  [(PXModelDeliveryModalDownloadViewController *)self setDescriptionAndProgressBind:v26];

  v74 = [v8 topAnchor];
  v73 = [v9 topAnchor];
  v72 = [v74 constraintEqualToAnchor:v73 constant:-8.0];
  v89[0] = v72;
  v76 = v9;
  v71 = [v9 centerXAnchor];
  v70 = [v8 centerXAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v89[1] = v69;
  v68 = [v12 topAnchor];
  v67 = [v9 bottomAnchor];
  v65 = [v68 constraintEqualToAnchor:v67 constant:4.0];
  v89[2] = v65;
  v64 = [v12 centerXAnchor];
  v63 = [v8 centerXAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v89[3] = v62;
  v75 = v12;
  v61 = [v12 leftAnchor];
  v60 = [v8 leftAnchor];
  v59 = [v61 constraintGreaterThanOrEqualToAnchor:v60 constant:8.0];
  v89[4] = v59;
  v57 = [v12 rightAnchor];
  v56 = [v8 rightAnchor];
  v55 = [v57 constraintLessThanOrEqualToAnchor:v56 constant:-8.0];
  v89[5] = v55;
  v54 = [v8 leftAnchor];
  v53 = [v84 leftAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 constant:-8.0];
  v89[6] = v52;
  v51 = [v8 rightAnchor];
  v50 = [v84 rightAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:8.0];
  v89[7] = v49;
  v89[8] = v22;
  v48 = [(PXModelDeliveryModalDownloadViewController *)self descriptionAndProgressBind];
  v89[9] = v48;
  v27 = v19;
  v47 = [v19 topAnchor];
  v45 = [v84 bottomAnchor];
  v44 = [v47 constraintEqualToAnchor:v45 constant:4.0];
  v89[10] = v44;
  v43 = [v19 leftAnchor];
  v42 = [v8 leftAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 constant:16.0];
  v89[11] = v41;
  v40 = [v82 rightAnchor];
  v39 = [v8 rightAnchor];
  v28 = [v40 constraintEqualToAnchor:v39 constant:-16.0];
  v89[12] = v28;
  v29 = [v82 topAnchor];
  v58 = v19;
  v30 = [v19 topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v89[13] = v31;
  v32 = [v27 bottomAnchor];
  v33 = [v8 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:-8.0];
  v89[14] = v34;
  v35 = [v8 widthAnchor];
  v36 = [v35 constraintLessThanOrEqualToConstant:380.0];
  v89[15] = v36;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:16];

  [MEMORY[0x1E696ACD8] activateConstraints:v46];
  v37 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v8 setBackgroundColor:v37];

  v38 = [v8 layer];
  [v38 setCornerRadius:20.0];

  [v82 setHidden:{-[PXModelDeliveryModalDownloadViewController allowForRevert](self, "allowForRevert") ^ 1}];
  [(PXModelDeliveryModalDownloadViewController *)self setModalPresentationStyle:6];
  [(PXModelDeliveryModalDownloadViewController *)self setModalPresentationCapturesStatusBarAppearance:1];
}

- (PXModelDeliveryModalDownloadViewController)init
{
  v3.receiver = self;
  v3.super_class = PXModelDeliveryModalDownloadViewController;
  result = [(PXModelDeliveryModalDownloadViewController *)&v3 init];
  if (result)
  {
    result->_allowForRevert = 1;
  }

  return result;
}

@end