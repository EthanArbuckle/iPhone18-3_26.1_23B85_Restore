@interface _UISceneHostingEventDeferringClientComponent
- (BOOL)requestEventDeferralForAllFirstResponderChanges;
- (void)beginObservingNotifications;
- (void)firstResponderDidChange:(id)change;
- (void)invalidate;
- (void)requestKeyboardFocus;
- (void)requestKeyboardFocusFromHostIfWindowFirstResponderIsEligibleForKeyboardFocus:(id)focus;
- (void)setScene:(id)scene;
- (void)stopObservingNotifications;
- (void)wantsKeyboardEvents:(id)events;
@end

@implementation _UISceneHostingEventDeferringClientComponent

- (void)setScene:(id)scene
{
  v4.receiver = self;
  v4.super_class = _UISceneHostingEventDeferringClientComponent;
  [(FBSSceneComponent *)&v4 setScene:scene];
  [(_UISceneHostingEventDeferringClientComponent *)self beginObservingNotifications];
}

- (BOOL)requestEventDeferralForAllFirstResponderChanges
{
  clientScene = [(FBSSceneComponent *)self clientScene];
  settings = [clientScene settings];
  requestEventDeferralForAllFirstResponderChanges = [settings requestEventDeferralForAllFirstResponderChanges];

  return requestEventDeferralForAllFirstResponderChanges;
}

- (void)requestKeyboardFocus
{
  v5 = [[_UISceneHostingEventDeferringFocusRequestActionToHost alloc] initWithInfo:0 responder:0];
  scene = [(FBSSceneComponent *)self scene];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  [scene sendPrivateActions:v4];
}

- (void)beginObservingNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_wantsKeyboardEvents_ name:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0];
  [defaultCenter addObserver:self selector:sel_firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
}

- (void)stopObservingNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0];
  [defaultCenter removeObserver:self name:@"UIWindowFirstResponderDidChangeNotification" object:0];
}

- (void)requestKeyboardFocusFromHostIfWindowFirstResponderIsEligibleForKeyboardFocus:(id)focus
{
  focusCopy = focus;
  _windowHostingScene = [focusCopy _windowHostingScene];
  _FBSScene = [_windowHostingScene _FBSScene];
  identityToken = [_FBSScene identityToken];
  clientScene = [(FBSSceneComponent *)self clientScene];
  identityToken2 = [clientScene identityToken];
  v9 = [identityToken isEqual:identityToken2];

  v10 = focusCopy;
  if (v9)
  {
    firstResponder = [focusCopy firstResponder];
    if (firstResponder && (-[_UISceneHostingEventDeferringClientComponent requestEventDeferralForAllFirstResponderChanges](self, "requestEventDeferralForAllFirstResponderChanges") || ([firstResponder _wantsTargetOfKeyboardEventDeferringEnvironment] & 1) != 0 || objc_msgSend(firstResponder, "_isHostingRemoteContent")))
    {
      [(_UISceneHostingEventDeferringClientComponent *)self requestKeyboardFocus];
    }

    v10 = focusCopy;
  }
}

- (void)wantsKeyboardEvents:(id)events
{
  userInfo = [events userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"_UIRemoteKeyboardsHostedWindowUserInfoKey"];

  [(_UISceneHostingEventDeferringClientComponent *)self requestKeyboardFocusFromHostIfWindowFirstResponderIsEligibleForKeyboardFocus:v5];
}

- (void)firstResponderDidChange:(id)change
{
  object = [change object];
  [(_UISceneHostingEventDeferringClientComponent *)self requestKeyboardFocusFromHostIfWindowFirstResponderIsEligibleForKeyboardFocus:object];
}

- (void)invalidate
{
  [(_UISceneHostingEventDeferringClientComponent *)self stopObservingNotifications];
  v3.receiver = self;
  v3.super_class = _UISceneHostingEventDeferringClientComponent;
  [(FBSSceneComponent *)&v3 invalidate];
}

@end