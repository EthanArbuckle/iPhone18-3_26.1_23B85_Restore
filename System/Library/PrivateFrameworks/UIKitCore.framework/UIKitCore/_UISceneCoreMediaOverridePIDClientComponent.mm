@interface _UISceneCoreMediaOverridePIDClientComponent
- (void)evaluateAssertion;
- (void)invalidate;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)setScene:(id)scene;
@end

@implementation _UISceneCoreMediaOverridePIDClientComponent

- (void)setScene:(id)scene
{
  v4.receiver = self;
  v4.super_class = _UISceneCoreMediaOverridePIDClientComponent;
  [(FBSSceneComponent *)&v4 setScene:scene];
  [(_UISceneCoreMediaOverridePIDClientComponent *)self evaluateAssertion];
}

- (void)evaluateAssertion
{
  if (self)
  {
    scene = [self scene];
    settings = [scene settings];
    isForeground = [settings isForeground];

    v5 = self[3];
    if (isForeground)
    {
      if (v5)
      {
        return;
      }

      clientScene = [self clientScene];
      identityToken = [clientScene identityToken];
      stringRepresentation = [identityToken stringRepresentation];

      v8 = +[_UICoreMediaOverridePIDManager sharedInstance];
      clientScene2 = [self clientScene];
      hostHandle = [clientScene2 hostHandle];
      auditToken = [hostHandle auditToken];
      v12 = -[_UICoreMediaOverridePIDManager acquireOverrideAssertionWithPID:forReason:](v8, [auditToken pid], stringRepresentation);
      v13 = self[3];
      self[3] = v12;

      v14 = stringRepresentation;
    }

    else
    {
      if (!v5)
      {
        return;
      }

      [v5 invalidate];
      v14 = self[3];
      self[3] = 0;
    }
  }
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  settingsDiff = [settings settingsDiff];
  v6 = [settingsDiff containsProperty:sel_foreground];

  if (v6)
  {

    [(_UISceneCoreMediaOverridePIDClientComponent *)self evaluateAssertion];
  }
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = _UISceneCoreMediaOverridePIDClientComponent;
  [(FBSSceneComponent *)&v4 invalidate];
  [(BSInvalidatable *)self->_pidOverrideAssertion invalidate];
  pidOverrideAssertion = self->_pidOverrideAssertion;
  self->_pidOverrideAssertion = 0;
}

@end