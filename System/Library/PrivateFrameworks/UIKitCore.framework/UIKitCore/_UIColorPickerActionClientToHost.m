@interface _UIColorPickerActionClientToHost
+ (id)_actionForActionType:(int64_t)a3;
+ (id)actionForColorPickerDidSelectColor:(id)a3 colorSpace:(id)a4 isVolatile:(BOOL)a5;
- (void)performActionForSceneController:(id)a3;
@end

@implementation _UIColorPickerActionClientToHost

+ (id)actionForColorPickerDidSelectColor:(id)a3 colorSpace:(id)a4 isVolatile:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E695DEF0];
  v9 = a4;
  v10 = [v8 bs_secureDataFromObject:a3];
  v11 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v11 setObject:&unk_1EFE304A8 forSetting:0];
  [v11 setObject:v10 forSetting:1];
  [v11 setObject:v9 forSetting:2];

  [v11 setFlag:v5 forSetting:3];
  v12 = [[a1 alloc] initWithInfo:v11 responder:0];

  return v12;
}

+ (id)_actionForActionType:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:0];

  v7 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (void)performActionForSceneController:(id)a3
{
  v5 = [a3 delegate];
  if (([v5 conformsToProtocol:&unk_1EFF07A68] & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIColorPickerActionClientToHost.m" lineNumber:76 description:{@"Scene controller's delegate (%@) does not conform to _UIColorPickerViewProvidingDelegate", objc_opt_class()}];
  }

  v17 = v5;
  v6 = [(_UIColorPickerActionClientToHost *)self info];
  v7 = [v6 objectForSetting:0];
  v8 = [v7 integerValue];

  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        [v17 _pickerDidShowEyedropper];
      }
    }

    else
    {
      v9 = [(_UIColorPickerActionClientToHost *)self info];
      v10 = [v9 objectForSetting:1];
      v11 = [UIColor bs_secureDecodedFromData:v10];

      v12 = [(_UIColorPickerActionClientToHost *)self info];
      v13 = [v12 objectForSetting:2];

      v14 = [(_UIColorPickerActionClientToHost *)self info];
      v15 = [v14 BOOLForSetting:3];

      [v17 _pickerDidSelectColor:v11 colorSpace:v13 isVolatile:v15];
    }
  }

  else
  {
    switch(v8)
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