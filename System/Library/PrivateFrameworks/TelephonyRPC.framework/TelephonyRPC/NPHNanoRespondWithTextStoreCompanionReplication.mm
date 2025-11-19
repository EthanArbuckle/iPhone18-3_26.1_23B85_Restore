@interface NPHNanoRespondWithTextStoreCompanionReplication
- (NPHNanoRespondWithTextStoreCompanionReplication)init;
- (void)_replyWithMessageStoreDidChange;
- (void)dealloc;
@end

@implementation NPHNanoRespondWithTextStoreCompanionReplication

- (NPHNanoRespondWithTextStoreCompanionReplication)init
{
  v7.receiver = self;
  v7.super_class = NPHNanoRespondWithTextStoreCompanionReplication;
  v2 = [(NPHNanoRespondWithTextStoreCompanionReplication *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    npsManager = v2->_npsManager;
    v2->_npsManager = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _TUReplyWithMessageStoreNotificationHandler, @"com.apple.TelephonyUtilities.TUReplyWithMessageStoreChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(NPHNanoRespondWithTextStoreCompanionReplication *)v2 _replyWithMessageStoreDidChange];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = NPHNanoRespondWithTextStoreCompanionReplication;
  [(NPHNanoRespondWithTextStoreCompanionReplication *)&v4 dealloc];
}

- (void)_replyWithMessageStoreDidChange
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[NPHNanoRespondWithTextStoreCompanionReplication _replyWithMessageStoreDidChange]";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  npsManager = self->_npsManager;
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"TUReplyWithMessageStoreReplyArray"];
  [(NPSManager *)npsManager synchronizeUserDefaultsDomain:@"com.apple.mobilephone" keys:v5];

  v6 = *MEMORY[0x277D85DE8];
}

@end