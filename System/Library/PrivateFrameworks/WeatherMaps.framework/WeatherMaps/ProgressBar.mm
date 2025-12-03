@interface ProgressBar
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation ProgressBar

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_220F7E800(layerCopy);
}

@end