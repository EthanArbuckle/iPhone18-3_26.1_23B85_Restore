@interface _UIColorPickerActionHostToClient
+ (id)actionForConfiguration:(id)configuration;
+ (id)actionForDismissEyeDropper:(BOOL)dropper;
+ (id)actionForSelectedColor:(id)color withColorSpace:(id)space;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation _UIColorPickerActionHostToClient

+ (id)actionForSelectedColor:(id)color withColorSpace:(id)space
{
  v6 = MEMORY[0x1E695DEF0];
  spaceCopy = space;
  v8 = [v6 bs_secureDataFromObject:color];
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1EFE303D0 forSetting:0];
  [v9 setObject:v8 forSetting:1];
  [v9 setObject:spaceCopy forSetting:2];

  v10 = [[self alloc] initWithInfo:v9 responder:0];

  return v10;
}

+ (id)actionForConfiguration:(id)configuration
{
  v4 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:configuration];
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE303E8 forSetting:0];
  [v5 setObject:v4 forSetting:3];
  v6 = [[self alloc] initWithInfo:v5 responder:0];

  return v6;
}

+ (id)actionForDismissEyeDropper:(BOOL)dropper
{
  dropperCopy = dropper;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE30400 forSetting:0];
  [v5 setFlag:dropperCopy forSetting:4];
  v6 = [[self alloc] initWithInfo:v5 responder:0];

  return v6;
}

- (void)performActionForHostedWindowScene:(id)scene
{
  delegate = [scene delegate];
  if (([delegate conformsToProtocol:&unk_1F016C6F0] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIColorPickerActionHostToClient.m" lineNumber:62 description:{@"Scene's delegate (%@) does not conform to _UIHostedWindowSceneDelegate", objc_opt_class()}];
  }

  window = [delegate window];
  rootViewController = [window rootViewController];

  if (([rootViewController conformsToProtocol:&unk_1F016C750] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIColorPickerActionHostToClient.m" lineNumber:65 description:{@"Scene delegate's root view controller (%@) does not conform to _UIColorPickerViewProviding", objc_opt_class()}];
  }

  v7 = rootViewController;
  info = [(_UIColorPickerActionHostToClient *)self info];
  v9 = [info objectForSetting:0];
  integerValue = [v9 integerValue];

  if (integerValue)
  {
    if (integerValue == 2)
    {
      info2 = [(_UIColorPickerActionHostToClient *)self info];
      v15 = [info2 BOOLForSetting:4];

      [v7 dismissEyedropper:v15];
      goto LABEL_12;
    }

    if (integerValue != 1)
    {
      goto LABEL_12;
    }

    info3 = [(_UIColorPickerActionHostToClient *)self info];
    v12 = [info3 objectForSetting:3];
    v13 = [_UIColorPickerViewControllerConfiguration bs_secureDecodedFromData:v12];

    [v7 _setConfiguration:v13];
  }

  else
  {
    info4 = [(_UIColorPickerActionHostToClient *)self info];
    v17 = [info4 objectForSetting:1];
    v13 = [UIColor bs_secureDecodedFromData:v17];

    info5 = [(_UIColorPickerActionHostToClient *)self info];
    v19 = [info5 objectForSetting:2];

    [v7 _setSelectedColor:v13 colorSpace:v19];
  }

LABEL_12:
}

@end