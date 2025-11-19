@interface SCLSchoolModeConfiguration
- (SCLSchoolModeConfiguration)init;
- (SCLSchoolModeDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SCLSchoolModeConfiguration);
  v5 = [(SCLSchoolModeConfiguration *)self identifier];
  [(SCLSchoolModeConfiguration *)v4 setIdentifier:v5];

  v6 = [(SCLSchoolModeConfiguration *)self targetQueue];
  [(SCLSchoolModeConfiguration *)v4 setTargetQueue:v6];

  v7 = [(SCLSchoolModeConfiguration *)self delegate];
  [(SCLSchoolModeConfiguration *)v4 setDelegate:v7];

  v8 = [(SCLSchoolModeConfiguration *)self pairingID];
  [(SCLSchoolModeConfiguration *)v4 setPairingID:v8];

  [(SCLSchoolModeConfiguration *)v4 setLoadsSynchronously:[(SCLSchoolModeConfiguration *)self loadsSynchronously]];
  v9 = [(SCLSchoolModeConfiguration *)self testingEndpoint];
  [(SCLSchoolModeConfiguration *)v4 setTestingEndpoint:v9];

  return v4;
}

- (SCLSchoolModeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end