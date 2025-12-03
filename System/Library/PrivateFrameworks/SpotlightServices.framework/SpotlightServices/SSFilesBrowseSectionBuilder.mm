@interface SSFilesBrowseSectionBuilder
+ (BOOL)supportsSection:(id)section queryContext:(id)context;
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

+ (BOOL)supportsSection:(id)section queryContext:(id)context
{
  if ([context queryKind] != 12)
  {
    return 0;
  }

  return isMacOS();
}

- (id)buildSection
{
  queryContext = [(SSSectionBuilder *)self queryContext];
  section = [(SSSectionBuilder *)self section];
  if ([queryContext displayAllResultsAsIcons])
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  resultSet = [section resultSet];
  array = [resultSet array];
  v8 = [(SSBrowseSectionBuilder *)SSFilesBrowseSectionBuilder sectionWithTitle:&stru_1F556FE60 identifier:@"com.apple.spotlight.zkw.files" style:v5 results:array];

  return v8;
}

@end