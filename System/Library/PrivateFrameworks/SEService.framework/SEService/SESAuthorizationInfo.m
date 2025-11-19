@interface SESAuthorizationInfo
- (SESAuthorizationInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SESAuthorizationInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"{\n\tstate : %d, \n", -[SESAuthorizationInfo state](self, "state")];
  v4 = [(SESAuthorizationInfo *)self remainingCount];
  [v3 appendFormat:@"\tcount : %@, \n", v4];

  v5 = [(SESAuthorizationInfo *)self remainingTime];
  [v3 appendFormat:@"\ttime : %@, \n", v5];

  v6 = [(SESAuthorizationInfo *)self publicKeyIdentifier];
  [v3 appendFormat:@"\tpkIdentifier : %@, \n", v6];

  v7 = [(SESAuthorizationInfo *)self authorizationID];
  [v3 appendFormat:@"\tauthorizationID : %@, \n", v7];

  v8 = [(SESAuthorizationInfo *)self anonymizedDSID];
  [v3 appendFormat:@"\tanonymizedDSID : %@, \n", v8];

  [v3 appendFormat:@"}"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SESAuthorizationInfo state](self forKey:{"state"), @"state"}];
  v5 = [(SESAuthorizationInfo *)self remainingCount];
  [v4 encodeObject:v5 forKey:@"remainingCount"];

  v6 = [(SESAuthorizationInfo *)self remainingTime];
  [v4 encodeObject:v6 forKey:@"remainingTime"];

  v7 = [(SESAuthorizationInfo *)self publicKeyIdentifier];
  [v4 encodeObject:v7 forKey:@"publicKeyIdentifier"];

  v8 = [(SESAuthorizationInfo *)self authorizationID];
  [v4 encodeObject:v8 forKey:@"authorizationID"];

  v9 = [(SESAuthorizationInfo *)self anonymizedDSID];
  [v4 encodeObject:v9 forKey:@"anonymizedDSID"];
}

- (SESAuthorizationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SESAuthorizationInfo;
  v5 = [(SESAuthorizationInfo *)&v22 init];
  if (v5)
  {
    v5->_state = [v4 decodeIntForKey:@"state"];
    v6 = [(SESAuthorizationInfo *)v5 remainingCount];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remainingCount"];
    remainingCount = v5->_remainingCount;
    v5->_remainingCount = v7;

    v9 = [(SESAuthorizationInfo *)v5 remainingTime];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remainingTime"];
    remainingTime = v5->_remainingTime;
    v5->_remainingTime = v10;

    v12 = [(SESAuthorizationInfo *)v5 publicKeyIdentifier];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyIdentifier"];
    publicKeyIdentifier = v5->_publicKeyIdentifier;
    v5->_publicKeyIdentifier = v13;

    v15 = [(SESAuthorizationInfo *)v5 authorizationID];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorizationID"];
    authorizationID = v5->_authorizationID;
    v5->_authorizationID = v16;

    v18 = [(SESAuthorizationInfo *)v5 anonymizedDSID];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anonymizedDSID"];
    anonymizedDSID = v5->_anonymizedDSID;
    v5->_anonymizedDSID = v19;
  }

  return v5;
}

@end