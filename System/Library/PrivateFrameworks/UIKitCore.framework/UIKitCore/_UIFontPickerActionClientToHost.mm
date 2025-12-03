@interface _UIFontPickerActionClientToHost
+ (id)actionForPickerDidCancel;
+ (id)actionForPickerDidSelectFont:(id)font;
- (void)performActionForSceneController:(id)controller;
@end

@implementation _UIFontPickerActionClientToHost

+ (id)actionForPickerDidSelectFont:(id)font
{
  v4 = MEMORY[0x1E698E700];
  fontCopy = font;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1EFE33700 forSetting:0];
  v7 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:fontCopy];

  [v6 setObject:v7 forSetting:1];
  v8 = [[self alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForPickerDidCancel
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1EFE33718 forSetting:0];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  info = [(_UIFontPickerActionClientToHost *)self info];
  v7 = [info objectForSetting:0];
  integerValue = [v7 integerValue];

  delegate = [controllerCopy delegate];

  if (([delegate conformsToProtocol:&unk_1EFE9CDB0] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFontPickerActionClientToHost.m" lineNumber:46 description:{@"Scene controller's delegate (%@) does not conform to _UIFontPickerViewControllerHost", objc_opt_class()}];
  }

  v14 = delegate;
  if (integerValue == 1)
  {
    [v14 _pickerDidCancel];
  }

  else if (!integerValue)
  {
    info2 = [(_UIFontPickerActionClientToHost *)self info];
    v11 = [info2 objectForSetting:1];
    v12 = [off_1E70ECC20 bs_secureDecodedFromData:v11];

    [v14 _pickerDidSelectFont:v12];
  }
}

@end