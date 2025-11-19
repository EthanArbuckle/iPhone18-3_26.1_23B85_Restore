@interface WiFiUsageLQMUserSample
+ (id)allLQMProperties;
+ (id)featureFromFieldName:(id)a3;
- (BOOL)isBspSampleDurationExpected:(unint64_t)a3;
- (WiFiUsageLQMUserSample)initWithInterfaceName:(id)a3;
- (id)asDictionaryInto:(id)a3;
- (id)description;
- (int64_t)rssiForTD;
- (void)appendBSSDetailsToDict:(id)a3;
- (void)appendNetworkDetailsToDict:(id)a3;
- (void)populateWithPerMLOLinkStats:(apple_mlo_link_lqm *)a3;
- (void)populateWithRssi:(int64_t)a3 noise:(int64_t)a4 snr:(int64_t)a5 selfCca:(unint64_t)a6 otherCca:(unint64_t)a7 interference:(unint64_t)a8 totalReportedCca:(unint64_t)a9 beaconPer:(unint64_t)a10 rxCrsGlitch:(unint64_t)a11 rxBadPLCP:(unint64_t)a12 rxStart:(unint64_t)a13 sampleDuration:(unint64_t)a14;
- (void)populateWithRssi:(int64_t)a3 rssiInUse:(int64_t)a4 rssi0:(int64_t)a5 rssi1:(int64_t)a6 rssiMode:(unint64_t)a7 noise:(int64_t)a8 noise0:(int64_t)a9 noise1:(int64_t)a10 snr:(int64_t)a11 selfCca:(unint64_t)a12 otherCca:(unint64_t)a13 interference:(unint64_t)a14 totalReportedCca:(unint64_t)a15 beaconPer:(unint64_t)a16 rxCrsGlitch:(unint64_t)a17 rxBadPLCP:(unint64_t)a18 rxStart:(unint64_t)a19 rxBphyCrsGlitch:(unint64_t)a20 rxBphyBadPLCP:(unint64_t)a21 sampleDuration:(unint64_t)a22 isHighCCAFor2GHz:(BOOL)a23;
- (void)populateWithTxFrames:(unint64_t)a3 RxFrames:(unint64_t)a4 TxFails:(unint64_t)a5 TxRetries:(unint64_t)a6 RxRetries:(unint64_t)a7 TxRate:(unint64_t)a8 RxRate:(unint64_t)a9 txRTS:(unint64_t)a10 txRTSFail:(unint64_t)a11 txMpdu:(unint64_t)a12 txAMPDU:(unint64_t)a13 averageTxPer:(unint64_t)a14;
- (void)updateWithChQualScore:(unint64_t)a3 txLatencyScore:(unint64_t)a4 rxLatencyScore:(unint64_t)a5 txLossScore:(unint64_t)a6 rxLossScore:(unint64_t)a7 txLatencyP95:(unint64_t)a8 linkRecommendationFlags:(unint64_t)a9 rtTrafficStatus:(unint64_t)a10;
- (void)updateWithInterfaceCapabilities:(id)a3 AndNetworkDetails:(id)a4;
- (void)updateWithTxBytes:(unint64_t)a3 RxBytes:(unint64_t)a4 TxL3Packets:(unint64_t)a5 RxL3Packets:(unint64_t)a6 txBytesSecondary:(unint64_t)a7 rxBytesSecondary:(unint64_t)a8;
@end

@implementation WiFiUsageLQMUserSample

+ (id)allLQMProperties
{
  v2 = MEMORY[0x277CBEB58];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___WiFiUsageLQMUserSample;
  v3 = objc_msgSendSuper2(&v7, sel_allLQMProperties);
  v4 = [v2 setWithSet:v3];

  [v4 addObject:@"fgApp"];
  v5 = [v4 copy];

  return v5;
}

- (WiFiUsageLQMUserSample)initWithInterfaceName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13.receiver = self;
    v13.super_class = WiFiUsageLQMUserSample;
    v5 = [(WiFiUsageLQMUserSample *)&v13 init];
    v6 = [v4 copy];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v6;

    v8 = [MEMORY[0x277CBEAA8] date];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v5->_rssi = 0x7FFFFFFFFFFFFFFFLL;
    v5->_noise = 0x7FFFFFFFFFFFFFFFLL;
    v5->_snr = 0x7FFFFFFFFFFFFFFFLL;
    v5->_rssi_core0 = 0x7FFFFFFFFFFFFFFFLL;
    v5->_rssi_core1 = 0x7FFFFFFFFFFFFFFFLL;
    v5->_diff_rssi_core0 = 0x7FFFFFFFFFFFFFFFLL;
    v5->_diff_rssi_core1 = 0x7FFFFFFFFFFFFFFFLL;
    v5->_diff_rssicore1_rssicore0 = 0x7FFFFFFFFFFFFFFFLL;
    v5->_noise_core0 = 0x7FFFFFFFFFFFFFFFLL;
    v5->_noise_core1 = 0x7FFFFFFFFFFFFFFFLL;
    v5->_diff_noise_core0 = 0x7FFFFFFFFFFFFFFFLL;
    v5->_diff_noise_core1 = 0x7FFFFFFFFFFFFFFFLL;
    v5->_diff_noisecore1_noisecore0 = 0x7FFFFFFFFFFFFFFFLL;
    v5->_selfCca = 0x7FFFFFFFFFFFFFFFLL;
    v5->_otherCca = 0x7FFFFFFFFFFFFFFFLL;
    v5->_interference = 0x7FFFFFFFFFFFFFFFLL;
    v5->_totalReportedCca = 0x7FFFFFFFFFFFFFFFLL;
    v5->_beaconPer = 0x7FFFFFFFFFFFFFFFLL;
    v5->_decodingAttempts = 0x7FFFFFFFFFFFFFFFLL;
    v5->_txFrames = 0x7FFFFFFFFFFFFFFFLL;
    v5->_rxFrames = 0x7FFFFFFFFFFFFFFFLL;
    v5->_txL3Packets = 0x7FFFFFFFFFFFFFFFLL;
    v5->_rxL3Packets = 0x7FFFFFFFFFFFFFFFLL;
    v5->_txRate = 0x7FFFFFFFFFFFFFFFLL;
    v5->_rxRate = 0x7FFFFFFFFFFFFFFFLL;
    v5->_linkTheoreticalMaxRate = 0x7FFFFFFFFFFFFFFFLL;
    v5->_txRateOverLinkTheoreticalMaxPercentage = 0x7FFFFFFFFFFFFFFFLL;
    v5->_rxRateOverLinkTheoreticalMaxPercentage = 0x7FFFFFFFFFFFFFFFLL;
    v5->_txRateOverDeviceTheoreticalMaxPercentage = 0x7FFFFFFFFFFFFFFFLL;
    v5->_rxRateOverDeviceTheoreticalMaxPercentage = 0x7FFFFFFFFFFFFFFFLL;
    v5->_txRTS = 0x7FFFFFFFFFFFFFFFLL;
    v5->_txMpduDensity = 0x7FFFFFFFFFFFFFFFLL;
    v5->_chanQualScore = 0x7FFFFFFFFFFFFFFFLL;
    v5->_txLatencyScore = 0x7FFFFFFFFFFFFFFFLL;
    v5->_rxLatencyScore = 0x7FFFFFFFFFFFFFFFLL;
    v5->_txLossScore = 0x7FFFFFFFFFFFFFFFLL;
    v5->_rxLossScore = 0x7FFFFFFFFFFFFFFFLL;
    v5->_txLatencyP95 = 0x7FFFFFFFFFFFFFFFLL;
    v5->_driverRoamRecommended = 0x7FFFFFFFFFFFFFFFLL;
    v5->_driverTDrecommended = 0x7FFFFFFFFFFFFFFFLL;
    v5->_trafficState = 0x7FFFFFFFFFFFFFFFLL;
    v5->_isBSPActive = 0;
    v5->_bspTimeToTST = 0x7FFFFFFFFFFFFFFFLL;
    v5->_isScanActiveBSP = 0;
    v5->_isP2PActiveBSP = 0;
    v5->_bspTriggerCount = 0x7FFFFFFFFFFFFFFFLL;
    v5->_bspMutePercentage = 0x7FFFFFFFFFFFFFFFLL;
    v5->_bspMaxMuteMS = 0x7FFFFFFFFFFFFFFFLL;
    v5->_bspAvgMuteMS = 0x7FFFFFFFFFFFFFFFLL;
    v5->_bspErrorPercentage = 0x7FFFFFFFFFFFFFFFLL;
    v5->_bspTimeOutPercentageOfTriggers = 0x7FFFFFFFFFFFFFFFLL;
    v5->_bspRejectOrFailPercentageOfTriggers = 0x7FFFFFFFFFFFFFFFLL;
    v5->_bspMaxConsecutiveFails = 0x7FFFFFFFFFFFFFFFLL;
    mloSamples = v5->_mloSamples;
    v5->_mloSamples = 0;

    self = v5;
    v11 = self;
  }

  else
  {
    NSLog(&cfstr_SInvalidInterf.isa, "[WiFiUsageLQMUserSample initWithInterfaceName:]", 0);
    v11 = 0;
  }

  return v11;
}

- (void)populateWithRssi:(int64_t)a3 noise:(int64_t)a4 snr:(int64_t)a5 selfCca:(unint64_t)a6 otherCca:(unint64_t)a7 interference:(unint64_t)a8 totalReportedCca:(unint64_t)a9 beaconPer:(unint64_t)a10 rxCrsGlitch:(unint64_t)a11 rxBadPLCP:(unint64_t)a12 rxStart:(unint64_t)a13 sampleDuration:(unint64_t)a14
{
  [(WiFiUsageLQMUserSample *)self setDuration:a14];
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(WiFiUsageLQMUserSample *)self setRssi:v21];
  if (a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(WiFiUsageLQMUserSample *)self setNoise:v22];
  if (a5)
  {
    v23 = a5;
  }

  else
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(WiFiUsageLQMUserSample *)self setSnr:v23];
  [(WiFiUsageLQMUserSample *)self setSelfCca:a6];
  [(WiFiUsageLQMUserSample *)self setOtherCca:a7];
  [(WiFiUsageLQMUserSample *)self setInterference:a8];
  [(WiFiUsageLQMUserSample *)self setTotalReportedCca:a9];
  [(WiFiUsageLQMUserSample *)self setBeaconPer:a10];
  if (a11 == 0x7FFFFFFFFFFFFFFFLL || a12 == 0x7FFFFFFFFFFFFFFFLL || a13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(WiFiUsageLQMUserSample *)self setDecodingAttempts:0x7FFFFFFFFFFFFFFFLL, a12];
    [(WiFiUsageLQMUserSample *)self setRxStartOverDecodingAttemptsPercentage:0x7FFFFFFFFFFFFFFFLL];
    [(WiFiUsageLQMUserSample *)self setRxBadPlcpOverDecodingAttemptsPercentage:0x7FFFFFFFFFFFFFFFLL];

    [(WiFiUsageLQMUserSample *)self setRxCrsGlitchOverDecodingAttemptsPercentage:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    [WiFiUsageLQMTransformations decodingAttemptsWithRxCrsGlitch:"decodingAttemptsWithRxCrsGlitch:rxBadPLCP:RxBphyCrsGlitch:rxBphyBadPLCP:rxStart:" rxBadPLCP:? RxBphyCrsGlitch:? rxBphyBadPLCP:? rxStart:?];
    [(WiFiUsageLQMUserSample *)self setDecodingAttempts:0];
    [(WiFiUsageLQMUserSample *)self setRxStartOverDecodingAttemptsPercentage:0];
    [(WiFiUsageLQMUserSample *)self setRxBadPlcpOverDecodingAttemptsPercentage:0];
    [(WiFiUsageLQMUserSample *)self setRxCrsGlitchOverDecodingAttemptsPercentage:0];
  }
}

- (void)populateWithRssi:(int64_t)a3 rssiInUse:(int64_t)a4 rssi0:(int64_t)a5 rssi1:(int64_t)a6 rssiMode:(unint64_t)a7 noise:(int64_t)a8 noise0:(int64_t)a9 noise1:(int64_t)a10 snr:(int64_t)a11 selfCca:(unint64_t)a12 otherCca:(unint64_t)a13 interference:(unint64_t)a14 totalReportedCca:(unint64_t)a15 beaconPer:(unint64_t)a16 rxCrsGlitch:(unint64_t)a17 rxBadPLCP:(unint64_t)a18 rxStart:(unint64_t)a19 rxBphyCrsGlitch:(unint64_t)a20 rxBphyBadPLCP:(unint64_t)a21 sampleDuration:(unint64_t)a22 isHighCCAFor2GHz:(BOOL)a23
{
  [(WiFiUsageLQMUserSample *)self populateWithRssi:a3 noise:a8 snr:a11 selfCca:a12 otherCca:a13 interference:a14 totalReportedCca:a15 beaconPer:a16 rxCrsGlitch:a17 rxBadPLCP:a18 rxStart:a19 sampleDuration:a22];
  self->_isHighCCAFor2GHz = a23;
  self->_rssiInUse = a4;
  self->_perCoreRssiInUse = a7;
  if (a5)
  {
    v28 = a5;
  }

  else
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_rssi_core0 = v28;
  if (a6)
  {
    v29 = a6;
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_rssi_core1 = v29;
  v37.receiver = self;
  v37.super_class = WiFiUsageLQMUserSample;
  self->_diff_rssi_core0 = [-[WiFiUsageLQMUserSample class](&v37 class)];
  v36.receiver = self;
  v36.super_class = WiFiUsageLQMUserSample;
  self->_diff_rssi_core1 = [-[WiFiUsageLQMUserSample class](&v36 class)];
  v35.receiver = self;
  v35.super_class = WiFiUsageLQMUserSample;
  self->_diff_rssicore1_rssicore0 = [-[WiFiUsageLQMUserSample class](&v35 class)];
  if (a9)
  {
    v30 = a9;
  }

  else
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_noise_core0 = v30;
  if (a10)
  {
    v31 = a10;
  }

  else
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_noise_core1 = v31;
  v34.receiver = self;
  v34.super_class = WiFiUsageLQMUserSample;
  self->_diff_noise_core0 = [-[WiFiUsageLQMUserSample class](&v34 class)];
  v33.receiver = self;
  v33.super_class = WiFiUsageLQMUserSample;
  self->_diff_noise_core1 = [-[WiFiUsageLQMUserSample class](&v33 class)];
  v32.receiver = self;
  v32.super_class = WiFiUsageLQMUserSample;
  self->_diff_noisecore1_noisecore0 = [-[WiFiUsageLQMUserSample class](&v32 class)];
  if (a17 == 0x7FFFFFFFFFFFFFFFLL || a18 == 0x7FFFFFFFFFFFFFFFLL || a19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(WiFiUsageLQMUserSample *)self setDecodingAttempts:0x7FFFFFFFFFFFFFFFLL, a18];
    [(WiFiUsageLQMUserSample *)self setRxStartOverDecodingAttemptsPercentage:0x7FFFFFFFFFFFFFFFLL];
    [(WiFiUsageLQMUserSample *)self setRxBadPlcpOverDecodingAttemptsPercentage:0x7FFFFFFFFFFFFFFFLL];
    [(WiFiUsageLQMUserSample *)self setRxCrsGlitchOverDecodingAttemptsPercentage:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    [WiFiUsageLQMTransformations decodingAttemptsWithRxCrsGlitch:"decodingAttemptsWithRxCrsGlitch:rxBadPLCP:RxBphyCrsGlitch:rxBphyBadPLCP:rxStart:" rxBadPLCP:a17 RxBphyCrsGlitch:? rxBphyBadPLCP:? rxStart:?];
    [(WiFiUsageLQMUserSample *)self setDecodingAttempts:0];
    [(WiFiUsageLQMUserSample *)self setRxStartOverDecodingAttemptsPercentage:0];
    [(WiFiUsageLQMUserSample *)self setRxCrsGlitchOverDecodingAttemptsPercentage:0];
    [(WiFiUsageLQMUserSample *)self setRxBadPlcpOverDecodingAttemptsPercentage:0];
  }
}

- (void)populateWithTxFrames:(unint64_t)a3 RxFrames:(unint64_t)a4 TxFails:(unint64_t)a5 TxRetries:(unint64_t)a6 RxRetries:(unint64_t)a7 TxRate:(unint64_t)a8 RxRate:(unint64_t)a9 txRTS:(unint64_t)a10 txRTSFail:(unint64_t)a11 txMpdu:(unint64_t)a12 txAMPDU:(unint64_t)a13 averageTxPer:(unint64_t)a14
{
  self->_averageTxPer = a14;
  [(WiFiUsageLQMUserSample *)self setTxFrames:?];
  [(WiFiUsageLQMUserSample *)self setRxFrames:a4];
  [(WiFiUsageLQMUserSample *)self setTxRetriesOverTxFrames:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a6, a3, +[WiFiUsageLQMTransformations ratioScale])];
  [(WiFiUsageLQMUserSample *)self setRxRetriesOverRxFrames:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a7, a4, +[WiFiUsageLQMTransformations ratioScale])];
  [(WiFiUsageLQMUserSample *)self setTxFailsOverTxFrames:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a5, a3, +[WiFiUsageLQMTransformations ratioScale])];
  [(WiFiUsageLQMUserSample *)self setTxRate:[WiFiUsageLQMTransformations validateRate:a8 frames:a3]];
  [(WiFiUsageLQMUserSample *)self setRxRate:[WiFiUsageLQMTransformations validateRate:a9 frames:a4]];
  [(WiFiUsageLQMUserSample *)self setTxRTS:a10];
  [(WiFiUsageLQMUserSample *)self setTxRTSFailOvertxRTS:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a11, a10, +[WiFiUsageLQMTransformations ratioScale])];
  v21 = [WiFiUsageLQMTransformations ratioWithValue:a12 Over:a13 WithScale:1];

  [(WiFiUsageLQMUserSample *)self setTxMpduDensity:v21];
}

- (BOOL)isBspSampleDurationExpected:(unint64_t)a3
{
  v4 = [(WiFiUsageLQMUserSample *)self duration];
  v5 = 1000 * v4 - a3;
  if (1000 * v4 < a3)
  {
    v5 = a3 - 1000 * v4;
  }

  if (a3)
  {
    v6 = v5 >= 20000 * v4 / 0x64;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (void)populateWithPerMLOLinkStats:(apple_mlo_link_lqm *)a3
{
  v5 = [WiFiUsageLQMMLOSample alloc];
  duration = self->_duration;
  v7 = *&a3->var4;
  v12[0] = *&a3->var0;
  v12[1] = v7;
  v13 = *&a3->var8;
  v8 = [(WiFiUsageLQMMLOSample *)v5 initWith:v12 andDuration:duration];
  if (v8)
  {
    mloSamples = self->_mloSamples;
    if (!mloSamples)
    {
      v10 = objc_opt_new();
      v11 = self->_mloSamples;
      self->_mloSamples = v10;

      mloSamples = self->_mloSamples;
    }

    [(NSMutableArray *)mloSamples addObject:v8];
  }
}

- (void)updateWithTxBytes:(unint64_t)a3 RxBytes:(unint64_t)a4 TxL3Packets:(unint64_t)a5 RxL3Packets:(unint64_t)a6 txBytesSecondary:(unint64_t)a7 rxBytesSecondary:(unint64_t)a8
{
  [(WiFiUsageLQMUserSample *)self setTxBytesOverTxFrames:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a3, self->_txFrames, +[WiFiUsageLQMTransformations byteScale]== 1)];
  [(WiFiUsageLQMUserSample *)self setRxBytesOverRxFrames:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a4, self->_rxFrames, +[WiFiUsageLQMTransformations byteScale]== 1)];
  [(WiFiUsageLQMUserSample *)self setTxBytesOverTxL3Packets:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a3, a5, +[WiFiUsageLQMTransformations byteScale]== 1)];
  [(WiFiUsageLQMUserSample *)self setRxBytesOverRxL3Packets:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", a4, a6, +[WiFiUsageLQMTransformations byteScale]== 1)];
  [(WiFiUsageLQMUserSample *)self setTxL3Packets:a5];
  [(WiFiUsageLQMUserSample *)self setRxL3Packets:a6];
  [(WiFiUsageLQMUserSample *)self setTxBytes:a3];
  [(WiFiUsageLQMUserSample *)self setRxBytes:a4];
  [(WiFiUsageLQMUserSample *)self setTxBytesSecondary:a7];

  [(WiFiUsageLQMUserSample *)self setRxBytesSecondary:a8];
}

- (void)updateWithInterfaceCapabilities:(id)a3 AndNetworkDetails:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(WiFiUsageLQMUserSample *)self setNetworkDetails:v7];
  v8 = [v7 connectedBss];

  [(WiFiUsageLQMUserSample *)self setBssDetails:v8];
  if (v6 && [(WiFiUsageBssDetails *)self->_bssDetails nSS]== 0x7FFFFFFFFFFFFFFFLL)
  {
    -[WiFiUsageBssDetails setNSS:](self->_bssDetails, "setNSS:", [v6 currentNumberOfSpatialStreams]);
  }

  [(WiFiUsageLQMUserSample *)self setCapabilities:v6];
  if (v6)
  {
    bssDetails = self->_bssDetails;
    if (bssDetails)
    {
      +[WiFiUsageLQMTransformations ratePercentagesWithTxRate:rxRate:txFallbackRate:txFrames:rxFrames:nss:bw:phyMode:band:deviceMaxRate:](WiFiUsageLQMTransformations, "ratePercentagesWithTxRate:rxRate:txFallbackRate:txFrames:rxFrames:nss:bw:phyMode:band:deviceMaxRate:", self->_txRate, self->_rxRate, 0, self->_txFrames, self->_rxFrames, -[WiFiUsageBssDetails nSS](bssDetails, "nSS"), -[WiFiUsageBssDetails channelWidth](self->_bssDetails, "channelWidth"), __PAIR64__(-[WiFiUsageBssDetails band](self->_bssDetails, "band"), -[WiFiUsageBssDetails phyMode](self->_bssDetails, "phyMode")), [v6 maxInterfacePHYRate]);
      self->_txRateOverLinkTheoreticalMaxPercentage = 0;
      self->_rxRateOverLinkTheoreticalMaxPercentage = 0;
      self->_linkTheoreticalMaxRate = 0;
      self->_txRateOverDeviceTheoreticalMaxPercentage = 0;
      self->_rxRateOverDeviceTheoreticalMaxPercentage = 0;
    }
  }
}

- (void)updateWithChQualScore:(unint64_t)a3 txLatencyScore:(unint64_t)a4 rxLatencyScore:(unint64_t)a5 txLossScore:(unint64_t)a6 rxLossScore:(unint64_t)a7 txLatencyP95:(unint64_t)a8 linkRecommendationFlags:(unint64_t)a9 rtTrafficStatus:(unint64_t)a10
{
  [(WiFiUsageLQMUserSample *)self setChanQualScore:a3];
  [(WiFiUsageLQMUserSample *)self setTxLatencyScore:a4];
  [(WiFiUsageLQMUserSample *)self setRxLatencyScore:a5];
  [(WiFiUsageLQMUserSample *)self setTxLossScore:a6];
  [(WiFiUsageLQMUserSample *)self setRxLossScore:a7];
  [(WiFiUsageLQMUserSample *)self setTxLatencyP95:a8];
  if (a9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = (a9 >> 1) & 1;
  }

  [(WiFiUsageLQMUserSample *)self setDriverRoamRecommended:(a9 != 0x7FFFFFFFFFFFFFFFLL) & a9];
  [(WiFiUsageLQMUserSample *)self setDriverTDrecommended:v16];

  [(WiFiUsageLQMUserSample *)self setTrafficState:a10];
}

- (int64_t)rssiForTD
{
  perCoreRssiInUse = self->_perCoreRssiInUse;
  if (perCoreRssiInUse > 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *(&self->super.super.isa + *off_2789C7490[perCoreRssiInUse]);
  }
}

- (id)description
{
  v2 = MEMORY[0x277CCAB68];
  networkDetails = self->_networkDetails;
  v8.receiver = self;
  v8.super_class = WiFiUsageLQMUserSample;
  v4 = [(WiFiUsageLQMSample *)&v8 description];
  v5 = [v2 stringWithFormat:@"%@{%@}", networkDetails, v4];

  v6 = [MEMORY[0x277CCACA8] stringWithString:v5];

  return v6;
}

- (void)appendNetworkDetailsToDict:(id)a3
{
  networkDetails = self->_networkDetails;
  v5 = a3;
  v6 = [WiFiUsagePrivacyFilter getLabelsForNetworkProperties:networkDetails];
  [v5 addEntriesFromDictionary:v6];

  v7 = [(WiFiUsageNetworkDetails *)self->_networkDetails bssEnvironment];
  [v5 setObject:v7 forKeyedSubscript:@"bssEnvironment"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageNetworkDetails isPersonalHotspot](self->_networkDetails, "isPersonalHotspot")}];
  [v5 setObject:v8 forKeyedSubscript:@"isPersonalHotspot"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageNetworkDetails hasEnterpriseSecurity](self->_networkDetails, "hasEnterpriseSecurity")}];
  [v5 setObject:v9 forKeyedSubscript:@"isEnterprise"];
}

- (void)appendBSSDetailsToDict:(id)a3
{
  bssDetails = self->_bssDetails;
  if (bssDetails)
  {
    v5 = a3;
    v6 = [WiFiUsagePrivacyFilter bandAsString:[(WiFiUsageBssDetails *)bssDetails band]];
    [v5 setObject:v6 forKeyedSubscript:@"band"];

    v7 = [WiFiUsagePrivacyFilter subBandForBSPAsStringFromChannel:[(WiFiUsageBssDetails *)self->_bssDetails channel] andBand:[(WiFiUsageBssDetails *)self->_bssDetails band]];
    [v5 setObject:v7 forKeyedSubscript:@"bandForBSP"];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[WiFiUsageBssDetails channel](self->_bssDetails, "channel")}];
    v9 = [v8 stringValue];
    [v5 setObject:v9 forKeyedSubscript:@"channel"];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[WiFiUsageBssDetails channelWidth](self->_bssDetails, "channelWidth")}];
    v11 = [v10 stringValue];
    [v5 setObject:v11 forKeyedSubscript:@"channelWidth"];

    v12 = [(WiFiUsageBssDetails *)self->_bssDetails apProfile];
    [v5 setObject:v12 forKeyedSubscript:@"apProfile"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageBssDetails hasColocatedMLOs](self->_bssDetails, "hasColocatedMLOs")}];
    [v5 setObject:v13 forKeyedSubscript:@"hasColocatedMLOs"];

    v14 = [(WiFiUsageBssDetails *)self->_bssDetails currentMloLinks];
    v15 = [v14 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v16 = [v15 componentsJoinedByString:@"|"];
    [v5 setObject:v16 forKeyedSubscript:@"MLOConfiguration"];

    v17 = [(WiFiUsageBssDetails *)self->_bssDetails mloTrafficSwitchEnabled];
    [v5 setObject:v17 forKeyedSubscript:@"isMloTrafficSwitchEnabled"];

    v18 = [WiFiUsagePrivacyFilter bandAsString:[(WiFiUsageBssDetails *)self->_bssDetails currentMloPreferredBand]];
    [v5 setObject:v18 forKeyedSubscript:@"mloPreferredBand"];
  }
}

- (id)asDictionaryInto:(id)a3
{
  v4 = a3;
  [(WiFiUsageLQMUserSample *)self appendBSSDetailsToDict:v4];
  [(WiFiUsageLQMUserSample *)self appendNetworkDetailsToDict:v4];
  v7.receiver = self;
  v7.super_class = WiFiUsageLQMUserSample;
  v5 = [(WiFiUsageLQMSample *)&v7 asDictionaryInto:v4];

  return v5;
}

+ (id)featureFromFieldName:(id)a3
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjectsAndKeys:{@"chanQualScore", @"minimum", @"txLatencyScore", @"minimum", @"rxLatencyScore", @"minimum", @"txLossScore", @"minimum", @"rxLossScore", @"maximum", @"txLatencyP95", @"maximum", @"isAnyAppInFG", @"maximum", @"isFTactive", @"maximum", @"isTimeSensitiveAppRunning", @"mode", @"driverRoamRecommended", @"mode", @"driverTDrecommended", @"mode", @"trafficState", @"mode", @"duration", 0}];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"median";
  }

  return v7;
}

@end