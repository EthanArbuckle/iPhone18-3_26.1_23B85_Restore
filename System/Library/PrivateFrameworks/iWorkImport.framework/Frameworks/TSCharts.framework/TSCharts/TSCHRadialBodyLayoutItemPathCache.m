@interface TSCHRadialBodyLayoutItemPathCache
- (CGPoint)wedgeCenterPoint;
- (CGRect)rootedLayoutRect;
- (TSCHRadialBodyLayoutItemPathCache)initWithSeriesIndex:(unint64_t)a3 rootedLayoutRect:(CGRect)a4 wedgeCenterPoint:(CGPoint)a5 pathLayoutRelative:(CGPath *)a6 pathTransformRelative:(CGPath *)a7 pathSelectionKnobs:(id)a8 innerRadius:(id)a9;
- (void)dealloc;
@end

@implementation TSCHRadialBodyLayoutItemPathCache

- (TSCHRadialBodyLayoutItemPathCache)initWithSeriesIndex:(unint64_t)a3 rootedLayoutRect:(CGRect)a4 wedgeCenterPoint:(CGPoint)a5 pathLayoutRelative:(CGPath *)a6 pathTransformRelative:(CGPath *)a7 pathSelectionKnobs:(id)a8 innerRadius:(id)a9
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v17 = a4.origin.y;
  v18 = a4.origin.x;
  v21 = a8;
  v22 = a9;
  v26.receiver = self;
  v26.super_class = TSCHRadialBodyLayoutItemPathCache;
  v23 = [(TSCHRadialBodyLayoutItemPathCache *)&v26 init];
  v24 = v23;
  if (v23)
  {
    v23->seriesIndex = a3;
    v23->rootedLayoutRect.origin.x = v18;
    v23->rootedLayoutRect.origin.y = v17;
    v23->rootedLayoutRect.size.width = width;
    v23->rootedLayoutRect.size.height = height;
    v23->wedgeCenterPoint.x = x;
    v23->wedgeCenterPoint.y = y;
    v23->pathLayoutRelative = CGPathRetain(a6);
    v24->pathTransformRelative = CGPathRetain(a7);
    objc_storeStrong(&v24->pathSelectionKnobs, a8);
    objc_storeStrong(&v24->innerRadius, a9);
  }

  return v24;
}

- (void)dealloc
{
  CGPathRelease(self->pathLayoutRelative);
  CGPathRelease(self->pathTransformRelative);
  v3.receiver = self;
  v3.super_class = TSCHRadialBodyLayoutItemPathCache;
  [(TSCHRadialBodyLayoutItemPathCache *)&v3 dealloc];
}

- (CGRect)rootedLayoutRect
{
  x = self->rootedLayoutRect.origin.x;
  y = self->rootedLayoutRect.origin.y;
  width = self->rootedLayoutRect.size.width;
  height = self->rootedLayoutRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)wedgeCenterPoint
{
  x = self->wedgeCenterPoint.x;
  y = self->wedgeCenterPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end