@interface PXCMMTileReusableView
- (PXCMMTileReusableView)init;
- (PXCMMTileReusableView)initWithView:(id)a3;
@end

@implementation PXCMMTileReusableView

- (PXCMMTileReusableView)initWithView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXCMMTileReusableView;
  v6 = [(PXCMMTileReusableView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingView, a3);
  }

  return v7;
}

- (PXCMMTileReusableView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMTileReusableView.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXCMMTileReusableView init]"}];

  abort();
}

@end