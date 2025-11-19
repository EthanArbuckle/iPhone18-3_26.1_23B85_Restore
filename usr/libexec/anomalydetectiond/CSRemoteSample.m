@interface CSRemoteSample
- (CSRemoteSample)initWithStruct:(const CSRemoteSample_Struct *)a3;
@end

@implementation CSRemoteSample

- (CSRemoteSample)initWithStruct:(const CSRemoteSample_Struct *)a3
{
  v7.receiver = self;
  v7.super_class = CSRemoteSample;
  result = [(CSRemoteSample *)&v7 init];
  if (result)
  {
    v5 = *&a3->mode;
    v6 = *&a3->createdAtTimestamp;
    *&result->_c_struct.lastRealTriggerTimestamp = *&a3->lastRealTriggerTimestamp;
    *&result->_c_struct.createdAtTimestamp = v6;
    *&result->_c_struct.mode = v5;
  }

  return result;
}

@end