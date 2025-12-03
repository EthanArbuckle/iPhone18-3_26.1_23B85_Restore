@interface SearchUIDetailedRowModel
+ (BOOL)urlIsDraggable:(id)draggable;
+ (id)richTextWithFormattedText:(id)text;
- (BOOL)isContact;
- (BOOL)isDraggable;
- (BOOL)isTappable;
- (BOOL)useCompactVersionOfUI;
- (Class)cardSectionViewClass;
- (NSArray)details;
- (SearchUIDetailedRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUIDetailedRowModel)initWithResult:(id)result suggestion:(id)suggestion queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (id)backgroundColor;
- (id)contactIdentifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionText;
- (id)dragAppBundleID;
- (id)dragSubtitle;
- (id)dragText;
- (id)dragTitle;
- (id)dragURL;
- (id)populatedMapsCardSectionIfApplicable;
- (id)punchouts;
- (id)requestAppClipObjects;
- (id)richTextFromText:(id)text;
- (int)separatorStyle;
- (void)fillOutPropertiesForCardSection:(id)section;
@end

@implementation SearchUIDetailedRowModel

- (id)populatedMapsCardSectionIfApplicable
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  v4 = [SearchUIUtilities cardSectionsForRenderingResult:identifyingResult];
  cardSection = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    cardSection2 = [(SearchUIRowModel *)self cardSection];
    mapsData = [cardSection2 mapsData];
    pinText = [cardSection2 pinText];
    [(SearchUIDetailedRowModel *)self setPinText:pinText];

    if (mapsData)
    {
LABEL_3:
      v10 = objc_alloc(MEMORY[0x1E696F390]);
      if ([(SearchUIDetailedRowModel *)self useCompactVersionOfUI])
      {
        v11 = 3;
      }

      else
      {
        v11 = 4;
      }

      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v14 = [v10 initWithMapsData:mapsData iconSize:v11 bundleID:bundleIdentifier];
      [(SearchUIDetailedRowModel *)self setMapsResult:v14];

      mapsResult = [(SearchUIDetailedRowModel *)self mapsResult];
      inlineCard = [mapsResult inlineCard];
      cardSections = [inlineCard cardSections];
      firstObject = [cardSections firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = firstObject;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      goto LABEL_13;
    }
  }

  else
  {
    firstObject = [identifyingResult mapsData];
    if (!firstObject || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      mapsData = 0;
      v20 = 0;
LABEL_13:

      goto LABEL_17;
    }

    if (v4)
    {
      mapsData = 0;
    }

    else
    {
      mapsData = [identifyingResult mapsData];
      if (mapsData)
      {
        goto LABEL_3;
      }
    }
  }

  v20 = 0;
LABEL_17:
  cardSection3 = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    cardSection4 = [(SearchUIRowModel *)self cardSection];
    [cardSection4 setInternalDetailedRowCardSection:v20];
  }

  firstObject2 = [v4 firstObject];
  backgroundColor = [firstObject2 backgroundColor];
  [v20 setBackgroundColor:backgroundColor];

  v26 = v20;
  return v20;
}

- (id)punchouts
{
  v15[1] = *MEMORY[0x1E69E9840];
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  sectionBundleIdentifier = [identifyingResult sectionBundleIdentifier];
  v5 = [SearchUIUtilities bundleIdentifierForApp:6];
  v6 = [sectionBundleIdentifier isEqualToString:v5];

  if (v6)
  {
    punchouts = 0;
  }

  else
  {
    cardSection = [(SearchUIRowModel *)self cardSection];

    if (cardSection)
    {
      v14.receiver = self;
      v14.super_class = SearchUIDetailedRowModel;
      punchouts = [(SearchUICardSectionRowModel *)&v14 punchouts];
    }

    else
    {
      identifyingResult2 = [(SearchUIRowModel *)self identifyingResult];
      punchout = [identifyingResult2 punchout];
      if (punchout)
      {
        identifyingResult3 = [(SearchUIRowModel *)self identifyingResult];
        punchout2 = [identifyingResult3 punchout];
        v15[0] = punchout2;
        punchouts = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      }

      else
      {
        punchouts = 0;
      }
    }
  }

  return punchouts;
}

- (BOOL)useCompactVersionOfUI
{
  cardSection = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shouldUseCompactDisplay = [cardSection shouldUseCompactDisplay];
  }

  else
  {
    shouldUseCompactDisplay = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = !+[SearchUIUtilities isSpotlightPlusEnabled];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  if ([identifyingResult usesCompactDisplay])
  {
    identifyingResult2 = [(SearchUIRowModel *)self identifyingResult];
    compactCard = [identifyingResult2 compactCard];
    cardSections = [compactCard cardSections];
    v10 = [cardSections count] == 0;
  }

  else
  {
    v10 = 0;
  }

  return (v5 | shouldUseCompactDisplay | v10) & 1;
}

- (id)contactIdentifiers
{
  v14[1] = *MEMORY[0x1E69E9840];
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  contactIdentifier = [identifyingResult contactIdentifier];

  if (contactIdentifier)
  {
    identifyingResult2 = [(SearchUIRowModel *)self identifyingResult];
    contactIdentifier2 = [identifyingResult2 contactIdentifier];
    v14[0] = contactIdentifier2;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
LABEL_7:
    v12 = v7;

    goto LABEL_8;
  }

  leadingImage = [(SearchUIDetailedRowModel *)self leadingImage];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    identifyingResult2 = [(SearchUIDetailedRowModel *)self leadingImage];
    contactIdentifiers = [identifyingResult2 contactIdentifiers];
    contactIdentifier2 = contactIdentifiers;
    v11 = MEMORY[0x1E695E0F0];
    if (contactIdentifiers)
    {
      v11 = contactIdentifiers;
    }

    v7 = v11;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)requestAppClipObjects
{
  v16 = *MEMORY[0x1E69E9840];
  buttonItems = [(SearchUIDetailedRowModel *)self buttonItems];

  if (buttonItems)
  {
    buttonItems = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    buttonItems2 = [(SearchUIDetailedRowModel *)self buttonItems];
    v5 = [buttonItems2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(buttonItems2);
          }

          _searchUI_requestAppClipCommand = [*(*(&v11 + 1) + 8 * i) _searchUI_requestAppClipCommand];
          if (_searchUI_requestAppClipCommand)
          {
            [buttonItems addObject:_searchUI_requestAppClipCommand];
          }
        }

        v6 = [buttonItems2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  return buttonItems;
}

- (Class)cardSectionViewClass
{
  v7.receiver = self;
  v7.super_class = SearchUIDetailedRowModel;
  cardSectionViewClass = [(SearchUICardSectionRowModel *)&v7 cardSectionViewClass];
  if (cardSectionViewClass)
  {
    v4 = cardSectionViewClass;
  }

  else
  {
    v5 = objc_opt_new();
    v4 = [SearchUICardSectionCreator viewClassForCardSection:v5 horizontal:[(SearchUICardSectionRowModel *)self isHorizontalInLayout]];
  }

  return v4;
}

- (id)backgroundColor
{
  if ([(SearchUIDetailedRowModel *)self useCompactVersionOfUI])
  {
    backgroundColor = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SearchUIDetailedRowModel;
    backgroundColor = [(SearchUICardSectionRowModel *)&v5 backgroundColor];
  }

  return backgroundColor;
}

- (int)separatorStyle
{
  v7.receiver = self;
  v7.super_class = SearchUIDetailedRowModel;
  separatorStyle = [(SearchUICardSectionRowModel *)&v7 separatorStyle];
  if ([MEMORY[0x1E69D9240] isMacOS] && -[SearchUIDetailedRowModel useCompactVersionOfUI](self, "useCompactVersionOfUI"))
  {
    return 1;
  }

  if (-[SearchUIDetailedRowModel useCompactVersionOfUI](self, "useCompactVersionOfUI") && !separatorStyle && ![MEMORY[0x1E69D91A8] isSuperLargeAccessibilitySize])
  {
    return 3;
  }

  cardSection = [(SearchUIRowModel *)self cardSection];
  if (cardSection)
  {
    v4 = separatorStyle;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (NSArray)details
{
  v30[1] = *MEMORY[0x1E69E9840];
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  resultBundleId = [identifyingResult resultBundleId];
  if (([resultBundleId isEqualToString:*MEMORY[0x1E69D3EB0]] & 1) == 0)
  {

    goto LABEL_11;
  }

  firstObject = [(NSArray *)self->_details firstObject];

  if (!firstObject)
  {
LABEL_11:
    v6 = self->_details;
    goto LABEL_15;
  }

  v6 = [(NSArray *)self->_details mutableCopy];
  firstObject2 = [(NSArray *)self->_details firstObject];
  v8 = [firstObject2 copy];

  v9 = +[SearchUICalendarStore colorForDefaultCalendarForNewEvents];

  if (!v9)
  {
    v26 = MEMORY[0x1E69CA0F0];
    text = [v8 text];
    v20 = [v26 textWithString:text];
    v28 = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [v8 setFormattedTextPieces:v22];
    goto LABEL_13;
  }

  formattedTextPieces = [v8 formattedTextPieces];
  if (![formattedTextPieces count])
  {
    text2 = [v8 text];
    v12 = [text2 length];

    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = MEMORY[0x1E696AEC0];
    text3 = [v8 text];
    formattedTextPieces = [v13 stringWithFormat:@" %@", text3];

    [v8 setText:0];
    v15 = [MEMORY[0x1E69CA0F0] textWithString:formattedTextPieces];
    v30[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v8 setFormattedTextPieces:v16];
  }

LABEL_8:
  formattedTextPieces2 = [v8 formattedTextPieces];
  v18 = [formattedTextPieces2 count];

  if (v18 == 1)
  {
    text = objc_opt_new();
    [text setSymbolName:@"circle.fill"];
    v20 = [(SearchUIImage *)SearchUISymbolImage imageWithSFImage:text];
    v21 = +[SearchUICalendarStore colorForDefaultCalendarForNewEvents];
    [v20 setCustomForegroundColor:v21];

    [v20 setSymbolScale:1];
    v22 = objc_opt_new();
    [v22 setGlyph:v20];
    v29 = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    formattedTextPieces3 = [v8 formattedTextPieces];
    v25 = [v23 arrayByAddingObjectsFromArray:formattedTextPieces3];
    [v8 setFormattedTextPieces:v25];

LABEL_13:
  }

  [(NSArray *)v6 replaceObjectAtIndex:0 withObject:v8];

LABEL_15:

  return v6;
}

- (SearchUIDetailedRowModel)initWithResult:(id)result suggestion:(id)suggestion queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  v26[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v24.receiver = self;
  v24.super_class = SearchUIDetailedRowModel;
  v11 = [(SearchUICardSectionRowModel *)&v24 initWithResult:result cardSection:suggestionCopy isInline:1 queryId:id itemIdentifier:identifier];
  if (v11)
  {
    suggestionText = [suggestionCopy suggestionText];
    [(SearchUIDetailedRowModel *)v11 setTitle:suggestionText];

    detailText = [suggestionCopy detailText];
    if (detailText)
    {
      detailText2 = [suggestionCopy detailText];
      v26[0] = detailText2;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [(SearchUIDetailedRowModel *)v11 setDetails:v15];
    }

    else
    {
      [(SearchUIDetailedRowModel *)v11 setDetails:0];
    }

    populatedMapsCardSectionIfApplicable = [(SearchUIDetailedRowModel *)v11 populatedMapsCardSectionIfApplicable];
    thumbnail = [populatedMapsCardSectionIfApplicable thumbnail];
    if (thumbnail)
    {
      [(SearchUIDetailedRowModel *)v11 setLeadingImage:thumbnail];
    }

    else
    {
      thumbnail2 = [suggestionCopy thumbnail];
      [(SearchUIDetailedRowModel *)v11 setLeadingImage:thumbnail2];
    }

    [(SearchUIDetailedRowModel *)v11 setTruncateTitleMiddle:suggestionCopy != 0];
    if ([suggestionCopy suggestionType] == 4)
    {
      if (+[SearchUIUtilities isSpotlightPlusEnabled])
      {
        v19 = MEMORY[0x1E69CA3A0];
        v20 = [SearchUIUtilities localizedStringForKey:@"SEARCH_THE_WEB"];
        v21 = [v19 textWithString:v20];
        v25 = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        [(SearchUIDetailedRowModel *)v11 setDetails:v22];
      }

      else
      {
        v20 = objc_opt_new();
        [v20 setSymbolName:@"arrow.up.forward"];
        [v20 setIsTemplate:1];
        [(SearchUIDetailedRowModel *)v11 setTrailingThumbnail:v20];
      }
    }
  }

  return v11;
}

- (SearchUIDetailedRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  resultCopy = result;
  sectionCopy = section;
  v83.receiver = self;
  v83.super_class = SearchUIDetailedRowModel;
  v13 = [(SearchUICardSectionRowModel *)&v83 initWithResult:resultCopy cardSection:sectionCopy isInline:1 queryId:id itemIdentifier:identifier];
  v14 = v13;
  if (!v13)
  {
    v22 = sectionCopy;
    goto LABEL_44;
  }

  applicationBundleIdentifier = [(SearchUIRowModel *)v13 applicationBundleIdentifier];
  populatedMapsCardSectionIfApplicable = [(SearchUIDetailedRowModel *)v14 populatedMapsCardSectionIfApplicable];
  cardSection = [(SearchUIRowModel *)v14 cardSection];
  objc_opt_class();
  v18 = sectionCopy;
  if (objc_opt_isKindOfClass())
  {
    cardSection2 = [(SearchUIRowModel *)v14 cardSection];
    mapsData = [cardSection2 mapsData];
    if ([mapsData length])
    {
      v18 = sectionCopy;
    }

    else
    {
      v18 = 0;
    }
  }

  if (populatedMapsCardSectionIfApplicable)
  {
    v21 = populatedMapsCardSectionIfApplicable;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21;

  fallbackImage = [SearchUIImageView thumbnailForRowModel:v14];
  v24 = [SearchUIUtilities cardSectionsForRenderingResult:resultCopy];
  v82 = v24;
  if (!applicationBundleIdentifier)
  {
    goto LABEL_15;
  }

  v25 = v24;
  contactIdentifier = [resultCopy contactIdentifier];
  if ([contactIdentifier length])
  {
LABEL_29:

    if (!fallbackImage)
    {
      goto LABEL_30;
    }

LABEL_15:
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_31:
    [(SearchUIDetailedRowModel *)v14 setLeadingImage:fallbackImage];
    action = [resultCopy action];
    [(SearchUIDetailedRowModel *)v14 setAction:action];

    -[SearchUIDetailedRowModel setPreventThumbnailImageScaling:](v14, "setPreventThumbnailImageScaling:", [resultCopy preventThumbnailImageScaling]);
    title = [resultCopy title];
    v40 = [(SearchUIDetailedRowModel *)v14 richTextFromText:title];
    [(SearchUIDetailedRowModel *)v14 setTitle:v40];

    title2 = [resultCopy title];
    maxLines = [title2 maxLines];
    [(SearchUIDetailedRowModel *)v14 title];
    v43 = fallbackImage;
    v45 = v44 = populatedMapsCardSectionIfApplicable;
    [v45 setMaxLines:maxLines];

    v46 = MEMORY[0x1E69CA0F0];
    secondaryTitle = [resultCopy secondaryTitle];
    v48 = [v46 textWithString:secondaryTitle];
    [(SearchUIDetailedRowModel *)v14 setSecondaryTitle:v48];

    -[SearchUIDetailedRowModel setSecondaryTitleIsDetached:](v14, "setSecondaryTitleIsDetached:", [resultCopy isSecondaryTitleDetached]);
    secondaryTitleImage = [resultCopy secondaryTitleImage];
    [(SearchUIDetailedRowModel *)v14 setSecondaryTitleImage:secondaryTitleImage];

    descriptions = [resultCopy descriptions];
    [(SearchUIDetailedRowModel *)v14 setDetails:descriptions];

    v51 = MEMORY[0x1E69CA3A0];
    footnote = [resultCopy footnote];
    v53 = [v51 textWithString:footnote];
    [(SearchUIDetailedRowModel *)v14 setFootnote:v53];

    v54 = MEMORY[0x1E69CA3A0];
    auxiliaryTopText = [resultCopy auxiliaryTopText];
    v56 = [v54 textWithString:auxiliaryTopText];
    [(SearchUIDetailedRowModel *)v14 setTrailingTopText:v56];

    v57 = MEMORY[0x1E69CA3A0];
    auxiliaryMiddleText = [resultCopy auxiliaryMiddleText];
    v59 = [v57 textWithString:auxiliaryMiddleText];
    [(SearchUIDetailedRowModel *)v14 setTrailingMiddleText:v59];

    v60 = MEMORY[0x1E69CA3A0];
    populatedMapsCardSectionIfApplicable = v44;
    fallbackImage = v43;
    auxiliaryBottomText = [resultCopy auxiliaryBottomText];
    v62 = [v60 textWithString:auxiliaryBottomText];
    [(SearchUIDetailedRowModel *)v14 setTrailingBottomText:v62];

    goto LABEL_32;
  }

  v78 = applicationBundleIdentifier;
  firstObject = [v25 firstObject];
  objc_opt_class();
  v80 = fallbackImage;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_22;
  }

  firstObject2 = [v25 firstObject];
  leadingCardSections = [firstObject2 leadingCardSections];
  [leadingCardSections firstObject];
  v30 = v22;
  v32 = v31 = populatedMapsCardSectionIfApplicable;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  populatedMapsCardSectionIfApplicable = v31;
  v22 = v30;
  fallbackImage = v80;

  applicationBundleIdentifier = v78;
  if ((isKindOfClass & 1) == 0)
  {
LABEL_22:
    v33 = populatedMapsCardSectionIfApplicable;
    if ([(SearchUIDetailedRowModel *)v14 useCompactVersionOfUI])
    {
      +[SearchUISuggestionImageUtilities maximumSize];
      v34 = [SearchUIAppIconImage bestVariantForSize:?];
    }

    else
    {
      v34 = 4;
    }

    contactIdentifier = [(SearchUIRowModel *)v14 identifyingResult];
    applicationBundleIdentifier2 = [contactIdentifier applicationBundleIdentifier];
    if (applicationBundleIdentifier2)
    {
      identifyingResult = [(SearchUIRowModel *)v14 identifyingResult];
      v37 = [SearchUIAppIconImage appIconForResult:identifyingResult variant:v34];
      [(SearchUIDetailedRowModel *)v14 setFallbackImage:v37];
    }

    else
    {
      identifyingResult = [SearchUIAppIconImage appIconForBundleIdentifier:v78 variant:v34];
      [(SearchUIDetailedRowModel *)v14 setFallbackImage:identifyingResult];
    }

    populatedMapsCardSectionIfApplicable = v33;
    applicationBundleIdentifier = v78;
    fallbackImage = v80;
    goto LABEL_29;
  }

  if (v80)
  {
    goto LABEL_15;
  }

LABEL_30:
  fallbackImage = [(SearchUIDetailedRowModel *)v14 fallbackImage];
  if (!v22)
  {
    goto LABEL_31;
  }

LABEL_16:
  if (fallbackImage && !populatedMapsCardSectionIfApplicable)
  {
    [v18 setThumbnail:fallbackImage];
  }

  [(SearchUIDetailedRowModel *)v14 fillOutPropertiesForCardSection:v22];
LABEL_32:
  nearbyBusinessesString = [resultCopy nearbyBusinessesString];
  [(SearchUIDetailedRowModel *)v14 setNearbyBusinessesString:nearbyBusinessesString];

  -[SearchUIDetailedRowModel setIsLocalApplicationResult:](v14, "setIsLocalApplicationResult:", [resultCopy isLocalApplicationResult]);
  leadingImage = [(SearchUIDetailedRowModel *)v14 leadingImage];
  if (!leadingImage)
  {
    goto LABEL_40;
  }

  leadingImage3 = leadingImage;
  nearbyBusinessesString2 = [(SearchUIDetailedRowModel *)v14 nearbyBusinessesString];
  if (nearbyBusinessesString2)
  {
    v67 = nearbyBusinessesString2;
    v79 = v22;
    v81 = fallbackImage;
    v68 = populatedMapsCardSectionIfApplicable;
    v69 = applicationBundleIdentifier;
    identifyingResult2 = [(SearchUIRowModel *)v14 identifyingResult];
    identifier = [identifyingResult2 identifier];
    if ([identifier hasPrefix:*MEMORY[0x1E69DE790]])
    {
      leadingImage2 = [(SearchUIDetailedRowModel *)v14 leadingImage];
      objc_opt_class();
      v73 = objc_opt_isKindOfClass();

      applicationBundleIdentifier = v69;
      populatedMapsCardSectionIfApplicable = v68;
      v22 = v79;
      fallbackImage = v81;
      if (v73)
      {
        goto LABEL_40;
      }

      v74 = [SearchUIAppClipImage alloc];
      leadingImage3 = [(SearchUIDetailedRowModel *)v14 leadingImage];
      v67 = [(SearchUIAppClipImage *)v74 initWithSFImage:leadingImage3];
      [(SearchUIDetailedRowModel *)v14 setLeadingImage:v67];
    }

    else
    {

      applicationBundleIdentifier = v69;
      populatedMapsCardSectionIfApplicable = v68;
      v22 = v79;
      fallbackImage = v81;
    }
  }

LABEL_40:
  if ([(SearchUIDetailedRowModel *)v14 useCompactVersionOfUI])
  {
    title3 = [(SearchUIDetailedRowModel *)v14 title];
    [title3 setMaxLines:1];

    [(SearchUIDetailedRowModel *)v14 setTrailingTopText:0];
    [(SearchUIDetailedRowModel *)v14 setSecondaryTitleImage:0];
    [(SearchUIDetailedRowModel *)v14 setFootnoteButtonText:0];
    if ([MEMORY[0x1E69D9240] isMacOS])
    {
      [(SearchUIDetailedRowModel *)v14 setTrailingMiddleText:0];
      [(SearchUIDetailedRowModel *)v14 setTrailingBottomText:0];
      [(SearchUIDetailedRowModel *)v14 setFootnote:0];
    }
  }

LABEL_44:
  return v14;
}

- (id)richTextFromText:(id)text
{
  textCopy = text;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = textCopy;
  }

  else
  {
    v5 = MEMORY[0x1E69CA3A0];
    text = [textCopy text];
    v4 = [v5 textWithString:text];

    [v4 setMaxLines:{objc_msgSend(textCopy, "maxLines")}];
  }

  return v4;
}

- (void)fillOutPropertiesForCardSection:(id)section
{
  v82[1] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  thumbnail = [sectionCopy thumbnail];
  [(SearchUIDetailedRowModel *)self setLeadingImage:thumbnail];

  button = [sectionCopy button];
  [(SearchUIDetailedRowModel *)self setLeadingButton:button];

  -[SearchUIDetailedRowModel setPreventThumbnailImageScaling:](self, "setPreventThumbnailImageScaling:", [sectionCopy preventThumbnailImageScaling]);
  topText = [sectionCopy topText];
  [(SearchUIDetailedRowModel *)self setTopText:topText];

  title = [sectionCopy title];
  [(SearchUIDetailedRowModel *)self setTitle:title];

  secondaryTitle = [sectionCopy secondaryTitle];
  [(SearchUIDetailedRowModel *)self setSecondaryTitle:secondaryTitle];

  -[SearchUIDetailedRowModel setSecondaryTitleIsDetached:](self, "setSecondaryTitleIsDetached:", [sectionCopy isSecondaryTitleDetached]);
  secondaryTitleImage = [sectionCopy secondaryTitleImage];
  [(SearchUIDetailedRowModel *)self setSecondaryTitleImage:secondaryTitleImage];

  descriptions = [sectionCopy descriptions];
  [(SearchUIDetailedRowModel *)self setDetails:descriptions];

  footnote = [sectionCopy footnote];
  [(SearchUIDetailedRowModel *)self setFootnote:footnote];

  action = [sectionCopy action];
  [(SearchUIDetailedRowModel *)self setAction:action];
  richTrailingTopText = [sectionCopy richTrailingTopText];
  if (richTrailingTopText)
  {
    [(SearchUIDetailedRowModel *)self setTrailingTopText:richTrailingTopText];
  }

  else
  {
    v15 = objc_opt_class();
    trailingTopText = [sectionCopy trailingTopText];
    v17 = [v15 richTextWithFormattedText:trailingTopText];
    [(SearchUIDetailedRowModel *)self setTrailingTopText:v17];
  }

  richTrailingMiddleText = [sectionCopy richTrailingMiddleText];
  if (richTrailingMiddleText)
  {
    [(SearchUIDetailedRowModel *)self setTrailingMiddleText:richTrailingMiddleText];
  }

  else
  {
    v19 = objc_opt_class();
    trailingMiddleText = [sectionCopy trailingMiddleText];
    v21 = [v19 richTextWithFormattedText:trailingMiddleText];
    [(SearchUIDetailedRowModel *)self setTrailingMiddleText:v21];
  }

  richTrailingBottomText = [sectionCopy richTrailingBottomText];
  if (richTrailingBottomText)
  {
    [(SearchUIDetailedRowModel *)self setTrailingBottomText:richTrailingBottomText];
  }

  else
  {
    v23 = objc_opt_class();
    trailingBottomText = [sectionCopy trailingBottomText];
    v25 = [v23 richTextWithFormattedText:trailingBottomText];
    [(SearchUIDetailedRowModel *)self setTrailingBottomText:v25];
  }

  -[SearchUIDetailedRowModel setButtonItemsAreTrailing:](self, "setButtonItemsAreTrailing:", [sectionCopy buttonItemsAreTrailing]);
  trailingThumbnail = [sectionCopy trailingThumbnail];
  [(SearchUIDetailedRowModel *)self setTrailingThumbnail:trailingThumbnail];

  buttonItems = [sectionCopy buttonItems];
  v28 = buttonItems;
  if (!buttonItems)
  {
    buttonItems = MEMORY[0x1E695E0F0];
  }

  v29 = [buttonItems mutableCopy];

  if (![v29 count])
  {
    contactIdentifier = [action contactIdentifier];
    if (contactIdentifier || ([action phoneNumber], (contactIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      email = [action email];

      if (!email)
      {
        goto LABEL_27;
      }
    }

    v31 = objc_opt_new();
    contactIdentifier2 = [action contactIdentifier];
    [v31 setContactIdentifier:contactIdentifier2];

    phoneNumber = [action phoneNumber];
    if (phoneNumber)
    {
      phoneNumber2 = [action phoneNumber];
      v82[0] = phoneNumber2;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:1];
      [v31 setPhoneNumbers:v35];
    }

    else
    {
      [v31 setPhoneNumbers:0];
    }

    email2 = [action email];
    if (email2)
    {
      email3 = [action email];
      v81 = email3;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
      [v31 setEmailAddresses:v38];
    }

    else
    {
      [v31 setEmailAddresses:0];
    }

    v39 = objc_opt_new();
    phoneNumber3 = [action phoneNumber];
    v41 = [phoneNumber3 length];

    if (v41)
    {
      [v39 addObject:&unk_1F55DD460];
    }

    email4 = [action email];
    v43 = [email4 length];

    if (v43)
    {
      [v39 addObject:&unk_1F55DD478];
    }

    v44 = objc_opt_new();
    [v44 setPerson:v31];
    [v44 setActionTypesToShow:v39];
    [v29 addObject:v44];

LABEL_27:
    mapsData = [action mapsData];
    if (mapsData || ([action location], (mapsData = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      customDirectionsPunchout = [action customDirectionsPunchout];

      if (!customDirectionsPunchout)
      {
LABEL_41:
        messageURL = [action messageURL];

        if (messageURL)
        {
          v57 = objc_opt_new();
          v58 = MEMORY[0x1E69CA320];
          messageURL2 = [action messageURL];
          v60 = [v58 punchoutWithURL:messageURL2];
          [v57 setPunchout:v60];

          v61 = objc_opt_new();
          [v61 setCommand:v57];
          v62 = [[SearchUISymbolImage alloc] initWithSymbolName:@"message"];
          [v61 setImage:v62];

          [v29 addObject:v61];
        }

        if (![(SearchUIDetailedRowModel *)self useCompactVersionOfUI])
        {
          applicationBundleIdentifier = [action applicationBundleIdentifier];
          if (applicationBundleIdentifier)
          {
            v64 = applicationBundleIdentifier;
            isOverlay = [action isOverlay];

            if ((isOverlay & 1) == 0)
            {
              storeIdentifiers = [action storeIdentifiers];
              firstObject = [storeIdentifiers firstObject];
              v68 = firstObject;
              if (firstObject)
              {
                storeIdentifier = firstObject;
              }

              else
              {
                identifyingResult = [(SearchUIRowModel *)self identifyingResult];
                storeIdentifier = [identifyingResult storeIdentifier];
              }

              v71 = objc_opt_new();
              [v71 setIdentifier:storeIdentifier];
              [v29 addObject:v71];
            }
          }
        }

        if (![v29 count])
        {
          label = [action label];
          v73 = [label length];

          if (v73)
          {
            v74 = objc_opt_new();
            label2 = [action label];
            [v74 setTitle:label2];

            [v29 addObject:v74];
          }
        }

        localMediaIdentifier = [action localMediaIdentifier];

        if (localMediaIdentifier)
        {
          v77 = objc_opt_new();
          localMediaIdentifier2 = [action localMediaIdentifier];
          [v77 setMediaIdentifier:localMediaIdentifier2];

          v79 = objc_opt_new();
          [v79 setMediaMetadata:v77];
          [v29 addObject:v79];
        }

        [(SearchUIDetailedRowModel *)self setButtonItemsAreTrailing:1];
        goto LABEL_56;
      }
    }

    customDirectionsPunchout2 = [action customDirectionsPunchout];

    if (customDirectionsPunchout2)
    {
      v47 = objc_opt_new();
      customDirectionsPunchout3 = [action customDirectionsPunchout];
      [v47 setPunchout:customDirectionsPunchout3];
    }

    else
    {
      v47 = objc_opt_new();
      mapsData2 = [action mapsData];
      [v47 setMapsData:mapsData2];

      label3 = [action label];
      if (label3)
      {
        [v47 setName:label3];
      }

      else
      {
        title2 = [(SearchUIDetailedRowModel *)self title];
        text = [title2 text];
        [v47 setName:text];
      }

      [v47 setDirectionsMode:{objc_msgSend(action, "directionsMode")}];
      [v47 setShouldSearchDirectionsAlongCurrentRoute:{objc_msgSend(action, "shouldSearchDirectionsAlongCurrentRoute")}];
      customDirectionsPunchout3 = [action location];
      [v47 setLocation:customDirectionsPunchout3];
    }

    v55 = objc_opt_new();
    [v55 setCommand:v47];
    [v29 addObject:v55];

    goto LABEL_41;
  }

LABEL_56:
  v80 = [v29 copy];
  [(SearchUIDetailedRowModel *)self setButtonItems:v80];
}

+ (id)richTextWithFormattedText:(id)text
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (text)
  {
    textCopy = text;
    v4 = objc_opt_new();
    v7[0] = textCopy;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

    [v4 setFormattedTextPieces:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isContact
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  sectionBundleIdentifier = [identifyingResult sectionBundleIdentifier];
  v4 = [SearchUIUtilities bundleIdentifierForApp:5];
  v5 = [sectionBundleIdentifier isEqualToString:v4];

  return v5;
}

- (id)dragAppBundleID
{
  if ([(SearchUIDetailedRowModel *)self isLocalApplicationResult])
  {
    applicationBundleIdentifier = [(SearchUIRowModel *)self applicationBundleIdentifier];
  }

  else
  {
    applicationBundleIdentifier = 0;
  }

  return applicationBundleIdentifier;
}

- (id)dragTitle
{
  title = [(SearchUIDetailedRowModel *)self title];
  v3 = [SearchUIUtilities stringForSFRichText:title emphasizedOnly:1];

  return v3;
}

- (id)dragSubtitle
{
  if ([(SearchUIDetailedRowModel *)self isContact]|| [(SearchUICardSectionRowModel *)self isQuerySuggestion])
  {
    host = 0;
  }

  else
  {
    dragURL = [(SearchUIDetailedRowModel *)self dragURL];
    host = [dragURL host];

    if (!host)
    {
      host = [(SearchUIDetailedRowModel *)self descriptionText];
    }
  }

  return host;
}

- (id)descriptionText
{
  details = [(SearchUIDetailedRowModel *)self details];
  v3 = [SearchUIUtilities stringForSFRichTextArray:details];

  return v3;
}

- (id)dragText
{
  v3 = objc_opt_new();
  dragTitle = [(SearchUIDetailedRowModel *)self dragTitle];
  if ([dragTitle length])
  {
    [v3 appendString:dragTitle];
  }

  if ([v3 length])
  {
    [v3 appendString:@"\n"];
  }

  descriptionText = [(SearchUIDetailedRowModel *)self descriptionText];
  if ([descriptionText length])
  {
    descriptionText2 = [(SearchUIDetailedRowModel *)self descriptionText];
    [v3 appendString:descriptionText2];
  }

  return v3;
}

+ (BOOL)urlIsDraggable:(id)draggable
{
  draggableCopy = draggable;
  scheme = [draggableCopy scheme];
  if ([scheme isEqualToString:@"http"])
  {
    v5 = 1;
  }

  else
  {
    scheme2 = [draggableCopy scheme];
    if ([scheme2 isEqualToString:@"https"])
    {
      v5 = 1;
    }

    else
    {
      scheme3 = [draggableCopy scheme];
      v5 = [scheme3 isEqualToString:@"file"];
    }
  }

  return v5;
}

- (id)dragURL
{
  v25 = *MEMORY[0x1E69E9840];
  dragAppBundleID = [(SearchUIDetailedRowModel *)self dragAppBundleID];

  if (dragAppBundleID)
  {
    v4 = 0;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    punchouts = [(SearchUIDetailedRowModel *)self punchouts];
    firstObject = [punchouts firstObject];
    urls = [firstObject urls];

    v8 = [urls countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(urls);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if ([SearchUIDetailedRowModel urlIsDraggable:v12])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [urls countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v4 = v12;

      if (v4)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_11:
    }

    identifyingResult = [(SearchUIRowModel *)self identifyingResult];
    v14 = [identifyingResult url];
    if ([SearchUIDetailedRowModel urlIsDraggable:v14])
    {
      identifyingResult2 = [(SearchUIRowModel *)self identifyingResult];
      v4 = [identifyingResult2 url];
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_17:
  dragTitle = [(SearchUIDetailedRowModel *)self dragTitle];
  v17 = [dragTitle length];

  if (v17)
  {
    dragTitle2 = [(SearchUIDetailedRowModel *)self dragTitle];
    [v4 _setTitle:dragTitle2];
  }

  return v4;
}

- (BOOL)isTappable
{
  cardSection = [(SearchUIRowModel *)self cardSection];
  if (cardSection)
  {
    v6.receiver = self;
    v6.super_class = SearchUIDetailedRowModel;
    isTappable = [(SearchUICardSectionRowModel *)&v6 isTappable];
  }

  else
  {
    isTappable = 1;
  }

  return isTappable;
}

- (BOOL)isDraggable
{
  cardSection = [(SearchUIRowModel *)self cardSection];
  if (cardSection && (v4 = cardSection, v10.receiver = self, v10.super_class = SearchUIDetailedRowModel, v5 = [(SearchUICardSectionRowModel *)&v10 isDraggable], v4, !v5))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    identifyingResult = [(SearchUIRowModel *)self identifyingResult];
    if ([SearchUIUtilities resultIsSiriAction:identifyingResult])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      identifyingResult2 = [(SearchUIRowModel *)self identifyingResult];
      v7 = [identifyingResult2 isLocalApplicationResult] ^ 1;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24.receiver = self;
  v24.super_class = SearchUIDetailedRowModel;
  v4 = [(SearchUICardSectionRowModel *)&v24 copyWithZone:zone];
  leadingImage = [(SearchUIDetailedRowModel *)self leadingImage];
  [v4 setLeadingImage:leadingImage];

  fallbackImage = [(SearchUIDetailedRowModel *)self fallbackImage];
  [v4 setFallbackImage:fallbackImage];

  leadingButton = [(SearchUIDetailedRowModel *)self leadingButton];
  [v4 setLeadingButton:leadingButton];

  [v4 setPreventThumbnailImageScaling:{-[SearchUIDetailedRowModel preventThumbnailImageScaling](self, "preventThumbnailImageScaling")}];
  buttonItems = [(SearchUIDetailedRowModel *)self buttonItems];
  [v4 setButtonItems:buttonItems];

  [v4 setButtonItemsAreTrailing:{-[SearchUIDetailedRowModel buttonItemsAreTrailing](self, "buttonItemsAreTrailing")}];
  [v4 setIsLocalApplicationResult:{-[SearchUIDetailedRowModel isLocalApplicationResult](self, "isLocalApplicationResult")}];
  nearbyBusinessesString = [(SearchUIDetailedRowModel *)self nearbyBusinessesString];
  [v4 setNearbyBusinessesString:nearbyBusinessesString];

  topText = [(SearchUIDetailedRowModel *)self topText];
  [v4 setTopText:topText];

  title = [(SearchUIDetailedRowModel *)self title];
  [v4 setTitle:title];

  [v4 setTruncateTitleMiddle:{-[SearchUIDetailedRowModel truncateTitleMiddle](self, "truncateTitleMiddle")}];
  secondaryTitle = [(SearchUIDetailedRowModel *)self secondaryTitle];
  [v4 setSecondaryTitle:secondaryTitle];

  [v4 setSecondaryTitleIsDetached:{-[SearchUIDetailedRowModel secondaryTitleIsDetached](self, "secondaryTitleIsDetached")}];
  secondaryTitleImage = [(SearchUIDetailedRowModel *)self secondaryTitleImage];
  [v4 setSecondaryTitleImage:secondaryTitleImage];

  details = [(SearchUIDetailedRowModel *)self details];
  [v4 setDetails:details];

  footnote = [(SearchUIDetailedRowModel *)self footnote];
  [v4 setFootnote:footnote];

  footnoteButtonText = [(SearchUIDetailedRowModel *)self footnoteButtonText];
  [v4 setFootnoteButtonText:footnoteButtonText];

  action = [(SearchUIDetailedRowModel *)self action];
  [v4 setAction:action];

  trailingTopText = [(SearchUIDetailedRowModel *)self trailingTopText];
  [v4 setTrailingTopText:trailingTopText];

  trailingMiddleText = [(SearchUIDetailedRowModel *)self trailingMiddleText];
  [v4 setTrailingMiddleText:trailingMiddleText];

  trailingBottomText = [(SearchUIDetailedRowModel *)self trailingBottomText];
  [v4 setTrailingBottomText:trailingBottomText];

  trailingThumbnail = [(SearchUIDetailedRowModel *)self trailingThumbnail];
  [v4 setTrailingThumbnail:trailingThumbnail];

  mapsResult = [(SearchUIDetailedRowModel *)self mapsResult];
  [v4 setMapsResult:mapsResult];

  return v4;
}

@end