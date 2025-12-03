@interface SBUIContinuityAccessorySceneHostComponent
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setScene:(id)scene;
@end

@implementation SBUIContinuityAccessorySceneHostComponent

- (void)setScene:(id)scene
{
  v8.receiver = self;
  v8.super_class = SBUIContinuityAccessorySceneHostComponent;
  [(FBSSceneComponent *)&v8 setScene:scene];
  v4 = +[SBUIAccessorySceneManager sharedInstance];
  hostScene = [(FBSSceneComponent *)self hostScene];
  v6 = [v4 registerAccessoryScene:hostScene];
  sceneRegistration = self->_sceneRegistration;
  self->_sceneRegistration = v6;
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  [(BSInvalidatable *)self->_sceneRegistration invalidate:invalidate];
  sceneRegistration = self->_sceneRegistration;
  self->_sceneRegistration = 0;
}

@end