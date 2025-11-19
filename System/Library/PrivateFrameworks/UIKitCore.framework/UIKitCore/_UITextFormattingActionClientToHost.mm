@interface _UITextFormattingActionClientToHost
+ (id)actionForChangeValue:(id)a3 textAttributesData:(id)a4;
+ (id)actionForDidFinish;
+ (id)actionForPresentColorPickerWithRect:(CGRect)a3 selectedColor:(id)a4;
+ (id)actionForPresentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4;
+ (id)actionForPresentTypographySettingsForFont:(id)a3;
- (void)performActionForSceneController:(id)a3;
@end

@implementation _UITextFormattingActionClientToHost

+ (id)actionForChangeValue:(id)a3 textAttributesData:(id)a4
{
  v6 = MEMORY[0x1E695DEF0];
  v7 = a4;
  v8 = [v6 bs_secureDataFromObject:a3];
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1EFE33A60 forSetting:0];
  [v9 setObject:v7 forSetting:6];

  [v9 setObject:v8 forSetting:1];
  v10 = [[a1 alloc] initWithInfo:v9 responder:0];

  return v10;
}

+ (id)actionForPresentColorPickerWithRect:(CGRect)a3 selectedColor:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:a4];
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v10 setObject:&unk_1EFE33A78 forSetting:0];
  [v10 setObject:v9 forSetting:3];
  *v14 = x;
  *&v14[1] = y;
  *&v14[2] = width;
  *&v14[3] = height;
  v11 = [MEMORY[0x1E696B098] valueWithBytes:v14 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v10 setObject:v11 forSetting:2];

  v12 = [[a1 alloc] initWithInfo:v10 responder:0];

  return v12;
}

+ (id)actionForPresentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4
{
  v6 = MEMORY[0x1E695DEF0];
  v7 = a3;
  v8 = [v6 bs_secureDataFromObject:a4];
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1EFE33A90 forSetting:0];
  [v9 setObject:v7 forSetting:4];

  [v9 setObject:v8 forSetting:5];
  v10 = [[a1 alloc] initWithInfo:v9 responder:0];

  return v10;
}

+ (id)actionForPresentTypographySettingsForFont:(id)a3
{
  v4 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:a3];
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE33AA8 forSetting:0];
  [v5 setObject:v4 forSetting:5];
  v6 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v6;
}

+ (id)actionForDidFinish
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1EFE33AC0 forSetting:0];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)a3
{
  v5 = [a3 delegate];
  if (([v5 conformsToProtocol:&unk_1F00B7998] & 1) == 0)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"_UITextFormattingActionClientToHost.m" lineNumber:95 description:{@"Scene controller's delegate (%@) does not conform to _UITextFormattingRemoteViewControllerHost", objc_opt_class()}];
  }

  v34 = v5;
  v6 = [(_UITextFormattingActionClientToHost *)self info];
  v7 = [v6 objectForSetting:0];
  v8 = [v7 integerValue];

  if (v8 > 1)
  {
    switch(v8)
    {
      case 2:
        v13 = [(_UITextFormattingActionClientToHost *)self info];
        v14 = [v13 objectForSetting:3];
        v9 = [UIColor bs_secureDecodedFromData:v14];

        v15 = [(_UITextFormattingActionClientToHost *)self info];
        v16 = [v15 objectForSetting:2];
        [v16 CGRectValue];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        [v34 _presentColorPicker:v9 selectedColor:{v18, v20, v22, v24}];
LABEL_15:

        goto LABEL_16;
      case 3:
        v25 = [(_UITextFormattingActionClientToHost *)self info];
        v9 = [v25 objectForSetting:4];

        v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        v26 = MEMORY[0x1E695DEC8];
        v27 = [(_UITextFormattingActionClientToHost *)self info];
        v28 = [v27 objectForSetting:5];
        v29 = [v26 bs_secureDecodedFromData:v28 withAdditionalClasses:v12];

        [v34 _presentFontPickerWithConfiguration:v9 selectedFonts:v29];
        break;
      case 4:
        v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        v10 = [(_UITextFormattingActionClientToHost *)self info];
        v11 = [v10 objectForSetting:5];
        v12 = [off_1E70ECC18 bs_secureDecodedFromData:v11 withAdditionalClasses:v9];

        [v34 _presentTypographySettingsForFont:v12];
        break;
      default:
        goto LABEL_16;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!v8)
  {
    v30 = [(_UITextFormattingActionClientToHost *)self info];
    v31 = [v30 objectForSetting:1];
    v9 = [UITextFormattingViewControllerChangeValue bs_secureDecodedFromData:v31];

    v32 = [(_UITextFormattingActionClientToHost *)self info];
    v12 = [v32 objectForSetting:6];

    [v34 _textFormattingDidChangeValue:v9 textAttributesData:v12];
    goto LABEL_14;
  }

  if (v8 == 1)
  {
    [v34 _textFormattingDidFinish];
  }

LABEL_16:
}

@end