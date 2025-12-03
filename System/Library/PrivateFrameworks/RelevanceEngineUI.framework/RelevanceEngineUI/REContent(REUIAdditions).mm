@interface REContent(REUIAdditions)
- (id)circularTempate;
- (id)gaugeProvider;
- (id)summaryImageProvider;
- (id)summaryTextProvider;
- (void)setCircularTempate:()REUIAdditions;
- (void)setGaugeProvider:()REUIAdditions;
@end

@implementation REContent(REUIAdditions)

- (id)summaryTextProvider
{
  v2 = [self objectForKey:@"REUISummaryTextProviderKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    description1TextProvider = v2;
  }

  else
  {
    description1TextProvider = [self description1TextProvider];
  }

  v4 = description1TextProvider;

  return v4;
}

- (id)summaryImageProvider
{
  v1 = [self objectForKey:@"REUISummaryImageProviderKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)circularTempate
{
  v1 = [self objectForKey:@"REUICircularTemplateKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setCircularTempate:()REUIAdditions
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self setObject:v4 forKey:@"REUICircularTemplateKey"];
  }
}

- (id)gaugeProvider
{
  v1 = [self objectForKey:@"REUIGaugeProviderKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setGaugeProvider:()REUIAdditions
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self setObject:v4 forKey:@"REUIGaugeProviderKey"];
  }
}

@end