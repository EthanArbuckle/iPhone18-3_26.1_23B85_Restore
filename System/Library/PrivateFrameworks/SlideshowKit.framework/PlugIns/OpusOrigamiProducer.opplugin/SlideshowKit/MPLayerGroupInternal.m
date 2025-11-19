@interface MPLayerGroupInternal
- (CGPoint)position;
- (CGSize)size;
- (void)dealloc;
- (void)setBackgroundColor:(CGColor *)a3;
@end

@implementation MPLayerGroupInternal

- (void)dealloc
{
  backgroundColor = self->backgroundColor;
  if (backgroundColor)
  {
    CGColorRelease(backgroundColor);
  }

  self->backgroundAudioID = 0;
  self->authoredVersionInfo = 0;

  self->liveLock = 0;
  self->uuid = 0;

  self->layerKeyDictionary = 0;
  self->initialState = 0;
  v4.receiver = self;
  v4.super_class = MPLayerGroupInternal;
  [(MPLayerGroupInternal *)&v4 dealloc];
}

- (void)setBackgroundColor:(CGColor *)a3
{
  backgroundColor = self->backgroundColor;
  if (backgroundColor)
  {
    CGColorRelease(backgroundColor);
  }

  self->backgroundColor = CGColorRetain(a3);
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