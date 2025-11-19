@interface WBSMutableFormMetadata
- (void)setConfirmPasswordElementUniqueID:(id)a3;
- (void)setControls:(id)a3;
- (void)setFirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID:(id)a3;
- (void)setOldPasswordElementUniqueID:(id)a3;
- (void)setPasswordElementUniqueID:(id)a3;
- (void)setUserNameElementUniqueID:(id)a3;
@end

@implementation WBSMutableFormMetadata

- (void)setControls:(id)a3
{
  v4 = [a3 copy];
  controls = self->super._controls;
  self->super._controls = v4;
}

- (void)setUserNameElementUniqueID:(id)a3
{
  v4 = [a3 copy];
  userNameElementUniqueID = self->super._userNameElementUniqueID;
  self->super._userNameElementUniqueID = v4;
}

- (void)setPasswordElementUniqueID:(id)a3
{
  v4 = [a3 copy];
  passwordElementUniqueID = self->super._passwordElementUniqueID;
  self->super._passwordElementUniqueID = v4;
}

- (void)setConfirmPasswordElementUniqueID:(id)a3
{
  v4 = [a3 copy];
  confirmPasswordElementUniqueID = self->super._confirmPasswordElementUniqueID;
  self->super._confirmPasswordElementUniqueID = v4;
}

- (void)setOldPasswordElementUniqueID:(id)a3
{
  v4 = [a3 copy];
  oldPasswordElementUniqueID = self->super._oldPasswordElementUniqueID;
  self->super._oldPasswordElementUniqueID = v4;
}

- (void)setFirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID:(id)a3
{
  v4 = [a3 copy];
  firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = self->super._firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID;
  self->super._firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v4;
}

@end