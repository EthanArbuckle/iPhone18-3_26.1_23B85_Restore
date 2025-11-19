@interface CFXAnimationBinding
- (void)dealloc;
@end

@implementation CFXAnimationBinding

- (void)dealloc
{
  valueTransformer = self->_valueTransformer;
  if (valueTransformer)
  {
    _Block_release(valueTransformer);
  }

  v4.receiver = self;
  v4.super_class = CFXAnimationBinding;
  [(CFXAnimationBinding *)&v4 dealloc];
}

@end