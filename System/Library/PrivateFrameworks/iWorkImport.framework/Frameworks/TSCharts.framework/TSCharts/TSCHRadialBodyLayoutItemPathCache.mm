@interface TSCHRadialBodyLayoutItemPathCache
- (CGPoint)wedgeCenterPoint;
- (CGRect)rootedLayoutRect;
- (TSCHRadialBodyLayoutItemPathCache)initWithSeriesIndex:(unint64_t)index rootedLayoutRect:(CGRect)rect wedgeCenterPoint:(CGPoint)point pathLayoutRelative:(CGPath *)relative pathTransformRelative:(CGPath *)transformRelative pathSelectionKnobs:(id)knobs innerRadius:(id)radius;
- (void)dealloc;
@end

@implementation TSCHRadialBodyLayoutItemPathCache

- (TSCHRadialBodyLayoutItemPathCache)initWithSeriesIndex:(unint64_t)index rootedLayoutRect:(CGRect)rect wedgeCenterPoint:(CGPoint)point pathLayoutRelative:(CGPath *)relative pathTransformRelative:(CGPath *)transformRelative pathSelectionKnobs:(id)knobs innerRadius:(id)radius
{
  y = point.y;
  x = point.x;
  height = rect.size.height;
  width = rect.size.width;
  v17 = rect.origin.y;
  v18 = rect.origin.x;
  knobsCopy = knobs;
  radiusCopy = radius;
  v26.receiver = self;
  v26.super_class = TSCHRadialBodyLayoutItemPathCache;
  v23 = [(TSCHRadialBodyLayoutItemPathCache *)&v26 init];
  v24 = v23;
  if (v23)
  {
    v23->seriesIndex = index;
    v23->rootedLayoutRect.origin.x = v18;
    v23->rootedLayoutRect.origin.y = v17;
    v23->rootedLayoutRect.size.width = width;
    v23->rootedLayoutRect.size.height = height;
    v23->wedgeCenterPoint.x = x;
    v23->wedgeCenterPoint.y = y;
    v23->pathLayoutRelative = CGPathRetain(relative);
    v24->pathTransformRelative = CGPathRetain(transformRelative);
    objc_storeStrong(&v24->pathSelectionKnobs, knobs);
    objc_storeStrong(&v24->innerRadius, radius);
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