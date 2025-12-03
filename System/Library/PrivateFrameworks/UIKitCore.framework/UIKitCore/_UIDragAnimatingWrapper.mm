@interface _UIDragAnimatingWrapper
- (_UIDragAnimatingWrapper)initWithPropertyAnimator:(id)animator;
@end

@implementation _UIDragAnimatingWrapper

- (_UIDragAnimatingWrapper)initWithPropertyAnimator:(id)animator
{
  animatorCopy = animator;
  v9.receiver = self;
  v9.super_class = _UIDragAnimatingWrapper;
  v6 = [(_UIDragAnimatingWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animator, animator);
  }

  return v7;
}

@end