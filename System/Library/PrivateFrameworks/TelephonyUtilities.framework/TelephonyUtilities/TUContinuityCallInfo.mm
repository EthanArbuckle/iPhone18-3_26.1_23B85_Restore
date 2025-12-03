@interface TUContinuityCallInfo
- (TUContinuityCallInfo)initWithCallIdentifier:(id)identifier callerIdSubstring:(id)substring displayName:(id)name isBranded:(BOOL)branded isEmergency:(BOOL)emergency contactIdentifiersByHandle:(id)handle senderIdentityShortName:(id)shortName senderIdentityName:(id)self0 handlesHash:(id)self1 handlesBlocked:(BOOL)self2;
- (TUContinuityCallInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUContinuityCallInfo

- (TUContinuityCallInfo)initWithCallIdentifier:(id)identifier callerIdSubstring:(id)substring displayName:(id)name isBranded:(BOOL)branded isEmergency:(BOOL)emergency contactIdentifiersByHandle:(id)handle senderIdentityShortName:(id)shortName senderIdentityName:(id)self0 handlesHash:(id)self1 handlesBlocked:(BOOL)self2
{
  identifierCopy = identifier;
  substringCopy = substring;
  nameCopy = name;
  handleCopy = handle;
  shortNameCopy = shortName;
  identityNameCopy = identityName;
  hashCopy = hash;
  v41.receiver = self;
  v41.super_class = TUContinuityCallInfo;
  v25 = [(TUContinuityCallInfo *)&v41 init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    callIdentifier = v25->_callIdentifier;
    v25->_callIdentifier = v26;

    v28 = [substringCopy copy];
    callerIdSubstring = v25->_callerIdSubstring;
    v25->_callerIdSubstring = v28;

    v30 = [nameCopy copy];
    displayName = v25->_displayName;
    v25->_displayName = v30;

    v25->_isBranded = branded;
    v25->_isEmergency = emergency;
    v32 = [handleCopy copy];
    contactIdentifiersByHandle = v25->_contactIdentifiersByHandle;
    v25->_contactIdentifiersByHandle = v32;

    v34 = [shortNameCopy copy];
    senderIdentityShortName = v25->_senderIdentityShortName;
    v25->_senderIdentityShortName = v34;

    v36 = [identityNameCopy copy];
    senderIdentityName = v25->_senderIdentityName;
    v25->_senderIdentityName = v36;

    v38 = [hashCopy copy];
    handlesHash = v25->_handlesHash;
    v25->_handlesHash = v38;

    v25->_handlesBlocked = blocked;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUContinuityCallInfo allocWithZone:zone];
  LOBYTE(v6) = self->_handlesBlocked;
  return [(TUContinuityCallInfo *)v4 initWithCallIdentifier:self->_callIdentifier callerIdSubstring:self->_callerIdSubstring displayName:self->_displayName isBranded:self->_isBranded isEmergency:self->_isEmergency contactIdentifiersByHandle:self->_contactIdentifiersByHandle senderIdentityShortName:self->_senderIdentityShortName senderIdentityName:self->_senderIdentityName handlesHash:self->_handlesHash handlesBlocked:v6];
}

- (TUContinuityCallInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v35 = NSStringFromSelector(sel_callIdentifier);
  v31 = [coderCopy decodeObjectOfClass:v5 forKey:v35];
  v6 = objc_opt_class();
  v34 = NSStringFromSelector(sel_callerIdSubstring);
  v29 = [coderCopy decodeObjectOfClass:v6 forKey:v34];
  v7 = objc_opt_class();
  v33 = NSStringFromSelector(sel_displayName);
  v28 = [coderCopy decodeObjectOfClass:v7 forKey:v33];
  v32 = NSStringFromSelector(sel_isBranded);
  v26 = [coderCopy decodeBoolForKey:v32];
  v30 = NSStringFromSelector(sel_isEmergency);
  v23 = [coderCopy decodeBoolForKey:v30];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v25 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v24 = NSStringFromSelector(sel_contactIdentifiersByHandle);
  v10 = [coderCopy decodeObjectOfClasses:v25 forKey:v24];
  v11 = objc_opt_class();
  v22 = NSStringFromSelector(sel_senderIdentityShortName);
  v12 = [coderCopy decodeObjectOfClass:v11 forKey:v22];
  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_senderIdentityName);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_handlesHash);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
  v19 = NSStringFromSelector(sel_handlesBlocked);
  LOBYTE(v16) = [coderCopy decodeBoolForKey:v19];

  LOBYTE(v21) = v16;
  v27 = [(TUContinuityCallInfo *)self initWithCallIdentifier:v31 callerIdSubstring:v29 displayName:v28 isBranded:v26 isEmergency:v23 contactIdentifiersByHandle:v10 senderIdentityShortName:v12 senderIdentityName:v15 handlesHash:v18 handlesBlocked:v21];

  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  callIdentifier = self->_callIdentifier;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_callIdentifier);
  [coderCopy encodeObject:callIdentifier forKey:v6];

  callerIdSubstring = self->_callerIdSubstring;
  v8 = NSStringFromSelector(sel_callerIdSubstring);
  [coderCopy encodeObject:callerIdSubstring forKey:v8];

  displayName = self->_displayName;
  v10 = NSStringFromSelector(sel_displayName);
  [coderCopy encodeObject:displayName forKey:v10];

  isBranded = self->_isBranded;
  v12 = NSStringFromSelector(sel_isBranded);
  [coderCopy encodeBool:isBranded forKey:v12];

  isEmergency = self->_isEmergency;
  v14 = NSStringFromSelector(sel_isEmergency);
  [coderCopy encodeBool:isEmergency forKey:v14];

  contactIdentifiersByHandle = self->_contactIdentifiersByHandle;
  v16 = NSStringFromSelector(sel_contactIdentifiersByHandle);
  [coderCopy encodeObject:contactIdentifiersByHandle forKey:v16];

  senderIdentityShortName = self->_senderIdentityShortName;
  v18 = NSStringFromSelector(sel_senderIdentityShortName);
  [coderCopy encodeObject:senderIdentityShortName forKey:v18];

  senderIdentityName = self->_senderIdentityName;
  v20 = NSStringFromSelector(sel_senderIdentityName);
  [coderCopy encodeObject:senderIdentityName forKey:v20];

  handlesHash = self->_handlesHash;
  v22 = NSStringFromSelector(sel_handlesHash);
  [coderCopy encodeObject:handlesHash forKey:v22];

  handlesBlocked = self->_handlesBlocked;
  v24 = NSStringFromSelector(sel_handlesBlocked);
  [coderCopy encodeBool:handlesBlocked forKey:v24];
}

@end