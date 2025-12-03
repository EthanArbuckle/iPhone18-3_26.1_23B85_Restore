@interface SMFenceInfo
- (SMFenceInfo)initWithDate:(id)date fenceRadius:(double)radius;
@end

@implementation SMFenceInfo

- (SMFenceInfo)initWithDate:(id)date fenceRadius:(double)radius
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = SMFenceInfo;
  v7 = [(SMFenceInfo *)&v11 init];
  if (v7)
  {
    v8 = [dateCopy copy];
    date = v7->_date;
    v7->_date = v8;

    v7->_fenceRadius = radius;
  }

  return v7;
}

@end