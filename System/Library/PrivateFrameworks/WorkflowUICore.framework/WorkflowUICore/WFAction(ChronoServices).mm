@interface WFAction(ChronoServices)
- (uint64_t)widgetFamily;
- (void)setWidgetFamily:()ChronoServices;
@end

@implementation WFAction(ChronoServices)

- (uint64_t)widgetFamily
{
  v1 = [a1 widgetSizeClass];
  if ([v1 isEqualToString:*MEMORY[0x277CD3820]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CD3818]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CD3810]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CD3808]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CD37F0]])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CD3800]])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CD37F8]])
  {
    v2 = 12;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setWidgetFamily:()ChronoServices
{
  v4 = INCodableAttributeArraySizeClassFromCHSWidgetFamily(a3);
  v6 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x277CD3810];
  }

  [a1 setWidgetSizeClass:v5];
}

@end