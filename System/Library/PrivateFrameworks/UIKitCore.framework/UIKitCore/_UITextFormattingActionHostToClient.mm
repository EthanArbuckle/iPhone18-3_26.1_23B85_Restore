@interface _UITextFormattingActionHostToClient
+ (id)actionForConfiguration:(id)a3;
+ (id)actionForFormattingDescriptor:(id)a3;
- (void)performActionForHostedWindowScene:(id)a3;
@end

@implementation _UITextFormattingActionHostToClient

+ (id)actionForConfiguration:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1EFE33088 forSetting:0];
  v7 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:v5];

  [v6 setObject:v7 forSetting:1];
  v8 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForFormattingDescriptor:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1EFE330A0 forSetting:0];
  v7 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:v5];

  [v6 setObject:v7 forSetting:2];
  v8 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v8;
}

- (void)performActionForHostedWindowScene:(id)a3
{
  v5 = a3;
  v6 = [(_UITextFormattingActionHostToClient *)self info];
  v7 = [v6 objectForSetting:0];
  v8 = [v7 integerValue];

  v19 = [v5 delegate];

  if (([v19 conformsToProtocol:&unk_1F016C6F0] & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UITextFormattingActionHostToClient.m" lineNumber:52 description:{@"Scene's delegate (%@) does not conform to _UIHostedWindowSceneDelegate", objc_opt_class()}];
  }

  v9 = [v19 window];
  v10 = [v9 rootViewController];

  if (([v10 conformsToProtocol:&unk_1F016DB30] & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UITextFormattingActionHostToClient.m" lineNumber:55 description:{@"Scene delegate's root view controller (%@) does not conform to _UITextFormattingViewProviding", objc_opt_class()}];
  }

  v11 = v10;
  if (v8 == 1)
  {
    v15 = [(_UITextFormattingActionHostToClient *)self info];
    v16 = [v15 objectForSetting:2];
    v14 = [UITextFormattingViewControllerFormattingDescriptor bs_secureDecodedFromData:v16];

    [v11 _setFormattingDescriptor:v14];
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v12 = [(_UITextFormattingActionHostToClient *)self info];
    v13 = [v12 objectForSetting:1];
    v14 = [UITextFormattingViewControllerConfiguration bs_secureDecodedFromData:v13];

    [v11 _setConfiguration:v14];
  }

LABEL_10:
}

@end