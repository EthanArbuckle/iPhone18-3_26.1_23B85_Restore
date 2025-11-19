@interface WFHomeServicePickerParameter
- (id)localizedLabelForState:(id)a3;
@end

@implementation WFHomeServicePickerParameter

- (id)localizedLabelForState:(id)a3
{
  if (a3)
  {
    v3 = [a3 service];
    v4 = [v3 name];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end