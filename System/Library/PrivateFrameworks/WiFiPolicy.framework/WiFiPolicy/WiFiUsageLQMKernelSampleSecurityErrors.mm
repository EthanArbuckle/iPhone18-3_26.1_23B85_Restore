@interface WiFiUsageLQMKernelSampleSecurityErrors
+ (id)sampleWithStruct:(rxSecurityInfo *)a3 andTimestamp:(id)a4;
- (WiFiUsageLQMKernelSampleSecurityErrors)initWithStruct:(rxSecurityInfo *)a3 andTimestamp:(id)a4;
@end

@implementation WiFiUsageLQMKernelSampleSecurityErrors

+ (id)sampleWithStruct:(rxSecurityInfo *)a3 andTimestamp:(id)a4
{
  v5 = a4;
  var0 = a3->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleSecurityErrors sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleSecurityErrors alloc] initWithStruct:a3 andTimestamp:v5];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleSecurityErrors)initWithStruct:(rxSecurityInfo *)a3 andTimestamp:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = WiFiUsageLQMKernelSampleSecurityErrors;
  v7 = [(WiFiUsageLQMKernelSampleSecurityErrors *)&v12 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = v6;

  var2 = a3->var2;
  v7->_rxUcastReplayError = a3->var1;
  v7->_rxucastDecryptError = var2;
  var4 = a3->var4;
  v7->_rxmcastReplayError = a3->var3;
  v7->_rxmcastDecryptError = var4;
  return v7;
}

@end