@interface TSCH3D2DResources
- (id)firstResource;
@end

@implementation TSCH3D2DResources

- (id)firstResource
{
  v7 = 0;
  v5 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, &v7);

  return v5;
}

@end