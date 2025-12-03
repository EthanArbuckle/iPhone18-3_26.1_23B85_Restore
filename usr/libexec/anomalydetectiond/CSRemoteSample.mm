@interface CSRemoteSample
- (CSRemoteSample)initWithStruct:(const CSRemoteSample_Struct *)struct;
@end

@implementation CSRemoteSample

- (CSRemoteSample)initWithStruct:(const CSRemoteSample_Struct *)struct
{
  v7.receiver = self;
  v7.super_class = CSRemoteSample;
  result = [(CSRemoteSample *)&v7 init];
  if (result)
  {
    v5 = *&struct->mode;
    v6 = *&struct->createdAtTimestamp;
    *&result->_c_struct.lastRealTriggerTimestamp = *&struct->lastRealTriggerTimestamp;
    *&result->_c_struct.createdAtTimestamp = v6;
    *&result->_c_struct.mode = v5;
  }

  return result;
}

@end