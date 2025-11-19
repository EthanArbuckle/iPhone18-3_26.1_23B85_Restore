@interface SFTouchRemoteAccountServicesHandlerConfiguration
- (SFTouchRemoteAccountServicesHandlerConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SFTouchRemoteAccountServicesHandlerConfiguration

- (SFTouchRemoteAccountServicesHandlerConfiguration)init
{
  v9.receiver = self;
  v9.super_class = SFTouchRemoteAccountServicesHandlerConfiguration;
  v2 = [(SFTouchRemoteAccountServicesHandlerConfiguration *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1D7D868];
    supportedTRAccountServices = v3->_supportedTRAccountServices;
    v3->_supportedTRAccountServices = v6;

    *&v3->_isPrimaryAppleAccount = 16842753;
    v3->_isHomeSharingSetupNeeded = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SFTouchRemoteAccountServicesHandlerConfiguration);
  objc_storeStrong(&v4->_dispatchQueue, self->_dispatchQueue);
  v5 = [(NSSet *)self->_supportedTRAccountServices copy];
  supportedTRAccountServices = v4->_supportedTRAccountServices;
  v4->_supportedTRAccountServices = v5;

  v4->_isPrimaryAppleAccount = self->_isPrimaryAppleAccount;
  v4->_shouldActivateStoreAccount = self->_shouldActivateStoreAccount;
  v4->_shouldSuppressStoreSignInDialogs = self->_shouldSuppressStoreSignInDialogs;
  v4->_shouldIgnoreStoreAccountConversion = self->_shouldIgnoreStoreAccountConversion;
  v4->_isHomeSharingSetupNeeded = self->_isHomeSharingSetupNeeded;
  return v4;
}

@end