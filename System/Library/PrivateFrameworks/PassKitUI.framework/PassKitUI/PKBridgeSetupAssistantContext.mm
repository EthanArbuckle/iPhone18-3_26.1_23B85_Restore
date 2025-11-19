@interface PKBridgeSetupAssistantContext
- (PKSetupAssistantPeerPaymentAddAssociatedAccountDelegate)peerPaymentDelegate;
- (void)extendableDescription:(id)a3;
@end

@implementation PKBridgeSetupAssistantContext

- (void)extendableDescription:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKBridgeSetupAssistantContext;
  v4 = a3;
  [(PKSetupAssistantContext *)&v6 extendableDescription:v4];
  [v4 appendFormat:@"dataProvider: '%@'; ", self->_dataProvider];
  WeakRetained = objc_loadWeakRetained(&self->_peerPaymentDelegate);
  [v4 appendFormat:@"peerPaymentDelegate: '%@'; ", WeakRetained];

  [v4 appendFormat:@"pairingFamilyMember: '%@'; ", self->_pairingFamilyMember];
  [v4 appendFormat:@"parentFamilyMember: '%@'; ", self->_parentFamilyMember];
}

- (PKSetupAssistantPeerPaymentAddAssociatedAccountDelegate)peerPaymentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_peerPaymentDelegate);

  return WeakRetained;
}

@end