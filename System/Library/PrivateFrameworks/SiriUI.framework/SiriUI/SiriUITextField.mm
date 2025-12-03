@interface SiriUITextField
+ (id)imageWithImage:(id)image tintColor:(id)color;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (SiriUITextField)initWithFrame:(CGRect)frame;
- (void)_configureClearButton;
@end

@implementation SiriUITextField

- (SiriUITextField)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SiriUITextField;
  v3 = [(SiriUITextField *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SiriUITextField *)v3 setRightViewMode:0];
    [(SiriUITextField *)v4 setClearButtonMode:1];
    [(SiriUITextField *)v4 setClearButtonStyle:1];
    [(SiriUITextField *)v4 setLoadKeyboardsForSiriLanguage:1];
    [(SiriUITextField *)v4 _configureClearButton];
  }

  return v4;
}

- (void)_configureClearButton
{
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 imageNamed:@"clear" inBundle:v4 compatibleWithTraitCollection:0];
  v6 = [v5 imageWithRenderingMode:2];
  _imageThatSuppressesAccessibilityHairlineThickening = [v6 _imageThatSuppressesAccessibilityHairlineThickening];

  v7 = objc_opt_class();
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v9 = [v7 imageWithImage:_imageThatSuppressesAccessibilityHairlineThickening tintColor:whiteColor];

  _clearButton = [(SiriUITextField *)self _clearButton];
  [_clearButton setImage:v9 forState:1];

  _clearButton2 = [(SiriUITextField *)self _clearButton];
  [_clearButton2 setImage:v9 forState:0];
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v5 = bounds.origin.x + 10.0;
  v6 = bounds.origin.y + 1.0;
  [(SiriUITextField *)self clearButtonRect];
  v8 = width - (v7 + 10.0);
  v9 = v5;
  v10 = v6;
  v11 = height;
  result.size.height = v11;
  result.size.width = v8;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
  v21.receiver = self;
  v21.super_class = SiriUITextField;
  [(SiriUITextField *)&v21 clearButtonRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10 + -0.5;
  v12 = MEMORY[0x277CBEAF8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];
  v15 = [v12 characterDirectionForLanguage:languageCode];

  if ((((v15 != 2) ^ SiriLanguageIsRTL()) & 1) == 0)
  {
    [(SiriUITextField *)self bounds];
    Width = CGRectGetWidth(v22);
    v23.origin.x = v5;
    v23.origin.y = v11;
    v23.size.width = v7;
    v23.size.height = v9;
    v5 = Width - CGRectGetMaxX(v23);
  }

  v17 = v5;
  v18 = v11;
  v19 = v7;
  v20 = v9;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)caretRectForPosition:(id)position
{
  positionCopy = position;
  if ([(SiriUITextField *)self isFirstResponder])
  {
    v17.receiver = self;
    v17.super_class = SiriUITextField;
    [(SiriUITextField *)&v17 caretRectForPosition:positionCopy];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (id)imageWithImage:(id)image tintColor:(id)color
{
  colorCopy = color;
  imageCopy = image;
  [imageCopy size];
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  [imageCopy size];
  v11 = v10;
  v13 = v12;
  CGContextSetBlendMode(CurrentContext, kCGBlendModeNormal);
  [imageCopy drawInRect:{v8, v9, v11, v13}];

  CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceIn);
  [colorCopy setFill];

  v18.origin.x = v8;
  v18.origin.y = v9;
  v18.size.width = v11;
  v18.size.height = v13;
  CGContextFillRect(CurrentContext, v18);
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

@end