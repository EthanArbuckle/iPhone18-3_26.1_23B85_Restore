@interface MTLegacyDownloadListener
- (MTLegacyDownloadListener)initWithDelegate:(id)a3;
- (MTLegacyDownloadManagerDelegate)delegate;
@end

@implementation MTLegacyDownloadListener

- (MTLegacyDownloadListener)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTLegacyDownloadListener;
  v5 = [(MTLegacyDownloadListener *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (MTLegacyDownloadManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end