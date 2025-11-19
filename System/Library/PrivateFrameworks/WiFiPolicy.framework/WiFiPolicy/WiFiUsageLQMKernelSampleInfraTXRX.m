@interface WiFiUsageLQMKernelSampleInfraTXRX
+ (id)sampleWithStruct:(apple80211_infra_band_tx_rx_stats *)a3 WithReferenceDate:(id)a4 AsNsec:(unint64_t)a5;
- (WiFiUsageLQMKernelSampleInfraTXRX)initWithStruct:(apple80211_infra_band_tx_rx_stats *)a3 WithReferenceDate:(id)a4 AsNsec:(unint64_t)a5;
@end

@implementation WiFiUsageLQMKernelSampleInfraTXRX

+ (id)sampleWithStruct:(apple80211_infra_band_tx_rx_stats *)a3 WithReferenceDate:(id)a4 AsNsec:(unint64_t)a5
{
  v7 = a4;
  var0 = a3->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleInfraTXRX sampleWithStruct:WithReferenceDate:AsNsec:]", var0);
    v9 = 0;
  }

  else
  {
    v9 = [[WiFiUsageLQMKernelSampleInfraTXRX alloc] initWithStruct:a3 WithReferenceDate:v7 AsNsec:a5];
  }

  return v9;
}

- (WiFiUsageLQMKernelSampleInfraTXRX)initWithStruct:(apple80211_infra_band_tx_rx_stats *)a3 WithReferenceDate:(id)a4 AsNsec:(unint64_t)a5
{
  v30.receiver = self;
  v30.super_class = WiFiUsageLQMKernelSampleInfraTXRX;
  v7 = a4;
  v8 = [(WiFiUsageLQMKernelSampleInfraTXRX *)&v30 init];
  v9 = [WiFiUsageLQMTransformations dateWithMachContinuousTime:*(&a3->var0 + 1) WithRef:v7 asNS:a5];

  v10 = *(v8 + 1);
  *(v8 + 1) = v9;

  v28 = 0u;
  v29 = 0u;
  [WiFiUsageLQMTransformations decodingAttemptsWithRxCrsGlitch:a3->var7 rxBadPLCP:a3->var6 RxBphyCrsGlitch:a3->var21 rxBphyBadPLCP:a3->var22 rxStart:a3->var5];
  *(v8 + 3) = v28;
  *(v8 + 4) = *(&v29 + 1);
  *(v8 + 5) = v29;
  *(v8 + 6) = *(&v28 + 1);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  [WiFiUsageLQMTransformations rxDecodingErrorsPercentagesWithRxFrmTooLong:HIDWORD(a3->var1) rxFrmTooShrt:a3->var2 rxBadFCS:a3->var4 rxResponseTimeout:a3->var14 rxNoDelim:a3->var15 rxAnyErr:a3->var3 rxFifo0Ovfl:a3->var16 rxFifo1Ovfl:a3->var17];
  *(v8 + 7) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", v23, a3->var5, +[WiFiUsageLQMTransformations ratioScale]);
  *(v8 + 10) = v24;
  *(v8 + 11) = *(&v23 + 1);
  *(v8 + 12) = v27;
  *(v8 + 13) = *(&v24 + 1);
  *(v8 + 7) = v25;
  *(v8 + 8) = v26;
  v21 = 0u;
  v22 = 0u;
  [WiFiUsageLQMTransformations rxUcastPercentagesWithRxData:a3->var8 rxMgmt:a3->var9 rxCtrl:a3->var10];
  *(v8 + 8) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", v21, a3->var5, +[WiFiUsageLQMTransformations ratioScale]);
  *(v8 + 18) = *(&v21 + 1);
  *(v8 + 152) = v22;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  [WiFiUsageLQMTransformations ctrlFrmsPercentagesWithRxCtrlUcast:a3->var10 RTS:a3->var11 CTS:a3->var12 BACK:a3->var13 ACK:a3->var18];
  *(v8 + 21) = *(&v18 + 1);
  *(v8 + 22) = v19;
  *(v8 + 24) = v20;
  *(v8 + 23) = *(&v19 + 1);
  var19 = a3->var19;
  var20 = a3->var20;
  *(v8 + 25) = var19;
  *(v8 + 26) = var20;
  *(v8 + 9) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", (var20 + var19), a3->var5, +[WiFiUsageLQMTransformations ratioScale]);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  [WiFiUsageLQMTransformations ctrlFrmsPercentagesWithRxCtrlUcast:"ctrlFrmsPercentagesWithRxCtrlUcast:RTS:CTS:BACK:ACK:" RTS:a3->var25 + a3->var24 + a3->var32 + a3->var26 CTS:? BACK:? ACK:?];
  *(v8 + 248) = v15;
  *(v8 + 33) = v16;
  *(v8 + 35) = v17;
  *(v8 + 34) = *(&v16 + 1);
  *(v8 + 36) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a3->var24, a3->var30, +[WiFiUsageLQMTransformations ratioScale]);
  var23 = a3->var23;
  *(v8 + 27) = var23;
  *(v8 + 28) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a3->var29, var23, +[WiFiUsageLQMTransformations ratioScale]);
  *(v8 + 29) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a3->var27, *(v8 + 27), +[WiFiUsageLQMTransformations ratioScale]);
  *(v8 + 30) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a3->var31, *(v8 + 27), +[WiFiUsageLQMTransformations ratioScale]);
  return v8;
}

@end