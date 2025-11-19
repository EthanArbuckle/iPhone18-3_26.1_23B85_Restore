@interface WiFiUsageLQMKernelSampleBTCoex
+ (id)sampleWithStruct:(btInfo *)a3 andTimestamp:(id)a4;
- (WiFiUsageLQMKernelSampleBTCoex)initWithStruct:(btInfo *)a3 andTimestamp:(id)a4;
@end

@implementation WiFiUsageLQMKernelSampleBTCoex

+ (id)sampleWithStruct:(btInfo *)a3 andTimestamp:(id)a4
{
  v5 = a4;
  var0 = a3->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleBTCoex sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleBTCoex alloc] initWithStruct:a3 andTimestamp:v5];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleBTCoex)initWithStruct:(btInfo *)a3 andTimestamp:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = WiFiUsageLQMKernelSampleBTCoex;
  v7 = [(WiFiUsageLQMKernelSampleBTCoex *)&v12 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = v6;
  v9 = v6;

  v10 = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a3->var1, a3->var2, +[WiFiUsageLQMTransformations ratioScale]);
  v7->_btAntennaDurationPerc = v10;
  return v7;
}

@end