@interface SKGBundleStatus
- (SKGBundleStatus)init;
@end

@implementation SKGBundleStatus

- (SKGBundleStatus)init
{
  v7.receiver = self;
  v7.super_class = SKGBundleStatus;
  v2 = [(SKGBundleStatus *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 120) = 0u;
    *(v2 + 104) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
    v4 = *(v2 + 17);
    *(v2 + 17) = 0;

    bundleFileQuery = v3->_bundleFileQuery;
    v3->_bundleFileQuery = 0;
  }

  return v3;
}

@end