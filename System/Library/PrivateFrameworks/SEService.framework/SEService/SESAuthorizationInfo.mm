@interface SESAuthorizationInfo
- (SESAuthorizationInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SESAuthorizationInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"{\n\tstate : %d, \n", -[SESAuthorizationInfo state](self, "state")];
  remainingCount = [(SESAuthorizationInfo *)self remainingCount];
  [v3 appendFormat:@"\tcount : %@, \n", remainingCount];

  remainingTime = [(SESAuthorizationInfo *)self remainingTime];
  [v3 appendFormat:@"\ttime : %@, \n", remainingTime];

  publicKeyIdentifier = [(SESAuthorizationInfo *)self publicKeyIdentifier];
  [v3 appendFormat:@"\tpkIdentifier : %@, \n", publicKeyIdentifier];

  authorizationID = [(SESAuthorizationInfo *)self authorizationID];
  [v3 appendFormat:@"\tauthorizationID : %@, \n", authorizationID];

  anonymizedDSID = [(SESAuthorizationInfo *)self anonymizedDSID];
  [v3 appendFormat:@"\tanonymizedDSID : %@, \n", anonymizedDSID];

  [v3 appendFormat:@"}"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SESAuthorizationInfo state](self forKey:{"state"), @"state"}];
  remainingCount = [(SESAuthorizationInfo *)self remainingCount];
  [coderCopy encodeObject:remainingCount forKey:@"remainingCount"];

  remainingTime = [(SESAuthorizationInfo *)self remainingTime];
  [coderCopy encodeObject:remainingTime forKey:@"remainingTime"];

  publicKeyIdentifier = [(SESAuthorizationInfo *)self publicKeyIdentifier];
  [coderCopy encodeObject:publicKeyIdentifier forKey:@"publicKeyIdentifier"];

  authorizationID = [(SESAuthorizationInfo *)self authorizationID];
  [coderCopy encodeObject:authorizationID forKey:@"authorizationID"];

  anonymizedDSID = [(SESAuthorizationInfo *)self anonymizedDSID];
  [coderCopy encodeObject:anonymizedDSID forKey:@"anonymizedDSID"];
}

- (SESAuthorizationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = SESAuthorizationInfo;
  v5 = [(SESAuthorizationInfo *)&v22 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeIntForKey:@"state"];
    remainingCount = [(SESAuthorizationInfo *)v5 remainingCount];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remainingCount"];
    remainingCount = v5->_remainingCount;
    v5->_remainingCount = v7;

    remainingTime = [(SESAuthorizationInfo *)v5 remainingTime];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remainingTime"];
    remainingTime = v5->_remainingTime;
    v5->_remainingTime = v10;

    publicKeyIdentifier = [(SESAuthorizationInfo *)v5 publicKeyIdentifier];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyIdentifier"];
    publicKeyIdentifier = v5->_publicKeyIdentifier;
    v5->_publicKeyIdentifier = v13;

    authorizationID = [(SESAuthorizationInfo *)v5 authorizationID];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationID"];
    authorizationID = v5->_authorizationID;
    v5->_authorizationID = v16;

    anonymizedDSID = [(SESAuthorizationInfo *)v5 anonymizedDSID];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anonymizedDSID"];
    anonymizedDSID = v5->_anonymizedDSID;
    v5->_anonymizedDSID = v19;
  }

  return v5;
}

@end