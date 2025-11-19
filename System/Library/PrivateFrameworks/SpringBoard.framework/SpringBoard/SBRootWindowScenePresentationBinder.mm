@interface SBRootWindowScenePresentationBinder
- (SBRootWindowScenePresentationBinder)initWithIdentifier:(id)a3 priority:(int64_t)a4 appearanceStyle:(unint64_t)a5 rootWindow:(id)a6;
@end

@implementation SBRootWindowScenePresentationBinder

- (SBRootWindowScenePresentationBinder)initWithIdentifier:(id)a3 priority:(int64_t)a4 appearanceStyle:(unint64_t)a5 rootWindow:(id)a6
{
  v11 = a6;
  v17.receiver = self;
  v17.super_class = SBRootWindowScenePresentationBinder;
  v12 = [(UIRootWindowScenePresentationBinder *)&v17 initWithIdentifier:a3 priority:a4 appearanceStyle:a5 rootWindow:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rootWindow, a6);
    v14 = [v11 displayConfiguration];
    displayConfiguration = v13->_displayConfiguration;
    v13->_displayConfiguration = v14;
  }

  return v13;
}

@end