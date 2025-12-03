@interface PIRGB10PortraitVideoProcessor
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation PIRGB10PortraitVideoProcessor

+ (int)formatForInputAtIndex:(int)index
{
  if (!index)
  {
    return *MEMORY[0x1E695F890];
  }

  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___PIRGB10PortraitVideoProcessor;
  return objc_msgSendSuper2(&v4, sel_formatForInputAtIndex_);
}

@end