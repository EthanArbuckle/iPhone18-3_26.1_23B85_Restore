@interface _UIFontPickerActionClientToHost
+ (id)actionForPickerDidCancel;
+ (id)actionForPickerDidSelectFont:(id)a3;
- (void)performActionForSceneController:(id)a3;
@end

@implementation _UIFontPickerActionClientToHost

+ (id)actionForPickerDidSelectFont:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1EFE33700 forSetting:0];
  v7 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:v5];

  [v6 setObject:v7 forSetting:1];
  v8 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForPickerDidCancel
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1EFE33718 forSetting:0];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)a3
{
  v5 = a3;
  v6 = [(_UIFontPickerActionClientToHost *)self info];
  v7 = [v6 objectForSetting:0];
  v8 = [v7 integerValue];

  v9 = [v5 delegate];

  if (([v9 conformsToProtocol:&unk_1EFE9CDB0] & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIFontPickerActionClientToHost.m" lineNumber:46 description:{@"Scene controller's delegate (%@) does not conform to _UIFontPickerViewControllerHost", objc_opt_class()}];
  }

  v14 = v9;
  if (v8 == 1)
  {
    [v14 _pickerDidCancel];
  }

  else if (!v8)
  {
    v10 = [(_UIFontPickerActionClientToHost *)self info];
    v11 = [v10 objectForSetting:1];
    v12 = [off_1E70ECC20 bs_secureDecodedFromData:v11];

    [v14 _pickerDidSelectFont:v12];
  }
}

@end