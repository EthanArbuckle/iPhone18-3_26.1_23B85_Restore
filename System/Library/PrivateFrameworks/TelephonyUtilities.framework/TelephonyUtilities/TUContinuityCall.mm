@interface TUContinuityCall
- (NSArray)remoteMemberContactIdentifiers;
- (TUContinuityCall)initWithCoder:(id)a3;
- (TUContinuityCall)initWithUUID:(id)a3 conversationUUID:(id)a4 callGroupUUID:(id)a5 status:(int)a6 isMuted:(id)a7 isCameraEnabled:(id)a8 callInfo:(id)a9;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUContinuityCall

- (TUContinuityCall)initWithUUID:(id)a3 conversationUUID:(id)a4 callGroupUUID:(id)a5 status:(int)a6 isMuted:(id)a7 isCameraEnabled:(id)a8 callInfo:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v35.receiver = self;
  v35.super_class = TUContinuityCall;
  v21 = [(TUContinuityCall *)&v35 init];
  if (v21)
  {
    v22 = [v15 copy];
    uuid = v21->_uuid;
    v21->_uuid = v22;

    v24 = [v17 copy];
    callGroupUUID = v21->_callGroupUUID;
    v21->_callGroupUUID = v24;

    v26 = [v20 copy];
    callInfo = v21->_callInfo;
    v21->_callInfo = v26;

    v21->_status = a6;
    v28 = [v16 copy];
    conversationUUID = v21->_conversationUUID;
    v21->_conversationUUID = v28;

    v30 = [v18 copy];
    isMuted = v21->_isMuted;
    v21->_isMuted = v30;

    v32 = [v19 copy];
    isCameraEnabled = v21->_isCameraEnabled;
    v21->_isCameraEnabled = v32;
  }

  return v21;
}

- (NSArray)remoteMemberContactIdentifiers
{
  v2 = [(TUContinuityCallInfo *)self->_callInfo contactIdentifiersByHandle];
  v3 = [v2 allValues];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" status=%i", self->_status];
  [v6 appendFormat:@" conversationUUID=%@", self->_conversationUUID];
  [v6 appendFormat:@" isMuted=%@", self->_isMuted];
  [v6 appendFormat:@" isCameraEnabled=%@", self->_isCameraEnabled];
  [v6 appendFormat:@" callGroupUUID=%@", self->_callGroupUUID];
  v7 = [(TUContinuityCallInfo *)self->_callInfo description];
  [v6 appendFormat:@" callInfo=%@", v7];

  [v6 appendFormat:@">"];
  v8 = [v6 copy];

  return v8;
}

- (TUContinuityCall)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v26 = NSStringFromSelector(sel_uuid);
  v23 = [v4 decodeObjectOfClass:v5 forKey:v26];
  v6 = objc_opt_class();
  v25 = NSStringFromSelector(sel_conversationUUID);
  v7 = [v4 decodeObjectOfClass:v6 forKey:v25];
  v8 = objc_opt_class();
  v24 = NSStringFromSelector(sel_callGroupUUID);
  v21 = [v4 decodeObjectOfClass:v8 forKey:v24];
  v22 = NSStringFromSelector(sel_status);
  v9 = [v4 decodeIntForKey:v22];
  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_isMuted);
  v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_isCameraEnabled);
  v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_callInfo);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

  v19 = [(TUContinuityCall *)self initWithUUID:v23 conversationUUID:v7 callGroupUUID:v21 status:v9 isMuted:v12 isCameraEnabled:v15 callInfo:v18];
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  v6 = NSStringFromSelector(sel_uuid);
  [v5 encodeObject:uuid forKey:v6];

  callInfo = self->_callInfo;
  v8 = NSStringFromSelector(sel_callInfo);
  [v5 encodeObject:callInfo forKey:v8];

  status = self->_status;
  v10 = NSStringFromSelector(sel_status);
  [v5 encodeInt:status forKey:v10];

  conversationUUID = self->_conversationUUID;
  v12 = NSStringFromSelector(sel_conversationUUID);
  [v5 encodeObject:conversationUUID forKey:v12];

  isMuted = self->_isMuted;
  v14 = NSStringFromSelector(sel_isMuted);
  [v5 encodeObject:isMuted forKey:v14];

  isCameraEnabled = self->_isCameraEnabled;
  v16 = NSStringFromSelector(sel_isCameraEnabled);
  [v5 encodeObject:isCameraEnabled forKey:v16];

  callGroupUUID = self->_callGroupUUID;
  v18 = NSStringFromSelector(sel_callGroupUUID);
  [v5 encodeObject:callGroupUUID forKey:v18];
}

@end