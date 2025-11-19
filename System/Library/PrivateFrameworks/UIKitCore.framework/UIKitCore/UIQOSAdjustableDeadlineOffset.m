@interface UIQOSAdjustableDeadlineOffset
@end

@implementation UIQOSAdjustableDeadlineOffset

void ___UIQOSAdjustableDeadlineOffset_block_invoke()
{
  v6 = _UIKitPreferencesOnce();
  v0 = [v6 objectForKey:@"QOSAdjustableDeadlineOffset"];
  v1 = v0;
  if (v0)
  {
    [v0 doubleValue];
    v3 = v2;
    v4 = _UIMachDurationForMediaDuration(fabs(v2));
    if (v3 > 0.0)
    {
      v5 = v4;
    }

    else
    {
      v5 = -v4;
    }

    qword_1ED4A28F0 = v5;
  }
}

@end