@interface PKListTextFieldContentConfiguration
+ (id)cellConfiguration;
+ (id)valueCellConfiguration;
- (BOOL)_isEqualToListTextFieldContentConfiguration:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (PKListTextFieldContentConfiguration)initWithBackingConfig:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)makeContentView;
- (unint64_t)hash;
@end

@implementation PKListTextFieldContentConfiguration

+ (id)cellConfiguration
{
  v2 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v3 = [v2 secondaryTextProperties];
  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v3 setColor:v4];

  v5 = [objc_alloc(objc_opt_class()) initWithBackingConfig:v2];
  [v5 setReturnKeyType:0];
  [v5 setClearsOnBeginEditing:0];
  [v5 setClearsOnInsertion:0];
  [v5 setFocusTextField:1];
  v6 = [v5 textProperties];
  [v6 setNumberOfLines:0];

  v7 = [v5 secondaryTextProperties];
  [v7 setNumberOfLines:0];

  v8 = [MEMORY[0x1E69DC888] systemRedColor];
  [v5 setErrorColor:v8];

  return v5;
}

+ (id)valueCellConfiguration
{
  v2 = [a1 cellConfiguration];
  [v2 setMode:1];
  [v2 setFocusTextField:0];
  v3 = [v2 textProperties];
  v4 = [v2 secondaryTextProperties];
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70], 2, 0);
  [v4 setFont:v5];

  v6 = [v3 color];
  [v4 setColor:v6];

  return v2;
}

- (PKListTextFieldContentConfiguration)initWithBackingConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKListTextFieldContentConfiguration;
  v6 = [(PKListTextFieldContentConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingConfig, a3);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(UIListContentConfiguration *)self->_backingConfig copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  objc_storeStrong((v5 + 24), self->_placeholderText);
  *(v5 + 32) = self->_returnKeyType;
  *(v5 + 18) = self->_focusTextField;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKListTextFieldContentConfiguration *)self _isEqualToListTextFieldContentConfiguration:v5];
  }

  return v6;
}

- (BOOL)_isEqualToListTextFieldContentConfiguration:(id)a3
{
  v4 = a3;
  if (v4 && PKEqualObjects())
  {
    v5 = v4[3];
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
    v8 = [MEMORY[0x1E696AD98] numberWithBool:*(v4 + 18)];
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