@interface WFVariableString
@end

@implementation WFVariableString

id __63__WFVariableString_AttributedString__initWithAttributedString___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) attribute:*MEMORY[0x277D74060] atIndex:a2 effectiveRange:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v2 token], v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass))
  {
    v5 = [v2 token];
    v6 = [v5 variable];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end