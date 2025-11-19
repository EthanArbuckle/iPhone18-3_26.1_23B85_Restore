@interface TITypologyStatisticTypingSpeed
+ (id)statistic;
- (TITypologyStatisticTypingSpeed)initWithTimeElapsed:(id)a3 basicCounts:(id)a4;
- (float)typingSpeed;
- (id)aggregateReport;
@end

@implementation TITypologyStatisticTypingSpeed

+ (id)statistic
{
  v2 = +[TITypologyStatisticTimeElapsed statistic];
  v3 = +[TITypologyStatisticBasicCounts statistic];
  v4 = [[TITypologyStatisticTypingSpeed alloc] initWithTimeElapsed:v2 basicCounts:v3];

  return v4;
}

- (id)aggregateReport
{
  v3 = MEMORY[0x1E695DF90];
  v9.receiver = self;
  v9.super_class = TITypologyStatisticTypingSpeed;
  v4 = [(TITypologyStatisticComposite *)&v9 aggregateReport];
  v5 = [v3 dictionaryWithDictionary:v4];

  [(TITypologyStatisticTypingSpeed *)self typingSpeed];
  if (v6 > 0.0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [v5 setObject:v7 forKey:@"typingSpeed.distr"];
  }

  return v5;
}

- (float)typingSpeed
{
  v3 = [(TITypologyStatisticTypingSpeed *)self timeElapsed];
  [v3 adjustedElapsedTime];
  v5 = v4;

  v6 = [(TITypologyStatisticTypingSpeed *)self basicCounts];
  v7 = [v6 characterCount];

  result = 0.0;
  if (v5 > 0.0 && v7 >= 6)
  {
    v10 = (v7 - 1) / v5;
    return fminf(v10, 18.0);
  }

  return result;
}

- (TITypologyStatisticTypingSpeed)initWithTimeElapsed:(id)a3 basicCounts:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v13[0] = v7;
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v12.receiver = self;
  v12.super_class = TITypologyStatisticTypingSpeed;
  v10 = [(TITypologyStatisticComposite *)&v12 initWithArray:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_timeElapsed, a3);
    objc_storeStrong(&v10->_basicCounts, a4);
  }

  return v10;
}

@end