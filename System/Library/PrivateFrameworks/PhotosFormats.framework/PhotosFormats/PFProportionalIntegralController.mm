@interface PFProportionalIntegralController
- (PFProportionalIntegralController)initWithSetPoint:(int64_t)a3;
- (id)statisticsDescription;
- (void)addStatisticsSampleForTimestamp:(double)a3 error:(int64_t)a4 feedback:(int64_t)a5;
- (void)enumerateStatisticsMeasurementsWithHandler:(id)a3;
- (void)updateWithTimestamp:(double)a3 error:(int64_t)a4 feedback:(int64_t)a5;
@end

@implementation PFProportionalIntegralController

- (id)statisticsDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendString:@"timestamp\toutput\tfeedback\terror\tintegralError\tsetPoint\n"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PFProportionalIntegralController_statisticsDescription__block_invoke;
  v6[3] = &unk_1E7B666D0;
  v4 = v3;
  v7 = v4;
  [(PFProportionalIntegralController *)self enumerateStatisticsMeasurementsWithHandler:v6];

  return v4;
}

- (void)enumerateStatisticsMeasurementsWithHandler:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v13 = [v12 integerValue];

      v14 = [v8 objectAtIndexedSubscript:2];
      v15 = [v14 integerValue];

      v16 = [v8 objectAtIndexedSubscript:3];
      v17 = [v16 integerValue];

      v18 = [v8 objectAtIndexedSubscript:4];
      v19 = [v18 integerValue];

      v20 = [v8 objectAtIndexedSubscript:5];
      v21 = [v20 integerValue];

      v24 = 0;
      v4[2](v4, v13, v15, v17, v19, v21, &v24, v11);
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

- (void)addStatisticsSampleForTimestamp:(double)a3 error:(int64_t)a4 feedback:(int64_t)a5
{
  v16[6] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    statistics = self->_statistics;
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v16[0] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_output];
    v16[1] = v10;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v16[2] = v11;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v16[3] = v12;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_integralError];
    v16[4] = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_setPoint];
    v16[5] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
    [(NSMutableArray *)statistics addObject:v15];
  }
}

- (void)updateWithTimestamp:(double)a3 error:(int64_t)a4 feedback:(int64_t)a5
{
  if (a3 != 0.0 && a5 != 0)
  {
    if (!self->_outputReady)
    {
      self->_outputReady = 1;
    }

    v6 = (self->_proportionalGain * a4);
    v7 = self->_integralError + a4;
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

- (PFProportionalIntegralController)initWithSetPoint:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = PFProportionalIntegralController;
  v4 = [(PFProportionalIntegralController *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_setPoint = a3;
    v4->_output = a3;
    v6 = [MEMORY[0x1E695DF70] array];
    statistics = v5->_statistics;
    v5->_statistics = v6;
  }

  return v5;
}

@end