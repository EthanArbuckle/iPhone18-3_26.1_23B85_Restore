@interface SFRegulatoryCertificationsView
- (SFRegulatoryCertificationsView)init;
- (SFRegulatoryCertificationsView)initWithFrame:(CGRect)a3;
- (void)render;
@end

@implementation SFRegulatoryCertificationsView

- (SFRegulatoryCertificationsView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SFRegulatoryCertificationsView;
  v3 = [(SFRegulatoryCertificationsView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFRegulatoryCertificationsView *)v3 render];
  }

  return v4;
}

- (SFRegulatoryCertificationsView)init
{
  v5.receiver = self;
  v5.super_class = SFRegulatoryCertificationsView;
  v2 = [(SFRegulatoryCertificationsView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SFRegulatoryCertificationsView *)v2 render];
  }

  return v3;
}

- (void)render
{
  v40[4] = *MEMORY[0x277D85DE8];
  [(SFRegulatoryCertificationsView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAxis:1];
  [v3 setAlignment:3];
  [(SFRegulatoryCertificationsView *)self addSubview:v3];
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = SFRegulatoryImage();
  v6 = [v4 initWithImage:v5];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = SF_LocalizedStringForSettingsFoundation(@"AX_REGULATORY_INFORMATION");
  [v6 setAccessibilityLabel:v7];

  v39 = v6;
  [v3 addArrangedSubview:v6];
  if (SFShouldShowIndiaBIS())
  {
    v8 = SFIndiaBISNumber();

    if (v8)
    {
      v9 = objc_alloc_init(SFIndiaBISView);
      [v3 addArrangedSubview:v9];
    }
  }

  if (SFShouldShowEyesightWarning())
  {
    v10 = objc_alloc_init(SFEyesightWarningView);
    [v3 addArrangedSubview:v10];
  }

  if (SFShouldShowMonthOfManufacture())
  {
    v11 = objc_alloc_init(SFMonthAndYearOfManufactureView);
    [v3 addArrangedSubview:v11];
  }

  if (SFShouldShowAlertMark())
  {
    v12 = objc_alloc_init(SFAlertMarkView);
    [v3 addArrangedSubview:v12];
  }

  if (SFShouldShowYearOfManufacture())
  {
    v13 = objc_alloc_init(SFYearOfManufactureView);
    [v3 addArrangedSubview:v13];
  }

  v14 = [MEMORY[0x277D75418] currentDevice];
  if ([v14 sf_isInternalInstall])
  {

LABEL_15:
    v17 = [MEMORY[0x277D75418] currentDevice];
    v18 = [v17 sf_serialNumberQRImage];

    v19 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v18];
    [v18 size];
    v21 = v20;
    v22 = [v3 arrangedSubviews];
    v23 = [v22 lastObject];
    [v3 setCustomSpacing:v23 afterView:v21];

    [v3 addArrangedSubview:v19];
    goto LABEL_16;
  }

  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 sf_isCarrierInstall];

  if (v16)
  {
    goto LABEL_15;
  }

LABEL_16:
  v34 = MEMORY[0x277CCAAD0];
  v38 = [(SFRegulatoryCertificationsView *)self leadingAnchor];
  v37 = [v3 leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v40[0] = v36;
  v35 = [(SFRegulatoryCertificationsView *)self trailingAnchor];
  v24 = [v3 trailingAnchor];
  v25 = [v35 constraintEqualToAnchor:v24];
  v40[1] = v25;
  v26 = [(SFRegulatoryCertificationsView *)self topAnchor];
  v27 = [v3 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v40[2] = v28;
  v29 = [(SFRegulatoryCertificationsView *)self bottomAnchor];
  v30 = [v3 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v40[3] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  [v34 activateConstraints:v32];

  v33 = *MEMORY[0x277D85DE8];
}

@end