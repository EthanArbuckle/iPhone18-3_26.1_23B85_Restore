@interface _PUSyndicationAttributionTileView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _PUSyndicationAttributionTileView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = _PUSyndicationAttributionTileView;
  v5 = [(_PUSyndicationAttributionTileView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

@end