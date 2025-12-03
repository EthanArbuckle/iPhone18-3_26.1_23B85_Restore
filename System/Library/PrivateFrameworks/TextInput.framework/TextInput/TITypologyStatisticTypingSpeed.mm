@interface TITypologyStatisticTypingSpeed
+ (id)statistic;
- (TITypologyStatisticTypingSpeed)initWithTimeElapsed:(id)elapsed basicCounts:(id)counts;
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
  aggregateReport = [(TITypologyStatisticComposite *)&v9 aggregateReport];
  v5 = [v3 dictionaryWithDictionary:aggregateReport];

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
  timeElapsed = [(TITypologyStatisticTypingSpeed *)self timeElapsed];
  [timeElapsed adjustedElapsedTime];
  v5 = v4;

  basicCounts = [(TITypologyStatisticTypingSpeed *)self basicCounts];
  characterCount = [basicCounts characterCount];

  result = 0.0;
  if (v5 > 0.0 && characterCount >= 6)
  {
    v10 = (characterCount - 1) / v5;
    return fminf(v10, 18.0);
  }

  return result;
}

- (TITypologyStatisticTypingSpeed)initWithTimeElapsed:(id)elapsed basicCounts:(id)counts
{
  v13[2] = *MEMORY[0x1E69E9840];
  elapsedCopy = elapsed;
  countsCopy = counts;
  v13[0] = elapsedCopy;
  v13[1] = countsCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v12.receiver = self;
  v12.super_class = TITypologyStatisticTypingSpeed;
  v10 = [(TITypologyStatisticComposite *)&v12 initWithArray:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_timeElapsed, elapsed);
    objc_storeStrong(&v10->_basicCounts, counts);
  }

  return v10;
}

@end