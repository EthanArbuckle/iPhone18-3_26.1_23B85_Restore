@interface WFHomeServicePickerParameter
- (id)localizedLabelForState:(id)state;
@end

@implementation WFHomeServicePickerParameter

- (id)localizedLabelForState:(id)state
{
  if (state)
  {
    service = [state service];
    name = [service name];
  }

  else
  {
    name = 0;
  }

  return name;
}

@end