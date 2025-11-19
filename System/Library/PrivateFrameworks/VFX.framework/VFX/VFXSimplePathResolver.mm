@interface VFXSimplePathResolver
+ (id)resolverWithFolderURL:(id)a3;
- (VFXSimplePathResolver)initWithURL:(id)a3;
- (void)dealloc;
@end

@implementation VFXSimplePathResolver

- (VFXSimplePathResolver)initWithURL:(id)a3
{
  v6.receiver = self;
  v6.super_class = VFXSimplePathResolver;
  v4 = [(VFXSimplePathResolver *)&v6 init];
  if (v4)
  {
    v4->_url = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXSimplePathResolver;
  [(VFXSimplePathResolver *)&v3 dealloc];
}

+ (id)resolverWithFolderURL:(id)a3
{
  v4 = [VFXSimplePathResolver alloc];
  v7 = objc_msgSend_initWithURL_(v4, v5, a3, v6);

  return v7;
}

@end