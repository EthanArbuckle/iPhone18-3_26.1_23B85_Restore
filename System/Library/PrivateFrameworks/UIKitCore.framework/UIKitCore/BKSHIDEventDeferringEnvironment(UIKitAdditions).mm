@interface BKSHIDEventDeferringEnvironment(UIKitAdditions)
+ (id)ui_cameraCaptureButtonEnvironment;
+ (id)ui_environmentForUIPhysicalButton:()UIKitAdditions;
@end

@implementation BKSHIDEventDeferringEnvironment(UIKitAdditions)

+ (id)ui_cameraCaptureButtonEnvironment
{
  if (qword_1ED49DEA0 != -1)
  {
    dispatch_once(&qword_1ED49DEA0, &__block_literal_global_230);
  }

  v1 = _MergedGlobals_1097;

  return v1;
}

+ (id)ui_environmentForUIPhysicalButton:()UIKitAdditions
{
  if (a3 == 5)
  {
    v5 = [MEMORY[0x1E698E398] ui_cameraCaptureButtonEnvironment];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end