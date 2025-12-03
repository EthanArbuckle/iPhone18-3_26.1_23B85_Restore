@interface TRITaskCapabilityModifier
+ (id)parseFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToModifier:(id)modifier;
- (TRITaskCapabilityModifier)initWithAdd:(unint64_t)add remove:(unint64_t)remove;
- (TRITaskCapabilityModifier)initWithCoder:(id)coder;
- (id)asPersistedModifier;
- (id)description;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRITaskCapabilityModifier

- (TRITaskCapabilityModifier)initWithAdd:(unint64_t)add remove:(unint64_t)remove
{
  v7.receiver = self;
  v7.super_class = TRITaskCapabilityModifier;
  result = [(TRITaskCapabilityModifier *)&v7 init];
  if (result)
  {
    result->_add = add;
    result->_remove = remove;
  }

  return result;
}

- (BOOL)isEqualToModifier:(id)modifier
{
  modifierCopy = modifier;
  v5 = modifierCopy;
  if (modifierCopy && (add = self->_add, add == [modifierCopy add]))
  {
    remove = self->_remove;
    v8 = remove == [v5 remove];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITaskCapabilityModifier *)self isEqualToModifier:v5];
  }

  return v6;
}

- (id)asPersistedModifier
{
  v3 = objc_alloc_init(TRIPersistedTaskCapabilityModifier);
  [(TRIPersistedTaskCapabilityModifier *)v3 setAdd:self->_add];
  [(TRIPersistedTaskCapabilityModifier *)v3 setRemove:self->_remove];

  return v3;
}

- (id)serialize
{
  asPersistedModifier = [(TRITaskCapabilityModifier *)self asPersistedModifier];
  data = [asPersistedModifier data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskCapabilityUtilities.m" lineNumber:82 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v3 = [(TRIPBMessage *)TRIPersistedTaskCapabilityModifier parseFromData:data error:&v13];
  v4 = v13;
  if (!v3)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIPersistedTaskCapabilityModifier: %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (([v3 hasAdd] & 1) == 0)
  {
    v6 = TRILogCategory_Server();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412290;
    v15 = v8;
    v9 = "Cannot decode message of type %@ with missing field: add";
LABEL_15:
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);

    goto LABEL_10;
  }

  if ([v3 hasRemove])
  {
    v5 = -[TRITaskCapabilityModifier initWithAdd:remove:]([TRITaskCapabilityModifier alloc], "initWithAdd:remove:", [v3 add], objc_msgSend(v3, "remove"));
    goto LABEL_11;
  }

  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v8 = NSStringFromClass(v12);
    *buf = 138412290;
    v15 = v8;
    v9 = "Cannot decode message of type %@ with missing field: remove";
    goto LABEL_15;
  }

LABEL_10:

  v5 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (TRITaskCapabilityModifier)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pb"];

  if (v5)
  {
    v16 = 0;
    v6 = [(TRIPBMessage *)TRIPersistedTaskCapabilityModifier parseFromData:v5 error:&v16];
    v7 = v16;
    if (!v6)
    {
      v9 = TRILogCategory_Server();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIPersistedTaskCapabilityModifier: %@", buf, 0xCu);
      }

      goto LABEL_12;
    }

    if ([v6 hasAdd])
    {
      if ([v6 hasRemove])
      {
        self = -[TRITaskCapabilityModifier initWithAdd:remove:](self, "initWithAdd:remove:", [v6 add], objc_msgSend(v6, "remove"));
        selfCopy = self;
LABEL_13:

        goto LABEL_14;
      }

      v9 = TRILogCategory_Server();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        selfCopy = 0;
        goto LABEL_13;
      }

      v15 = objc_opt_class();
      v11 = NSStringFromClass(v15);
      *buf = 138412290;
      v18 = v11;
      v12 = "Cannot decode message of type %@ with missing field: remove";
    }

    else
    {
      v9 = TRILogCategory_Server();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412290;
      v18 = v11;
      v12 = "Cannot decode message of type %@ with missing field: add";
    }

    _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);

    goto LABEL_12;
  }

  selfCopy = 0;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serialize = [(TRITaskCapabilityModifier *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRITaskCapabilityModifier | add:0x%llx remove:0x%llx", self->_add, self->_remove];

  return v2;
}

@end