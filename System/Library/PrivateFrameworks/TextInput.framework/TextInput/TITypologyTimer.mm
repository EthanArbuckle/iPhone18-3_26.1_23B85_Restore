@interface TITypologyTimer
- (void)addInputEventWithTimestamp:(double)timestamp;
@end

@implementation TITypologyTimer

- (void)addInputEventWithTimestamp:(double)timestamp
{
  if (![(TITypologyTimer *)self foundFirstInput])
  {
    [(TITypologyTimer *)self setMostRecentTimestamp:timestamp];
    [(TITypologyTimer *)self setFoundFirstInput:1];
  }

  [(TITypologyTimer *)self mostRecentTimestamp];
  v6 = timestamp - v5;
  [(TITypologyTimer *)self maxTimeIntervalBetweenInputs];
  if (v7 > 0.0)
  {
    [(TITypologyTimer *)self maxTimeIntervalBetweenInputs];
    if (v6 >= v8)
    {
      v6 = v8;
    }
  }

  [(TITypologyTimer *)self elapsedTime];
  [(TITypologyTimer *)self setElapsedTime:v6 + v9];

  [(TITypologyTimer *)self setMostRecentTimestamp:timestamp];
}

@end