@interface PXCloudQuotaTileView
- (CGSize)contentViewSizeForWidth:(double)a3;
- (PXCloudQuotaTileView)init;
- (PXCloudQuotaTileView)initWithCoder:(id)a3;
- (PXCloudQuotaTileView)initWithContentView:(id)a3;
- (PXCloudQuotaTileView)initWithFrame:(CGRect)a3;
- (PXCloudQuotaTileView)initWithTileView:(id)a3;
@end

@implementation PXCloudQuotaTileView

- (CGSize)contentViewSizeForWidth:(double)a3
{
  LODWORD(v3) = 1144750080;
  LODWORD(v4) = 1132068864;
  [(ICQTileView *)self->_tileView systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:0.0 verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (PXCloudQuotaTileView)initWithTileView:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaTileView.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"tileView"}];
  }

  v11.receiver = self;
  v11.super_class = PXCloudQuotaTileView;
  v7 = [(PXCloudQuotaView *)&v11 initWithContentView:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_tileView, a3);
  }

  return v8;
}

- (PXCloudQuotaTileView)initWithContentView:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaTileView.m" lineNumber:49 description:{@"%s is not available as initializer", "-[PXCloudQuotaTileView initWithContentView:]"}];

  abort();
}

- (PXCloudQuotaTileView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaTileView.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXCloudQuotaTileView initWithCoder:]"}];

  abort();
}

- (PXCloudQuotaTileView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaTileView.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXCloudQuotaTileView initWithFrame:]"}];

  abort();
}

- (PXCloudQuotaTileView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaTileView.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXCloudQuotaTileView init]"}];

  abort();
}

@end