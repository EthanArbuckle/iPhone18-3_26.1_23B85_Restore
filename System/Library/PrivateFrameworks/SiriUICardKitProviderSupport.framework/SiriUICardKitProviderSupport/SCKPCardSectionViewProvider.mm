@interface SCKPCardSectionViewProvider
- (BOOL)isShortcutCard:(id)card;
- (NSArray)viewConfigurations;
- (SCKPCardSectionViewProvider)initWithCard:(id)card;
@end

@implementation SCKPCardSectionViewProvider

- (SCKPCardSectionViewProvider)initWithCard:(id)card
{
  cardCopy = card;
  v9.receiver = self;
  v9.super_class = SCKPCardSectionViewProvider;
  v6 = [(SCKPCardSectionViewProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_card, card);
  }

  return v7;
}

- (NSArray)viewConfigurations
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  cardSections = [(CRCard *)self->_card cardSections];
  v30 = [cardSections countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v30)
  {
    v5 = 0x277D4C000uLL;
    v6 = *v32;
    v7 = 0x279C5F000uLL;
    v29 = v3;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(cardSections);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        backingCardSection = [v9 backingCardSection];
        v11 = *(v5 + 1168);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        backingCardSection2 = [v9 backingCardSection];
        if (isKindOfClass)
        {
          messageAttachment = [objc_alloc(*(v7 + 3664)) initWithMediaRemoteControlCardSection:backingCardSection2];
          goto LABEL_8;
        }

        objc_opt_class();
        v17 = objc_opt_isKindOfClass();

        if ((v17 & 1) == 0 || [(SCKPCardSectionViewProvider *)self isShortcutCard:self->_card])
        {
          goto LABEL_12;
        }

        backingCardSection2 = [v9 backingCardSection];
        if ([backingCardSection2 messageStatus] != 1)
        {
          audioMessageURL = [backingCardSection2 audioMessageURL];
          if (audioMessageURL)
          {
          }

          else
          {
            messageAttachment = [backingCardSection2 messageAttachment];

            if (!messageAttachment)
            {
              goto LABEL_8;
            }
          }
        }

        v19 = [SCKPMessageCardSectionViewController alloc];
        interactions = [(CRCard *)self->_card interactions];
        [interactions anyObject];
        v21 = v6;
        v22 = v5;
        selfCopy = self;
        v25 = v24 = cardSections;
        messageAttachment = [(SCKPMessageCardSectionViewController *)v19 initWithMessageCardSection:backingCardSection2 interaction:v25];

        cardSections = v24;
        self = selfCopy;
        v5 = v22;
        v6 = v21;
        v7 = 0x279C5F000;

        v3 = v29;
LABEL_8:

        if (messageAttachment)
        {
          v15 = objc_alloc_init(MEMORY[0x277CF93B8]);
          [v15 setCardSection:v9];
          [v15 setCardSectionViewController:messageAttachment];
          view = [(SCKPMessageCardSectionViewController *)messageAttachment view];
          [v15 setCardSectionView:view];

          [v3 addObject:v15];
        }

LABEL_12:
        ++v8;
      }

      while (v30 != v8);
      v26 = [cardSections countByEnumeratingWithState:&v31 objects:v35 count:16];
      v30 = v26;
    }

    while (v26);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isShortcutCard:(id)card
{
  interactions = [card interactions];
  anyObject = [interactions anyObject];

  intent = [anyObject intent];
  _metadata = [intent _metadata];
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 || [_metadata executionContext] == 2 || objc_msgSend(_metadata, "executionContext") == 9;

  return v7;
}

@end