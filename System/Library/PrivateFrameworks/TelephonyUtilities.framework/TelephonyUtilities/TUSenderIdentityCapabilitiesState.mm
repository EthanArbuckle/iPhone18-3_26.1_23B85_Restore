@interface TUSenderIdentityCapabilitiesState
- (NSString)description;
- (TUSenderIdentityCapabilitiesState)initWithCoder:(id)coder;
- (TUSenderIdentityCapabilitiesState)initWithSenderIdentityUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)publiclyAccessibleCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUSenderIdentityCapabilitiesState

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p>\n", objc_opt_class(), self];
  [v3 appendString:@"CDMA:\n"];
  supportsSimultaneousVoiceAndData = [(TUSenderIdentityCapabilitiesState *)self supportsSimultaneousVoiceAndData];
  v5 = @"NO";
  if (supportsSimultaneousVoiceAndData)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@"    supportsSimultaneousVoiceAndData: %@\n", v5];
  [v3 appendString:@"CT Capabilities State:\n"];
  csCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self csCallingCapabilitiesState];
  [v3 appendFormat:@"    csCallingCapabilitiesState: %@\n", csCallingCapabilitiesState];

  voLTECallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self voLTECallingCapabilitiesState];
  [v3 appendFormat:@"    voLTECallingCapabilitiesState: %@\n", voLTECallingCapabilitiesState];

  wiFiCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self wiFiCallingCapabilitiesState];
  [v3 appendFormat:@"    wiFiCallingCapabilitiesState: %@\n", wiFiCallingCapabilitiesState];

  thumperCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self thumperCallingCapabilitiesState];
  [v3 appendFormat:@"    thumperCallingCapabilitiesState: %@\n", thumperCallingCapabilitiesState];

  return v3;
}

- (TUSenderIdentityCapabilitiesState)initWithSenderIdentityUUID:(id)d
{
  dCopy = d;
  v17.receiver = self;
  v17.super_class = TUSenderIdentityCapabilitiesState;
  v6 = [(TUSenderIdentityCapabilitiesState *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_senderIdentityUUID, d);
    v8 = objc_alloc_init(TUCTCapabilitiesState);
    csCallingCapabilitiesState = v7->_csCallingCapabilitiesState;
    v7->_csCallingCapabilitiesState = v8;

    v10 = objc_alloc_init(TUCTCapabilitiesState);
    voLTECallingCapabilitiesState = v7->_voLTECallingCapabilitiesState;
    v7->_voLTECallingCapabilitiesState = v10;

    v12 = objc_alloc_init(TUCTCapabilitiesState);
    wiFiCallingCapabilitiesState = v7->_wiFiCallingCapabilitiesState;
    v7->_wiFiCallingCapabilitiesState = v12;

    v14 = objc_alloc_init(TUThumperCTCapabilitiesState);
    thumperCallingCapabilitiesState = v7->_thumperCallingCapabilitiesState;
    v7->_thumperCallingCapabilitiesState = v14;
  }

  return v7;
}

- (TUSenderIdentityCapabilitiesState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_senderIdentityUUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(TUSenderIdentityCapabilitiesState *)self initWithSenderIdentityUUID:v7];
  if (v8)
  {
    v9 = NSStringFromSelector(sel_supportsSimultaneousVoiceAndData);
    v8->_supportsSimultaneousVoiceAndData = [coderCopy decodeBoolForKey:v9];

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_csCallingCapabilitiesState);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    csCallingCapabilitiesState = v8->_csCallingCapabilitiesState;
    v8->_csCallingCapabilitiesState = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_voLTECallingCapabilitiesState);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    voLTECallingCapabilitiesState = v8->_voLTECallingCapabilitiesState;
    v8->_voLTECallingCapabilitiesState = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_wiFiCallingCapabilitiesState);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    wiFiCallingCapabilitiesState = v8->_wiFiCallingCapabilitiesState;
    v8->_wiFiCallingCapabilitiesState = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_thumperCallingCapabilitiesState);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    thumperCallingCapabilitiesState = v8->_thumperCallingCapabilitiesState;
    v8->_thumperCallingCapabilitiesState = v24;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  senderIdentityUUID = [(TUSenderIdentityCapabilitiesState *)self senderIdentityUUID];
  v6 = NSStringFromSelector(sel_senderIdentityUUID);
  [coderCopy encodeObject:senderIdentityUUID forKey:v6];

  supportsSimultaneousVoiceAndData = [(TUSenderIdentityCapabilitiesState *)self supportsSimultaneousVoiceAndData];
  v8 = NSStringFromSelector(sel_supportsSimultaneousVoiceAndData);
  [coderCopy encodeBool:supportsSimultaneousVoiceAndData forKey:v8];

  csCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self csCallingCapabilitiesState];
  v10 = NSStringFromSelector(sel_csCallingCapabilitiesState);
  [coderCopy encodeObject:csCallingCapabilitiesState forKey:v10];

  voLTECallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self voLTECallingCapabilitiesState];
  v12 = NSStringFromSelector(sel_voLTECallingCapabilitiesState);
  [coderCopy encodeObject:voLTECallingCapabilitiesState forKey:v12];

  wiFiCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self wiFiCallingCapabilitiesState];
  v14 = NSStringFromSelector(sel_wiFiCallingCapabilitiesState);
  [coderCopy encodeObject:wiFiCallingCapabilitiesState forKey:v14];

  thumperCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self thumperCallingCapabilitiesState];
  v15 = NSStringFromSelector(sel_thumperCallingCapabilitiesState);
  [coderCopy encodeObject:thumperCallingCapabilitiesState forKey:v15];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(TUSenderIdentityCapabilitiesState *)self publiclyAccessibleCopyWithZone:?];
  csCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self csCallingCapabilitiesState];
  v7 = [csCallingCapabilitiesState copyWithZone:zone];
  [v5 setCsCallingCapabilitiesState:v7];

  voLTECallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self voLTECallingCapabilitiesState];
  v9 = [voLTECallingCapabilitiesState copyWithZone:zone];
  [v5 setVoLTECallingCapabilitiesState:v9];

  wiFiCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self wiFiCallingCapabilitiesState];
  v11 = [wiFiCallingCapabilitiesState copyWithZone:zone];
  [v5 setWiFiCallingCapabilitiesState:v11];

  thumperCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self thumperCallingCapabilitiesState];
  v13 = [thumperCallingCapabilitiesState copyWithZone:zone];
  [v5 setThumperCallingCapabilitiesState:v13];

  return v5;
}

- (id)publiclyAccessibleCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  senderIdentityUUID = [(TUSenderIdentityCapabilitiesState *)self senderIdentityUUID];
  v7 = [senderIdentityUUID copyWithZone:zone];
  v8 = *(v5 + 16);
  *(v5 + 16) = v7;

  *(v5 + 8) = [(TUSenderIdentityCapabilitiesState *)self supportsSimultaneousVoiceAndData];
  csCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self csCallingCapabilitiesState];
  v10 = [csCallingCapabilitiesState publiclyAccessibleCopyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  voLTECallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self voLTECallingCapabilitiesState];
  v13 = [voLTECallingCapabilitiesState publiclyAccessibleCopyWithZone:zone];
  v14 = *(v5 + 32);
  *(v5 + 32) = v13;

  wiFiCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self wiFiCallingCapabilitiesState];
  v16 = [wiFiCallingCapabilitiesState publiclyAccessibleCopyWithZone:zone];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  thumperCallingCapabilitiesState = [(TUSenderIdentityCapabilitiesState *)self thumperCallingCapabilitiesState];
  v19 = [thumperCallingCapabilitiesState publiclyAccessibleCopyWithZone:zone];
  v20 = *(v5 + 48);
  *(v5 + 48) = v19;

  return v5;
}

@end