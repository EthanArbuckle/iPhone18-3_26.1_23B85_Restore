@interface TUReplyWithMessageStore
- (TUReplyWithMessageStore)init;
- (id)_defaultRepliesForSending:(BOOL)sending;
- (id)cannedReplyActionSheetOptions;
- (id)customReplies;
- (void)dealloc;
- (void)setCustomReply:(id)reply atIndex:(unint64_t)index;
@end

@implementation TUReplyWithMessageStore

- (TUReplyWithMessageStore)init
{
  v5.receiver = self;
  v5.super_class = TUReplyWithMessageStore;
  v2 = [(TUReplyWithMessageStore *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _TUReplyWithMessageStore_HandleMessageStoreChanged, @"com.apple.TelephonyUtilities.TUReplyWithMessageStoreChanged", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFPreferencesAppSynchronize(TUMobilePhoneDomain);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = TUReplyWithMessageStore;
  [(TUReplyWithMessageStore *)&v4 dealloc];
}

- (id)_defaultRepliesForSending:(BOOL)sending
{
  v4 = @"CANNED_REPLY_%d";
  if (sending)
  {
    v4 = @"CANNED_REPLY_SENDING_%d";
  }

  v5 = v4;
  array = [MEMORY[0x1E695DF70] array];
  if ([(TUReplyWithMessageStore *)self count]>= 1)
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v7];
      v9 = TUBundle();
      v10 = [v9 localizedStringForKey:v8 value:&stru_1F098C218 table:@"TelephonyUtilities"];
      [array addObject:v10];

      v7 = (v7 + 1);
    }

    while (v7 < [(TUReplyWithMessageStore *)self count]);
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v11;
}

- (id)customReplies
{
  v3 = CFPreferencesCopyAppValue(@"TUReplyWithMessageStoreReplyArray", TUMobilePhoneDomain);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFArrayGetTypeID())
    {
      array = [MEMORY[0x1E695DF70] arrayWithArray:v4];
      CFRelease(v4);
      if (array)
      {
        goto LABEL_7;
      }
    }

    else
    {
      CFRelease(v4);
    }
  }

  array = [MEMORY[0x1E695DF70] array];
LABEL_7:
  v7 = [array count];
  if (v7 < [(TUReplyWithMessageStore *)self count])
  {
    do
    {
      [array addObject:&stru_1F098C218];
      v8 = [array count];
    }

    while (v8 < [(TUReplyWithMessageStore *)self count]);
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v9;
}

- (id)cannedReplyActionSheetOptions
{
  v3 = MEMORY[0x1E695DF70];
  cannedReplies = [(TUReplyWithMessageStore *)self cannedReplies];
  v5 = [v3 arrayWithArray:cannedReplies];

  if ([(TUReplyWithMessageStore *)self count]>= 1)
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndex:v6];
      v8 = _TUFormatReplyForOptions(v7);
      [v5 replaceObjectAtIndex:v6 withObject:v8];

      ++v6;
    }

    while (v6 < [(TUReplyWithMessageStore *)self count]);
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];

  return v9;
}

- (void)setCustomReply:(id)reply atIndex:(unint64_t)index
{
  replyCopy = reply;
  v7 = CFPreferencesCopyAppValue(@"TUReplyWithMessageStoreReplyArray", TUMobilePhoneDomain);
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == CFArrayGetTypeID())
    {
      v10 = [MEMORY[0x1E695DF70] arrayWithArray:v8];
      CFRelease(v8);
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      CFRelease(v8);
    }
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[TUReplyWithMessageStore count](self, "count")}];
  if ([(TUReplyWithMessageStore *)self count]>= 1)
  {
    v11 = 0;
    do
    {
      [v10 addObject:&stru_1F098C218];
      ++v11;
    }

    while (v11 < [(TUReplyWithMessageStore *)self count]);
  }

LABEL_9:
  if (replyCopy)
  {
    v12 = replyCopy;
  }

  else
  {
    v12 = &stru_1F098C218;
  }

  v14 = v12;
  [v10 replaceObjectAtIndex:index withObject:?];
  CFPreferencesSetAppValue(@"TUReplyWithMessageStoreReplyArray", v10, TUMobilePhoneDomain);
  CFPreferencesAppSynchronize(TUMobilePhoneDomain);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.TelephonyUtilities.TUReplyWithMessageStoreChanged", 0, 0, 1u);
}

@end