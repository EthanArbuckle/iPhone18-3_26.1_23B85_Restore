@interface WFListShortcutsIntentHandler
- (WFListShortcutsIntentHandler)init;
- (void)confirmListShortcuts:(id)a3 completion:(id)a4;
- (void)handleListShortcuts:(id)a3 completion:(id)a4;
@end

@implementation WFListShortcutsIntentHandler

- (void)handleListShortcuts:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFListShortcutsIntentHandler *)self database];
  v9 = [v8 sortedVisibleWorkflowsByName];

  v10 = [v7 appTitles];

  v11 = [v10 if_map:&stru_100008410];

  v12 = [[INListShortcutsIntentResponse alloc] initWithCode:3 userActivity:0];
  v13 = [v9 descriptors];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000028FC;
  v19 = &unk_100008438;
  v20 = v11;
  v21 = self;
  v14 = v11;
  v15 = [v13 if_compactMap:&v16];
  [v12 setShortcuts:{v15, v16, v17, v18, v19}];

  v6[2](v6, v12);
}

- (void)confirmListShortcuts:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [[INListShortcutsIntentResponse alloc] initWithCode:1 userActivity:0];
  (*(a4 + 2))(v5, v6);
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