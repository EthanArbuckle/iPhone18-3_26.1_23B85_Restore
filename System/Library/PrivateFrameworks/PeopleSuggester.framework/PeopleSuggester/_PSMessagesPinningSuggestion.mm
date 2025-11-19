@interface _PSMessagesPinningSuggestion
- (BOOL)isEqual:(id)a3;
- (_PSMessagesPinningSuggestion)initWithChatGuid:(id)a3;
- (_PSMessagesPinningSuggestion)initWithCoder:(id)a3;
- (id)description;
@end

@implementation _PSMessagesPinningSuggestion

- (_PSMessagesPinningSuggestion)initWithChatGuid:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PSMessagesPinningSuggestion;
  v6 = [(_PSMessagesPinningSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chatGuid, a3);
  }

  return v7;
}

- (_PSMessagesPinningSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _PSMessagesPinningSuggestion;
  v5 = [(_PSMessagesPinningSuggestion *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chatGuid"];
    chatGuid = v5->_chatGuid;
    v5->_chatGuid = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(_PSMessagesPinningSuggestion *)self chatGuid];
    if (v7 && (v8 = v7, [(_PSMessagesPinningSuggestion *)v6 chatGuid], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      v10 = [(_PSMessagesPinningSuggestion *)self chatGuid];
      v11 = [(_PSMessagesPinningSuggestion *)v6 chatGuid];
      v12 = [v10 isEqualToString:v11];
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
  v5 = [(_PSMessagesPinningSuggestion *)self chatGuid];
  v6 = [v3 stringWithFormat:@"<%@ %p> chatGuid: %@", v4, self, v5];

  return v6;
}

@end