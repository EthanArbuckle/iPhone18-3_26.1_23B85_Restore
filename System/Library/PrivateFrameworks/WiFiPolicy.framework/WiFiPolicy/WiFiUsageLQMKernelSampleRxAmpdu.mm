@interface WiFiUsageLQMKernelSampleRxAmpdu
+ (id)featureFromFieldName:(id)name;
+ (id)sampleWithStruct:(apple80211_rx_ampdu_lqmct_stats *)struct WithReferenceDate:(id)date AsNsec:(unint64_t)nsec;
- (WiFiUsageLQMKernelSampleRxAmpdu)initWithStruct:(apple80211_rx_ampdu_lqmct_stats *)struct WithReferenceDate:(id)date AsNsec:(unint64_t)nsec;
@end

@implementation WiFiUsageLQMKernelSampleRxAmpdu

+ (id)sampleWithStruct:(apple80211_rx_ampdu_lqmct_stats *)struct WithReferenceDate:(id)date AsNsec:(unint64_t)nsec
{
  dateCopy = date;
  var0 = struct->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleRxAmpdu sampleWithStruct:WithReferenceDate:AsNsec:]", var0);
    v9 = 0;
  }

  else
  {
    v9 = [[WiFiUsageLQMKernelSampleRxAmpdu alloc] initWithStruct:struct WithReferenceDate:dateCopy AsNsec:nsec];
  }

  return v9;
}

- (WiFiUsageLQMKernelSampleRxAmpdu)initWithStruct:(apple80211_rx_ampdu_lqmct_stats *)struct WithReferenceDate:(id)date AsNsec:(unint64_t)nsec
{
  v18.receiver = self;
  v18.super_class = WiFiUsageLQMKernelSampleRxAmpdu;
  dateCopy = date;
  v8 = [(WiFiUsageLQMKernelSampleRxAmpdu *)&v18 init];
  v9 = [WiFiUsageLQMTransformations dateWithMachContinuousTime:*(&struct->var0 + 1) WithRef:dateCopy asNS:nsec, v18.receiver, v18.super_class];

  timestamp = v8->_timestamp;
  v8->_timestamp = v9;

  var1_high = HIDWORD(struct->var1);
  var2 = struct->var2;
  v8->_rxAmpdu = var1_high;
  v8->_rxMpduDensity = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", var2, var1_high, +[WiFiUsageLQMTransformations mpduDensityScale]);
  v8->_rxBarOverRxAmpdu = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", struct->var10, v8->_rxAmpdu, +[WiFiUsageLQMTransformations mpduDensityScale]);
  v8->_rxQueuedOverRxAmpdu = [WiFiUsageLQMTransformations ratioWithValue:struct->var13 Over:v8->_rxAmpdu WithScale:1];
  var7 = struct->var7;
  v8->_rxAddBaReq = struct->var8;
  v8->_txAddBaResp = struct->var9;
  var11 = struct->var11;
  v8->_txDelBa = var11;
  v8->_rxDelBa = var11;
  v8->_rxAmpduAll = HIDWORD(struct->var1);
  var4 = struct->var4;
  v8->_rxHoles = struct->var3;
  v8->_rxDup = var4;
  var6 = struct->var6;
  v8->_rxStuck = struct->var5;
  v8->_rxOow = var6;
  v8->_rxOos = var7;
  return v8;
}

+ (id)featureFromFieldName:(id)name
{
  v3 = MEMORY[0x277CBEAC0];
  nameCopy = name;
  v5 = [v3 dictionaryWithObjectsAndKeys:{@"rxAmpdu", @"median", @"rxMpduDensity", @"median", @"rxBarOverRxAmpdu", @"median", @"rxQueuedOverRxAmpdu", @"sum", @"rxAddBaReq", @"sum", @"txAddBaResp", @"sum", @"txDelBa", @"sum", @"rxDelBa", @"sum", @"rxAmpduAll", @"sum", @"rxHoles", @"sum", @"rxDup", @"sum", @"rxStuck", @"sum", @"rxOow", @"sum", @"rxOos", 0}];
  v6 = [v5 objectForKeyedSubscript:nameCopy];

  return v6;
}

@end