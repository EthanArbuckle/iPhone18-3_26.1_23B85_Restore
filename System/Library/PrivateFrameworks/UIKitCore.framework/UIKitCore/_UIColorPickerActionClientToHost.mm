@interface _UIColorPickerActionClientToHost
+ (id)_actionForActionType:(int64_t)type;
+ (id)actionForColorPickerDidSelectColor:(id)color colorSpace:(id)space isVolatile:(BOOL)volatile;
- (void)performActionForSceneController:(id)controller;
@end

@implementation _UIColorPickerActionClientToHost

+ (id)actionForColorPickerDidSelectColor:(id)color colorSpace:(id)space isVolatile:(BOOL)volatile
{
  volatileCopy = volatile;
  v8 = MEMORY[0x1E695DEF0];
  spaceCopy = space;
  v10 = [v8 bs_secureDataFromObject:color];
  v11 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v11 setObject:&unk_1EFE304A8 forSetting:0];
  [v11 setObject:v10 forSetting:1];
  [v11 setObject:spaceCopy forSetting:2];

  [v11 setFlag:volatileCopy forSetting:3];
  v12 = [[self alloc] initWithInfo:v11 responder:0];

  return v12;
}

+ (id)_actionForActionType:(int64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v5 setObject:v6 forSetting:0];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (void)performActionForSceneController:(id)controller
{
  delegate = [controller delegate];
  if (([delegate conformsToProtocol:&unk_1EFF07A68] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIColorPickerActionClientToHost.m" lineNumber:76 description:{@"Scene controller's delegate (%@) does not conform to _UIColorPickerViewProvidingDelegate", objc_opt_class()}];
  }

  v17 = delegate;
  info = [(_UIColorPickerActionClientToHost *)self info];
  v7 = [info objectForSetting:0];
  integerValue = [v7 integerValue];

  if (integerValue <= 1)
  {
    if (integerValue)
    {
      if (integerValue == 1)
      {
        [v17 _pickerDidShowEyedropper];
      }
    }

    else
    {
      info2 = [(_UIColorPickerActionClientToHost *)self info];
      v10 = [info2 objectForSetting:1];
      v11 = [UIColor bs_secureDecodedFromData:v10];

      info3 = [(_UIColorPickerActionClientToHost *)self info];
      v13 = [info3 objectForSetting:2];

      info4 = [(_UIColorPickerActionClientToHost *)self info];
      v15 = [info4 BOOLForSetting:3];

      [v17 _pickerDidSelectColor:v11 colorSpace:v13 isVolatile:v15];
    }
  }

  else
  {
    switch(integerValue)
    {
      case 2:
        [v17 _pickerDidFinish];
        break;
      case 3:
        [v17 _pickerDidFloatEyedropper];
        break;
      case 4:
        [v17 _pickerDidDismissEyedropper];
        break;
    }
  }
}

@end