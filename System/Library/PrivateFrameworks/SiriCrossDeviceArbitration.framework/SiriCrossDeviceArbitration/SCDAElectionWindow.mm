@interface SCDAElectionWindow
+ (double)electionWindowTimeRemaining:(unint64_t)a3 fromNow:(unint64_t)a4;
@end

@implementation SCDAElectionWindow

+ (double)electionWindowTimeRemaining:(unint64_t)a3 fromNow:(unint64_t)a4
{
  if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
  }

  return fmax(*&_SCDAMachAbsoluteTimeRate_rate * a3 / 1000000000.0 - *&_SCDAMachAbsoluteTimeRate_rate * a4 / 1000000000.0 + 1.45000005, 0.0);
}

@end