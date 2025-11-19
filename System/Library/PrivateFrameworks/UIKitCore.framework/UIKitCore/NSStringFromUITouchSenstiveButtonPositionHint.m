@interface NSStringFromUITouchSenstiveButtonPositionHint
@end

@implementation NSStringFromUITouchSenstiveButtonPositionHint

uint64_t ___NSStringFromUITouchSenstiveButtonPositionHint_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 <= 15)
  {
    v3 = @"liftOffPredicted";
    v9 = @"clickDownPredicted";
    if (a2 != 8)
    {
      v9 = 0;
    }

    if (a2 != 4)
    {
      v3 = v9;
    }

    v6 = @"fastSwipe";
    v10 = @"lowConfidenceSwipe";
    if (a2 != 2)
    {
      v10 = 0;
    }

    if (a2 != 1)
    {
      v6 = v10;
    }

    v8 = a2 <= 3;
  }

  else
  {
    v3 = @"rightFlick";
    v4 = @"leftFlick";
    v5 = @"lowConfidenceScrollEngaged";
    if (a2 != 256)
    {
      v5 = 0;
    }

    if (a2 != 128)
    {
      v4 = v5;
    }

    if (a2 != 64)
    {
      v3 = v4;
    }

    v6 = @"clickReleaseWindow";
    v7 = @"scrollStoppageDetected";
    if (a2 != 32)
    {
      v7 = 0;
    }

    if (a2 != 16)
    {
      v6 = v7;
    }

    v8 = a2 <= 63;
  }

  if (v8)
  {
    v3 = v6;
  }

  v11 = *(a1 + 32);
  v12 = 48;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    v12 = 40;
  }

  result = [v11 appendFormat:@"%@%@", *(a1 + v12), v3];
  ++*(*(*(a1 + 56) + 8) + 24);
  return result;
}

@end