@interface TNChartReferenceSeriesDescriptor
- (TNChartReferenceSeriesDescriptor)init;
@end

@implementation TNChartReferenceSeriesDescriptor

- (TNChartReferenceSeriesDescriptor)init
{
  v3.receiver = self;
  v3.super_class = TNChartReferenceSeriesDescriptor;
  result = [(TNChartReferenceSeriesDescriptor *)&v3 init];
  if (result)
  {
    *&result->_spanning = -256;
  }

  return result;
}

@end