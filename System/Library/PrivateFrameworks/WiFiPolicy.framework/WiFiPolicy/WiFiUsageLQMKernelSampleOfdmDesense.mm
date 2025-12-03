@interface WiFiUsageLQMKernelSampleOfdmDesense
+ (id)allLQMProperties;
+ (id)sampleWithStruct:(id *)struct andTimestamp:(id)timestamp;
- (WiFiUsageLQMKernelSampleOfdmDesense)initWithStruct:(id *)struct andTimestamp:(id)timestamp;
@end

@implementation WiFiUsageLQMKernelSampleOfdmDesense

+ (id)sampleWithStruct:(id *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  var0 = struct->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleOfdmDesense sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleOfdmDesense alloc] initWithStruct:struct andTimestamp:timestampCopy];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleOfdmDesense)initWithStruct:(id *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v14.receiver = self;
  v14.super_class = WiFiUsageLQMKernelSampleOfdmDesense;
  v7 = [(WiFiUsageLQMKernelSampleOfdmDesense *)&v14 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = timestampCopy;
  v9 = timestampCopy;

  var2 = struct->var2;
  v7->_ofdmDesense = struct->var1;
  v7->_bPhyDesense = var2;
  v11 = [WiFiUsageLQMTransformations ofdmDesenseReason:struct->var3];
  desenseReason = v7->_desenseReason;
  v7->_desenseReason = v11;

  return v7;
}

+ (id)allLQMProperties
{
  v2 = MEMORY[0x277CBEB58];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___WiFiUsageLQMKernelSampleOfdmDesense;
  v3 = objc_msgSendSuper2(&v7, sel_allLQMProperties);
  v4 = [v2 setWithSet:v3];

  [v4 addObject:@"desenseReason"];
  v5 = [v4 copy];

  return v5;
}

@end