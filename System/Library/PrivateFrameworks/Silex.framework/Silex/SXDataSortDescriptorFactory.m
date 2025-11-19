@interface SXDataSortDescriptorFactory
- (id)sortDescriptorForDataDescriptor:(id)a3 ascending:(BOOL)a4;
@end

@implementation SXDataSortDescriptorFactory

- (id)sortDescriptorForDataDescriptor:(id)a3 ascending:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 dataType];
  if ((v6 - 1) > 4)
  {
    v9 = 0;
  }

  else
  {
    v7 = objc_alloc(*off_1E8502010[v6 - 1]);
    v8 = [v5 key];
    v9 = [v7 initWithKey:v8 ascending:v4];
  }

  return v9;
}

@end