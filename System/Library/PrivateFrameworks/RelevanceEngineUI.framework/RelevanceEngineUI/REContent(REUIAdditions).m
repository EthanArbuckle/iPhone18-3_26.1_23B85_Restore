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
  v2 = [a1 objectForKey:@"REUISummaryTextProviderKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = [a1 description1TextProvider];
  }

  v4 = v3;

  return v4;
}

- (id)summaryImageProvider
{
  v1 = [a1 objectForKey:@"REUISummaryImageProviderKey"];
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
  v1 = [a1 objectForKey:@"REUICircularTemplateKey"];
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
    [a1 setObject:v4 forKey:@"REUICircularTemplateKey"];
  }
}

- (id)gaugeProvider
{
  v1 = [a1 objectForKey:@"REUIGaugeProviderKey"];
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
    [a1 setObject:v4 forKey:@"REUIGaugeProviderKey"];
  }
}

@end