@interface WFShortcutsWidgetConfigurationIntentHandler
- (WFShortcutsWidgetConfigurationIntentHandler)init;
- (id)allShortcutsFolder;
- (void)provideFolderOptionsCollectionForShortcutsWidgetConfiguration:(id)a3 withCompletion:(id)a4;
@end

@implementation WFShortcutsWidgetConfigurationIntentHandler

- (void)provideFolderOptionsCollectionForShortcutsWidgetConfiguration:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = +[WFDatabase defaultDatabase];
  v7 = [v6 sortedVisibleFolders];
  v8 = [v7 descriptors];
  v9 = [v8 if_map:&stru_100008478];

  v10 = [(WFShortcutsWidgetConfigurationIntentHandler *)self allShortcutsFolder];
  v14 = v10;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [v11 arrayByAddingObjectsFromArray:v9];

  v13 = [[INObjectCollection alloc] initWithItems:v12];
  v5[2](v5, v13, 0);
}

- (id)allShortcutsFolder
{
  v2 = [WFFolder alloc];
  v3 = WFLocalizedAllShortcutsString();
  v4 = [(WFFolder *)v2 initWithIdentifier:0 displayString:v3];

  v5 = [INImage systemImageNamed:@"rectangle.grid.2x2"];
  [(WFFolder *)v4 setDisplayImage:v5];

  return v4;
}

- (WFShortcutsWidgetConfigurationIntentHandler)init
{
  v5.receiver = self;
  v5.super_class = WFShortcutsWidgetConfigurationIntentHandler;
  v2 = [(WFShortcutsWidgetConfigurationIntentHandler *)&v5 init];
  if (v2)
  {
    [WFInitialization initializeProcessWithDatabase:1];
    v3 = v2;
  }

  return v2;
}

@end