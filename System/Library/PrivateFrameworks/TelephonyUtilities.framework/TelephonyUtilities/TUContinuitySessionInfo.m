@interface TUContinuitySessionInfo
- (TUContinuitySessionInfo)initWithCoder:(id)a3;
- (TUContinuitySessionInfo)initWithDevice:(id)a3 calls:(id)a4 activeConversations:(id)a5 recentCalls:(id)a6 recentCallsContacts:(id)a7 isDedicatedSession:(BOOL)a8 favorites:(id)a9 recentCallsInfos:(id)a10 callBlockedStates:(id)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUContinuitySessionInfo

- (TUContinuitySessionInfo)initWithDevice:(id)a3 calls:(id)a4 activeConversations:(id)a5 recentCalls:(id)a6 recentCallsContacts:(id)a7 isDedicatedSession:(BOOL)a8 favorites:(id)a9 recentCallsInfos:(id)a10 callBlockedStates:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v37.receiver = self;
  v37.super_class = TUContinuitySessionInfo;
  v23 = [(TUContinuitySessionInfo *)&v37 init];
  if (v23)
  {
    v24 = [v17 copy];
    device = v23->_device;
    v23->_device = v24;

    v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
    calls = v23->_calls;
    v23->_calls = v26;

    v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
    activeConversations = v23->_activeConversations;
    v23->_activeConversations = v28;

    v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
    recentCalls = v23->_recentCalls;
    v23->_recentCalls = v30;

    v32 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v21];
    recentCallsContacts = v23->_recentCallsContacts;
    v23->_recentCallsContacts = v32;

    v23->_isDedicatedSession = a8;
    v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
    favorites = v23->_favorites;
    v23->_favorites = v34;
  }

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" device=%@", self->_device];
  [v6 appendFormat:@" callsCount=%zd", -[NSArray count](self->_calls, "count")];
  [v6 appendFormat:@" activeConversationsCount=%zd", -[NSArray count](self->_activeConversations, "count")];
  [v6 appendFormat:@" recentCallsCount=%zd", -[NSArray count](self->_recentCalls, "count")];
  [v6 appendFormat:@" recentCallsContactsCount=%zd", -[NSDictionary count](self->_recentCallsContacts, "count")];
  [v6 appendFormat:@" isDedicatedSession=%d", self->_isDedicatedSession];
  [v6 appendFormat:@" favoritesCount=%zd", -[NSArray count](self->_favorites, "count")];
  [v6 appendFormat:@">"];
  v7 = [v6 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [TUContinuitySessionInfo allocWithZone:?];
  v6 = [(TUNearbyDeviceHandle *)self->_device copyWithZone:a3];
  v7 = [(NSArray *)self->_calls copyWithZone:a3];
  v8 = [(NSArray *)self->_activeConversations copyWithZone:a3];
  v9 = [(NSArray *)self->_recentCalls copyWithZone:a3];
  v10 = [(NSDictionary *)self->_recentCallsContacts copyWithZone:a3];
  isDedicatedSession = self->_isDedicatedSession;
  v12 = [(NSArray *)self->_favorites copyWithZone:a3];
  v13 = [(TUContinuitySessionInfo *)v5 initWithDevice:v6 calls:v7 activeConversations:v8 recentCalls:v9 recentCallsContacts:v10 isDedicatedSession:isDedicatedSession favorites:v12 recentCallsInfos:0 callBlockedStates:0];

  return v13;
}

- (TUContinuitySessionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_device);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_calls);
  v10 = [v4 decodeArrayOfObjectsOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_activeConversations);
  v13 = [v4 decodeArrayOfObjectsOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_recentCalls);
  v16 = [v4 decodeArrayOfObjectsOfClass:v14 forKey:v15];

  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_recentCallsContacts);
  v20 = [v4 decodeDictionaryWithKeysOfClass:v17 objectsOfClass:v18 forKey:v19];

  v21 = NSStringFromSelector(sel_isDedicatedSession);
  v22 = [v4 decodeBoolForKey:v21];

  v23 = objc_opt_class();
  v24 = NSStringFromSelector(sel_favorites);
  v25 = [v4 decodeArrayOfObjectsOfClass:v23 forKey:v24];

  v26 = [(TUContinuitySessionInfo *)self initWithDevice:v7 calls:v10 activeConversations:v13 recentCalls:v16 recentCallsContacts:v20 isDedicatedSession:v22 favorites:v25 recentCallsInfos:0 callBlockedStates:0];
  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  device = self->_device;
  v5 = a3;
  v6 = NSStringFromSelector(sel_device);
  [v5 encodeObject:device forKey:v6];

  calls = self->_calls;
  v8 = NSStringFromSelector(sel_calls);
  [v5 encodeObject:calls forKey:v8];

  activeConversations = self->_activeConversations;
  v10 = NSStringFromSelector(sel_activeConversations);
  [v5 encodeObject:activeConversations forKey:v10];

  recentCalls = self->_recentCalls;
  v12 = NSStringFromSelector(sel_recentCalls);
  [v5 encodeObject:recentCalls forKey:v12];

  recentCallsContacts = self->_recentCallsContacts;
  v14 = NSStringFromSelector(sel_recentCallsContacts);
  [v5 encodeObject:recentCallsContacts forKey:v14];

  isDedicatedSession = self->_isDedicatedSession;
  v16 = NSStringFromSelector(sel_isDedicatedSession);
  [v5 encodeBool:isDedicatedSession forKey:v16];

  favorites = self->_favorites;
  v18 = NSStringFromSelector(sel_favorites);
  [v5 encodeObject:favorites forKey:v18];
}

@end