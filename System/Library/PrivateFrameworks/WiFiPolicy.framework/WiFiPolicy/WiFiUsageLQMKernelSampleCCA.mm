@interface WiFiUsageLQMKernelSampleCCA
+ (id)sampleWithStruct:(ccaStats *)struct andTimestamp:(id)timestamp;
- (WiFiUsageLQMKernelSampleCCA)initWithStruct:(ccaStats *)struct andTimestamp:(id)timestamp;
@end

@implementation WiFiUsageLQMKernelSampleCCA

+ (id)sampleWithStruct:(ccaStats *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  var0 = struct->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleCCA sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleCCA alloc] initWithStruct:struct andTimestamp:timestampCopy];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleCCA)initWithStruct:(ccaStats *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  [WiFiUsageLQMTransformations ccaStatsWithDuration:struct->var1 ccaSelf:struct->var2 ccaOther:struct->var3 interference:struct->var4];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  [WiFiUsageLQMTransformations ccaStatsWithDuration:struct->var5 ccaSelf:struct->var6 ccaOther:struct->var7 interference:struct->var8];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  [WiFiUsageLQMTransformations ccaStatsWithDuration:struct->var9 ccaSelf:struct->var10 ccaOther:struct->var11 interference:struct->var12];
  v11.receiver = self;
  v11.super_class = WiFiUsageLQMKernelSampleCCA;
  v8 = [(WiFiUsageLQMKernelSampleCCA *)&v11 init];
  objc_storeStrong(&v8->_timestamp, timestamp);
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