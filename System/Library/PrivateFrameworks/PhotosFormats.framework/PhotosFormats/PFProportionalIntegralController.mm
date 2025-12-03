@interface PFProportionalIntegralController
- (PFProportionalIntegralController)initWithSetPoint:(int64_t)point;
- (id)statisticsDescription;
- (void)addStatisticsSampleForTimestamp:(double)timestamp error:(int64_t)error feedback:(int64_t)feedback;
- (void)enumerateStatisticsMeasurementsWithHandler:(id)handler;
- (void)updateWithTimestamp:(double)timestamp error:(int64_t)error feedback:(int64_t)feedback;
@end

@implementation PFProportionalIntegralController

- (id)statisticsDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:@"timestamp\toutput\tfeedback\terror\tintegralError\tsetPoint\n"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PFProportionalIntegralController_statisticsDescription__block_invoke;
  v6[3] = &unk_1E7B666D0;
  v4 = string;
  v7 = v4;
  [(PFProportionalIntegralController *)self enumerateStatisticsMeasurementsWithHandler:v6];

  return v4;
}

- (void)enumerateStatisticsMeasurementsWithHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_statistics;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = *v26;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v26 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v25 + 1) + 8 * v7);
      v9 = [v8 objectAtIndexedSubscript:0];
      [v9 doubleValue];
      v11 = v10;

      v12 = [v8 objectAtIndexedSubscript:1];
      integerValue = [v12 integerValue];

      v14 = [v8 objectAtIndexedSubscript:2];
      integerValue2 = [v14 integerValue];

      v16 = [v8 objectAtIndexedSubscript:3];
      integerValue3 = [v16 integerValue];

      v18 = [v8 objectAtIndexedSubscript:4];
      integerValue4 = [v18 integerValue];

      v20 = [v8 objectAtIndexedSubscript:5];
      integerValue5 = [v20 integerValue];

      v24 = 0;
      handlerCopy[2](handlerCopy, integerValue, integerValue2, integerValue3, integerValue4, integerValue5, &v24, v11);
      if (v24)
      {
        break;
      }

      if (v6 == ++v7)
      {
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)addStatisticsSampleForTimestamp:(double)timestamp error:(int64_t)error feedback:(int64_t)feedback
{
  v16[6] = *MEMORY[0x1E69E9840];
  if (feedback)
  {
    statistics = self->_statistics;
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:timestamp];
    v16[0] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_output];
    v16[1] = v10;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:feedback];
    v16[2] = v11;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:error];
    v16[3] = v12;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_integralError];
    v16[4] = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_setPoint];
    v16[5] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
    [(NSMutableArray *)statistics addObject:v15];
  }
}

- (void)updateWithTimestamp:(double)timestamp error:(int64_t)error feedback:(int64_t)feedback
{
  if (timestamp != 0.0 && feedback != 0)
  {
    if (!self->_outputReady)
    {
      self->_outputReady = 1;
    }

    v6 = (self->_proportionalGain * error);
    v7 = self->_integralError + error;
    self->_integralError = v7;
    integralErrorMax = self->_integralErrorMax;
    if (v7 > integralErrorMax || (integralErrorMax = self->_integralErrorMin, v7 < integralErrorMax))
    {
      self->_integralError = integralErrorMax;
      v7 = integralErrorMax;
    }

    v9 = self->_output - v6 - (self->_integralGain * v7);
    self->_output = v9;
    outputMax = self->_outputMax;
    if (outputMax)
    {
      if (outputMax < v9)
      {
        v9 = self->_outputMax;
      }

      self->_output = v9;
    }

    outputMin = self->_outputMin;
    if (outputMin)
    {
      if (outputMin > v9)
      {
        v9 = self->_outputMin;
      }

      self->_output = v9;
    }

    [PFProportionalIntegralController addStatisticsSampleForTimestamp:"addStatisticsSampleForTimestamp:error:feedback:" error:? feedback:?];
  }
}

- (PFProportionalIntegralController)initWithSetPoint:(int64_t)point
{
  v9.receiver = self;
  v9.super_class = PFProportionalIntegralController;
  v4 = [(PFProportionalIntegralController *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_setPoint = point;
    v4->_output = point;
    array = [MEMORY[0x1E695DF70] array];
    statistics = v5->_statistics;
    v5->_statistics = array;
  }

  return v5;
}

@end