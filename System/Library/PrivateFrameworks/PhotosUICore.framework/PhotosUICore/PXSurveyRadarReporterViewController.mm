@interface PXSurveyRadarReporterViewController
- (PXSurveyRadarReporterViewController)initWithConfiguration:(id)configuration completionHandler:(id)handler;
- (PXSurveyRadarReporterViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (PXSurveyRadarReporterViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (id)attributedDetailText;
- (void)_didSelectReadReleaseAgreementButton;
- (void)_handleAgreeButton:(id)button;
- (void)_handleNotNowButton:(id)button;
@end

@implementation PXSurveyRadarReporterViewController

- (void)_handleNotNowButton:(id)button
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PXSurveyRadarReporterViewController__handleNotNowButton___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXSurveyRadarReporterViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

uint64_t __59__PXSurveyRadarReporterViewController__handleNotNowButton___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1232);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleAgreeButton:(id)button
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__PXSurveyRadarReporterViewController__handleAgreeButton___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXSurveyRadarReporterViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

uint64_t __58__PXSurveyRadarReporterViewController__handleAgreeButton___block_invoke(uint64_t a1)
{
  PXFileRadarWithConfiguration(*(*(a1 + 32) + 1224));
  result = *(*(a1 + 32) + 1232);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_didSelectReadReleaseAgreementButton
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSubmissionPhotosReleaseAgreement", @"PhotosUICore");
  v5 = [(PXRadarConfiguration *)self->_configuration description];
  v9 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v6 = MEMORY[0x1E69DC648];
  v7 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];
  [v9 addAction:v8];

  [(PXSurveyRadarReporterViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (id)attributedDetailText
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSubmissionDescriptionLine1", @"PhotosUICore");
  v29 = [v2 stringWithFormat:@"%@\n\n", v3];

  v4 = MEMORY[0x1E696AEC0];
  v5 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSubmissionDescriptionLine2", @"PhotosUICore");
  v6 = [v4 stringWithFormat:@"%@\n\n", v5];

  v7 = MEMORY[0x1E696AEC0];
  v8 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSubmissionDescriptionLine3", @"PhotosUICore");
  v9 = [v7 stringWithFormat:@"%@\n\n", v8];

  v10 = MEMORY[0x1E696AEC0];
  v11 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSubmissionDescriptionLine4", @"PhotosUICore");
  v12 = [v10 stringWithFormat:@"%@\n\n", v11];

  v13 = MEMORY[0x1E696AEC0];
  v14 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSubmissionDescriptionLine5", @"PhotosUICore");
  v15 = [v13 stringWithFormat:@"%@\n\n", v14];

  v16 = MEMORY[0x1E696AEC0];
  v17 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSubmissionDescriptionLine6", @"PhotosUICore");
  v18 = [v16 stringWithFormat:@"%@", v17];

  v19 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] withSymbolicTraits:2 options:1];
  v30 = *MEMORY[0x1E69DB648];
  v31[0] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v21 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v29 attributes:v20];
  v22 = v6;
  v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:0];
  [v21 appendAttributedString:v23];

  v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v20];
  [v21 appendAttributedString:v24];

  v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v12 attributes:0];
  [v21 appendAttributedString:v25];

  v26 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15 attributes:v20];
  [v21 appendAttributedString:v26];

  v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v18 attributes:0];
  [v21 appendAttributedString:v27];

  return v21;
}

- (PXSurveyRadarReporterViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyRadarReporterViewController.m" lineNumber:93 description:{@"%s is not available as initializer", "-[PXSurveyRadarReporterViewController initWithTitle:detailText:icon:contentLayout:]"}];

  abort();
}

- (PXSurveyRadarReporterViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyRadarReporterViewController.m" lineNumber:89 description:{@"%s is not available as initializer", "-[PXSurveyRadarReporterViewController initWithTitle:detailText:icon:]"}];

  abort();
}

- (PXSurveyRadarReporterViewController)initWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyRadarReporterViewController.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v10 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSubmissionTitle", @"PhotosUICore");
  v11 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"Photos_GettingStarted"];
  v61.receiver = self;
  v61.super_class = PXSurveyRadarReporterViewController;
  v12 = [(PXSurveyRadarReporterViewController *)&v61 initWithTitle:v10 detailText:0 icon:v11 contentLayout:2];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
    v14 = _Block_copy(handlerCopy);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v14;

    v16 = objc_alloc(MEMORY[0x1E69DCC10]);
    v17 = *MEMORY[0x1E695F058];
    v18 = *(MEMORY[0x1E695F058] + 8);
    v19 = *(MEMORY[0x1E695F058] + 16);
    v20 = *(MEMORY[0x1E695F058] + 24);
    v21 = [v16 initWithFrame:{*MEMORY[0x1E695F058], v18, v19, v20}];
    v59 = handlerCopy;
    detailLabel = v13->_detailLabel;
    v13->_detailLabel = v21;

    attributedDetailText = [(PXSurveyRadarReporterViewController *)v13 attributedDetailText];
    [(UILabel *)v13->_detailLabel setAttributedText:attributedDetailText];

    [(UILabel *)v13->_detailLabel setTextAlignment:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v13->_detailLabel setTextColor:labelColor];

    [(UILabel *)v13->_detailLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v13->_detailLabel setMinimumScaleFactor:0.75];
    [(UILabel *)v13->_detailLabel setNumberOfLines:0];
    [(UILabel *)v13->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PXSurveyRadarReporterViewController *)v13 contentView];
    [contentView addSubview:v13->_detailLabel];

    v26 = [objc_alloc(MEMORY[0x1E69DC738]) initWithFrame:{v17, v18, v19, v20}];
    readReleaseAgreementButton = v13->_readReleaseAgreementButton;
    v13->_readReleaseAgreementButton = v26;

    v28 = v13->_readReleaseAgreementButton;
    v29 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSubmissionPhotosReadFullReleaseAgreement", @"PhotosUICore");
    [(UIButton *)v28 setTitle:v29 forState:0];

    [(UIButton *)v13->_readReleaseAgreementButton addTarget:v13 action:sel__didSelectReadReleaseAgreementButton forControlEvents:64];
    v30 = v13->_readReleaseAgreementButton;
    view = [(PXSurveyRadarReporterViewController *)v13 view];
    tintColor = [view tintColor];
    [(UIButton *)v30 setTitleColor:tintColor forState:0];

    [(UIButton *)v13->_readReleaseAgreementButton setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(UIButton *)v13->_readReleaseAgreementButton titleLabel];
    [titleLabel setNumberOfLines:0];

    titleLabel2 = [(UIButton *)v13->_readReleaseAgreementButton titleLabel];
    [titleLabel2 setLineBreakMode:0];

    titleLabel3 = [(UIButton *)v13->_readReleaseAgreementButton titleLabel];
    [titleLabel3 setTextAlignment:1];

    contentView2 = [(PXSurveyRadarReporterViewController *)v13 contentView];
    [contentView2 addSubview:v13->_readReleaseAgreementButton];

    v60 = configurationCopy;
    v37 = v13->_detailLabel;
    v38 = v13->_readReleaseAgreementButton;
    v39 = v37;
    v40 = _NSDictionaryOfVariableBindings(&cfstr_DetaillabelRea.isa, v39, v38, 0);
    contentView3 = [(PXSurveyRadarReporterViewController *)v13 contentView];
    v42 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[detailLabel]|" options:0 metrics:0 views:v40];
    [contentView3 addConstraints:v42];

    contentView4 = [(PXSurveyRadarReporterViewController *)v13 contentView];
    v44 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[readReleaseAgreementButton]-|" options:0 metrics:0 views:v40];
    [contentView4 addConstraints:v44];

    contentView5 = [(PXSurveyRadarReporterViewController *)v13 contentView];
    v46 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[detailLabel]-[readReleaseAgreementButton]|" options:0 metrics:0 views:v40];
    [contentView5 addConstraints:v46];

    boldButton = [MEMORY[0x1E69B7D00] boldButton];
    [boldButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v48 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSubmissionAgree", @"PhotosUICore");
    [boldButton setTitle:v48 forState:0];

    [boldButton addTarget:v13 action:sel__handleAgreeButton_ forControlEvents:0x2000];
    buttonTray = [(PXSurveyRadarReporterViewController *)v13 buttonTray];
    [buttonTray addButton:boldButton];

    boldButton2 = [MEMORY[0x1E69B7D00] boldButton];
    notNowButton = v13->_notNowButton;
    v13->_notNowButton = boldButton2;

    [(OBTrayButton *)v13->_notNowButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = v13->_notNowButton;
    v53 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSubmissionNotNow", @"PhotosUICore");
    [(OBTrayButton *)v52 setTitle:v53 forState:0];

    [(OBTrayButton *)v13->_notNowButton addTarget:v13 action:sel__handleNotNowButton_ forControlEvents:0x2000];
    v54 = v13->_notNowButton;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(OBTrayButton *)v54 setTitleColor:labelColor2 forState:0];

    buttonTray2 = [(PXSurveyRadarReporterViewController *)v13 buttonTray];
    configurationCopy = v60;
    [buttonTray2 addButton:v13->_notNowButton];

    handlerCopy = v59;
    [(PXSurveyRadarReporterViewController *)v13 setModalPresentationStyle:2];
  }

  return v13;
}

@end