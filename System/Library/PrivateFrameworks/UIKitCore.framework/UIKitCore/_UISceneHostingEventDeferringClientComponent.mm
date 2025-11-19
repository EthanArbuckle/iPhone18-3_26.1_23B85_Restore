@interface _UISceneHostingEventDeferringClientComponent
- (BOOL)requestEventDeferralForAllFirstResponderChanges;
- (void)beginObservingNotifications;
- (void)firstResponderDidChange:(id)a3;
- (void)invalidate;
- (void)requestKeyboardFocus;
- (void)requestKeyboardFocusFromHostIfWindowFirstResponderIsEligibleForKeyboardFocus:(id)a3;
- (void)setScene:(id)a3;
- (void)stopObservingNotifications;
- (void)wantsKeyboardEvents:(id)a3;
@end

@implementation _UISceneHostingEventDeferringClientComponent

- (void)setScene:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UISceneHostingEventDeferringClientComponent;
  [(FBSSceneComponent *)&v4 setScene:a3];
  [(_UISceneHostingEventDeferringClientComponent *)self beginObservingNotifications];
}

- (BOOL)requestEventDeferralForAllFirstResponderChanges
{
  v2 = [(FBSSceneComponent *)self clientScene];
  v3 = [v2 settings];
  v4 = [v3 requestEventDeferralForAllFirstResponderChanges];

  return v4;
}

- (void)requestKeyboardFocus
{
  v5 = [[_UISceneHostingEventDeferringFocusRequestActionToHost alloc] initWithInfo:0 responder:0];
  v3 = [(FBSSceneComponent *)self scene];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  [v3 sendPrivateActions:v4];
}

- (void)beginObservingNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_wantsKeyboardEvents_ name:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0];
  [v3 addObserver:self selector:sel_firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
}

- (void)stopObservingNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0];
  [v3 removeObserver:self name:@"UIWindowFirstResponderDidChangeNotification" object:0];
}

- (void)requestKeyboardFocusFromHostIfWindowFirstResponderIsEligibleForKeyboardFocus:(id)a3
{
  v12 = a3;
  v4 = [v12 _windowHostingScene];
  v5 = [v4 _FBSScene];
  v6 = [v5 identityToken];
  v7 = [(FBSSceneComponent *)self clientScene];
  v8 = [v7 identityToken];
  v9 = [v6 isEqual:v8];

  v10 = v12;
  if (v9)
  {
    v11 = [v12 firstResponder];
    if (v11 && (-[_UISceneHostingEventDeferringClientComponent requestEventDeferralForAllFirstResponderChanges](self, "requestEventDeferralForAllFirstResponderChanges") || ([v11 _wantsTargetOfKeyboardEventDeferringEnvironment] & 1) != 0 || objc_msgSend(v11, "_isHostingRemoteContent")))
    {
      [(_UISceneHostingEventDeferringClientComponent *)self requestKeyboardFocus];
    }

    v10 = v12;
  }
}

- (void)wantsKeyboardEvents:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"_UIRemoteKeyboardsHostedWindowUserInfoKey"];

  [(_UISceneHostingEventDeferringClientComponent *)self requestKeyboardFocusFromHostIfWindowFirstResponderIsEligibleForKeyboardFocus:v5];
}

- (void)firstResponderDidChange:(id)a3
{
  v4 = [a3 object];
  [(_UISceneHostingEventDeferringClientComponent *)self requestKeyboardFocusFromHostIfWindowFirstResponderIsEligibleForKeyboardFocus:v4];
}

- (void)invalidate
{
  [(_UISceneHostingEventDeferringClientComponent *)self stopObservingNotifications];
  v3.receiver = self;
  v3.super_class = _UISceneHostingEventDeferringClientComponent;
  [(FBSSceneComponent *)&v3 invalidate];
}

@end