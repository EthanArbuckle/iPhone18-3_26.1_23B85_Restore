@interface WiFiUsageLQMKernelSampleScanSummary
+ (id)allLQMProperties;
+ (id)sampleWithStruct:(id *)a3 andTimestamp:(id)a4;
- (WiFiUsageLQMKernelSampleScanSummary)initWithStruct:(id *)a3 andTimestamp:(id)a4;
@end

@implementation WiFiUsageLQMKernelSampleScanSummary

+ (id)sampleWithStruct:(id *)a3 andTimestamp:(id)a4
{
  v5 = a4;
  var0 = a3->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleScanSummary sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleScanSummary alloc] initWithStruct:a3 andTimestamp:v5];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleScanSummary)initWithStruct:(id *)a3 andTimestamp:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = WiFiUsageLQMKernelSampleScanSummary;
  v7 = [(WiFiUsageLQMKernelSampleScanSummary *)&v13 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = v6;
  v9 = v6;

  v7->_scanDurationMS = a3->var1;
  v10 = [WiFiUsageLQMTransformations scanClient:a3->var5];
  scanClient = v7->_scanClient;
  v7->_scanClient = v10;

  return v7;
}

+ (id)allLQMProperties
{
  v2 = MEMORY[0x277CBEB58];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___WiFiUsageLQMKernelSampleScanSummary;
  v3 = objc_msgSendSuper2(&v7, sel_allLQMProperties);
  v4 = [v2 setWithSet:v3];

  [v4 addObject:@"scanClient"];
  v5 = [v4 copy];

  return v5;
}

@end