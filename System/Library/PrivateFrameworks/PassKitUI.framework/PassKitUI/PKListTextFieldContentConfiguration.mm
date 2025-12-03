@interface PKListTextFieldContentConfiguration
+ (id)cellConfiguration;
+ (id)valueCellConfiguration;
- (BOOL)_isEqualToListTextFieldContentConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (PKListTextFieldContentConfiguration)initWithBackingConfig:(id)config;
- (id)copyWithZone:(_NSZone *)zone;
- (id)makeContentView;
- (unint64_t)hash;
@end

@implementation PKListTextFieldContentConfiguration

+ (id)cellConfiguration
{
  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties setColor:secondaryLabelColor];

  v5 = [objc_alloc(objc_opt_class()) initWithBackingConfig:subtitleCellConfiguration];
  [v5 setReturnKeyType:0];
  [v5 setClearsOnBeginEditing:0];
  [v5 setClearsOnInsertion:0];
  [v5 setFocusTextField:1];
  textProperties = [v5 textProperties];
  [textProperties setNumberOfLines:0];

  secondaryTextProperties2 = [v5 secondaryTextProperties];
  [secondaryTextProperties2 setNumberOfLines:0];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  [v5 setErrorColor:systemRedColor];

  return v5;
}

+ (id)valueCellConfiguration
{
  cellConfiguration = [self cellConfiguration];
  [cellConfiguration setMode:1];
  [cellConfiguration setFocusTextField:0];
  textProperties = [cellConfiguration textProperties];
  secondaryTextProperties = [cellConfiguration secondaryTextProperties];
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70], 2, 0);
  [secondaryTextProperties setFont:v5];

  color = [textProperties color];
  [secondaryTextProperties setColor:color];

  return cellConfiguration;
}

- (PKListTextFieldContentConfiguration)initWithBackingConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = PKListTextFieldContentConfiguration;
  v6 = [(PKListTextFieldContentConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingConfig, config);
  }

  return v7;
}

- (NSDirectionalEdgeInsets)directionalLayoutMargins
{
  [(UIListContentConfiguration *)self->_backingConfig directionalLayoutMargins];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (id)makeContentView
{
  v2 = [[PKListTextFieldContentView alloc] initWithConfiguration:self];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(UIListContentConfiguration *)self->_backingConfig copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  objc_storeStrong((v5 + 24), self->_placeholderText);
  *(v5 + 32) = self->_returnKeyType;
  *(v5 + 18) = self->_focusTextField;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKListTextFieldContentConfiguration *)self _isEqualToListTextFieldContentConfiguration:v5];
  }

  return v6;
}

- (BOOL)_isEqualToListTextFieldContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy && PKEqualObjects())
  {
    v5 = configurationCopy[3];
    v6 = self->_placeholderText;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      LOBYTE(v9) = 0;
      if (!v6 || !v7)
      {
        goto LABEL_11;
      }

      v9 = [(NSString *)v6 isEqualToString:v7];

      if (!v9)
      {
        goto LABEL_12;
      }
    }

    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_focusTextField];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:*(configurationCopy + 18)];
    LOBYTE(v9) = PKEqualObjects();
LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v9) = 0;
LABEL_12:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_backingConfig];
  [v3 safelyAddObject:self->_placeholderText];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_focusTextField];
  [v3 safelyAddObject:v4];

  v5 = PKCombinedHash();
  return v5;
}

@end