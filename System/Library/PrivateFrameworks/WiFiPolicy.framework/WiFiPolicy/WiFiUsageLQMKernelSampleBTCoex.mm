@interface WiFiUsageLQMKernelSampleBTCoex
+ (id)sampleWithStruct:(btInfo *)struct andTimestamp:(id)timestamp;
- (WiFiUsageLQMKernelSampleBTCoex)initWithStruct:(btInfo *)struct andTimestamp:(id)timestamp;
@end

@implementation WiFiUsageLQMKernelSampleBTCoex

+ (id)sampleWithStruct:(btInfo *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  var0 = struct->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleBTCoex sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleBTCoex alloc] initWithStruct:struct andTimestamp:timestampCopy];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleBTCoex)initWithStruct:(btInfo *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = WiFiUsageLQMKernelSampleBTCoex;
  v7 = [(WiFiUsageLQMKernelSampleBTCoex *)&v12 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = timestampCopy;
  v9 = timestampCopy;

  v10 = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", struct->var1, struct->var2, +[WiFiUsageLQMTransformations ratioScale]);
  v7->_btAntennaDurationPerc = v10;
  return v7;
}

@end