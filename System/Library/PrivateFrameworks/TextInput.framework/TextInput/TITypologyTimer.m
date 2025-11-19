@interface TITypologyTimer
- (void)addInputEventWithTimestamp:(double)a3;
@end

@implementation TITypologyTimer

- (void)addInputEventWithTimestamp:(double)a3
{
  if (![(TITypologyTimer *)self foundFirstInput])
  {
    [(TITypologyTimer *)self setMostRecentTimestamp:a3];
    [(TITypologyTimer *)self setFoundFirstInput:1];
  }

  [(TITypologyTimer *)self mostRecentTimestamp];
  v6 = a3 - v5;
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

  [(TITypologyTimer *)self setMostRecentTimestamp:a3];
}

@end