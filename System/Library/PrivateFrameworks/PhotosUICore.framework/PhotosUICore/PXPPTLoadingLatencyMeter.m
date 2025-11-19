@interface PXPPTLoadingLatencyMeter
+ (void)startMeasurementsForOutputType:(id)a3;
+ (void)stopMeasurements;
- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)measurementsForOutputQuality:(SEL)a3;
- (NSDictionary)measurementsDictionaryRepresentation;
- (PXPPTLoadingLatencyMeter)initWithOutputType:(id)a3;
- (id)_measurementsDictionaryForOutputQuality:(int64_t)a3;
- (void)reportLatency:(double)a3 forOutputQuality:(int64_t)a4;
@end

@implementation PXPPTLoadingLatencyMeter

- (id)_measurementsDictionaryForOutputQuality:(int64_t)a3
{
  [(PXPPTLoadingLatencyMeter *)self measurementsForOutputQuality:?];
  v3 = MEMORY[0x1E695E0F8];

  return v3;
}

- (NSDictionary)measurementsDictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PXPPTLoadingLatencyMeter *)self _measurementsDictionaryForOutputQuality:0];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(PXPPTLoadingLatencyMeter *)self _measurementsDictionaryForOutputQuality:1];
  [v3 addEntriesFromDictionary:v5];

  v6 = [(PXPPTLoadingLatencyMeter *)self _measurementsDictionaryForOutputQuality:2];
  [v3 addEntriesFromDictionary:v6];

  v7 = [v3 copy];

  return v7;
}

- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)measurementsForOutputQuality:(SEL)a3
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

- (void)reportLatency:(double)a3 forOutputQuality:(int64_t)a4
{
  p_highQualityResults = &self->_highQualityResults;
  p_mediumQualityResults = &self->_mediumQualityResults;
  p_lowQualityResults = &self->_lowQualityResults;
  if (a4)
  {
    p_lowQualityResults = 0;
  }

  if (a4 != 1)
  {
    p_mediumQualityResults = p_lowQualityResults;
  }

  if (a4 != 2)
  {
    p_highQualityResults = p_mediumQualityResults;
  }

  if (p_highQualityResults->minValue > a3)
  {
    p_highQualityResults->minValue = a3;
  }

  if (p_highQualityResults->maxValue < a3)
  {
    p_highQualityResults->maxValue = a3;
  }

  ++p_highQualityResults->count;
  p_highQualityResults->totalValue = p_highQualityResults->totalValue + a3;
}

- (PXPPTLoadingLatencyMeter)initWithOutputType:(id)a3
{
  v4 = a3;
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
    v7 = [v4 capitalizedString];
    outputType = v6->_outputType;
    v6->_outputType = v7;
  }

  return v6;
}

+ (void)stopMeasurements
{
  v2 = instance;
  instance = 0;
}

+ (void)startMeasurementsForOutputType:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithOutputType:v4];

  v6 = instance;
  instance = v5;
}

@end