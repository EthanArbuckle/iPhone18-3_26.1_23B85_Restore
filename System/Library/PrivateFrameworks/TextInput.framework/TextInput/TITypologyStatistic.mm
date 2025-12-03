@interface TITypologyStatistic
+ (id)statistic;
- (void)visitTypologyLog:(id)log;
@end

@implementation TITypologyStatistic

+ (id)statistic
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)visitTypologyLog:(id)log
{
  logCopy = log;
  [(TITypologyStatistic *)self prepareForComputation];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__TITypologyStatistic_visitTypologyLog___block_invoke;
  v5[3] = &unk_1E6F4C3B8;
  v5[4] = self;
  [logCopy enumerateRecordsWithBlock:v5];

  [(TITypologyStatistic *)self finalizeComputation];
}

@end