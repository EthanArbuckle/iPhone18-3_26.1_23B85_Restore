@interface _UITextFormattingActionClientToHost
+ (id)actionForChangeValue:(id)value textAttributesData:(id)data;
+ (id)actionForDidFinish;
+ (id)actionForPresentColorPickerWithRect:(CGRect)rect selectedColor:(id)color;
+ (id)actionForPresentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts;
+ (id)actionForPresentTypographySettingsForFont:(id)font;
- (void)performActionForSceneController:(id)controller;
@end

@implementation _UITextFormattingActionClientToHost

+ (id)actionForChangeValue:(id)value textAttributesData:(id)data
{
  v6 = MEMORY[0x1E695DEF0];
  dataCopy = data;
  v8 = [v6 bs_secureDataFromObject:value];
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1EFE33A60 forSetting:0];
  [v9 setObject:dataCopy forSetting:6];

  [v9 setObject:v8 forSetting:1];
  v10 = [[self alloc] initWithInfo:v9 responder:0];

  return v10;
}

+ (id)actionForPresentColorPickerWithRect:(CGRect)rect selectedColor:(id)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:color];
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v10 setObject:&unk_1EFE33A78 forSetting:0];
  [v10 setObject:v9 forSetting:3];
  *v14 = x;
  *&v14[1] = y;
  *&v14[2] = width;
  *&v14[3] = height;
  v11 = [MEMORY[0x1E696B098] valueWithBytes:v14 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v10 setObject:v11 forSetting:2];

  v12 = [[self alloc] initWithInfo:v10 responder:0];

  return v12;
}

+ (id)actionForPresentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts
{
  v6 = MEMORY[0x1E695DEF0];
  configurationCopy = configuration;
  v8 = [v6 bs_secureDataFromObject:fonts];
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1EFE33A90 forSetting:0];
  [v9 setObject:configurationCopy forSetting:4];

  [v9 setObject:v8 forSetting:5];
  v10 = [[self alloc] initWithInfo:v9 responder:0];

  return v10;
}

+ (id)actionForPresentTypographySettingsForFont:(id)font
{
  v4 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:font];
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE33AA8 forSetting:0];
  [v5 setObject:v4 forSetting:5];
  v6 = [[self alloc] initWithInfo:v5 responder:0];

  return v6;
}

+ (id)actionForDidFinish
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1EFE33AC0 forSetting:0];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)controller
{
  delegate = [controller delegate];
  if (([delegate conformsToProtocol:&unk_1F00B7998] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextFormattingActionClientToHost.m" lineNumber:95 description:{@"Scene controller's delegate (%@) does not conform to _UITextFormattingRemoteViewControllerHost", objc_opt_class()}];
  }

  v34 = delegate;
  info = [(_UITextFormattingActionClientToHost *)self info];
  v7 = [info objectForSetting:0];
  integerValue = [v7 integerValue];

  if (integerValue > 1)
  {
    switch(integerValue)
    {
      case 2:
        info2 = [(_UITextFormattingActionClientToHost *)self info];
        v14 = [info2 objectForSetting:3];
        v9 = [UIColor bs_secureDecodedFromData:v14];

        info3 = [(_UITextFormattingActionClientToHost *)self info];
        v16 = [info3 objectForSetting:2];
        [v16 CGRectValue];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        [v34 _presentColorPicker:v9 selectedColor:{v18, v20, v22, v24}];
LABEL_15:

        goto LABEL_16;
      case 3:
        info4 = [(_UITextFormattingActionClientToHost *)self info];
        v9 = [info4 objectForSetting:4];

        v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        v26 = MEMORY[0x1E695DEC8];
        info5 = [(_UITextFormattingActionClientToHost *)self info];
        v28 = [info5 objectForSetting:5];
        v29 = [v26 bs_secureDecodedFromData:v28 withAdditionalClasses:v12];

        [v34 _presentFontPickerWithConfiguration:v9 selectedFonts:v29];
        break;
      case 4:
        v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        info6 = [(_UITextFormattingActionClientToHost *)self info];
        v11 = [info6 objectForSetting:5];
        v12 = [off_1E70ECC18 bs_secureDecodedFromData:v11 withAdditionalClasses:v9];

        [v34 _presentTypographySettingsForFont:v12];
        break;
      default:
        goto LABEL_16;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!integerValue)
  {
    info7 = [(_UITextFormattingActionClientToHost *)self info];
    v31 = [info7 objectForSetting:1];
    v9 = [UITextFormattingViewControllerChangeValue bs_secureDecodedFromData:v31];

    info8 = [(_UITextFormattingActionClientToHost *)self info];
    v12 = [info8 objectForSetting:6];

    [v34 _textFormattingDidChangeValue:v9 textAttributesData:v12];
    goto LABEL_14;
  }

  if (integerValue == 1)
  {
    [v34 _textFormattingDidFinish];
  }

LABEL_16:
}

@end