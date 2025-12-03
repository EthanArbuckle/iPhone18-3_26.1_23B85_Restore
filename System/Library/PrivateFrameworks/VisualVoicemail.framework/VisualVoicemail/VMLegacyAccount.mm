@interface VMLegacyAccount
- (BOOL)isMessageWaiting;
- (BOOL)isOnline;
- (BOOL)isSubscribed;
- (VMLegacyAccount)init;
- (id)allVoicemailsWithFlags:(unint64_t)flags withoutFlags:(unint64_t)withoutFlags;
- (id)voicemailWithIdentifier:(unint64_t)identifier;
- (unsigned)recentUnreadCount;
- (unsigned)unreadCount;
- (void)moveVoicemailFromTrash:(id)trash;
- (void)moveVoicemailToTrash:(id)trash;
@end

@implementation VMLegacyAccount

- (VMLegacyAccount)init
{
  v6.receiver = self;
  v6.super_class = VMLegacyAccount;
  v2 = [(VMLegacyAccount *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VMVoicemailManager);
    voicemailManager = v2->_voicemailManager;
    v2->_voicemailManager = v3;
  }

  return v2;
}

- (unsigned)unreadCount
{
  voicemailManager = [(VMLegacyAccount *)self voicemailManager];
  v3 = [voicemailManager countOfVoicemailsPassingTest:&__block_literal_global_6];

  return v3;
}

- (unsigned)recentUnreadCount
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v5 = v4 + -86400.0;

  voicemailManager = [(VMLegacyAccount *)self voicemailManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__VMLegacyAccount_recentUnreadCount__block_invoke;
  v8[3] = &__block_descriptor_40_e21_B16__0__VMVoicemail_8l;
  *&v8[4] = v5;
  LODWORD(date) = [voicemailManager countOfVoicemailsPassingTest:v8];

  return date;
}

uint64_t __36__VMLegacyAccount_recentUnreadCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 date];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = *(a1 + 32);

  if (![v3 isDataAvailable] || (objc_msgSend(v3, "isRead") & 1) != 0 || (objc_msgSend(v3, "isBlocked") & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v6 > v7) & ~[v3 isDeleted];
  }

  return v8;
}

- (BOOL)isMessageWaiting
{
  voicemailManager = [(VMLegacyAccount *)self voicemailManager];
  isMessageWaiting = [voicemailManager isMessageWaiting];

  return isMessageWaiting;
}

- (BOOL)isOnline
{
  voicemailManager = [(VMLegacyAccount *)self voicemailManager];
  isOnline = [voicemailManager isOnline];

  return isOnline;
}

- (BOOL)isSubscribed
{
  voicemailManager = [(VMLegacyAccount *)self voicemailManager];
  isSubscribed = [voicemailManager isSubscribed];

  return isSubscribed;
}

- (id)voicemailWithIdentifier:(unint64_t)identifier
{
  voicemailManager = [(VMLegacyAccount *)self voicemailManager];
  v5 = [voicemailManager voicemailWithIdentifier:identifier];

  return v5;
}

- (void)moveVoicemailToTrash:(id)trash
{
  trashCopy = trash;
  voicemailManager = [(VMLegacyAccount *)self voicemailManager];
  v5 = [voicemailManager trashVoicemail:trashCopy];
}

- (void)moveVoicemailFromTrash:(id)trash
{
  trashCopy = trash;
  voicemailManager = [(VMLegacyAccount *)self voicemailManager];
  v5 = [voicemailManager removeVoicemailFromTrash:trashCopy];
}

- (id)allVoicemailsWithFlags:(unint64_t)flags withoutFlags:(unint64_t)withoutFlags
{
  voicemailManager = [(VMLegacyAccount *)self voicemailManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__VMLegacyAccount_allVoicemailsWithFlags_withoutFlags___block_invoke;
  v9[3] = &__block_descriptor_48_e21_B16__0__VMVoicemail_8l;
  v9[4] = flags;
  v9[5] = withoutFlags;
  v7 = [voicemailManager voicemailsPassingTest:v9];

  return v7;
}

uint64_t __55__VMLegacyAccount_allVoicemailsWithFlags_withoutFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasFlags:*(a1 + 32)])
  {
    v4 = [v3 doesNotHaveFlags:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end