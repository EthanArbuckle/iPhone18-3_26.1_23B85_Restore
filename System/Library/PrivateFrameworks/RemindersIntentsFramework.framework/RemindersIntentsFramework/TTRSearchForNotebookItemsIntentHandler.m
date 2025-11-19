@interface TTRSearchForNotebookItemsIntentHandler
- (_TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler)init;
- (void)resolveLocationForSearchForNotebookItems:(id)a3 withCompletion:(id)a4;
- (void)resolveLocationSearchTypeForSearchForNotebookItems:(id)a3 withCompletion:(id)a4;
@end

@implementation TTRSearchForNotebookItemsIntentHandler

- (void)resolveLocationForSearchForNotebookItems:(id)a3 withCompletion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = a3;
  v7 = [v6 location];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() successWithResolvedPlacemark_];
    v5[2](v5);

    _Block_release(v5);
  }

  else
  {
    sub_261D597EC(0, &qword_27FEF4708, 0x277CD3EA8);
    v9 = [swift_getObjCClassFromMetadata() notRequired];
    v5[2](v5);

    _Block_release(v5);
  }
}

- (void)resolveLocationSearchTypeForSearchForNotebookItems:(id)a3 withCompletion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = objc_opt_self();
  v7 = a3;
  v8 = [v6 successWithResolvedLocationSearchType_];
  v5[2](v5, v8);

  _Block_release(v5);
}

- (_TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end