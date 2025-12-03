@interface WFHomeAccessoryPickerParameter
- (id)localizedLabelForState:(id)state;
@end

@implementation WFHomeAccessoryPickerParameter

- (id)localizedLabelForState:(id)state
{
  if (state)
  {
    triggerActionSetsBuilder = [state triggerActionSetsBuilder];
    if ([triggerActionSetsBuilder hasActions])
    {
      actionSetsSummary = [triggerActionSetsBuilder actionSetsSummary];
      summaryText = [actionSetsSummary summaryText];
    }

    else
    {
      summaryText = 0;
    }
  }

  else
  {
    summaryText = 0;
  }

  return summaryText;
}

@end