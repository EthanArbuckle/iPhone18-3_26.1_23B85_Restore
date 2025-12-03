@interface TUContinuityConversation
- (TUContinuityConversation)initWithCoder:(id)coder;
- (TUContinuityConversation)initWithUUID:(id)d displayName:(id)name state:(id)state avMode:(unint64_t)mode remoteMemberCount:(int64_t)count remoteMemberContactIdentifiers:(id)identifiers letMeInRequestState:(int64_t)requestState handlesHash:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUContinuityConversation

- (TUContinuityConversation)initWithUUID:(id)d displayName:(id)name state:(id)state avMode:(unint64_t)mode remoteMemberCount:(int64_t)count remoteMemberContactIdentifiers:(id)identifiers letMeInRequestState:(int64_t)requestState handlesHash:(id)self0
{
  dCopy = d;
  nameCopy = name;
  stateCopy = state;
  identifiersCopy = identifiers;
  hashCopy = hash;
  v33.receiver = self;
  v33.super_class = TUContinuityConversation;
  v21 = [(TUContinuityConversation *)&v33 init];
  if (v21)
  {
    v22 = [dCopy copy];
    uuid = v21->_uuid;
    v21->_uuid = v22;

    v24 = [nameCopy copy];
    displayName = v21->_displayName;
    v21->_displayName = v24;

    v26 = [stateCopy copy];
    state = v21->_state;
    v21->_state = v26;

    v21->_avMode = mode;
    v21->_remoteMemberCount = count;
    v28 = [MEMORY[0x1E695DEC8] arrayWithArray:identifiersCopy];
    remoteMemberContactIdentifiers = v21->_remoteMemberContactIdentifiers;
    v21->_remoteMemberContactIdentifiers = v28;

    v21->_letMeInRequestState = requestState;
    v30 = [hashCopy copy];
    handlesHash = v21->_handlesHash;
    v21->_handlesHash = v30;
  }

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" uuid=%@", self->_uuid];
  [v6 appendFormat:@" displayName=%@", self->_displayName];
  [v6 appendFormat:@" state=%@", self->_state];
  [v6 appendFormat:@" avMode=%zd", self->_avMode];
  [v6 appendFormat:@" letMeInRequestState=%zd", self->_letMeInRequestState];
  [v6 appendFormat:@" remoteMemberCount=%zd", self->_remoteMemberCount];
  [v6 appendFormat:@" remoteMemberContactIdentifiersCount=%zd", -[NSArray count](self->_remoteMemberContactIdentifiers, "count")];
  [v6 appendFormat:@">"];
  v7 = [v6 copy];

  return v7;
}

- (TUContinuityConversation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v27 = NSStringFromSelector(sel_uuid);
  v23 = [coderCopy decodeObjectOfClass:v4 forKey:v27];
  v5 = objc_opt_class();
  v26 = NSStringFromSelector(sel_displayName);
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:v26];
  v7 = objc_opt_class();
  v24 = NSStringFromSelector(sel_state);
  v21 = [coderCopy decodeObjectOfClass:v7 forKey:v24];
  v22 = NSStringFromSelector(sel_avMode);
  v20 = [coderCopy decodeIntegerForKey:v22];
  v8 = NSStringFromSelector(sel_remoteMemberCount);
  v9 = [coderCopy decodeIntegerForKey:v8];
  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_remoteMemberContactIdentifiers);
  v12 = [coderCopy decodeArrayOfObjectsOfClass:v10 forKey:v11];
  v13 = NSStringFromSelector(sel_letMeInRequestState);
  v14 = [coderCopy decodeIntegerForKey:v13];
  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_handlesHash);
  v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];

  v18 = [(TUContinuityConversation *)self initWithUUID:v23 displayName:v6 state:v21 avMode:v20 remoteMemberCount:v9 remoteMemberContactIdentifiers:v12 letMeInRequestState:v14 handlesHash:v17];
  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_uuid);
  [coderCopy encodeObject:uuid forKey:v6];

  displayName = self->_displayName;
  v8 = NSStringFromSelector(sel_displayName);
  [coderCopy encodeObject:displayName forKey:v8];

  state = self->_state;
  v10 = NSStringFromSelector(sel_state);
  [coderCopy encodeObject:state forKey:v10];

  avMode = self->_avMode;
  v12 = NSStringFromSelector(sel_avMode);
  [coderCopy encodeInteger:avMode forKey:v12];

  letMeInRequestState = self->_letMeInRequestState;
  v14 = NSStringFromSelector(sel_letMeInRequestState);
  [coderCopy encodeInteger:letMeInRequestState forKey:v14];

  remoteMemberCount = self->_remoteMemberCount;
  v16 = NSStringFromSelector(sel_remoteMemberCount);
  [coderCopy encodeInteger:remoteMemberCount forKey:v16];

  remoteMemberContactIdentifiers = self->_remoteMemberContactIdentifiers;
  v18 = NSStringFromSelector(sel_remoteMemberContactIdentifiers);
  [coderCopy encodeObject:remoteMemberContactIdentifiers forKey:v18];

  handlesHash = self->_handlesHash;
  v20 = NSStringFromSelector(sel_handlesHash);
  [coderCopy encodeObject:handlesHash forKey:v20];
}

@end