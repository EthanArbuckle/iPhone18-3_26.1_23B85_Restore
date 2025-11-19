@interface MRCAMLAnimation
- (void)dealloc;
@end

@implementation MRCAMLAnimation

- (void)dealloc
{
  [(MRCAMLAnimation *)self setKeyPath:0];
  [(MRCAMLAnimation *)self setKeyframes:0];
  v3.receiver = self;
  v3.super_class = MRCAMLAnimation;
  [(MRCAMLAnimation *)&v3 dealloc];
}

@end