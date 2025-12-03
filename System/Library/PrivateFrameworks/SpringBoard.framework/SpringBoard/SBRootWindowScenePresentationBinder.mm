@interface SBRootWindowScenePresentationBinder
- (SBRootWindowScenePresentationBinder)initWithIdentifier:(id)identifier priority:(int64_t)priority appearanceStyle:(unint64_t)style rootWindow:(id)window;
@end

@implementation SBRootWindowScenePresentationBinder

- (SBRootWindowScenePresentationBinder)initWithIdentifier:(id)identifier priority:(int64_t)priority appearanceStyle:(unint64_t)style rootWindow:(id)window
{
  windowCopy = window;
  v17.receiver = self;
  v17.super_class = SBRootWindowScenePresentationBinder;
  v12 = [(UIRootWindowScenePresentationBinder *)&v17 initWithIdentifier:identifier priority:priority appearanceStyle:style rootWindow:windowCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rootWindow, window);
    displayConfiguration = [windowCopy displayConfiguration];
    displayConfiguration = v13->_displayConfiguration;
    v13->_displayConfiguration = displayConfiguration;
  }

  return v13;
}

@end