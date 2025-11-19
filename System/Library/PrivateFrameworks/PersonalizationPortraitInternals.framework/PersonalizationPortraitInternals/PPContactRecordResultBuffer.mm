@interface PPContactRecordResultBuffer
- (PPContactRecordResultBuffer)init;
@end

@implementation PPContactRecordResultBuffer

- (PPContactRecordResultBuffer)init
{
  v6.receiver = self;
  v6.super_class = PPContactRecordResultBuffer;
  v2 = [(PPContactRecordResultBuffer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    records = v2->_records;
    v2->_records = v3;

    v2->_loadingComplete = 0;
  }

  return v2;
}

@end