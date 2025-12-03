@interface WiFiUsageLQMUserSample
+ (id)allLQMProperties;
+ (id)featureFromFieldName:(id)name;
- (BOOL)isBspSampleDurationExpected:(unint64_t)expected;
- (WiFiUsageLQMUserSample)initWithInterfaceName:(id)name;
- (id)asDictionaryInto:(id)into;
- (id)description;
- (int64_t)rssiForTD;
- (void)appendBSSDetailsToDict:(id)dict;
- (void)appendNetworkDetailsToDict:(id)dict;
- (void)populateWithPerMLOLinkStats:(apple_mlo_link_lqm *)stats;
- (void)populateWithRssi:(int64_t)rssi noise:(int64_t)noise snr:(int64_t)snr selfCca:(unint64_t)cca otherCca:(unint64_t)otherCca interference:(unint64_t)interference totalReportedCca:(unint64_t)reportedCca beaconPer:(unint64_t)self0 rxCrsGlitch:(unint64_t)self1 rxBadPLCP:(unint64_t)self2 rxStart:(unint64_t)self3 sampleDuration:(unint64_t)self4;
- (void)populateWithRssi:(int64_t)rssi rssiInUse:(int64_t)use rssi0:(int64_t)rssi0 rssi1:(int64_t)rssi1 rssiMode:(unint64_t)mode noise:(int64_t)noise noise0:(int64_t)noise0 noise1:(int64_t)self0 snr:(int64_t)self1 selfCca:(unint64_t)self2 otherCca:(unint64_t)self3 interference:(unint64_t)self4 totalReportedCca:(unint64_t)self5 beaconPer:(unint64_t)self6 rxCrsGlitch:(unint64_t)self7 rxBadPLCP:(unint64_t)self8 rxStart:(unint64_t)self9 rxBphyCrsGlitch:(unint64_t)crsGlitch rxBphyBadPLCP:(unint64_t)cP sampleDuration:(unint64_t)duration isHighCCAFor2GHz:(BOOL)hz;
- (void)populateWithTxFrames:(unint64_t)frames RxFrames:(unint64_t)rxFrames TxFails:(unint64_t)fails TxRetries:(unint64_t)retries RxRetries:(unint64_t)rxRetries TxRate:(unint64_t)rate RxRate:(unint64_t)rxRate txRTS:(unint64_t)self0 txRTSFail:(unint64_t)self1 txMpdu:(unint64_t)self2 txAMPDU:(unint64_t)self3 averageTxPer:(unint64_t)self4;
- (void)updateWithChQualScore:(unint64_t)score txLatencyScore:(unint64_t)latencyScore rxLatencyScore:(unint64_t)rxLatencyScore txLossScore:(unint64_t)lossScore rxLossScore:(unint64_t)rxLossScore txLatencyP95:(unint64_t)p95 linkRecommendationFlags:(unint64_t)flags rtTrafficStatus:(unint64_t)self0;
- (void)updateWithInterfaceCapabilities:(id)capabilities AndNetworkDetails:(id)details;
- (void)updateWithTxBytes:(unint64_t)bytes RxBytes:(unint64_t)rxBytes TxL3Packets:(unint64_t)packets RxL3Packets:(unint64_t)l3Packets txBytesSecondary:(unint64_t)secondary rxBytesSecondary:(unint64_t)bytesSecondary;
@end

@implementation WiFiUsageLQMUserSample

+ (id)allLQMProperties
{
  v2 = MEMORY[0x277CBEB58];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___WiFiUsageLQMUserSample;
  v3 = objc_msgSendSuper2(&v7, sel_allLQMProperties);
  v4 = [v2 setWithSet:v3];

  [v4 addObject:@"fgApp"];
  v5 = [v4 copy];

  return v5;
}

- (WiFiUsageLQMUserSample)initWithInterfaceName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v13.receiver = self;
    v13.super_class = WiFiUsageLQMUserSample;
    v5 = [(WiFiUsageLQMUserSample *)&v13 init];
    v6 = [nameCopy copy];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v6;

    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v5->_timestamp;
    v5->_timestamp = date;

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
    selfCopy = self;
  }

  else
  {
    NSLog(&cfstr_SInvalidInterf.isa, "[WiFiUsageLQMUserSample initWithInterfaceName:]", 0);
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)populateWithRssi:(int64_t)rssi noise:(int64_t)noise snr:(int64_t)snr selfCca:(unint64_t)cca otherCca:(unint64_t)otherCca interference:(unint64_t)interference totalReportedCca:(unint64_t)reportedCca beaconPer:(unint64_t)self0 rxCrsGlitch:(unint64_t)self1 rxBadPLCP:(unint64_t)self2 rxStart:(unint64_t)self3 sampleDuration:(unint64_t)self4
{
  [(WiFiUsageLQMUserSample *)self setDuration:duration];
  if (rssi)
  {
    rssiCopy = rssi;
  }

  else
  {
    rssiCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(WiFiUsageLQMUserSample *)self setRssi:rssiCopy];
  if (noise)
  {
    noiseCopy = noise;
  }

  else
  {
    noiseCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(WiFiUsageLQMUserSample *)self setNoise:noiseCopy];
  if (snr)
  {
    snrCopy = snr;
  }

  else
  {
    snrCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(WiFiUsageLQMUserSample *)self setSnr:snrCopy];
  [(WiFiUsageLQMUserSample *)self setSelfCca:cca];
  [(WiFiUsageLQMUserSample *)self setOtherCca:otherCca];
  [(WiFiUsageLQMUserSample *)self setInterference:interference];
  [(WiFiUsageLQMUserSample *)self setTotalReportedCca:reportedCca];
  [(WiFiUsageLQMUserSample *)self setBeaconPer:per];
  if (glitch == 0x7FFFFFFFFFFFFFFFLL || p == 0x7FFFFFFFFFFFFFFFLL || start == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(WiFiUsageLQMUserSample *)self setDecodingAttempts:0x7FFFFFFFFFFFFFFFLL, p];
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

- (void)populateWithRssi:(int64_t)rssi rssiInUse:(int64_t)use rssi0:(int64_t)rssi0 rssi1:(int64_t)rssi1 rssiMode:(unint64_t)mode noise:(int64_t)noise noise0:(int64_t)noise0 noise1:(int64_t)self0 snr:(int64_t)self1 selfCca:(unint64_t)self2 otherCca:(unint64_t)self3 interference:(unint64_t)self4 totalReportedCca:(unint64_t)self5 beaconPer:(unint64_t)self6 rxCrsGlitch:(unint64_t)self7 rxBadPLCP:(unint64_t)self8 rxStart:(unint64_t)self9 rxBphyCrsGlitch:(unint64_t)crsGlitch rxBphyBadPLCP:(unint64_t)cP sampleDuration:(unint64_t)duration isHighCCAFor2GHz:(BOOL)hz
{
  [(WiFiUsageLQMUserSample *)self populateWithRssi:rssi noise:noise snr:snr selfCca:cca otherCca:otherCca interference:interference totalReportedCca:reportedCca beaconPer:per rxCrsGlitch:glitch rxBadPLCP:p rxStart:start sampleDuration:duration];
  self->_isHighCCAFor2GHz = hz;
  self->_rssiInUse = use;
  self->_perCoreRssiInUse = mode;
  if (rssi0)
  {
    rssi0Copy = rssi0;
  }

  else
  {
    rssi0Copy = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_rssi_core0 = rssi0Copy;
  if (rssi1)
  {
    rssi1Copy = rssi1;
  }

  else
  {
    rssi1Copy = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_rssi_core1 = rssi1Copy;
  v37.receiver = self;
  v37.super_class = WiFiUsageLQMUserSample;
  self->_diff_rssi_core0 = [-[WiFiUsageLQMUserSample class](&v37 class)];
  v36.receiver = self;
  v36.super_class = WiFiUsageLQMUserSample;
  self->_diff_rssi_core1 = [-[WiFiUsageLQMUserSample class](&v36 class)];
  v35.receiver = self;
  v35.super_class = WiFiUsageLQMUserSample;
  self->_diff_rssicore1_rssicore0 = [-[WiFiUsageLQMUserSample class](&v35 class)];
  if (noise0)
  {
    noise0Copy = noise0;
  }

  else
  {
    noise0Copy = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_noise_core0 = noise0Copy;
  if (noise1)
  {
    noise1Copy = noise1;
  }

  else
  {
    noise1Copy = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_noise_core1 = noise1Copy;
  v34.receiver = self;
  v34.super_class = WiFiUsageLQMUserSample;
  self->_diff_noise_core0 = [-[WiFiUsageLQMUserSample class](&v34 class)];
  v33.receiver = self;
  v33.super_class = WiFiUsageLQMUserSample;
  self->_diff_noise_core1 = [-[WiFiUsageLQMUserSample class](&v33 class)];
  v32.receiver = self;
  v32.super_class = WiFiUsageLQMUserSample;
  self->_diff_noisecore1_noisecore0 = [-[WiFiUsageLQMUserSample class](&v32 class)];
  if (glitch == 0x7FFFFFFFFFFFFFFFLL || p == 0x7FFFFFFFFFFFFFFFLL || start != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(WiFiUsageLQMUserSample *)self setDecodingAttempts:0x7FFFFFFFFFFFFFFFLL, p];
    [(WiFiUsageLQMUserSample *)self setRxStartOverDecodingAttemptsPercentage:0x7FFFFFFFFFFFFFFFLL];
    [(WiFiUsageLQMUserSample *)self setRxBadPlcpOverDecodingAttemptsPercentage:0x7FFFFFFFFFFFFFFFLL];
    [(WiFiUsageLQMUserSample *)self setRxCrsGlitchOverDecodingAttemptsPercentage:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    [WiFiUsageLQMTransformations decodingAttemptsWithRxCrsGlitch:"decodingAttemptsWithRxCrsGlitch:rxBadPLCP:RxBphyCrsGlitch:rxBphyBadPLCP:rxStart:" rxBadPLCP:glitch RxBphyCrsGlitch:? rxBphyBadPLCP:? rxStart:?];
    [(WiFiUsageLQMUserSample *)self setDecodingAttempts:0];
    [(WiFiUsageLQMUserSample *)self setRxStartOverDecodingAttemptsPercentage:0];
    [(WiFiUsageLQMUserSample *)self setRxCrsGlitchOverDecodingAttemptsPercentage:0];
    [(WiFiUsageLQMUserSample *)self setRxBadPlcpOverDecodingAttemptsPercentage:0];
  }
}

- (void)populateWithTxFrames:(unint64_t)frames RxFrames:(unint64_t)rxFrames TxFails:(unint64_t)fails TxRetries:(unint64_t)retries RxRetries:(unint64_t)rxRetries TxRate:(unint64_t)rate RxRate:(unint64_t)rxRate txRTS:(unint64_t)self0 txRTSFail:(unint64_t)self1 txMpdu:(unint64_t)self2 txAMPDU:(unint64_t)self3 averageTxPer:(unint64_t)self4
{
  self->_averageTxPer = per;
  [(WiFiUsageLQMUserSample *)self setTxFrames:?];
  [(WiFiUsageLQMUserSample *)self setRxFrames:rxFrames];
  [(WiFiUsageLQMUserSample *)self setTxRetriesOverTxFrames:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", retries, frames, +[WiFiUsageLQMTransformations ratioScale])];
  [(WiFiUsageLQMUserSample *)self setRxRetriesOverRxFrames:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", rxRetries, rxFrames, +[WiFiUsageLQMTransformations ratioScale])];
  [(WiFiUsageLQMUserSample *)self setTxFailsOverTxFrames:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", fails, frames, +[WiFiUsageLQMTransformations ratioScale])];
  [(WiFiUsageLQMUserSample *)self setTxRate:[WiFiUsageLQMTransformations validateRate:rate frames:frames]];
  [(WiFiUsageLQMUserSample *)self setRxRate:[WiFiUsageLQMTransformations validateRate:rxRate frames:rxFrames]];
  [(WiFiUsageLQMUserSample *)self setTxRTS:s];
  [(WiFiUsageLQMUserSample *)self setTxRTSFailOvertxRTS:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", fail, s, +[WiFiUsageLQMTransformations ratioScale])];
  v21 = [WiFiUsageLQMTransformations ratioWithValue:mpdu Over:u WithScale:1];

  [(WiFiUsageLQMUserSample *)self setTxMpduDensity:v21];
}

- (BOOL)isBspSampleDurationExpected:(unint64_t)expected
{
  duration = [(WiFiUsageLQMUserSample *)self duration];
  v5 = 1000 * duration - expected;
  if (1000 * duration < expected)
  {
    v5 = expected - 1000 * duration;
  }

  if (expected)
  {
    v6 = v5 >= 20000 * duration / 0x64;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (void)populateWithPerMLOLinkStats:(apple_mlo_link_lqm *)stats
{
  v5 = [WiFiUsageLQMMLOSample alloc];
  duration = self->_duration;
  v7 = *&stats->var4;
  v12[0] = *&stats->var0;
  v12[1] = v7;
  v13 = *&stats->var8;
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

- (void)updateWithTxBytes:(unint64_t)bytes RxBytes:(unint64_t)rxBytes TxL3Packets:(unint64_t)packets RxL3Packets:(unint64_t)l3Packets txBytesSecondary:(unint64_t)secondary rxBytesSecondary:(unint64_t)bytesSecondary
{
  [(WiFiUsageLQMUserSample *)self setTxBytesOverTxFrames:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", bytes, self->_txFrames, +[WiFiUsageLQMTransformations byteScale]== 1)];
  [(WiFiUsageLQMUserSample *)self setRxBytesOverRxFrames:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", rxBytes, self->_rxFrames, +[WiFiUsageLQMTransformations byteScale]== 1)];
  [(WiFiUsageLQMUserSample *)self setTxBytesOverTxL3Packets:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", bytes, packets, +[WiFiUsageLQMTransformations byteScale]== 1)];
  [(WiFiUsageLQMUserSample *)self setRxBytesOverRxL3Packets:+[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", rxBytes, l3Packets, +[WiFiUsageLQMTransformations byteScale]== 1)];
  [(WiFiUsageLQMUserSample *)self setTxL3Packets:packets];
  [(WiFiUsageLQMUserSample *)self setRxL3Packets:l3Packets];
  [(WiFiUsageLQMUserSample *)self setTxBytes:bytes];
  [(WiFiUsageLQMUserSample *)self setRxBytes:rxBytes];
  [(WiFiUsageLQMUserSample *)self setTxBytesSecondary:secondary];

  [(WiFiUsageLQMUserSample *)self setRxBytesSecondary:bytesSecondary];
}

- (void)updateWithInterfaceCapabilities:(id)capabilities AndNetworkDetails:(id)details
{
  capabilitiesCopy = capabilities;
  detailsCopy = details;
  [(WiFiUsageLQMUserSample *)self setNetworkDetails:detailsCopy];
  connectedBss = [detailsCopy connectedBss];

  [(WiFiUsageLQMUserSample *)self setBssDetails:connectedBss];
  if (capabilitiesCopy && [(WiFiUsageBssDetails *)self->_bssDetails nSS]== 0x7FFFFFFFFFFFFFFFLL)
  {
    -[WiFiUsageBssDetails setNSS:](self->_bssDetails, "setNSS:", [capabilitiesCopy currentNumberOfSpatialStreams]);
  }

  [(WiFiUsageLQMUserSample *)self setCapabilities:capabilitiesCopy];
  if (capabilitiesCopy)
  {
    bssDetails = self->_bssDetails;
    if (bssDetails)
    {
      +[WiFiUsageLQMTransformations ratePercentagesWithTxRate:rxRate:txFallbackRate:txFrames:rxFrames:nss:bw:phyMode:band:deviceMaxRate:](WiFiUsageLQMTransformations, "ratePercentagesWithTxRate:rxRate:txFallbackRate:txFrames:rxFrames:nss:bw:phyMode:band:deviceMaxRate:", self->_txRate, self->_rxRate, 0, self->_txFrames, self->_rxFrames, -[WiFiUsageBssDetails nSS](bssDetails, "nSS"), -[WiFiUsageBssDetails channelWidth](self->_bssDetails, "channelWidth"), __PAIR64__(-[WiFiUsageBssDetails band](self->_bssDetails, "band"), -[WiFiUsageBssDetails phyMode](self->_bssDetails, "phyMode")), [capabilitiesCopy maxInterfacePHYRate]);
      self->_txRateOverLinkTheoreticalMaxPercentage = 0;
      self->_rxRateOverLinkTheoreticalMaxPercentage = 0;
      self->_linkTheoreticalMaxRate = 0;
      self->_txRateOverDeviceTheoreticalMaxPercentage = 0;
      self->_rxRateOverDeviceTheoreticalMaxPercentage = 0;
    }
  }
}

- (void)updateWithChQualScore:(unint64_t)score txLatencyScore:(unint64_t)latencyScore rxLatencyScore:(unint64_t)rxLatencyScore txLossScore:(unint64_t)lossScore rxLossScore:(unint64_t)rxLossScore txLatencyP95:(unint64_t)p95 linkRecommendationFlags:(unint64_t)flags rtTrafficStatus:(unint64_t)self0
{
  [(WiFiUsageLQMUserSample *)self setChanQualScore:score];
  [(WiFiUsageLQMUserSample *)self setTxLatencyScore:latencyScore];
  [(WiFiUsageLQMUserSample *)self setRxLatencyScore:rxLatencyScore];
  [(WiFiUsageLQMUserSample *)self setTxLossScore:lossScore];
  [(WiFiUsageLQMUserSample *)self setRxLossScore:rxLossScore];
  [(WiFiUsageLQMUserSample *)self setTxLatencyP95:p95];
  if (flags == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = (flags >> 1) & 1;
  }

  [(WiFiUsageLQMUserSample *)self setDriverRoamRecommended:(flags != 0x7FFFFFFFFFFFFFFFLL) & flags];
  [(WiFiUsageLQMUserSample *)self setDriverTDrecommended:v16];

  [(WiFiUsageLQMUserSample *)self setTrafficState:status];
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

- (void)appendNetworkDetailsToDict:(id)dict
{
  networkDetails = self->_networkDetails;
  dictCopy = dict;
  v6 = [WiFiUsagePrivacyFilter getLabelsForNetworkProperties:networkDetails];
  [dictCopy addEntriesFromDictionary:v6];

  bssEnvironment = [(WiFiUsageNetworkDetails *)self->_networkDetails bssEnvironment];
  [dictCopy setObject:bssEnvironment forKeyedSubscript:@"bssEnvironment"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageNetworkDetails isPersonalHotspot](self->_networkDetails, "isPersonalHotspot")}];
  [dictCopy setObject:v8 forKeyedSubscript:@"isPersonalHotspot"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageNetworkDetails hasEnterpriseSecurity](self->_networkDetails, "hasEnterpriseSecurity")}];
  [dictCopy setObject:v9 forKeyedSubscript:@"isEnterprise"];
}

- (void)appendBSSDetailsToDict:(id)dict
{
  bssDetails = self->_bssDetails;
  if (bssDetails)
  {
    dictCopy = dict;
    v6 = [WiFiUsagePrivacyFilter bandAsString:[(WiFiUsageBssDetails *)bssDetails band]];
    [dictCopy setObject:v6 forKeyedSubscript:@"band"];

    v7 = [WiFiUsagePrivacyFilter subBandForBSPAsStringFromChannel:[(WiFiUsageBssDetails *)self->_bssDetails channel] andBand:[(WiFiUsageBssDetails *)self->_bssDetails band]];
    [dictCopy setObject:v7 forKeyedSubscript:@"bandForBSP"];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[WiFiUsageBssDetails channel](self->_bssDetails, "channel")}];
    stringValue = [v8 stringValue];
    [dictCopy setObject:stringValue forKeyedSubscript:@"channel"];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[WiFiUsageBssDetails channelWidth](self->_bssDetails, "channelWidth")}];
    stringValue2 = [v10 stringValue];
    [dictCopy setObject:stringValue2 forKeyedSubscript:@"channelWidth"];

    apProfile = [(WiFiUsageBssDetails *)self->_bssDetails apProfile];
    [dictCopy setObject:apProfile forKeyedSubscript:@"apProfile"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageBssDetails hasColocatedMLOs](self->_bssDetails, "hasColocatedMLOs")}];
    [dictCopy setObject:v13 forKeyedSubscript:@"hasColocatedMLOs"];

    currentMloLinks = [(WiFiUsageBssDetails *)self->_bssDetails currentMloLinks];
    v15 = [currentMloLinks sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v16 = [v15 componentsJoinedByString:@"|"];
    [dictCopy setObject:v16 forKeyedSubscript:@"MLOConfiguration"];

    mloTrafficSwitchEnabled = [(WiFiUsageBssDetails *)self->_bssDetails mloTrafficSwitchEnabled];
    [dictCopy setObject:mloTrafficSwitchEnabled forKeyedSubscript:@"isMloTrafficSwitchEnabled"];

    v18 = [WiFiUsagePrivacyFilter bandAsString:[(WiFiUsageBssDetails *)self->_bssDetails currentMloPreferredBand]];
    [dictCopy setObject:v18 forKeyedSubscript:@"mloPreferredBand"];
  }
}

- (id)asDictionaryInto:(id)into
{
  intoCopy = into;
  [(WiFiUsageLQMUserSample *)self appendBSSDetailsToDict:intoCopy];
  [(WiFiUsageLQMUserSample *)self appendNetworkDetailsToDict:intoCopy];
  v7.receiver = self;
  v7.super_class = WiFiUsageLQMUserSample;
  v5 = [(WiFiUsageLQMSample *)&v7 asDictionaryInto:intoCopy];

  return v5;
}

+ (id)featureFromFieldName:(id)name
{
  v3 = MEMORY[0x277CBEAC0];
  nameCopy = name;
  v5 = [v3 dictionaryWithObjectsAndKeys:{@"chanQualScore", @"minimum", @"txLatencyScore", @"minimum", @"rxLatencyScore", @"minimum", @"txLossScore", @"minimum", @"rxLossScore", @"maximum", @"txLatencyP95", @"maximum", @"isAnyAppInFG", @"maximum", @"isFTactive", @"maximum", @"isTimeSensitiveAppRunning", @"mode", @"driverRoamRecommended", @"mode", @"driverTDrecommended", @"mode", @"trafficState", @"mode", @"duration", 0}];
  v6 = [v5 objectForKeyedSubscript:nameCopy];

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