@interface WiFiUsageLQMKernelSampleRC2Coex
+ (id)sampleWithStruct:(rc2Coex *)struct andTimestamp:(id)timestamp;
- (WiFiUsageLQMKernelSampleRC2Coex)initWithStruct:(rc2Coex *)struct andTimestamp:(id)timestamp;
@end

@implementation WiFiUsageLQMKernelSampleRC2Coex

+ (id)sampleWithStruct:(rc2Coex *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  var0 = struct->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleRC2Coex sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleRC2Coex alloc] initWithStruct:struct andTimestamp:timestampCopy];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleRC2Coex)initWithStruct:(rc2Coex *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = WiFiUsageLQMKernelSampleRC2Coex;
  v7 = [(WiFiUsageLQMKernelSampleRC2Coex *)&v12 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = timestampCopy;
  v9 = timestampCopy;

  v10 = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", struct->var1, struct->var2, +[WiFiUsageLQMTransformations ratioScale]);
  v7->_rc2DurationPerc = v10;
  return v7;
}

@end