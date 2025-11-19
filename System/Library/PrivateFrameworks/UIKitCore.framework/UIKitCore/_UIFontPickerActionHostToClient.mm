@interface _UIFontPickerActionHostToClient
+ (id)actionForConfiguration:(id)a3;
+ (id)actionForHideNavigationBar:(BOOL)a3;
+ (id)actionForSelectedFontDescriptors:(id)a3 scrollToVisible:(BOOL)a4;
+ (id)actionForShowsGrabber:(BOOL)a3;
- (void)performActionForHostedWindowScene:(id)a3;
@end

@implementation _UIFontPickerActionHostToClient

+ (id)actionForConfiguration:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE32188 forSetting:0];
  [v5 setObject:v4 forSetting:1];
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
    [v4 set_clientFontContextEndpoint:v7];

    v8 = _UIFontPickerLoadRecentFontDescriptors();
    [v4 _setClientRecentFonts:v8];

    v9 = [[a1 alloc] initWithInfo:v5 responder:0];

    return v9;
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSXPCListenerEndpoint *_FSFontPickerSupportListenerEndpoint(void)"];
    [v11 handleFailureInFunction:v12 file:@"_UIFontPickerActionHostToClient.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)actionForSelectedFontDescriptors:(id)a3 scrollToVisible:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E698E700];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setObject:&unk_1EFE321A0 forSetting:0];
  v9 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:v7];

  [v8 setObject:v9 forSetting:2];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v8 setObject:v10 forSetting:3];

  v11 = [[a1 alloc] initWithInfo:v8 responder:0];

  return v11;
}

+ (id)actionForHideNavigationBar:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE321B8 forSetting:0];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v6 forSetting:4];

  v7 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForShowsGrabber:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE321D0 forSetting:0];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v6 forSetting:5];

  v7 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (void)performActionForHostedWindowScene:(id)a3
{
  v28 = [a3 delegate];
  if (([v28 conformsToProtocol:&unk_1F016C6F0] & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_UIFontPickerActionHostToClient.m" lineNumber:80 description:{@"Scene's delegate (%@) does not conform to _UIHostedWindowSceneDelegate", objc_opt_class()}];
  }

  v5 = [v28 window];
  v6 = [v5 rootViewController];

  if (([v6 conformsToProtocol:&unk_1F016D770] & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"_UIFontPickerActionHostToClient.m" lineNumber:83 description:{@"Scene delegate's root view controller (%@) does not conform to _UIFontPickerClientActionHandling", objc_opt_class()}];
  }

  v7 = v6;
  v8 = [(_UIFontPickerActionHostToClient *)self info];
  v9 = [v8 objectForSetting:0];
  v10 = [v9 integerValue];

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v23 = [(_UIFontPickerActionHostToClient *)self info];
      v24 = [v23 objectForSetting:4];
      v25 = [v24 BOOLValue];

      [v7 applyHideNavigationBar:v25];
    }

    else if (v10 == 3)
    {
      v19 = [(_UIFontPickerActionHostToClient *)self info];
      v20 = [v19 objectForSetting:5];
      v21 = [v20 BOOLValue];

      [v7 applyShowsGrabber:v21];
    }
  }

  else
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_15;
      }

      v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
      v12 = MEMORY[0x1E695DEC8];
      v13 = [(_UIFontPickerActionHostToClient *)self info];
      v14 = [v13 objectForSetting:2];
      v15 = [v12 bs_secureDecodedFromData:v14 withAdditionalClasses:v11];

      v16 = [(_UIFontPickerActionHostToClient *)self info];
      v17 = [v16 objectForSetting:3];
      v18 = [v17 BOOLValue];

      [v7 applySelectedFontDescriptors:v15 scrollToVisible:v18];
    }

    else
    {
      v22 = [(_UIFontPickerActionHostToClient *)self info];
      v11 = [v22 objectForSetting:1];

      [v7 applyFontPickerConfiguration:v11];
    }
  }

LABEL_15:
}

@end