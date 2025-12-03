@interface SAUIAssistantUtteranceView(SiriUIFoundationAdditions)
- (id)sruif_insertionContext;
@end

@implementation SAUIAssistantUtteranceView(SiriUIFoundationAdditions)

- (id)sruif_insertionContext
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  encodedClassName = [self encodedClassName];
  if (encodedClassName)
  {
    [v2 setObject:encodedClassName forKey:*MEMORY[0x277D48B30]];
  }

  dialogIdentifier = [self dialogIdentifier];
  if (dialogIdentifier)
  {
    [v2 setObject:dialogIdentifier forKey:*MEMORY[0x277D48B38]];
  }

  return v2;
}

@end