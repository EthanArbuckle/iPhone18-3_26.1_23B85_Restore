@interface SCLSchoolModeConfiguration
- (SCLSchoolModeConfiguration)init;
- (SCLSchoolModeDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SCLSchoolModeConfiguration

- (SCLSchoolModeConfiguration)init
{
  v6.receiver = self;
  v6.super_class = SCLSchoolModeConfiguration;
  v2 = [(SCLSchoolModeConfiguration *)&v6 init];
  if (v2)
  {
    v3 = SCLAutoUpdatingPairingID();
    pairingID = v2->_pairingID;
    v2->_pairingID = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SCLSchoolModeConfiguration);
  identifier = [(SCLSchoolModeConfiguration *)self identifier];
  [(SCLSchoolModeConfiguration *)v4 setIdentifier:identifier];

  targetQueue = [(SCLSchoolModeConfiguration *)self targetQueue];
  [(SCLSchoolModeConfiguration *)v4 setTargetQueue:targetQueue];

  delegate = [(SCLSchoolModeConfiguration *)self delegate];
  [(SCLSchoolModeConfiguration *)v4 setDelegate:delegate];

  pairingID = [(SCLSchoolModeConfiguration *)self pairingID];
  [(SCLSchoolModeConfiguration *)v4 setPairingID:pairingID];

  [(SCLSchoolModeConfiguration *)v4 setLoadsSynchronously:[(SCLSchoolModeConfiguration *)self loadsSynchronously]];
  testingEndpoint = [(SCLSchoolModeConfiguration *)self testingEndpoint];
  [(SCLSchoolModeConfiguration *)v4 setTestingEndpoint:testingEndpoint];

  return v4;
}

- (SCLSchoolModeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end