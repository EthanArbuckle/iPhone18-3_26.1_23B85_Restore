@interface SMConversation
- (BOOL)hasEqualPrimaryHandlesAsConversation:(id)conversation;
- (BOOL)hasEqualPrimaryHandlesAsSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (SMConversation)initWithCoder:(id)coder;
- (SMConversation)initWithDictionary:(id)dictionary;
- (SMConversation)initWithReceiverHandles:(id)handles identifier:(id)identifier displayName:(id)name;
- (id)description;
- (id)descriptionDictionary;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMConversation

- (SMConversation)initWithReceiverHandles:(id)handles identifier:(id)identifier displayName:(id)name
{
  v31 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  identifierCopy = identifier;
  nameCopy = name;
  v29.receiver = self;
  v29.super_class = SMConversation;
  v12 = [(SMConversation *)&v29 init];
  if (v12)
  {
    if (!handlesCopy || ![handlesCopy count])
    {
      v22 = 0;
      goto LABEL_14;
    }

    objc_storeStrong(&v12->_receiverHandles, handles);
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v12->_displayName, name);
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(handlesCopy, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = handlesCopy;
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

          primaryHandle = [*(*(&v25 + 1) + 8 * v18) primaryHandle];
          [v13 addObject:primaryHandle];

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

- (BOOL)hasEqualPrimaryHandlesAsConversation:(id)conversation
{
  v4 = MEMORY[0x277CBEB98];
  receiverPrimaryHandles = [conversation receiverPrimaryHandles];
  v6 = [v4 setWithArray:receiverPrimaryHandles];

  LOBYTE(self) = [(SMConversation *)self hasEqualPrimaryHandlesAsSet:v6];
  return self;
}

- (BOOL)hasEqualPrimaryHandlesAsSet:(id)set
{
  v4 = MEMORY[0x277CBEB98];
  setCopy = set;
  receiverPrimaryHandles = [(SMConversation *)self receiverPrimaryHandles];
  v7 = [v4 setWithArray:receiverPrimaryHandles];

  LOBYTE(receiverPrimaryHandles) = [v7 isEqualToSet:setCopy];
  return receiverPrimaryHandles;
}

- (SMConversation)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy valueForKey:@"__kSMReceiverHandlesKey"];
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

  v15 = [dictionaryCopy valueForKey:@"__kSMConversationIDKey"];
  v16 = [dictionaryCopy valueForKey:@"__kSMChatDisplayNameKey"];
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
  receiverHandles = [(SMConversation *)self receiverHandles];
  v6 = [v4 initWithCapacity:{objc_msgSend(receiverHandles, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  receiverHandles2 = [(SMConversation *)self receiverHandles];
  v8 = [receiverHandles2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(receiverHandles2);
        }

        outputToDictionary = [*(*(&v21 + 1) + 8 * i) outputToDictionary];
        [v6 addObject:outputToDictionary];
      }

      v9 = [receiverHandles2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  [v3 setObject:v13 forKey:@"__kSMReceiverHandlesKey"];

  identifier = [(SMConversation *)self identifier];

  if (identifier)
  {
    identifier2 = [(SMConversation *)self identifier];
    [v3 setObject:identifier2 forKey:@"__kSMConversationIDKey"];
  }

  displayName = [(SMConversation *)self displayName];

  if (displayName)
  {
    displayName2 = [(SMConversation *)self displayName];
    [v3 setObject:displayName2 forKey:@"__kSMChatDisplayNameKey"];
  }

  v18 = [v3 copy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)descriptionDictionary
{
  v3 = objc_opt_new();
  receiverHandles = [(SMConversation *)self receiverHandles];
  [v3 setObject:receiverHandles forKey:@"__kSMReceiverHandlesKey"];

  identifier = [(SMConversation *)self identifier];

  if (identifier)
  {
    identifier2 = [(SMConversation *)self identifier];
    [v3 setObject:identifier2 forKey:@"__kSMConversationIDKey"];
  }

  displayName = [(SMConversation *)self displayName];

  if (displayName)
  {
    displayName2 = [(SMConversation *)self displayName];
    [v3 setObject:displayName2 forKey:@"__kSMChatDisplayNameKey"];
  }

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  descriptionDictionary = [(SMConversation *)self descriptionDictionary];
  v4 = [v2 stringWithFormat:@"%@", descriptionDictionary];

  return v4;
}

- (unint64_t)hash
{
  identifier = [(SMConversation *)self identifier];
  v4 = [identifier hash];
  receiverHandles = [(SMConversation *)self receiverHandles];
  v6 = [receiverHandles hash] ^ v4;
  displayName = [(SMConversation *)self displayName];
  v8 = [displayName hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      identifier = [(SMConversation *)self identifier];
      identifier2 = [(SMConversation *)v7 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(SMConversation *)self identifier];
        identifier4 = [(SMConversation *)v7 identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      receiverHandles = [(SMConversation *)self receiverHandles];
      receiverHandles2 = [(SMConversation *)v7 receiverHandles];
      v13 = receiverHandles2;
      if (receiverHandles == receiverHandles2)
      {
        v28 = receiverHandles2;
      }

      else
      {
        receiverHandles3 = [(SMConversation *)self receiverHandles];
        receiverHandles4 = [(SMConversation *)v7 receiverHandles];
        if (![receiverHandles3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = receiverHandles3;
        v28 = v13;
      }

      displayName = [(SMConversation *)self displayName];
      displayName2 = [(SMConversation *)v7 displayName];
      v17 = displayName2;
      if (displayName == displayName2)
      {

        v10 = 1;
      }

      else
      {
        [(SMConversation *)self displayName];
        v18 = v25 = identifier3;
        [(SMConversation *)v7 displayName];
        v24 = receiverHandles;
        v19 = identifier4;
        v20 = identifier2;
        v22 = v21 = identifier;
        v10 = [v18 isEqual:v22];

        identifier = v21;
        identifier2 = v20;
        identifier4 = v19;
        receiverHandles = v24;

        identifier3 = v25;
      }

      v13 = v28;
      receiverHandles3 = v26;
      if (receiverHandles == v28)
      {
LABEL_18:

        if (identifier == identifier2)
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

- (void)encodeWithCoder:(id)coder
{
  receiverHandles = self->_receiverHandles;
  coderCopy = coder;
  [coderCopy encodeObject:receiverHandles forKey:@"__kSMReceiverHandlesKey"];
  [coderCopy encodeObject:self->_identifier forKey:@"__kSMConversationIDKey"];
  [coderCopy encodeObject:self->_displayName forKey:@"__kSMChatDisplayNameKey"];
}

- (SMConversation)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"__kSMReceiverHandlesKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMConversationIDKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMChatDisplayNameKey"];

  v11 = [(SMConversation *)self initWithReceiverHandles:v8 identifier:v9 displayName:v10];
  return v11;
}

@end