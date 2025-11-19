@interface WFStaccatoActionTemplate
@end

@implementation WFStaccatoActionTemplate

id __89__WFStaccatoActionTemplate_WorkflowKit__initWithIdentifier_sectionIdentifier_linkAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 key];
  LOBYTE(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v7 = v3;
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [objc_alloc(MEMORY[0x277D7A120]) initWithLinkAction:*(a1 + 40) parameter:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end