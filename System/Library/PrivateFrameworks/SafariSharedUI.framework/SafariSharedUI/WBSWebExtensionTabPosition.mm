@interface WBSWebExtensionTabPosition
- (WBSWebExtensionTabPosition)initWithTab:(id)tab;
@end

@implementation WBSWebExtensionTabPosition

- (WBSWebExtensionTabPosition)initWithTab:(id)tab
{
  tabCopy = tab;
  v12.receiver = self;
  v12.super_class = WBSWebExtensionTabPosition;
  v5 = [(WBSWebExtensionTabPosition *)&v12 init];
  if (v5)
  {
    webExtensionWindow = [tabCopy webExtensionWindow];
    v7 = webExtensionWindow;
    if (webExtensionWindow)
    {
      [webExtensionWindow idForWebExtensions];
      v5->_windowID = v8;
      webExtensionTabs = [v7 webExtensionTabs];
      v5->_index = [webExtensionTabs indexOfObject:tabCopy];
    }

    else
    {
      v5->_windowID = -1.0;
      v5->_index = 0;
    }

    v10 = v5;
  }

  return v5;
}

@end