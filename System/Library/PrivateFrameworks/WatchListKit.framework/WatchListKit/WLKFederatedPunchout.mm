@interface WLKFederatedPunchout
- (WLKFederatedPunchout)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WLKFederatedPunchout

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  channelID = [(WLKFederatedPunchout *)self channelID];
  [coderCopy encodeObject:channelID forKey:@"WLKFederatedPunchout.channelID"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[WLKFederatedPunchout isConsented](self, "isConsented")}];
  [coderCopy encodeObject:v6 forKey:@"WLKFederatedPunchout.consented"];

  bundleID = [(WLKFederatedPunchout *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"WLKFederatedPunchout.bundleID"];

  appAdamID = [(WLKFederatedPunchout *)self appAdamID];
  [coderCopy encodeObject:appAdamID forKey:@"WLKFederatedPunchout.appAdamID"];

  v9 = [(WLKFederatedPunchout *)self url];
  [coderCopy encodeObject:v9 forKey:@"WLKFederatedPunchout.url"];

  externalContentID = [(WLKFederatedPunchout *)self externalContentID];
  [coderCopy encodeObject:externalContentID forKey:@"WLKFederatedPunchout.externalContentID"];

  canonicalID = [(WLKFederatedPunchout *)self canonicalID];
  [coderCopy encodeObject:canonicalID forKey:@"WLKFederatedPunchout.canonicalID"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WLKFederatedPunchout resumeTimeSeconds](self, "resumeTimeSeconds")}];
  [coderCopy encodeObject:v12 forKey:@"WLKFederatedPunchout.resumeTimeSeconds"];

  punchoutTime = [(WLKFederatedPunchout *)self punchoutTime];
  [coderCopy encodeObject:punchoutTime forKey:@"WLKFederatedPunchout.punchoutTime"];
}

- (WLKFederatedPunchout)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  v23.receiver = self;
  v23.super_class = WLKFederatedPunchout;
  v5 = [(WLKFederatedPunchout *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.channelID"];
    channelID = v5->_channelID;
    v5->_channelID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.consented"];
    v5->_consented = [v8 BOOLValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.appAdamID"];
    appAdamID = v5->_appAdamID;
    v5->_appAdamID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.url"];
    url = v5->_url;
    v5->_url = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.externalContentID"];
    externalContentID = v5->_externalContentID;
    v5->_externalContentID = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.canonicalID"];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.resumeTimeSeconds"];
    v5->_resumeTimeSeconds = [v19 unsignedIntegerValue];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKFederatedPunchout.punchoutTime"];
    punchoutTime = v5->_punchoutTime;
    v5->_punchoutTime = v20;
  }

  return v5;
}

@end