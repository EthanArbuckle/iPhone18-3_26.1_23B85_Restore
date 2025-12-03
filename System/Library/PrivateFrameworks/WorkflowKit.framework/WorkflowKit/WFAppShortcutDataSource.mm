@interface WFAppShortcutDataSource
- (WFAppShortcutDataSource)initWithAppShortcutsDenyListEnvironment:(unint64_t)environment environment:(int64_t)a4;
- (id)fetchAppShortcutsForBundleIdentifiers:(id)identifiers localeIdentifier:(id)identifier error:(id *)error;
@end

@implementation WFAppShortcutDataSource

- (id)fetchAppShortcutsForBundleIdentifiers:(id)identifiers localeIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  dataSource = [(WFAppShortcutDataSource *)self dataSource];
  v11 = [dataSource fetchAppShortcutForBundleIdentifiers:identifiersCopy localeIdentifier:identifierCopy error:error];

  return v11;
}

- (WFAppShortcutDataSource)initWithAppShortcutsDenyListEnvironment:(unint64_t)environment environment:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = WFAppShortcutDataSource;
  v6 = [(WFAppShortcutDataSource *)&v12 init];
  if (v6)
  {
    if (a4 != 2)
    {
      a4 = a4 == 1;
    }

    v7 = [objc_alloc(MEMORY[0x1E69ACDC0]) initWithOptions:2];
    v8 = [[WFSwiftAppShortcutDataSource alloc] initWithAppShortcutsProvider:v7 denyListEnvironment:environment organizationStyle:a4];
    dataSource = v6->_dataSource;
    v6->_dataSource = v8;

    v10 = v6;
  }

  return v6;
}

@end