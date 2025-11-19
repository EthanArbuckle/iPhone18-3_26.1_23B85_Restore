@interface WiFiUsageLQMKernelSampleOfdmDesense
+ (id)allLQMProperties;
+ (id)sampleWithStruct:(id *)a3 andTimestamp:(id)a4;
- (WiFiUsageLQMKernelSampleOfdmDesense)initWithStruct:(id *)a3 andTimestamp:(id)a4;
@end

@implementation WiFiUsageLQMKernelSampleOfdmDesense

+ (id)sampleWithStruct:(id *)a3 andTimestamp:(id)a4
{
  v5 = a4;
  var0 = a3->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleOfdmDesense sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleOfdmDesense alloc] initWithStruct:a3 andTimestamp:v5];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleOfdmDesense)initWithStruct:(id *)a3 andTimestamp:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = WiFiUsageLQMKernelSampleOfdmDesense;
  v7 = [(WiFiUsageLQMKernelSampleOfdmDesense *)&v14 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = v6;
  v9 = v6;

  var2 = a3->var2;
  v7->_ofdmDesense = a3->var1;
  v7->_bPhyDesense = var2;
  v11 = [WiFiUsageLQMTransformations ofdmDesenseReason:a3->var3];
  desenseReason = v7->_desenseReason;
  v7->_desenseReason = v11;

  return v7;
}

+ (id)allLQMProperties
{
  v2 = MEMORY[0x277CBEB58];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___WiFiUsageLQMKernelSampleOfdmDesense;
  v3 = objc_msgSendSuper2(&v7, sel_allLQMProperties);
  v4 = [v2 setWithSet:v3];

  [v4 addObject:@"desenseReason"];
  v5 = [v4 copy];

  return v5;
}

@end