@interface MPFilterInternal
- (void)dealloc;
@end

@implementation MPFilterInternal

- (void)dealloc
{
  self->filterID = 0;

  self->presetID = 0;
  v3.receiver = self;
  v3.super_class = MPFilterInternal;
  [(MPFilterInternal *)&v3 dealloc];
}

@end