@interface TTRSearchForNotebookItemsIntentHandler
- (_TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler)init;
- (void)resolveLocationForSearchForNotebookItems:(id)items withCompletion:(id)completion;
- (void)resolveLocationSearchTypeForSearchForNotebookItems:(id)items withCompletion:(id)completion;
@end

@implementation TTRSearchForNotebookItemsIntentHandler

- (void)resolveLocationForSearchForNotebookItems:(id)items withCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  itemsCopy = items;
  location = [itemsCopy location];
  if (location)
  {
    v8 = location;
    successWithResolvedPlacemark_ = [objc_opt_self() successWithResolvedPlacemark_];
    v5[2](v5);

    _Block_release(v5);
  }

  else
  {
    sub_261D597EC(0, &qword_27FEF4708, 0x277CD3EA8);
    successWithResolvedPlacemark_ = [swift_getObjCClassFromMetadata() notRequired];
    v5[2](v5);

    _Block_release(v5);
  }
}

- (void)resolveLocationSearchTypeForSearchForNotebookItems:(id)items withCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = objc_opt_self();
  itemsCopy = items;
  successWithResolvedLocationSearchType_ = [v6 successWithResolvedLocationSearchType_];
  v5[2](v5, successWithResolvedLocationSearchType_);

  _Block_release(v5);
}

- (_TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end