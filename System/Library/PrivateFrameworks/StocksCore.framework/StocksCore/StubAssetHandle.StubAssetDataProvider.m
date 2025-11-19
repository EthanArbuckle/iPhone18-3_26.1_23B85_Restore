@interface StubAssetHandle.StubAssetDataProvider
- (NSData)data;
- (NSString)filePath;
@end

@implementation StubAssetHandle.StubAssetDataProvider

- (NSData)data
{
  v2 = *(self + 3);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(self + 2);
    sub_1DAB0B080(v4, v2);
    v5 = sub_1DACB7B44();
    sub_1DAB4D534(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSString)filePath
{
  if (*(self + 5))
  {
    v2 = *(self + 4);
    v3 = *(self + 5);
    sub_1DACB71E4();
    v4 = sub_1DACB92F4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end