@interface PCVisitHistoryPredictorConfig
- (PCVisitHistoryPredictorConfig)init;
- (PCVisitHistoryPredictorConfig)initWithCoder:(id)coder;
- (PCVisitHistoryPredictorConfig)initWithTimestepSize:(double)size inputSeqLength:(int)length visitProbabilityThreshold:(double)threshold hiddenLayers:(int)layers outSteps:(int)steps epochs:(int)epochs encodingTimeout:(double)timeout numVisitsThreshold:(int)self0 batchSize:(int)self1 trainOnGpu:(BOOL)self2 logTrainingDebugOutputs:(BOOL)self3;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (PCVisitHistoryPredictorConfig)initWithTimestepSize:(double)size inputSeqLength:(int)length visitProbabilityThreshold:(double)threshold hiddenLayers:(int)layers outSteps:(int)steps epochs:(int)epochs encodingTimeout:(double)timeout numVisitsThreshold:(int)self0 batchSize:(int)self1 trainOnGpu:(BOOL)self2 logTrainingDebugOutputs:(BOOL)self3
{
  v23.receiver = self;
  v23.super_class = PCVisitHistoryPredictorConfig;
  result = [(PCVisitHistoryPredictorConfig *)&v23 init];
  if (result)
  {
    result->_timestepSizeMinutes = size;
    result->_visitProbabilityThreshold = threshold;
    result->_inputSequenceLength = length;
    result->_numVisitsThreshold = visitsThreshold;
    result->_hiddenLayers = layers;
    result->_outSteps = steps;
    result->_epochs = epochs;
    result->_batchSize = batchSize;
    result->_trainOnGpu = gpu;
    result->_loiEncodingTimeoutSeconds = timeout;
    result->_logTrainingDebugOutputs = outputs;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(PCVisitHistoryPredictorConfig *)self timestepSizeMinutes];
  v5 = v4;
  inputSequenceLength = [(PCVisitHistoryPredictorConfig *)self inputSequenceLength];
  [(PCVisitHistoryPredictorConfig *)self visitProbabilityThreshold];
  return [v3 stringWithFormat:@"timestepSizeMinutes, %f, inputSeqLength, %d, visitProbThreshold, %f, numVisitsThreshold, %d, hiddenLayers, %d, outSteps, %d, epochs, %d", v5, inputSequenceLength, v7, -[PCVisitHistoryPredictorConfig numVisitsThreshold](self, "numVisitsThreshold"), -[PCVisitHistoryPredictorConfig hiddenLayers](self, "hiddenLayers"), -[PCVisitHistoryPredictorConfig outSteps](self, "outSteps"), -[PCVisitHistoryPredictorConfig epochs](self, "epochs")];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(PCVisitHistoryPredictorConfig *)self timestepSizeMinutes];
  [coderCopy encodeInt:v4 forKey:@"timestepSize"];
  [coderCopy encodeInt:-[PCVisitHistoryPredictorConfig inputSequenceLength](self forKey:{"inputSequenceLength"), @"inputSequenceLength"}];
  [(PCVisitHistoryPredictorConfig *)self visitProbabilityThreshold];
  [coderCopy encodeDouble:@"visitProbabilityThreshold" forKey:?];
  [coderCopy encodeInt:-[PCVisitHistoryPredictorConfig hiddenLayers](self forKey:{"hiddenLayers"), @"hiddenLayers"}];
  [coderCopy encodeInt:-[PCVisitHistoryPredictorConfig outSteps](self forKey:{"outSteps"), @"outSteps"}];
  [coderCopy encodeInt:-[PCVisitHistoryPredictorConfig epochs](self forKey:{"epochs"), @"epochs"}];
  [(PCVisitHistoryPredictorConfig *)self loiEncodingTimeoutSeconds];
  [coderCopy encodeDouble:@"loiEncodingTimeout" forKey:?];
  [coderCopy encodeInt:-[PCVisitHistoryPredictorConfig numVisitsThreshold](self forKey:{"numVisitsThreshold"), @"numVisits"}];
  [coderCopy encodeInt:-[PCVisitHistoryPredictorConfig batchSize](self forKey:{"batchSize"), @"batchSize"}];
  [coderCopy encodeBool:-[PCVisitHistoryPredictorConfig trainOnGpu](self forKey:{"trainOnGpu"), @"trainOnGpu"}];
  [coderCopy encodeBool:-[PCVisitHistoryPredictorConfig logTrainingDebugOutputs](self forKey:{"logTrainingDebugOutputs"), @"trainingLogging"}];
}

- (PCVisitHistoryPredictorConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"timestepSize"];
  v6 = [coderCopy decodeIntForKey:@"inputSequenceLength"];
  [coderCopy decodeDoubleForKey:@"visitProbabilityThreshold"];
  v8 = v7;
  v9 = [coderCopy decodeIntForKey:@"hiddenLayers"];
  v10 = [coderCopy decodeIntForKey:@"outSteps"];
  v11 = [coderCopy decodeIntForKey:@"epochs"];
  [coderCopy decodeDoubleForKey:@"loiEncodingTimeout"];
  v13 = v12;
  v14 = [coderCopy decodeIntForKey:@"numVisits"];
  v15 = [coderCopy decodeIntForKey:@"batchSize"];
  v16 = [coderCopy decodeBoolForKey:@"trainOnGpu"];
  v17 = [coderCopy decodeBoolForKey:@"trainingLogging"];

  BYTE1(v19) = v17;
  LOBYTE(v19) = v16;
  return [(PCVisitHistoryPredictorConfig *)self initWithTimestepSize:v6 inputSeqLength:v9 visitProbabilityThreshold:v10 hiddenLayers:v11 outSteps:v14 epochs:v15 encodingTimeout:v5 numVisitsThreshold:v8 batchSize:v13 trainOnGpu:v19 logTrainingDebugOutputs:?];
}

@end