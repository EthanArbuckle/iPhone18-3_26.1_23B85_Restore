@interface PKPeerPaymentIdentityManager
- (NSString)displayName;
- (PKPeerPaymentIdentityManager)init;
- (PKPeerPaymentIdentityManagerDelegate)delegate;
- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data;
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
  appearanceData = [(_PKPeerPaymentIdentityManager *)self->_internalManager appearanceData];
  displayName = [appearanceData displayName];

  return displayName;
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

- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data
{
  v6 = [(PKPeerPaymentIdentityManager *)self delegate:manager];
  appearanceData = [(PKPeerPaymentIdentityManager *)self appearanceData];
  [v6 peerPaymentIdentityManager:self didUpdateAppearanceData:appearanceData];
}

- (PKPeerPaymentIdentityManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end