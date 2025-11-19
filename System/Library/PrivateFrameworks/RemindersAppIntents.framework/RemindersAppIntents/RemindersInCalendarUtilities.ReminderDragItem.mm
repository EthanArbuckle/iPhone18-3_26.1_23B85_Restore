@interface RemindersInCalendarUtilities.ReminderDragItem
+ (NSArray)writableTypeIdentifiersForItemProvider;
- (_TtCO19RemindersAppIntents28RemindersInCalendarUtilities16ReminderDragItem)init;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
@end

@implementation RemindersInCalendarUtilities.ReminderDragItem

- (_TtCO19RemindersAppIntents28RemindersInCalendarUtilities16ReminderDragItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v2 = [objc_opt_self() writableTypeIdentifiersForItemProvider];
  if (!v2)
  {
    sub_261CFFC64();
    v3 = sub_261CFFC54();

    v2 = v3;
  }

  return v2;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_261CFFA74();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  v10 = sub_261BE4A3C(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v10;
}

@end