@interface NCAppPickerViewHeader
+ (double)preferredHeightForWidth:(double)a3 supportsSortByAvgNumberOfNotifications:(BOOL)a4;
+ (id)_descriptionText;
+ (id)_orderingDescriptionText;
+ (id)_orderingWarningText;
+ (id)_titleFont;
+ (id)_titleText;
- (NCAppPickerViewHeader)initWithFrame:(CGRect)a3;
- (void)configureSupportsSortByAvgNumberOfNotifications:(BOOL)a3;
@end

@implementation NCAppPickerViewHeader

- (NCAppPickerViewHeader)initWithFrame:(CGRect)a3
{
  v111.receiver = self;
  v111.super_class = NCAppPickerViewHeader;
  v3 = [(NCAppPickerViewHeader *)&v111 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v9;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v11 = v3->_titleLabel;
    v12 = [objc_opt_class() _titleText];
    [(UILabel *)v11 setText:v12];

    v13 = v3->_titleLabel;
    v14 = [objc_opt_class() _titleFont];
    [(UILabel *)v13 setFont:v14];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    v15 = v3->_titleLabel;
    v16 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v15 setTextColor:v16];

    LODWORD(v17) = 0.5;
    [(UILabel *)v3->_titleLabel _setHyphenationFactor:v17];
    [(NCAppPickerViewHeader *)v3 addSubview:v3->_titleLabel];
    v18 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v18;

    [(UILabel *)v3->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_descriptionLabel setNumberOfLines:0];
    v20 = v3->_descriptionLabel;
    v21 = [objc_opt_class() _descriptionText];
    [(UILabel *)v20 setText:v21];

    v22 = v3->_descriptionLabel;
    v23 = [objc_opt_class() _descriptionFont];
    [(UILabel *)v22 setFont:v23];

    [(UILabel *)v3->_descriptionLabel setTextAlignment:1];
    v24 = v3->_descriptionLabel;
    v25 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v24 setTextColor:v25];

    [(NCAppPickerViewHeader *)v3 addSubview:v3->_descriptionLabel];
    v26 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    orderingDescriptionLabel = v3->_orderingDescriptionLabel;
    v3->_orderingDescriptionLabel = v26;

    [(UILabel *)v3->_orderingDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_orderingDescriptionLabel setNumberOfLines:0];
    v28 = v3->_orderingDescriptionLabel;
    v29 = [objc_opt_class() _orderingDescriptionText];
    [(UILabel *)v28 setText:v29];

    v30 = v3->_orderingDescriptionLabel;
    v31 = [objc_opt_class() _orderingDescriptionFont];
    [(UILabel *)v30 setFont:v31];

    v32 = v3->_orderingDescriptionLabel;
    v33 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v32 setTextColor:v33];

    [(UILabel *)v3->_orderingDescriptionLabel setTextAlignment:1];
    [(NCAppPickerViewHeader *)v3 addSubview:v3->_orderingDescriptionLabel];
    v34 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    orderingWarningContainer = v3->_orderingWarningContainer;
    v3->_orderingWarningContainer = v34;

    [(UIView *)v3->_orderingWarningContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = v3->_orderingWarningContainer;
    v37 = [MEMORY[0x277D75348] systemBlueColor];
    v38 = [v37 colorWithAlphaComponent:0.12];
    [(UIView *)v36 setBackgroundColor:v38];

    [(UIView *)v3->_orderingWarningContainer _setContinuousCornerRadius:12.0];
    [(NCAppPickerViewHeader *)v3 addSubview:v3->_orderingWarningContainer];
    v39 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    orderingWarningIconImageView = v3->_orderingWarningIconImageView;
    v3->_orderingWarningIconImageView = v39;

    [(UIImageView *)v3->_orderingWarningIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v110 = [MEMORY[0x277D755D0] configurationWithPointSize:20.0];
    v109 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v110];
    [(UIImageView *)v3->_orderingWarningIconImageView setImage:v109];
    [(UIImageView *)v3->_orderingWarningIconImageView setContentMode:4];
    v41 = v3->_orderingWarningIconImageView;
    v42 = [MEMORY[0x277D75348] systemBlueColor];
    [(UIImageView *)v41 setTintColor:v42];

    [(UIView *)v3->_orderingWarningContainer addSubview:v3->_orderingWarningIconImageView];
    v43 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    orderingWarningLabel = v3->_orderingWarningLabel;
    v3->_orderingWarningLabel = v43;

    [(UILabel *)v3->_orderingWarningLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_orderingWarningLabel setNumberOfLines:0];
    v45 = v3->_orderingWarningLabel;
    v46 = [objc_opt_class() _orderingWarningFont];
    [(UILabel *)v45 setFont:v46];

    v47 = v3->_orderingWarningLabel;
    v48 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v47 setTextColor:v48];

    [(UIView *)v3->_orderingWarningContainer addSubview:v3->_orderingWarningLabel];
    v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v50 = [(UILabel *)v3->_titleLabel topAnchor];
    v51 = [(NCAppPickerViewHeader *)v3 topAnchor];
    v52 = [v50 constraintEqualToAnchor:v51 constant:2.0];
    [v49 addObject:v52];

    v53 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v54 = [(NCAppPickerViewHeader *)v3 leadingAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:16.0];
    [v49 addObject:v55];

    v56 = [(NCAppPickerViewHeader *)v3 trailingAnchor];
    v57 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:16.0];
    [v49 addObject:v58];

    v59 = [(UILabel *)v3->_descriptionLabel topAnchor];
    v60 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:8.0];
    [v49 addObject:v61];

    v62 = [(UILabel *)v3->_descriptionLabel leadingAnchor];
    v63 = [(NCAppPickerViewHeader *)v3 leadingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:16.0];
    [v49 addObject:v64];

    v65 = [(NCAppPickerViewHeader *)v3 trailingAnchor];
    v66 = [(UILabel *)v3->_descriptionLabel trailingAnchor];
    v67 = [v65 constraintEqualToAnchor:v66 constant:16.0];
    [v49 addObject:v67];

    v68 = [(UILabel *)v3->_orderingDescriptionLabel topAnchor];
    v69 = [(UILabel *)v3->_descriptionLabel bottomAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:14.0];
    [v49 addObject:v70];

    v71 = [(UILabel *)v3->_orderingDescriptionLabel leadingAnchor];
    v72 = [(NCAppPickerViewHeader *)v3 leadingAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];
    [v49 addObject:v73];

    v74 = [(NCAppPickerViewHeader *)v3 trailingAnchor];
    v75 = [(UILabel *)v3->_orderingDescriptionLabel trailingAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    [v49 addObject:v76];

    v77 = [(UIView *)v3->_orderingWarningContainer topAnchor];
    v78 = [(UILabel *)v3->_orderingWarningLabel topAnchor];
    v79 = [v77 constraintEqualToAnchor:v78 constant:-12.0];
    [v49 addObject:v79];

    v80 = [(UIView *)v3->_orderingWarningContainer leadingAnchor];
    v81 = [(NCAppPickerViewHeader *)v3 leadingAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];
    [v49 addObject:v82];

    v83 = [(NCAppPickerViewHeader *)v3 trailingAnchor];
    v84 = [(UIView *)v3->_orderingWarningContainer trailingAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];
    [v49 addObject:v85];

    v86 = [(UILabel *)v3->_orderingWarningLabel bottomAnchor];
    v87 = [(UIView *)v3->_orderingWarningContainer bottomAnchor];
    v88 = [v86 constraintEqualToAnchor:v87 constant:-12.0];
    [v49 addObject:v88];

    v89 = [(NCAppPickerViewHeader *)v3 bottomAnchor];
    v90 = [(UIView *)v3->_orderingWarningContainer bottomAnchor];
    v91 = [v89 constraintEqualToAnchor:v90 constant:8.0];
    [v49 addObject:v91];

    v92 = [(UIImageView *)v3->_orderingWarningIconImageView centerYAnchor];
    v93 = [(UILabel *)v3->_orderingWarningLabel centerYAnchor];
    v94 = [v92 constraintEqualToAnchor:v93];
    [v49 addObject:v94];

    v95 = [(UIImageView *)v3->_orderingWarningIconImageView leadingAnchor];
    v96 = [(UIView *)v3->_orderingWarningContainer leadingAnchor];
    v97 = [v95 constraintEqualToAnchor:v96 constant:12.0];
    [v49 addObject:v97];

    v98 = [(UIImageView *)v3->_orderingWarningIconImageView heightAnchor];
    v99 = [v98 constraintEqualToConstant:24.0];
    [v49 addObject:v99];

    v100 = [(UIImageView *)v3->_orderingWarningIconImageView widthAnchor];
    v101 = [v100 constraintEqualToConstant:24.0];
    [v49 addObject:v101];

    v102 = [(UILabel *)v3->_orderingWarningLabel leadingAnchor];
    v103 = [(UIImageView *)v3->_orderingWarningIconImageView trailingAnchor];
    v104 = [v102 constraintEqualToAnchor:v103 constant:10.0];
    [v49 addObject:v104];

    v105 = [(UIView *)v3->_orderingWarningContainer trailingAnchor];
    v106 = [(UILabel *)v3->_orderingWarningLabel trailingAnchor];
    v107 = [v105 constraintEqualToAnchor:v106 constant:10.0];
    [v49 addObject:v107];

    [MEMORY[0x277CCAAD0] activateConstraints:v49];
  }

  return v3;
}

- (void)configureSupportsSortByAvgNumberOfNotifications:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self->_orderingWarningContainer setHidden:?];
  orderingWarningLabel = self->_orderingWarningLabel;
  if (v3)
  {
    v6 = self->_orderingWarningLabel;

    [(UILabel *)v6 setText:0];
  }

  else
  {
    v7 = [objc_opt_class() _orderingWarningText];
    [(UILabel *)orderingWarningLabel setText:v7];
  }
}

+ (double)preferredHeightForWidth:(double)a3 supportsSortByAvgNumberOfNotifications:(BOOL)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (!preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext)
  {
    v7 = objc_alloc_init(MEMORY[0x277D74260]);
    v8 = preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext;
    preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext = v7;

    [preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext setWantsNumberOfLineFragments:1];
  }

  v9 = fmax(a3 + -32.0, 0.0);
  v10 = [objc_opt_class() _titleText];
  v30 = *MEMORY[0x277D740A8];
  v11 = v30;
  v12 = [a1 _titleFont];
  v31[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [v10 boundingRectWithSize:1 options:v13 attributes:preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext context:{v9, 0.0}];
  CGRectGetHeight(v32);

  v14 = [objc_opt_class() _descriptionText];
  v28 = v11;
  v15 = [a1 _descriptionFont];
  v29 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v14 boundingRectWithSize:1 options:v16 attributes:preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext context:{v9, 0.0}];
  CGRectGetHeight(v33);

  v17 = [objc_opt_class() _orderingDescriptionText];
  v26 = v11;
  v18 = [a1 _orderingDescriptionFont];
  v27 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [v17 boundingRectWithSize:1 options:v19 attributes:preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext context:{v9, 0.0}];
  CGRectGetHeight(v34);

  if (!a4)
  {
    v20 = [objc_opt_class() _orderingWarningText];
    v24 = v11;
    v21 = [a1 _orderingWarningFont];
    v25 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v20 boundingRectWithSize:1 options:v22 attributes:preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext context:{fmax(a3 + -12.0 + -24.0 + -10.0 + -10.0, 0.0), 0.0}];
    CGRectGetHeight(v35);
  }

  _NCMainScreenScale();
  UICeilToScale();
  return result;
}

+ (id)_titleText
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_ADD_PICKER_TITLE" value:&stru_282FE84F8 table:0];

  return v3;
}

+ (id)_titleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)_descriptionText
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_ADD_PICKER_DESCRIPTION" value:&stru_282FE84F8 table:0];

  return v3;
}

+ (id)_orderingDescriptionText
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_DIGEST_SETTINGS_ORDERED_BY" value:&stru_282FE84F8 table:0];

  return v3;
}

+ (id)_orderingWarningText
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_DIGEST_SETTINGS_NOT_ENOUGH_DATA" value:&stru_282FE84F8 table:0];

  return v3;
}

@end