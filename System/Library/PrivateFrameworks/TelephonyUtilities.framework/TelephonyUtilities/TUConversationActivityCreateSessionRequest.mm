@interface TUConversationActivityCreateSessionRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationActivitySessionCreationRequest:(id)a3;
- (TUConversationActivityCreateSessionRequest)initWithCoder:(id)a3;
- (TUConversationActivityCreateSessionRequest)initWithMetadata:(id)a3 applicationContext:(id)a4 activityIdentifier:(id)a5 uuid:(id)a6 staticIdentifier:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationActivityCreateSessionRequest

- (TUConversationActivityCreateSessionRequest)initWithMetadata:(id)a3 applicationContext:(id)a4 activityIdentifier:(id)a5 uuid:(id)a6 staticIdentifier:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = TUConversationActivityCreateSessionRequest;
  v17 = [(TUConversationActivityCreateSessionRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_metadata, a3);
    objc_storeStrong(&v18->_applicationContext, a4);
    objc_storeStrong(&v18->_activityIdentifier, a5);
    objc_storeStrong(&v18->_UUID, a6);
    objc_storeStrong(&v18->_staticIdentifier, a7);
  }

  return v18;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];

  if (v4)
  {
    v5 = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
    [v3 appendFormat:@" activityIdentifier=%@", v5];
  }

  v6 = [(TUConversationActivityCreateSessionRequest *)self applicationContext];

  if (v6)
  {
    v7 = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
    [v3 appendFormat:@" applicationContext=%@", v7];
  }

  v8 = [(TUConversationActivityCreateSessionRequest *)self metadata];

  if (v8)
  {
    v9 = [(TUConversationActivityCreateSessionRequest *)self metadata];
    [v3 appendFormat:@" metadata=%@", v9];
  }

  v10 = [(TUConversationActivityCreateSessionRequest *)self UUID];

  if (v10)
  {
    v11 = [(TUConversationActivityCreateSessionRequest *)self UUID];
    [v3 appendFormat:@" UUID=%@", v11];
  }

  v12 = [(TUConversationActivityCreateSessionRequest *)self share];

  if (v12)
  {
    v13 = [(TUConversationActivityCreateSessionRequest *)self share];
    [v3 appendFormat:@" share=%@", v13];
  }

  v14 = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];

  if (v14)
  {
    v15 = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
    [v3 appendFormat:@" staticIdentifier=%@", v15];
  }

  [v3 appendString:@">"];
  v16 = [v3 copy];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivityCreateSessionRequest *)self isEqualToConversationActivitySessionCreationRequest:v4];

  return v5;
}

- (BOOL)isEqualToConversationActivitySessionCreationRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
  v6 = [v4 activityIdentifier];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
    v8 = [v4 applicationContext];
    if ([v7 isEqual:v8])
    {
      v9 = [(TUConversationActivityCreateSessionRequest *)self metadata];
      v10 = [v4 metadata];
      if ([v9 isEqual:v10])
      {
        v11 = [(TUConversationActivityCreateSessionRequest *)self UUID];
        v12 = [v4 UUID];
        if ([v11 isEqual:v12])
        {
          v21 = v11;
          v13 = [(TUConversationActivityCreateSessionRequest *)self share];
          v14 = [v4 share];
          v22 = v13;
          v15 = v13;
          v16 = v14;
          if (TUObjectsAreEqualOrNil(v15, v14))
          {
            v20 = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
            v19 = [v4 staticIdentifier];
            v17 = TUObjectsAreEqualOrNil(v20, v19);
          }

          else
          {
            v17 = 0;
          }

          v11 = v21;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
  v4 = [v3 hash];
  v5 = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUConversationActivityCreateSessionRequest *)self metadata];
  v8 = [v7 hash];
  v9 = [(TUConversationActivityCreateSessionRequest *)self UUID];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(TUConversationActivityCreateSessionRequest *)self share];
  v12 = [v11 hash];
  v13 = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUConversationActivityCreateSessionRequest *)self metadata];
  v6 = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
  v7 = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
  v8 = [(TUConversationActivityCreateSessionRequest *)self UUID];
  v9 = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
  v10 = [v4 initWithMetadata:v5 applicationContext:v6 activityIdentifier:v7 uuid:v8 staticIdentifier:v9];

  v11 = [(TUConversationActivityCreateSessionRequest *)self share];
  [v10 setShare:v11];

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TUMutableConversationActivityCreateSessionRequest alloc];
  v5 = [(TUConversationActivityCreateSessionRequest *)self metadata];
  v6 = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
  v7 = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
  v8 = [(TUConversationActivityCreateSessionRequest *)self UUID];
  v9 = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
  v10 = [(TUConversationActivityCreateSessionRequest *)v4 initWithMetadata:v5 applicationContext:v6 activityIdentifier:v7 uuid:v8 staticIdentifier:v9];

  v11 = [(TUConversationActivityCreateSessionRequest *)self share];
  [(TUConversationActivityCreateSessionRequest *)v10 setShare:v11];

  return v10;
}

- (TUConversationActivityCreateSessionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_activityIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_applicationContext);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromSelector(sel_metadata);
      v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

      if (v13)
      {
        v14 = objc_opt_class();
        v15 = NSStringFromSelector(sel_UUID);
        v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

        if (v16)
        {
          v17 = objc_opt_class();
          v18 = NSStringFromSelector(sel_staticIdentifier);
          v19 = [v4 decodeObjectOfClass:v17 forKey:v18];

          v20 = NSStringFromSelector(sel_share);
          v21 = [v4 containsValueForKey:v20];

          if (v21)
          {
            v30 = 0;
            v31 = &v30;
            v32 = 0x2050000000;
            v22 = getCKShareClass_softClass;
            v33 = getCKShareClass_softClass;
            if (!getCKShareClass_softClass)
            {
              v29[0] = MEMORY[0x1E69E9820];
              v29[1] = 3221225472;
              v29[2] = __getCKShareClass_block_invoke;
              v29[3] = &unk_1E7424CD8;
              v29[4] = &v30;
              __getCKShareClass_block_invoke(v29);
              v22 = v31[3];
            }

            v23 = v22;
            _Block_object_dispose(&v30, 8);
            v24 = NSStringFromSelector(sel_share);
            v25 = [v4 decodeObjectOfClass:v22 forKey:v24];
          }

          else
          {
            v25 = 0;
          }

          v27 = [(TUConversationActivityCreateSessionRequest *)self initWithMetadata:v13 applicationContext:v10 activityIdentifier:v7 uuid:v16 staticIdentifier:v19];
          [(TUConversationActivityCreateSessionRequest *)v27 setShare:v25];
          self = v27;

          v26 = self;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
  v6 = NSStringFromSelector(sel_activityIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
  v8 = NSStringFromSelector(sel_applicationContext);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationActivityCreateSessionRequest *)self metadata];
  v10 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUConversationActivityCreateSessionRequest *)self UUID];
  v12 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUConversationActivityCreateSessionRequest *)self share];
  v14 = NSStringFromSelector(sel_share);
  [v4 encodeObject:v13 forKey:v14];

  v16 = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
  v15 = NSStringFromSelector(sel_staticIdentifier);
  [v4 encodeObject:v16 forKey:v15];
}

@end