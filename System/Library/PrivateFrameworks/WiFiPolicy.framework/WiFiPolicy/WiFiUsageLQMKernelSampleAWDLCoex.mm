@interface WiFiUsageLQMKernelSampleAWDLCoex
+ (id)sampleWithStruct:(awdlInfo *)struct andTimestamp:(id)timestamp;
- (WiFiUsageLQMKernelSampleAWDLCoex)initWithStruct:(awdlInfo *)struct andTimestamp:(id)timestamp;
@end

@implementation WiFiUsageLQMKernelSampleAWDLCoex

+ (id)sampleWithStruct:(awdlInfo *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  var0 = struct->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleAWDLCoex sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleAWDLCoex alloc] initWithStruct:struct andTimestamp:timestampCopy];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleAWDLCoex)initWithStruct:(awdlInfo *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = WiFiUsageLQMKernelSampleAWDLCoex;
  v7 = [(WiFiUsageLQMKernelSampleAWDLCoex *)&v12 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = timestampCopy;
  v9 = timestampCopy;

  v10 = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", struct->var2, struct->var2, +[WiFiUsageLQMTransformations ratioScale]);
  v7->_awdlActiveDurationPerc = v10;
  return v7;
}

@end