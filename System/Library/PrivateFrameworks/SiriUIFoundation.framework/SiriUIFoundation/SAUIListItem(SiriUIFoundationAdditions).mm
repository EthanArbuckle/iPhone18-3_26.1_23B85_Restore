@interface SAUIListItem(SiriUIFoundationAdditions)
- (id)sruif_appInfo;
- (void)sruif_setSelectionTextWithDisambiguationList:()SiriUIFoundationAdditions;
@end

@implementation SAUIListItem(SiriUIFoundationAdditions)

- (id)sruif_appInfo
{
  object = [self object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [self object];
    v5 = [object2 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sruif_setSelectionTextWithDisambiguationList:()SiriUIFoundationAdditions
{
  v6 = a3;
  selectionResponse = [self selectionResponse];
  if (!selectionResponse)
  {
    selectionResponse = [self selectionText];
    if (!selectionResponse)
    {
      selectionResponse2 = [v6 selectionResponse];
      [self setSelectionText:selectionResponse2];

      selectionResponse = 0;
    }
  }
}

@end