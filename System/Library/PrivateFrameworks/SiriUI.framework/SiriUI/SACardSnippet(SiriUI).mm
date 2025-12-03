@interface SACardSnippet(SiriUI)
- (id)siriui_card;
- (id)siriui_card_compact;
- (id)siriui_eventInfo;
@end

@implementation SACardSnippet(SiriUI)

- (id)siriui_eventInfo
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D4C728]);
  siriui_card = [self siriui_card];
  v4 = [v2 initWithFacade:siriui_card];

  cardSections = [v4 cardSections];
  v6 = NSStringFromSelector(sel_type);
  v7 = [cardSections valueForKeyPath:v6];

  v14[0] = @"numberOfSections";
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v7, "count")];
  v14[1] = @"cardSections";
  v15[0] = v8;
  v9 = [v7 componentsJoinedByString:{@", "}];
  v10 = v9;
  v11 = &stru_2879FFD58;
  if (v9)
  {
    v11 = v9;
  }

  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v12;
}

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