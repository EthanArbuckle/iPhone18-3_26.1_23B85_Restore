@interface VCUIBadgeViewShim
+ (id)downBadgeSizeForDigits;
+ (id)downBadgeViewForText;
+ (id)rightBadgeSizeForDigits;
+ (id)rightBadgeViewForText;
+ (void)setDownBadgeSizeForDigits:(id)a3;
+ (void)setDownBadgeViewForText:(id)a3;
+ (void)setRightBadgeSizeForDigits:(id)a3;
+ (void)setRightBadgeViewForText:(id)a3;
@end

@implementation VCUIBadgeViewShim

+ (void)setRightBadgeViewForText:(id)a3
{
  __rightBadgeViewForText = _Block_copy(a3);

  MEMORY[0x2821F96F8]();
}

+ (void)setRightBadgeSizeForDigits:(id)a3
{
  __rightBadgeSizeForDigits = _Block_copy(a3);

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

+ (void)setDownBadgeViewForText:(id)a3
{
  __downBadgeViewForText = _Block_copy(a3);

  MEMORY[0x2821F96F8]();
}

+ (void)setDownBadgeSizeForDigits:(id)a3
{
  __downBadgeSizeForDigits = _Block_copy(a3);

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