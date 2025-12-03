@interface PXCloudQuotaTileView
- (CGSize)contentViewSizeForWidth:(double)width;
- (PXCloudQuotaTileView)init;
- (PXCloudQuotaTileView)initWithCoder:(id)coder;
- (PXCloudQuotaTileView)initWithContentView:(id)view;
- (PXCloudQuotaTileView)initWithFrame:(CGRect)frame;
- (PXCloudQuotaTileView)initWithTileView:(id)view;
@end

@implementation PXCloudQuotaTileView

- (CGSize)contentViewSizeForWidth:(double)width
{
  LODWORD(v3) = 1144750080;
  LODWORD(v4) = 1132068864;
  [(ICQTileView *)self->_tileView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (PXCloudQuotaTileView)initWithTileView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaTileView.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"tileView"}];
  }

  v11.receiver = self;
  v11.super_class = PXCloudQuotaTileView;
  v7 = [(PXCloudQuotaView *)&v11 initWithContentView:viewCopy];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_tileView, view);
  }

  return v8;
}

- (PXCloudQuotaTileView)initWithContentView:(id)view
{
  viewCopy = view;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaTileView.m" lineNumber:49 description:{@"%s is not available as initializer", "-[PXCloudQuotaTileView initWithContentView:]"}];

  abort();
}

- (PXCloudQuotaTileView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaTileView.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXCloudQuotaTileView initWithCoder:]"}];

  abort();
}

- (PXCloudQuotaTileView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaTileView.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXCloudQuotaTileView initWithFrame:]"}];

  abort();
}

- (PXCloudQuotaTileView)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaTileView.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXCloudQuotaTileView init]"}];

  abort();
}

@end