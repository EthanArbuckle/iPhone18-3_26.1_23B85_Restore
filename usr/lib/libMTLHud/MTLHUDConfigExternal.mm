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
- (void)setAlignment:(unint64_t)alignment;
- (void)setAutoInterpose:(BOOL)interpose;
- (void)setEnabled:(BOOL)enabled;
- (void)setEncoderGPUTimelineMaxFrameCount:(unint64_t)count;
- (void)setEncoderGPUTimelineSwapDeltaInSeconds:(double)seconds;
- (void)setEncoderGPUTimelineTrackHeight:(float)height;
- (void)setEncoderTimingEnabled:(BOOL)enabled;
- (void)setEnergyReportHeight:(float)height;
- (void)setEnergyReportSampleIntervalInSeconds:(double)seconds;
- (void)setExplicitFrameBoundary:(BOOL)boundary;
- (void)setInsightReportIntervalInSeconds:(float)seconds;
- (void)setInsightTimeOutInSeconds:(float)seconds;
- (void)setInsightsEnabled:(BOOL)enabled;
- (void)setLayoutForMainLayer:(unint64_t)layer;
- (void)setLayoutForOtherLayers:(unint64_t)layers;
- (void)setLogAllMetrics:(BOOL)metrics;
- (void)setLogShaderCompilerEnabled:(BOOL)enabled;
- (void)setLoggingEnabled:(BOOL)enabled;
- (void)setMinSizeRequired:(float)required;
- (void)setOpacity:(float)opacity;
- (void)setPositionX:(float)x;
- (void)setPositionY:(float)y;
- (void)setScale:(float)scale;
- (void)setShowInsightMetrics:(BOOL)metrics;
- (void)setShowInternalMetrics:(BOOL)metrics;
- (void)setShowMetricsValuerange:(BOOL)valuerange;
- (void)setShowZeroMetrics:(BOOL)metrics;
- (void)setTargetFPS:(unsigned int)s;
- (void)setTransientMetricTimeOutInSeconds:(float)seconds;
- (void)setWidth:(float)width;
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

- (void)setEnabled:(BOOL)enabled
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  LOBYTE(HUDGetGlobalConfig_config) = enabled;
}

- (void)setLoggingEnabled:(BOOL)enabled
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  HIBYTE(HUDGetGlobalConfig_config) = enabled;
}

- (void)setLogShaderCompilerEnabled:(BOOL)enabled
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8A = enabled;
}

- (void)setInsightsEnabled:(BOOL)enabled
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8B = enabled;
}

- (void)setEncoderTimingEnabled:(BOOL)enabled
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8C = enabled;
}

- (void)setAutoInterpose:(BOOL)interpose
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8D = interpose;
}

- (void)setShowZeroMetrics:(BOOL)metrics
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8E = metrics;
}

- (void)setShowInsightMetrics:(BOOL)metrics
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C8F = metrics;
}

- (void)setOpacity:(float)opacity
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CB0 = LODWORD(opacity);
}

- (void)setScale:(float)scale
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CB4 = LODWORD(scale);
  byte_76C9E = 1;
}

- (void)setEncoderGPUTimelineTrackHeight:(float)height
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CB8 = LODWORD(height);
}

- (void)setEnergyReportHeight:(float)height
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CBC = LODWORD(height);
}

- (void)setPositionX:(float)x
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *&qword_76CC0 = x;
  *&xmmword_76CC8 = 1;
}

- (void)setPositionY:(float)y
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *(&qword_76CC0 + 1) = y;
  *&xmmword_76CC8 = 1;
}

- (void)setAlignment:(unint64_t)alignment
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *&xmmword_76CC8 = alignment;
}

- (void)setLayoutForMainLayer:(unint64_t)layer
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *(&xmmword_76CC8 + 1) = layer;
}

- (void)setLayoutForOtherLayers:(unint64_t)layers
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  qword_76CD8 = layers;
}

- (void)setEncoderGPUTimelineMaxFrameCount:(unint64_t)count
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  qword_76CE0 = count;
}

- (void)setEncoderGPUTimelineSwapDeltaInSeconds:(double)seconds
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *&xmmword_76CE8 = seconds;
}

- (void)setEnergyReportSampleIntervalInSeconds:(double)seconds
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *(&xmmword_76CE8 + 1) = seconds;
}

- (void)setMinSizeRequired:(float)required
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CF8 = LODWORD(required);
}

- (void)setWidth:(float)width
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76CFC = LODWORD(width);
}

- (void)setInsightTimeOutInSeconds:(float)seconds
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76D00 = LODWORD(seconds);
}

- (void)setInsightReportIntervalInSeconds:(float)seconds
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76D04 = LODWORD(seconds);
}

- (void)setTargetFPS:(unsigned int)s
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  dword_76D0C = s;
}

- (void)setExplicitFrameBoundary:(BOOL)boundary
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C90 = boundary;
}

- (void)setShowInternalMetrics:(BOOL)metrics
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76C91 = !metrics;
}

- (void)setTransientMetricTimeOutInSeconds:(float)seconds
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  *&qword_76D10 = seconds;
}

- (void)setShowMetricsValuerange:(BOOL)valuerange
{
  valuerangeCopy = valuerange;
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76CA6 = valuerangeCopy;
  v4 = 300.0;
  if (valuerangeCopy)
  {
    v4 = 350.0;
  }

  dword_76CFC = LODWORD(v4);
}

- (void)setLogAllMetrics:(BOOL)metrics
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  byte_76CA7 = metrics;
}

@end