@interface CFXBinding
- (void)dealloc;
@end

@implementation CFXBinding

- (void)dealloc
{
  objc_msgSend_setSourceObject_(self, a2, 0, v2);
  objc_msgSend_setKeyPathSrc_(self, v4, 0, v5);
  objc_msgSend_setKeyPathDst_(self, v6, 0, v7);
  objc_msgSend_setOptions_(self, v8, 0, v9);
  v10.receiver = self;
  v10.super_class = CFXBinding;
  [(CFXBinding *)&v10 dealloc];
}

@end