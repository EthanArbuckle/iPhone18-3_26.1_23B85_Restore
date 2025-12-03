@interface TUContinuityCall
- (NSArray)remoteMemberContactIdentifiers;
- (TUContinuityCall)initWithCoder:(id)coder;
- (TUContinuityCall)initWithUUID:(id)d conversationUUID:(id)iD callGroupUUID:(id)uID status:(int)status isMuted:(id)muted isCameraEnabled:(id)enabled callInfo:(id)info;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUContinuityCall

- (TUContinuityCall)initWithUUID:(id)d conversationUUID:(id)iD callGroupUUID:(id)uID status:(int)status isMuted:(id)muted isCameraEnabled:(id)enabled callInfo:(id)info
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  mutedCopy = muted;
  enabledCopy = enabled;
  infoCopy = info;
  v35.receiver = self;
  v35.super_class = TUContinuityCall;
  v21 = [(TUContinuityCall *)&v35 init];
  if (v21)
  {
    v22 = [dCopy copy];
    uuid = v21->_uuid;
    v21->_uuid = v22;

    v24 = [uIDCopy copy];
    callGroupUUID = v21->_callGroupUUID;
    v21->_callGroupUUID = v24;

    v26 = [infoCopy copy];
    callInfo = v21->_callInfo;
    v21->_callInfo = v26;

    v21->_status = status;
    v28 = [iDCopy copy];
    conversationUUID = v21->_conversationUUID;
    v21->_conversationUUID = v28;

    v30 = [mutedCopy copy];
    isMuted = v21->_isMuted;
    v21->_isMuted = v30;

    v32 = [enabledCopy copy];
    isCameraEnabled = v21->_isCameraEnabled;
    v21->_isCameraEnabled = v32;
  }

  return v21;
}

- (NSArray)remoteMemberContactIdentifiers
{
  contactIdentifiersByHandle = [(TUContinuityCallInfo *)self->_callInfo contactIdentifiersByHandle];
  allValues = [contactIdentifiersByHandle allValues];

  return allValues;
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

- (TUContinuityCall)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v26 = NSStringFromSelector(sel_uuid);
  v23 = [coderCopy decodeObjectOfClass:v5 forKey:v26];
  v6 = objc_opt_class();
  v25 = NSStringFromSelector(sel_conversationUUID);
  v7 = [coderCopy decodeObjectOfClass:v6 forKey:v25];
  v8 = objc_opt_class();
  v24 = NSStringFromSelector(sel_callGroupUUID);
  v21 = [coderCopy decodeObjectOfClass:v8 forKey:v24];
  v22 = NSStringFromSelector(sel_status);
  v9 = [coderCopy decodeIntForKey:v22];
  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_isMuted);
  v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_isCameraEnabled);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_callInfo);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = [(TUContinuityCall *)self initWithUUID:v23 conversationUUID:v7 callGroupUUID:v21 status:v9 isMuted:v12 isCameraEnabled:v15 callInfo:v18];
  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_uuid);
  [coderCopy encodeObject:uuid forKey:v6];

  callInfo = self->_callInfo;
  v8 = NSStringFromSelector(sel_callInfo);
  [coderCopy encodeObject:callInfo forKey:v8];

  status = self->_status;
  v10 = NSStringFromSelector(sel_status);
  [coderCopy encodeInt:status forKey:v10];

  conversationUUID = self->_conversationUUID;
  v12 = NSStringFromSelector(sel_conversationUUID);
  [coderCopy encodeObject:conversationUUID forKey:v12];

  isMuted = self->_isMuted;
  v14 = NSStringFromSelector(sel_isMuted);
  [coderCopy encodeObject:isMuted forKey:v14];

  isCameraEnabled = self->_isCameraEnabled;
  v16 = NSStringFromSelector(sel_isCameraEnabled);
  [coderCopy encodeObject:isCameraEnabled forKey:v16];

  callGroupUUID = self->_callGroupUUID;
  v18 = NSStringFromSelector(sel_callGroupUUID);
  [coderCopy encodeObject:callGroupUUID forKey:v18];
}

@end