@interface ButtonBarButtonVisualProvider.SpringLoadedBlinkingEffect
- (void)_prepareLayer:(id)layer forView:(id)view;
@end

@implementation ButtonBarButtonVisualProvider.SpringLoadedBlinkingEffect

- (void)_prepareLayer:(id)layer forView:(id)view
{
  layerCopy = layer;
  viewCopy = view;
  selfCopy = self;
  sub_1890A08A4(layerCopy, viewCopy);
}

@end