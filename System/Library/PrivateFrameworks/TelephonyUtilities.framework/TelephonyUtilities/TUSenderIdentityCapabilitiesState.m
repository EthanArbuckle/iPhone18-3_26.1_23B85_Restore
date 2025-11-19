@interface TUSenderIdentityCapabilitiesState
- (NSString)description;
- (TUSenderIdentityCapabilitiesState)initWithCoder:(id)a3;
- (TUSenderIdentityCapabilitiesState)initWithSenderIdentityUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)publiclyAccessibleCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUSenderIdentityCapabilitiesState

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p>\n", objc_opt_class(), self];
  [v3 appendString:@"CDMA:\n"];
  v4 = [(TUSenderIdentityCapabilitiesState *)self supportsSimultaneousVoiceAndData];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@"    supportsSimultaneousVoiceAndData: %@\n", v5];
  [v3 appendString:@"CT Capabilities State:\n"];
  v6 = [(TUSenderIdentityCapabilitiesState *)self csCallingCapabilitiesState];
  [v3 appendFormat:@"    csCallingCapabilitiesState: %@\n", v6];

  v7 = [(TUSenderIdentityCapabilitiesState *)self voLTECallingCapabilitiesState];
  [v3 appendFormat:@"    voLTECallingCapabilitiesState: %@\n", v7];

  v8 = [(TUSenderIdentityCapabilitiesState *)self wiFiCallingCapabilitiesState];
  [v3 appendFormat:@"    wiFiCallingCapabilitiesState: %@\n", v8];

  v9 = [(TUSenderIdentityCapabilitiesState *)self thumperCallingCapabilitiesState];
  [v3 appendFormat:@"    thumperCallingCapabilitiesState: %@\n", v9];

  return v3;
}

- (TUSenderIdentityCapabilitiesState)initWithSenderIdentityUUID:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = TUSenderIdentityCapabilitiesState;
  v6 = [(TUSenderIdentityCapabilitiesState *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_senderIdentityUUID, a3);
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

- (TUSenderIdentityCapabilitiesState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_senderIdentityUUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(TUSenderIdentityCapabilitiesState *)self initWithSenderIdentityUUID:v7];
  if (v8)
  {
    v9 = NSStringFromSelector(sel_supportsSimultaneousVoiceAndData);
    v8->_supportsSimultaneousVoiceAndData = [v4 decodeBoolForKey:v9];

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_csCallingCapabilitiesState);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    csCallingCapabilitiesState = v8->_csCallingCapabilitiesState;
    v8->_csCallingCapabilitiesState = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_voLTECallingCapabilitiesState);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    voLTECallingCapabilitiesState = v8->_voLTECallingCapabilitiesState;
    v8->_voLTECallingCapabilitiesState = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_wiFiCallingCapabilitiesState);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    wiFiCallingCapabilitiesState = v8->_wiFiCallingCapabilitiesState;
    v8->_wiFiCallingCapabilitiesState = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_thumperCallingCapabilitiesState);
    v24 = [v4 decodeObjectOfClass:v22 forKey:v23];
    thumperCallingCapabilitiesState = v8->_thumperCallingCapabilitiesState;
    v8->_thumperCallingCapabilitiesState = v24;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityCapabilitiesState *)self senderIdentityUUID];
  v6 = NSStringFromSelector(sel_senderIdentityUUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUSenderIdentityCapabilitiesState *)self supportsSimultaneousVoiceAndData];
  v8 = NSStringFromSelector(sel_supportsSimultaneousVoiceAndData);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(TUSenderIdentityCapabilitiesState *)self csCallingCapabilitiesState];
  v10 = NSStringFromSelector(sel_csCallingCapabilitiesState);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUSenderIdentityCapabilitiesState *)self voLTECallingCapabilitiesState];
  v12 = NSStringFromSelector(sel_voLTECallingCapabilitiesState);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUSenderIdentityCapabilitiesState *)self wiFiCallingCapabilitiesState];
  v14 = NSStringFromSelector(sel_wiFiCallingCapabilitiesState);
  [v4 encodeObject:v13 forKey:v14];

  v16 = [(TUSenderIdentityCapabilitiesState *)self thumperCallingCapabilitiesState];
  v15 = NSStringFromSelector(sel_thumperCallingCapabilitiesState);
  [v4 encodeObject:v16 forKey:v15];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(TUSenderIdentityCapabilitiesState *)self publiclyAccessibleCopyWithZone:?];
  v6 = [(TUSenderIdentityCapabilitiesState *)self csCallingCapabilitiesState];
  v7 = [v6 copyWithZone:a3];
  [v5 setCsCallingCapabilitiesState:v7];

  v8 = [(TUSenderIdentityCapabilitiesState *)self voLTECallingCapabilitiesState];
  v9 = [v8 copyWithZone:a3];
  [v5 setVoLTECallingCapabilitiesState:v9];

  v10 = [(TUSenderIdentityCapabilitiesState *)self wiFiCallingCapabilitiesState];
  v11 = [v10 copyWithZone:a3];
  [v5 setWiFiCallingCapabilitiesState:v11];

  v12 = [(TUSenderIdentityCapabilitiesState *)self thumperCallingCapabilitiesState];
  v13 = [v12 copyWithZone:a3];
  [v5 setThumperCallingCapabilitiesState:v13];

  return v5;
}

- (id)publiclyAccessibleCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(TUSenderIdentityCapabilitiesState *)self senderIdentityUUID];
  v7 = [v6 copyWithZone:a3];
  v8 = *(v5 + 16);
  *(v5 + 16) = v7;

  *(v5 + 8) = [(TUSenderIdentityCapabilitiesState *)self supportsSimultaneousVoiceAndData];
  v9 = [(TUSenderIdentityCapabilitiesState *)self csCallingCapabilitiesState];
  v10 = [v9 publiclyAccessibleCopyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(TUSenderIdentityCapabilitiesState *)self voLTECallingCapabilitiesState];
  v13 = [v12 publiclyAccessibleCopyWithZone:a3];
  v14 = *(v5 + 32);
  *(v5 + 32) = v13;

  v15 = [(TUSenderIdentityCapabilitiesState *)self wiFiCallingCapabilitiesState];
  v16 = [v15 publiclyAccessibleCopyWithZone:a3];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  v18 = [(TUSenderIdentityCapabilitiesState *)self thumperCallingCapabilitiesState];
  v19 = [v18 publiclyAccessibleCopyWithZone:a3];
  v20 = *(v5 + 48);
  *(v5 + 48) = v19;

  return v5;
}

@end