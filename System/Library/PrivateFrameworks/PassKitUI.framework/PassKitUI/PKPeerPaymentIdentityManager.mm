@interface PKPeerPaymentIdentityManager
- (NSString)displayName;
- (PKPeerPaymentIdentityManager)init;
- (PKPeerPaymentIdentityManagerDelegate)delegate;
- (void)peerPaymentIdentityManager:(id)a3 didUpdateProfileAppearanceData:(id)a4;
- (void)toggleSharingLastName;
- (void)toggleSharingProfilePicture;
@end

@implementation PKPeerPaymentIdentityManager

- (PKPeerPaymentIdentityManager)init
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentIdentityManager;
  v2 = [(PKPeerPaymentIdentityManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_PKPeerPaymentIdentityManager);
    internalManager = v2->_internalManager;
    v2->_internalManager = v3;

    [(_PKPeerPaymentIdentityManager *)v2->_internalManager setDelegate:v2];
  }

  return v2;
}

- (NSString)displayName
{
  v2 = [(_PKPeerPaymentIdentityManager *)self->_internalManager appearanceData];
  v3 = [v2 displayName];

  return v3;
}

- (void)toggleSharingLastName
{
  internalManager = self->_internalManager;
  v3 = [(PKPeerPaymentIdentityManager *)self isSharingLastName]^ 1;

  [(_PKPeerPaymentIdentityManager *)internalManager setShareLastName:v3];
}

- (void)toggleSharingProfilePicture
{
  internalManager = self->_internalManager;
  v3 = [(PKPeerPaymentIdentityManager *)self isSharingProfilePicture]^ 1;

  [(_PKPeerPaymentIdentityManager *)internalManager setShareProfilePicture:v3];
}

- (void)peerPaymentIdentityManager:(id)a3 didUpdateProfileAppearanceData:(id)a4
{
  v6 = [(PKPeerPaymentIdentityManager *)self delegate:a3];
  v5 = [(PKPeerPaymentIdentityManager *)self appearanceData];
  [v6 peerPaymentIdentityManager:self didUpdateAppearanceData:v5];
}

- (PKPeerPaymentIdentityManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end