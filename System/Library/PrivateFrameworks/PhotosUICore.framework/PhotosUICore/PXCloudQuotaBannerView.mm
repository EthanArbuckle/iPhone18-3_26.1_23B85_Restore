@interface PXCloudQuotaBannerView
- (CGSize)contentViewSizeForWidth:(double)width;
- (PXCloudQuotaBannerView)init;
- (PXCloudQuotaBannerView)initWithBannerView:(id)view;
- (PXCloudQuotaBannerView)initWithCoder:(id)coder;
- (PXCloudQuotaBannerView)initWithContentView:(id)view;
- (PXCloudQuotaBannerView)initWithFrame:(CGRect)frame;
@end

@implementation PXCloudQuotaBannerView

- (CGSize)contentViewSizeForWidth:(double)width
{
  [(ICQBannerView *)self->_bannerView sizeThatFits:width, 1.79769313e308];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PXCloudQuotaBannerView)initWithBannerView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"bannerView"}];
  }

  v14.receiver = self;
  v14.super_class = PXCloudQuotaBannerView;
  v7 = [(PXCloudQuotaView *)&v14 initWithContentView:viewCopy];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_bannerView, view);
    offer = [viewCopy offer];
    if (objc_opt_respondsToSelector())
    {
      lastUpdated = [offer lastUpdated];
      lastUpdatedDate = v8->_lastUpdatedDate;
      v8->_lastUpdatedDate = lastUpdated;
    }

    v8->_offerType = [offer offerType];
  }

  return v8;
}

- (PXCloudQuotaBannerView)initWithContentView:(id)view
{
  viewCopy = view;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:115 description:{@"%s is not available as initializer", "-[PXCloudQuotaBannerView initWithContentView:]"}];

  abort();
}

- (PXCloudQuotaBannerView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:111 description:{@"%s is not available as initializer", "-[PXCloudQuotaBannerView initWithCoder:]"}];

  abort();
}

- (PXCloudQuotaBannerView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:107 description:{@"%s is not available as initializer", "-[PXCloudQuotaBannerView initWithFrame:]"}];

  abort();
}

- (PXCloudQuotaBannerView)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:103 description:{@"%s is not available as initializer", "-[PXCloudQuotaBannerView init]"}];

  abort();
}

@end