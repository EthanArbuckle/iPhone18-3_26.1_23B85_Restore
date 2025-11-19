@interface SASRequestOptionsNullableAccess
- (SASRequestOptionsNullableAccess)initWithActivationDeviceIdentifier:(id)a3 requestInfo:(id)a4 activationPreparationReferenceIdentifier:(id)a5;
@end

@implementation SASRequestOptionsNullableAccess

- (SASRequestOptionsNullableAccess)initWithActivationDeviceIdentifier:(id)a3 requestInfo:(id)a4 activationPreparationReferenceIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SASRequestOptionsNullableAccess;
  v12 = [(SASRequestOptionsNullableAccess *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activationDeviceIdentifier, a3);
    objc_storeStrong(&v13->_requestInfo, a4);
    objc_storeStrong(&v13->_activationPreparationReferenceIdentifier, a5);
  }

  return v13;
}

@end