@interface BKDisplayAnnotationTextStyle
- (void)sizeLayer:(id)layer toFitAtScale:(double)scale;
@end

@implementation BKDisplayAnnotationTextStyle

- (void)sizeLayer:(id)layer toFitAtScale:(double)scale
{
  y = CGPointZero.y;
  layerCopy = layer;
  [layerCopy preferredFrameSize];
  [layerCopy setFrame:{CGPointZero.x, y, v5, v6}];
}

@end