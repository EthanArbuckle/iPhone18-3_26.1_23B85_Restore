@interface VFXSimplePathResolver
+ (id)resolverWithFolderURL:(id)l;
- (VFXSimplePathResolver)initWithURL:(id)l;
- (void)dealloc;
@end

@implementation VFXSimplePathResolver

- (VFXSimplePathResolver)initWithURL:(id)l
{
  v6.receiver = self;
  v6.super_class = VFXSimplePathResolver;
  v4 = [(VFXSimplePathResolver *)&v6 init];
  if (v4)
  {
    v4->_url = l;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXSimplePathResolver;
  [(VFXSimplePathResolver *)&v3 dealloc];
}

+ (id)resolverWithFolderURL:(id)l
{
  v4 = [VFXSimplePathResolver alloc];
  v7 = objc_msgSend_initWithURL_(v4, v5, l, v6);

  return v7;
}

@end