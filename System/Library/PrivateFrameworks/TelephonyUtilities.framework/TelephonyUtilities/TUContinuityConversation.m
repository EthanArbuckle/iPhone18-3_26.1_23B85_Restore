@interface TUContinuityConversation
- (TUContinuityConversation)initWithCoder:(id)a3;
- (TUContinuityConversation)initWithUUID:(id)a3 displayName:(id)a4 state:(id)a5 avMode:(unint64_t)a6 remoteMemberCount:(int64_t)a7 remoteMemberContactIdentifiers:(id)a8 letMeInRequestState:(int64_t)a9 handlesHash:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUContinuityConversation

- (TUContinuityConversation)initWithUUID:(id)a3 displayName:(id)a4 state:(id)a5 avMode:(unint64_t)a6 remoteMemberCount:(int64_t)a7 remoteMemberContactIdentifiers:(id)a8 letMeInRequestState:(int64_t)a9 handlesHash:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a10;
  v33.receiver = self;
  v33.super_class = TUContinuityConversation;
  v21 = [(TUContinuityConversation *)&v33 init];
  if (v21)
  {
    v22 = [v16 copy];
    uuid = v21->_uuid;
    v21->_uuid = v22;

    v24 = [v17 copy];
    displayName = v21->_displayName;
    v21->_displayName = v24;

    v26 = [v18 copy];
    state = v21->_state;
    v21->_state = v26;

    v21->_avMode = a6;
    v21->_remoteMemberCount = a7;
    v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
    remoteMemberContactIdentifiers = v21->_remoteMemberContactIdentifiers;
    v21->_remoteMemberContactIdentifiers = v28;

    v21->_letMeInRequestState = a9;
    v30 = [v20 copy];
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

- (TUContinuityConversation)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v27 = NSStringFromSelector(sel_uuid);
  v23 = [v3 decodeObjectOfClass:v4 forKey:v27];
  v5 = objc_opt_class();
  v26 = NSStringFromSelector(sel_displayName);
  v6 = [v3 decodeObjectOfClass:v5 forKey:v26];
  v7 = objc_opt_class();
  v24 = NSStringFromSelector(sel_state);
  v21 = [v3 decodeObjectOfClass:v7 forKey:v24];
  v22 = NSStringFromSelector(sel_avMode);
  v20 = [v3 decodeIntegerForKey:v22];
  v8 = NSStringFromSelector(sel_remoteMemberCount);
  v9 = [v3 decodeIntegerForKey:v8];
  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_remoteMemberContactIdentifiers);
  v12 = [v3 decodeArrayOfObjectsOfClass:v10 forKey:v11];
  v13 = NSStringFromSelector(sel_letMeInRequestState);
  v14 = [v3 decodeIntegerForKey:v13];
  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_handlesHash);
  v17 = [v3 decodeObjectOfClass:v15 forKey:v16];

  v18 = [(TUContinuityConversation *)self initWithUUID:v23 displayName:v6 state:v21 avMode:v20 remoteMemberCount:v9 remoteMemberContactIdentifiers:v12 letMeInRequestState:v14 handlesHash:v17];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  v6 = NSStringFromSelector(sel_uuid);
  [v5 encodeObject:uuid forKey:v6];

  displayName = self->_displayName;
  v8 = NSStringFromSelector(sel_displayName);
  [v5 encodeObject:displayName forKey:v8];

  state = self->_state;
  v10 = NSStringFromSelector(sel_state);
  [v5 encodeObject:state forKey:v10];

  avMode = self->_avMode;
  v12 = NSStringFromSelector(sel_avMode);
  [v5 encodeInteger:avMode forKey:v12];

  letMeInRequestState = self->_letMeInRequestState;
  v14 = NSStringFromSelector(sel_letMeInRequestState);
  [v5 encodeInteger:letMeInRequestState forKey:v14];

  remoteMemberCount = self->_remoteMemberCount;
  v16 = NSStringFromSelector(sel_remoteMemberCount);
  [v5 encodeInteger:remoteMemberCount forKey:v16];

  remoteMemberContactIdentifiers = self->_remoteMemberContactIdentifiers;
  v18 = NSStringFromSelector(sel_remoteMemberContactIdentifiers);
  [v5 encodeObject:remoteMemberContactIdentifiers forKey:v18];

  handlesHash = self->_handlesHash;
  v20 = NSStringFromSelector(sel_handlesHash);
  [v5 encodeObject:handlesHash forKey:v20];
}

@end