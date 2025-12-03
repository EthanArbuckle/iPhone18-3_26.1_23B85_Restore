@interface PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration
- (PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration)initWithFamilyMember:(id)member associatedAccountSetupDelegate:(id)delegate setupType:(int64_t)type;
@end

@implementation PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration

- (PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration)initWithFamilyMember:(id)member associatedAccountSetupDelegate:(id)delegate setupType:(int64_t)type
{
  memberCopy = member;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration;
  v11 = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_familyMember, member);
    objc_storeStrong(&v12->_associatedAccountSetupDelegate, delegate);
    v12->_setupType = type;
    firstName = [(PKFamilyMember *)v12->_familyMember firstName];
    firstName = v12->_firstName;
    v12->_firstName = firstName;

    lastName = [(PKFamilyMember *)v12->_familyMember lastName];
    lastName = v12->_lastName;
    v12->_lastName = lastName;
  }

  return v12;
}

@end