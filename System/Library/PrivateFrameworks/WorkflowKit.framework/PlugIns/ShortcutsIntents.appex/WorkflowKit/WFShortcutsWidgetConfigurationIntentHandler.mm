@interface WFShortcutsWidgetConfigurationIntentHandler
- (WFShortcutsWidgetConfigurationIntentHandler)init;
- (id)allShortcutsFolder;
- (void)provideFolderOptionsCollectionForShortcutsWidgetConfiguration:(id)configuration withCompletion:(id)completion;
@end

@implementation WFShortcutsWidgetConfigurationIntentHandler

- (void)provideFolderOptionsCollectionForShortcutsWidgetConfiguration:(id)configuration withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[WFDatabase defaultDatabase];
  sortedVisibleFolders = [v6 sortedVisibleFolders];
  descriptors = [sortedVisibleFolders descriptors];
  v9 = [descriptors if_map:&stru_100008478];

  allShortcutsFolder = [(WFShortcutsWidgetConfigurationIntentHandler *)self allShortcutsFolder];
  v14 = allShortcutsFolder;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [v11 arrayByAddingObjectsFromArray:v9];

  v13 = [[INObjectCollection alloc] initWithItems:v12];
  completionCopy[2](completionCopy, v13, 0);
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