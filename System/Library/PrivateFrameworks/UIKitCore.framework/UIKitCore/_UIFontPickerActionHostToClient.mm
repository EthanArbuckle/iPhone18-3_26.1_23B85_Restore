@interface _UIFontPickerActionHostToClient
+ (id)actionForConfiguration:(id)configuration;
+ (id)actionForHideNavigationBar:(BOOL)bar;
+ (id)actionForSelectedFontDescriptors:(id)descriptors scrollToVisible:(BOOL)visible;
+ (id)actionForShowsGrabber:(BOOL)grabber;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation _UIFontPickerActionHostToClient

+ (id)actionForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE32188 forSetting:0];
  [v5 setObject:configurationCopy forSetting:1];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v6 = _MergedGlobals_1231;
  v17 = _MergedGlobals_1231;
  if (!_MergedGlobals_1231)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getFSFontPickerSupportListenerEndpointSymbolLoc_block_invoke_0;
    v13[3] = &unk_1E70F2F20;
    v13[4] = &v14;
    __getFSFontPickerSupportListenerEndpointSymbolLoc_block_invoke_0(v13);
    v6 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v6)
  {
    v7 = v6();
    [configurationCopy set_clientFontContextEndpoint:v7];

    v8 = _UIFontPickerLoadRecentFontDescriptors();
    [configurationCopy _setClientRecentFonts:v8];

    v9 = [[self alloc] initWithInfo:v5 responder:0];

    return v9;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSXPCListenerEndpoint *_FSFontPickerSupportListenerEndpoint(void)"];
    [currentHandler handleFailureInFunction:v12 file:@"_UIFontPickerActionHostToClient.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)actionForSelectedFontDescriptors:(id)descriptors scrollToVisible:(BOOL)visible
{
  visibleCopy = visible;
  v6 = MEMORY[0x1E698E700];
  descriptorsCopy = descriptors;
  v8 = objc_alloc_init(v6);
  [v8 setObject:&unk_1EFE321A0 forSetting:0];
  v9 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:descriptorsCopy];

  [v8 setObject:v9 forSetting:2];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:visibleCopy];
  [v8 setObject:v10 forSetting:3];

  v11 = [[self alloc] initWithInfo:v8 responder:0];

  return v11;
}

+ (id)actionForHideNavigationBar:(BOOL)bar
{
  barCopy = bar;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE321B8 forSetting:0];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:barCopy];
  [v5 setObject:v6 forSetting:4];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForShowsGrabber:(BOOL)grabber
{
  grabberCopy = grabber;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE321D0 forSetting:0];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:grabberCopy];
  [v5 setObject:v6 forSetting:5];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (void)performActionForHostedWindowScene:(id)scene
{
  delegate = [scene delegate];
  if (([delegate conformsToProtocol:&unk_1F016C6F0] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFontPickerActionHostToClient.m" lineNumber:80 description:{@"Scene's delegate (%@) does not conform to _UIHostedWindowSceneDelegate", objc_opt_class()}];
  }

  window = [delegate window];
  rootViewController = [window rootViewController];

  if (([rootViewController conformsToProtocol:&unk_1F016D770] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFontPickerActionHostToClient.m" lineNumber:83 description:{@"Scene delegate's root view controller (%@) does not conform to _UIFontPickerClientActionHandling", objc_opt_class()}];
  }

  v7 = rootViewController;
  info = [(_UIFontPickerActionHostToClient *)self info];
  v9 = [info objectForSetting:0];
  integerValue = [v9 integerValue];

  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      info2 = [(_UIFontPickerActionHostToClient *)self info];
      v24 = [info2 objectForSetting:4];
      bOOLValue = [v24 BOOLValue];

      [v7 applyHideNavigationBar:bOOLValue];
    }

    else if (integerValue == 3)
    {
      info3 = [(_UIFontPickerActionHostToClient *)self info];
      v20 = [info3 objectForSetting:5];
      bOOLValue2 = [v20 BOOLValue];

      [v7 applyShowsGrabber:bOOLValue2];
    }
  }

  else
  {
    if (integerValue)
    {
      if (integerValue != 1)
      {
        goto LABEL_15;
      }

      v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
      v12 = MEMORY[0x1E695DEC8];
      info4 = [(_UIFontPickerActionHostToClient *)self info];
      v14 = [info4 objectForSetting:2];
      v15 = [v12 bs_secureDecodedFromData:v14 withAdditionalClasses:v11];

      info5 = [(_UIFontPickerActionHostToClient *)self info];
      v17 = [info5 objectForSetting:3];
      bOOLValue3 = [v17 BOOLValue];

      [v7 applySelectedFontDescriptors:v15 scrollToVisible:bOOLValue3];
    }

    else
    {
      info6 = [(_UIFontPickerActionHostToClient *)self info];
      v11 = [info6 objectForSetting:1];

      [v7 applyFontPickerConfiguration:v11];
    }
  }

LABEL_15:
}

@end