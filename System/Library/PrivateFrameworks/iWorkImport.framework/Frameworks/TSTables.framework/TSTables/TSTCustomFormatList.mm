@interface TSTCustomFormatList
- (TSTCustomFormatList)initWithContext:(id)context;
@end

@implementation TSTCustomFormatList

- (TSTCustomFormatList)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSTCustomFormatList;
  return [(TSTTableDataList *)&v4 initWithType:6 context:context];
}

@end