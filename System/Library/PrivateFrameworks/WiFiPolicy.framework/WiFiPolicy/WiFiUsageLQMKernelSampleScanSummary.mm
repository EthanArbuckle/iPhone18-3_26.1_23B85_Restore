@interface WiFiUsageLQMKernelSampleScanSummary
+ (id)allLQMProperties;
+ (id)sampleWithStruct:(id *)struct andTimestamp:(id)timestamp;
- (WiFiUsageLQMKernelSampleScanSummary)initWithStruct:(id *)struct andTimestamp:(id)timestamp;
@end

@implementation WiFiUsageLQMKernelSampleScanSummary

+ (id)sampleWithStruct:(id *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  var0 = struct->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleScanSummary sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleScanSummary alloc] initWithStruct:struct andTimestamp:timestampCopy];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleScanSummary)initWithStruct:(id *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v13.receiver = self;
  v13.super_class = WiFiUsageLQMKernelSampleScanSummary;
  v7 = [(WiFiUsageLQMKernelSampleScanSummary *)&v13 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = timestampCopy;
  v9 = timestampCopy;

  v7->_scanDurationMS = struct->var1;
  v10 = [WiFiUsageLQMTransformations scanClient:struct->var5];
  scanClient = v7->_scanClient;
  v7->_scanClient = v10;

  return v7;
}

+ (id)allLQMProperties
{
  v2 = MEMORY[0x277CBEB58];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___WiFiUsageLQMKernelSampleScanSummary;
  v3 = objc_msgSendSuper2(&v7, sel_allLQMProperties);
  v4 = [v2 setWithSet:v3];

  [v4 addObject:@"scanClient"];
  v5 = [v4 copy];

  return v5;
}

@end