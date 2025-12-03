@interface NCAppPickerViewHeader
+ (double)preferredHeightForWidth:(double)width supportsSortByAvgNumberOfNotifications:(BOOL)notifications;
+ (id)_descriptionText;
+ (id)_orderingDescriptionText;
+ (id)_orderingWarningText;
+ (id)_titleFont;
+ (id)_titleText;
- (NCAppPickerViewHeader)initWithFrame:(CGRect)frame;
- (void)configureSupportsSortByAvgNumberOfNotifications:(BOOL)notifications;
@end

@implementation NCAppPickerViewHeader

- (NCAppPickerViewHeader)initWithFrame:(CGRect)frame
{
  v111.receiver = self;
  v111.super_class = NCAppPickerViewHeader;
  v3 = [(NCAppPickerViewHeader *)&v111 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    _titleText = [objc_opt_class() _titleText];
    [(UILabel *)v11 setText:_titleText];

    v13 = v3->_titleLabel;
    _titleFont = [objc_opt_class() _titleFont];
    [(UILabel *)v13 setFont:_titleFont];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    v15 = v3->_titleLabel;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v15 setTextColor:labelColor];

    LODWORD(v17) = 0.5;
    [(UILabel *)v3->_titleLabel _setHyphenationFactor:v17];
    [(NCAppPickerViewHeader *)v3 addSubview:v3->_titleLabel];
    v18 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v18;

    [(UILabel *)v3->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_descriptionLabel setNumberOfLines:0];
    v20 = v3->_descriptionLabel;
    _descriptionText = [objc_opt_class() _descriptionText];
    [(UILabel *)v20 setText:_descriptionText];

    v22 = v3->_descriptionLabel;
    _descriptionFont = [objc_opt_class() _descriptionFont];
    [(UILabel *)v22 setFont:_descriptionFont];

    [(UILabel *)v3->_descriptionLabel setTextAlignment:1];
    v24 = v3->_descriptionLabel;
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v24 setTextColor:labelColor2];

    [(NCAppPickerViewHeader *)v3 addSubview:v3->_descriptionLabel];
    v26 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    orderingDescriptionLabel = v3->_orderingDescriptionLabel;
    v3->_orderingDescriptionLabel = v26;

    [(UILabel *)v3->_orderingDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_orderingDescriptionLabel setNumberOfLines:0];
    v28 = v3->_orderingDescriptionLabel;
    _orderingDescriptionText = [objc_opt_class() _orderingDescriptionText];
    [(UILabel *)v28 setText:_orderingDescriptionText];

    v30 = v3->_orderingDescriptionLabel;
    _orderingDescriptionFont = [objc_opt_class() _orderingDescriptionFont];
    [(UILabel *)v30 setFont:_orderingDescriptionFont];

    v32 = v3->_orderingDescriptionLabel;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v32 setTextColor:secondaryLabelColor];

    [(UILabel *)v3->_orderingDescriptionLabel setTextAlignment:1];
    [(NCAppPickerViewHeader *)v3 addSubview:v3->_orderingDescriptionLabel];
    v34 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    orderingWarningContainer = v3->_orderingWarningContainer;
    v3->_orderingWarningContainer = v34;

    [(UIView *)v3->_orderingWarningContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = v3->_orderingWarningContainer;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v38 = [systemBlueColor colorWithAlphaComponent:0.12];
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
    systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
    [(UIImageView *)v41 setTintColor:systemBlueColor2];

    [(UIView *)v3->_orderingWarningContainer addSubview:v3->_orderingWarningIconImageView];
    v43 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    orderingWarningLabel = v3->_orderingWarningLabel;
    v3->_orderingWarningLabel = v43;

    [(UILabel *)v3->_orderingWarningLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_orderingWarningLabel setNumberOfLines:0];
    v45 = v3->_orderingWarningLabel;
    _orderingWarningFont = [objc_opt_class() _orderingWarningFont];
    [(UILabel *)v45 setFont:_orderingWarningFont];

    v47 = v3->_orderingWarningLabel;
    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v47 setTextColor:secondaryLabelColor2];

    [(UIView *)v3->_orderingWarningContainer addSubview:v3->_orderingWarningLabel];
    v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor2 = [(NCAppPickerViewHeader *)v3 topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:2.0];
    [v49 addObject:v52];

    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor2 = [(NCAppPickerViewHeader *)v3 leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    [v49 addObject:v55];

    trailingAnchor = [(NCAppPickerViewHeader *)v3 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
    [v49 addObject:v58];

    topAnchor3 = [(UILabel *)v3->_descriptionLabel topAnchor];
    bottomAnchor = [(UILabel *)v3->_titleLabel bottomAnchor];
    v61 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
    [v49 addObject:v61];

    leadingAnchor3 = [(UILabel *)v3->_descriptionLabel leadingAnchor];
    leadingAnchor4 = [(NCAppPickerViewHeader *)v3 leadingAnchor];
    v64 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    [v49 addObject:v64];

    trailingAnchor3 = [(NCAppPickerViewHeader *)v3 trailingAnchor];
    trailingAnchor4 = [(UILabel *)v3->_descriptionLabel trailingAnchor];
    v67 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
    [v49 addObject:v67];

    topAnchor4 = [(UILabel *)v3->_orderingDescriptionLabel topAnchor];
    bottomAnchor2 = [(UILabel *)v3->_descriptionLabel bottomAnchor];
    v70 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:14.0];
    [v49 addObject:v70];

    leadingAnchor5 = [(UILabel *)v3->_orderingDescriptionLabel leadingAnchor];
    leadingAnchor6 = [(NCAppPickerViewHeader *)v3 leadingAnchor];
    v73 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v49 addObject:v73];

    trailingAnchor5 = [(NCAppPickerViewHeader *)v3 trailingAnchor];
    trailingAnchor6 = [(UILabel *)v3->_orderingDescriptionLabel trailingAnchor];
    v76 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v49 addObject:v76];

    topAnchor5 = [(UIView *)v3->_orderingWarningContainer topAnchor];
    topAnchor6 = [(UILabel *)v3->_orderingWarningLabel topAnchor];
    v79 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:-12.0];
    [v49 addObject:v79];

    leadingAnchor7 = [(UIView *)v3->_orderingWarningContainer leadingAnchor];
    leadingAnchor8 = [(NCAppPickerViewHeader *)v3 leadingAnchor];
    v82 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [v49 addObject:v82];

    trailingAnchor7 = [(NCAppPickerViewHeader *)v3 trailingAnchor];
    trailingAnchor8 = [(UIView *)v3->_orderingWarningContainer trailingAnchor];
    v85 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    [v49 addObject:v85];

    bottomAnchor3 = [(UILabel *)v3->_orderingWarningLabel bottomAnchor];
    bottomAnchor4 = [(UIView *)v3->_orderingWarningContainer bottomAnchor];
    v88 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-12.0];
    [v49 addObject:v88];

    bottomAnchor5 = [(NCAppPickerViewHeader *)v3 bottomAnchor];
    bottomAnchor6 = [(UIView *)v3->_orderingWarningContainer bottomAnchor];
    v91 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:8.0];
    [v49 addObject:v91];

    centerYAnchor = [(UIImageView *)v3->_orderingWarningIconImageView centerYAnchor];
    centerYAnchor2 = [(UILabel *)v3->_orderingWarningLabel centerYAnchor];
    v94 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v49 addObject:v94];

    leadingAnchor9 = [(UIImageView *)v3->_orderingWarningIconImageView leadingAnchor];
    leadingAnchor10 = [(UIView *)v3->_orderingWarningContainer leadingAnchor];
    v97 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:12.0];
    [v49 addObject:v97];

    heightAnchor = [(UIImageView *)v3->_orderingWarningIconImageView heightAnchor];
    v99 = [heightAnchor constraintEqualToConstant:24.0];
    [v49 addObject:v99];

    widthAnchor = [(UIImageView *)v3->_orderingWarningIconImageView widthAnchor];
    v101 = [widthAnchor constraintEqualToConstant:24.0];
    [v49 addObject:v101];

    leadingAnchor11 = [(UILabel *)v3->_orderingWarningLabel leadingAnchor];
    trailingAnchor9 = [(UIImageView *)v3->_orderingWarningIconImageView trailingAnchor];
    v104 = [leadingAnchor11 constraintEqualToAnchor:trailingAnchor9 constant:10.0];
    [v49 addObject:v104];

    trailingAnchor10 = [(UIView *)v3->_orderingWarningContainer trailingAnchor];
    trailingAnchor11 = [(UILabel *)v3->_orderingWarningLabel trailingAnchor];
    v107 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:10.0];
    [v49 addObject:v107];

    [MEMORY[0x277CCAAD0] activateConstraints:v49];
  }

  return v3;
}

- (void)configureSupportsSortByAvgNumberOfNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  [(UIView *)self->_orderingWarningContainer setHidden:?];
  orderingWarningLabel = self->_orderingWarningLabel;
  if (notificationsCopy)
  {
    v6 = self->_orderingWarningLabel;

    [(UILabel *)v6 setText:0];
  }

  else
  {
    _orderingWarningText = [objc_opt_class() _orderingWarningText];
    [(UILabel *)orderingWarningLabel setText:_orderingWarningText];
  }
}

+ (double)preferredHeightForWidth:(double)width supportsSortByAvgNumberOfNotifications:(BOOL)notifications
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (!preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext)
  {
    v7 = objc_alloc_init(MEMORY[0x277D74260]);
    v8 = preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext;
    preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext = v7;

    [preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext setWantsNumberOfLineFragments:1];
  }

  v9 = fmax(width + -32.0, 0.0);
  _titleText = [objc_opt_class() _titleText];
  v30 = *MEMORY[0x277D740A8];
  v11 = v30;
  _titleFont = [self _titleFont];
  v31[0] = _titleFont;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [_titleText boundingRectWithSize:1 options:v13 attributes:preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext context:{v9, 0.0}];
  CGRectGetHeight(v32);

  _descriptionText = [objc_opt_class() _descriptionText];
  v28 = v11;
  _descriptionFont = [self _descriptionFont];
  v29 = _descriptionFont;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [_descriptionText boundingRectWithSize:1 options:v16 attributes:preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext context:{v9, 0.0}];
  CGRectGetHeight(v33);

  _orderingDescriptionText = [objc_opt_class() _orderingDescriptionText];
  v26 = v11;
  _orderingDescriptionFont = [self _orderingDescriptionFont];
  v27 = _orderingDescriptionFont;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [_orderingDescriptionText boundingRectWithSize:1 options:v19 attributes:preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext context:{v9, 0.0}];
  CGRectGetHeight(v34);

  if (!notifications)
  {
    _orderingWarningText = [objc_opt_class() _orderingWarningText];
    v24 = v11;
    _orderingWarningFont = [self _orderingWarningFont];
    v25 = _orderingWarningFont;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [_orderingWarningText boundingRectWithSize:1 options:v22 attributes:preferredHeightForWidth_supportsSortByAvgNumberOfNotifications____drawingContext context:{fmax(width + -12.0 + -24.0 + -10.0 + -10.0, 0.0), 0.0}];
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