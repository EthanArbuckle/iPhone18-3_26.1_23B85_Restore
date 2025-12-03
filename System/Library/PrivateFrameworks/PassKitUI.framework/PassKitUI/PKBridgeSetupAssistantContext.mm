@interface PKBridgeSetupAssistantContext
- (PKSetupAssistantPeerPaymentAddAssociatedAccountDelegate)peerPaymentDelegate;
- (void)extendableDescription:(id)description;
@end

@implementation PKBridgeSetupAssistantContext

- (void)extendableDescription:(id)description
{
  v6.receiver = self;
  v6.super_class = PKBridgeSetupAssistantContext;
  descriptionCopy = description;
  [(PKSetupAssistantContext *)&v6 extendableDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"dataProvider: '%@'; ", self->_dataProvider];
  WeakRetained = objc_loadWeakRetained(&self->_peerPaymentDelegate);
  [descriptionCopy appendFormat:@"peerPaymentDelegate: '%@'; ", WeakRetained];

  [descriptionCopy appendFormat:@"pairingFamilyMember: '%@'; ", self->_pairingFamilyMember];
  [descriptionCopy appendFormat:@"parentFamilyMember: '%@'; ", self->_parentFamilyMember];
}

- (PKSetupAssistantPeerPaymentAddAssociatedAccountDelegate)peerPaymentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_peerPaymentDelegate);

  return WeakRetained;
}

@end