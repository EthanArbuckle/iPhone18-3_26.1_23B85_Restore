@interface SpotlightSenderState
- (BOOL)clientDisabled:(int64_t)a3;
- (SpotlightSenderState)init;
- (void)_updateFromPreferences;
@end

@implementation SpotlightSenderState

- (SpotlightSenderState)init
{
  v7.receiver = self;
  v7.super_class = SpotlightSenderState;
  v2 = [(SpotlightSenderState *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC3488]);
    serverPreferences = v2->_serverPreferences;
    v2->_serverPreferences = v3;

    if ([(CSReceiverServerPreferences *)v2->_serverPreferences notifyStart])
    {
      check = 0;
      notify_check([(CSReceiverServerPreferences *)v2->_serverPreferences notifyToken], &check);
      [(SpotlightSenderState *)v2 _updateFromPreferences];
    }
  }

  return v2;
}

- (void)_updateFromPreferences
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(CSReceiverServerPreferences *)self->_serverPreferences disabledServices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SpotlightSenderState__updateFromPreferences__block_invoke;
  v6[3] = &unk_278934158;
  v6[4] = &v7;
  [v2 enumerateObjectsUsingBlock:v6];

  if (*(v8 + 6) != sClintServiceDisabledBitMap)
  {
    v3 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(v8 + 6);
      *buf = 67109376;
      v12 = sClintServiceDisabledBitMap;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "SpotlightSender: Enabled client state changed from 0x%x to 0x%x", buf, 0xEu);
    }

    sClintServiceDisabledBitMap = *(v8 + 6);
  }

  _Block_object_dispose(&v7, 8);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__SpotlightSenderState__updateFromPreferences__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 length];
  if (v3 == [@"com.apple.corespotlight.receiver.coreduet" length] && (objc_msgSend(v5, "isEqualToString:", @"com.apple.corespotlight.receiver.coreduet") & 1) != 0)
  {
    v4 = 1;
LABEL_13:
    *(*(*(a1 + 32) + 8) + 24) |= 1 << v4;
    goto LABEL_14;
  }

  if (v3 == [@"com.apple.corespotlight.receiver.suggestions" length] && (objc_msgSend(v5, "isEqualToString:", @"com.apple.corespotlight.receiver.suggestions") & 1) != 0)
  {
    v4 = 2;
    goto LABEL_13;
  }

  if (v3 == [@"com.apple.corespotlight.receiver.textunderstandingd" length] && (objc_msgSend(v5, "isEqualToString:", @"com.apple.corespotlight.receiver.textunderstandingd") & 1) != 0)
  {
    v4 = 5;
    goto LABEL_13;
  }

  if (v3 == [@"com.apple.corespotlight.receiver.corespotlight" length] && objc_msgSend(v5, "isEqualToString:", @"com.apple.corespotlight.receiver.corespotlight"))
  {
    v4 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

- (BOOL)clientDisabled:(int64_t)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  check = 0;
  notify_check([(CSReceiverServerPreferences *)v4->_serverPreferences notifyToken], &check);
  if (check == 1)
  {
    [(SpotlightSenderState *)v4 _updateFromPreferences];
  }

  v5 = sClintServiceDisabledBitMap >> v3;
  objc_sync_exit(v4);

  return v5 & 1;
}

@end