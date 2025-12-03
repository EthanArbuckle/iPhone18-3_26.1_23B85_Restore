@interface SRUIFDataStore
- (SRUIFDataStore)init;
- (SRUIFDataStore)initWithEntries:(id)entries;
- (SRUIFDataStore)initWithPropertyListRepresentation:(id)representation;
- (id)imageDataForKey:(id)key;
- (id)propertyListRepresentation;
- (void)setImageData:(id)data forKey:(id)key;
@end

@implementation SRUIFDataStore

- (SRUIFDataStore)initWithEntries:(id)entries
{
  entriesCopy = entries;
  v9.receiver = self;
  v9.super_class = SRUIFDataStore;
  v5 = [(SRUIFDataStore *)&v9 init];
  if (v5)
  {
    v6 = [entriesCopy mutableCopy];
    entries = v5->_entries;
    v5->_entries = v6;
  }

  return v5;
}

- (SRUIFDataStore)init
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(SRUIFDataStore *)self initWithEntries:dictionary];

  return v4;
}

- (void)setImageData:(id)data forKey:(id)key
{
  keyCopy = key;
  dataCopy = data;
  v8 = [[_SRUIFDataStoreEntry alloc] initWithType:1 value:dataCopy];

  [(NSMutableDictionary *)self->_entries setObject:v8 forKey:keyCopy];
}

- (id)imageDataForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_entries objectForKey:keyCopy];
  v6 = v5;
  if (v5)
  {
    if ([v5 type] == 1)
    {
      value = [v6 value];
      goto LABEL_7;
    }

    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFDataStore *)keyCopy imageDataForKey:v8, v6];
    }
  }

  value = 0;
LABEL_7:

  return value;
}

- (id)propertyListRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_287A18BE8 forKey:@"Version"];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_entries, "count")}];
  entries = self->_entries;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SRUIFDataStore_propertyListRepresentation__block_invoke;
  v8[3] = &unk_279C61B38;
  v9 = v4;
  v6 = v4;
  [(NSMutableDictionary *)entries enumerateKeysAndObjectsUsingBlock:v8];
  [dictionary setObject:v6 forKey:@"Entries"];

  return dictionary;
}

void __44__SRUIFDataStore_propertyListRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 propertyListRepresentation];
  [v4 setObject:v6 forKey:v5];
}

- (SRUIFDataStore)initWithPropertyListRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = objc_alloc_init(SRUIFDictionarySchema);
  v6 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v6 forKey:@"Version"];

  v7 = [SRUIFCoercion coercionWithBlock:&__block_literal_global_0];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v7 forKey:@"Entries"];

  v16 = 0;
  v8 = [(SRUIFDictionarySchema *)v5 coerceObject:representationCopy error:&v16];
  v9 = v16;
  if (!v8)
  {
    v14 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFDataStore *)representationCopy initWithPropertyListRepresentation:v9, v14];
    }

    goto LABEL_8;
  }

  v10 = [v8 objectForKey:@"Version"];
  integerValue = [v10 integerValue];

  if (integerValue != 1)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SRUIFDataStore initWithPropertyListRepresentation:];
    }

LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  v12 = [v8 objectForKey:@"Entries"];
  self = [(SRUIFDataStore *)self initWithEntries:v12];

  selfCopy = self;
LABEL_9:

  return selfCopy;
}

id __53__SRUIFDataStore_initWithPropertyListRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v5 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  v6 = v21;
  obj = v21[5];
  v7 = [v5 coerceObject:v4 error:&obj];
  objc_storeStrong(v6 + 5, obj);

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v9 = v15[5];
    v15[5] = v8;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__SRUIFDataStore_initWithPropertyListRepresentation___block_invoke_30;
    v12[3] = &unk_279C61B80;
    v12[4] = &v20;
    v12[5] = &v14;
    [v7 enumerateKeysAndObjectsUsingBlock:v12];
  }

  if (a3)
  {
    *a3 = v21[5];
  }

  v10 = v15[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __53__SRUIFDataStore_initWithPropertyListRepresentation___block_invoke_30(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v14 = 0;
  v9 = [[_SRUIFDataStoreEntry alloc] initWithPropertyListRepresentation:v8 error:&v14];

  v10 = v14;
  v11 = v14;
  if (v9)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKey:v7];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v10);
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    *a4 = 1;
  }
}

- (void)imageDataForKey:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 value];
  v8 = 136315650;
  v9 = "[SRUIFDataStore imageDataForKey:]";
  v10 = 2112;
  v11 = a1;
  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_26951F000, v5, OS_LOG_TYPE_ERROR, "%s returning nil because value for key %@ is %@, which cannot be coerced to an image", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyListRepresentation:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_26951F000, v0, OS_LOG_TYPE_ERROR, "%s unable to deserialize property list with version %{public}ld; returning nil", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyListRepresentation:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[SRUIFDataStore initWithPropertyListRepresentation:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s returning nil; passed invalid property list (%@): %{public}@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end