@interface _UIColorPickerActionHostToClient
+ (id)actionForConfiguration:(id)a3;
+ (id)actionForDismissEyeDropper:(BOOL)a3;
+ (id)actionForSelectedColor:(id)a3 withColorSpace:(id)a4;
- (void)performActionForHostedWindowScene:(id)a3;
@end

@implementation _UIColorPickerActionHostToClient

+ (id)actionForSelectedColor:(id)a3 withColorSpace:(id)a4
{
  v6 = MEMORY[0x1E695DEF0];
  v7 = a4;
  v8 = [v6 bs_secureDataFromObject:a3];
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1EFE303D0 forSetting:0];
  [v9 setObject:v8 forSetting:1];
  [v9 setObject:v7 forSetting:2];

  v10 = [[a1 alloc] initWithInfo:v9 responder:0];

  return v10;
}

+ (id)actionForConfiguration:(id)a3
{
  v4 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:a3];
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE303E8 forSetting:0];
  [v5 setObject:v4 forSetting:3];
  v6 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v6;
}

+ (id)actionForDismissEyeDropper:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE30400 forSetting:0];
  [v5 setFlag:v3 forSetting:4];
  v6 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v6;
}

- (void)performActionForHostedWindowScene:(id)a3
{
  v22 = [a3 delegate];
  if (([v22 conformsToProtocol:&unk_1F016C6F0] & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UIColorPickerActionHostToClient.m" lineNumber:62 description:{@"Scene's delegate (%@) does not conform to _UIHostedWindowSceneDelegate", objc_opt_class()}];
  }

  v5 = [v22 window];
  v6 = [v5 rootViewController];

  if (([v6 conformsToProtocol:&unk_1F016C750] & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UIColorPickerActionHostToClient.m" lineNumber:65 description:{@"Scene delegate's root view controller (%@) does not conform to _UIColorPickerViewProviding", objc_opt_class()}];
  }

  v7 = v6;
  v8 = [(_UIColorPickerActionHostToClient *)self info];
  v9 = [v8 objectForSetting:0];
  v10 = [v9 integerValue];

  if (v10)
  {
    if (v10 == 2)
    {
      v14 = [(_UIColorPickerActionHostToClient *)self info];
      v15 = [v14 BOOLForSetting:4];

      [v7 dismissEyedropper:v15];
      goto LABEL_12;
    }

    if (v10 != 1)
    {
      goto LABEL_12;
    }

    v11 = [(_UIColorPickerActionHostToClient *)self info];
    v12 = [v11 objectForSetting:3];
    v13 = [_UIColorPickerViewControllerConfiguration bs_secureDecodedFromData:v12];

    [v7 _setConfiguration:v13];
  }

  else
  {
    v16 = [(_UIColorPickerActionHostToClient *)self info];
    v17 = [v16 objectForSetting:1];
    v13 = [UIColor bs_secureDecodedFromData:v17];

    v18 = [(_UIColorPickerActionHostToClient *)self info];
    v19 = [v18 objectForSetting:2];

    [v7 _setSelectedColor:v13 colorSpace:v19];
  }

LABEL_12:
}

@end