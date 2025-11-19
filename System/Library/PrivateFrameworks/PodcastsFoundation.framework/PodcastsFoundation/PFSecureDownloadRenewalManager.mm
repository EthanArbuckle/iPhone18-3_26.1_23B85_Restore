@interface PFSecureDownloadRenewalManager
- (PFSecureDownloadRenewalManager)init;
@end

@implementation PFSecureDownloadRenewalManager

- (PFSecureDownloadRenewalManager)init
{
  v6.receiver = self;
  v6.super_class = PFSecureDownloadRenewalManager;
  v2 = [(PFSecureDownloadRenewalManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MTSecureDownloadRenewalManager);
    manager = v2->_manager;
    v2->_manager = v3;
  }

  return v2;
}

@end