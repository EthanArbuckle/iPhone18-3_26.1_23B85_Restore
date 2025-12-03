@interface WBSMutableFormMetadata
- (void)setConfirmPasswordElementUniqueID:(id)d;
- (void)setControls:(id)controls;
- (void)setFirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID:(id)d;
- (void)setOldPasswordElementUniqueID:(id)d;
- (void)setPasswordElementUniqueID:(id)d;
- (void)setUserNameElementUniqueID:(id)d;
@end

@implementation WBSMutableFormMetadata

- (void)setControls:(id)controls
{
  v4 = [controls copy];
  controls = self->super._controls;
  self->super._controls = v4;
}

- (void)setUserNameElementUniqueID:(id)d
{
  v4 = [d copy];
  userNameElementUniqueID = self->super._userNameElementUniqueID;
  self->super._userNameElementUniqueID = v4;
}

- (void)setPasswordElementUniqueID:(id)d
{
  v4 = [d copy];
  passwordElementUniqueID = self->super._passwordElementUniqueID;
  self->super._passwordElementUniqueID = v4;
}

- (void)setConfirmPasswordElementUniqueID:(id)d
{
  v4 = [d copy];
  confirmPasswordElementUniqueID = self->super._confirmPasswordElementUniqueID;
  self->super._confirmPasswordElementUniqueID = v4;
}

- (void)setOldPasswordElementUniqueID:(id)d
{
  v4 = [d copy];
  oldPasswordElementUniqueID = self->super._oldPasswordElementUniqueID;
  self->super._oldPasswordElementUniqueID = v4;
}

- (void)setFirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID:(id)d
{
  v4 = [d copy];
  firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = self->super._firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID;
  self->super._firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v4;
}

@end