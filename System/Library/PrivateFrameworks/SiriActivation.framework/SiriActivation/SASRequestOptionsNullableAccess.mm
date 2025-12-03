@interface SASRequestOptionsNullableAccess
- (SASRequestOptionsNullableAccess)initWithActivationDeviceIdentifier:(id)identifier requestInfo:(id)info activationPreparationReferenceIdentifier:(id)referenceIdentifier;
@end

@implementation SASRequestOptionsNullableAccess

- (SASRequestOptionsNullableAccess)initWithActivationDeviceIdentifier:(id)identifier requestInfo:(id)info activationPreparationReferenceIdentifier:(id)referenceIdentifier
{
  identifierCopy = identifier;
  infoCopy = info;
  referenceIdentifierCopy = referenceIdentifier;
  v15.receiver = self;
  v15.super_class = SASRequestOptionsNullableAccess;
  v12 = [(SASRequestOptionsNullableAccess *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activationDeviceIdentifier, identifier);
    objc_storeStrong(&v13->_requestInfo, info);
    objc_storeStrong(&v13->_activationPreparationReferenceIdentifier, referenceIdentifier);
  }

  return v13;
}

@end