@interface SCDAElectionWindow
+ (double)electionWindowTimeRemaining:(unint64_t)remaining fromNow:(unint64_t)now;
@end

@implementation SCDAElectionWindow

+ (double)electionWindowTimeRemaining:(unint64_t)remaining fromNow:(unint64_t)now
{
  if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
  }

  return fmax(*&_SCDAMachAbsoluteTimeRate_rate * remaining / 1000000000.0 - *&_SCDAMachAbsoluteTimeRate_rate * now / 1000000000.0 + 1.45000005, 0.0);
}

@end