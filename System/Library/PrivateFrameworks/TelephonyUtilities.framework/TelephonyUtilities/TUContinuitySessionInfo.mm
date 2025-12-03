@interface TUContinuitySessionInfo
- (TUContinuitySessionInfo)initWithCoder:(id)coder;
- (TUContinuitySessionInfo)initWithDevice:(id)device calls:(id)calls activeConversations:(id)conversations recentCalls:(id)recentCalls recentCallsContacts:(id)contacts isDedicatedSession:(BOOL)session favorites:(id)favorites recentCallsInfos:(id)self0 callBlockedStates:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUContinuitySessionInfo

- (TUContinuitySessionInfo)initWithDevice:(id)device calls:(id)calls activeConversations:(id)conversations recentCalls:(id)recentCalls recentCallsContacts:(id)contacts isDedicatedSession:(BOOL)session favorites:(id)favorites recentCallsInfos:(id)self0 callBlockedStates:(id)self1
{
  deviceCopy = device;
  callsCopy = calls;
  conversationsCopy = conversations;
  recentCallsCopy = recentCalls;
  contactsCopy = contacts;
  favoritesCopy = favorites;
  v37.receiver = self;
  v37.super_class = TUContinuitySessionInfo;
  v23 = [(TUContinuitySessionInfo *)&v37 init];
  if (v23)
  {
    v24 = [deviceCopy copy];
    device = v23->_device;
    v23->_device = v24;

    v26 = [MEMORY[0x1E695DEC8] arrayWithArray:callsCopy];
    calls = v23->_calls;
    v23->_calls = v26;

    v28 = [MEMORY[0x1E695DEC8] arrayWithArray:conversationsCopy];
    activeConversations = v23->_activeConversations;
    v23->_activeConversations = v28;

    v30 = [MEMORY[0x1E695DEC8] arrayWithArray:recentCallsCopy];
    recentCalls = v23->_recentCalls;
    v23->_recentCalls = v30;

    v32 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:contactsCopy];
    recentCallsContacts = v23->_recentCallsContacts;
    v23->_recentCallsContacts = v32;

    v23->_isDedicatedSession = session;
    v34 = [MEMORY[0x1E695DEC8] arrayWithArray:favoritesCopy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [TUContinuitySessionInfo allocWithZone:?];
  v6 = [(TUNearbyDeviceHandle *)self->_device copyWithZone:zone];
  v7 = [(NSArray *)self->_calls copyWithZone:zone];
  v8 = [(NSArray *)self->_activeConversations copyWithZone:zone];
  v9 = [(NSArray *)self->_recentCalls copyWithZone:zone];
  v10 = [(NSDictionary *)self->_recentCallsContacts copyWithZone:zone];
  isDedicatedSession = self->_isDedicatedSession;
  v12 = [(NSArray *)self->_favorites copyWithZone:zone];
  v13 = [(TUContinuitySessionInfo *)v5 initWithDevice:v6 calls:v7 activeConversations:v8 recentCalls:v9 recentCallsContacts:v10 isDedicatedSession:isDedicatedSession favorites:v12 recentCallsInfos:0 callBlockedStates:0];

  return v13;
}

- (TUContinuitySessionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_device);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_calls);
  v10 = [coderCopy decodeArrayOfObjectsOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_activeConversations);
  v13 = [coderCopy decodeArrayOfObjectsOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_recentCalls);
  v16 = [coderCopy decodeArrayOfObjectsOfClass:v14 forKey:v15];

  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_recentCallsContacts);
  v20 = [coderCopy decodeDictionaryWithKeysOfClass:v17 objectsOfClass:v18 forKey:v19];

  v21 = NSStringFromSelector(sel_isDedicatedSession);
  v22 = [coderCopy decodeBoolForKey:v21];

  v23 = objc_opt_class();
  v24 = NSStringFromSelector(sel_favorites);
  v25 = [coderCopy decodeArrayOfObjectsOfClass:v23 forKey:v24];

  v26 = [(TUContinuitySessionInfo *)self initWithDevice:v7 calls:v10 activeConversations:v13 recentCalls:v16 recentCallsContacts:v20 isDedicatedSession:v22 favorites:v25 recentCallsInfos:0 callBlockedStates:0];
  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  device = self->_device;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_device);
  [coderCopy encodeObject:device forKey:v6];

  calls = self->_calls;
  v8 = NSStringFromSelector(sel_calls);
  [coderCopy encodeObject:calls forKey:v8];

  activeConversations = self->_activeConversations;
  v10 = NSStringFromSelector(sel_activeConversations);
  [coderCopy encodeObject:activeConversations forKey:v10];

  recentCalls = self->_recentCalls;
  v12 = NSStringFromSelector(sel_recentCalls);
  [coderCopy encodeObject:recentCalls forKey:v12];

  recentCallsContacts = self->_recentCallsContacts;
  v14 = NSStringFromSelector(sel_recentCallsContacts);
  [coderCopy encodeObject:recentCallsContacts forKey:v14];

  isDedicatedSession = self->_isDedicatedSession;
  v16 = NSStringFromSelector(sel_isDedicatedSession);
  [coderCopy encodeBool:isDedicatedSession forKey:v16];

  favorites = self->_favorites;
  v18 = NSStringFromSelector(sel_favorites);
  [coderCopy encodeObject:favorites forKey:v18];
}

@end