@interface REMBaseSection
+ (NSString)cdEntityName;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
+ (void)cdEntityName;
+ (void)newObjectID;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)selector;
- (REMBaseSection)initWithStore:(id)store accountCapabilities:(id)capabilities storage:(id)storage;
- (id)debugDescription;
- (id)description;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation REMBaseSection

- (REMBaseSection)initWithStore:(id)store accountCapabilities:(id)capabilities storage:(id)storage
{
  storeCopy = store;
  capabilitiesCopy = capabilities;
  storageCopy = storage;
  v15.receiver = self;
  v15.super_class = REMBaseSection;
  v12 = [(REMBaseSection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, store);
    objc_storeStrong(&v13->_accountCapabilities, capabilities);
    objc_storeStrong(&v13->_storage, storage);
    -[REMBaseSectionStorage setStoreGenerationIfNeeded:](v13->_storage, "setStoreGenerationIfNeeded:", [storeCopy storeGeneration]);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      store = [(REMBaseSection *)self store];
      store2 = [(REMBaseSection *)v6 store];
      v9 = store2;
      if (store == store2)
      {
      }

      else
      {
        store3 = [(REMBaseSection *)self store];
        store4 = [(REMBaseSection *)v6 store];
        v12 = [store3 isEqual:store4];

        if (!v12)
        {
          goto LABEL_10;
        }
      }

      accountCapabilities = [(REMBaseSection *)self accountCapabilities];
      accountCapabilities2 = [(REMBaseSection *)v6 accountCapabilities];
      v16 = accountCapabilities2;
      if (accountCapabilities == accountCapabilities2)
      {
      }

      else
      {
        accountCapabilities3 = [(REMBaseSection *)self accountCapabilities];
        accountCapabilities4 = [(REMBaseSection *)v6 accountCapabilities];
        v19 = [accountCapabilities3 isEqual:accountCapabilities4];

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      storage = [(REMBaseSection *)self storage];
      storage2 = [(REMBaseSection *)v6 storage];
      if (storage == storage2)
      {
        v13 = 1;
      }

      else
      {
        storage3 = [(REMBaseSection *)self storage];
        storage4 = [(REMBaseSection *)v6 storage];
        v13 = [storage3 isEqual:storage4];
      }

      goto LABEL_16;
    }

LABEL_10:
    v13 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v13 = 1;
LABEL_17:

  return v13 & 1;
}

- (unint64_t)hash
{
  storage = [(REMBaseSection *)self storage];
  v3 = [storage hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMBaseSection *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, storage];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMBaseSection *)self storage];
  v6 = [storage debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMBaseSection *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMBaseSection;
  if ([(REMBaseSection *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMBaseSection *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  storage = [(REMBaseSection *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

+ (id)newObjectID
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(self);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    +[REMBaseSection newObjectID];
  }

  return +[REMBaseSectionStorage newObjectID];
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromClass(self);
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    +[REMBaseSection objectIDWithUUID:];
  }

  v9 = [REMBaseSectionStorage objectIDWithUUID:dCopy];

  return v9;
}

+ (NSString)cdEntityName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(self);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    +[REMBaseSection cdEntityName];
  }

  v7 = +[REMBaseSectionStorage cdEntityName];

  return v7;
}

- (BOOL)isUnsupported
{
  storage = [(REMBaseSection *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

+ (void)newObjectID
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore read];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v3, v4, "rem_log_fault_if (![NSStringFromClass([REMBaseSection class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMBaseSectionStorage called '- [REMBaseSectionStorage newObjectID]'. The subclass should override this method. {callstack: %@}", v5, v6, v7, v8, 2u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

+ (void)objectIDWithUUID:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore read];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v2 = [MEMORY[0x1E696AF00] callStackSymbols];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v3, v4, "rem_log_fault_if (![NSStringFromClass([REMBaseSection class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMBaseSectionStorage called '- [REMBaseSectionStorage objectIDWithUUID:]'. The subclass should override this method. {callstack: %@}", v5, v6, v7, v8, 2u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

+ (void)cdEntityName
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore read];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v3, v4, "rem_log_fault_if (![NSStringFromClass([REMBaseSection class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMBaseSectionStorage called '- [REMBaseSectionStorage cdEntityName]'. The subclass should override this method. {callstack: %@}", v5, v6, v7, v8, 2u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

@end