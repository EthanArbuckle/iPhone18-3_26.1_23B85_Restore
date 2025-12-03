@interface MTLegacyDownloadListener
- (MTLegacyDownloadListener)initWithDelegate:(id)delegate;
- (MTLegacyDownloadManagerDelegate)delegate;
@end

@implementation MTLegacyDownloadListener

- (MTLegacyDownloadListener)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MTLegacyDownloadListener;
  v5 = [(MTLegacyDownloadListener *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (MTLegacyDownloadManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end