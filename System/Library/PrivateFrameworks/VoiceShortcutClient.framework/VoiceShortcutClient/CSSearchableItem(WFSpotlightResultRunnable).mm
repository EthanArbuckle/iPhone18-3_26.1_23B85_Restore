@interface CSSearchableItem(WFSpotlightResultRunnable)
- (void)wf_shortcutsRunnableData;
@end

@implementation CSSearchableItem(WFSpotlightResultRunnable)

- (void)wf_shortcutsRunnableData
{
  attributeSet = [self attributeSet];
  v2 = WFSpotlightResultRunnableAttributeKey();
  v3 = [attributeSet valueForCustomKey:v2];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end