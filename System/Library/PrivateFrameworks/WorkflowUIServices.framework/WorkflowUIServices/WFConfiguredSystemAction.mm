@interface WFConfiguredSystemAction
@end

@implementation WFConfiguredSystemAction

uint64_t __68__WFConfiguredSystemAction_WidgetConversion__systemActionWithValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = v2;
  if (v2 == @"encodedSystemAction")
  {
    v4 = 1;
  }

  else if (v2)
  {
    v4 = [(__CFString *)v2 isEqualToString:@"encodedSystemAction"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end