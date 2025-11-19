@interface CFXBindingWrapper
- (void)dealloc;
@end

@implementation CFXBindingWrapper

- (void)dealloc
{
  objc_msgSend_setBinding_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = CFXBindingWrapper;
  [(CFXBindingWrapper *)&v4 dealloc];
}

@end