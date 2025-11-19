@interface SUICWEdgeLight
- (SUICEdgeLightMaskMetalLayer)wedge;
- (SUICWEdgeLight)initWithDelegate:(id)a3;
- (void)_drawFrame:(id)a3;
@end

@implementation SUICWEdgeLight

- (SUICEdgeLightMaskMetalLayer)wedge
{
  WeakRetained = objc_loadWeakRetained(&self->_wedge);

  return WeakRetained;
}

- (SUICWEdgeLight)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUICWEdgeLight;
  v5 = [(SUICWEdgeLight *)&v8 init];
  v6 = v5;
  if (v5 == self)
  {
    [(SUICWEdgeLight *)v5 setWedge:v4];
  }

  return v6;
}

- (void)_drawFrame:(id)a3
{
  v4 = a3;
  v5 = [(SUICWEdgeLight *)self wedge];
  [v5 _drawFrame:v4];
}

@end