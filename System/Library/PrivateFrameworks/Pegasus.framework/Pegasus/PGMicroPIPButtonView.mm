@interface PGMicroPIPButtonView
+ (id)button;
- (void)layoutSubviews;
@end

@implementation PGMicroPIPButtonView

+ (id)button
{
  v2 = objc_alloc_init(self);
  if (v2)
  {
    v3 = [PGLayerHostView alloc];
    [v2 bounds];
    v4 = [(PGLayerHostView *)v3 initWithFrame:?];
    v5 = v2[51];
    v2[51] = v4;

    [v2[51] setUserInteractionEnabled:0];
    layer = [v2[51] layer];
    [layer setAllowsHitTesting:0];

    [v2 insertSubview:v2[51] atIndex:0];
    [v2 setClipsToBounds:1];
  }

  return v2;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PGMicroPIPButtonView;
  [(PGMicroPIPButtonView *)&v4 layoutSubviews];
  layerHostView = self->_layerHostView;
  [(PGMicroPIPButtonView *)self bounds];
  [(PGLayerHostView *)layerHostView setFrame:?];
}

@end