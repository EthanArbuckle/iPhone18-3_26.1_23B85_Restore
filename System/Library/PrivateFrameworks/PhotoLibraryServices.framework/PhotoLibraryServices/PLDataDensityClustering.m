@interface PLDataDensityClustering
- (PLDataDensityClustering)init;
@end

@implementation PLDataDensityClustering

- (PLDataDensityClustering)init
{
  v3.receiver = self;
  v3.super_class = PLDataDensityClustering;
  result = [(PLDataDensityClustering *)&v3 init];
  if (result)
  {
    result->_maximumDistance = 50.0;
    result->_minimumNumberOfObjects = 2;
  }

  return result;
}

@end