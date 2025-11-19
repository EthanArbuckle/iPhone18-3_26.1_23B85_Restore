@interface WiFiUsageLQMKernelSampleRC2Coex
+ (id)sampleWithStruct:(rc2Coex *)a3 andTimestamp:(id)a4;
- (WiFiUsageLQMKernelSampleRC2Coex)initWithStruct:(rc2Coex *)a3 andTimestamp:(id)a4;
@end

@implementation WiFiUsageLQMKernelSampleRC2Coex

+ (id)sampleWithStruct:(rc2Coex *)a3 andTimestamp:(id)a4
{
  v5 = a4;
  var0 = a3->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleRC2Coex sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleRC2Coex alloc] initWithStruct:a3 andTimestamp:v5];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleRC2Coex)initWithStruct:(rc2Coex *)a3 andTimestamp:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = WiFiUsageLQMKernelSampleRC2Coex;
  v7 = [(WiFiUsageLQMKernelSampleRC2Coex *)&v12 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = v6;
  v9 = v6;

  v10 = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a3->var1, a3->var2, +[WiFiUsageLQMTransformations ratioScale]);
  v7->_rc2DurationPerc = v10;
  return v7;
}

@end