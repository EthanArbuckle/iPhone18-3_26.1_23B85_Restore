@interface RemindersInCalendarUtilities.ReminderDragItem
+ (NSArray)writableTypeIdentifiersForItemProvider;
- (_TtCO19RemindersAppIntents28RemindersInCalendarUtilities16ReminderDragItem)init;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
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
  writableTypeIdentifiersForItemProvider = [objc_opt_self() writableTypeIdentifiersForItemProvider];
  if (!writableTypeIdentifiersForItemProvider)
  {
    sub_261CFFC64();
    v3 = sub_261CFFC54();

    writableTypeIdentifiersForItemProvider = v3;
  }

  return writableTypeIdentifiersForItemProvider;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_261CFFA74();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  v10 = sub_261BE4A3C(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v10;
}

@end