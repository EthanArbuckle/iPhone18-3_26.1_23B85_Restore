@interface SUICWEdgeLight
- (SUICEdgeLightMaskMetalLayer)wedge;
- (SUICWEdgeLight)initWithDelegate:(id)delegate;
- (void)_drawFrame:(id)frame;
@end

@implementation SUICWEdgeLight

- (SUICEdgeLightMaskMetalLayer)wedge
{
  WeakRetained = objc_loadWeakRetained(&self->_wedge);

  return WeakRetained;
}

- (SUICWEdgeLight)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SUICWEdgeLight;
  v5 = [(SUICWEdgeLight *)&v8 init];
  v6 = v5;
  if (v5 == self)
  {
    [(SUICWEdgeLight *)v5 setWedge:delegateCopy];
  }

  return v6;
}

- (void)_drawFrame:(id)frame
{
  frameCopy = frame;
  wedge = [(SUICWEdgeLight *)self wedge];
  [wedge _drawFrame:frameCopy];
}

@end