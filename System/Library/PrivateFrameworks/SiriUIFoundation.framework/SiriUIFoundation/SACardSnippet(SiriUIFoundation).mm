@interface SACardSnippet(SiriUIFoundation)
- (id)siriui_card;
- (id)siriui_card_compact;
- (id)siriui_eventInfo;
@end

@implementation SACardSnippet(SiriUIFoundation)

- (id)siriui_eventInfo
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D4C728]);
  v3 = [a1 siriui_card];
  v4 = [v2 initWithFacade:v3];

  v5 = [v4 cardSections];
  v6 = NSStringFromSelector(sel_type);
  v7 = [v5 valueForKeyPath:v6];

  v15[0] = @"numberOfSections";
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v7, "count")];
  v15[1] = @"cardSections";
  v16[0] = v8;
  v9 = [v7 componentsJoinedByString:{@", "}];
  v10 = v9;
  v11 = &stru_287A10D80;
  if (v9)
  {
    v11 = v9;
  }

  v16[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)siriui_card
{
  v1 = MEMORY[0x277CF9450];
  v2 = [a1 cardData];
  v3 = [v1 cardForData:v2 messageName:@"searchfoundation.Card"];

  return v3;
}

- (id)siriui_card_compact
{
  v1 = MEMORY[0x277CF9450];
  v2 = [a1 compactSizeCardData];
  v3 = [v1 cardForData:v2 messageName:@"searchfoundation.Card"];

  return v3;
}

@end