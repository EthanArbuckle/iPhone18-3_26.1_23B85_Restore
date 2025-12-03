@interface SKUIEditProfileSettingDescriptionView
+ (BOOL)prefetchResourcesForSettingDescription:(id)description reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context;
+ (id)_baselineFontForTextStyle:(id)style;
+ (void)requestLayoutForSettingDescription:(id)description width:(double)width context:(id)context;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)_textFieldWithPlaceholder:(id)placeholder;
- (void)_updateHandleTextFieldValidity;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation SKUIEditProfileSettingDescriptionView

+ (BOOL)prefetchResourcesForSettingDescription:(id)description reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditProfileSettingDescriptionView *)v5 prefetchResourcesForSettingDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIEditProfileSettingDescriptionView *)v4 preferredSizeForSettingDescription:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForSettingDescription:(id)description width:(double)width context:(id)context
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUIEditProfileSettingDescriptionView *)v5 requestLayoutForSettingDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIEditProfileSettingDescriptionView *)v7 sizeThatFitsWidth:v8 settingDescription:v9 context:v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [self _baselineFontForTextStyle:*MEMORY[0x277D76918]];
  [v15 _scaledValueForValue:48.0];
  v17 = v16 + v16;

  widthCopy = width;
  v19 = v17;
  result.height = v19;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context
{
  descriptionCopy = description;
  objc_storeStrong(&self->_settingDescription, description);
  contextCopy = context;
  clientContext = [contextCopy clientContext];

  clientContext = self->_clientContext;
  self->_clientContext = clientContext;

  imageView = self->_imageView;
  if (!imageView)
  {
    v12 = objc_alloc_init(SKUIImageView);
    v13 = self->_imageView;
    self->_imageView = v12;

    [(SKUIEditProfileSettingDescriptionView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  photo = [(SKUIEditProfileSettingDescription *)self->_settingDescription photo];
  [(SKUIImageView *)imageView setImage:photo];

  if (!self->_editButton)
  {
    v15 = [MEMORY[0x277D75220] buttonWithType:1];
    editButton = self->_editButton;
    self->_editButton = v15;

    v17 = self->_clientContext;
    if (v17)
    {
      [(SKUIClientContext *)v17 localizedStringForKey:@"SETTINGS_PROFILE_EDIT_BUTTON_LABEL" inTable:@"Settings"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_BUTTON_LABEL" inBundles:0 inTable:@"Settings"];
    }
    v18 = ;
    [(UIButton *)self->_editButton setTitle:v18 forState:0];
    [(UIButton *)self->_editButton addTarget:self action:sel__editProfilePhoto forControlEvents:64];
    titleLabel = [(UIButton *)self->_editButton titleLabel];
    v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [titleLabel setFont:v20];

    [(SKUIEditProfileSettingDescriptionView *)self addSubview:self->_editButton];
  }

  nameField = self->_nameField;
  if (!nameField)
  {
    v22 = self->_clientContext;
    if (v22)
    {
      [(SKUIClientContext *)v22 localizedStringForKey:@"SETTINGS_PROFILE_EDIT_NAME" inTable:@"Settings"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_NAME" inBundles:0 inTable:@"Settings"];
    }
    v23 = ;
    v24 = [(SKUIEditProfileSettingDescriptionView *)self _textFieldWithPlaceholder:v23];
    v25 = self->_nameField;
    self->_nameField = v24;

    [(UITextField *)self->_nameField setAutocapitalizationType:1];
    [(UITextField *)self->_nameField setAutocorrectionType:1];
    [(SKUIEditProfileSettingDescriptionView *)self addSubview:self->_nameField];
    nameField = self->_nameField;
  }

  name = [(SKUIEditProfileSettingDescription *)self->_settingDescription name];
  [(UITextField *)nameField setText:name];

  handleField = self->_handleField;
  if (!handleField)
  {
    v28 = self->_clientContext;
    if (v28)
    {
      [(SKUIClientContext *)v28 localizedStringForKey:@"SETTINGS_PROFILE_EDIT_HANDLE" inTable:@"Settings"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_HANDLE" inBundles:0 inTable:@"Settings"];
    }
    v29 = ;
    v30 = [(SKUIEditProfileSettingDescriptionView *)self _textFieldWithPlaceholder:v29];
    v31 = self->_handleField;
    self->_handleField = v30;

    [(UITextField *)self->_handleField setAutocapitalizationType:0];
    [(UITextField *)self->_handleField setAutocorrectionType:1];
    [(UITextField *)self->_handleField _setPrefix:@"@"];
    [(SKUIEditProfileSettingDescriptionView *)self addSubview:self->_handleField];
    handleField = self->_handleField;
  }

  handle = [(SKUIEditProfileSettingDescription *)self->_settingDescription handle];
  [(UITextField *)handleField setText:handle];

  if (!self->_divider1)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    divider1 = self->_divider1;
    self->_divider1 = layer;

    v35 = self->_divider1;
    v36 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    -[CALayer setBackgroundColor:](v35, "setBackgroundColor:", [v36 CGColor]);

    layer2 = [(SKUIEditProfileSettingDescriptionView *)self layer];
    [layer2 addSublayer:self->_divider1];
  }

  isEditing = [(SKUIEditProfileSettingDescription *)self->_settingDescription isEditing];
  [(UIButton *)self->_editButton setHidden:isEditing ^ 1];
  [(UITextField *)self->_nameField setEnabled:isEditing];
  [(UITextField *)self->_handleField setEnabled:isEditing];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  if ([editing isEqual:self->_handleField])
  {

    [(SKUIEditProfileSettingDescriptionView *)self _updateHandleTextFieldValidity];
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  v4 = [return isEqual:self->_nameField];
  handleField = self->_handleField;
  if (v4)
  {
    [(UITextField *)handleField becomeFirstResponder];
  }

  else
  {
    [(UITextField *)handleField resignFirstResponder];
  }

  return 0;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  v12 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  if ([fieldCopy isEqual:self->_nameField])
  {
    [(SKUIEditProfileSettingDescription *)self->_settingDescription setName:v12];
  }

  else if ([fieldCopy isEqual:self->_handleField])
  {
    [(SKUIEditProfileSettingDescriptionView *)self _updateHandleTextFieldValidity];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  if ([editingCopy isEqual:self->_nameField])
  {
    settingDescription = self->_settingDescription;
    text = [editingCopy text];
    [(SKUIEditProfileSettingDescription *)settingDescription setName:text];
  }

  else
  {
    if (![editingCopy isEqual:self->_handleField])
    {
      goto LABEL_6;
    }

    v6 = self->_settingDescription;
    text = [editingCopy text];
    [(SKUIEditProfileSettingDescription *)v6 setHandle:text];
  }

LABEL_6:
}

- (void)layoutSubviews
{
  v56.receiver = self;
  v56.super_class = SKUIEditProfileSettingDescriptionView;
  [(SKUIEditProfileSettingDescriptionView *)&v56 layoutSubviews];
  [(SKUISettingDescriptionView *)self layoutMargins];
  v4 = v3;
  v53 = v5;
  [(SKUIEditProfileSettingDescriptionView *)self bounds];
  v7 = v6;
  v51 = v8;
  v52 = v6;
  v10 = v9;
  v55 = v11;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  titleLabel = [(UIButton *)self->_editButton titleLabel];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [titleLabel setFont:v14];
  [v14 _scaledValueForValue:16.0];
  v16 = v15;
  [(UIButton *)self->_editButton sizeThatFits:1.0, 1.0];
  v18 = v17;
  v20 = v19;
  v57.origin.y = 8.0;
  v57.origin.x = v4;
  v57.size.width = 56.0;
  v57.size.height = 56.0;
  v21 = v16 + CGRectGetMaxY(v57);
  [titleLabel _firstBaselineOffsetFromTop];
  v23 = v21 - v22;
  v58.origin.y = 8.0;
  v58.origin.x = v4;
  v58.size.width = 56.0;
  v58.size.height = 56.0;
  v24 = floor((CGRectGetWidth(v58) - v18) * 0.5);
  v59.origin.y = 8.0;
  v59.origin.x = v4;
  v59.size.width = 56.0;
  v59.size.height = 56.0;
  v25 = CGRectGetMinX(v59) + v24;
  editButton = self->_editButton;
  v27 = v10;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v25, v23, v18, v20, v7, v10, v55, v51);
  [(UIButton *)editButton setFrame:?];
  v28 = *MEMORY[0x277D76918];
  v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UITextField *)self->_nameField setFont:v29];
  [(UITextField *)self->_handleField setFont:v29];
  if (ShouldReverseLayoutDirection)
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  [(UITextField *)self->_nameField setTextAlignment:v30];
  [(UITextField *)self->_handleField setTextAlignment:v30];
  v31 = [objc_opt_class() _baselineFontForTextStyle:v28];
  [v31 _scaledValueForValue:30.0];
  v33 = v32;
  [v31 _scaledValueForValue:18.0];
  v50 = v33 + v34;
  _placeholderLabel = [(UITextField *)self->_nameField _placeholderLabel];
  v60.origin.y = 8.0;
  v60.origin.x = v4;
  v60.size.width = 56.0;
  v60.size.height = 56.0;
  v36 = CGRectGetMaxX(v60) + 16.0;
  [_placeholderLabel _firstBaselineOffsetFromTop];
  v38 = v33 - v37;
  v49 = v33 - v37;
  v61.origin.x = v52;
  v61.origin.y = v10;
  v61.size.width = v55;
  v61.size.height = v51;
  v39 = CGRectGetWidth(v61) - v36 - v53;
  v62.origin.x = v52;
  v62.origin.y = v10;
  v62.size.width = v55;
  v62.size.height = v51;
  v48 = CGRectGetWidth(v62) - v36;
  [(UITextField *)self->_nameField sizeThatFits:v39, 1.0];
  v54 = v40;
  nameField = self->_nameField;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v36, v38 + 0.0, v39, v40, v52, v10, v55, v51);
  [(UITextField *)nameField setFrame:?];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v44 = 1.0 / v43;

  divider1 = self->_divider1;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v36, v50 + 0.0, v48, v44, v52, v27, v55, v51);
  [(CALayer *)divider1 setFrame:?];
  handleField = self->_handleField;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v36, v50 + 0.0 + v49, v39, v54, v52, v27, v55, v51);
  [(UITextField *)handleField setFrame:?];
  imageView = self->_imageView;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v4, 8.0, 56.0, 56.0, v52, v27, v55, v51);
  [(SKUIImageView *)imageView setFrame:?];
}

+ (id)_baselineFontForTextStyle:(id)style
{
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:0 options:2];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (void)_updateHandleTextFieldValidity
{
  settingDescription = self->_settingDescription;
  text = [(UITextField *)self->_handleField text];
  [(SKUIEditProfileSettingDescription *)settingDescription setHandle:text];

  isHandleValid = [(SKUIEditProfileSettingDescription *)self->_settingDescription isHandleValid];
  handleField = self->_handleField;
  if (isHandleValid)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemRedColor];
  }
  v7 = ;
  [(UITextField *)handleField setTextColor:v7];
}

- (id)_textFieldWithPlaceholder:(id)placeholder
{
  v4 = MEMORY[0x277D75BB8];
  placeholderCopy = placeholder;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setDelegate:self];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v7 setFont:v8];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v7 setTextColor:blackColor];

  v10 = objc_alloc(MEMORY[0x277CBEAC0]);
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v12 = [v10 initWithObjectsAndKeys:{systemRedColor, *MEMORY[0x277D740C0], 0}];

  v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:placeholderCopy attributes:v12];
  [v7 setAttributedPlaceholder:v13];

  return v7;
}

@end