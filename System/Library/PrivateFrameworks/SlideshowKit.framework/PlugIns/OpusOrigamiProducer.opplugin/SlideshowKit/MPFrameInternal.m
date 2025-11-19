@interface MPFrameInternal
- (void)dealloc;
@end

@implementation MPFrameInternal

- (void)dealloc
{
  self->frameID = 0;

  self->presetID = 0;
  v3.receiver = self;
  v3.super_class = MPFrameInternal;
  [(MPFrameInternal *)&v3 dealloc];
}

@end