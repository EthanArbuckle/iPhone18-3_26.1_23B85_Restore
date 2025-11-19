@interface TITypologyStatistic
+ (id)statistic;
- (void)visitTypologyLog:(id)a3;
@end

@implementation TITypologyStatistic

+ (id)statistic
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)visitTypologyLog:(id)a3
{
  v4 = a3;
  [(TITypologyStatistic *)self prepareForComputation];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__TITypologyStatistic_visitTypologyLog___block_invoke;
  v5[3] = &unk_1E6F4C3B8;
  v5[4] = self;
  [v4 enumerateRecordsWithBlock:v5];

  [(TITypologyStatistic *)self finalizeComputation];
}

@end