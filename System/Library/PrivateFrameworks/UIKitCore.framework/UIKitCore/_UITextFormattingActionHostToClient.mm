@interface _UITextFormattingActionHostToClient
+ (id)actionForConfiguration:(id)configuration;
+ (id)actionForFormattingDescriptor:(id)descriptor;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation _UITextFormattingActionHostToClient

+ (id)actionForConfiguration:(id)configuration
{
  v4 = MEMORY[0x1E698E700];
  configurationCopy = configuration;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1EFE33088 forSetting:0];
  v7 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:configurationCopy];

  [v6 setObject:v7 forSetting:1];
  v8 = [[self alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForFormattingDescriptor:(id)descriptor
{
  v4 = MEMORY[0x1E698E700];
  descriptorCopy = descriptor;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1EFE330A0 forSetting:0];
  v7 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:descriptorCopy];

  [v6 setObject:v7 forSetting:2];
  v8 = [[self alloc] initWithInfo:v6 responder:0];

  return v8;
}

- (void)performActionForHostedWindowScene:(id)scene
{
  sceneCopy = scene;
  info = [(_UITextFormattingActionHostToClient *)self info];
  v7 = [info objectForSetting:0];
  integerValue = [v7 integerValue];

  delegate = [sceneCopy delegate];

  if (([delegate conformsToProtocol:&unk_1F016C6F0] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextFormattingActionHostToClient.m" lineNumber:52 description:{@"Scene's delegate (%@) does not conform to _UIHostedWindowSceneDelegate", objc_opt_class()}];
  }

  window = [delegate window];
  rootViewController = [window rootViewController];

  if (([rootViewController conformsToProtocol:&unk_1F016DB30] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITextFormattingActionHostToClient.m" lineNumber:55 description:{@"Scene delegate's root view controller (%@) does not conform to _UITextFormattingViewProviding", objc_opt_class()}];
  }

  v11 = rootViewController;
  if (integerValue == 1)
  {
    info2 = [(_UITextFormattingActionHostToClient *)self info];
    v16 = [info2 objectForSetting:2];
    v14 = [UITextFormattingViewControllerFormattingDescriptor bs_secureDecodedFromData:v16];

    [v11 _setFormattingDescriptor:v14];
  }

  else
  {
    if (integerValue)
    {
      goto LABEL_10;
    }

    info3 = [(_UITextFormattingActionHostToClient *)self info];
    v13 = [info3 objectForSetting:1];
    v14 = [UITextFormattingViewControllerConfiguration bs_secureDecodedFromData:v13];

    [v11 _setConfiguration:v14];
  }

LABEL_10:
}

@end