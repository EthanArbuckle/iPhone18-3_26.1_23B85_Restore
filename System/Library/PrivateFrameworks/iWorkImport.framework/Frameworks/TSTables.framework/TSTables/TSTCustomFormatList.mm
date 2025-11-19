@interface TSTCustomFormatList
- (TSTCustomFormatList)initWithContext:(id)a3;
@end

@implementation TSTCustomFormatList

- (TSTCustomFormatList)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSTCustomFormatList;
  return [(TSTTableDataList *)&v4 initWithType:6 context:a3];
}

@end