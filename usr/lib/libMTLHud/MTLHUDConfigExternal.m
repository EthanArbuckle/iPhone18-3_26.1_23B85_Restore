@interface MTLHUDConfigExternal
- (BOOL)autoInterpose;
- (BOOL)enabled;
- (BOOL)encoderTimingEnabled;
- (BOOL)explicitFrameBoundary;
- (BOOL)insightsEnabled;
- (BOOL)logAllMetrics;
- (BOOL)logShaderCompilerEnabled;
- (BOOL)loggingEnabled;
- (BOOL)showInsightMetrics;
- (BOOL)showInternalMetrics;
- (BOOL)showMetricsValuerange;
- (BOOL)showZeroMetrics;
- (double)encoderGPUTimelineSwapDeltaInSeconds;
- (double)energyReportSampleIntervalInSeconds;
- (float)encoderGPUTimelineTrackHeight;
- (float)energyReportHeight;
- (float)insightReportIntervalInSeconds;
- (float)insightTimeOutInSeconds;
- (float)minSizeRequired;
- (float)opacity;
- (float)positionX;
- (float)positionY;
- (float)scale;
- (float)transientMetricTimeOutInSeconds;
- (float)width;
- (unint64_t)alignment;
- (unint64_t)encoderGPUTimelineMaxFrameCount;
- (unint64_t)layoutForMainLayer;
- (unint64_t)layoutForOtherLayers;
- (unsigned)targetFPS;
- (void)setAlignment:(unint64_t)a3;
- (void)setAutoInterpose:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setEncoderGPUTimelineMaxFrameCount:(unint64_t)a3;
- (void)setEncoderGPUTimelineSwapDeltaInSeconds:(double)a3;
- (void)setEncoderGPUTimelineTrackHeight:(float)a3;
- (void)setEncoderTimingEnabled:(BOOL)a3;
- (void)setEnergyReportHeight:(float)a3;
- (void)setEnergyReportSampleIntervalInSeconds:(double)a3;
- (void)setExplicitFrameBoundary:(BOOL)a3;
- (void)setInsightReportIntervalInSeconds:(float)a3;
- (void)setInsightTimeOutInSeconds:(float)a3;
- (void)setInsightsEnabled:(BOOL)a3;
- (void)setLayoutForMainLayer:(unint64_t)a3;
- (void)setLayoutForOtherLayers:(unint64_t)a3;
- (void)setLogAllMetrics:(BOOL)a3;
- (void)setLogShaderCompilerEnabled:(BOOL)a3;
- (void)setLoggingEnabled:(BOOL)a3;
- (void)setMinSizeRequired:(float)a3;
- (void)setOpacity:(float)a3;
- (void)setPositionX:(float)a3;
- (void)setPositionY:(float)a3;
- (void)setScale:(float)a3;
- (void)setShowInsightMetrics:(BOOL)a3;
- (void)setShowInternalMetrics:(BOOL)a3;
- (void)setShowMetricsValuerange:(BOOL)a3;
- (void)setShowZeroMetrics:(BOOL)a3;
- (void)setTargetFPS:(unsigned int)a3;
- (void)setTransientMetricTimeOutInSeconds:(float)a3;
- (void)setWidth:(float)a3;
@end

@implementation MTLHUDConfigExternal

- (BOOL)enabled
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return HUDGetGlobalConfig_config;
}

- (BOOL)loggingEnabled
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return HIBYTE(HUDGetGlobalConfig_config);
}

- (BOOL)logShaderCompilerEnabled
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return byte_76C8A;
}

- (BOOL)insightsEnabled
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return byte_76C8B;
}

- (BOOL)encoderTimingEnabled
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return byte_76C8C;
}

- (BOOL)autoInterpose
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return byte_76C8D;
}

- (BOOL)showZeroMetrics
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return byte_76C8E;
}

- (BOOL)showInsightMetrics
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return byte_76C8F;
}

- (float)opacity
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *&dword_76CB0;
}

- (float)scale
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *&dword_76CB4;
}

- (float)encoderGPUTimelineTrackHeight
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *&dword_76CB8;
}

- (float)energyReportHeight
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *&dword_76CBC;
}

- (float)positionX
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *&qword_76CC0;
}

- (float)positionY
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *(&qword_76CC0 + 1);
}

- (unint64_t)alignment
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return xmmword_76CC8;
}

- (unint64_t)layoutForMainLayer
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *(&xmmword_76CC8 + 1);
}

- (unint64_t)layoutForOtherLayers
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return qword_76CD8;
}

- (unint64_t)encoderGPUTimelineMaxFrameCount
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return qword_76CE0;
}

- (double)encoderGPUTimelineSwapDeltaInSeconds
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *&xmmword_76CE8;
}

- (double)energyReportSampleIntervalInSeconds
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *(&xmmword_76CE8 + 1);
}

- (float)minSizeRequired
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *&dword_76CF8;
}

- (float)width
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *&dword_76CFC;
}

- (float)insightTimeOutInSeconds
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *&dword_76D00;
}

- (float)insightReportIntervalInSeconds
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *&dword_76D04;
}

- (unsigned)targetFPS
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return dword_76D0C;
}

- (BOOL)explicitFrameBoundary
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return byte_76C90;
}

- (BOOL)showInternalMetrics
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return (byte_76C91 & 1) == 0;
}

- (float)transientMetricTimeOutInSeconds
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return *&qword_76D10;
}

- (BOOL)showMetricsValuerange
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return byte_76CA6;
}

- (BOOL)logAllMetrics
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return byte_76CA7;
}

- (void)setEnabled:(BOOL)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  LOBYTE(HUDGetGlobalConfig_config) = a3;
}

- (void)setLoggingEnabled:(BOOL)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  HIBYTE(HUDGetGlobalConfig_config) = a3;
}

- (void)setLogShaderCompilerEnabled:(BOOL)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8A = a3;
}

- (void)setInsightsEnabled:(BOOL)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8B = a3;
}

- (void)setEncoderTimingEnabled:(BOOL)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8C = a3;
}

- (void)setAutoInterpose:(BOOL)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8D = a3;
}

- (void)setShowZeroMetrics:(BOOL)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8E = a3;
}

- (void)setShowInsightMetrics:(BOOL)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8F = a3;
}

- (void)setOpacity:(float)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CB0 = LODWORD(a3);
}

- (void)setScale:(float)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CB4 = LODWORD(a3);
  byte_76C9E = 1;
}

- (void)setEncoderGPUTimelineTrackHeight:(float)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CB8 = LODWORD(a3);
}

- (void)setEnergyReportHeight:(float)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CBC = LODWORD(a3);
}

- (void)setPositionX:(float)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *&qword_76CC0 = a3;
  *&xmmword_76CC8 = 1;
}

- (void)setPositionY:(float)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *(&qword_76CC0 + 1) = a3;
  *&xmmword_76CC8 = 1;
}

- (void)setAlignment:(unint64_t)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *&xmmword_76CC8 = a3;
}

- (void)setLayoutForMainLayer:(unint64_t)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *(&xmmword_76CC8 + 1) = a3;
}

- (void)setLayoutForOtherLayers:(unint64_t)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  qword_76CD8 = a3;
}

- (void)setEncoderGPUTimelineMaxFrameCount:(unint64_t)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  qword_76CE0 = a3;
}

- (void)setEncoderGPUTimelineSwapDeltaInSeconds:(double)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *&xmmword_76CE8 = a3;
}

- (void)setEnergyReportSampleIntervalInSeconds:(double)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *(&xmmword_76CE8 + 1) = a3;
}

- (void)setMinSizeRequired:(float)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CF8 = LODWORD(a3);
}

- (void)setWidth:(float)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CFC = LODWORD(a3);
}

- (void)setInsightTimeOutInSeconds:(float)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76D00 = LODWORD(a3);
}

- (void)setInsightReportIntervalInSeconds:(float)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76D04 = LODWORD(a3);
}

- (void)setTargetFPS:(unsigned int)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76D0C = a3;
}

- (void)setExplicitFrameBoundary:(BOOL)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C90 = a3;
}

- (void)setShowInternalMetrics:(BOOL)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C91 = !a3;
}

- (void)setTransientMetricTimeOutInSeconds:(float)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *&qword_76D10 = a3;
}

- (void)setShowMetricsValuerange:(BOOL)a3
{
  v3 = a3;
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76CA6 = v3;
  v4 = 300.0;
  if (v3)
  {
    v4 = 350.0;
  }

  dword_76CFC = LODWORD(v4);
}

- (void)setLogAllMetrics:(BOOL)a3
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76CA7 = a3;
}

@end