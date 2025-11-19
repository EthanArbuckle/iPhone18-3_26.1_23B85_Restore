@interface SMFenceInfo
- (SMFenceInfo)initWithDate:(id)a3 fenceRadius:(double)a4;
@end

@implementation SMFenceInfo

- (SMFenceInfo)initWithDate:(id)a3 fenceRadius:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SMFenceInfo;
  v7 = [(SMFenceInfo *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    date = v7->_date;
    v7->_date = v8;

    v7->_fenceRadius = a4;
  }

  return v7;
}

@end