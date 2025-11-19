@interface UIPickerViewCommonInit
@end

@implementation UIPickerViewCommonInit

void ___UIPickerViewCommonInit_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[UIColor labelColor];
  [v2 _setTextColor:v3];

  v4 = *(a1 + 32);
  v6 = +[UIColor labelColor];
  v5 = [v6 colorWithAlphaComponent:0.198];
  [v4 _setMagnifierLineColor:v5];
}

void ___UIPickerViewCommonInit_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[UIColor clearColor];
  [v1 setBackgroundColor:v2];
}

@end