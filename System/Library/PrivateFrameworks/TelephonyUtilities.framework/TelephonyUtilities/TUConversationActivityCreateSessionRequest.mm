@interface TUConversationActivityCreateSessionRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationActivitySessionCreationRequest:(id)request;
- (TUConversationActivityCreateSessionRequest)initWithCoder:(id)coder;
- (TUConversationActivityCreateSessionRequest)initWithMetadata:(id)metadata applicationContext:(id)context activityIdentifier:(id)identifier uuid:(id)uuid staticIdentifier:(id)staticIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationActivityCreateSessionRequest

- (TUConversationActivityCreateSessionRequest)initWithMetadata:(id)metadata applicationContext:(id)context activityIdentifier:(id)identifier uuid:(id)uuid staticIdentifier:(id)staticIdentifier
{
  metadataCopy = metadata;
  contextCopy = context;
  identifierCopy = identifier;
  uuidCopy = uuid;
  staticIdentifierCopy = staticIdentifier;
  v21.receiver = self;
  v21.super_class = TUConversationActivityCreateSessionRequest;
  v17 = [(TUConversationActivityCreateSessionRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_metadata, metadata);
    objc_storeStrong(&v18->_applicationContext, context);
    objc_storeStrong(&v18->_activityIdentifier, identifier);
    objc_storeStrong(&v18->_UUID, uuid);
    objc_storeStrong(&v18->_staticIdentifier, staticIdentifier);
  }

  return v18;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  activityIdentifier = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];

  if (activityIdentifier)
  {
    activityIdentifier2 = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
    [v3 appendFormat:@" activityIdentifier=%@", activityIdentifier2];
  }

  applicationContext = [(TUConversationActivityCreateSessionRequest *)self applicationContext];

  if (applicationContext)
  {
    applicationContext2 = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
    [v3 appendFormat:@" applicationContext=%@", applicationContext2];
  }

  metadata = [(TUConversationActivityCreateSessionRequest *)self metadata];

  if (metadata)
  {
    metadata2 = [(TUConversationActivityCreateSessionRequest *)self metadata];
    [v3 appendFormat:@" metadata=%@", metadata2];
  }

  uUID = [(TUConversationActivityCreateSessionRequest *)self UUID];

  if (uUID)
  {
    uUID2 = [(TUConversationActivityCreateSessionRequest *)self UUID];
    [v3 appendFormat:@" UUID=%@", uUID2];
  }

  share = [(TUConversationActivityCreateSessionRequest *)self share];

  if (share)
  {
    share2 = [(TUConversationActivityCreateSessionRequest *)self share];
    [v3 appendFormat:@" share=%@", share2];
  }

  staticIdentifier = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];

  if (staticIdentifier)
  {
    staticIdentifier2 = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
    [v3 appendFormat:@" staticIdentifier=%@", staticIdentifier2];
  }

  [v3 appendString:@">"];
  v16 = [v3 copy];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivityCreateSessionRequest *)self isEqualToConversationActivitySessionCreationRequest:equalCopy];

  return v5;
}

- (BOOL)isEqualToConversationActivitySessionCreationRequest:(id)request
{
  requestCopy = request;
  activityIdentifier = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
  activityIdentifier2 = [requestCopy activityIdentifier];
  if ([activityIdentifier isEqual:activityIdentifier2])
  {
    applicationContext = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
    applicationContext2 = [requestCopy applicationContext];
    if ([applicationContext isEqual:applicationContext2])
    {
      metadata = [(TUConversationActivityCreateSessionRequest *)self metadata];
      metadata2 = [requestCopy metadata];
      if ([metadata isEqual:metadata2])
      {
        uUID = [(TUConversationActivityCreateSessionRequest *)self UUID];
        uUID2 = [requestCopy UUID];
        if ([uUID isEqual:uUID2])
        {
          v21 = uUID;
          share = [(TUConversationActivityCreateSessionRequest *)self share];
          share2 = [requestCopy share];
          v22 = share;
          v15 = share;
          v16 = share2;
          if (TUObjectsAreEqualOrNil(v15, share2))
          {
            staticIdentifier = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
            staticIdentifier2 = [requestCopy staticIdentifier];
            v17 = TUObjectsAreEqualOrNil(staticIdentifier, staticIdentifier2);
          }

          else
          {
            v17 = 0;
          }

          uUID = v21;
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
  activityIdentifier = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
  v4 = [activityIdentifier hash];
  applicationContext = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
  v6 = [applicationContext hash] ^ v4;
  metadata = [(TUConversationActivityCreateSessionRequest *)self metadata];
  v8 = [metadata hash];
  uUID = [(TUConversationActivityCreateSessionRequest *)self UUID];
  v10 = v6 ^ v8 ^ [uUID hash];
  share = [(TUConversationActivityCreateSessionRequest *)self share];
  v12 = [share hash];
  staticIdentifier = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
  v14 = v12 ^ [staticIdentifier hash];

  return v10 ^ v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  metadata = [(TUConversationActivityCreateSessionRequest *)self metadata];
  applicationContext = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
  activityIdentifier = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
  uUID = [(TUConversationActivityCreateSessionRequest *)self UUID];
  staticIdentifier = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
  v10 = [v4 initWithMetadata:metadata applicationContext:applicationContext activityIdentifier:activityIdentifier uuid:uUID staticIdentifier:staticIdentifier];

  share = [(TUConversationActivityCreateSessionRequest *)self share];
  [v10 setShare:share];

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TUMutableConversationActivityCreateSessionRequest alloc];
  metadata = [(TUConversationActivityCreateSessionRequest *)self metadata];
  applicationContext = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
  activityIdentifier = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
  uUID = [(TUConversationActivityCreateSessionRequest *)self UUID];
  staticIdentifier = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
  v10 = [(TUConversationActivityCreateSessionRequest *)v4 initWithMetadata:metadata applicationContext:applicationContext activityIdentifier:activityIdentifier uuid:uUID staticIdentifier:staticIdentifier];

  share = [(TUConversationActivityCreateSessionRequest *)self share];
  [(TUConversationActivityCreateSessionRequest *)v10 setShare:share];

  return v10;
}

- (TUConversationActivityCreateSessionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_activityIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_applicationContext);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromSelector(sel_metadata);
      v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

      if (v13)
      {
        v14 = objc_opt_class();
        v15 = NSStringFromSelector(sel_UUID);
        v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

        if (v16)
        {
          v17 = objc_opt_class();
          v18 = NSStringFromSelector(sel_staticIdentifier);
          v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];

          v20 = NSStringFromSelector(sel_share);
          v21 = [coderCopy containsValueForKey:v20];

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
            v25 = [coderCopy decodeObjectOfClass:v22 forKey:v24];
          }

          else
          {
            v25 = 0;
          }

          v27 = [(TUConversationActivityCreateSessionRequest *)self initWithMetadata:v13 applicationContext:v10 activityIdentifier:v7 uuid:v16 staticIdentifier:v19];
          [(TUConversationActivityCreateSessionRequest *)v27 setShare:v25];
          self = v27;

          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityIdentifier = [(TUConversationActivityCreateSessionRequest *)self activityIdentifier];
  v6 = NSStringFromSelector(sel_activityIdentifier);
  [coderCopy encodeObject:activityIdentifier forKey:v6];

  applicationContext = [(TUConversationActivityCreateSessionRequest *)self applicationContext];
  v8 = NSStringFromSelector(sel_applicationContext);
  [coderCopy encodeObject:applicationContext forKey:v8];

  metadata = [(TUConversationActivityCreateSessionRequest *)self metadata];
  v10 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:metadata forKey:v10];

  uUID = [(TUConversationActivityCreateSessionRequest *)self UUID];
  v12 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v12];

  share = [(TUConversationActivityCreateSessionRequest *)self share];
  v14 = NSStringFromSelector(sel_share);
  [coderCopy encodeObject:share forKey:v14];

  staticIdentifier = [(TUConversationActivityCreateSessionRequest *)self staticIdentifier];
  v15 = NSStringFromSelector(sel_staticIdentifier);
  [coderCopy encodeObject:staticIdentifier forKey:v15];
}

@end