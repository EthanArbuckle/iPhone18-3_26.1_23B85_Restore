@interface PXModelDeliveryModalDownloadViewController
- (PXModelDeliveryModalDownloadViewController)init;
- (void)clearErrorState;
- (void)createViewsWithCancelBlock:(id)block revertBlock:(id)revertBlock;
- (void)reportProgress:(double)progress stage:(unint64_t)stage;
- (void)setErrorState:(id)state;
@end

@implementation PXModelDeliveryModalDownloadViewController

- (void)clearErrorState
{
  progressController = [(PXModelDeliveryModalDownloadViewController *)self progressController];
  [progressController clearErrorState];
}

- (void)setErrorState:(id)state
{
  stateCopy = state;
  progressController = [(PXModelDeliveryModalDownloadViewController *)self progressController];
  [progressController setErrorState:stateCopy];

  if (stateCopy)
  {
    descriptionLabel = [(PXModelDeliveryModalDownloadViewController *)self descriptionLabel];
    [descriptionLabel setHidden:1];

    descriptionAndProgressBind = [(PXModelDeliveryModalDownloadViewController *)self descriptionAndProgressBind];
    [descriptionAndProgressBind setActive:0];
  }
}

- (void)reportProgress:(double)progress stage:(unint64_t)stage
{
  progressController = [(PXModelDeliveryModalDownloadViewController *)self progressController];
  [progressController reportProgress:stage stage:progress];
}

- (void)createViewsWithCancelBlock:(id)block revertBlock:(id)revertBlock
{
  v89[16] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  revertBlockCopy = revertBlock;
  v81 = objc_alloc_init(PXModelDeliveryProgressObjCViewController);
  [(PXModelDeliveryModalDownloadViewController *)self setProgressController:v81];
  view = [(PXModelDeliveryModalDownloadViewController *)self view];
  view2 = [(PXModelDeliveryProgressObjCViewController *)v81 view];
  [view addSubview:view2];
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
  [view addSubview:v9];
  [view addSubview:v12];
  v14 = MEMORY[0x1E69DC628];
  v15 = PELocalizedString();
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __85__PXModelDeliveryModalDownloadViewController_createViewsWithCancelBlock_revertBlock___block_invoke;
  v87[3] = &unk_1E7742C90;
  v88 = blockCopy;
  v80 = blockCopy;
  v78 = [v14 actionWithTitle:v15 image:0 identifier:0 handler:v87];

  v16 = MEMORY[0x1E69DC628];
  v17 = PELocalizedString();
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __85__PXModelDeliveryModalDownloadViewController_createViewsWithCancelBlock_revertBlock___block_invoke_2;
  v85[3] = &unk_1E7742C90;
  v86 = revertBlockCopy;
  v79 = revertBlockCopy;
  v18 = [v16 actionWithTitle:v17 image:0 identifier:0 handler:v85];

  v77 = v18;
  [v18 setAttributes:2];
  v19 = [MEMORY[0x1E69DC738] systemButtonWithPrimaryAction:v78];
  v82 = [MEMORY[0x1E69DC738] systemButtonWithPrimaryAction:v18];
  [view addSubview:v19];
  [view addSubview:v82];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXModelDeliveryModalDownloadViewController *)self setDescriptionLabel:v12];
  topAnchor = [view2 topAnchor];
  bottomAnchor = [v9 bottomAnchor];
  v22 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:10.0];

  LODWORD(v23) = 1144750080;
  v66 = v22;
  [v22 setPriority:v23];
  topAnchor2 = [view2 topAnchor];
  bottomAnchor2 = [v12 bottomAnchor];
  v26 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:20.0];
  [(PXModelDeliveryModalDownloadViewController *)self setDescriptionAndProgressBind:v26];

  topAnchor3 = [view topAnchor];
  topAnchor4 = [v9 topAnchor];
  v72 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-8.0];
  v89[0] = v72;
  v76 = v9;
  centerXAnchor = [v9 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v69 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v89[1] = v69;
  topAnchor5 = [v12 topAnchor];
  bottomAnchor3 = [v9 bottomAnchor];
  v65 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:4.0];
  v89[2] = v65;
  centerXAnchor3 = [v12 centerXAnchor];
  centerXAnchor4 = [view centerXAnchor];
  v62 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v89[3] = v62;
  v75 = v12;
  leftAnchor = [v12 leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v59 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:8.0];
  v89[4] = v59;
  rightAnchor = [v12 rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v55 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2 constant:-8.0];
  v89[5] = v55;
  leftAnchor3 = [view leftAnchor];
  leftAnchor4 = [view2 leftAnchor];
  v52 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:-8.0];
  v89[6] = v52;
  rightAnchor3 = [view rightAnchor];
  rightAnchor4 = [view2 rightAnchor];
  v49 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:8.0];
  v89[7] = v49;
  v89[8] = v22;
  descriptionAndProgressBind = [(PXModelDeliveryModalDownloadViewController *)self descriptionAndProgressBind];
  v89[9] = descriptionAndProgressBind;
  v27 = v19;
  topAnchor6 = [v19 topAnchor];
  bottomAnchor4 = [view2 bottomAnchor];
  v44 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:4.0];
  v89[10] = v44;
  leftAnchor5 = [v19 leftAnchor];
  leftAnchor6 = [view leftAnchor];
  v41 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6 constant:16.0];
  v89[11] = v41;
  rightAnchor5 = [v82 rightAnchor];
  rightAnchor6 = [view rightAnchor];
  v28 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6 constant:-16.0];
  v89[12] = v28;
  topAnchor7 = [v82 topAnchor];
  v58 = v19;
  topAnchor8 = [v19 topAnchor];
  v31 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v89[13] = v31;
  bottomAnchor5 = [v27 bottomAnchor];
  bottomAnchor6 = [view bottomAnchor];
  v34 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-8.0];
  v89[14] = v34;
  widthAnchor = [view widthAnchor];
  v36 = [widthAnchor constraintLessThanOrEqualToConstant:380.0];
  v89[15] = v36;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:16];

  [MEMORY[0x1E696ACD8] activateConstraints:v46];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  layer = [view layer];
  [layer setCornerRadius:20.0];

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