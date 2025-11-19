@interface SSFilesBrowseSectionBuilder
+ (BOOL)supportsSection:(id)a3 queryContext:(id)a4;
+ (BOOL)useWiderBrowseView;
- (id)buildSection;
@end

@implementation SSFilesBrowseSectionBuilder

+ (BOOL)useWiderBrowseView
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlight.prototype"];
  v3 = [v2 BOOLForKey:@"SUIWiderFilesBrowseViewEnabled"];

  return v3;
}

+ (BOOL)supportsSection:(id)a3 queryContext:(id)a4
{
  if ([a4 queryKind] != 12)
  {
    return 0;
  }

  return isMacOS();
}

- (id)buildSection
{
  v3 = [(SSSectionBuilder *)self queryContext];
  v4 = [(SSSectionBuilder *)self section];
  if ([v3 displayAllResultsAsIcons])
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  v6 = [v4 resultSet];
  v7 = [v6 array];
  v8 = [(SSBrowseSectionBuilder *)SSFilesBrowseSectionBuilder sectionWithTitle:&stru_1F556FE60 identifier:@"com.apple.spotlight.zkw.files" style:v5 results:v7];

  return v8;
}

@end