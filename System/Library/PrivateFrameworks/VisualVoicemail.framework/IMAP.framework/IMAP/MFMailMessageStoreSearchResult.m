@interface MFMailMessageStoreSearchResult
- (MFMailMessageStoreSearchResult)init;
- (unint64_t)count;
- (void)addRemoteID:(id)a3 mailbox:(id)a4;
- (void)dealloc;
- (void)enumerateMailboxesAndRemoteIDsUsingBlock:(id)a3;
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

- (void)addRemoteID:(id)a3 mailbox:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = [(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary];
    [v9 setObject:v8 forKeyedSubscript:v6];
  }

  [v8 addObject:v10];
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__MFMailMessageStoreSearchResult_count__block_invoke;
  v5[3] = &unk_279E35870;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

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

- (void)enumerateMailboxesAndRemoteIDsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary];
  [v5 enumerateKeysAndObjectsUsingBlock:v4];
}

@end