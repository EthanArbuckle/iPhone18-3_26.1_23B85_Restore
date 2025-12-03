@interface SXDataSortDescriptorFactory
- (id)sortDescriptorForDataDescriptor:(id)descriptor ascending:(BOOL)ascending;
@end

@implementation SXDataSortDescriptorFactory

- (id)sortDescriptorForDataDescriptor:(id)descriptor ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  descriptorCopy = descriptor;
  dataType = [descriptorCopy dataType];
  if ((dataType - 1) > 4)
  {
    v9 = 0;
  }

  else
  {
    v7 = objc_alloc(*off_1E8502010[dataType - 1]);
    v8 = [descriptorCopy key];
    v9 = [v7 initWithKey:v8 ascending:ascendingCopy];
  }

  return v9;
}

@end