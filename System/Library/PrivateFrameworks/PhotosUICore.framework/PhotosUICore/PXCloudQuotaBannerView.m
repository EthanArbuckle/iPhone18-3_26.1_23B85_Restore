@interface PXCloudQuotaBannerView
- (CGSize)contentViewSizeForWidth:(double)a3;
- (PXCloudQuotaBannerView)init;
- (PXCloudQuotaBannerView)initWithBannerView:(id)a3;
- (PXCloudQuotaBannerView)initWithCoder:(id)a3;
- (PXCloudQuotaBannerView)initWithContentView:(id)a3;
- (PXCloudQuotaBannerView)initWithFrame:(CGRect)a3;
@end

@implementation PXCloudQuotaBannerView

- (CGSize)contentViewSizeForWidth:(double)a3
{
  [(ICQBannerView *)self->_bannerView sizeThatFits:a3, 1.79769313e308];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PXCloudQuotaBannerView)initWithBannerView:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"bannerView"}];
  }

  v14.receiver = self;
  v14.super_class = PXCloudQuotaBannerView;
  v7 = [(PXCloudQuotaView *)&v14 initWithContentView:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_bannerView, a3);
    v9 = [v6 offer];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 lastUpdated];
      lastUpdatedDate = v8->_lastUpdatedDate;
      v8->_lastUpdatedDate = v10;
    }

    v8->_offerType = [v9 offerType];
  }

  return v8;
}

- (PXCloudQuotaBannerView)initWithContentView:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:115 description:{@"%s is not available as initializer", "-[PXCloudQuotaBannerView initWithContentView:]"}];

  abort();
}

- (PXCloudQuotaBannerView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:111 description:{@"%s is not available as initializer", "-[PXCloudQuotaBannerView initWithCoder:]"}];

  abort();
}

- (PXCloudQuotaBannerView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:107 description:{@"%s is not available as initializer", "-[PXCloudQuotaBannerView initWithFrame:]"}];

  abort();
}

- (PXCloudQuotaBannerView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:103 description:{@"%s is not available as initializer", "-[PXCloudQuotaBannerView init]"}];

  abort();
}

@end