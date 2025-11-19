@interface SMConversation
- (BOOL)hasEqualPrimaryHandlesAsConversation:(id)a3;
- (BOOL)hasEqualPrimaryHandlesAsSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SMConversation)initWithCoder:(id)a3;
- (SMConversation)initWithDictionary:(id)a3;
- (SMConversation)initWithReceiverHandles:(id)a3 identifier:(id)a4 displayName:(id)a5;
- (id)description;
- (id)descriptionDictionary;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMConversation

- (SMConversation)initWithReceiverHandles:(id)a3 identifier:(id)a4 displayName:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v29.receiver = self;
  v29.super_class = SMConversation;
  v12 = [(SMConversation *)&v29 init];
  if (v12)
  {
    if (!v9 || ![v9 count])
    {
      v22 = 0;
      goto LABEL_14;
    }

    objc_storeStrong(&v12->_receiverHandles, a3);
    objc_storeStrong(&v12->_identifier, a4);
    objc_storeStrong(&v12->_displayName, a5);
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v25 + 1) + 8 * v18) primaryHandle];
          [v13 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v16);
    }

    v20 = [v13 copy];
    receiverPrimaryHandles = v12->_receiverPrimaryHandles;
    v12->_receiverPrimaryHandles = v20;

    v12->_isGroup = [v14 count] > 1;
  }

  v22 = v12;
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)hasEqualPrimaryHandlesAsConversation:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = [a3 receiverPrimaryHandles];
  v6 = [v4 setWithArray:v5];

  LOBYTE(self) = [(SMConversation *)self hasEqualPrimaryHandlesAsSet:v6];
  return self;
}

- (BOOL)hasEqualPrimaryHandlesAsSet:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [(SMConversation *)self receiverPrimaryHandles];
  v7 = [v4 setWithArray:v6];

  LOBYTE(v6) = [v7 isEqualToSet:v5];
  return v6;
}

- (SMConversation)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueForKey:@"__kSMReceiverHandlesKey"];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [SMHandle alloc];
        v14 = [(SMHandle *)v13 initWithDictionary:v12, v22];
        if (v14)
        {
          [v6 addObject:v14];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = [v4 valueForKey:@"__kSMConversationIDKey"];
  v16 = [v4 valueForKey:@"__kSMChatDisplayNameKey"];
  v17 = [SMConversation alloc];
  v18 = [v6 copy];
  v19 = [(SMConversation *)v17 initWithReceiverHandles:v18 identifier:v15 displayName:v16];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)outputToDictionary
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v5 = [(SMConversation *)self receiverHandles];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(SMConversation *)self receiverHandles];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v21 + 1) + 8 * i) outputToDictionary];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  [v3 setObject:v13 forKey:@"__kSMReceiverHandlesKey"];

  v14 = [(SMConversation *)self identifier];

  if (v14)
  {
    v15 = [(SMConversation *)self identifier];
    [v3 setObject:v15 forKey:@"__kSMConversationIDKey"];
  }

  v16 = [(SMConversation *)self displayName];

  if (v16)
  {
    v17 = [(SMConversation *)self displayName];
    [v3 setObject:v17 forKey:@"__kSMChatDisplayNameKey"];
  }

  v18 = [v3 copy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)descriptionDictionary
{
  v3 = objc_opt_new();
  v4 = [(SMConversation *)self receiverHandles];
  [v3 setObject:v4 forKey:@"__kSMReceiverHandlesKey"];

  v5 = [(SMConversation *)self identifier];

  if (v5)
  {
    v6 = [(SMConversation *)self identifier];
    [v3 setObject:v6 forKey:@"__kSMConversationIDKey"];
  }

  v7 = [(SMConversation *)self displayName];

  if (v7)
  {
    v8 = [(SMConversation *)self displayName];
    [v3 setObject:v8 forKey:@"__kSMChatDisplayNameKey"];
  }

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SMConversation *)self descriptionDictionary];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(SMConversation *)self identifier];
  v4 = [v3 hash];
  v5 = [(SMConversation *)self receiverHandles];
  v6 = [v5 hash] ^ v4;
  v7 = [(SMConversation *)self displayName];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(SMConversation *)self identifier];
      v9 = [(SMConversation *)v7 identifier];
      if (v8 != v9)
      {
        v3 = [(SMConversation *)self identifier];
        v4 = [(SMConversation *)v7 identifier];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(SMConversation *)self receiverHandles];
      v12 = [(SMConversation *)v7 receiverHandles];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(SMConversation *)self receiverHandles];
        v27 = [(SMConversation *)v7 receiverHandles];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(SMConversation *)self displayName];
      v16 = [(SMConversation *)v7 displayName];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(SMConversation *)self displayName];
        v18 = v25 = v3;
        [(SMConversation *)v7 displayName];
        v24 = v11;
        v19 = v4;
        v20 = v9;
        v22 = v21 = v8;
        v10 = [v18 isEqual:v22];

        v8 = v21;
        v9 = v20;
        v4 = v19;
        v11 = v24;

        v3 = v25;
      }

      v13 = v28;
      v14 = v26;
      if (v11 == v28)
      {
LABEL_18:

        if (v8 == v9)
        {
LABEL_20:

          goto LABEL_21;
        }

LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }

    v10 = 0;
  }

LABEL_21:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  receiverHandles = self->_receiverHandles;
  v5 = a3;
  [v5 encodeObject:receiverHandles forKey:@"__kSMReceiverHandlesKey"];
  [v5 encodeObject:self->_identifier forKey:@"__kSMConversationIDKey"];
  [v5 encodeObject:self->_displayName forKey:@"__kSMChatDisplayNameKey"];
}

- (SMConversation)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"__kSMReceiverHandlesKey"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMConversationIDKey"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMChatDisplayNameKey"];

  v11 = [(SMConversation *)self initWithReceiverHandles:v8 identifier:v9 displayName:v10];
  return v11;
}

@end