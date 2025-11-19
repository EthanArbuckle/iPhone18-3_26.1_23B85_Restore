@interface PUIContactsPrivacySettingsInsetView
- (PUIContactsPrivacySettingsInsetView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation PUIContactsPrivacySettingsInsetView

- (PUIContactsPrivacySettingsInsetView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v39[4] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = PUIContactsPrivacySettingsInsetView;
  v28 = a4;
  v29 = a5;
  v31 = [(PSTableCell *)&v33 initWithStyle:a3 reuseIdentifier:v28 specifier:?];
  if (v31)
  {
    v32 = [(PUIContactsPrivacySettingsInsetView *)v31 contentView];
    [(PUIContactsPrivacySettingsInsetView *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setAxis:1];
    [v7 setLayoutMargins:{0.0, 0.0, 0.0, 0.0}];
    [v7 setLayoutMarginsRelativeArrangement:1];
    [v32 addSubview:v7];
    v30 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v30 setAxis:1];
    [v30 setLayoutMargins:{15.0, 15.0, 10.0, 15.0}];
    [v30 setLayoutMarginsRelativeArrangement:1];
    v23 = MEMORY[0x277CCAAD0];
    v27 = [v7 topAnchor];
    v26 = [v32 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v39[0] = v25;
    v24 = [v7 leadingAnchor];
    v8 = [v32 leadingAnchor];
    v9 = [v24 constraintEqualToAnchor:v8];
    v39[1] = v9;
    v10 = [v7 trailingAnchor];
    v11 = [v32 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v39[2] = v12;
    v13 = [v7 bottomAnchor];
    v14 = [v32 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
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
      v19 = [v17 allContactsSettingsViewController];
      v20 = [v19 view];
      [v7 addArrangedSubview:v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v31;
}

@end