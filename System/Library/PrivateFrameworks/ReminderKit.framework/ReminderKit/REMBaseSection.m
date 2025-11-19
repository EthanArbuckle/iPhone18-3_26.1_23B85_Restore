@interface REMBaseSection
+ (NSString)cdEntityName;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
+ (void)cdEntityName;
+ (void)newObjectID;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)a3;
- (REMBaseSection)initWithStore:(id)a3 accountCapabilities:(id)a4 storage:(id)a5;
- (id)debugDescription;
- (id)description;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation REMBaseSection

- (REMBaseSection)initWithStore:(id)a3 accountCapabilities:(id)a4 storage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REMBaseSection;
  v12 = [(REMBaseSection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, a3);
    objc_storeStrong(&v13->_accountCapabilities, a4);
    objc_storeStrong(&v13->_storage, a5);
    -[REMBaseSectionStorage setStoreGenerationIfNeeded:](v13->_storage, "setStoreGenerationIfNeeded:", [v9 storeGeneration]);
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMBaseSection *)self store];
      v8 = [(REMBaseSection *)v6 store];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMBaseSection *)self store];
        v11 = [(REMBaseSection *)v6 store];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_10;
        }
      }

      v14 = [(REMBaseSection *)self accountCapabilities];
      v15 = [(REMBaseSection *)v6 accountCapabilities];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(REMBaseSection *)self accountCapabilities];
        v18 = [(REMBaseSection *)v6 accountCapabilities];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      v20 = [(REMBaseSection *)self storage];
      v21 = [(REMBaseSection *)v6 storage];
      if (v20 == v21)
      {
        v13 = 1;
      }

      else
      {
        v22 = [(REMBaseSection *)self storage];
        v23 = [(REMBaseSection *)v6 storage];
        v13 = [v22 isEqual:v23];
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
  v2 = [(REMBaseSection *)self storage];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMBaseSection *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMBaseSection *)self storage];
  v6 = [v5 debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMBaseSection *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMBaseSection;
  if ([(REMBaseSection *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMBaseSection *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMBaseSection *)self storage];
  [v8 setValue:v7 forKey:v6];
}

+ (id)newObjectID
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(a1);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    +[REMBaseSection newObjectID];
  }

  return +[REMBaseSectionStorage newObjectID];
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromClass(a1);
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    +[REMBaseSection objectIDWithUUID:];
  }

  v9 = [REMBaseSectionStorage objectIDWithUUID:v4];

  return v9;
}

+ (NSString)cdEntityName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(a1);
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
  v2 = [(REMBaseSection *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

+ (void)newObjectID
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore read];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v2 = [MEMORY[0x1E696AF00] callStackSymbols];
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
    v2 = [MEMORY[0x1E696AF00] callStackSymbols];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v3, v4, "rem_log_fault_if (![NSStringFromClass([REMBaseSection class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMBaseSectionStorage called '- [REMBaseSectionStorage cdEntityName]'. The subclass should override this method. {callstack: %@}", v5, v6, v7, v8, 2u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

@end