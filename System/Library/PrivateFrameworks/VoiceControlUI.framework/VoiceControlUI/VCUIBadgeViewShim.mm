@interface VCUIBadgeViewShim
+ (id)downBadgeSizeForDigits;
+ (id)downBadgeViewForText;
+ (id)rightBadgeSizeForDigits;
+ (id)rightBadgeViewForText;
+ (void)setDownBadgeSizeForDigits:(id)digits;
+ (void)setDownBadgeViewForText:(id)text;
+ (void)setRightBadgeSizeForDigits:(id)digits;
+ (void)setRightBadgeViewForText:(id)text;
@end

@implementation VCUIBadgeViewShim

+ (void)setRightBadgeViewForText:(id)text
{
  __rightBadgeViewForText = _Block_copy(text);

  MEMORY[0x2821F96F8]();
}

+ (void)setRightBadgeSizeForDigits:(id)digits
{
  __rightBadgeSizeForDigits = _Block_copy(digits);

  MEMORY[0x2821F96F8]();
}

+ (id)rightBadgeViewForText
{
  v2 = _Block_copy(__rightBadgeViewForText);

  return v2;
}

+ (id)rightBadgeSizeForDigits
{
  v2 = _Block_copy(__rightBadgeSizeForDigits);

  return v2;
}

+ (void)setDownBadgeViewForText:(id)text
{
  __downBadgeViewForText = _Block_copy(text);

  MEMORY[0x2821F96F8]();
}

+ (void)setDownBadgeSizeForDigits:(id)digits
{
  __downBadgeSizeForDigits = _Block_copy(digits);

  MEMORY[0x2821F96F8]();
}

+ (id)downBadgeViewForText
{
  v2 = _Block_copy(__downBadgeViewForText);

  return v2;
}

+ (id)downBadgeSizeForDigits
{
  v2 = _Block_copy(__downBadgeSizeForDigits);

  return v2;
}

@end