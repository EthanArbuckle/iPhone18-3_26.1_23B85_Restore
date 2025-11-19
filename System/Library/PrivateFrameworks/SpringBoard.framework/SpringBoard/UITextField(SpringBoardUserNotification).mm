@interface UITextField(SpringBoardUserNotification)
- (uint64_t)sb_maxInputLength;
- (void)sb_setMaxInputLength:()SpringBoardUserNotification;
@end

@implementation UITextField(SpringBoardUserNotification)

- (void)sb_setMaxInputLength:()SpringBoardUserNotification
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(a1, "_sb_maxInputLength", v2, 0x301);
}

- (uint64_t)sb_maxInputLength
{
  v1 = objc_getAssociatedObject(a1, "_sb_maxInputLength");
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedIntegerValue];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

@end