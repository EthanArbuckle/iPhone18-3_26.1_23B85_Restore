@interface PowerUIRelevantDrainPredictionResult
- (PowerUIRelevantDrainPredictionResult)init;
- (id)description;
- (void)setScheme:(int64_t)scheme;
- (void)setSuggestedLimitForSignificantDrain:(unint64_t)drain;
@end

@implementation PowerUIRelevantDrainPredictionResult

- (PowerUIRelevantDrainPredictionResult)init
{
  v6.receiver = self;
  v6.super_class = PowerUIRelevantDrainPredictionResult;
  v2 = [(PowerUIRelevantDrainPredictionResult *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_significantDrainAhead = 1;
    *&v2->_confidence = xmmword_21B848470;
    v2->_suggestedLimit = 100;
    [(PowerUIRelevantDrainPredictionResult *)v2 setScheme:1];
    prevStageResult = v3->_prevStageResult;
    v3->_prevStageResult = 0;
  }

  return v3;
}

- (void)setScheme:(int64_t)scheme
{
  if ((scheme - 1) > 3)
  {
    v3 = &stru_282D0B728;
  }

  else
  {
    v3 = off_2782D4990[scheme - 1];
  }

  predictionSchemeString = self->_predictionSchemeString;
  self->_predictionScheme = scheme;
  self->_predictionSchemeString = &v3->isa;
  MEMORY[0x2821F96F8]();
}

- (void)setSuggestedLimitForSignificantDrain:(unint64_t)drain
{
  drainCopy = 100;
  if (!self->_significantDrainAhead)
  {
    drainCopy = drain;
  }

  self->_suggestedLimit = drainCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  predictionSchemeString = self->_predictionSchemeString;
  significantDrainAhead = self->_significantDrainAhead;
  confidence = self->_confidence;
  threshold = self->_threshold;
  prevStageResult = self->_prevStageResult;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_suggestedLimit];
  v10 = v9;
  if (prevStageResult)
  {
    [v3 stringWithFormat:@"\r===>Second Stage:\r\nScheme: %@\r\tPrediction Result:\r\tSignificantDrainAhead: %d\r\tConfidence: %f\r\tThreshold: %f, \r\tSuggestedLimit: %@, \rPrev Stage: %@", predictionSchemeString, significantDrainAhead, *&confidence, *&threshold, v9, self->_prevStageResult];
  }

  else
  {
    [v3 stringWithFormat:@"===>First Stage:\r\nScheme: %@\r\tPrediction Result:\r\tSignificantDrainAhead: %d\r\tConfidence: %f\r\tThreshold: %f, \r\tSuggestedLimit: %@", predictionSchemeString, significantDrainAhead, *&confidence, *&threshold, v9, v13];
  }
  v11 = ;

  return v11;
}

@end