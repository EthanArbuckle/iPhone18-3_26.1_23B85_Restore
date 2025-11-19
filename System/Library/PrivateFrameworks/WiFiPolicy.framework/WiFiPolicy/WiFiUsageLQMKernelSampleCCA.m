@interface WiFiUsageLQMKernelSampleCCA
+ (id)sampleWithStruct:(ccaStats *)a3 andTimestamp:(id)a4;
- (WiFiUsageLQMKernelSampleCCA)initWithStruct:(ccaStats *)a3 andTimestamp:(id)a4;
@end

@implementation WiFiUsageLQMKernelSampleCCA

+ (id)sampleWithStruct:(ccaStats *)a3 andTimestamp:(id)a4
{
  v5 = a4;
  var0 = a3->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleCCA sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleCCA alloc] initWithStruct:a3 andTimestamp:v5];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleCCA)initWithStruct:(ccaStats *)a3 andTimestamp:(id)a4
{
  v7 = a4;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  [WiFiUsageLQMTransformations ccaStatsWithDuration:a3->var1 ccaSelf:a3->var2 ccaOther:a3->var3 interference:a3->var4];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  [WiFiUsageLQMTransformations ccaStatsWithDuration:a3->var5 ccaSelf:a3->var6 ccaOther:a3->var7 interference:a3->var8];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  [WiFiUsageLQMTransformations ccaStatsWithDuration:a3->var9 ccaSelf:a3->var10 ccaOther:a3->var11 interference:a3->var12];
  v11.receiver = self;
  v11.super_class = WiFiUsageLQMKernelSampleCCA;
  v8 = [(WiFiUsageLQMKernelSampleCCA *)&v11 init];
  objc_storeStrong(&v8->_timestamp, a4);
  v8->_selfCca = v18;
  v8->_otherCca = v19;
  v8->_interference = v20;
  v8->_selfCcaSleepPerc = v15;
  v8->_otherCcaSleepPerc = v16;
  v8->_interferenceSleepPerc = v17;
  v8->_selfCcaWakePerc = v12;
  v8->_otherCcaWakePerc = v13;
  v8->_interferenceWakePerc = v14;
  v9 = v8;

  return v9;
}

@end