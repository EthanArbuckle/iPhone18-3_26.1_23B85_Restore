@interface _UISceneCoreMediaOverridePIDClientComponent
- (void)evaluateAssertion;
- (void)invalidate;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)setScene:(id)a3;
@end

@implementation _UISceneCoreMediaOverridePIDClientComponent

- (void)setScene:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UISceneCoreMediaOverridePIDClientComponent;
  [(FBSSceneComponent *)&v4 setScene:a3];
  [(_UISceneCoreMediaOverridePIDClientComponent *)self evaluateAssertion];
}

- (void)evaluateAssertion
{
  if (a1)
  {
    v2 = [a1 scene];
    v3 = [v2 settings];
    v4 = [v3 isForeground];

    v5 = a1[3];
    if (v4)
    {
      if (v5)
      {
        return;
      }

      v6 = [a1 clientScene];
      v7 = [v6 identityToken];
      v15 = [v7 stringRepresentation];

      v8 = +[_UICoreMediaOverridePIDManager sharedInstance];
      v9 = [a1 clientScene];
      v10 = [v9 hostHandle];
      v11 = [v10 auditToken];
      v12 = -[_UICoreMediaOverridePIDManager acquireOverrideAssertionWithPID:forReason:](v8, [v11 pid], v15);
      v13 = a1[3];
      a1[3] = v12;

      v14 = v15;
    }

    else
    {
      if (!v5)
      {
        return;
      }

      [v5 invalidate];
      v14 = a1[3];
      a1[3] = 0;
    }
  }
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v5 = [a4 settingsDiff];
  v6 = [v5 containsProperty:sel_foreground];

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