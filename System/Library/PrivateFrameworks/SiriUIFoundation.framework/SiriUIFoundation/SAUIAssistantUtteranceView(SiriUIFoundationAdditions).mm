@interface SAUIAssistantUtteranceView(SiriUIFoundationAdditions)
- (id)sruif_insertionContext;
@end

@implementation SAUIAssistantUtteranceView(SiriUIFoundationAdditions)

- (id)sruif_insertionContext
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [a1 encodedClassName];
  if (v3)
  {
    [v2 setObject:v3 forKey:*MEMORY[0x277D48B30]];
  }

  v4 = [a1 dialogIdentifier];
  if (v4)
  {
    [v2 setObject:v4 forKey:*MEMORY[0x277D48B38]];
  }

  return v2;
}

@end