@interface SearchUICardSectionRowModel
- (BOOL)anyCardSectionsAreTappable:(id)a3;
- (BOOL)anyCardSectionsHaveNextCards:(id)a3;
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
- (SearchUICardSectionRowModel)initWithResult:(id)a3 cardSection:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7;
- (id)accessibilityIdentifier;
- (id)backgroundColor;
- (id)backgroundImage;
- (id)contactIdentifiers;
- (id)copyWithZone:(_NSZone *)a3;
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
  v3 = [(SearchUIRowModel *)self cardSection];
  v4 = [v3 punchoutOptions];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) urls];
        v10 = [v9 count];

        if (v10)
        {

          v11 = [(SearchUIRowModel *)self cardSection];
          v13 = [v11 punchoutOptions];
          goto LABEL_16;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = [(SearchUIRowModel *)self identifyingResult];
  v12 = [SearchUIUtilities cardSectionsForRenderingResult:v11];
  if ([(SearchUICardSectionRowModel *)self anyCardSectionsAreTappable:v12])
  {

LABEL_14:
    v15 = [(SearchUICardSectionRowModel *)self fallbackCardSectionForCompactResult];
    v16 = [v15 punchoutOptions];
    goto LABEL_15;
  }

  v14 = [v11 punchout];

  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = [v11 punchout];
  v22 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
LABEL_15:
  v13 = v16;

LABEL_16:

  return v13;
}

- (id)nextCard
{
  v3 = [(SearchUIRowModel *)self cardSection];
  v4 = [v3 command];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 card], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v3, "nextCard"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    goto LABEL_10;
  }

  v7 = [(SearchUIRowModel *)self cardSection];
  v8 = [v7 punchoutOptions];
  if ([v8 count])
  {

LABEL_9:
    v14 = [(SearchUICardSectionRowModel *)self fallbackCardSectionForCompactResult];
    v6 = [v14 nextCard];

    goto LABEL_10;
  }

  v9 = [(SearchUIRowModel *)self identifyingResult];
  v10 = [v9 inlineCard];
  v11 = [v10 cardSections];
  v12 = [(SearchUICardSectionRowModel *)self anyCardSectionsHaveNextCards:v11];

  if (v12)
  {
    goto LABEL_9;
  }

  v13 = [(SearchUIRowModel *)self identifyingResult];
  v6 = [v13 card];

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (id)fallbackCardSectionForCompactResult
{
  v3 = [(SearchUIRowModel *)self identifyingResult];
  v4 = [v3 inlineCard];
  v5 = [v4 cardSections];

  v6 = [(SearchUIRowModel *)self identifyingResult];
  if ([v6 usesCompactDisplay] && objc_msgSend(v5, "count") == 1)
  {
    v7 = [v5 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)reuseIdentifier
{
  v3 = [(SearchUICardSectionRowModel *)self cardReuseIdentifier];

  if (!v3)
  {
    v4 = [(SearchUICardSectionRowModel *)self cardSectionViewClass];
    v5 = [(SearchUIRowModel *)self cardSection];
    v6 = [(objc_class *)v4 supportsRecyclingForCardSection:v5];

    if (!reuseIdentifier_cardSectionReuseDict)
    {
      v7 = objc_opt_new();
      v8 = reuseIdentifier_cardSectionReuseDict;
      reuseIdentifier_cardSectionReuseDict = v7;
    }

    if (v4)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      v10 = [reuseIdentifier_cardSectionReuseDict objectForKeyedSubscript:v4];
      if (!v10)
      {
        v10 = NSStringFromClass(v4);
        [reuseIdentifier_cardSectionReuseDict setObject:v10 forKeyedSubscript:v4];
      }

      v11 = MEMORY[0x1E696AEC0];
      v16.receiver = self;
      v16.super_class = SearchUICardSectionRowModel;
      v12 = [(SearchUIRowModel *)&v16 reuseIdentifier];
      v13 = [v11 stringWithFormat:@"%@-%@", v12, v10];
      [(SearchUICardSectionRowModel *)self setCardReuseIdentifier:v13];
    }
  }

  v14 = [(SearchUICardSectionRowModel *)self cardReuseIdentifier];

  return v14;
}

- (Class)cardSectionViewClass
{
  v3 = [(SearchUIRowModel *)self cardSection];
  v4 = [SearchUICardSectionCreator viewClassForCardSection:v3 horizontal:[(SearchUICardSectionRowModel *)self isHorizontalInLayout]];

  return v4;
}

- (id)accessibilityIdentifier
{
  v3 = [(SearchUIRowModel *)self cardSection];
  v4 = [(SearchUIRowModel *)self identifyingResult];
  if (([v4 usesCompactDisplay] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v3 shouldUseCompactDisplay] & 1) == 0)
    {

LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = @"PersonEntityHeaderCell";
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = @"EntityInfoCell";
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = @"ImageCell";
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 punchoutOptions], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "urls"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v11, v10, v13))
            {
              v9 = @"WebPunchOutCell";
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v9 = @"MapViewCell";
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v9 = @"HeroCardCell";
                }

                else
                {
                  v15.receiver = self;
                  v15.super_class = SearchUICardSectionRowModel;
                  v9 = [(SearchUIRowModel *)&v15 accessibilityIdentifier];
                }
              }
            }
          }
        }
      }

      goto LABEL_21;
    }
  }

  v5 = [(SearchUICardSectionRowModel *)self punchouts];
  v6 = [v5 firstObject];
  v7 = [v6 urls];
  v8 = [v7 count];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = @"CompactPunchoutTopHitCell";
LABEL_21:

  return v9;
}

- (BOOL)fillsBackgroundWithContent
{
  v3 = [(SearchUICardSectionRowModel *)self cardSectionViewClass];

  return [(objc_class *)v3 fillsBackgroundWithContentForRowModel:self];
}

- (int)separatorStyle
{
  v3 = [(SearchUIRowModel *)self cardSection];
  v4 = [v3 separatorStyle];

  v5 = [(SearchUICardSectionRowModel *)self cardSectionViewClass];
  if (v4 || !v5)
  {
    return v4;
  }

  return [(objc_class *)v5 defaultSeparatorStyleForRowModel:self];
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
  v3 = [(SearchUIRowModel *)self identifyingResult];
  v4 = [SearchUIUtilities cardForRenderingResult:v3];

  v5 = [v4 cardSections];
  if ([v5 count] == 1)
  {
    v6 = [v4 backgroundImage];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SearchUICardSectionRowModel *)self backgroundColor];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (SearchUICardSectionRowModel)initWithResult:(id)a3 cardSection:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7
{
  v7 = a5;
  v11.receiver = self;
  v11.super_class = SearchUICardSectionRowModel;
  v8 = [(SearchUIRowModel *)&v11 initWithResult:a3 cardSection:a4 queryId:a6 itemIdentifier:a7];
  v9 = v8;
  if (v8)
  {
    [(SearchUICardSectionRowModel *)v8 setIsInline:v7];
  }

  return v9;
}

- (id)horizontalRowModel
{
  v2 = [(SearchUICardSectionRowModel *)self copy];
  [v2 setIsHorizontalInLayout:1];

  return v2;
}

- (BOOL)anyCardSectionsAreTappable:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 punchoutOptions];
        if ([v10 count])
        {

LABEL_14:
          v14 = 1;
          goto LABEL_15;
        }

        v11 = [v9 command];

        if (v11)
        {
          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v9 cardSections];
          v13 = [(SearchUICardSectionRowModel *)self anyCardSectionsAreTappable:v12];

          if (v13)
          {
            goto LABEL_14;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(SearchUICardSectionRowModel *)self anyCardSectionsHaveNextCards:v4];
LABEL_15:

  return v14;
}

- (BOOL)anyCardSectionsHaveNextCards:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v9 + 1) + 8 * i) nextCard];

        if (v7)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SearchUICardSectionRowModel;
    v4 = [(SearchUIRowModel *)&v6 isFocusable];
  }

  return v4;
}

- (BOOL)isQuerySuggestion
{
  v2 = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = [v3 suggestionType];
    if (v4)
    {
      v5 = v4;

      if (v5 == 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = [v3 thumbnail];
      if (!v6)
      {
        goto LABEL_8;
      }
    }
  }

  v3 = [v2 command];
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
  v3 = [(SearchUIRowModel *)self identifyingResult];
  v4 = [SearchUIUtilities cardForRenderingResult:v3];
  v5 = [(SearchUICardSectionRowModel *)self nextCard];
  if (!v5 && ![(SearchUICardSectionRowModel *)self isQuerySuggestion])
  {
    v8 = [(SearchUICardSectionRowModel *)self punchouts];
    if ([v8 count])
    {
      v6 = 1;
LABEL_30:

      goto LABEL_4;
    }

    v9 = [v3 userActivityRequiredString];
    if ([v9 length])
    {
      v6 = 1;
LABEL_29:

      goto LABEL_30;
    }

    v10 = [v3 applicationBundleIdentifier];
    if (v10)
    {
      v6 = 1;
LABEL_28:

      goto LABEL_29;
    }

    v11 = [v4 intentMessageName];
    if (v11 && ([v4 intentMessageData], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = 1;
    }

    else
    {
      v13 = [(SearchUIRowModel *)self cardSection];
      v14 = [v13 userReportRequest];
      if (v14 && ![(SearchUICardSectionRowModel *)self supportsCustomUserReportRequestAfforance])
      {

        v6 = 1;
        if (!v11)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = v13;
        v19 = [(SearchUIRowModel *)self cardSection];
        v15 = [v19 commands];
        if ([v15 count])
        {
          v6 = 1;
        }

        else
        {
          v18 = [v3 identifier];
          if ([v18 hasPrefix:@"com.apple.other"])
          {
            v6 = 1;
          }

          else
          {
            v17 = [(SearchUIRowModel *)self cardSection];
            v16 = [v17 command];
            v6 = v16 != 0;
          }
        }

        if (!v11)
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
    v4 = [(SearchUIRowModel *)self identifyingResult];
    if ([SearchUIUtilities resultIsSiriAction:v4])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v5 = [(SearchUIRowModel *)self identifyingResult];
      v6 = [v5 sectionBundleIdentifier];
      v3 = [v6 hasSuffix:@"search-through"] ^ 1;
    }
  }

  return v3;
}

- (id)dragTitle
{
  v3 = [(SearchUICardSectionRowModel *)self cardSectionViewClass];
  v4 = [(SearchUIRowModel *)self cardSection];
  v5 = [(objc_class *)v3 dragTitleForCardSection:v4];

  return v5;
}

- (id)dragSubtitle
{
  v3 = [(SearchUICardSectionRowModel *)self dragURL];
  v4 = [v3 host];

  if (!v4)
  {
    v5 = [(SearchUICardSectionRowModel *)self cardSectionViewClass];
    v6 = [(SearchUIRowModel *)self cardSection];
    v4 = [(objc_class *)v5 dragSubtitleForCardSection:v6];
  }

  return v4;
}

- (id)dragText
{
  v3 = objc_opt_new();
  v4 = [(SearchUICardSectionRowModel *)self dragTitle];
  v5 = [(SearchUICardSectionRowModel *)self dragSubtitle];
  if ([v4 length])
  {
    [v3 appendString:v4];
  }

  if ([v3 length])
  {
    [v3 appendString:@"\n"];
  }

  if ([v5 length])
  {
    [v3 appendString:v5];
  }

  return v3;
}

- (id)dragURL
{
  v3 = [(SearchUICardSectionRowModel *)self punchouts];
  v4 = [v3 firstObject];
  v5 = [v4 preferredOpenableURL];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(SearchUIRowModel *)self identifyingResult];
    v9 = [v8 punchout];
    v7 = [v9 preferredOpenableURL];
  }

  return v7;
}

- (BOOL)hasLeadingImage
{
  v3 = [(SearchUICardSectionRowModel *)self cardSectionViewClass];
  v4 = [(SearchUIRowModel *)self cardSection];
  LOBYTE(v3) = [(objc_class *)v3 hasLeadingImageForCardSection:v4];

  return v3;
}

- (BOOL)prefersNoSeparatorAbove
{
  v3 = [(SearchUICardSectionRowModel *)self cardSectionViewClass];

  return [(objc_class *)v3 prefersNoSeparatorAboveRowModel:self];
}

- (BOOL)supportsCustomUserReportRequestAfforance
{
  v2 = [(SearchUICardSectionRowModel *)self cardSectionViewClass];

  return [(objc_class *)v2 supportsCustomUserReportRequestAfforance];
}

- (id)backgroundColor
{
  if ([(SearchUIRowModel *)self allowBackgroundColor])
  {
    v3 = [(SearchUIRowModel *)self identifyingResult];
    v4 = [SearchUIUtilities cardForRenderingResult:v3];

    v5 = [v4 cardSections];
    if ([v5 count] == 1)
    {
      v6 = [v4 backgroundColor];
    }

    else
    {
      v6 = 0;
    }

    v12.receiver = self;
    v12.super_class = SearchUICardSectionRowModel;
    v8 = [(SearchUIRowModel *)&v12 backgroundColor];
    v9 = v8;
    if (v8 || (v9 = v6) != 0)
    {
      v7 = v9;
    }

    else
    {
      v11 = [(SearchUIRowModel *)self cardSection];
      v7 = [v11 backgroundColor];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = SearchUICardSectionRowModel;
  v4 = [(SearchUICardSectionRowModel *)&v10 description];
  v5 = [v3 stringWithString:v4];

  v6 = [(SearchUIRowModel *)self cardSection];

  if (v6)
  {
    v7 = [(SearchUIRowModel *)self cardSection];
    v8 = [v7 description];
    [v5 appendString:v8];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SearchUICardSectionRowModel;
  v4 = [(SearchUIRowModel *)&v6 copyWithZone:a3];
  [v4 setIsInline:{-[SearchUICardSectionRowModel isInline](self, "isInline")}];
  [v4 setIsHorizontalInLayout:{-[SearchUICardSectionRowModel isHorizontalInLayout](self, "isHorizontalInLayout")}];
  return v4;
}

- (id)contactIdentifiers
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SearchUIRowModel *)self cardSection];
    v6 = [v5 person];

    v7 = [v6 contactIdentifier];
    if (v7)
    {
      v8 = [v6 contactIdentifier];
      v11[0] = v8;
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