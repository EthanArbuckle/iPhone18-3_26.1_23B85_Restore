@interface WFListShortcutsIntentHandler
- (WFListShortcutsIntentHandler)init;
- (void)confirmListShortcuts:(id)shortcuts completion:(id)completion;
- (void)handleListShortcuts:(id)shortcuts completion:(id)completion;
@end

@implementation WFListShortcutsIntentHandler

- (void)handleListShortcuts:(id)shortcuts completion:(id)completion
{
  completionCopy = completion;
  shortcutsCopy = shortcuts;
  database = [(WFListShortcutsIntentHandler *)self database];
  sortedVisibleWorkflowsByName = [database sortedVisibleWorkflowsByName];

  appTitles = [shortcutsCopy appTitles];

  v11 = [appTitles if_map:&stru_100008410];

  v12 = [[INListShortcutsIntentResponse alloc] initWithCode:3 userActivity:0];
  descriptors = [sortedVisibleWorkflowsByName descriptors];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000028FC;
  v19 = &unk_100008438;
  v20 = v11;
  selfCopy = self;
  v14 = v11;
  v15 = [descriptors if_compactMap:&v16];
  [v12 setShortcuts:{v15, v16, v17, v18, v19}];

  completionCopy[2](completionCopy, v12);
}

- (void)confirmListShortcuts:(id)shortcuts completion:(id)completion
{
  completionCopy = completion;
  v6 = [[INListShortcutsIntentResponse alloc] initWithCode:1 userActivity:0];
  (*(completion + 2))(completionCopy, v6);
}

- (WFListShortcutsIntentHandler)init
{
  v7.receiver = self;
  v7.super_class = WFListShortcutsIntentHandler;
  v2 = [(WFListShortcutsIntentHandler *)&v7 init];
  if (v2)
  {
    v3 = +[WFDatabase defaultDatabase];
    database = v2->_database;
    v2->_database = v3;

    v5 = v2;
  }

  return v2;
}

@end