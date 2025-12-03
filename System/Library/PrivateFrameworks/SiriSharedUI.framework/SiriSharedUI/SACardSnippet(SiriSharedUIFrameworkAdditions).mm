@interface SACardSnippet(SiriSharedUIFrameworkAdditions)
- (id)siriui_card;
- (id)siriui_card_compact;
@end

@implementation SACardSnippet(SiriSharedUIFrameworkAdditions)

- (id)siriui_card
{
  v1 = MEMORY[0x277CF9450];
  cardData = [self cardData];
  v3 = [v1 cardForData:cardData messageName:@"searchfoundation.Card"];

  return v3;
}

- (id)siriui_card_compact
{
  v1 = MEMORY[0x277CF9450];
  compactSizeCardData = [self compactSizeCardData];
  v3 = [v1 cardForData:compactSizeCardData messageName:@"searchfoundation.Card"];

  return v3;
}

@end