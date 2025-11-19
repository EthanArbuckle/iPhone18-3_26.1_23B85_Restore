@interface TITypologyStatisticTimeElapsed
- (TITypologyStatisticTimeElapsed)init;
- (double)adjustedElapsedTime;
- (double)elapsedTime;
- (id)aggregateReport;
- (id)structuredReport;
- (void)visitRecordKeyboardInput:(id)a3;
@end

@implementation TITypologyStatisticTimeElapsed

- (TITypologyStatisticTimeElapsed)init
{
  v8.receiver = self;
  v8.super_class = TITypologyStatisticTimeElapsed;
  v2 = [(TITypologyStatisticTimeElapsed *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(TITypologyTimer);
    timer = v2->_timer;
    v2->_timer = v3;

    v5 = objc_alloc_init(TITypologyTimer);
    adjustedTimer = v2->_adjustedTimer;
    v2->_adjustedTimer = v5;

    [(TITypologyTimer *)v2->_adjustedTimer setMaxTimeIntervalBetweenInputs:2.0];
  }

  return v2;
}

- (id)aggregateReport
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [(TITypologyStatisticTimeElapsed *)self adjustedElapsedTime];
  *&v4 = v4;
  if (*&v4 > 0.0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [v3 setObject:v5 forKey:@"typingDuration.distr"];
  }

  return v3;
}

- (double)adjustedElapsedTime
{
  v2 = [(TITypologyStatisticTimeElapsed *)self adjustedTimer];
  [v2 elapsedTime];
  v4 = v3;

  return v4;
}

- (void)visitRecordKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [(TITypologyStatisticTimeElapsed *)self timer];
  [v4 timestamp];
  [v5 addInputEventWithTimestamp:?];

  v8 = [(TITypologyStatisticTimeElapsed *)self adjustedTimer];
  [v4 timestamp];
  v7 = v6;

  [v8 addInputEventWithTimestamp:v7];
}

- (double)elapsedTime
{
  v2 = [(TITypologyStatisticTimeElapsed *)self timer];
  [v2 elapsedTime];
  v4 = v3;

  return v4;
}

- (id)structuredReport
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"Time Elapsed";
  v3 = MEMORY[0x1E696AD98];
  [(TITypologyStatisticTimeElapsed *)self elapsedTime];
  *&v4 = v4;
  v5 = [v3 numberWithFloat:v4];
  v11[1] = @"Adjusted Time Elapsed";
  v12[0] = v5;
  v6 = MEMORY[0x1E696AD98];
  [(TITypologyStatisticTimeElapsed *)self adjustedElapsedTime];
  *&v7 = v7;
  v8 = [v6 numberWithFloat:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end