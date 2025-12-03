@interface SPUISFilesBrowseSectionBuilder
+ (BOOL)supportsSection:(id)section queryContext:(id)context;
+ (BOOL)useWiderBrowseView;
- (id)buildSection;
@end

@implementation SPUISFilesBrowseSectionBuilder

+ (BOOL)useWiderBrowseView
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.spotlight.prototype"];
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
  queryContext = [(SPUISSectionBuilder *)self queryContext];
  section = [(SPUISSectionBuilder *)self section];
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
  v8 = [(SPUISBrowseSectionBuilder *)SPUISFilesBrowseSectionBuilder sectionWithTitle:&stru_287C50EE8 identifier:@"com.apple.spotlight.zkw.files" style:v5 results:array];

  return v8;
}

@end