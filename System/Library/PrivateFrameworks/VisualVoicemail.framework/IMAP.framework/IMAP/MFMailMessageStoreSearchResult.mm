@interface MFMailMessageStoreSearchResult
- (MFMailMessageStoreSearchResult)init;
- (unint64_t)count;
- (void)addRemoteID:(id)d mailbox:(id)mailbox;
- (void)dealloc;
- (void)enumerateMailboxesAndRemoteIDsUsingBlock:(id)block;
@end

@implementation MFMailMessageStoreSearchResult

- (MFMailMessageStoreSearchResult)init
{
  v6.receiver = self;
  v6.super_class = MFMailMessageStoreSearchResult;
  v2 = [(MFMailMessageStoreSearchResult *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mailboxToRemoteIdDictionary = v2->_mailboxToRemoteIdDictionary;
    v2->_mailboxToRemoteIdDictionary = v3;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMailMessageStoreSearchResult;
  [(MFMailMessageStoreSearchResult *)&v2 dealloc];
}

- (void)addRemoteID:(id)d mailbox:(id)mailbox
{
  dCopy = d;
  mailboxCopy = mailbox;
  mailboxToRemoteIdDictionary = [(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary];
  v8 = [mailboxToRemoteIdDictionary objectForKeyedSubscript:mailboxCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mailboxToRemoteIdDictionary2 = [(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary];
    [mailboxToRemoteIdDictionary2 setObject:v8 forKeyedSubscript:mailboxCopy];
  }

  [v8 addObject:dCopy];
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mailboxToRemoteIdDictionary = [(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__MFMailMessageStoreSearchResult_count__block_invoke;
  v5[3] = &unk_279E35870;
  v5[4] = &v6;
  [mailboxToRemoteIdDictionary enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __39__MFMailMessageStoreSearchResult_count__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)enumerateMailboxesAndRemoteIDsUsingBlock:(id)block
{
  blockCopy = block;
  mailboxToRemoteIdDictionary = [(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary];
  [mailboxToRemoteIdDictionary enumerateKeysAndObjectsUsingBlock:blockCopy];
}

@end