@interface PXPPTLoadingLatencyMeter
+ (void)startMeasurementsForOutputType:(id)type;
+ (void)stopMeasurements;
- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)measurementsForOutputQuality:(SEL)quality;
- (NSDictionary)measurementsDictionaryRepresentation;
- (PXPPTLoadingLatencyMeter)initWithOutputType:(id)type;
- (id)_measurementsDictionaryForOutputQuality:(int64_t)quality;
- (void)reportLatency:(double)latency forOutputQuality:(int64_t)quality;
@end

@implementation PXPPTLoadingLatencyMeter

- (id)_measurementsDictionaryForOutputQuality:(int64_t)quality
{
  [(PXPPTLoadingLatencyMeter *)self measurementsForOutputQuality:?];
  v3 = MEMORY[0x1E695E0F8];

  return v3;
}

- (NSDictionary)measurementsDictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PXPPTLoadingLatencyMeter *)self _measurementsDictionaryForOutputQuality:0];
  [dictionary addEntriesFromDictionary:v4];

  v5 = [(PXPPTLoadingLatencyMeter *)self _measurementsDictionaryForOutputQuality:1];
  [dictionary addEntriesFromDictionary:v5];

  v6 = [(PXPPTLoadingLatencyMeter *)self _measurementsDictionaryForOutputQuality:2];
  [dictionary addEntriesFromDictionary:v6];

  v7 = [dictionary copy];

  return v7;
}

- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)measurementsForOutputQuality:(SEL)quality
{
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  if (a4 <= 2)
  {
    v4 = &self[a4];
    v5 = *&v4->var3;
    *&retstr->var0 = *&v4->var1;
    *&retstr->var2 = v5;
  }

  return self;
}

- (void)reportLatency:(double)latency forOutputQuality:(int64_t)quality
{
  p_highQualityResults = &self->_highQualityResults;
  p_mediumQualityResults = &self->_mediumQualityResults;
  p_lowQualityResults = &self->_lowQualityResults;
  if (quality)
  {
    p_lowQualityResults = 0;
  }

  if (quality != 1)
  {
    p_mediumQualityResults = p_lowQualityResults;
  }

  if (quality != 2)
  {
    p_highQualityResults = p_mediumQualityResults;
  }

  if (p_highQualityResults->minValue > latency)
  {
    p_highQualityResults->minValue = latency;
  }

  if (p_highQualityResults->maxValue < latency)
  {
    p_highQualityResults->maxValue = latency;
  }

  ++p_highQualityResults->count;
  p_highQualityResults->totalValue = p_highQualityResults->totalValue + latency;
}

- (PXPPTLoadingLatencyMeter)initWithOutputType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = PXPPTLoadingLatencyMeter;
  v5 = [(PXPPTLoadingLatencyMeter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lowQualityResults.totalValue = 0.0;
    v5->_lowQualityResults.count = 0;
    v5->_highQualityResults.totalValue = 0.0;
    v5->_highQualityResults.count = 0;
    v5->_lowQualityResults.minValue = 3.40282347e38;
    v5->_lowQualityResults.maxValue = 0.0;
    v5->_highQualityResults.minValue = 3.40282347e38;
    v5->_highQualityResults.maxValue = 0.0;
    capitalizedString = [typeCopy capitalizedString];
    outputType = v6->_outputType;
    v6->_outputType = capitalizedString;
  }

  return v6;
}

+ (void)stopMeasurements
{
  v2 = instance;
  instance = 0;
}

+ (void)startMeasurementsForOutputType:(id)type
{
  typeCopy = type;
  v5 = [[self alloc] initWithOutputType:typeCopy];

  v6 = instance;
  instance = v5;
}

@end