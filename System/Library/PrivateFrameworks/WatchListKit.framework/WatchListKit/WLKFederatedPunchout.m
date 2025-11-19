@interface WLKFederatedPunchout
- (WLKFederatedPunchout)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WLKFederatedPunchout

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  v5 = [(WLKFederatedPunchout *)self channelID];
  [v4 encodeObject:v5 forKey:@"WLKFederatedPunchout.channelID"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[WLKFederatedPunchout isConsented](self, "isConsented")}];
  [v4 encodeObject:v6 forKey:@"WLKFederatedPunchout.consented"];

  v7 = [(WLKFederatedPunchout *)self bundleID];
  [v4 encodeObject:v7 forKey:@"WLKFederatedPunchout.bundleID"];

  v8 = [(WLKFederatedPunchout *)self appAdamID];
  [v4 encodeObject:v8 forKey:@"WLKFederatedPunchout.appAdamID"];

  v9 = [(WLKFederatedPunchout *)self url];
  [v4 encodeObject:v9 forKey:@"WLKFederatedPunchout.url"];

  v10 = [(WLKFederatedPunchout *)self externalContentID];
  [v4 encodeObject:v10 forKey:@"WLKFederatedPunchout.externalContentID"];

  v11 = [(WLKFederatedPunchout *)self canonicalID];
  [v4 encodeObject:v11 forKey:@"WLKFederatedPunchout.canonicalID"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WLKFederatedPunchout resumeTimeSeconds](self, "resumeTimeSeconds")}];
  [v4 encodeObject:v12 forKey:@"WLKFederatedPunchout.resumeTimeSeconds"];

  v13 = [(WLKFederatedPunchout *)self punchoutTime];
  [v4 encodeObject:v13 forKey:@"WLKFederatedPunchout.punchoutTime"];
}

- (WLKFederatedPunchout)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  v23.receiver = self;
  v23.super_class = WLKFederatedPunchout;
  v5 = [(WLKFederatedPunchout *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.channelID"];
    channelID = v5->_channelID;
    v5->_channelID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.consented"];
    v5->_consented = [v8 BOOLValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.appAdamID"];
    appAdamID = v5->_appAdamID;
    v5->_appAdamID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.url"];
    url = v5->_url;
    v5->_url = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.externalContentID"];
    externalContentID = v5->_externalContentID;
    v5->_externalContentID = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.canonicalID"];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.resumeTimeSeconds"];
    v5->_resumeTimeSeconds = [v19 unsignedIntegerValue];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.punchoutTime"];
    punchoutTime = v5->_punchoutTime;
    v5->_punchoutTime = v20;
  }

  return v5;
}

@end