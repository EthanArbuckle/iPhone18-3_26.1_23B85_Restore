@interface PCVisitHistoryPredictorConfig
- (PCVisitHistoryPredictorConfig)init;
- (PCVisitHistoryPredictorConfig)initWithCoder:(id)a3;
- (PCVisitHistoryPredictorConfig)initWithTimestepSize:(double)a3 inputSeqLength:(int)a4 visitProbabilityThreshold:(double)a5 hiddenLayers:(int)a6 outSteps:(int)a7 epochs:(int)a8 encodingTimeout:(double)a9 numVisitsThreshold:(int)a10 batchSize:(int)a11 trainOnGpu:(BOOL)a12 logTrainingDebugOutputs:(BOOL)a13;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCVisitHistoryPredictorConfig

- (PCVisitHistoryPredictorConfig)init
{
  v4.receiver = self;
  v4.super_class = PCVisitHistoryPredictorConfig;
  result = [(PCVisitHistoryPredictorConfig *)&v4 init];
  if (result)
  {
    LOWORD(v3) = 0;
    return [(PCVisitHistoryPredictorConfig *)result initWithTimestepSize:8 inputSeqLength:50 visitProbabilityThreshold:96 hiddenLayers:15 outSteps:3 epochs:1 encodingTimeout:15.0 numVisitsThreshold:0.1 batchSize:120.0 trainOnGpu:v3 logTrainingDebugOutputs:?];
  }

  return result;
}

- (PCVisitHistoryPredictorConfig)initWithTimestepSize:(double)a3 inputSeqLength:(int)a4 visitProbabilityThreshold:(double)a5 hiddenLayers:(int)a6 outSteps:(int)a7 epochs:(int)a8 encodingTimeout:(double)a9 numVisitsThreshold:(int)a10 batchSize:(int)a11 trainOnGpu:(BOOL)a12 logTrainingDebugOutputs:(BOOL)a13
{
  v23.receiver = self;
  v23.super_class = PCVisitHistoryPredictorConfig;
  result = [(PCVisitHistoryPredictorConfig *)&v23 init];
  if (result)
  {
    result->_timestepSizeMinutes = a3;
    result->_visitProbabilityThreshold = a5;
    result->_inputSequenceLength = a4;
    result->_numVisitsThreshold = a10;
    result->_hiddenLayers = a6;
    result->_outSteps = a7;
    result->_epochs = a8;
    result->_batchSize = a11;
    result->_trainOnGpu = a12;
    result->_loiEncodingTimeoutSeconds = a9;
    result->_logTrainingDebugOutputs = a13;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(PCVisitHistoryPredictorConfig *)self timestepSizeMinutes];
  v5 = v4;
  v6 = [(PCVisitHistoryPredictorConfig *)self inputSequenceLength];
  [(PCVisitHistoryPredictorConfig *)self visitProbabilityThreshold];
  return [v3 stringWithFormat:@"timestepSizeMinutes, %f, inputSeqLength, %d, visitProbThreshold, %f, numVisitsThreshold, %d, hiddenLayers, %d, outSteps, %d, epochs, %d", v5, v6, v7, -[PCVisitHistoryPredictorConfig numVisitsThreshold](self, "numVisitsThreshold"), -[PCVisitHistoryPredictorConfig hiddenLayers](self, "hiddenLayers"), -[PCVisitHistoryPredictorConfig outSteps](self, "outSteps"), -[PCVisitHistoryPredictorConfig epochs](self, "epochs")];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [(PCVisitHistoryPredictorConfig *)self timestepSizeMinutes];
  [v5 encodeInt:v4 forKey:@"timestepSize"];
  [v5 encodeInt:-[PCVisitHistoryPredictorConfig inputSequenceLength](self forKey:{"inputSequenceLength"), @"inputSequenceLength"}];
  [(PCVisitHistoryPredictorConfig *)self visitProbabilityThreshold];
  [v5 encodeDouble:@"visitProbabilityThreshold" forKey:?];
  [v5 encodeInt:-[PCVisitHistoryPredictorConfig hiddenLayers](self forKey:{"hiddenLayers"), @"hiddenLayers"}];
  [v5 encodeInt:-[PCVisitHistoryPredictorConfig outSteps](self forKey:{"outSteps"), @"outSteps"}];
  [v5 encodeInt:-[PCVisitHistoryPredictorConfig epochs](self forKey:{"epochs"), @"epochs"}];
  [(PCVisitHistoryPredictorConfig *)self loiEncodingTimeoutSeconds];
  [v5 encodeDouble:@"loiEncodingTimeout" forKey:?];
  [v5 encodeInt:-[PCVisitHistoryPredictorConfig numVisitsThreshold](self forKey:{"numVisitsThreshold"), @"numVisits"}];
  [v5 encodeInt:-[PCVisitHistoryPredictorConfig batchSize](self forKey:{"batchSize"), @"batchSize"}];
  [v5 encodeBool:-[PCVisitHistoryPredictorConfig trainOnGpu](self forKey:{"trainOnGpu"), @"trainOnGpu"}];
  [v5 encodeBool:-[PCVisitHistoryPredictorConfig logTrainingDebugOutputs](self forKey:{"logTrainingDebugOutputs"), @"trainingLogging"}];
}

- (PCVisitHistoryPredictorConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"timestepSize"];
  v6 = [v4 decodeIntForKey:@"inputSequenceLength"];
  [v4 decodeDoubleForKey:@"visitProbabilityThreshold"];
  v8 = v7;
  v9 = [v4 decodeIntForKey:@"hiddenLayers"];
  v10 = [v4 decodeIntForKey:@"outSteps"];
  v11 = [v4 decodeIntForKey:@"epochs"];
  [v4 decodeDoubleForKey:@"loiEncodingTimeout"];
  v13 = v12;
  v14 = [v4 decodeIntForKey:@"numVisits"];
  v15 = [v4 decodeIntForKey:@"batchSize"];
  v16 = [v4 decodeBoolForKey:@"trainOnGpu"];
  v17 = [v4 decodeBoolForKey:@"trainingLogging"];

  BYTE1(v19) = v17;
  LOBYTE(v19) = v16;
  return [(PCVisitHistoryPredictorConfig *)self initWithTimestepSize:v6 inputSeqLength:v9 visitProbabilityThreshold:v10 hiddenLayers:v11 outSteps:v14 epochs:v15 encodingTimeout:v5 numVisitsThreshold:v8 batchSize:v13 trainOnGpu:v19 logTrainingDebugOutputs:?];
}

@end