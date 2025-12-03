@interface SearchUICardSectionRowModel
- (BOOL)anyCardSectionsAreTappable:(id)tappable;
- (BOOL)anyCardSectionsHaveNextCards:(id)cards;
- (BOOL)fillsBackgroundWithContent;
- (BOOL)hasLeadingImage;
- (BOOL)isDraggable;
- (BOOL)isFocusable;
- (BOOL)isQuerySuggestion;
- (BOOL)isTappable;
- (BOOL)prefersNoSeparatorAbove;
- (BOOL)supportsCustomUserReportRequestAfforance;
- (CGSize)minimumLayoutSize;
- (Class)cardSectionViewClass;
- (SearchUICardSectionRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (id)accessibilityIdentifier;
- (id)backgroundColor;
- (id)backgroundImage;
- (id)contactIdentifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dragSubtitle;
- (id)dragText;
- (id)dragTitle;
- (id)dragURL;
- (id)fallbackCardSectionForCompactResult;
- (id)horizontalRowModel;
- (id)nextCard;
- (id)punchouts;
- (id)reuseIdentifier;
- (int)separatorStyle;
@end

@implementation SearchUICardSectionRowModel

- (id)punchouts
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  cardSection = [(SearchUIRowModel *)self cardSection];
  punchoutOptions = [cardSection punchoutOptions];

  v5 = [punchoutOptions countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        urls = [*(*(&v18 + 1) + 8 * i) urls];
        v10 = [urls count];

        if (v10)
        {

          cardSection2 = [(SearchUIRowModel *)self cardSection];
          punchoutOptions2 = [cardSection2 punchoutOptions];
          goto LABEL_16;
        }
      }

      v6 = [punchoutOptions countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  cardSection2 = [(SearchUIRowModel *)self identifyingResult];
  v12 = [SearchUIUtilities cardSectionsForRenderingResult:cardSection2];
  if ([(SearchUICardSectionRowModel *)self anyCardSectionsAreTappable:v12])
  {

LABEL_14:
    fallbackCardSectionForCompactResult = [(SearchUICardSectionRowModel *)self fallbackCardSectionForCompactResult];
    punchoutOptions3 = [fallbackCardSectionForCompactResult punchoutOptions];
    goto LABEL_15;
  }

  punchout = [cardSection2 punchout];

  if (!punchout)
  {
    goto LABEL_14;
  }

  fallbackCardSectionForCompactResult = [cardSection2 punchout];
  v22 = fallbackCardSectionForCompactResult;
  punchoutOptions3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
LABEL_15:
  punchoutOptions2 = punchoutOptions3;

LABEL_16:

  return punchoutOptions2;
}

- (id)nextCard
{
  cardSection = [(SearchUIRowModel *)self cardSection];
  command = [cardSection command];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([command card], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(cardSection, "nextCard"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    nextCard = v5;
    goto LABEL_10;
  }

  cardSection2 = [(SearchUIRowModel *)self cardSection];
  punchoutOptions = [cardSection2 punchoutOptions];
  if ([punchoutOptions count])
  {

LABEL_9:
    fallbackCardSectionForCompactResult = [(SearchUICardSectionRowModel *)self fallbackCardSectionForCompactResult];
    nextCard = [fallbackCardSectionForCompactResult nextCard];

    goto LABEL_10;
  }

  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  inlineCard = [identifyingResult inlineCard];
  cardSections = [inlineCard cardSections];
  v12 = [(SearchUICardSectionRowModel *)self anyCardSectionsHaveNextCards:cardSections];

  if (v12)
  {
    goto LABEL_9;
  }

  identifyingResult2 = [(SearchUIRowModel *)self identifyingResult];
  nextCard = [identifyingResult2 card];

  if (!nextCard)
  {
    goto LABEL_9;
  }

LABEL_10:

  return nextCard;
}

- (id)fallbackCardSectionForCompactResult
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  inlineCard = [identifyingResult inlineCard];
  cardSections = [inlineCard cardSections];

  identifyingResult2 = [(SearchUIRowModel *)self identifyingResult];
  if ([identifyingResult2 usesCompactDisplay] && objc_msgSend(cardSections, "count") == 1)
  {
    firstObject = [cardSections firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)reuseIdentifier
{
  cardReuseIdentifier = [(SearchUICardSectionRowModel *)self cardReuseIdentifier];

  if (!cardReuseIdentifier)
  {
    cardSectionViewClass = [(SearchUICardSectionRowModel *)self cardSectionViewClass];
    cardSection = [(SearchUIRowModel *)self cardSection];
    v6 = [(objc_class *)cardSectionViewClass supportsRecyclingForCardSection:cardSection];

    if (!reuseIdentifier_cardSectionReuseDict)
    {
      v7 = objc_opt_new();
      v8 = reuseIdentifier_cardSectionReuseDict;
      reuseIdentifier_cardSectionReuseDict = v7;
    }

    if (cardSectionViewClass)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      v10 = [reuseIdentifier_cardSectionReuseDict objectForKeyedSubscript:cardSectionViewClass];
      if (!v10)
      {
        v10 = NSStringFromClass(cardSectionViewClass);
        [reuseIdentifier_cardSectionReuseDict setObject:v10 forKeyedSubscript:cardSectionViewClass];
      }

      v11 = MEMORY[0x1E696AEC0];
      v16.receiver = self;
      v16.super_class = SearchUICardSectionRowModel;
      reuseIdentifier = [(SearchUIRowModel *)&v16 reuseIdentifier];
      v13 = [v11 stringWithFormat:@"%@-%@", reuseIdentifier, v10];
      [(SearchUICardSectionRowModel *)self setCardReuseIdentifier:v13];
    }
  }

  cardReuseIdentifier2 = [(SearchUICardSectionRowModel *)self cardReuseIdentifier];

  return cardReuseIdentifier2;
}

- (Class)cardSectionViewClass
{
  cardSection = [(SearchUIRowModel *)self cardSection];
  v4 = [SearchUICardSectionCreator viewClassForCardSection:cardSection horizontal:[(SearchUICardSectionRowModel *)self isHorizontalInLayout]];

  return v4;
}

- (id)accessibilityIdentifier
{
  cardSection = [(SearchUIRowModel *)self cardSection];
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  if (([identifyingResult usesCompactDisplay] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([cardSection shouldUseCompactDisplay] & 1) == 0)
    {

LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        accessibilityIdentifier = @"PersonEntityHeaderCell";
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          accessibilityIdentifier = @"EntityInfoCell";
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            accessibilityIdentifier = @"ImageCell";
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([cardSection punchoutOptions], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "urls"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v11, v10, v13))
            {
              accessibilityIdentifier = @"WebPunchOutCell";
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                accessibilityIdentifier = @"MapViewCell";
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  accessibilityIdentifier = @"HeroCardCell";
                }

                else
                {
                  v15.receiver = self;
                  v15.super_class = SearchUICardSectionRowModel;
                  accessibilityIdentifier = [(SearchUIRowModel *)&v15 accessibilityIdentifier];
                }
              }
            }
          }
        }
      }

      goto LABEL_21;
    }
  }

  punchouts = [(SearchUICardSectionRowModel *)self punchouts];
  firstObject = [punchouts firstObject];
  urls = [firstObject urls];
  v8 = [urls count];

  if (!v8)
  {
    goto LABEL_7;
  }

  accessibilityIdentifier = @"CompactPunchoutTopHitCell";
LABEL_21:

  return accessibilityIdentifier;
}

- (BOOL)fillsBackgroundWithContent
{
  cardSectionViewClass = [(SearchUICardSectionRowModel *)self cardSectionViewClass];

  return [(objc_class *)cardSectionViewClass fillsBackgroundWithContentForRowModel:self];
}

- (int)separatorStyle
{
  cardSection = [(SearchUIRowModel *)self cardSection];
  separatorStyle = [cardSection separatorStyle];

  cardSectionViewClass = [(SearchUICardSectionRowModel *)self cardSectionViewClass];
  if (separatorStyle || !cardSectionViewClass)
  {
    return separatorStyle;
  }

  return [(objc_class *)cardSectionViewClass defaultSeparatorStyleForRowModel:self];
}

- (CGSize)minimumLayoutSize
{
  width = self->_minimumLayoutSize.width;
  height = self->_minimumLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)backgroundImage
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  v4 = [SearchUIUtilities cardForRenderingResult:identifyingResult];

  cardSections = [v4 cardSections];
  if ([cardSections count] == 1)
  {
    backgroundImage = [v4 backgroundImage];
  }

  else
  {
    backgroundImage = 0;
  }

  backgroundColor = [(SearchUICardSectionRowModel *)self backgroundColor];
  if (backgroundColor)
  {
    v8 = backgroundImage;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (SearchUICardSectionRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  inlineCopy = inline;
  v11.receiver = self;
  v11.super_class = SearchUICardSectionRowModel;
  v8 = [(SearchUIRowModel *)&v11 initWithResult:result cardSection:section queryId:id itemIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    [(SearchUICardSectionRowModel *)v8 setIsInline:inlineCopy];
  }

  return v9;
}

- (id)horizontalRowModel
{
  v2 = [(SearchUICardSectionRowModel *)self copy];
  [v2 setIsHorizontalInLayout:1];

  return v2;
}

- (BOOL)anyCardSectionsAreTappable:(id)tappable
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  tappableCopy = tappable;
  v5 = [tappableCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(tappableCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        punchoutOptions = [v9 punchoutOptions];
        if ([punchoutOptions count])
        {

LABEL_14:
          v14 = 1;
          goto LABEL_15;
        }

        command = [v9 command];

        if (command)
        {
          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          cardSections = [v9 cardSections];
          v13 = [(SearchUICardSectionRowModel *)self anyCardSectionsAreTappable:cardSections];

          if (v13)
          {
            goto LABEL_14;
          }
        }
      }

      v6 = [tappableCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(SearchUICardSectionRowModel *)self anyCardSectionsHaveNextCards:tappableCopy];
LABEL_15:

  return v14;
}

- (BOOL)anyCardSectionsHaveNextCards:(id)cards
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  cardsCopy = cards;
  v4 = [cardsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(cardsCopy);
        }

        nextCard = [*(*(&v9 + 1) + 8 * i) nextCard];

        if (nextCard)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [cardsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)isFocusable
{
  cardSection = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isFocusable = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SearchUICardSectionRowModel;
    isFocusable = [(SearchUIRowModel *)&v6 isFocusable];
  }

  return isFocusable;
}

- (BOOL)isQuerySuggestion
{
  cardSection = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    command = cardSection;
    suggestionType = [command suggestionType];
    if (suggestionType)
    {
      v5 = suggestionType;

      if (v5 == 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      thumbnail = [command thumbnail];
      if (!thumbnail)
      {
        goto LABEL_8;
      }
    }
  }

  command = [cardSection command];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    LOBYTE(v5) = objc_opt_isKindOfClass();
    goto LABEL_10;
  }

LABEL_8:
  LOBYTE(v5) = 1;
LABEL_10:

LABEL_11:
  return v5 & 1;
}

- (BOOL)isTappable
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  v4 = [SearchUIUtilities cardForRenderingResult:identifyingResult];
  nextCard = [(SearchUICardSectionRowModel *)self nextCard];
  if (!nextCard && ![(SearchUICardSectionRowModel *)self isQuerySuggestion])
  {
    punchouts = [(SearchUICardSectionRowModel *)self punchouts];
    if ([punchouts count])
    {
      v6 = 1;
LABEL_30:

      goto LABEL_4;
    }

    userActivityRequiredString = [identifyingResult userActivityRequiredString];
    if ([userActivityRequiredString length])
    {
      v6 = 1;
LABEL_29:

      goto LABEL_30;
    }

    applicationBundleIdentifier = [identifyingResult applicationBundleIdentifier];
    if (applicationBundleIdentifier)
    {
      v6 = 1;
LABEL_28:

      goto LABEL_29;
    }

    intentMessageName = [v4 intentMessageName];
    if (intentMessageName && ([v4 intentMessageData], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = 1;
    }

    else
    {
      cardSection = [(SearchUIRowModel *)self cardSection];
      userReportRequest = [cardSection userReportRequest];
      if (userReportRequest && ![(SearchUICardSectionRowModel *)self supportsCustomUserReportRequestAfforance])
      {

        v6 = 1;
        if (!intentMessageName)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = cardSection;
        cardSection2 = [(SearchUIRowModel *)self cardSection];
        commands = [cardSection2 commands];
        if ([commands count])
        {
          v6 = 1;
        }

        else
        {
          identifier = [identifyingResult identifier];
          if ([identifier hasPrefix:@"com.apple.other"])
          {
            v6 = 1;
          }

          else
          {
            cardSection3 = [(SearchUIRowModel *)self cardSection];
            command = [cardSection3 command];
            v6 = command != 0;
          }
        }

        if (!intentMessageName)
        {
          goto LABEL_27;
        }
      }

      v12 = 0;
    }

LABEL_27:
    goto LABEL_28;
  }

  v6 = 1;
LABEL_4:

  return v6;
}

- (BOOL)isDraggable
{
  if ([(SearchUICardSectionRowModel *)self isQuerySuggestion])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    identifyingResult = [(SearchUIRowModel *)self identifyingResult];
    if ([SearchUIUtilities resultIsSiriAction:identifyingResult])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      identifyingResult2 = [(SearchUIRowModel *)self identifyingResult];
      sectionBundleIdentifier = [identifyingResult2 sectionBundleIdentifier];
      v3 = [sectionBundleIdentifier hasSuffix:@"search-through"] ^ 1;
    }
  }

  return v3;
}

- (id)dragTitle
{
  cardSectionViewClass = [(SearchUICardSectionRowModel *)self cardSectionViewClass];
  cardSection = [(SearchUIRowModel *)self cardSection];
  v5 = [(objc_class *)cardSectionViewClass dragTitleForCardSection:cardSection];

  return v5;
}

- (id)dragSubtitle
{
  dragURL = [(SearchUICardSectionRowModel *)self dragURL];
  host = [dragURL host];

  if (!host)
  {
    cardSectionViewClass = [(SearchUICardSectionRowModel *)self cardSectionViewClass];
    cardSection = [(SearchUIRowModel *)self cardSection];
    host = [(objc_class *)cardSectionViewClass dragSubtitleForCardSection:cardSection];
  }

  return host;
}

- (id)dragText
{
  v3 = objc_opt_new();
  dragTitle = [(SearchUICardSectionRowModel *)self dragTitle];
  dragSubtitle = [(SearchUICardSectionRowModel *)self dragSubtitle];
  if ([dragTitle length])
  {
    [v3 appendString:dragTitle];
  }

  if ([v3 length])
  {
    [v3 appendString:@"\n"];
  }

  if ([dragSubtitle length])
  {
    [v3 appendString:dragSubtitle];
  }

  return v3;
}

- (id)dragURL
{
  punchouts = [(SearchUICardSectionRowModel *)self punchouts];
  firstObject = [punchouts firstObject];
  preferredOpenableURL = [firstObject preferredOpenableURL];
  v6 = preferredOpenableURL;
  if (preferredOpenableURL)
  {
    preferredOpenableURL2 = preferredOpenableURL;
  }

  else
  {
    identifyingResult = [(SearchUIRowModel *)self identifyingResult];
    punchout = [identifyingResult punchout];
    preferredOpenableURL2 = [punchout preferredOpenableURL];
  }

  return preferredOpenableURL2;
}

- (BOOL)hasLeadingImage
{
  cardSectionViewClass = [(SearchUICardSectionRowModel *)self cardSectionViewClass];
  cardSection = [(SearchUIRowModel *)self cardSection];
  LOBYTE(cardSectionViewClass) = [(objc_class *)cardSectionViewClass hasLeadingImageForCardSection:cardSection];

  return cardSectionViewClass;
}

- (BOOL)prefersNoSeparatorAbove
{
  cardSectionViewClass = [(SearchUICardSectionRowModel *)self cardSectionViewClass];

  return [(objc_class *)cardSectionViewClass prefersNoSeparatorAboveRowModel:self];
}

- (BOOL)supportsCustomUserReportRequestAfforance
{
  cardSectionViewClass = [(SearchUICardSectionRowModel *)self cardSectionViewClass];

  return [(objc_class *)cardSectionViewClass supportsCustomUserReportRequestAfforance];
}

- (id)backgroundColor
{
  if ([(SearchUIRowModel *)self allowBackgroundColor])
  {
    identifyingResult = [(SearchUIRowModel *)self identifyingResult];
    v4 = [SearchUIUtilities cardForRenderingResult:identifyingResult];

    cardSections = [v4 cardSections];
    if ([cardSections count] == 1)
    {
      backgroundColor = [v4 backgroundColor];
    }

    else
    {
      backgroundColor = 0;
    }

    v12.receiver = self;
    v12.super_class = SearchUICardSectionRowModel;
    backgroundColor2 = [(SearchUIRowModel *)&v12 backgroundColor];
    v9 = backgroundColor2;
    if (backgroundColor2 || (v9 = backgroundColor) != 0)
    {
      backgroundColor3 = v9;
    }

    else
    {
      cardSection = [(SearchUIRowModel *)self cardSection];
      backgroundColor3 = [cardSection backgroundColor];
    }
  }

  else
  {
    backgroundColor3 = 0;
  }

  return backgroundColor3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = SearchUICardSectionRowModel;
  v4 = [(SearchUICardSectionRowModel *)&v10 description];
  v5 = [v3 stringWithString:v4];

  cardSection = [(SearchUIRowModel *)self cardSection];

  if (cardSection)
  {
    cardSection2 = [(SearchUIRowModel *)self cardSection];
    v8 = [cardSection2 description];
    [v5 appendString:v8];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SearchUICardSectionRowModel;
  v4 = [(SearchUIRowModel *)&v6 copyWithZone:zone];
  [v4 setIsInline:{-[SearchUICardSectionRowModel isInline](self, "isInline")}];
  [v4 setIsHorizontalInLayout:{-[SearchUICardSectionRowModel isHorizontalInLayout](self, "isHorizontalInLayout")}];
  return v4;
}

- (id)contactIdentifiers
{
  v11[1] = *MEMORY[0x1E69E9840];
  cardSection = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    cardSection2 = [(SearchUIRowModel *)self cardSection];
    person = [cardSection2 person];

    contactIdentifier = [person contactIdentifier];
    if (contactIdentifier)
    {
      contactIdentifier2 = [person contactIdentifier];
      v11[0] = contactIdentifier2;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end