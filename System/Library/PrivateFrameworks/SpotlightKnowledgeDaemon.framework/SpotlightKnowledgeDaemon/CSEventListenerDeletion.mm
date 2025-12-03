@interface CSEventListenerDeletion
- (CSEventListenerDeletion)initWithSerialNumber:(unint64_t)number bundle:(const char *)bundle journalCookie:(const char *)cookie itemsObj:(id *)obj indexType:(int)type bundleHash:(unsigned int)hash;
- (uint64_t)setIsManaged:(uint64_t)result;
- (void)iterateIdentifiers:(id)identifiers;
@end

@implementation CSEventListenerDeletion

- (CSEventListenerDeletion)initWithSerialNumber:(unint64_t)number bundle:(const char *)bundle journalCookie:(const char *)cookie itemsObj:(id *)obj indexType:(int)type bundleHash:(unsigned int)hash
{
  v16.receiver = self;
  v16.super_class = CSEventListenerDeletion;
  result = [(CSEventListenerDeletion *)&v16 init];
  if (result)
  {
    result->_serialNumber = number;
    result->_bundle = bundle;
    result->_journalCookie = cookie;
    v15 = *&obj->var0;
    result->_itemsObj.reference = obj->var2;
    *&result->_itemsObj.containerBytes = v15;
    result->_indexType = type;
    result->_bundleHash = hash;
  }

  return result;
}

- (void)iterateIdentifiers:(id)identifiers
{
  v25 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  if (self && self->_isDict)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __46__CSEventListenerDeletion_iterateIdentifiers___block_invoke;
    v22 = &unk_27893CF58;
    v23 = identifiersCopy;
    v17 = *&self->_itemsObj.containerBytes;
    reference = self->_itemsObj.reference;
    _MDPlistArrayIterate();
    v6 = v23;
  }

  else
  {
    v7 = *MEMORY[0x277CBECE8];
    v17 = *&self->_itemsObj.containerBytes;
    reference = self->_itemsObj.reference;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = MDJournalReaderMDPlistObjectCopy();
    v8 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v5[2](v5, *(*(&v13 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __46__CSEventListenerDeletion_iterateIdentifiers___block_invoke(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    if (_MDPlistStringGetValue())
    {
      v3 = *MEMORY[0x277CBECE8];
      v4 = MDJournalReaderMDPlistObjectCopy();
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (uint64_t)setIsManaged:(uint64_t)result
{
  if (result)
  {
    *(result + 9) = a2;
  }

  return result;
}

@end