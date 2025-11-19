@interface TIInputContextEntry
- (BOOL)isEqual:(id)a3;
- (TIInputContextEntry)init;
- (TIInputContextEntry)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enforceMaxContextLength:(unint64_t)a3;
@end

@implementation TIInputContextEntry

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TIInputContextEntry *)self text];
  v7 = [v6 length] != 0;
  v8 = [(TIInputContextEntry *)self senderIdentifier];
  v9 = [v8 length] != 0;
  v10 = [(TIInputContextEntry *)self senderName];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[TIInputContextEntry isFromMe](self, "isFromMe")}];
  v12 = [v3 stringWithFormat:@"<%@: %p: hasText: %d, hasSenderID: %d, hasName: %d>, isFromMe: %@", v5, self, v7, v9, v10 != 0, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSString *)self->_text copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(NSString *)self->_senderIdentifier copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [(NSDate *)self->_timestamp copy];
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;

  v11 = [(NSPersonNameComponents *)self->_senderName copy];
  v12 = *(v4 + 40);
  *(v4 + 40) = v11;

  v13 = [(NSString *)self->_entryIdentifier copy];
  v14 = *(v4 + 48);
  *(v4 + 48) = v13;

  v15 = [(NSSet *)self->_primaryRecipientIdentifiers copy];
  v16 = *(v4 + 56);
  *(v4 + 56) = v15;

  v17 = [(NSSet *)self->_secondaryRecipientIdentifiers copy];
  v18 = *(v4 + 64);
  *(v4 + 64) = v17;

  *(v4 + 72) = self->_entryType;
  v19 = [(NSString *)self->_threadIdentifier copy];
  v20 = *(v4 + 80);
  *(v4 + 80) = v19;

  v21 = [(NSString *)self->_spotlightCacheKey copy];
  v22 = *(v4 + 88);
  *(v4 + 88) = v21;

  *(v4 + 8) = self->_isFromMe;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(TIInputContextEntry *)self compare:v4]== 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  timestamp = self->_timestamp;
  v6 = [v4 timestamp];
  v7 = v6;
  if (timestamp)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v6)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    if (timestamp)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v9 = [(NSDate *)timestamp compare:v6];
  }

  if (!v9)
  {
    senderIdentifier = self->_senderIdentifier;
    v11 = [v4 senderIdentifier];
    v7 = v11;
    if (senderIdentifier && v11)
    {
      v9 = [(NSString *)senderIdentifier compare:v11];
    }

    else
    {
      if (v11)
      {
        v9 = -1;
      }

      else
      {
        v9 = 0;
      }

      if (senderIdentifier)
      {
        goto LABEL_34;
      }
    }

    if (!v9)
    {
      threadIdentifier = self->_threadIdentifier;
      v13 = [v4 threadIdentifier];
      v7 = v13;
      if (threadIdentifier && v13)
      {
        v9 = [(NSString *)threadIdentifier compare:v13];
      }

      else
      {
        if (v13)
        {
          v9 = -1;
        }

        else
        {
          v9 = 0;
        }

        if (threadIdentifier)
        {
          goto LABEL_34;
        }
      }

      if (!v9)
      {
        spotlightCacheKey = self->_spotlightCacheKey;
        v15 = [v4 spotlightCacheKey];
        v7 = v15;
        if (spotlightCacheKey && v15)
        {
          v9 = [(NSString *)spotlightCacheKey compare:v15];
LABEL_37:

          if (v9)
          {
            goto LABEL_36;
          }

          isFromMe = self->_isFromMe;
          if (isFromMe != [v4 isFromMe])
          {
            v9 = -1;
            goto LABEL_36;
          }

          text = self->_text;
          v19 = [v4 text];
          v7 = v19;
          if (text && v19)
          {
            v9 = [(NSString *)text compare:v19];
          }

          else
          {
            if (v19)
            {
              v20 = -1;
            }

            else
            {
              v20 = 0;
            }

            if (text)
            {
              v9 = 1;
            }

            else
            {
              v9 = v20;
            }
          }

          goto LABEL_35;
        }

        if (v15)
        {
          v9 = -1;
        }

        else
        {
          v9 = 0;
        }

        if (!spotlightCacheKey)
        {
          goto LABEL_37;
        }

LABEL_34:
        v9 = 1;
LABEL_35:
      }
    }
  }

LABEL_36:

  return v9;
}

- (void)enforceMaxContextLength:(unint64_t)a3
{
  if (+[TIInputContextHistory isMail]&& [(NSString *)self->_text length]> a3)
  {
    self->_text = 0;
  }

  else
  {
    self->_text = [(NSString *)self->_text _stringWithLongestWhitespaceDelimitedSuffixOfMaxLength:a3];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    timestamp = self->_timestamp;
    v15 = 136315650;
    v16 = "[TIInputContextEntry encodeWithCoder:]";
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = timestamp;
    _os_log_error_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s  Sender identifier is NOT of NSString class: %{public}@, timestamp: %{public}@", &v15, 0x20u);
  }

  [v5 encodeObject:self->_senderIdentifier forKey:@"senderIdentifier"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_senderName forKey:@"senderName"];
  [v5 encodeObject:self->_entryIdentifier forKey:@"entryIdentifier"];
  primaryRecipientIdentifiers = self->_primaryRecipientIdentifiers;
  v7 = objc_opt_class();
  v8 = TI_filteredSetWithClass(primaryRecipientIdentifiers, v7);
  [v5 encodeObject:v8 forKey:@"primaryRecipientIdentifiers"];

  secondaryRecipientIdentifiers = self->_secondaryRecipientIdentifiers;
  v10 = objc_opt_class();
  v11 = TI_filteredSetWithClass(secondaryRecipientIdentifiers, v10);
  [v5 encodeObject:v11 forKey:@"secondaryRecipientIdentifiers"];

  [v5 encodeInteger:self->_entryType forKey:@"entryType"];
  [v5 encodeObject:self->_threadIdentifier forKey:@"threadIdentifier"];
  [v5 encodeObject:self->_spotlightCacheKey forKey:@"spotlightCacheKey"];
  [v5 encodeBool:self->_isFromMe forKey:@"isFromMe"];
}

- (TIInputContextEntry)init
{
  v3.receiver = self;
  v3.super_class = TIInputContextEntry;
  return [(TIInputContextEntry *)&v3 init];
}

- (TIInputContextEntry)initWithCoder:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = TIInputContextEntry;
  v5 = [(TIInputContextEntry *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderIdentifier"];
    senderIdentifier = v5->_senderIdentifier;
    v5->_senderIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderName"];
    senderName = v5->_senderName;
    v5->_senderName = v12;

    if (!v5->_senderIdentifier && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = v5->_timestamp;
      *buf = 136315394;
      v31 = "[TIInputContextEntry initWithCoder:]";
      v32 = 2114;
      v33 = v28;
      _os_log_error_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s  Sender identifier is Nil, timestamp: %{public}@", buf, 0x16u);
    }

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entryIdentifier"];
    entryIdentifier = v5->_entryIdentifier;
    v5->_entryIdentifier = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"primaryRecipientIdentifiers"];
    primaryRecipientIdentifiers = v5->_primaryRecipientIdentifiers;
    v5->_primaryRecipientIdentifiers = v19;

    v21 = [v4 decodeObjectOfClasses:v18 forKey:@"secondaryRecipientIdentifiers"];
    secondaryRecipientIdentifiers = v5->_secondaryRecipientIdentifiers;
    v5->_secondaryRecipientIdentifiers = v21;

    v5->_entryType = [v4 decodeIntegerForKey:@"entryType"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
    threadIdentifier = v5->_threadIdentifier;
    v5->_threadIdentifier = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spotlightCacheKey"];
    spotlightCacheKey = v5->_spotlightCacheKey;
    v5->_spotlightCacheKey = v25;

    v5->_isFromMe = [v4 decodeBoolForKey:@"isFromMe"];
  }

  return v5;
}

@end