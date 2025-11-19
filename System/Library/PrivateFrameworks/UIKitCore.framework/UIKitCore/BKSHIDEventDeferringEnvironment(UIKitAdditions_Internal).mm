@interface BKSHIDEventDeferringEnvironment(UIKitAdditions_Internal)
+ (id)ui_systemKeyCommandOverlayEnvironment;
@end

@implementation BKSHIDEventDeferringEnvironment(UIKitAdditions_Internal)

+ (id)ui_systemKeyCommandOverlayEnvironment
{
  if (qword_1ED49DEB0 != -1)
  {
    dispatch_once(&qword_1ED49DEB0, &__block_literal_global_5_3);
  }

  v1 = qword_1ED49DEA8;

  return v1;
}

@end