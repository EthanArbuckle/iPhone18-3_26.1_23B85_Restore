@interface SearchUICalendarStore
+ (id)colorForDefaultCalendarForNewEvents;
+ (id)eventControllerWithIdentifier:(id)identifier;
+ (id)sharedCalendarStore;
+ (void)fetchCalendarItemFromEventIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation SearchUICalendarStore

+ (id)sharedCalendarStore
{
  v2 = sharedCalendarStore_calendarStore;
  if (!sharedCalendarStore_calendarStore)
  {
    if (sharedCalendarStore_onceToken != -1)
    {
      +[SearchUICalendarStore sharedCalendarStore];
    }

    v2 = sharedCalendarStore_calendarStore;
  }

  return v2;
}

uint64_t __44__SearchUICalendarStore_sharedCalendarStore__block_invoke()
{
  sharedCalendarStore_calendarStore = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)fetchCalendarItemFromEventIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [identifier componentsSeparatedByString:@"."];
  v7 = +[SearchUICalendarStore sharedCalendarStore];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__SearchUICalendarStore_fetchCalendarItemFromEventIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_1E85B44F8;
  v12 = v7;
  v13 = v6;
  v14 = handlerCopy;
  v8 = handlerCopy;
  v9 = v6;
  v10 = v7;
  [v10 requestFullAccessToEventsWithCompletion:v11];
}

void __80__SearchUICalendarStore_fetchCalendarItemFromEventIdentifier_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) firstObject];
    v9 = [v7 calendarItemsWithExternalIdentifier:v8];
    v10 = [v9 firstObject];

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v11 = SearchUIGeneralLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __80__SearchUICalendarStore_fetchCalendarItemFromEventIdentifier_completionHandler___block_invoke_cold_1(v6, v11);
  }

LABEL_8:
  (*(*(a1 + 48) + 16))();
}

+ (id)eventControllerWithIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"."];
  v4 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = MEMORY[0x1E695DF00];
  [v5 doubleValue];
  v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
  v8 = +[SearchUICalendarStore sharedCalendarStore];
  firstObject = [v3 firstObject];
  v10 = [v8 calendarItemsWithExternalIdentifier:firstObject];
  firstObject2 = [v10 firstObject];

  v12 = +[SearchUICalendarStore sharedCalendarStore];
  uniqueId = [firstObject2 uniqueId];
  v14 = [v12 eventWithUniqueId:uniqueId occurrenceDate:v7];

  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E6966B98]) initWithEvent:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)colorForDefaultCalendarForNewEvents
{
  sharedCalendarStore = [self sharedCalendarStore];
  defaultCalendarForNewEvents = [sharedCalendarStore defaultCalendarForNewEvents];
  v4 = CGColorRetain([defaultCalendarForNewEvents CGColor]);

  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] colorWithCGColor:v4];
    CGColorRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __80__SearchUICalendarStore_fetchCalendarItemFromEventIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUICalendarStore: %@", &v2, 0xCu);
}

@end