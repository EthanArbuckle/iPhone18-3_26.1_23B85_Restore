@interface MPNavigatorInternal
- (CGPoint)position;
- (CGSize)size;
- (void)dealloc;
@end

@implementation MPNavigatorInternal

- (void)dealloc
{
  self->startPlugID = 0;

  self->layerKeyDictionary = 0;
  self->uuid = 0;
  v3.receiver = self;
  v3.super_class = MPNavigatorInternal;
  [(MPNavigatorInternal *)&v3 dealloc];
}

- (CGPoint)position
{
  x = self->position.x;
  y = self->position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->size.width;
  height = self->size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end