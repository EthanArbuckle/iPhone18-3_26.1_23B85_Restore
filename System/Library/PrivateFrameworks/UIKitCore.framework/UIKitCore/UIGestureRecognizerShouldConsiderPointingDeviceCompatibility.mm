@interface UIGestureRecognizerShouldConsiderPointingDeviceCompatibility
@end

@implementation UIGestureRecognizerShouldConsiderPointingDeviceCompatibility

uint64_t ___UIGestureRecognizerShouldConsiderPointingDeviceCompatibility_block_invoke()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    goto LABEL_12;
  }

  result = _UIGestureRecognizerCompatibilityMapboxViewClass();
  if (!result)
  {
    goto LABEL_12;
  }

  if (qword_1ED4A2B28 != -1)
  {
    dispatch_once(&qword_1ED4A2B28, &__block_literal_global_5_12);
  }

  result = qword_1ED4A2B20;
  if (!result)
  {
    goto LABEL_12;
  }

  if (qword_1ED4A2B38 != -1)
  {
    dispatch_once(&qword_1ED4A2B38, &__block_literal_global_10_15);
  }

  result = qword_1ED4A2B30;
  if (result)
  {
    if (qword_1ED4A2B48 != -1)
    {
      dispatch_once(&qword_1ED4A2B48, &__block_literal_global_15_11);
    }

    result = qword_1ED4A2B40;
    v1 = result != 0;
  }

  else
  {
LABEL_12:
    v1 = 0;
  }

  _MergedGlobals_1385 = v1;
  return result;
}

@end