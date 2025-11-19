@interface VGHRTFUpdateData
- (id)initEmpty;
@end

@implementation VGHRTFUpdateData

- (id)initEmpty
{
  v6.receiver = self;
  v6.super_class = VGHRTFUpdateData;
  v2 = [(VGHRTFUpdateData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end