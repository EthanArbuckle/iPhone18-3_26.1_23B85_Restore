@interface WiFiUsageLQMKernelSampleRC1Coex
+ (id)sampleWithStruct:(rc1Coex *)a3 andTimestamp:(id)a4;
- (WiFiUsageLQMKernelSampleRC1Coex)initWithStruct:(rc1Coex *)a3 andTimestamp:(id)a4;
@end

@implementation WiFiUsageLQMKernelSampleRC1Coex

+ (id)sampleWithStruct:(rc1Coex *)a3 andTimestamp:(id)a4
{
  v5 = a4;
  var0 = a3->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleRC1Coex sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleRC1Coex alloc] initWithStruct:a3 andTimestamp:v5];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleRC1Coex)initWithStruct:(rc1Coex *)a3 andTimestamp:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = WiFiUsageLQMKernelSampleRC1Coex;
  v7 = [(WiFiUsageLQMKernelSampleRC1Coex *)&v12 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = v6;
  v9 = v6;

  v10 = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a3->var1, a3->var2, +[WiFiUsageLQMTransformations ratioScale]);
  v7->_rc1DurationPerc = v10;
  return v7;
}

@end