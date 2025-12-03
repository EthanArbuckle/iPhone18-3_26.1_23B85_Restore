@interface PUIContactsPrivacySettingsInsetView
- (PUIContactsPrivacySettingsInsetView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation PUIContactsPrivacySettingsInsetView

- (PUIContactsPrivacySettingsInsetView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v39[4] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = PUIContactsPrivacySettingsInsetView;
  identifierCopy = identifier;
  specifierCopy = specifier;
  v31 = [(PSTableCell *)&v33 initWithStyle:style reuseIdentifier:identifierCopy specifier:?];
  if (v31)
  {
    contentView = [(PUIContactsPrivacySettingsInsetView *)v31 contentView];
    [(PUIContactsPrivacySettingsInsetView *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setAxis:1];
    [v7 setLayoutMargins:{0.0, 0.0, 0.0, 0.0}];
    [v7 setLayoutMarginsRelativeArrangement:1];
    [contentView addSubview:v7];
    v30 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v30 setAxis:1];
    [v30 setLayoutMargins:{15.0, 15.0, 10.0, 15.0}];
    [v30 setLayoutMarginsRelativeArrangement:1];
    v23 = MEMORY[0x277CCAAD0];
    topAnchor = [v7 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[0] = v25;
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[1] = v9;
    trailingAnchor = [v7 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[2] = v12;
    bottomAnchor = [v7 bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v39[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    [v23 activateConstraints:v16];

    if (objc_opt_class())
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x2050000000;
      v17 = getCNContactGroupVisualizerClass_softClass;
      v38 = getCNContactGroupVisualizerClass_softClass;
      if (!getCNContactGroupVisualizerClass_softClass)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __getCNContactGroupVisualizerClass_block_invoke;
        v34[3] = &unk_279BA0D08;
        v34[4] = &v35;
        __getCNContactGroupVisualizerClass_block_invoke(v34);
        v17 = v36[3];
      }

      v18 = v17;
      _Block_object_dispose(&v35, 8);
      allContactsSettingsViewController = [v17 allContactsSettingsViewController];
      view = [allContactsSettingsViewController view];
      [v7 addArrangedSubview:view];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v31;
}

@end