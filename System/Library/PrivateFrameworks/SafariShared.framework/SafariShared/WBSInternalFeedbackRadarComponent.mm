@interface WBSInternalFeedbackRadarComponent
+ (WBSInternalFeedbackRadarComponent)authenticationExperienceNewBugs;
+ (WBSInternalFeedbackRadarComponent)safariAutoFill;
+ (WBSInternalFeedbackRadarComponent)safariBookmarksModelAll;
+ (WBSInternalFeedbackRadarComponent)safariBookmarksModelIOS;
+ (WBSInternalFeedbackRadarComponent)safariBookmarksModelMacOS;
+ (WBSInternalFeedbackRadarComponent)safariBookmarksUIIOS;
+ (WBSInternalFeedbackRadarComponent)safariBookmarksUIMacOS;
+ (WBSInternalFeedbackRadarComponent)safariExtensionsAll;
+ (WBSInternalFeedbackRadarComponent)safariExtensionsIOS;
+ (WBSInternalFeedbackRadarComponent)safariExtensionsMacOS;
+ (WBSInternalFeedbackRadarComponent)safariHistoryModelAll;
+ (WBSInternalFeedbackRadarComponent)safariHistoryUIIOS;
+ (WBSInternalFeedbackRadarComponent)safariHistoryUIMacOS;
+ (WBSInternalFeedbackRadarComponent)safariICloudTabsAll;
+ (WBSInternalFeedbackRadarComponent)safariICloudTabsIOS;
+ (WBSInternalFeedbackRadarComponent)safariICloudTabsMacOS;
+ (WBSInternalFeedbackRadarComponent)safariIOS;
+ (WBSInternalFeedbackRadarComponent)safariNewBugs;
+ (WBSInternalFeedbackRadarComponent)safariScribble;
+ (WBSInternalFeedbackRadarComponent)safariScribblePlatform;
+ (WBSInternalFeedbackRadarComponent)safariStartPageAll;
+ (WBSInternalFeedbackRadarComponent)safariStartPageIOS;
+ (WBSInternalFeedbackRadarComponent)safariStartPageMacOS;
+ (WBSInternalFeedbackRadarComponent)safariTabsAll;
+ (WBSInternalFeedbackRadarComponent)safariTabsIOS;
+ (WBSInternalFeedbackRadarComponent)safariTabsMacOS;
+ (WBSInternalFeedbackRadarComponent)webAccessibility;
+ (WBSInternalFeedbackRadarComponent)webExtensionsAll;
- (WBSInternalFeedbackRadarComponent)initWithIdentifier:(id)a3 name:(id)a4 version:(id)a5;
@end

@implementation WBSInternalFeedbackRadarComponent

+ (WBSInternalFeedbackRadarComponent)safariAutoFill
{
  if (safariAutoFill_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariAutoFill];
  }

  v3 = safariAutoFill_component;

  return v3;
}

void __51__WBSInternalFeedbackRadarComponent_safariAutoFill__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1549076" name:@"Safari AutoFill" version:@"All"];
  v1 = safariAutoFill_component;
  safariAutoFill_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariScribble
{
  if (safariScribble_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariScribble];
  }

  v3 = safariScribble_component;

  return v3;
}

void __51__WBSInternalFeedbackRadarComponent_safariScribble__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1654184" name:@"Safari Distraction Control" version:@"All"];
  v1 = safariScribble_component;
  safariScribble_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariScribblePlatform
{
  if (safariScribblePlatform_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariScribblePlatform];
  }

  v3 = safariScribblePlatform_component;

  return v3;
}

void __59__WBSInternalFeedbackRadarComponent_safariScribblePlatform__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1654186" name:@"Safari Distraction Control" version:@"iOS"];
  v1 = safariScribblePlatform_component;
  safariScribblePlatform_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariIOS
{
  if (safariIOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariIOS];
  }

  v3 = safariIOS_component;

  return v3;
}

void __46__WBSInternalFeedbackRadarComponent_safariIOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"224849" name:@"Safari" version:@"iOS"];
  v1 = safariIOS_component;
  safariIOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariNewBugs
{
  if (safariNewBugs_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariNewBugs];
  }

  v3 = safariNewBugs_component;

  return v3;
}

void __50__WBSInternalFeedbackRadarComponent_safariNewBugs__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"144485" name:@"Safari" version:@"(New Bugs)"];
  v1 = safariNewBugs_component;
  safariNewBugs_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariBookmarksModelAll
{
  if (safariBookmarksModelAll_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariBookmarksModelAll];
  }

  v3 = safariBookmarksModelAll_component;

  return v3;
}

void __60__WBSInternalFeedbackRadarComponent_safariBookmarksModelAll__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1175778" name:@"Safari Bookmarks Model" version:@"All"];
  v1 = safariBookmarksModelAll_component;
  safariBookmarksModelAll_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariBookmarksModelIOS
{
  if (safariBookmarksModelIOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariBookmarksModelIOS];
  }

  v3 = safariBookmarksModelIOS_component;

  return v3;
}

void __60__WBSInternalFeedbackRadarComponent_safariBookmarksModelIOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1175754" name:@"Safari Bookmarks Model" version:@"iOS"];
  v1 = safariBookmarksModelIOS_component;
  safariBookmarksModelIOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariBookmarksModelMacOS
{
  if (safariBookmarksModelMacOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariBookmarksModelMacOS];
  }

  v3 = safariBookmarksModelMacOS_component;

  return v3;
}

void __62__WBSInternalFeedbackRadarComponent_safariBookmarksModelMacOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"156891" name:@"Safari Bookmarks Model" version:@"macOS"];
  v1 = safariBookmarksModelMacOS_component;
  safariBookmarksModelMacOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariBookmarksUIIOS
{
  if (safariBookmarksUIIOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariBookmarksUIIOS];
  }

  v3 = safariBookmarksUIIOS_component;

  return v3;
}

void __57__WBSInternalFeedbackRadarComponent_safariBookmarksUIIOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"251069" name:@"Safari Bookmarks UI" version:@"iOS"];
  v1 = safariBookmarksUIIOS_component;
  safariBookmarksUIIOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariBookmarksUIMacOS
{
  if (safariBookmarksUIMacOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariBookmarksUIMacOS];
  }

  v3 = safariBookmarksUIMacOS_component;

  return v3;
}

void __59__WBSInternalFeedbackRadarComponent_safariBookmarksUIMacOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"604033" name:@"Safari Bookmarks UI" version:@"macOS"];
  v1 = safariBookmarksUIMacOS_component;
  safariBookmarksUIMacOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariICloudTabsAll
{
  if (safariICloudTabsAll_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariICloudTabsAll];
  }

  v3 = safariICloudTabsAll_component;

  return v3;
}

void __56__WBSInternalFeedbackRadarComponent_safariICloudTabsAll__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1175786" name:@"Safari iCloud Tabs" version:@"All"];
  v1 = safariICloudTabsAll_component;
  safariICloudTabsAll_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariICloudTabsIOS
{
  if (safariICloudTabsIOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariICloudTabsIOS];
  }

  v3 = safariICloudTabsIOS_component;

  return v3;
}

void __56__WBSInternalFeedbackRadarComponent_safariICloudTabsIOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1175768" name:@"Safari iCloud Tabs" version:@"iOS"];
  v1 = safariICloudTabsIOS_component;
  safariICloudTabsIOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariICloudTabsMacOS
{
  if (safariICloudTabsMacOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariICloudTabsMacOS];
  }

  v3 = safariICloudTabsMacOS_component;

  return v3;
}

void __58__WBSInternalFeedbackRadarComponent_safariICloudTabsMacOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"604067" name:@"Safari iCloud Tabs" version:@"macOS"];
  v1 = safariICloudTabsMacOS_component;
  safariICloudTabsMacOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)webExtensionsAll
{
  if (webExtensionsAll_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent webExtensionsAll];
  }

  v3 = webExtensionsAll_component;

  return v3;
}

void __53__WBSInternalFeedbackRadarComponent_webExtensionsAll__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1607221" name:@"Web Extensions" version:@"All"];
  v1 = webExtensionsAll_component;
  webExtensionsAll_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariExtensionsAll
{
  if (safariExtensionsAll_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariExtensionsAll];
  }

  v3 = safariExtensionsAll_component;

  return v3;
}

void __56__WBSInternalFeedbackRadarComponent_safariExtensionsAll__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1175804" name:@"Safari Extensions" version:@"All"];
  v1 = safariExtensionsAll_component;
  safariExtensionsAll_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariExtensionsIOS
{
  if (safariExtensionsIOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariExtensionsIOS];
  }

  v3 = safariExtensionsIOS_component;

  return v3;
}

void __56__WBSInternalFeedbackRadarComponent_safariExtensionsIOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1175744" name:@"Safari Extensions" version:@"iOS"];
  v1 = safariExtensionsIOS_component;
  safariExtensionsIOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariExtensionsMacOS
{
  if (safariExtensionsMacOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariExtensionsMacOS];
  }

  v3 = safariExtensionsMacOS_component;

  return v3;
}

void __58__WBSInternalFeedbackRadarComponent_safariExtensionsMacOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"363054" name:@"Safari Extensions" version:@"macOS"];
  v1 = safariExtensionsMacOS_component;
  safariExtensionsMacOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariHistoryModelAll
{
  if (safariHistoryModelAll_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariHistoryModelAll];
  }

  v3 = safariHistoryModelAll_component;

  return v3;
}

void __58__WBSInternalFeedbackRadarComponent_safariHistoryModelAll__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"156894" name:@"Safari History Model" version:@"All"];
  v1 = safariHistoryModelAll_component;
  safariHistoryModelAll_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariHistoryUIIOS
{
  if (safariHistoryUIIOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariHistoryUIIOS];
  }

  v3 = safariHistoryUIIOS_component;

  return v3;
}

void __55__WBSInternalFeedbackRadarComponent_safariHistoryUIIOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1175752" name:@"Safari History UI" version:@"iOS"];
  v1 = safariHistoryUIIOS_component;
  safariHistoryUIIOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariHistoryUIMacOS
{
  if (safariHistoryUIMacOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariHistoryUIMacOS];
  }

  v3 = safariHistoryUIMacOS_component;

  return v3;
}

void __57__WBSInternalFeedbackRadarComponent_safariHistoryUIMacOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"604035" name:@"Safari History UI" version:@"macOS"];
  v1 = safariHistoryUIMacOS_component;
  safariHistoryUIMacOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariStartPageAll
{
  if (safariStartPageAll_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariStartPageAll];
  }

  v3 = safariStartPageAll_component;

  return v3;
}

void __55__WBSInternalFeedbackRadarComponent_safariStartPageAll__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1175782" name:@"Safari Start Page" version:@"All"];
  v1 = safariStartPageAll_component;
  safariStartPageAll_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariStartPageIOS
{
  if (safariStartPageIOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariStartPageIOS];
  }

  v3 = safariStartPageIOS_component;

  return v3;
}

void __55__WBSInternalFeedbackRadarComponent_safariStartPageIOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1175764" name:@"Safari Start Page" version:@"iOS"];
  v1 = safariStartPageIOS_component;
  safariStartPageIOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariStartPageMacOS
{
  if (safariStartPageMacOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariStartPageMacOS];
  }

  v3 = safariStartPageMacOS_component;

  return v3;
}

void __57__WBSInternalFeedbackRadarComponent_safariStartPageMacOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"567407" name:@"Safari Start Page" version:@"macOS"];
  v1 = safariStartPageMacOS_component;
  safariStartPageMacOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariTabsAll
{
  if (safariTabsAll_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariTabsAll];
  }

  v3 = safariTabsAll_component;

  return v3;
}

void __50__WBSInternalFeedbackRadarComponent_safariTabsAll__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1175800" name:@"Safari Tabs" version:@"All"];
  v1 = safariTabsAll_component;
  safariTabsAll_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariTabsIOS
{
  if (safariTabsIOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariTabsIOS];
  }

  v3 = safariTabsIOS_component;

  return v3;
}

void __50__WBSInternalFeedbackRadarComponent_safariTabsIOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1175740" name:@"Safari Tabs" version:@"iOS"];
  v1 = safariTabsIOS_component;
  safariTabsIOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)safariTabsMacOS
{
  if (safariTabsMacOS_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent safariTabsMacOS];
  }

  v3 = safariTabsMacOS_component;

  return v3;
}

void __52__WBSInternalFeedbackRadarComponent_safariTabsMacOS__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"171846" name:@"Safari Tabs" version:@"macOS"];
  v1 = safariTabsMacOS_component;
  safariTabsMacOS_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)authenticationExperienceNewBugs
{
  if (authenticationExperienceNewBugs_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent authenticationExperienceNewBugs];
  }

  v3 = authenticationExperienceNewBugs_component;

  return v3;
}

void __68__WBSInternalFeedbackRadarComponent_authenticationExperienceNewBugs__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"1118791" name:@"Authentication Experience" version:@"New Bugs"];
  v1 = authenticationExperienceNewBugs_component;
  authenticationExperienceNewBugs_component = v0;
}

+ (WBSInternalFeedbackRadarComponent)webAccessibility
{
  if (webAccessibility_onceToken != -1)
  {
    +[WBSInternalFeedbackRadarComponent webAccessibility];
  }

  v3 = webAccessibility_component;

  return v3;
}

void __53__WBSInternalFeedbackRadarComponent_webAccessibility__block_invoke()
{
  v0 = [[WBSInternalFeedbackRadarComponent alloc] initWithIdentifier:@"235159" name:@"WebKit Accessibility" version:@"All"];
  v1 = webAccessibility_component;
  webAccessibility_component = v0;
}

- (WBSInternalFeedbackRadarComponent)initWithIdentifier:(id)a3 name:(id)a4 version:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = WBSInternalFeedbackRadarComponent;
  v11 = [(WBSInternalFeedbackRadarComponent *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [v10 copy];
    version = v11->_version;
    v11->_version = v16;

    v18 = v11;
  }

  return v11;
}

@end