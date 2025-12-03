@interface TXRDeferredElementInfo
- (id)initAsCubemap:(BOOL)cubemap;
@end

@implementation TXRDeferredElementInfo

- (id)initAsCubemap:(BOOL)cubemap
{
  cubemapCopy = cubemap;
  v13.receiver = self;
  v13.super_class = TXRDeferredElementInfo;
  v4 = [(TXRDeferredElementInfo *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    if (cubemapCopy)
    {
      v6 = 6;
    }

    else
    {
      v6 = 1;
    }

    v7 = [v5 initWithCapacity:v6];
    faces = v4->_faces;
    v4->_faces = v7;

    if (cubemapCopy)
    {
      v9 = 0;
      v10 = 6;
      do
      {
        v11 = objc_alloc_init(TXRDeferredImageInfo);

        [(NSMutableArray *)v4->_faces addObject:v11];
        v9 = v11;
        --v10;
      }

      while (v10);
    }

    else
    {
      v11 = objc_alloc_init(TXRDeferredImageInfo);
      [(NSMutableArray *)v4->_faces addObject:v11];
    }
  }

  return v4;
}

@end