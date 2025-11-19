@interface SCKPCardSectionViewProvider
- (BOOL)isShortcutCard:(id)a3;
- (NSArray)viewConfigurations;
- (SCKPCardSectionViewProvider)initWithCard:(id)a3;
@end

@implementation SCKPCardSectionViewProvider

- (SCKPCardSectionViewProvider)initWithCard:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SCKPCardSectionViewProvider;
  v6 = [(SCKPCardSectionViewProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_card, a3);
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
  v4 = [(CRCard *)self->_card cardSections];
  v30 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v10 = [v9 backingCardSection];
        v11 = *(v5 + 1168);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v13 = [v9 backingCardSection];
        if (isKindOfClass)
        {
          v14 = [objc_alloc(*(v7 + 3664)) initWithMediaRemoteControlCardSection:v13];
          goto LABEL_8;
        }

        objc_opt_class();
        v17 = objc_opt_isKindOfClass();

        if ((v17 & 1) == 0 || [(SCKPCardSectionViewProvider *)self isShortcutCard:self->_card])
        {
          goto LABEL_12;
        }

        v13 = [v9 backingCardSection];
        if ([v13 messageStatus] != 1)
        {
          v18 = [v13 audioMessageURL];
          if (v18)
          {
          }

          else
          {
            v14 = [v13 messageAttachment];

            if (!v14)
            {
              goto LABEL_8;
            }
          }
        }

        v19 = [SCKPMessageCardSectionViewController alloc];
        v20 = [(CRCard *)self->_card interactions];
        [v20 anyObject];
        v21 = v6;
        v22 = v5;
        v23 = self;
        v25 = v24 = v4;
        v14 = [(SCKPMessageCardSectionViewController *)v19 initWithMessageCardSection:v13 interaction:v25];

        v4 = v24;
        self = v23;
        v5 = v22;
        v6 = v21;
        v7 = 0x279C5F000;

        v3 = v29;
LABEL_8:

        if (v14)
        {
          v15 = objc_alloc_init(MEMORY[0x277CF93B8]);
          [v15 setCardSection:v9];
          [v15 setCardSectionViewController:v14];
          v16 = [(SCKPMessageCardSectionViewController *)v14 view];
          [v15 setCardSectionView:v16];

          [v3 addObject:v15];
        }

LABEL_12:
        ++v8;
      }

      while (v30 != v8);
      v26 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v30 = v26;
    }

    while (v26);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isShortcutCard:(id)a3
{
  v3 = [a3 interactions];
  v4 = [v3 anyObject];

  v5 = [v4 intent];
  v6 = [v5 _metadata];
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 || [v6 executionContext] == 2 || objc_msgSend(v6, "executionContext") == 9;

  return v7;
}

@end