@interface WBWebsiteDataRecord
+ (id)websiteDataRecordFromXPCDictionary:(id)dictionary;
+ (id)websiteDataRecordWithDomain:(id)domain profileIdentifiers:(id)identifiers;
- (OS_xpc_object)XPCDictionaryRepresentation;
- (id)_initWithDomain:(id)domain usage:(unint64_t)usage profileIdentifiers:(id)identifiers;
@end

@implementation WBWebsiteDataRecord

+ (id)websiteDataRecordWithDomain:(id)domain profileIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  domainCopy = domain;
  v8 = [[self alloc] _initWithDomain:domainCopy profileIdentifiers:identifiersCopy];

  return v8;
}

+ (id)websiteDataRecordFromXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(dictionaryCopy, "WebsiteDataRecordDomain")}];
  uint64 = xpc_dictionary_get_uint64(dictionaryCopy, "WebsiteDataRecordUsage");
  v6 = xpc_dictionary_get_value(dictionaryCopy, kWebsiteProfileIdentifiersKey);
  v7 = v6;
  if (v6)
  {
    count = xpc_array_get_count(v6);
    v9 = [MEMORY[0x277CBEB58] set];
    if (count)
    {
      for (i = 0; i != count; ++i)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_array_get_string(v7, i)}];
        [v9 addObject:v11];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = [[WBWebsiteDataRecord alloc] _initWithDomain:v4 usage:uint64 profileIdentifiers:v9];

  return v12;
}

- (OS_xpc_object)XPCDictionaryRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "WebsiteDataRecordDomain", [(NSString *)self->_domain UTF8String]);
  xpc_dictionary_set_uint64(v3, "WebsiteDataRecordUsage", self->_usage);
  v4 = xpc_array_create(0, 0);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_profileIdentifiers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = xpc_string_create([v10 UTF8String]);
        xpc_array_append_value(v4, v11);
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  xpc_dictionary_set_value(v3, kWebsiteProfileIdentifiersKey, v4);
  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_initWithDomain:(id)domain usage:(unint64_t)usage profileIdentifiers:(id)identifiers
{
  domainCopy = domain;
  identifiersCopy = identifiers;
  v17.receiver = self;
  v17.super_class = WBWebsiteDataRecord;
  v10 = [(WBWebsiteDataRecord *)&v17 init];
  if (v10)
  {
    v11 = [domainCopy copy];
    domain = v10->_domain;
    v10->_domain = v11;

    v10->_usage = usage;
    v13 = [identifiersCopy mutableCopy];
    profileIdentifiers = v10->_profileIdentifiers;
    v10->_profileIdentifiers = v13;

    v15 = v10;
  }

  return v10;
}

@end