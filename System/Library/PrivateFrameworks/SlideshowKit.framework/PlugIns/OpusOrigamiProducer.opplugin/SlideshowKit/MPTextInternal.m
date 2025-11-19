@interface MPTextInternal
- (void)dealloc;
@end

@implementation MPTextInternal

- (void)dealloc
{
  self->attributedString = 0;
  v3.receiver = self;
  v3.super_class = MPTextInternal;
  [(MPTextInternal *)&v3 dealloc];
}

@end