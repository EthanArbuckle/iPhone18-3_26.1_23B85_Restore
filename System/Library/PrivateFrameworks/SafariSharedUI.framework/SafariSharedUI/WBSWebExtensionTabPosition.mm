@interface WBSWebExtensionTabPosition
- (WBSWebExtensionTabPosition)initWithTab:(id)a3;
@end

@implementation WBSWebExtensionTabPosition

- (WBSWebExtensionTabPosition)initWithTab:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WBSWebExtensionTabPosition;
  v5 = [(WBSWebExtensionTabPosition *)&v12 init];
  if (v5)
  {
    v6 = [v4 webExtensionWindow];
    v7 = v6;
    if (v6)
    {
      [v6 idForWebExtensions];
      v5->_windowID = v8;
      v9 = [v7 webExtensionTabs];
      v5->_index = [v9 indexOfObject:v4];
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