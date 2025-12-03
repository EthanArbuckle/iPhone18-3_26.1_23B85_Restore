@interface CALayer(TextEffectsLayerOrdering)
- (uint64_t)compareTextEffectsOrdering:()TextEffectsLayerOrdering;
@end

@implementation CALayer(TextEffectsLayerOrdering)

- (uint64_t)compareTextEffectsOrdering:()TextEffectsLayerOrdering
{
  v4 = a3;
  delegate = [self delegate];
  delegate2 = [v4 delegate];

  v7 = [delegate compareTextEffectsOrdering:delegate2];
  return v7;
}

@end