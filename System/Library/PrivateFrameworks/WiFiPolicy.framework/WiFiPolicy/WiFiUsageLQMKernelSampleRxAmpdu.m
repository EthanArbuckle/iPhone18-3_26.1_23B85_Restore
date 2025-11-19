@interface WiFiUsageLQMKernelSampleRxAmpdu
+ (id)featureFromFieldName:(id)a3;
+ (id)sampleWithStruct:(apple80211_rx_ampdu_lqmct_stats *)a3 WithReferenceDate:(id)a4 AsNsec:(unint64_t)a5;
- (WiFiUsageLQMKernelSampleRxAmpdu)initWithStruct:(apple80211_rx_ampdu_lqmct_stats *)a3 WithReferenceDate:(id)a4 AsNsec:(unint64_t)a5;
@end

@implementation WiFiUsageLQMKernelSampleRxAmpdu

+ (id)sampleWithStruct:(apple80211_rx_ampdu_lqmct_stats *)a3 WithReferenceDate:(id)a4 AsNsec:(unint64_t)a5
{
  v7 = a4;
  var0 = a3->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleRxAmpdu sampleWithStruct:WithReferenceDate:AsNsec:]", var0);
    v9 = 0;
  }

  else
  {
    v9 = [[WiFiUsageLQMKernelSampleRxAmpdu alloc] initWithStruct:a3 WithReferenceDate:v7 AsNsec:a5];
  }

  return v9;
}

- (WiFiUsageLQMKernelSampleRxAmpdu)initWithStruct:(apple80211_rx_ampdu_lqmct_stats *)a3 WithReferenceDate:(id)a4 AsNsec:(unint64_t)a5
{
  v18.receiver = self;
  v18.super_class = WiFiUsageLQMKernelSampleRxAmpdu;
  v7 = a4;
  v8 = [(WiFiUsageLQMKernelSampleRxAmpdu *)&v18 init];
  v9 = [WiFiUsageLQMTransformations dateWithMachContinuousTime:*(&a3->var0 + 1) WithRef:v7 asNS:a5, v18.receiver, v18.super_class];

  timestamp = v8->_timestamp;
  v8->_timestamp = v9;

  var1_high = HIDWORD(a3->var1);
  var2 = a3->var2;
  v8->_rxAmpdu = var1_high;
  v8->_rxMpduDensity = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", var2, var1_high, +[WiFiUsageLQMTransformations mpduDensityScale]);
  v8->_rxBarOverRxAmpdu = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a3->var10, v8->_rxAmpdu, +[WiFiUsageLQMTransformations mpduDensityScale]);
  v8->_rxQueuedOverRxAmpdu = [WiFiUsageLQMTransformations ratioWithValue:a3->var13 Over:v8->_rxAmpdu WithScale:1];
  var7 = a3->var7;
  v8->_rxAddBaReq = a3->var8;
  v8->_txAddBaResp = a3->var9;
  var11 = a3->var11;
  v8->_txDelBa = var11;
  v8->_rxDelBa = var11;
  v8->_rxAmpduAll = HIDWORD(a3->var1);
  var4 = a3->var4;
  v8->_rxHoles = a3->var3;
  v8->_rxDup = var4;
  var6 = a3->var6;
  v8->_rxStuck = a3->var5;
  v8->_rxOow = var6;
  v8->_rxOos = var7;
  return v8;
}

+ (id)featureFromFieldName:(id)a3
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjectsAndKeys:{@"rxAmpdu", @"median", @"rxMpduDensity", @"median", @"rxBarOverRxAmpdu", @"median", @"rxQueuedOverRxAmpdu", @"sum", @"rxAddBaReq", @"sum", @"txAddBaResp", @"sum", @"txDelBa", @"sum", @"rxDelBa", @"sum", @"rxAmpduAll", @"sum", @"rxHoles", @"sum", @"rxDup", @"sum", @"rxStuck", @"sum", @"rxOow", @"sum", @"rxOos", 0}];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

@end