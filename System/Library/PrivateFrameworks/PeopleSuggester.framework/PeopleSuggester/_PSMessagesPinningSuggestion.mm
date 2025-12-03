@interface _PSMessagesPinningSuggestion
- (BOOL)isEqual:(id)equal;
- (_PSMessagesPinningSuggestion)initWithChatGuid:(id)guid;
- (_PSMessagesPinningSuggestion)initWithCoder:(id)coder;
- (id)description;
@end

@implementation _PSMessagesPinningSuggestion

- (_PSMessagesPinningSuggestion)initWithChatGuid:(id)guid
{
  guidCopy = guid;
  v9.receiver = self;
  v9.super_class = _PSMessagesPinningSuggestion;
  v6 = [(_PSMessagesPinningSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chatGuid, guid);
  }

  return v7;
}

- (_PSMessagesPinningSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _PSMessagesPinningSuggestion;
  v5 = [(_PSMessagesPinningSuggestion *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chatGuid"];
    chatGuid = v5->_chatGuid;
    v5->_chatGuid = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    chatGuid = [(_PSMessagesPinningSuggestion *)self chatGuid];
    if (chatGuid && (v8 = chatGuid, [(_PSMessagesPinningSuggestion *)v6 chatGuid], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      chatGuid2 = [(_PSMessagesPinningSuggestion *)self chatGuid];
      chatGuid3 = [(_PSMessagesPinningSuggestion *)v6 chatGuid];
      v12 = [chatGuid2 isEqualToString:chatGuid3];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  chatGuid = [(_PSMessagesPinningSuggestion *)self chatGuid];
  v6 = [v3 stringWithFormat:@"<%@ %p> chatGuid: %@", v4, self, chatGuid];

  return v6;
}

@end