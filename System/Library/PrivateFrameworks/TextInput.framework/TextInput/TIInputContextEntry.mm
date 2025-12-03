@interface TIInputContextEntry
- (BOOL)isEqual:(id)equal;
- (TIInputContextEntry)init;
- (TIInputContextEntry)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
- (void)enforceMaxContextLength:(unint64_t)length;
@end

@implementation TIInputContextEntry

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  text = [(TIInputContextEntry *)self text];
  v7 = [text length] != 0;
  senderIdentifier = [(TIInputContextEntry *)self senderIdentifier];
  v9 = [senderIdentifier length] != 0;
  senderName = [(TIInputContextEntry *)self senderName];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[TIInputContextEntry isFromMe](self, "isFromMe")}];
  v12 = [v3 stringWithFormat:@"<%@: %p: hasText: %d, hasSenderID: %d, hasName: %d>, isFromMe: %@", v5, self, v7, v9, senderName != 0, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(TIInputContextEntry *)self compare:equalCopy]== 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  timestamp = self->_timestamp;
  timestamp = [compareCopy timestamp];
  v7 = timestamp;
  if (timestamp)
  {
    v8 = timestamp == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (timestamp)
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
    v9 = [(NSDate *)timestamp compare:timestamp];
  }

  if (!v9)
  {
    senderIdentifier = self->_senderIdentifier;
    senderIdentifier = [compareCopy senderIdentifier];
    v7 = senderIdentifier;
    if (senderIdentifier && senderIdentifier)
    {
      v9 = [(NSString *)senderIdentifier compare:senderIdentifier];
    }

    else
    {
      if (senderIdentifier)
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
      threadIdentifier = [compareCopy threadIdentifier];
      v7 = threadIdentifier;
      if (threadIdentifier && threadIdentifier)
      {
        v9 = [(NSString *)threadIdentifier compare:threadIdentifier];
      }

      else
      {
        if (threadIdentifier)
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
        spotlightCacheKey = [compareCopy spotlightCacheKey];
        v7 = spotlightCacheKey;
        if (spotlightCacheKey && spotlightCacheKey)
        {
          v9 = [(NSString *)spotlightCacheKey compare:spotlightCacheKey];
LABEL_37:

          if (v9)
          {
            goto LABEL_36;
          }

          isFromMe = self->_isFromMe;
          if (isFromMe != [compareCopy isFromMe])
          {
            v9 = -1;
            goto LABEL_36;
          }

          text = self->_text;
          text = [compareCopy text];
          v7 = text;
          if (text && text)
          {
            v9 = [(NSString *)text compare:text];
          }

          else
          {
            if (text)
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

        if (spotlightCacheKey)
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

- (void)enforceMaxContextLength:(unint64_t)length
{
  if (+[TIInputContextHistory isMail]&& [(NSString *)self->_text length]> length)
  {
    self->_text = 0;
  }

  else
  {
    self->_text = [(NSString *)self->_text _stringWithLongestWhitespaceDelimitedSuffixOfMaxLength:length];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
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

  [coderCopy encodeObject:self->_senderIdentifier forKey:@"senderIdentifier"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_senderName forKey:@"senderName"];
  [coderCopy encodeObject:self->_entryIdentifier forKey:@"entryIdentifier"];
  primaryRecipientIdentifiers = self->_primaryRecipientIdentifiers;
  v7 = objc_opt_class();
  v8 = TI_filteredSetWithClass(primaryRecipientIdentifiers, v7);
  [coderCopy encodeObject:v8 forKey:@"primaryRecipientIdentifiers"];

  secondaryRecipientIdentifiers = self->_secondaryRecipientIdentifiers;
  v10 = objc_opt_class();
  v11 = TI_filteredSetWithClass(secondaryRecipientIdentifiers, v10);
  [coderCopy encodeObject:v11 forKey:@"secondaryRecipientIdentifiers"];

  [coderCopy encodeInteger:self->_entryType forKey:@"entryType"];
  [coderCopy encodeObject:self->_threadIdentifier forKey:@"threadIdentifier"];
  [coderCopy encodeObject:self->_spotlightCacheKey forKey:@"spotlightCacheKey"];
  [coderCopy encodeBool:self->_isFromMe forKey:@"isFromMe"];
}

- (TIInputContextEntry)init
{
  v3.receiver = self;
  v3.super_class = TIInputContextEntry;
  return [(TIInputContextEntry *)&v3 init];
}

- (TIInputContextEntry)initWithCoder:(id)coder
{
  v34 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = TIInputContextEntry;
  v5 = [(TIInputContextEntry *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderIdentifier"];
    senderIdentifier = v5->_senderIdentifier;
    v5->_senderIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderName"];
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

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entryIdentifier"];
    entryIdentifier = v5->_entryIdentifier;
    v5->_entryIdentifier = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"primaryRecipientIdentifiers"];
    primaryRecipientIdentifiers = v5->_primaryRecipientIdentifiers;
    v5->_primaryRecipientIdentifiers = v19;

    v21 = [coderCopy decodeObjectOfClasses:v18 forKey:@"secondaryRecipientIdentifiers"];
    secondaryRecipientIdentifiers = v5->_secondaryRecipientIdentifiers;
    v5->_secondaryRecipientIdentifiers = v21;

    v5->_entryType = [coderCopy decodeIntegerForKey:@"entryType"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
    threadIdentifier = v5->_threadIdentifier;
    v5->_threadIdentifier = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spotlightCacheKey"];
    spotlightCacheKey = v5->_spotlightCacheKey;
    v5->_spotlightCacheKey = v25;

    v5->_isFromMe = [coderCopy decodeBoolForKey:@"isFromMe"];
  }

  return v5;
}

@end