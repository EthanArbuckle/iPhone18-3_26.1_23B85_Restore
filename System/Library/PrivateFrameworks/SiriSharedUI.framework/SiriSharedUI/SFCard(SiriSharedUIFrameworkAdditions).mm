@interface SFCard(SiriSharedUIFrameworkAdditions)
- (uint64_t)afui_hasContentEqualTo:()SiriSharedUIFrameworkAdditions;
@end

@implementation SFCard(SiriSharedUIFrameworkAdditions)

- (uint64_t)afui_hasContentEqualTo:()SiriSharedUIFrameworkAdditions
{
  v4 = a3;
  cardSections = [self cardSections];
  v6 = [cardSections count];
  cardSections2 = [v4 cardSections];
  v8 = [cardSections2 count];

  if (v6 != v8)
  {
LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  cardSections3 = [self cardSections];
  v10 = [cardSections3 count];

  if (v10)
  {
    v11 = 0;
    while (1)
    {
      cardSections4 = [self cardSections];
      v13 = [cardSections4 objectAtIndex:v11];

      cardSections5 = [v4 cardSections];
      v15 = [cardSections5 objectAtIndex:v11];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      nextCard = [v13 nextCard];
      cardSections6 = [nextCard cardSections];
      if (cardSections6)
      {

        break;
      }

      nextCard2 = [v15 nextCard];
      cardSections7 = [nextCard2 cardSections];

      if (cardSections7)
      {
        break;
      }

      [v13 setCardSectionId:&stru_282F84AA8];
      [v15 setCardSectionId:&stru_282F84AA8];
      [v13 setResultIdentifier:&stru_282F84AA8];
      [v15 setResultIdentifier:&stru_282F84AA8];
      dictionaryRepresentation = [v13 dictionaryRepresentation];
      dictionaryRepresentation2 = [v15 dictionaryRepresentation];
      v22 = [dictionaryRepresentation isEqual:dictionaryRepresentation2];

      if (v22)
      {
        ++v11;
        cardSections8 = [self cardSections];
        v24 = [cardSections8 count];

        if (v24 > v11)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v22 = 1;
LABEL_15:

  return v22;
}

@end