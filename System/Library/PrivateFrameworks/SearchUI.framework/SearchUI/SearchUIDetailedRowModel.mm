@interface SearchUIDetailedRowModel
+ (BOOL)urlIsDraggable:(id)a3;
+ (id)richTextWithFormattedText:(id)a3;
- (BOOL)isContact;
- (BOOL)isDraggable;
- (BOOL)isTappable;
- (BOOL)useCompactVersionOfUI;
- (Class)cardSectionViewClass;
- (NSArray)details;
- (SearchUIDetailedRowModel)initWithResult:(id)a3 cardSection:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7;
- (SearchUIDetailedRowModel)initWithResult:(id)a3 suggestion:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6;
- (id)backgroundColor;
- (id)contactIdentifiers;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionText;
- (id)dragAppBundleID;
- (id)dragSubtitle;
- (id)dragText;
- (id)dragTitle;
- (id)dragURL;
- (id)populatedMapsCardSectionIfApplicable;
- (id)punchouts;
- (id)requestAppClipObjects;
- (id)richTextFromText:(id)a3;
- (int)separatorStyle;
- (void)fillOutPropertiesForCardSection:(id)a3;
@end

@implementation SearchUIDetailedRowModel

- (id)populatedMapsCardSectionIfApplicable
{
  v3 = [(SearchUIRowModel *)self identifyingResult];
  v4 = [SearchUIUtilities cardSectionsForRenderingResult:v3];
  v5 = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(SearchUIRowModel *)self cardSection];
    v8 = [v7 mapsData];
    v9 = [v7 pinText];
    [(SearchUIDetailedRowModel *)self setPinText:v9];

    if (v8)
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

      v12 = [MEMORY[0x1E696AAE8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [v10 initWithMapsData:v8 iconSize:v11 bundleID:v13];
      [(SearchUIDetailedRowModel *)self setMapsResult:v14];

      v15 = [(SearchUIDetailedRowModel *)self mapsResult];
      v16 = [v15 inlineCard];
      v17 = [v16 cardSections];
      v18 = [v17 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
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
    v18 = [v3 mapsData];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = 0;
      v20 = 0;
LABEL_13:

      goto LABEL_17;
    }

    if (v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v3 mapsData];
      if (v8)
      {
        goto LABEL_3;
      }
    }
  }

  v20 = 0;
LABEL_17:
  v21 = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v23 = [(SearchUIRowModel *)self cardSection];
    [v23 setInternalDetailedRowCardSection:v20];
  }

  v24 = [v4 firstObject];
  v25 = [v24 backgroundColor];
  [v20 setBackgroundColor:v25];

  v26 = v20;
  return v20;
}

- (id)punchouts
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIRowModel *)self identifyingResult];
  v4 = [v3 sectionBundleIdentifier];
  v5 = [SearchUIUtilities bundleIdentifierForApp:6];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(SearchUIRowModel *)self cardSection];

    if (v8)
    {
      v14.receiver = self;
      v14.super_class = SearchUIDetailedRowModel;
      v7 = [(SearchUICardSectionRowModel *)&v14 punchouts];
    }

    else
    {
      v9 = [(SearchUIRowModel *)self identifyingResult];
      v10 = [v9 punchout];
      if (v10)
      {
        v11 = [(SearchUIRowModel *)self identifyingResult];
        v12 = [v11 punchout];
        v15[0] = v12;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (BOOL)useCompactVersionOfUI
{
  v3 = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 shouldUseCompactDisplay];
  }

  else
  {
    v4 = 0;
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

  v6 = [(SearchUIRowModel *)self identifyingResult];
  if ([v6 usesCompactDisplay])
  {
    v7 = [(SearchUIRowModel *)self identifyingResult];
    v8 = [v7 compactCard];
    v9 = [v8 cardSections];
    v10 = [v9 count] == 0;
  }

  else
  {
    v10 = 0;
  }

  return (v5 | v4 | v10) & 1;
}

- (id)contactIdentifiers
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIRowModel *)self identifyingResult];
  v4 = [v3 contactIdentifier];

  if (v4)
  {
    v5 = [(SearchUIRowModel *)self identifyingResult];
    v6 = [v5 contactIdentifier];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
LABEL_7:
    v12 = v7;

    goto LABEL_8;
  }

  v8 = [(SearchUIDetailedRowModel *)self leadingImage];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SearchUIDetailedRowModel *)self leadingImage];
    v10 = [v5 contactIdentifiers];
    v6 = v10;
    v11 = MEMORY[0x1E695E0F0];
    if (v10)
    {
      v11 = v10;
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
  v3 = [(SearchUIDetailedRowModel *)self buttonItems];

  if (v3)
  {
    v3 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(SearchUIDetailedRowModel *)self buttonItems];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) _searchUI_requestAppClipCommand];
          if (v9)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (Class)cardSectionViewClass
{
  v7.receiver = self;
  v7.super_class = SearchUIDetailedRowModel;
  v3 = [(SearchUICardSectionRowModel *)&v7 cardSectionViewClass];
  if (v3)
  {
    v4 = v3;
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
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SearchUIDetailedRowModel;
    v3 = [(SearchUICardSectionRowModel *)&v5 backgroundColor];
  }

  return v3;
}

- (int)separatorStyle
{
  v7.receiver = self;
  v7.super_class = SearchUIDetailedRowModel;
  v3 = [(SearchUICardSectionRowModel *)&v7 separatorStyle];
  if ([MEMORY[0x1E69D9240] isMacOS] && -[SearchUIDetailedRowModel useCompactVersionOfUI](self, "useCompactVersionOfUI"))
  {
    return 1;
  }

  if (-[SearchUIDetailedRowModel useCompactVersionOfUI](self, "useCompactVersionOfUI") && !v3 && ![MEMORY[0x1E69D91A8] isSuperLargeAccessibilitySize])
  {
    return 3;
  }

  v5 = [(SearchUIRowModel *)self cardSection];
  if (v5)
  {
    v4 = v3;
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
  v3 = [(SearchUIRowModel *)self identifyingResult];
  v4 = [v3 resultBundleId];
  if (([v4 isEqualToString:*MEMORY[0x1E69D3EB0]] & 1) == 0)
  {

    goto LABEL_11;
  }

  v5 = [(NSArray *)self->_details firstObject];

  if (!v5)
  {
LABEL_11:
    v6 = self->_details;
    goto LABEL_15;
  }

  v6 = [(NSArray *)self->_details mutableCopy];
  v7 = [(NSArray *)self->_details firstObject];
  v8 = [v7 copy];

  v9 = +[SearchUICalendarStore colorForDefaultCalendarForNewEvents];

  if (!v9)
  {
    v26 = MEMORY[0x1E69CA0F0];
    v19 = [v8 text];
    v20 = [v26 textWithString:v19];
    v28 = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [v8 setFormattedTextPieces:v22];
    goto LABEL_13;
  }

  v10 = [v8 formattedTextPieces];
  if (![v10 count])
  {
    v11 = [v8 text];
    v12 = [v11 length];

    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = [v8 text];
    v10 = [v13 stringWithFormat:@" %@", v14];

    [v8 setText:0];
    v15 = [MEMORY[0x1E69CA0F0] textWithString:v10];
    v30[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v8 setFormattedTextPieces:v16];
  }

LABEL_8:
  v17 = [v8 formattedTextPieces];
  v18 = [v17 count];

  if (v18 == 1)
  {
    v19 = objc_opt_new();
    [v19 setSymbolName:@"circle.fill"];
    v20 = [(SearchUIImage *)SearchUISymbolImage imageWithSFImage:v19];
    v21 = +[SearchUICalendarStore colorForDefaultCalendarForNewEvents];
    [v20 setCustomForegroundColor:v21];

    [v20 setSymbolScale:1];
    v22 = objc_opt_new();
    [v22 setGlyph:v20];
    v29 = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v24 = [v8 formattedTextPieces];
    v25 = [v23 arrayByAddingObjectsFromArray:v24];
    [v8 setFormattedTextPieces:v25];

LABEL_13:
  }

  [(NSArray *)v6 replaceObjectAtIndex:0 withObject:v8];

LABEL_15:

  return v6;
}

- (SearchUIDetailedRowModel)initWithResult:(id)a3 suggestion:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v24.receiver = self;
  v24.super_class = SearchUIDetailedRowModel;
  v11 = [(SearchUICardSectionRowModel *)&v24 initWithResult:a3 cardSection:v10 isInline:1 queryId:a5 itemIdentifier:a6];
  if (v11)
  {
    v12 = [v10 suggestionText];
    [(SearchUIDetailedRowModel *)v11 setTitle:v12];

    v13 = [v10 detailText];
    if (v13)
    {
      v14 = [v10 detailText];
      v26[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [(SearchUIDetailedRowModel *)v11 setDetails:v15];
    }

    else
    {
      [(SearchUIDetailedRowModel *)v11 setDetails:0];
    }

    v16 = [(SearchUIDetailedRowModel *)v11 populatedMapsCardSectionIfApplicable];
    v17 = [v16 thumbnail];
    if (v17)
    {
      [(SearchUIDetailedRowModel *)v11 setLeadingImage:v17];
    }

    else
    {
      v18 = [v10 thumbnail];
      [(SearchUIDetailedRowModel *)v11 setLeadingImage:v18];
    }

    [(SearchUIDetailedRowModel *)v11 setTruncateTitleMiddle:v10 != 0];
    if ([v10 suggestionType] == 4)
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

- (SearchUIDetailedRowModel)initWithResult:(id)a3 cardSection:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7
{
  v11 = a3;
  v12 = a4;
  v83.receiver = self;
  v83.super_class = SearchUIDetailedRowModel;
  v13 = [(SearchUICardSectionRowModel *)&v83 initWithResult:v11 cardSection:v12 isInline:1 queryId:a6 itemIdentifier:a7];
  v14 = v13;
  if (!v13)
  {
    v22 = v12;
    goto LABEL_44;
  }

  v15 = [(SearchUIRowModel *)v13 applicationBundleIdentifier];
  v16 = [(SearchUIDetailedRowModel *)v14 populatedMapsCardSectionIfApplicable];
  v17 = [(SearchUIRowModel *)v14 cardSection];
  objc_opt_class();
  v18 = v12;
  if (objc_opt_isKindOfClass())
  {
    v19 = [(SearchUIRowModel *)v14 cardSection];
    v20 = [v19 mapsData];
    if ([v20 length])
    {
      v18 = v12;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21;

  v23 = [SearchUIImageView thumbnailForRowModel:v14];
  v24 = [SearchUIUtilities cardSectionsForRenderingResult:v11];
  v82 = v24;
  if (!v15)
  {
    goto LABEL_15;
  }

  v25 = v24;
  v26 = [v11 contactIdentifier];
  if ([v26 length])
  {
LABEL_29:

    if (!v23)
    {
      goto LABEL_30;
    }

LABEL_15:
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_31:
    [(SearchUIDetailedRowModel *)v14 setLeadingImage:v23];
    v38 = [v11 action];
    [(SearchUIDetailedRowModel *)v14 setAction:v38];

    -[SearchUIDetailedRowModel setPreventThumbnailImageScaling:](v14, "setPreventThumbnailImageScaling:", [v11 preventThumbnailImageScaling]);
    v39 = [v11 title];
    v40 = [(SearchUIDetailedRowModel *)v14 richTextFromText:v39];
    [(SearchUIDetailedRowModel *)v14 setTitle:v40];

    v41 = [v11 title];
    v42 = [v41 maxLines];
    [(SearchUIDetailedRowModel *)v14 title];
    v43 = v23;
    v45 = v44 = v16;
    [v45 setMaxLines:v42];

    v46 = MEMORY[0x1E69CA0F0];
    v47 = [v11 secondaryTitle];
    v48 = [v46 textWithString:v47];
    [(SearchUIDetailedRowModel *)v14 setSecondaryTitle:v48];

    -[SearchUIDetailedRowModel setSecondaryTitleIsDetached:](v14, "setSecondaryTitleIsDetached:", [v11 isSecondaryTitleDetached]);
    v49 = [v11 secondaryTitleImage];
    [(SearchUIDetailedRowModel *)v14 setSecondaryTitleImage:v49];

    v50 = [v11 descriptions];
    [(SearchUIDetailedRowModel *)v14 setDetails:v50];

    v51 = MEMORY[0x1E69CA3A0];
    v52 = [v11 footnote];
    v53 = [v51 textWithString:v52];
    [(SearchUIDetailedRowModel *)v14 setFootnote:v53];

    v54 = MEMORY[0x1E69CA3A0];
    v55 = [v11 auxiliaryTopText];
    v56 = [v54 textWithString:v55];
    [(SearchUIDetailedRowModel *)v14 setTrailingTopText:v56];

    v57 = MEMORY[0x1E69CA3A0];
    v58 = [v11 auxiliaryMiddleText];
    v59 = [v57 textWithString:v58];
    [(SearchUIDetailedRowModel *)v14 setTrailingMiddleText:v59];

    v60 = MEMORY[0x1E69CA3A0];
    v16 = v44;
    v23 = v43;
    v61 = [v11 auxiliaryBottomText];
    v62 = [v60 textWithString:v61];
    [(SearchUIDetailedRowModel *)v14 setTrailingBottomText:v62];

    goto LABEL_32;
  }

  v78 = v15;
  v27 = [v25 firstObject];
  objc_opt_class();
  v80 = v23;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_22;
  }

  v28 = [v25 firstObject];
  v29 = [v28 leadingCardSections];
  [v29 firstObject];
  v30 = v22;
  v32 = v31 = v16;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v16 = v31;
  v22 = v30;
  v23 = v80;

  v15 = v78;
  if ((isKindOfClass & 1) == 0)
  {
LABEL_22:
    v33 = v16;
    if ([(SearchUIDetailedRowModel *)v14 useCompactVersionOfUI])
    {
      +[SearchUISuggestionImageUtilities maximumSize];
      v34 = [SearchUIAppIconImage bestVariantForSize:?];
    }

    else
    {
      v34 = 4;
    }

    v26 = [(SearchUIRowModel *)v14 identifyingResult];
    v35 = [v26 applicationBundleIdentifier];
    if (v35)
    {
      v36 = [(SearchUIRowModel *)v14 identifyingResult];
      v37 = [SearchUIAppIconImage appIconForResult:v36 variant:v34];
      [(SearchUIDetailedRowModel *)v14 setFallbackImage:v37];
    }

    else
    {
      v36 = [SearchUIAppIconImage appIconForBundleIdentifier:v78 variant:v34];
      [(SearchUIDetailedRowModel *)v14 setFallbackImage:v36];
    }

    v16 = v33;
    v15 = v78;
    v23 = v80;
    goto LABEL_29;
  }

  if (v80)
  {
    goto LABEL_15;
  }

LABEL_30:
  v23 = [(SearchUIDetailedRowModel *)v14 fallbackImage];
  if (!v22)
  {
    goto LABEL_31;
  }

LABEL_16:
  if (v23 && !v16)
  {
    [v18 setThumbnail:v23];
  }

  [(SearchUIDetailedRowModel *)v14 fillOutPropertiesForCardSection:v22];
LABEL_32:
  v63 = [v11 nearbyBusinessesString];
  [(SearchUIDetailedRowModel *)v14 setNearbyBusinessesString:v63];

  -[SearchUIDetailedRowModel setIsLocalApplicationResult:](v14, "setIsLocalApplicationResult:", [v11 isLocalApplicationResult]);
  v64 = [(SearchUIDetailedRowModel *)v14 leadingImage];
  if (!v64)
  {
    goto LABEL_40;
  }

  v65 = v64;
  v66 = [(SearchUIDetailedRowModel *)v14 nearbyBusinessesString];
  if (v66)
  {
    v67 = v66;
    v79 = v22;
    v81 = v23;
    v68 = v16;
    v69 = v15;
    v70 = [(SearchUIRowModel *)v14 identifyingResult];
    v71 = [v70 identifier];
    if ([v71 hasPrefix:*MEMORY[0x1E69DE790]])
    {
      v72 = [(SearchUIDetailedRowModel *)v14 leadingImage];
      objc_opt_class();
      v73 = objc_opt_isKindOfClass();

      v15 = v69;
      v16 = v68;
      v22 = v79;
      v23 = v81;
      if (v73)
      {
        goto LABEL_40;
      }

      v74 = [SearchUIAppClipImage alloc];
      v65 = [(SearchUIDetailedRowModel *)v14 leadingImage];
      v67 = [(SearchUIAppClipImage *)v74 initWithSFImage:v65];
      [(SearchUIDetailedRowModel *)v14 setLeadingImage:v67];
    }

    else
    {

      v15 = v69;
      v16 = v68;
      v22 = v79;
      v23 = v81;
    }
  }

LABEL_40:
  if ([(SearchUIDetailedRowModel *)v14 useCompactVersionOfUI])
  {
    v75 = [(SearchUIDetailedRowModel *)v14 title];
    [v75 setMaxLines:1];

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

- (id)richTextFromText:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69CA3A0];
    v6 = [v3 text];
    v4 = [v5 textWithString:v6];

    [v4 setMaxLines:{objc_msgSend(v3, "maxLines")}];
  }

  return v4;
}

- (void)fillOutPropertiesForCardSection:(id)a3
{
  v82[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 thumbnail];
  [(SearchUIDetailedRowModel *)self setLeadingImage:v5];

  v6 = [v4 button];
  [(SearchUIDetailedRowModel *)self setLeadingButton:v6];

  -[SearchUIDetailedRowModel setPreventThumbnailImageScaling:](self, "setPreventThumbnailImageScaling:", [v4 preventThumbnailImageScaling]);
  v7 = [v4 topText];
  [(SearchUIDetailedRowModel *)self setTopText:v7];

  v8 = [v4 title];
  [(SearchUIDetailedRowModel *)self setTitle:v8];

  v9 = [v4 secondaryTitle];
  [(SearchUIDetailedRowModel *)self setSecondaryTitle:v9];

  -[SearchUIDetailedRowModel setSecondaryTitleIsDetached:](self, "setSecondaryTitleIsDetached:", [v4 isSecondaryTitleDetached]);
  v10 = [v4 secondaryTitleImage];
  [(SearchUIDetailedRowModel *)self setSecondaryTitleImage:v10];

  v11 = [v4 descriptions];
  [(SearchUIDetailedRowModel *)self setDetails:v11];

  v12 = [v4 footnote];
  [(SearchUIDetailedRowModel *)self setFootnote:v12];

  v13 = [v4 action];
  [(SearchUIDetailedRowModel *)self setAction:v13];
  v14 = [v4 richTrailingTopText];
  if (v14)
  {
    [(SearchUIDetailedRowModel *)self setTrailingTopText:v14];
  }

  else
  {
    v15 = objc_opt_class();
    v16 = [v4 trailingTopText];
    v17 = [v15 richTextWithFormattedText:v16];
    [(SearchUIDetailedRowModel *)self setTrailingTopText:v17];
  }

  v18 = [v4 richTrailingMiddleText];
  if (v18)
  {
    [(SearchUIDetailedRowModel *)self setTrailingMiddleText:v18];
  }

  else
  {
    v19 = objc_opt_class();
    v20 = [v4 trailingMiddleText];
    v21 = [v19 richTextWithFormattedText:v20];
    [(SearchUIDetailedRowModel *)self setTrailingMiddleText:v21];
  }

  v22 = [v4 richTrailingBottomText];
  if (v22)
  {
    [(SearchUIDetailedRowModel *)self setTrailingBottomText:v22];
  }

  else
  {
    v23 = objc_opt_class();
    v24 = [v4 trailingBottomText];
    v25 = [v23 richTextWithFormattedText:v24];
    [(SearchUIDetailedRowModel *)self setTrailingBottomText:v25];
  }

  -[SearchUIDetailedRowModel setButtonItemsAreTrailing:](self, "setButtonItemsAreTrailing:", [v4 buttonItemsAreTrailing]);
  v26 = [v4 trailingThumbnail];
  [(SearchUIDetailedRowModel *)self setTrailingThumbnail:v26];

  v27 = [v4 buttonItems];
  v28 = v27;
  if (!v27)
  {
    v27 = MEMORY[0x1E695E0F0];
  }

  v29 = [v27 mutableCopy];

  if (![v29 count])
  {
    v30 = [v13 contactIdentifier];
    if (v30 || ([v13 phoneNumber], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v51 = [v13 email];

      if (!v51)
      {
        goto LABEL_27;
      }
    }

    v31 = objc_opt_new();
    v32 = [v13 contactIdentifier];
    [v31 setContactIdentifier:v32];

    v33 = [v13 phoneNumber];
    if (v33)
    {
      v34 = [v13 phoneNumber];
      v82[0] = v34;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:1];
      [v31 setPhoneNumbers:v35];
    }

    else
    {
      [v31 setPhoneNumbers:0];
    }

    v36 = [v13 email];
    if (v36)
    {
      v37 = [v13 email];
      v81 = v37;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
      [v31 setEmailAddresses:v38];
    }

    else
    {
      [v31 setEmailAddresses:0];
    }

    v39 = objc_opt_new();
    v40 = [v13 phoneNumber];
    v41 = [v40 length];

    if (v41)
    {
      [v39 addObject:&unk_1F55DD460];
    }

    v42 = [v13 email];
    v43 = [v42 length];

    if (v43)
    {
      [v39 addObject:&unk_1F55DD478];
    }

    v44 = objc_opt_new();
    [v44 setPerson:v31];
    [v44 setActionTypesToShow:v39];
    [v29 addObject:v44];

LABEL_27:
    v45 = [v13 mapsData];
    if (v45 || ([v13 location], (v45 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v52 = [v13 customDirectionsPunchout];

      if (!v52)
      {
LABEL_41:
        v56 = [v13 messageURL];

        if (v56)
        {
          v57 = objc_opt_new();
          v58 = MEMORY[0x1E69CA320];
          v59 = [v13 messageURL];
          v60 = [v58 punchoutWithURL:v59];
          [v57 setPunchout:v60];

          v61 = objc_opt_new();
          [v61 setCommand:v57];
          v62 = [[SearchUISymbolImage alloc] initWithSymbolName:@"message"];
          [v61 setImage:v62];

          [v29 addObject:v61];
        }

        if (![(SearchUIDetailedRowModel *)self useCompactVersionOfUI])
        {
          v63 = [v13 applicationBundleIdentifier];
          if (v63)
          {
            v64 = v63;
            v65 = [v13 isOverlay];

            if ((v65 & 1) == 0)
            {
              v66 = [v13 storeIdentifiers];
              v67 = [v66 firstObject];
              v68 = v67;
              if (v67)
              {
                v69 = v67;
              }

              else
              {
                v70 = [(SearchUIRowModel *)self identifyingResult];
                v69 = [v70 storeIdentifier];
              }

              v71 = objc_opt_new();
              [v71 setIdentifier:v69];
              [v29 addObject:v71];
            }
          }
        }

        if (![v29 count])
        {
          v72 = [v13 label];
          v73 = [v72 length];

          if (v73)
          {
            v74 = objc_opt_new();
            v75 = [v13 label];
            [v74 setTitle:v75];

            [v29 addObject:v74];
          }
        }

        v76 = [v13 localMediaIdentifier];

        if (v76)
        {
          v77 = objc_opt_new();
          v78 = [v13 localMediaIdentifier];
          [v77 setMediaIdentifier:v78];

          v79 = objc_opt_new();
          [v79 setMediaMetadata:v77];
          [v29 addObject:v79];
        }

        [(SearchUIDetailedRowModel *)self setButtonItemsAreTrailing:1];
        goto LABEL_56;
      }
    }

    v46 = [v13 customDirectionsPunchout];

    if (v46)
    {
      v47 = objc_opt_new();
      v48 = [v13 customDirectionsPunchout];
      [v47 setPunchout:v48];
    }

    else
    {
      v47 = objc_opt_new();
      v49 = [v13 mapsData];
      [v47 setMapsData:v49];

      v50 = [v13 label];
      if (v50)
      {
        [v47 setName:v50];
      }

      else
      {
        v53 = [(SearchUIDetailedRowModel *)self title];
        v54 = [v53 text];
        [v47 setName:v54];
      }

      [v47 setDirectionsMode:{objc_msgSend(v13, "directionsMode")}];
      [v47 setShouldSearchDirectionsAlongCurrentRoute:{objc_msgSend(v13, "shouldSearchDirectionsAlongCurrentRoute")}];
      v48 = [v13 location];
      [v47 setLocation:v48];
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

+ (id)richTextWithFormattedText:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    v4 = objc_opt_new();
    v7[0] = v3;
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
  v2 = [(SearchUIRowModel *)self identifyingResult];
  v3 = [v2 sectionBundleIdentifier];
  v4 = [SearchUIUtilities bundleIdentifierForApp:5];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)dragAppBundleID
{
  if ([(SearchUIDetailedRowModel *)self isLocalApplicationResult])
  {
    v3 = [(SearchUIRowModel *)self applicationBundleIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dragTitle
{
  v2 = [(SearchUIDetailedRowModel *)self title];
  v3 = [SearchUIUtilities stringForSFRichText:v2 emphasizedOnly:1];

  return v3;
}

- (id)dragSubtitle
{
  if ([(SearchUIDetailedRowModel *)self isContact]|| [(SearchUICardSectionRowModel *)self isQuerySuggestion])
  {
    v3 = 0;
  }

  else
  {
    v5 = [(SearchUIDetailedRowModel *)self dragURL];
    v3 = [v5 host];

    if (!v3)
    {
      v3 = [(SearchUIDetailedRowModel *)self descriptionText];
    }
  }

  return v3;
}

- (id)descriptionText
{
  v2 = [(SearchUIDetailedRowModel *)self details];
  v3 = [SearchUIUtilities stringForSFRichTextArray:v2];

  return v3;
}

- (id)dragText
{
  v3 = objc_opt_new();
  v4 = [(SearchUIDetailedRowModel *)self dragTitle];
  if ([v4 length])
  {
    [v3 appendString:v4];
  }

  if ([v3 length])
  {
    [v3 appendString:@"\n"];
  }

  v5 = [(SearchUIDetailedRowModel *)self descriptionText];
  if ([v5 length])
  {
    v6 = [(SearchUIDetailedRowModel *)self descriptionText];
    [v3 appendString:v6];
  }

  return v3;
}

+ (BOOL)urlIsDraggable:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if ([v4 isEqualToString:@"http"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 scheme];
    if ([v6 isEqualToString:@"https"])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 scheme];
      v5 = [v7 isEqualToString:@"file"];
    }
  }

  return v5;
}

- (id)dragURL
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIDetailedRowModel *)self dragAppBundleID];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [(SearchUIDetailedRowModel *)self punchouts];
    v6 = [v5 firstObject];
    v7 = [v6 urls];

    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if ([SearchUIDetailedRowModel urlIsDraggable:v12])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

    v13 = [(SearchUIRowModel *)self identifyingResult];
    v14 = [v13 url];
    if ([SearchUIDetailedRowModel urlIsDraggable:v14])
    {
      v15 = [(SearchUIRowModel *)self identifyingResult];
      v4 = [v15 url];
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_17:
  v16 = [(SearchUIDetailedRowModel *)self dragTitle];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [(SearchUIDetailedRowModel *)self dragTitle];
    [v4 _setTitle:v18];
  }

  return v4;
}

- (BOOL)isTappable
{
  v3 = [(SearchUIRowModel *)self cardSection];
  if (v3)
  {
    v6.receiver = self;
    v6.super_class = SearchUIDetailedRowModel;
    v4 = [(SearchUICardSectionRowModel *)&v6 isTappable];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isDraggable
{
  v3 = [(SearchUIRowModel *)self cardSection];
  if (v3 && (v4 = v3, v10.receiver = self, v10.super_class = SearchUIDetailedRowModel, v5 = [(SearchUICardSectionRowModel *)&v10 isDraggable], v4, !v5))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v6 = [(SearchUIRowModel *)self identifyingResult];
    if ([SearchUIUtilities resultIsSiriAction:v6])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = [(SearchUIRowModel *)self identifyingResult];
      v7 = [v8 isLocalApplicationResult] ^ 1;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24.receiver = self;
  v24.super_class = SearchUIDetailedRowModel;
  v4 = [(SearchUICardSectionRowModel *)&v24 copyWithZone:a3];
  v5 = [(SearchUIDetailedRowModel *)self leadingImage];
  [v4 setLeadingImage:v5];

  v6 = [(SearchUIDetailedRowModel *)self fallbackImage];
  [v4 setFallbackImage:v6];

  v7 = [(SearchUIDetailedRowModel *)self leadingButton];
  [v4 setLeadingButton:v7];

  [v4 setPreventThumbnailImageScaling:{-[SearchUIDetailedRowModel preventThumbnailImageScaling](self, "preventThumbnailImageScaling")}];
  v8 = [(SearchUIDetailedRowModel *)self buttonItems];
  [v4 setButtonItems:v8];

  [v4 setButtonItemsAreTrailing:{-[SearchUIDetailedRowModel buttonItemsAreTrailing](self, "buttonItemsAreTrailing")}];
  [v4 setIsLocalApplicationResult:{-[SearchUIDetailedRowModel isLocalApplicationResult](self, "isLocalApplicationResult")}];
  v9 = [(SearchUIDetailedRowModel *)self nearbyBusinessesString];
  [v4 setNearbyBusinessesString:v9];

  v10 = [(SearchUIDetailedRowModel *)self topText];
  [v4 setTopText:v10];

  v11 = [(SearchUIDetailedRowModel *)self title];
  [v4 setTitle:v11];

  [v4 setTruncateTitleMiddle:{-[SearchUIDetailedRowModel truncateTitleMiddle](self, "truncateTitleMiddle")}];
  v12 = [(SearchUIDetailedRowModel *)self secondaryTitle];
  [v4 setSecondaryTitle:v12];

  [v4 setSecondaryTitleIsDetached:{-[SearchUIDetailedRowModel secondaryTitleIsDetached](self, "secondaryTitleIsDetached")}];
  v13 = [(SearchUIDetailedRowModel *)self secondaryTitleImage];
  [v4 setSecondaryTitleImage:v13];

  v14 = [(SearchUIDetailedRowModel *)self details];
  [v4 setDetails:v14];

  v15 = [(SearchUIDetailedRowModel *)self footnote];
  [v4 setFootnote:v15];

  v16 = [(SearchUIDetailedRowModel *)self footnoteButtonText];
  [v4 setFootnoteButtonText:v16];

  v17 = [(SearchUIDetailedRowModel *)self action];
  [v4 setAction:v17];

  v18 = [(SearchUIDetailedRowModel *)self trailingTopText];
  [v4 setTrailingTopText:v18];

  v19 = [(SearchUIDetailedRowModel *)self trailingMiddleText];
  [v4 setTrailingMiddleText:v19];

  v20 = [(SearchUIDetailedRowModel *)self trailingBottomText];
  [v4 setTrailingBottomText:v20];

  v21 = [(SearchUIDetailedRowModel *)self trailingThumbnail];
  [v4 setTrailingThumbnail:v21];

  v22 = [(SearchUIDetailedRowModel *)self mapsResult];
  [v4 setMapsResult:v22];

  return v4;
}

@end