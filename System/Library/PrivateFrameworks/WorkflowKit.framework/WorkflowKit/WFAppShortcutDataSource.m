@interface WFAppShortcutDataSource
- (WFAppShortcutDataSource)initWithAppShortcutsDenyListEnvironment:(unint64_t)a3 environment:(int64_t)a4;
- (id)fetchAppShortcutsForBundleIdentifiers:(id)a3 localeIdentifier:(id)a4 error:(id *)a5;
@end

@implementation WFAppShortcutDataSource

- (id)fetchAppShortcutsForBundleIdentifiers:(id)a3 localeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(WFAppShortcutDataSource *)self dataSource];
  v11 = [v10 fetchAppShortcutForBundleIdentifiers:v9 localeIdentifier:v8 error:a5];

  return v11;
}

- (WFAppShortcutDataSource)initWithAppShortcutsDenyListEnvironment:(unint64_t)a3 environment:(int64_t)a4
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
    v8 = [[WFSwiftAppShortcutDataSource alloc] initWithAppShortcutsProvider:v7 denyListEnvironment:a3 organizationStyle:a4];
    dataSource = v6->_dataSource;
    v6->_dataSource = v8;

    v10 = v6;
  }

  return v6;
}

@end