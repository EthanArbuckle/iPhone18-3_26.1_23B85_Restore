@interface WiFiUsageLQMKernelSampleSecurityErrors
+ (id)sampleWithStruct:(rxSecurityInfo *)struct andTimestamp:(id)timestamp;
- (WiFiUsageLQMKernelSampleSecurityErrors)initWithStruct:(rxSecurityInfo *)struct andTimestamp:(id)timestamp;
@end

@implementation WiFiUsageLQMKernelSampleSecurityErrors

+ (id)sampleWithStruct:(rxSecurityInfo *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  var0 = struct->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleSecurityErrors sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleSecurityErrors alloc] initWithStruct:struct andTimestamp:timestampCopy];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleSecurityErrors)initWithStruct:(rxSecurityInfo *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = WiFiUsageLQMKernelSampleSecurityErrors;
  v7 = [(WiFiUsageLQMKernelSampleSecurityErrors *)&v12 init];
  timestamp = v7->_timestamp;
  v7->_timestamp = timestampCopy;

  var2 = struct->var2;
  v7->_rxUcastReplayError = struct->var1;
  v7->_rxucastDecryptError = var2;
  var4 = struct->var4;
  v7->_rxmcastReplayError = struct->var3;
  v7->_rxmcastDecryptError = var4;
  return v7;
}

@end