@interface TUContinuityCallInfo
- (TUContinuityCallInfo)initWithCallIdentifier:(id)a3 callerIdSubstring:(id)a4 displayName:(id)a5 isBranded:(BOOL)a6 isEmergency:(BOOL)a7 contactIdentifiersByHandle:(id)a8 senderIdentityShortName:(id)a9 senderIdentityName:(id)a10 handlesHash:(id)a11 handlesBlocked:(BOOL)a12;
- (TUContinuityCallInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUContinuityCallInfo

- (TUContinuityCallInfo)initWithCallIdentifier:(id)a3 callerIdSubstring:(id)a4 displayName:(id)a5 isBranded:(BOOL)a6 isEmergency:(BOOL)a7 contactIdentifiersByHandle:(id)a8 senderIdentityShortName:(id)a9 senderIdentityName:(id)a10 handlesHash:(id)a11 handlesBlocked:(BOOL)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v41.receiver = self;
  v41.super_class = TUContinuityCallInfo;
  v25 = [(TUContinuityCallInfo *)&v41 init];
  if (v25)
  {
    v26 = [v18 copy];
    callIdentifier = v25->_callIdentifier;
    v25->_callIdentifier = v26;

    v28 = [v19 copy];
    callerIdSubstring = v25->_callerIdSubstring;
    v25->_callerIdSubstring = v28;

    v30 = [v20 copy];
    displayName = v25->_displayName;
    v25->_displayName = v30;

    v25->_isBranded = a6;
    v25->_isEmergency = a7;
    v32 = [v21 copy];
    contactIdentifiersByHandle = v25->_contactIdentifiersByHandle;
    v25->_contactIdentifiersByHandle = v32;

    v34 = [v22 copy];
    senderIdentityShortName = v25->_senderIdentityShortName;
    v25->_senderIdentityShortName = v34;

    v36 = [v23 copy];
    senderIdentityName = v25->_senderIdentityName;
    v25->_senderIdentityName = v36;

    v38 = [v24 copy];
    handlesHash = v25->_handlesHash;
    v25->_handlesHash = v38;

    v25->_handlesBlocked = a12;
  }

  return v25;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" callIdentifier=%@", self->_callIdentifier];
  [v6 appendFormat:@" displayName=%@", self->_displayName];
  [v6 appendFormat:@" callerIdSubstring=%@", self->_callerIdSubstring];
  if (self->_isBranded)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v6 appendFormat:@" isBranded=%@", v7];
  if (self->_isEmergency)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v6 appendFormat:@" isEmergency=%@", v8];
  [v6 appendFormat:@" contactIdentifiersByHandle=%@", self->_contactIdentifiersByHandle];
  [v6 appendFormat:@" senderIdentityShortName=%@", self->_senderIdentityShortName];
  [v6 appendFormat:@" senderIdentityName=%@", self->_senderIdentityName];
  if (self->_handlesBlocked)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v6 appendFormat:@" handlesBlocked=%@", v9];
  [v6 appendFormat:@">"];
  v10 = [v6 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUContinuityCallInfo allocWithZone:a3];
  LOBYTE(v6) = self->_handlesBlocked;
  return [(TUContinuityCallInfo *)v4 initWithCallIdentifier:self->_callIdentifier callerIdSubstring:self->_callerIdSubstring displayName:self->_displayName isBranded:self->_isBranded isEmergency:self->_isEmergency contactIdentifiersByHandle:self->_contactIdentifiersByHandle senderIdentityShortName:self->_senderIdentityShortName senderIdentityName:self->_senderIdentityName handlesHash:self->_handlesHash handlesBlocked:v6];
}

- (TUContinuityCallInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v35 = NSStringFromSelector(sel_callIdentifier);
  v31 = [v4 decodeObjectOfClass:v5 forKey:v35];
  v6 = objc_opt_class();
  v34 = NSStringFromSelector(sel_callerIdSubstring);
  v29 = [v4 decodeObjectOfClass:v6 forKey:v34];
  v7 = objc_opt_class();
  v33 = NSStringFromSelector(sel_displayName);
  v28 = [v4 decodeObjectOfClass:v7 forKey:v33];
  v32 = NSStringFromSelector(sel_isBranded);
  v26 = [v4 decodeBoolForKey:v32];
  v30 = NSStringFromSelector(sel_isEmergency);
  v23 = [v4 decodeBoolForKey:v30];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v25 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v24 = NSStringFromSelector(sel_contactIdentifiersByHandle);
  v10 = [v4 decodeObjectOfClasses:v25 forKey:v24];
  v11 = objc_opt_class();
  v22 = NSStringFromSelector(sel_senderIdentityShortName);
  v12 = [v4 decodeObjectOfClass:v11 forKey:v22];
  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_senderIdentityName);
  v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_handlesHash);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
  v19 = NSStringFromSelector(sel_handlesBlocked);
  LOBYTE(v16) = [v4 decodeBoolForKey:v19];

  LOBYTE(v21) = v16;
  v27 = [(TUContinuityCallInfo *)self initWithCallIdentifier:v31 callerIdSubstring:v29 displayName:v28 isBranded:v26 isEmergency:v23 contactIdentifiersByHandle:v10 senderIdentityShortName:v12 senderIdentityName:v15 handlesHash:v18 handlesBlocked:v21];

  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  callIdentifier = self->_callIdentifier;
  v5 = a3;
  v6 = NSStringFromSelector(sel_callIdentifier);
  [v5 encodeObject:callIdentifier forKey:v6];

  callerIdSubstring = self->_callerIdSubstring;
  v8 = NSStringFromSelector(sel_callerIdSubstring);
  [v5 encodeObject:callerIdSubstring forKey:v8];

  displayName = self->_displayName;
  v10 = NSStringFromSelector(sel_displayName);
  [v5 encodeObject:displayName forKey:v10];

  isBranded = self->_isBranded;
  v12 = NSStringFromSelector(sel_isBranded);
  [v5 encodeBool:isBranded forKey:v12];

  isEmergency = self->_isEmergency;
  v14 = NSStringFromSelector(sel_isEmergency);
  [v5 encodeBool:isEmergency forKey:v14];

  contactIdentifiersByHandle = self->_contactIdentifiersByHandle;
  v16 = NSStringFromSelector(sel_contactIdentifiersByHandle);
  [v5 encodeObject:contactIdentifiersByHandle forKey:v16];

  senderIdentityShortName = self->_senderIdentityShortName;
  v18 = NSStringFromSelector(sel_senderIdentityShortName);
  [v5 encodeObject:senderIdentityShortName forKey:v18];

  senderIdentityName = self->_senderIdentityName;
  v20 = NSStringFromSelector(sel_senderIdentityName);
  [v5 encodeObject:senderIdentityName forKey:v20];

  handlesHash = self->_handlesHash;
  v22 = NSStringFromSelector(sel_handlesHash);
  [v5 encodeObject:handlesHash forKey:v22];

  handlesBlocked = self->_handlesBlocked;
  v24 = NSStringFromSelector(sel_handlesBlocked);
  [v5 encodeBool:handlesBlocked forKey:v24];
}

@end