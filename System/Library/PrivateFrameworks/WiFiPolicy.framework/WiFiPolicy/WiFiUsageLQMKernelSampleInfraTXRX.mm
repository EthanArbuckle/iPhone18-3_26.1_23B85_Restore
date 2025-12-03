@interface WiFiUsageLQMKernelSampleInfraTXRX
+ (id)sampleWithStruct:(apple80211_infra_band_tx_rx_stats *)struct WithReferenceDate:(id)date AsNsec:(unint64_t)nsec;
- (WiFiUsageLQMKernelSampleInfraTXRX)initWithStruct:(apple80211_infra_band_tx_rx_stats *)struct WithReferenceDate:(id)date AsNsec:(unint64_t)nsec;
@end

@implementation WiFiUsageLQMKernelSampleInfraTXRX

+ (id)sampleWithStruct:(apple80211_infra_band_tx_rx_stats *)struct WithReferenceDate:(id)date AsNsec:(unint64_t)nsec
{
  dateCopy = date;
  var0 = struct->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleInfraTXRX sampleWithStruct:WithReferenceDate:AsNsec:]", var0);
    v9 = 0;
  }

  else
  {
    v9 = [[WiFiUsageLQMKernelSampleInfraTXRX alloc] initWithStruct:struct WithReferenceDate:dateCopy AsNsec:nsec];
  }

  return v9;
}

- (WiFiUsageLQMKernelSampleInfraTXRX)initWithStruct:(apple80211_infra_band_tx_rx_stats *)struct WithReferenceDate:(id)date AsNsec:(unint64_t)nsec
{
  v30.receiver = self;
  v30.super_class = WiFiUsageLQMKernelSampleInfraTXRX;
  dateCopy = date;
  v8 = [(WiFiUsageLQMKernelSampleInfraTXRX *)&v30 init];
  v9 = [WiFiUsageLQMTransformations dateWithMachContinuousTime:*(&struct->var0 + 1) WithRef:dateCopy asNS:nsec];

  v10 = *(v8 + 1);
  *(v8 + 1) = v9;

  v28 = 0u;
  v29 = 0u;
  [WiFiUsageLQMTransformations decodingAttemptsWithRxCrsGlitch:struct->var7 rxBadPLCP:struct->var6 RxBphyCrsGlitch:struct->var21 rxBphyBadPLCP:struct->var22 rxStart:struct->var5];
  *(v8 + 3) = v28;
  *(v8 + 4) = *(&v29 + 1);
  *(v8 + 5) = v29;
  *(v8 + 6) = *(&v28 + 1);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  [WiFiUsageLQMTransformations rxDecodingErrorsPercentagesWithRxFrmTooLong:HIDWORD(struct->var1) rxFrmTooShrt:struct->var2 rxBadFCS:struct->var4 rxResponseTimeout:struct->var14 rxNoDelim:struct->var15 rxAnyErr:struct->var3 rxFifo0Ovfl:struct->var16 rxFifo1Ovfl:struct->var17];
  *(v8 + 7) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", v23, struct->var5, +[WiFiUsageLQMTransformations ratioScale]);
  *(v8 + 10) = v24;
  *(v8 + 11) = *(&v23 + 1);
  *(v8 + 12) = v27;
  *(v8 + 13) = *(&v24 + 1);
  *(v8 + 7) = v25;
  *(v8 + 8) = v26;
  v21 = 0u;
  v22 = 0u;
  [WiFiUsageLQMTransformations rxUcastPercentagesWithRxData:struct->var8 rxMgmt:struct->var9 rxCtrl:struct->var10];
  *(v8 + 8) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", v21, struct->var5, +[WiFiUsageLQMTransformations ratioScale]);
  *(v8 + 18) = *(&v21 + 1);
  *(v8 + 152) = v22;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  [WiFiUsageLQMTransformations ctrlFrmsPercentagesWithRxCtrlUcast:struct->var10 RTS:struct->var11 CTS:struct->var12 BACK:struct->var13 ACK:struct->var18];
  *(v8 + 21) = *(&v18 + 1);
  *(v8 + 22) = v19;
  *(v8 + 24) = v20;
  *(v8 + 23) = *(&v19 + 1);
  var19 = struct->var19;
  var20 = struct->var20;
  *(v8 + 25) = var19;
  *(v8 + 26) = var20;
  *(v8 + 9) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", (var20 + var19), struct->var5, +[WiFiUsageLQMTransformations ratioScale]);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  [WiFiUsageLQMTransformations ctrlFrmsPercentagesWithRxCtrlUcast:"ctrlFrmsPercentagesWithRxCtrlUcast:RTS:CTS:BACK:ACK:" RTS:struct->var25 + struct->var24 + struct->var32 + struct->var26 CTS:? BACK:? ACK:?];
  *(v8 + 248) = v15;
  *(v8 + 33) = v16;
  *(v8 + 35) = v17;
  *(v8 + 34) = *(&v16 + 1);
  *(v8 + 36) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", struct->var24, struct->var30, +[WiFiUsageLQMTransformations ratioScale]);
  var23 = struct->var23;
  *(v8 + 27) = var23;
  *(v8 + 28) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", struct->var29, var23, +[WiFiUsageLQMTransformations ratioScale]);
  *(v8 + 29) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", struct->var27, *(v8 + 27), +[WiFiUsageLQMTransformations ratioScale]);
  *(v8 + 30) = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", struct->var31, *(v8 + 27), +[WiFiUsageLQMTransformations ratioScale]);
  return v8;
}

@end