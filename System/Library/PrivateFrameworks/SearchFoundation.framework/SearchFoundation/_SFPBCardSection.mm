@interface _SFPBCardSection
- (BOOL)getRacFeedbackLoggingContent:(id *)content forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCardSection)initWithDictionary:(id)dictionary;
- (_SFPBCardSection)initWithFacade:(id)facade;
- (_SFPBCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCommands:(id)commands;
- (void)addCopyableItems:(id)items;
- (void)addLeadingSwipeButtonItems:(id)items;
- (void)addParameterKeyPaths:(id)paths;
- (void)addPreviewButtonItems:(id)items;
- (void)addPunchoutOptions:(id)options;
- (void)addReferencedCommands:(id)commands;
- (void)addTrailingSwipeButtonItems:(id)items;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setCardSectionDetail:(id)detail;
- (void)setCardSectionId:(id)id;
- (void)setCommands:(id)commands;
- (void)setCopyableItems:(id)items;
- (void)setEmphasisSubjectId:(id)id;
- (void)setLeadingSwipeButtonItems:(id)items;
- (void)setParameterKeyPaths:(id)paths;
- (void)setPreviewButtonItems:(id)items;
- (void)setPreviewButtonItemsTitle:(id)title;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setRacFeedbackLoggingContent:(id)content;
- (void)setRacFeedbackLoggingContent:(id)content forKey:(id)key;
- (void)setRacFeedbackSubfeatureId:(id)id;
- (void)setReferencedCommands:(id)commands;
- (void)setResultIdentifier:(id)identifier;
- (void)setTrailingSwipeButtonItems:(id)items;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCardSection

- (_SFPBCardSection)initWithFacade:(id)facade
{
  v402 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v392.receiver = self;
  v392.super_class = _SFPBCardSection;
  v5 = [(_SFPBCardSection *)&v392 init];

  if (v5)
  {
    nextCard = [facadeCopy nextCard];

    if (nextCard)
    {
      v7 = [_SFPBCard alloc];
      nextCard2 = [facadeCopy nextCard];
      v9 = [(_SFPBCard *)v7 initWithFacade:nextCard2];
      [(_SFPBCardSection *)v5 setNextCard:v9];
    }

    commands = [facadeCopy commands];
    if (commands)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v390 = 0u;
    v391 = 0u;
    v388 = 0u;
    v389 = 0u;
    v351 = facadeCopy;
    commands2 = [facadeCopy commands];
    v13 = [commands2 countByEnumeratingWithState:&v388 objects:v401 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v389;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v389 != v15)
          {
            objc_enumerationMutation(commands2);
          }

          v17 = [[_SFPBAbstractCommand alloc] initWithFacade:*(*(&v388 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [commands2 countByEnumeratingWithState:&v388 objects:v401 count:16];
      }

      while (v14);
    }

    [(_SFPBCardSection *)v5 setCommands:v11];
    parameterKeyPaths = [v351 parameterKeyPaths];
    if (parameterKeyPaths)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v386 = 0u;
    v387 = 0u;
    v384 = 0u;
    v385 = 0u;
    parameterKeyPaths2 = [v351 parameterKeyPaths];
    v21 = [parameterKeyPaths2 countByEnumeratingWithState:&v384 objects:v400 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v385;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v385 != v23)
          {
            objc_enumerationMutation(parameterKeyPaths2);
          }

          v25 = *(*(&v384 + 1) + 8 * j);
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [parameterKeyPaths2 countByEnumeratingWithState:&v384 objects:v400 count:16];
      }

      while (v22);
    }

    [(_SFPBCardSection *)v5 setParameterKeyPaths:v19];
    cardSectionId = [v351 cardSectionId];

    if (cardSectionId)
    {
      cardSectionId2 = [v351 cardSectionId];
      [(_SFPBCardSection *)v5 setCardSectionId:cardSectionId2];
    }

    resultIdentifier = [v351 resultIdentifier];

    if (resultIdentifier)
    {
      resultIdentifier2 = [v351 resultIdentifier];
      [(_SFPBCardSection *)v5 setResultIdentifier:resultIdentifier2];
    }

    userReportRequest = [v351 userReportRequest];

    if (userReportRequest)
    {
      v31 = [_SFPBUserReportRequest alloc];
      userReportRequest2 = [v351 userReportRequest];
      v33 = [(_SFPBUserReportRequest *)v31 initWithFacade:userReportRequest2];
      [(_SFPBCardSection *)v5 setUserReportRequest:v33];
    }

    command = [v351 command];

    if (command)
    {
      v35 = [_SFPBCommand alloc];
      command2 = [v351 command];
      v37 = [(_SFPBCommand *)v35 initWithFacade:command2];
      [(_SFPBCardSection *)v5 setCommand:v37];
    }

    previewCommand = [v351 previewCommand];

    if (previewCommand)
    {
      v39 = [_SFPBCommand alloc];
      previewCommand2 = [v351 previewCommand];
      v41 = [(_SFPBCommand *)v39 initWithFacade:previewCommand2];
      [(_SFPBCardSection *)v5 setPreviewCommand:v41];
    }

    previewButtonItems = [v351 previewButtonItems];
    v350 = v5;
    if (previewButtonItems)
    {
      v355 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v355 = 0;
    }

    v382 = 0u;
    v383 = 0u;
    v380 = 0u;
    v381 = 0u;
    previewButtonItems2 = [v351 previewButtonItems];
    v44 = [previewButtonItems2 countByEnumeratingWithState:&v380 objects:v399 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v381;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v381 != v46)
          {
            objc_enumerationMutation(previewButtonItems2);
          }

          v48 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v380 + 1) + 8 * k)];
          if (v48)
          {
            [v355 addObject:v48];
          }
        }

        v45 = [previewButtonItems2 countByEnumeratingWithState:&v380 objects:v399 count:16];
      }

      while (v45);
    }

    [(_SFPBCardSection *)v5 setPreviewButtonItems:v355];
    cardSectionDetail = [v351 cardSectionDetail];

    if (cardSectionDetail)
    {
      cardSectionDetail2 = [v351 cardSectionDetail];
      [(_SFPBCardSection *)v5 setCardSectionDetail:cardSectionDetail2];
    }

    previewButtonItemsTitle = [v351 previewButtonItemsTitle];

    if (previewButtonItemsTitle)
    {
      previewButtonItemsTitle2 = [v351 previewButtonItemsTitle];
      [(_SFPBCardSection *)v5 setPreviewButtonItemsTitle:previewButtonItemsTitle2];
    }

    backgroundColor = [v351 backgroundColor];

    if (backgroundColor)
    {
      v54 = [_SFPBColor alloc];
      backgroundColor2 = [v351 backgroundColor];
      v56 = [(_SFPBColor *)v54 initWithFacade:backgroundColor2];
      [(_SFPBCardSection *)v5 setBackgroundColor:v56];
    }

    -[_SFPBCardSection setShouldHideInAmbientMode:](v5, "setShouldHideInAmbientMode:", [v351 shouldHideInAmbientMode]);
    leadingSwipeButtonItems = [v351 leadingSwipeButtonItems];
    if (leadingSwipeButtonItems)
    {
      v354 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v354 = 0;
    }

    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    leadingSwipeButtonItems2 = [v351 leadingSwipeButtonItems];
    v59 = [leadingSwipeButtonItems2 countByEnumeratingWithState:&v376 objects:v398 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v377;
      do
      {
        for (m = 0; m != v60; ++m)
        {
          if (*v377 != v61)
          {
            objc_enumerationMutation(leadingSwipeButtonItems2);
          }

          v63 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v376 + 1) + 8 * m)];
          if (v63)
          {
            [v354 addObject:v63];
          }
        }

        v60 = [leadingSwipeButtonItems2 countByEnumeratingWithState:&v376 objects:v398 count:16];
      }

      while (v60);
    }

    [(_SFPBCardSection *)v5 setLeadingSwipeButtonItems:v354];
    trailingSwipeButtonItems = [v351 trailingSwipeButtonItems];
    if (trailingSwipeButtonItems)
    {
      v353 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v353 = 0;
    }

    v374 = 0u;
    v375 = 0u;
    v372 = 0u;
    v373 = 0u;
    trailingSwipeButtonItems2 = [v351 trailingSwipeButtonItems];
    v66 = [trailingSwipeButtonItems2 countByEnumeratingWithState:&v372 objects:v397 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v373;
      do
      {
        for (n = 0; n != v67; ++n)
        {
          if (*v373 != v68)
          {
            objc_enumerationMutation(trailingSwipeButtonItems2);
          }

          v70 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v372 + 1) + 8 * n)];
          if (v70)
          {
            [v353 addObject:v70];
          }
        }

        v67 = [trailingSwipeButtonItems2 countByEnumeratingWithState:&v372 objects:v397 count:16];
      }

      while (v67);
    }

    [(_SFPBCardSection *)v5 setTrailingSwipeButtonItems:v353];
    punchoutOptions = [v351 punchoutOptions];
    v349 = v11;
    if (punchoutOptions)
    {
      v352 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v352 = 0;
    }

    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    punchoutOptions2 = [v351 punchoutOptions];
    v73 = [punchoutOptions2 countByEnumeratingWithState:&v368 objects:v396 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v369;
      do
      {
        for (ii = 0; ii != v74; ++ii)
        {
          if (*v369 != v75)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v77 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v368 + 1) + 8 * ii)];
          if (v77)
          {
            [v352 addObject:v77];
          }
        }

        v74 = [punchoutOptions2 countByEnumeratingWithState:&v368 objects:v396 count:16];
      }

      while (v74);
    }

    [(_SFPBCardSection *)v5 setPunchoutOptions:v352];
    punchoutPickerTitle = [v351 punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [v351 punchoutPickerTitle];
      [(_SFPBCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [v351 punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [v351 punchoutPickerDismissText];
      [(_SFPBCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    -[_SFPBCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v351 canBeHidden]);
    -[_SFPBCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v351 hasTopPadding]);
    -[_SFPBCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v351 hasBottomPadding]);
    -[_SFPBCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v351 separatorStyle]);
    referencedCommands = [v351 referencedCommands];
    if (referencedCommands)
    {
      v83 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v83 = 0;
    }

    v366 = 0u;
    v367 = 0u;
    v364 = 0u;
    v365 = 0u;
    referencedCommands2 = [v351 referencedCommands];
    v85 = [referencedCommands2 countByEnumeratingWithState:&v364 objects:v395 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v365;
      do
      {
        for (jj = 0; jj != v86; ++jj)
        {
          if (*v365 != v87)
          {
            objc_enumerationMutation(referencedCommands2);
          }

          v89 = [[_SFPBCommand alloc] initWithFacade:*(*(&v364 + 1) + 8 * jj)];
          if (v89)
          {
            [v83 addObject:v89];
          }
        }

        v86 = [referencedCommands2 countByEnumeratingWithState:&v364 objects:v395 count:16];
      }

      while (v86);
    }

    [(_SFPBCardSection *)v5 setReferencedCommands:v83];
    -[_SFPBCardSection setForceEnable3DTouch:](v5, "setForceEnable3DTouch:", [v351 forceEnable3DTouch]);
    -[_SFPBCardSection setShouldShowInSmartDialog:](v5, "setShouldShowInSmartDialog:", [v351 shouldShowInSmartDialog]);
    appEntityAnnotation = [v351 appEntityAnnotation];

    if (appEntityAnnotation)
    {
      v91 = [_SFPBAppEntityAnnotation alloc];
      appEntityAnnotation2 = [v351 appEntityAnnotation];
      v93 = [(_SFPBAppEntityAnnotation *)v91 initWithFacade:appEntityAnnotation2];
      [(_SFPBCardSection *)v5 setAppEntityAnnotation:v93];
    }

    emphasisSubjectId = [v351 emphasisSubjectId];

    if (emphasisSubjectId)
    {
      emphasisSubjectId2 = [v351 emphasisSubjectId];
      [(_SFPBCardSection *)v5 setEmphasisSubjectId:emphasisSubjectId2];
    }

    -[_SFPBCardSection setIncreasedContrastMode:](v5, "setIncreasedContrastMode:", [v351 increasedContrastMode]);
    secondaryCommand = [v351 secondaryCommand];

    if (secondaryCommand)
    {
      v97 = [_SFPBCommand alloc];
      secondaryCommand2 = [v351 secondaryCommand];
      v99 = [(_SFPBCommand *)v97 initWithFacade:secondaryCommand2];
      [(_SFPBCardSection *)v5 setSecondaryCommand:v99];
    }

    -[_SFPBCardSection setRequiredLevelOfDetail:](v5, "setRequiredLevelOfDetail:", [v351 requiredLevelOfDetail]);
    racFeedbackSubfeatureId = [v351 racFeedbackSubfeatureId];

    if (racFeedbackSubfeatureId)
    {
      racFeedbackSubfeatureId2 = [v351 racFeedbackSubfeatureId];
      [(_SFPBCardSection *)v5 setRacFeedbackSubfeatureId:racFeedbackSubfeatureId2];
    }

    racFeedbackLoggingContent = [v351 racFeedbackLoggingContent];
    v103 = racFeedbackLoggingContent;
    if (racFeedbackLoggingContent)
    {
      v104 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(racFeedbackLoggingContent, "count")}];
    }

    else
    {
      v104 = 0;
    }

    v362 = 0u;
    v363 = 0u;
    v360 = 0u;
    v361 = 0u;
    v105 = v103;
    v106 = [v105 countByEnumeratingWithState:&v360 objects:v394 count:16];
    if (v106)
    {
      v107 = v106;
      v108 = *v361;
      do
      {
        for (kk = 0; kk != v107; ++kk)
        {
          if (*v361 != v108)
          {
            objc_enumerationMutation(v105);
          }

          v110 = *(*(&v360 + 1) + 8 * kk);
          v111 = [v105 objectForKey:v110];
          if (v111)
          {
            [v104 setObject:v111 forKey:v110];
          }
        }

        v107 = [v105 countByEnumeratingWithState:&v360 objects:v394 count:16];
      }

      while (v107);
    }

    [(_SFPBCardSection *)v5 setRacFeedbackLoggingContent:v104];
    copyableItems = [v351 copyableItems];
    if (copyableItems)
    {
      v113 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v113 = 0;
    }

    v358 = 0u;
    v359 = 0u;
    v356 = 0u;
    v357 = 0u;
    copyableItems2 = [v351 copyableItems];
    v115 = [copyableItems2 countByEnumeratingWithState:&v356 objects:v393 count:16];
    if (v115)
    {
      v116 = v115;
      v117 = *v357;
      do
      {
        for (mm = 0; mm != v116; ++mm)
        {
          if (*v357 != v117)
          {
            objc_enumerationMutation(copyableItems2);
          }

          v119 = [[_SFPBCopyItem alloc] initWithFacade:*(*(&v356 + 1) + 8 * mm)];
          if (v119)
          {
            [v113 addObject:v119];
          }
        }

        v116 = [copyableItems2 countByEnumeratingWithState:&v356 objects:v393 count:16];
      }

      while (v116);
    }

    v5 = v350;
    [(_SFPBCardSection *)v350 setCopyableItems:v113];
    facadeCopy = v351;
    applicationBundleIdentifier = [v351 applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [v351 applicationBundleIdentifier];
      [(_SFPBCardSection *)v350 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v122 = objc_alloc_init(_SFPBCardSectionValue);
    [(_SFPBCardSection *)v350 setValue:v122];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:1];
      v123 = [[_SFPBAppLinkCardSection alloc] initWithFacade:v351];
      value = [(_SFPBCardSection *)v350 value];
      [value setAppLinkCardSection:v123];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:2];
      v125 = [[_SFPBDescriptionCardSection alloc] initWithFacade:v351];
      value2 = [(_SFPBCardSection *)v350 value];
      [value2 setDescriptionCardSection:v125];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:3];
      v127 = [[_SFPBKeyValueDataCardSection alloc] initWithFacade:v351];
      value3 = [(_SFPBCardSection *)v350 value];
      [value3 setKeyValueDataCardSection:v127];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:4];
      v129 = [[_SFPBMapCardSection alloc] initWithFacade:v351];
      value4 = [(_SFPBCardSection *)v350 value];
      [value4 setMapCardSection:v129];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:5];
      v131 = [[_SFPBMediaInfoCardSection alloc] initWithFacade:v351];
      value5 = [(_SFPBCardSection *)v350 value];
      [value5 setMediaInfoCardSection:v131];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:6];
      v133 = [[_SFPBMediaPlayerCardSection alloc] initWithFacade:v351];
      value6 = [(_SFPBCardSection *)v350 value];
      [value6 setMediaPlayerCardSection:v133];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:7];
      v135 = [[_SFPBNowPlayingCardSection alloc] initWithFacade:v351];
      value7 = [(_SFPBCardSection *)v350 value];
      [value7 setNowPlayingCardSection:v135];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:8];
      v137 = [[_SFPBRichTitleCardSection alloc] initWithFacade:v351];
      value8 = [(_SFPBCardSection *)v350 value];
      [value8 setRichTitleCardSection:v137];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:9];
      v139 = [[_SFPBRowCardSection alloc] initWithFacade:v351];
      value9 = [(_SFPBCardSection *)v350 value];
      [value9 setRowCardSection:v139];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:10];
      v141 = [[_SFPBScoreboardCardSection alloc] initWithFacade:v351];
      value10 = [(_SFPBCardSection *)v350 value];
      [value10 setScoreboardCardSection:v141];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:11];
      v143 = [[_SFPBSocialMediaPostCardSection alloc] initWithFacade:v351];
      value11 = [(_SFPBCardSection *)v350 value];
      [value11 setSocialMediaPostCardSection:v143];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:12];
      v145 = [[_SFPBStockChartCardSection alloc] initWithFacade:v351];
      value12 = [(_SFPBCardSection *)v350 value];
      [value12 setStockChartCardSection:v145];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:13];
      v147 = [[_SFPBTableHeaderRowCardSection alloc] initWithFacade:v351];
      value13 = [(_SFPBCardSection *)v350 value];
      [value13 setTableHeaderRowCardSection:v147];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(_SFPBCardSection *)v350 setType:14];
        v149 = [[_SFPBTableRowCardSection alloc] initWithFacade:v351];
        value14 = [(_SFPBCardSection *)v350 value];
        [value14 setTableRowCardSection:v149];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:15];
      v151 = [[_SFPBTextColumnsCardSection alloc] initWithFacade:v351];
      value15 = [(_SFPBCardSection *)v350 value];
      [value15 setTextColumnsCardSection:v151];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [(_SFPBCardSection *)v350 setType:16];
                  v153 = [[_SFPBTitleCardSection alloc] initWithFacade:v351];
                  value16 = [(_SFPBCardSection *)v350 value];
                  [value16 setTitleCardSection:v153];
                }
              }
            }
          }
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:17];
      v155 = [[_SFPBTrackListCardSection alloc] initWithFacade:v351];
      value17 = [(_SFPBCardSection *)v350 value];
      [value17 setTrackListCardSection:v155];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:18];
      v157 = [[_SFPBAudioPlaybackCardSection alloc] initWithFacade:v351];
      value18 = [(_SFPBCardSection *)v350 value];
      [value18 setAudioPlaybackCardSection:v157];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:19];
      v159 = [[_SFPBFlightCardSection alloc] initWithFacade:v351];
      value19 = [(_SFPBCardSection *)v350 value];
      [value19 setFlightCardSection:v159];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:20];
      v161 = [[_SFPBActivityIndicatorCardSection alloc] initWithFacade:v351];
      value20 = [(_SFPBCardSection *)v350 value];
      [value20 setActivityIndicatorCardSection:v161];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:21];
      v163 = [[_SFPBWebCardSection alloc] initWithFacade:v351];
      value21 = [(_SFPBCardSection *)v350 value];
      [value21 setWebCardSection:v163];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:22];
      v165 = [[_SFPBMessageCardSection alloc] initWithFacade:v351];
      value22 = [(_SFPBCardSection *)v350 value];
      [value22 setMessageCardSection:v165];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:23];
      v167 = [[_SFPBDetailedRowCardSection alloc] initWithFacade:v351];
      value23 = [(_SFPBCardSection *)v350 value];
      [value23 setDetailedRowCardSection:v167];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:24];
      v169 = [[_SFPBImagesCardSection alloc] initWithFacade:v351];
      value24 = [(_SFPBCardSection *)v350 value];
      [value24 setImagesCardSection:v169];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:25];
      v171 = [[_SFPBSuggestionCardSection alloc] initWithFacade:v351];
      value25 = [(_SFPBCardSection *)v350 value];
      [value25 setSuggestionCardSection:v171];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:26];
      v173 = [[_SFPBSelectableGridCardSection alloc] initWithFacade:v351];
      value26 = [(_SFPBCardSection *)v350 value];
      [value26 setSelectableGridCardSection:v173];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:27];
      v175 = [[_SFPBSectionHeaderCardSection alloc] initWithFacade:v351];
      value27 = [(_SFPBCardSection *)v350 value];
      [value27 setSectionHeaderCardSection:v175];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:28];
      v177 = [[_SFPBMetaInfoCardSection alloc] initWithFacade:v351];
      value28 = [(_SFPBCardSection *)v350 value];
      [value28 setMetaInfoCardSection:v177];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:29];
      v179 = [[_SFPBWatchListCardSection alloc] initWithFacade:v351];
      value29 = [(_SFPBCardSection *)v350 value];
      [value29 setWatchListCardSection:v179];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:30];
      v181 = [[_SFPBMapsDetailedRowCardSection alloc] initWithFacade:v351];
      value30 = [(_SFPBCardSection *)v350 value];
      [value30 setMapsDetailedRowCardSection:v181];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:31];
      v183 = [[_SFPBButtonCardSection alloc] initWithFacade:v351];
      value31 = [(_SFPBCardSection *)v350 value];
      [value31 setButtonCardSection:v183];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:32];
      v185 = [[_SFPBHorizontalButtonCardSection alloc] initWithFacade:v351];
      value32 = [(_SFPBCardSection *)v350 value];
      [value32 setHorizontalButtonCardSection:v185];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:33];
      v187 = [[_SFPBVerticalLayoutCardSection alloc] initWithFacade:v351];
      value33 = [(_SFPBCardSection *)v350 value];
      [value33 setVerticalLayoutCardSection:v187];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:34];
      v189 = [[_SFPBProductCardSection alloc] initWithFacade:v351];
      value34 = [(_SFPBCardSection *)v350 value];
      [value34 setProductCardSection:v189];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:35];
      v191 = [[_SFPBHorizontalScrollCardSection alloc] initWithFacade:v351];
      value35 = [(_SFPBCardSection *)v350 value];
      [value35 setHorizontalScrollCardSection:v191];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:36];
      v193 = [[_SFPBMediaRemoteControlCardSection alloc] initWithFacade:v351];
      value36 = [(_SFPBCardSection *)v350 value];
      [value36 setMediaRemoteControlCardSection:v193];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:37];
      v195 = [[_SFPBMapPlaceCardSection alloc] initWithFacade:v351];
      value37 = [(_SFPBCardSection *)v350 value];
      [value37 setMapPlaceCardSection:v195];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:38];
      v197 = [[_SFPBCompactRowCardSection alloc] initWithFacade:v351];
      value38 = [(_SFPBCardSection *)v350 value];
      [value38 setCompactRowCardSection:v197];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:39];
      v199 = [[_SFPBWorldMapCardSection alloc] initWithFacade:v351];
      value39 = [(_SFPBCardSection *)v350 value];
      [value39 setWorldMapCardSection:v199];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:40];
      v201 = [[_SFPBAttributionFooterCardSection alloc] initWithFacade:v351];
      value40 = [(_SFPBCardSection *)v350 value];
      [value40 setAttributionFooterCardSection:v201];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:41];
      v203 = [[_SFPBGridCardSection alloc] initWithFacade:v351];
      value41 = [(_SFPBCardSection *)v350 value];
      [value41 setGridCardSection:v203];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:42];
      v205 = [[_SFPBPersonHeaderCardSection alloc] initWithFacade:v351];
      value42 = [(_SFPBCardSection *)v350 value];
      [value42 setPersonHeaderCardSection:v205];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:43];
      v207 = [[_SFPBColorBarCardSection alloc] initWithFacade:v351];
      value43 = [(_SFPBCardSection *)v350 value];
      [value43 setColorBarCardSection:v207];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:44];
      v209 = [[_SFPBSplitCardSection alloc] initWithFacade:v351];
      value44 = [(_SFPBCardSection *)v350 value];
      [value44 setSplitCardSection:v209];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:45];
      v211 = [[_SFPBLinkPresentationCardSection alloc] initWithFacade:v351];
      value45 = [(_SFPBCardSection *)v350 value];
      [value45 setLinkPresentationCardSection:v211];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:46];
      v213 = [[_SFPBFindMyCardSection alloc] initWithFacade:v351];
      value46 = [(_SFPBCardSection *)v350 value];
      [value46 setFindMyCardSection:v213];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:47];
      v215 = [[_SFPBHeroCardSection alloc] initWithFacade:v351];
      value47 = [(_SFPBCardSection *)v350 value];
      [value47 setHeroCardSection:v215];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:48];
      v217 = [[_SFPBNewsCardSection alloc] initWithFacade:v351];
      value48 = [(_SFPBCardSection *)v350 value];
      [value48 setNewsCardSection:v217];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:49];
      v219 = [[_SFPBMiniCardSection alloc] initWithFacade:v351];
      value49 = [(_SFPBCardSection *)v350 value];
      [value49 setMiniCardSection:v219];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:50];
      v221 = [[_SFPBInfoCardSection alloc] initWithFacade:v351];
      value50 = [(_SFPBCardSection *)v350 value];
      [value50 setInfoCardSection:v221];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:51];
      v223 = [[_SFPBCollectionCardSection alloc] initWithFacade:v351];
      value51 = [(_SFPBCardSection *)v350 value];
      [value51 setCollectionCardSection:v223];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:52];
      v225 = [[_SFPBCombinedCardSection alloc] initWithFacade:v351];
      value52 = [(_SFPBCardSection *)v350 value];
      [value52 setCombinedCardSection:v225];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:53];
      v227 = [[_SFPBResponseWrapperCardSection alloc] initWithFacade:v351];
      value53 = [(_SFPBCardSection *)v350 value];
      [value53 setResponseWrapperCardSection:v227];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:54];
      v229 = [[_SFPBListenToCardSection alloc] initWithFacade:v351];
      value54 = [(_SFPBCardSection *)v350 value];
      [value54 setListenToCardSection:v229];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:55];
      v231 = [[_SFPBWatchNowCardSection alloc] initWithFacade:v351];
      value55 = [(_SFPBCardSection *)v350 value];
      [value55 setWatchNowCardSection:v231];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:56];
      v233 = [[_SFPBStrokeAnimationCardSection alloc] initWithFacade:v351];
      value56 = [(_SFPBCardSection *)v350 value];
      [value56 setStrokeAnimationCardSection:v233];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:57];
      v235 = [[_SFPBButtonListCardSection alloc] initWithFacade:v351];
      value57 = [(_SFPBCardSection *)v350 value];
      [value57 setButtonListCardSection:v235];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:58];
      v237 = [[_SFPBCommandRowCardSection alloc] initWithFacade:v351];
      value58 = [(_SFPBCardSection *)v350 value];
      [value58 setCommandRowCardSection:v237];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:59];
      v239 = [[_SFPBLeadingTrailingCardSection alloc] initWithFacade:v351];
      value59 = [(_SFPBCardSection *)v350 value];
      [value59 setLeadingTrailingCardSection:v239];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:60];
      v241 = [[_SFPBHeroTitleCardSection alloc] initWithFacade:v351];
      value60 = [(_SFPBCardSection *)v350 value];
      [value60 setHeroTitleCardSection:v241];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:61];
      v243 = [[_SFPBArchiveViewCardSection alloc] initWithFacade:v351];
      value61 = [(_SFPBCardSection *)v350 value];
      [value61 setArchiveViewCardSection:v243];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:63];
      v245 = [[_SFPBAppIconCardSection alloc] initWithFacade:v351];
      value62 = [(_SFPBCardSection *)v350 value];
      [value62 setAppIconCardSection:v245];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:64];
      v247 = [[_SFPBLargeTitleDetailedRowCardSection alloc] initWithFacade:v351];
      value63 = [(_SFPBCardSection *)v350 value];
      [value63 setLargeTitleDetailedRowCardSection:v247];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:90];
      v249 = [[_SFPBSafariTableOfContentsCardSection alloc] initWithFacade:v351];
      value64 = [(_SFPBCardSection *)v350 value];
      [value64 setSafariTableOfContentsCardSection:v249];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:200];
      v251 = [[_SFPBRFSummaryItemShortNumberCardSection alloc] initWithFacade:v351];
      value65 = [(_SFPBCardSection *)v350 value];
      [value65 setRfSummaryItemShortNumberCardSection:v251];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:201];
      v253 = [[_SFPBRFSummaryItemTextCardSection alloc] initWithFacade:v351];
      value66 = [(_SFPBCardSection *)v350 value];
      [value66 setRfSummaryItemTextCardSection:v253];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:202];
      v255 = [[_SFPBRFSummaryItemStandardCardSection alloc] initWithFacade:v351];
      value67 = [(_SFPBCardSection *)v350 value];
      [value67 setRfSummaryItemStandardCardSection:v255];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:203];
      v257 = [[_SFPBRFFactItemShortNumberCardSection alloc] initWithFacade:v351];
      value68 = [(_SFPBCardSection *)v350 value];
      [value68 setRfFactItemShortNumberCardSection:v257];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:204];
      v259 = [[_SFPBRFFactItemStandardCardSection alloc] initWithFacade:v351];
      value69 = [(_SFPBCardSection *)v350 value];
      [value69 setRfFactItemStandardCardSection:v259];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:205];
      v261 = [[_SFPBRFLongItemStandardCardSection alloc] initWithFacade:v351];
      value70 = [(_SFPBCardSection *)v350 value];
      [value70 setRfLongItemStandardCardSection:v261];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:206];
      v263 = [[_SFPBRFPrimaryHeaderRichCardSection alloc] initWithFacade:v351];
      value71 = [(_SFPBCardSection *)v350 value];
      [value71 setRfPrimaryHeaderRichCardSection:v263];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:207];
      v265 = [[_SFPBRFPrimaryHeaderStandardCardSection alloc] initWithFacade:v351];
      value72 = [(_SFPBCardSection *)v350 value];
      [value72 setRfPrimaryHeaderStandardCardSection:v265];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:208];
      v267 = [[_SFPBRFReferenceFootnoteCardSection alloc] initWithFacade:v351];
      value73 = [(_SFPBCardSection *)v350 value];
      [value73 setRfReferenceFootnoteCardSection:v267];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:209];
      v269 = [[_SFPBRFReferenceRichCardSection alloc] initWithFacade:v351];
      value74 = [(_SFPBCardSection *)v350 value];
      [value74 setRfReferenceRichCardSection:v269];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:210];
      v271 = [[_SFPBRFSimpleItemRichCardSection alloc] initWithFacade:v351];
      value75 = [(_SFPBCardSection *)v350 value];
      [value75 setRfSimpleItemRichCardSection:v271];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:211];
      v273 = [[_SFPBRFSimpleItemStandardCardSection alloc] initWithFacade:v351];
      value76 = [(_SFPBCardSection *)v350 value];
      [value76 setRfSimpleItemStandardCardSection:v273];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:212];
      v275 = [[_SFPBRFSummaryItemAlignedTextCardSection alloc] initWithFacade:v351];
      value77 = [(_SFPBCardSection *)v350 value];
      [value77 setRfSummaryItemAlignedTextCardSection:v275];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:213];
      v277 = [[_SFPBRFExpandableStandardCardSection alloc] initWithFacade:v351];
      value78 = [(_SFPBCardSection *)v350 value];
      [value78 setRfExpandableStandardCardSection:v277];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:214];
      v279 = [[_SFPBRFFactItemButtonCardSection alloc] initWithFacade:v351];
      value79 = [(_SFPBCardSection *)v350 value];
      [value79 setRfFactItemButtonCardSection:v279];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:215];
      v281 = [[_SFPBRFFactItemHeroNumberCardSection alloc] initWithFacade:v351];
      value80 = [(_SFPBCardSection *)v350 value];
      [value80 setRfFactItemHeroNumberCardSection:v281];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:216];
      v283 = [[_SFPBRFPrimaryHeaderMarqueeCardSection alloc] initWithFacade:v351];
      value81 = [(_SFPBCardSection *)v350 value];
      [value81 setRfPrimaryHeaderMarqueeCardSection:v283];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:217];
      v285 = [[_SFPBRFSummaryItemDetailedTextCardSection alloc] initWithFacade:v351];
      value82 = [(_SFPBCardSection *)v350 value];
      [value82 setRfSummaryItemDetailedTextCardSection:v285];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:218];
      v287 = [[_SFPBRFSimpleItemPlayerCardSection alloc] initWithFacade:v351];
      value83 = [(_SFPBCardSection *)v350 value];
      [value83 setRfSimpleItemPlayerCardSection:v287];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:219];
      v289 = [[_SFPBRFSummaryItemPairCardSection alloc] initWithFacade:v351];
      value84 = [(_SFPBCardSection *)v350 value];
      [value84 setRfSummaryItemPairCardSection:v289];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:220];
      v291 = [[_SFPBRFSummaryItemPairNumberCardSection alloc] initWithFacade:v351];
      value85 = [(_SFPBCardSection *)v350 value];
      [value85 setRfSummaryItemPairNumberCardSection:v291];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:221];
      v293 = [[_SFPBRFFactItemShortHeroNumberCardSection alloc] initWithFacade:v351];
      value86 = [(_SFPBCardSection *)v350 value];
      [value86 setRfFactItemShortHeroNumberCardSection:v293];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:222];
      v295 = [[_SFPBRFFactItemDetailedNumberCardSection alloc] initWithFacade:v351];
      value87 = [(_SFPBCardSection *)v350 value];
      [value87 setRfFactItemDetailedNumberCardSection:v295];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:223];
      v297 = [[_SFPBRFFactItemHeroButtonCardSection alloc] initWithFacade:v351];
      value88 = [(_SFPBCardSection *)v350 value];
      [value88 setRfFactItemHeroButtonCardSection:v297];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:224];
      v299 = [[_SFPBRFFactItemImageRightCardSection alloc] initWithFacade:v351];
      value89 = [(_SFPBCardSection *)v350 value];
      [value89 setRfFactItemImageRightCardSection:v299];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:225];
      v301 = [[_SFPBRFSummaryItemSwitchV2CardSection alloc] initWithFacade:v351];
      value90 = [(_SFPBCardSection *)v350 value];
      [value90 setRfSummaryItemSwitchV2CardSection:v301];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:226];
      v303 = [[_SFPBRFTableHeaderCardSection alloc] initWithFacade:v351];
      value91 = [(_SFPBCardSection *)v350 value];
      [value91 setRfTableHeaderCardSection:v303];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:227];
      v305 = [[_SFPBRFTableRowCardSection alloc] initWithFacade:v351];
      value92 = [(_SFPBCardSection *)v350 value];
      [value92 setRfTableRowCardSection:v305];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:228];
      v307 = [[_SFPBRFSimpleItemVisualElementCardSection alloc] initWithFacade:v351];
      value93 = [(_SFPBCardSection *)v350 value];
      [value93 setRfSimpleItemVisualElementCardSection:v307];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:229];
      v309 = [[_SFPBRFSummaryItemPlayerCardSection alloc] initWithFacade:v351];
      value94 = [(_SFPBCardSection *)v350 value];
      [value94 setRfSummaryItemPlayerCardSection:v309];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:230];
      v311 = [[_SFPBRFSummaryItemImageRightCardSection alloc] initWithFacade:v351];
      value95 = [(_SFPBCardSection *)v350 value];
      [value95 setRfSummaryItemImageRightCardSection:v311];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:231];
      v313 = [[_SFPBRFSummaryItemButtonCardSection alloc] initWithFacade:v351];
      value96 = [(_SFPBCardSection *)v350 value];
      [value96 setRfSummaryItemButtonCardSection:v313];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:232];
      v315 = [[_SFPBRFSimpleItemReverseRichCardSection alloc] initWithFacade:v351];
      value97 = [(_SFPBCardSection *)v350 value];
      [value97 setRfSimpleItemReverseRichCardSection:v315];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:233];
      v317 = [[_SFPBRFSimpleItemRichSearchResultCardSection alloc] initWithFacade:v351];
      value98 = [(_SFPBCardSection *)v350 value];
      [value98 setRfSimpleItemRichSearchResultCardSection:v317];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:234];
      v319 = [[_SFPBRFPrimaryHeaderStackedImageCardSection alloc] initWithFacade:v351];
      value99 = [(_SFPBCardSection *)v350 value];
      [value99 setRfPrimaryHeaderStackedImageCardSection:v319];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:235];
      v321 = [[_SFPBRFReferenceItemLogoCardSection alloc] initWithFacade:v351];
      value100 = [(_SFPBCardSection *)v350 value];
      [value100 setRfReferenceItemLogoCardSection:v321];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:236];
      v323 = [[_SFPBRFReferenceItemButtonCardSection alloc] initWithFacade:v351];
      value101 = [(_SFPBCardSection *)v350 value];
      [value101 setRfReferenceItemButtonCardSection:v323];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:237];
      v325 = [[_SFPBRFButtonCardSection alloc] initWithFacade:v351];
      value102 = [(_SFPBCardSection *)v350 value];
      [value102 setRfButtonCardSection:v325];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:238];
      v327 = [[_SFPBRFBinaryButtonCardSection alloc] initWithFacade:v351];
      value103 = [(_SFPBCardSection *)v350 value];
      [value103 setRfBinaryButtonCardSection:v327];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:239];
      v329 = [[_SFPBRFReferenceCenteredCardSection alloc] initWithFacade:v351];
      value104 = [(_SFPBCardSection *)v350 value];
      [value104 setRfReferenceCenteredCardSection:v329];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:240];
      v331 = [[_SFPBRFSecondaryHeaderStandardCardSection alloc] initWithFacade:v351];
      value105 = [(_SFPBCardSection *)v350 value];
      [value105 setRfSecondaryHeaderStandardCardSection:v331];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:241];
      v333 = [[_SFPBRFSecondaryHeaderEmphasizedCardSection alloc] initWithFacade:v351];
      value106 = [(_SFPBCardSection *)v350 value];
      [value106 setRfSecondaryHeaderEmphasizedCardSection:v333];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:242];
      v335 = [[_SFPBRFMapCardSection alloc] initWithFacade:v351];
      value107 = [(_SFPBCardSection *)v350 value];
      [value107 setRfMapCardSection:v335];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:243];
      v337 = [[_SFPBRFReferenceStandardCardSection alloc] initWithFacade:v351];
      value108 = [(_SFPBCardSection *)v350 value];
      [value108 setRfReferenceStandardCardSection:v337];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:744];
      v339 = [[_SFPBRFMultiButtonCardSection alloc] initWithFacade:v351];
      value109 = [(_SFPBCardSection *)v350 value];
      [value109 setRfMultiButtonCardSection:v339];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:745];
      v341 = [[_SFPBRFDisambiguationTitleCardSection alloc] initWithFacade:v351];
      value110 = [(_SFPBCardSection *)v350 value];
      [value110 setRfDisambiguationTitleCardSection:v341];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:246];
      v343 = [[_SFPBRFSummaryItemExpandableCardSection alloc] initWithFacade:v351];
      value111 = [(_SFPBCardSection *)v350 value];
      [value111 setRfSummaryItemExpandableCardSection:v343];
    }

    v345 = v350;
  }

  v346 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCardSection)initWithDictionary:(id)dictionary
{
  v221 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v211.receiver = self;
  v211.super_class = _SFPBCardSection;
  v5 = [(_SFPBCardSection *)&v211 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v7 = 0x1E696A000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setType:](v5, "setType:", [v6 intValue]);
    }

    v147 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBCardSectionValue alloc] initWithDictionary:v8];
      [(_SFPBCardSection *)v5 setValue:v9];
    }

    v146 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"nextCard"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBCard alloc] initWithDictionary:v10];
      [(_SFPBCardSection *)v5 setNextCard:v11];
    }

    v145 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"commands"];
    v13 = 0x1E695D000uLL;
    objc_opt_class();
    v174 = v12;
    if (objc_opt_isKindOfClass())
    {
      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v207 objects:v220 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v208;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v208 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v207 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[_SFPBAbstractCommand alloc] initWithDictionary:v19];
              [(_SFPBCardSection *)v5 addCommands:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v207 objects:v220 count:16];
        }

        while (v16);
      }

      v7 = 0x1E696A000;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"parameterKeyPaths"];
    objc_opt_class();
    v173 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = dictionaryCopy;
      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v203 objects:v219 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v204;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v204 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v203 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [v28 copy];
              [(_SFPBCardSection *)v5 addParameterKeyPaths:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v203 objects:v219 count:16];
        }

        while (v25);
      }

      dictionaryCopy = v22;
      v13 = 0x1E695D000uLL;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"cardSectionId"];
    objc_opt_class();
    v172 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(_SFPBCardSection *)v5 setCardSectionId:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"resultIdentifier"];
    objc_opt_class();
    v171 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [v32 copy];
      [(_SFPBCardSection *)v5 setResultIdentifier:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"userReportRequest"];
    objc_opt_class();
    v170 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBUserReportRequest alloc] initWithDictionary:v34];
      [(_SFPBCardSection *)v5 setUserReportRequest:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"command"];
    objc_opt_class();
    v169 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBCommand alloc] initWithDictionary:v36];
      [(_SFPBCardSection *)v5 setCommand:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"previewCommand"];
    objc_opt_class();
    v168 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBCommand alloc] initWithDictionary:v38];
      [(_SFPBCardSection *)v5 setPreviewCommand:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"previewButtonItems"];
    objc_opt_class();
    v167 = v40;
    if (objc_opt_isKindOfClass())
    {
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v41 = v40;
      v42 = [v41 countByEnumeratingWithState:&v199 objects:v218 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v200;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v200 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v199 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v47 = [[_SFPBButtonItem alloc] initWithDictionary:v46];
              [(_SFPBCardSection *)v5 addPreviewButtonItems:v47];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v199 objects:v218 count:16];
        }

        while (v43);
      }

      v13 = 0x1E695D000uLL;
      v7 = 0x1E696A000uLL;
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"cardSectionDetail"];
    objc_opt_class();
    v166 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [v48 copy];
      [(_SFPBCardSection *)v5 setCardSectionDetail:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"previewButtonItemsTitle"];
    objc_opt_class();
    v165 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [v50 copy];
      [(_SFPBCardSection *)v5 setPreviewButtonItemsTitle:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v164 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBColor alloc] initWithDictionary:v52];
      [(_SFPBCardSection *)v5 setBackgroundColor:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"shouldHideInAmbientMode"];
    v55 = *(v7 + 3480);
    objc_opt_class();
    v163 = v54;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setShouldHideInAmbientMode:](v5, "setShouldHideInAmbientMode:", [v54 BOOLValue]);
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"leadingSwipeButtonItems"];
    objc_opt_class();
    v162 = v56;
    if (objc_opt_isKindOfClass())
    {
      v197 = 0u;
      v198 = 0u;
      v195 = 0u;
      v196 = 0u;
      v57 = v56;
      v58 = [v57 countByEnumeratingWithState:&v195 objects:v217 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v196;
        do
        {
          for (m = 0; m != v59; ++m)
          {
            if (*v196 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v62 = *(*(&v195 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v63 = [[_SFPBButtonItem alloc] initWithDictionary:v62];
              [(_SFPBCardSection *)v5 addLeadingSwipeButtonItems:v63];
            }
          }

          v59 = [v57 countByEnumeratingWithState:&v195 objects:v217 count:16];
        }

        while (v59);
      }

      v13 = 0x1E695D000uLL;
      v7 = 0x1E696A000;
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"trailingSwipeButtonItems"];
    objc_opt_class();
    v161 = v64;
    if (objc_opt_isKindOfClass())
    {
      v193 = 0u;
      v194 = 0u;
      v191 = 0u;
      v192 = 0u;
      v65 = v64;
      v66 = [v65 countByEnumeratingWithState:&v191 objects:v216 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v192;
        do
        {
          for (n = 0; n != v67; ++n)
          {
            if (*v192 != v68)
            {
              objc_enumerationMutation(v65);
            }

            v70 = *(*(&v191 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v71 = [[_SFPBButtonItem alloc] initWithDictionary:v70];
              [(_SFPBCardSection *)v5 addTrailingSwipeButtonItems:v71];
            }
          }

          v67 = [v65 countByEnumeratingWithState:&v191 objects:v216 count:16];
        }

        while (v67);
      }

      v13 = 0x1E695D000uLL;
      v7 = 0x1E696A000;
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    v160 = v72;
    if (objc_opt_isKindOfClass())
    {
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v73 = v72;
      v74 = [v73 countByEnumeratingWithState:&v187 objects:v215 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v188;
        do
        {
          for (ii = 0; ii != v75; ++ii)
          {
            if (*v188 != v76)
            {
              objc_enumerationMutation(v73);
            }

            v78 = *(*(&v187 + 1) + 8 * ii);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v79 = [[_SFPBPunchout alloc] initWithDictionary:v78];
              [(_SFPBCardSection *)v5 addPunchoutOptions:v79];
            }
          }

          v75 = [v73 countByEnumeratingWithState:&v187 objects:v215 count:16];
        }

        while (v75);
      }

      v13 = 0x1E695D000uLL;
      v7 = 0x1E696A000uLL;
    }

    v80 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    v159 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [v80 copy];
      [(_SFPBCardSection *)v5 setPunchoutPickerTitle:v81];
    }

    v82 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    v158 = v82;
    if (objc_opt_isKindOfClass())
    {
      v83 = [v82 copy];
      [(_SFPBCardSection *)v5 setPunchoutPickerDismissText:v83];
    }

    v84 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    v85 = *(v7 + 3480);
    objc_opt_class();
    v157 = v84;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v84 BOOLValue]);
    }

    v86 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    v87 = *(v7 + 3480);
    objc_opt_class();
    v156 = v86;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v86 BOOLValue]);
    }

    v88 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    v89 = *(v7 + 3480);
    objc_opt_class();
    v155 = v88;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v88 BOOLValue]);
    }

    v90 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    v91 = *(v7 + 3480);
    objc_opt_class();
    v154 = v90;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v90 intValue]);
    }

    v92 = [dictionaryCopy objectForKeyedSubscript:@"referencedCommands"];
    objc_opt_class();
    v153 = v92;
    if (objc_opt_isKindOfClass())
    {
      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v93 = v92;
      v94 = [v93 countByEnumeratingWithState:&v183 objects:v214 count:16];
      if (v94)
      {
        v95 = v94;
        v96 = *v184;
        do
        {
          for (jj = 0; jj != v95; ++jj)
          {
            if (*v184 != v96)
            {
              objc_enumerationMutation(v93);
            }

            v98 = *(*(&v183 + 1) + 8 * jj);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v99 = [[_SFPBCommand alloc] initWithDictionary:v98];
              [(_SFPBCardSection *)v5 addReferencedCommands:v99];
            }
          }

          v95 = [v93 countByEnumeratingWithState:&v183 objects:v214 count:16];
        }

        while (v95);
      }

      v13 = 0x1E695D000;
      v7 = 0x1E696A000uLL;
    }

    v100 = [dictionaryCopy objectForKeyedSubscript:@"forceEnable3DTouch"];
    v101 = *(v7 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setForceEnable3DTouch:](v5, "setForceEnable3DTouch:", [v100 BOOLValue]);
    }

    v102 = [dictionaryCopy objectForKeyedSubscript:@"shouldShowInSmartDialog"];
    v103 = *(v7 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setShouldShowInSmartDialog:](v5, "setShouldShowInSmartDialog:", [v102 BOOLValue]);
    }

    v104 = [dictionaryCopy objectForKeyedSubscript:@"appEntityAnnotation"];
    objc_opt_class();
    v152 = v104;
    if (objc_opt_isKindOfClass())
    {
      v105 = [[_SFPBAppEntityAnnotation alloc] initWithDictionary:v104];
      [(_SFPBCardSection *)v5 setAppEntityAnnotation:v105];
    }

    v106 = [dictionaryCopy objectForKeyedSubscript:@"emphasisSubjectId"];
    objc_opt_class();
    v151 = v106;
    if (objc_opt_isKindOfClass())
    {
      v107 = [v106 copy];
      [(_SFPBCardSection *)v5 setEmphasisSubjectId:v107];
    }

    v108 = [dictionaryCopy objectForKeyedSubscript:@"increasedContrastMode"];
    v109 = *(v7 + 3480);
    objc_opt_class();
    v150 = v108;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setIncreasedContrastMode:](v5, "setIncreasedContrastMode:", [v108 intValue]);
    }

    v110 = [dictionaryCopy objectForKeyedSubscript:@"secondaryCommand"];
    objc_opt_class();
    v149 = v110;
    if (objc_opt_isKindOfClass())
    {
      v111 = [[_SFPBCommand alloc] initWithDictionary:v110];
      [(_SFPBCardSection *)v5 setSecondaryCommand:v111];
    }

    v112 = [dictionaryCopy objectForKeyedSubscript:@"requiredLevelOfDetail"];
    v113 = *(v7 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setRequiredLevelOfDetail:](v5, "setRequiredLevelOfDetail:", [v112 intValue]);
    }

    v143 = v102;
    v144 = v100;
    v114 = [dictionaryCopy objectForKeyedSubscript:@"racFeedbackSubfeatureId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v115 = [v114 copy];
      [(_SFPBCardSection *)v5 setRacFeedbackSubfeatureId:v115];
    }

    v116 = [dictionaryCopy objectForKeyedSubscript:@"racFeedbackLoggingContent"];
    objc_opt_class();
    v148 = dictionaryCopy;
    v141 = v114;
    v142 = v112;
    v140 = v116;
    if (objc_opt_isKindOfClass())
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      racFeedbackLoggingContent = v5->_racFeedbackLoggingContent;
      v5->_racFeedbackLoggingContent = dictionary;

      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v119 = v116;
      v120 = [v119 countByEnumeratingWithState:&v179 objects:v213 count:16];
      if (v120)
      {
        v121 = v120;
        v122 = *v180;
        do
        {
          for (kk = 0; kk != v121; ++kk)
          {
            if (*v180 != v122)
            {
              objc_enumerationMutation(v119);
            }

            v124 = *(*(&v179 + 1) + 8 * kk);
            v125 = [v119 objectForKeyedSubscript:v124];
            [(NSDictionary *)v5->_racFeedbackLoggingContent setObject:v125 forKey:v124];
          }

          v121 = [v119 countByEnumeratingWithState:&v179 objects:v213 count:16];
        }

        while (v121);
      }

      dictionaryCopy = v148;
      v13 = 0x1E695D000uLL;
      v114 = v141;
      v116 = v140;
    }

    v126 = [dictionaryCopy objectForKeyedSubscript:@"copyableItems"];
    v127 = *(v13 + 3784);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      v128 = v126;
      v129 = [v128 countByEnumeratingWithState:&v175 objects:v212 count:16];
      if (v129)
      {
        v130 = v129;
        v131 = *v176;
        do
        {
          for (mm = 0; mm != v130; ++mm)
          {
            if (*v176 != v131)
            {
              objc_enumerationMutation(v128);
            }

            v133 = *(*(&v175 + 1) + 8 * mm);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v134 = [[_SFPBCopyItem alloc] initWithDictionary:v133];
              [(_SFPBCardSection *)v5 addCopyableItems:v134];
            }
          }

          v130 = [v128 countByEnumeratingWithState:&v175 objects:v212 count:16];
        }

        while (v130);
      }

      dictionaryCopy = v148;
      v114 = v141;
      v112 = v142;
      v116 = v140;
    }

    v135 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v136 = [v135 copy];
      [(_SFPBCardSection *)v5 setApplicationBundleIdentifier:v136];
    }

    v137 = v5;
  }

  v138 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v170 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appEntityAnnotation)
  {
    appEntityAnnotation = [(_SFPBCardSection *)self appEntityAnnotation];
    dictionaryRepresentation = [appEntityAnnotation dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appEntityAnnotation"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appEntityAnnotation"];
    }
  }

  if (self->_applicationBundleIdentifier)
  {
    applicationBundleIdentifier = [(_SFPBCardSection *)self applicationBundleIdentifier];
    v8 = [applicationBundleIdentifier copy];
    [dictionary setObject:v8 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBCardSection *)self backgroundColor];
    dictionaryRepresentation2 = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v12 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_cardSectionDetail)
  {
    cardSectionDetail = [(_SFPBCardSection *)self cardSectionDetail];
    v14 = [cardSectionDetail copy];
    [dictionary setObject:v14 forKeyedSubscript:@"cardSectionDetail"];
  }

  if (self->_cardSectionId)
  {
    cardSectionId = [(_SFPBCardSection *)self cardSectionId];
    v16 = [cardSectionId copy];
    [dictionary setObject:v16 forKeyedSubscript:@"cardSectionId"];
  }

  if (self->_command)
  {
    command = [(_SFPBCardSection *)self command];
    dictionaryRepresentation3 = [command dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"command"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"command"];
    }
  }

  v129 = dictionary;
  if ([(NSArray *)self->_commands count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v21 = self->_commands;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v158 objects:v169 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v159;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v159 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation4 = [*(*(&v158 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null4];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v158 objects:v169 count:16];
      }

      while (v23);
    }

    dictionary = v129;
    [v129 setObject:array forKeyedSubscript:@"commands"];
  }

  if ([(NSArray *)self->_copyableItems count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v29 = self->_copyableItems;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v154 objects:v168 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v155;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v155 != v32)
          {
            objc_enumerationMutation(v29);
          }

          dictionaryRepresentation5 = [*(*(&v154 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array2 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null5];
          }
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v154 objects:v168 count:16];
      }

      while (v31);
    }

    dictionary = v129;
    [v129 setObject:array2 forKeyedSubscript:@"copyableItems"];
  }

  if (self->_emphasisSubjectId)
  {
    emphasisSubjectId = [(_SFPBCardSection *)self emphasisSubjectId];
    v37 = [emphasisSubjectId copy];
    [dictionary setObject:v37 forKeyedSubscript:@"emphasisSubjectId"];
  }

  if (self->_forceEnable3DTouch)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection forceEnable3DTouch](self, "forceEnable3DTouch")}];
    [dictionary setObject:v38 forKeyedSubscript:@"forceEnable3DTouch"];
  }

  if (self->_hasBottomPadding)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v39 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v40 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_increasedContrastMode)
  {
    increasedContrastMode = [(_SFPBCardSection *)self increasedContrastMode];
    if (increasedContrastMode >= 4)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", increasedContrastMode];
    }

    else
    {
      v42 = off_1E7ACE560[increasedContrastMode];
    }

    [dictionary setObject:v42 forKeyedSubscript:@"increasedContrastMode"];
  }

  if ([(NSArray *)self->_leadingSwipeButtonItems count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v44 = self->_leadingSwipeButtonItems;
    v45 = [(NSArray *)v44 countByEnumeratingWithState:&v150 objects:v167 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v151;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v151 != v47)
          {
            objc_enumerationMutation(v44);
          }

          dictionaryRepresentation6 = [*(*(&v150 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation6)
          {
            [array3 addObject:dictionaryRepresentation6];
          }

          else
          {
            null6 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null6];
          }
        }

        v46 = [(NSArray *)v44 countByEnumeratingWithState:&v150 objects:v167 count:16];
      }

      while (v46);
    }

    dictionary = v129;
    [v129 setObject:array3 forKeyedSubscript:@"leadingSwipeButtonItems"];
  }

  if (self->_nextCard)
  {
    nextCard = [(_SFPBCardSection *)self nextCard];
    dictionaryRepresentation7 = [nextCard dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"nextCard"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"nextCard"];
    }
  }

  if (self->_parameterKeyPaths)
  {
    parameterKeyPaths = [(_SFPBCardSection *)self parameterKeyPaths];
    v55 = [parameterKeyPaths copy];
    [dictionary setObject:v55 forKeyedSubscript:@"parameterKeyPaths"];
  }

  if ([(NSArray *)self->_previewButtonItems count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v57 = self->_previewButtonItems;
    v58 = [(NSArray *)v57 countByEnumeratingWithState:&v146 objects:v166 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v147;
      do
      {
        for (m = 0; m != v59; ++m)
        {
          if (*v147 != v60)
          {
            objc_enumerationMutation(v57);
          }

          dictionaryRepresentation8 = [*(*(&v146 + 1) + 8 * m) dictionaryRepresentation];
          if (dictionaryRepresentation8)
          {
            [array4 addObject:dictionaryRepresentation8];
          }

          else
          {
            null8 = [MEMORY[0x1E695DFB0] null];
            [array4 addObject:null8];
          }
        }

        v59 = [(NSArray *)v57 countByEnumeratingWithState:&v146 objects:v166 count:16];
      }

      while (v59);
    }

    dictionary = v129;
    [v129 setObject:array4 forKeyedSubscript:@"previewButtonItems"];
  }

  if (self->_previewButtonItemsTitle)
  {
    previewButtonItemsTitle = [(_SFPBCardSection *)self previewButtonItemsTitle];
    v65 = [previewButtonItemsTitle copy];
    [dictionary setObject:v65 forKeyedSubscript:@"previewButtonItemsTitle"];
  }

  if (self->_previewCommand)
  {
    previewCommand = [(_SFPBCardSection *)self previewCommand];
    dictionaryRepresentation9 = [previewCommand dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"previewCommand"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"previewCommand"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v70 = self->_punchoutOptions;
    v71 = [(NSArray *)v70 countByEnumeratingWithState:&v142 objects:v165 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v143;
      do
      {
        for (n = 0; n != v72; ++n)
        {
          if (*v143 != v73)
          {
            objc_enumerationMutation(v70);
          }

          dictionaryRepresentation10 = [*(*(&v142 + 1) + 8 * n) dictionaryRepresentation];
          if (dictionaryRepresentation10)
          {
            [array5 addObject:dictionaryRepresentation10];
          }

          else
          {
            null10 = [MEMORY[0x1E695DFB0] null];
            [array5 addObject:null10];
          }
        }

        v72 = [(NSArray *)v70 countByEnumeratingWithState:&v142 objects:v165 count:16];
      }

      while (v72);
    }

    dictionary = v129;
    [v129 setObject:array5 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBCardSection *)self punchoutPickerDismissText];
    v78 = [punchoutPickerDismissText copy];
    [dictionary setObject:v78 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBCardSection *)self punchoutPickerTitle];
    v80 = [punchoutPickerTitle copy];
    [dictionary setObject:v80 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v82 = self->_racFeedbackLoggingContent;
  v83 = [(NSDictionary *)v82 countByEnumeratingWithState:&v138 objects:v164 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v139;
    do
    {
      for (ii = 0; ii != v84; ++ii)
      {
        if (*v139 != v85)
        {
          objc_enumerationMutation(v82);
        }

        v87 = *(*(&v138 + 1) + 8 * ii);
        v88 = [(NSDictionary *)self->_racFeedbackLoggingContent objectForKeyedSubscript:v87];
        [dictionary2 setObject:v88 forKeyedSubscript:v87];
      }

      v84 = [(NSDictionary *)v82 countByEnumeratingWithState:&v138 objects:v164 count:16];
    }

    while (v84);
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:@"racFeedbackLoggingContent"];
  if (self->_racFeedbackSubfeatureId)
  {
    racFeedbackSubfeatureId = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
    v90 = [racFeedbackSubfeatureId copy];
    [dictionary setObject:v90 forKeyedSubscript:@"racFeedbackSubfeatureId"];
  }

  if ([(NSArray *)self->_referencedCommands count])
  {
    array6 = [MEMORY[0x1E695DF70] array];
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v92 = self->_referencedCommands;
    v93 = [(NSArray *)v92 countByEnumeratingWithState:&v134 objects:v163 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v135;
      do
      {
        for (jj = 0; jj != v94; ++jj)
        {
          if (*v135 != v95)
          {
            objc_enumerationMutation(v92);
          }

          dictionaryRepresentation11 = [*(*(&v134 + 1) + 8 * jj) dictionaryRepresentation];
          if (dictionaryRepresentation11)
          {
            [array6 addObject:dictionaryRepresentation11];
          }

          else
          {
            null11 = [MEMORY[0x1E695DFB0] null];
            [array6 addObject:null11];
          }
        }

        v94 = [(NSArray *)v92 countByEnumeratingWithState:&v134 objects:v163 count:16];
      }

      while (v94);
    }

    dictionary = v129;
    [v129 setObject:array6 forKeyedSubscript:@"referencedCommands"];
  }

  if (self->_requiredLevelOfDetail)
  {
    requiredLevelOfDetail = [(_SFPBCardSection *)self requiredLevelOfDetail];
    if (requiredLevelOfDetail >= 4)
    {
      v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", requiredLevelOfDetail];
    }

    else
    {
      v100 = off_1E7ACE560[requiredLevelOfDetail];
    }

    [dictionary setObject:v100 forKeyedSubscript:@"requiredLevelOfDetail"];
  }

  if (self->_resultIdentifier)
  {
    resultIdentifier = [(_SFPBCardSection *)self resultIdentifier];
    v102 = [resultIdentifier copy];
    [dictionary setObject:v102 forKeyedSubscript:@"resultIdentifier"];
  }

  if (self->_secondaryCommand)
  {
    secondaryCommand = [(_SFPBCardSection *)self secondaryCommand];
    dictionaryRepresentation12 = [secondaryCommand dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"secondaryCommand"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"secondaryCommand"];
    }
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v106 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v106 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_shouldHideInAmbientMode)
  {
    v108 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection shouldHideInAmbientMode](self, "shouldHideInAmbientMode")}];
    [dictionary setObject:v108 forKeyedSubscript:@"shouldHideInAmbientMode"];
  }

  if (self->_shouldShowInSmartDialog)
  {
    v109 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection shouldShowInSmartDialog](self, "shouldShowInSmartDialog")}];
    [dictionary setObject:v109 forKeyedSubscript:@"shouldShowInSmartDialog"];
  }

  if ([(NSArray *)self->_trailingSwipeButtonItems count])
  {
    array7 = [MEMORY[0x1E695DF70] array];
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v111 = self->_trailingSwipeButtonItems;
    v112 = [(NSArray *)v111 countByEnumeratingWithState:&v130 objects:v162 count:16];
    if (v112)
    {
      v113 = v112;
      v114 = *v131;
      do
      {
        for (kk = 0; kk != v113; ++kk)
        {
          if (*v131 != v114)
          {
            objc_enumerationMutation(v111);
          }

          dictionaryRepresentation13 = [*(*(&v130 + 1) + 8 * kk) dictionaryRepresentation];
          if (dictionaryRepresentation13)
          {
            [array7 addObject:dictionaryRepresentation13];
          }

          else
          {
            null13 = [MEMORY[0x1E695DFB0] null];
            [array7 addObject:null13];
          }
        }

        v113 = [(NSArray *)v111 countByEnumeratingWithState:&v130 objects:v162 count:16];
      }

      while (v113);
    }

    dictionary = v129;
    [v129 setObject:array7 forKeyedSubscript:@"trailingSwipeButtonItems"];
  }

  if (self->_type)
  {
    type = [(_SFPBCardSection *)self type];
    v118 = @"0";
    switch(type)
    {
      case 0:
        break;
      case 1:
        v118 = @"1";
        break;
      case 2:
        v118 = @"2";
        break;
      case 3:
        v118 = @"3";
        break;
      case 4:
        v118 = @"4";
        break;
      case 5:
        v118 = @"5";
        break;
      case 6:
        v118 = @"6";
        break;
      case 7:
        v118 = @"7";
        break;
      case 8:
        v118 = @"8";
        break;
      case 9:
        v118 = @"9";
        break;
      case 10:
        v118 = @"10";
        break;
      case 11:
        v118 = @"11";
        break;
      case 12:
        v118 = @"12";
        break;
      case 13:
        v118 = @"13";
        break;
      case 14:
        v118 = @"14";
        break;
      case 15:
        v118 = @"15";
        break;
      case 16:
        v118 = @"16";
        break;
      case 17:
        v118 = @"17";
        break;
      case 18:
        v118 = @"18";
        break;
      case 19:
        v118 = @"19";
        break;
      case 20:
        v118 = @"20";
        break;
      case 21:
        v118 = @"21";
        break;
      case 22:
        v118 = @"22";
        break;
      case 23:
        v118 = @"23";
        break;
      case 24:
        v118 = @"24";
        break;
      case 25:
        v118 = @"25";
        break;
      case 26:
        v118 = @"26";
        break;
      case 27:
        v118 = @"27";
        break;
      case 28:
        v118 = @"28";
        break;
      case 29:
        v118 = @"29";
        break;
      case 30:
        v118 = @"30";
        break;
      case 31:
        v118 = @"31";
        break;
      case 32:
        v118 = @"32";
        break;
      case 33:
        v118 = @"33";
        break;
      case 34:
        v118 = @"34";
        break;
      case 35:
        v118 = @"35";
        break;
      case 36:
        v118 = @"36";
        break;
      case 37:
        v118 = @"37";
        break;
      case 38:
        v118 = @"38";
        break;
      case 39:
        v118 = @"39";
        break;
      case 40:
        v118 = @"40";
        break;
      case 41:
        v118 = @"41";
        break;
      case 42:
        v118 = @"42";
        break;
      case 43:
        v118 = @"43";
        break;
      case 44:
        v118 = @"44";
        break;
      case 45:
        v118 = @"45";
        break;
      case 46:
        v118 = @"46";
        break;
      case 47:
        v118 = @"47";
        break;
      case 48:
        v118 = @"48";
        break;
      case 49:
        v118 = @"49";
        break;
      case 50:
        v118 = @"50";
        break;
      case 51:
        v118 = @"51";
        break;
      case 52:
        v118 = @"52";
        break;
      case 53:
        v118 = @"53";
        break;
      case 54:
        v118 = @"54";
        break;
      case 55:
        v118 = @"55";
        break;
      case 56:
        v118 = @"56";
        break;
      case 57:
        v118 = @"57";
        break;
      case 58:
        v118 = @"58";
        break;
      case 59:
        v118 = @"59";
        break;
      case 60:
        v118 = @"60";
        break;
      case 61:
        v118 = @"61";
        break;
      case 63:
        v118 = @"63";
        break;
      case 64:
        v118 = @"64";
        break;
      case 200:
        v118 = @"200";
        break;
      case 201:
        v118 = @"201";
        break;
      case 202:
        v118 = @"202";
        break;
      case 203:
        v118 = @"203";
        break;
      case 204:
        v118 = @"204";
        break;
      case 205:
        v118 = @"205";
        break;
      case 206:
        v118 = @"206";
        break;
      case 207:
        v118 = @"207";
        break;
      case 208:
        v118 = @"208";
        break;
      case 209:
        v118 = @"209";
        break;
      case 210:
        v118 = @"210";
        break;
      case 211:
        v118 = @"211";
        break;
      case 212:
        v118 = @"212";
        break;
      case 213:
        v118 = @"213";
        break;
      case 214:
        v118 = @"214";
        break;
      case 215:
        v118 = @"215";
        break;
      case 216:
        v118 = @"216";
        break;
      case 217:
        v118 = @"217";
        break;
      case 218:
        v118 = @"218";
        break;
      case 219:
        v118 = @"219";
        break;
      case 220:
        v118 = @"220";
        break;
      case 221:
        v118 = @"221";
        break;
      case 222:
        v118 = @"222";
        break;
      case 223:
        v118 = @"223";
        break;
      case 224:
        v118 = @"224";
        break;
      case 225:
        v118 = @"225";
        break;
      case 226:
        v118 = @"226";
        break;
      case 227:
        v118 = @"227";
        break;
      case 228:
        v118 = @"228";
        break;
      case 229:
        v118 = @"229";
        break;
      case 230:
        v118 = @"230";
        break;
      case 231:
        v118 = @"231";
        break;
      case 232:
        v118 = @"232";
        break;
      case 233:
        v118 = @"233";
        break;
      case 234:
        v118 = @"234";
        break;
      case 235:
        v118 = @"235";
        break;
      case 236:
        v118 = @"236";
        break;
      case 237:
        v118 = @"237";
        break;
      case 238:
        v118 = @"238";
        break;
      case 239:
        v118 = @"239";
        break;
      case 240:
        v118 = @"240";
        break;
      case 241:
        v118 = @"241";
        break;
      case 242:
        v118 = @"242";
        break;
      case 243:
        v118 = @"243";
        break;
      case 244:
        v118 = @"244";
        break;
      case 245:
        v118 = @"245";
        break;
      case 246:
        v118 = @"246";
        break;
      default:
        v118 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
        break;
    }

    [dictionary setObject:v118 forKeyedSubscript:@"type"];
  }

  if (self->_userReportRequest)
  {
    userReportRequest = [(_SFPBCardSection *)self userReportRequest];
    dictionaryRepresentation14 = [userReportRequest dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"userReportRequest"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"userReportRequest"];
    }
  }

  if (self->_value)
  {
    value = [(_SFPBCardSection *)self value];
    dictionaryRepresentation15 = [value dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"value"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"value"];
    }
  }

  v126 = dictionary;

  v127 = *MEMORY[0x1E69E9840];
  return dictionary;
}

- (unint64_t)hash
{
  v42 = 2654435761 * self->_type;
  v41 = [(_SFPBCardSectionValue *)self->_value hash];
  v40 = [(_SFPBCard *)self->_nextCard hash];
  v39 = [(NSArray *)self->_commands hash];
  v38 = [(NSArray *)self->_parameterKeyPaths hash];
  v37 = [(NSString *)self->_cardSectionId hash];
  v36 = [(NSString *)self->_resultIdentifier hash];
  v35 = [(_SFPBUserReportRequest *)self->_userReportRequest hash];
  v34 = [(_SFPBCommand *)self->_command hash];
  v33 = [(_SFPBCommand *)self->_previewCommand hash];
  v32 = [(NSArray *)self->_previewButtonItems hash];
  v31 = [(NSString *)self->_cardSectionDetail hash];
  v30 = [(NSString *)self->_previewButtonItemsTitle hash];
  v3 = [(_SFPBColor *)self->_backgroundColor hash];
  if (self->_shouldHideInAmbientMode)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v28 = v4;
  v29 = v3;
  v27 = [(NSArray *)self->_leadingSwipeButtonItems hash];
  v26 = [(NSArray *)self->_trailingSwipeButtonItems hash];
  v25 = [(NSArray *)self->_punchoutOptions hash];
  v24 = [(NSString *)self->_punchoutPickerTitle hash];
  v5 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v22 = v6;
  v23 = v5;
  if (self->_hasTopPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  v21 = v7;
  if (self->_hasBottomPadding)
  {
    v8 = 2654435761;
  }

  else
  {
    v8 = 0;
  }

  v9 = 2654435761 * self->_separatorStyle;
  v10 = [(NSArray *)self->_referencedCommands hash];
  if (self->_forceEnable3DTouch)
  {
    v11 = 2654435761;
  }

  else
  {
    v11 = 0;
  }

  if (self->_shouldShowInSmartDialog)
  {
    v12 = 2654435761;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(_SFPBAppEntityAnnotation *)self->_appEntityAnnotation hash];
  v14 = [(NSString *)self->_emphasisSubjectId hash];
  v15 = 2654435761 * self->_increasedContrastMode;
  v16 = v12 ^ v13 ^ v14 ^ v15 ^ [(_SFPBCommand *)self->_secondaryCommand hash]^ (2654435761 * self->_requiredLevelOfDetail);
  v17 = v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v42 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v8 ^ v9 ^ v10 ^ v11 ^ v16 ^ [(NSString *)self->_racFeedbackSubfeatureId hash];
  v18 = [(NSDictionary *)self->_racFeedbackLoggingContent hash];
  v19 = v18 ^ [(NSArray *)self->_copyableItems hash];
  return v17 ^ v19 ^ [(NSString *)self->_applicationBundleIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_142;
  }

  type = self->_type;
  if (type != [equalCopy type])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self value];
  value2 = [equalCopy value];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  value3 = [(_SFPBCardSection *)self value];
  if (value3)
  {
    v9 = value3;
    value4 = [(_SFPBCardSection *)self value];
    value5 = [equalCopy value];
    v12 = [value4 isEqual:value5];

    if (!v12)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self nextCard];
  value2 = [equalCopy nextCard];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  nextCard = [(_SFPBCardSection *)self nextCard];
  if (nextCard)
  {
    v14 = nextCard;
    nextCard2 = [(_SFPBCardSection *)self nextCard];
    nextCard3 = [equalCopy nextCard];
    v17 = [nextCard2 isEqual:nextCard3];

    if (!v17)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self commands];
  value2 = [equalCopy commands];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  commands = [(_SFPBCardSection *)self commands];
  if (commands)
  {
    v19 = commands;
    commands2 = [(_SFPBCardSection *)self commands];
    commands3 = [equalCopy commands];
    v22 = [commands2 isEqual:commands3];

    if (!v22)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self parameterKeyPaths];
  value2 = [equalCopy parameterKeyPaths];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  parameterKeyPaths = [(_SFPBCardSection *)self parameterKeyPaths];
  if (parameterKeyPaths)
  {
    v24 = parameterKeyPaths;
    parameterKeyPaths2 = [(_SFPBCardSection *)self parameterKeyPaths];
    parameterKeyPaths3 = [equalCopy parameterKeyPaths];
    v27 = [parameterKeyPaths2 isEqual:parameterKeyPaths3];

    if (!v27)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self cardSectionId];
  value2 = [equalCopy cardSectionId];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  cardSectionId = [(_SFPBCardSection *)self cardSectionId];
  if (cardSectionId)
  {
    v29 = cardSectionId;
    cardSectionId2 = [(_SFPBCardSection *)self cardSectionId];
    cardSectionId3 = [equalCopy cardSectionId];
    v32 = [cardSectionId2 isEqual:cardSectionId3];

    if (!v32)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self resultIdentifier];
  value2 = [equalCopy resultIdentifier];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  resultIdentifier = [(_SFPBCardSection *)self resultIdentifier];
  if (resultIdentifier)
  {
    v34 = resultIdentifier;
    resultIdentifier2 = [(_SFPBCardSection *)self resultIdentifier];
    resultIdentifier3 = [equalCopy resultIdentifier];
    v37 = [resultIdentifier2 isEqual:resultIdentifier3];

    if (!v37)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self userReportRequest];
  value2 = [equalCopy userReportRequest];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  userReportRequest = [(_SFPBCardSection *)self userReportRequest];
  if (userReportRequest)
  {
    v39 = userReportRequest;
    userReportRequest2 = [(_SFPBCardSection *)self userReportRequest];
    userReportRequest3 = [equalCopy userReportRequest];
    v42 = [userReportRequest2 isEqual:userReportRequest3];

    if (!v42)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self command];
  value2 = [equalCopy command];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  command = [(_SFPBCardSection *)self command];
  if (command)
  {
    v44 = command;
    command2 = [(_SFPBCardSection *)self command];
    command3 = [equalCopy command];
    v47 = [command2 isEqual:command3];

    if (!v47)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self previewCommand];
  value2 = [equalCopy previewCommand];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  previewCommand = [(_SFPBCardSection *)self previewCommand];
  if (previewCommand)
  {
    v49 = previewCommand;
    previewCommand2 = [(_SFPBCardSection *)self previewCommand];
    previewCommand3 = [equalCopy previewCommand];
    v52 = [previewCommand2 isEqual:previewCommand3];

    if (!v52)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self previewButtonItems];
  value2 = [equalCopy previewButtonItems];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  previewButtonItems = [(_SFPBCardSection *)self previewButtonItems];
  if (previewButtonItems)
  {
    v54 = previewButtonItems;
    previewButtonItems2 = [(_SFPBCardSection *)self previewButtonItems];
    previewButtonItems3 = [equalCopy previewButtonItems];
    v57 = [previewButtonItems2 isEqual:previewButtonItems3];

    if (!v57)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self cardSectionDetail];
  value2 = [equalCopy cardSectionDetail];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  cardSectionDetail = [(_SFPBCardSection *)self cardSectionDetail];
  if (cardSectionDetail)
  {
    v59 = cardSectionDetail;
    cardSectionDetail2 = [(_SFPBCardSection *)self cardSectionDetail];
    cardSectionDetail3 = [equalCopy cardSectionDetail];
    v62 = [cardSectionDetail2 isEqual:cardSectionDetail3];

    if (!v62)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self previewButtonItemsTitle];
  value2 = [equalCopy previewButtonItemsTitle];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  previewButtonItemsTitle = [(_SFPBCardSection *)self previewButtonItemsTitle];
  if (previewButtonItemsTitle)
  {
    v64 = previewButtonItemsTitle;
    previewButtonItemsTitle2 = [(_SFPBCardSection *)self previewButtonItemsTitle];
    previewButtonItemsTitle3 = [equalCopy previewButtonItemsTitle];
    v67 = [previewButtonItemsTitle2 isEqual:previewButtonItemsTitle3];

    if (!v67)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self backgroundColor];
  value2 = [equalCopy backgroundColor];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  backgroundColor = [(_SFPBCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v69 = backgroundColor;
    backgroundColor2 = [(_SFPBCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v72 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v72)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  shouldHideInAmbientMode = self->_shouldHideInAmbientMode;
  if (shouldHideInAmbientMode != [equalCopy shouldHideInAmbientMode])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self leadingSwipeButtonItems];
  value2 = [equalCopy leadingSwipeButtonItems];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  leadingSwipeButtonItems = [(_SFPBCardSection *)self leadingSwipeButtonItems];
  if (leadingSwipeButtonItems)
  {
    v75 = leadingSwipeButtonItems;
    leadingSwipeButtonItems2 = [(_SFPBCardSection *)self leadingSwipeButtonItems];
    leadingSwipeButtonItems3 = [equalCopy leadingSwipeButtonItems];
    v78 = [leadingSwipeButtonItems2 isEqual:leadingSwipeButtonItems3];

    if (!v78)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self trailingSwipeButtonItems];
  value2 = [equalCopy trailingSwipeButtonItems];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  trailingSwipeButtonItems = [(_SFPBCardSection *)self trailingSwipeButtonItems];
  if (trailingSwipeButtonItems)
  {
    v80 = trailingSwipeButtonItems;
    trailingSwipeButtonItems2 = [(_SFPBCardSection *)self trailingSwipeButtonItems];
    trailingSwipeButtonItems3 = [equalCopy trailingSwipeButtonItems];
    v83 = [trailingSwipeButtonItems2 isEqual:trailingSwipeButtonItems3];

    if (!v83)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self punchoutOptions];
  value2 = [equalCopy punchoutOptions];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  punchoutOptions = [(_SFPBCardSection *)self punchoutOptions];
  if (punchoutOptions)
  {
    v85 = punchoutOptions;
    punchoutOptions2 = [(_SFPBCardSection *)self punchoutOptions];
    punchoutOptions3 = [equalCopy punchoutOptions];
    v88 = [punchoutOptions2 isEqual:punchoutOptions3];

    if (!v88)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self punchoutPickerTitle];
  value2 = [equalCopy punchoutPickerTitle];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  punchoutPickerTitle = [(_SFPBCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v90 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v93 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v93)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self punchoutPickerDismissText];
  value2 = [equalCopy punchoutPickerDismissText];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  punchoutPickerDismissText = [(_SFPBCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v95 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v98 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v98)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_142;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_142;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_142;
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self referencedCommands];
  value2 = [equalCopy referencedCommands];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  referencedCommands = [(_SFPBCardSection *)self referencedCommands];
  if (referencedCommands)
  {
    v104 = referencedCommands;
    referencedCommands2 = [(_SFPBCardSection *)self referencedCommands];
    referencedCommands3 = [equalCopy referencedCommands];
    v107 = [referencedCommands2 isEqual:referencedCommands3];

    if (!v107)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  forceEnable3DTouch = self->_forceEnable3DTouch;
  if (forceEnable3DTouch != [equalCopy forceEnable3DTouch])
  {
    goto LABEL_142;
  }

  shouldShowInSmartDialog = self->_shouldShowInSmartDialog;
  if (shouldShowInSmartDialog != [equalCopy shouldShowInSmartDialog])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self appEntityAnnotation];
  value2 = [equalCopy appEntityAnnotation];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  appEntityAnnotation = [(_SFPBCardSection *)self appEntityAnnotation];
  if (appEntityAnnotation)
  {
    v111 = appEntityAnnotation;
    appEntityAnnotation2 = [(_SFPBCardSection *)self appEntityAnnotation];
    appEntityAnnotation3 = [equalCopy appEntityAnnotation];
    v114 = [appEntityAnnotation2 isEqual:appEntityAnnotation3];

    if (!v114)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self emphasisSubjectId];
  value2 = [equalCopy emphasisSubjectId];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  emphasisSubjectId = [(_SFPBCardSection *)self emphasisSubjectId];
  if (emphasisSubjectId)
  {
    v116 = emphasisSubjectId;
    emphasisSubjectId2 = [(_SFPBCardSection *)self emphasisSubjectId];
    emphasisSubjectId3 = [equalCopy emphasisSubjectId];
    v119 = [emphasisSubjectId2 isEqual:emphasisSubjectId3];

    if (!v119)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  increasedContrastMode = self->_increasedContrastMode;
  if (increasedContrastMode != [equalCopy increasedContrastMode])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self secondaryCommand];
  value2 = [equalCopy secondaryCommand];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  secondaryCommand = [(_SFPBCardSection *)self secondaryCommand];
  if (secondaryCommand)
  {
    v122 = secondaryCommand;
    secondaryCommand2 = [(_SFPBCardSection *)self secondaryCommand];
    secondaryCommand3 = [equalCopy secondaryCommand];
    v125 = [secondaryCommand2 isEqual:secondaryCommand3];

    if (!v125)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  requiredLevelOfDetail = self->_requiredLevelOfDetail;
  if (requiredLevelOfDetail != [equalCopy requiredLevelOfDetail])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
  value2 = [equalCopy racFeedbackSubfeatureId];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  racFeedbackSubfeatureId = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
  if (racFeedbackSubfeatureId)
  {
    v128 = racFeedbackSubfeatureId;
    racFeedbackSubfeatureId2 = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
    racFeedbackSubfeatureId3 = [equalCopy racFeedbackSubfeatureId];
    v131 = [racFeedbackSubfeatureId2 isEqual:racFeedbackSubfeatureId3];

    if (!v131)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self racFeedbackLoggingContent];
  value2 = [equalCopy racFeedbackLoggingContent];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  racFeedbackLoggingContent = [(_SFPBCardSection *)self racFeedbackLoggingContent];
  if (racFeedbackLoggingContent)
  {
    v133 = racFeedbackLoggingContent;
    racFeedbackLoggingContent2 = [(_SFPBCardSection *)self racFeedbackLoggingContent];
    racFeedbackLoggingContent3 = [equalCopy racFeedbackLoggingContent];
    v136 = [racFeedbackLoggingContent2 isEqual:racFeedbackLoggingContent3];

    if (!v136)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self copyableItems];
  value2 = [equalCopy copyableItems];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  copyableItems = [(_SFPBCardSection *)self copyableItems];
  if (copyableItems)
  {
    v138 = copyableItems;
    copyableItems2 = [(_SFPBCardSection *)self copyableItems];
    copyableItems3 = [equalCopy copyableItems];
    v141 = [copyableItems2 isEqual:copyableItems3];

    if (!v141)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self applicationBundleIdentifier];
  value2 = [equalCopy applicationBundleIdentifier];
  if ((value != 0) == (value2 == 0))
  {
LABEL_141:

    goto LABEL_142;
  }

  applicationBundleIdentifier = [(_SFPBCardSection *)self applicationBundleIdentifier];
  if (!applicationBundleIdentifier)
  {

LABEL_145:
    v147 = 1;
    goto LABEL_143;
  }

  v143 = applicationBundleIdentifier;
  applicationBundleIdentifier2 = [(_SFPBCardSection *)self applicationBundleIdentifier];
  applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
  v146 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

  if (v146)
  {
    goto LABEL_145;
  }

LABEL_142:
  v147 = 0;
LABEL_143:

  return v147;
}

- (void)writeTo:(id)to
{
  v125 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_SFPBCardSection *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  value = [(_SFPBCardSection *)self value];
  if (value)
  {
    PBDataWriterWriteSubmessage();
  }

  nextCard = [(_SFPBCardSection *)self nextCard];
  if (nextCard)
  {
    PBDataWriterWriteSubmessage();
  }

  [(_SFPBCardSection *)self commands];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v7 = v115 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v112 objects:v124 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v113;
    do
    {
      v11 = 0;
      do
      {
        if (*v113 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v112 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v112 objects:v124 count:16];
    }

    while (v9);
  }

  [(_SFPBCardSection *)self parameterKeyPaths];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v13 = v111 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v108 objects:v123 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v109;
    do
    {
      v17 = 0;
      do
      {
        if (*v109 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v108 + 1) + 8 * v17);
        PBDataWriterWriteStringField();
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v108 objects:v123 count:16];
    }

    while (v15);
  }

  cardSectionId = [(_SFPBCardSection *)self cardSectionId];
  if (cardSectionId)
  {
    PBDataWriterWriteStringField();
  }

  resultIdentifier = [(_SFPBCardSection *)self resultIdentifier];
  if (resultIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  userReportRequest = [(_SFPBCardSection *)self userReportRequest];
  if (userReportRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  command = [(_SFPBCardSection *)self command];
  if (command)
  {
    PBDataWriterWriteSubmessage();
  }

  previewCommand = [(_SFPBCardSection *)self previewCommand];
  if (previewCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  [(_SFPBCardSection *)self previewButtonItems];
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v24 = v107 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v104 objects:v122 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v105;
    do
    {
      v28 = 0;
      do
      {
        if (*v105 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v104 + 1) + 8 * v28);
        PBDataWriterWriteSubmessage();
        ++v28;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v104 objects:v122 count:16];
    }

    while (v26);
  }

  cardSectionDetail = [(_SFPBCardSection *)self cardSectionDetail];
  if (cardSectionDetail)
  {
    PBDataWriterWriteStringField();
  }

  previewButtonItemsTitle = [(_SFPBCardSection *)self previewButtonItemsTitle];
  if (previewButtonItemsTitle)
  {
    PBDataWriterWriteStringField();
  }

  backgroundColor = [(_SFPBCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBCardSection *)self shouldHideInAmbientMode])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_SFPBCardSection *)self leadingSwipeButtonItems];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v33 = v103 = 0u;
  v34 = [v33 countByEnumeratingWithState:&v100 objects:v121 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v101;
    do
    {
      v37 = 0;
      do
      {
        if (*v101 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v100 + 1) + 8 * v37);
        PBDataWriterWriteSubmessage();
        ++v37;
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v100 objects:v121 count:16];
    }

    while (v35);
  }

  [(_SFPBCardSection *)self trailingSwipeButtonItems];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v39 = v99 = 0u;
  v40 = [v39 countByEnumeratingWithState:&v96 objects:v120 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v97;
    do
    {
      v43 = 0;
      do
      {
        if (*v97 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v96 + 1) + 8 * v43);
        PBDataWriterWriteSubmessage();
        ++v43;
      }

      while (v41 != v43);
      v41 = [v39 countByEnumeratingWithState:&v96 objects:v120 count:16];
    }

    while (v41);
  }

  [(_SFPBCardSection *)self punchoutOptions];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v45 = v95 = 0u;
  v46 = [v45 countByEnumeratingWithState:&v92 objects:v119 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v93;
    do
    {
      v49 = 0;
      do
      {
        if (*v93 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v92 + 1) + 8 * v49);
        PBDataWriterWriteSubmessage();
        ++v49;
      }

      while (v47 != v49);
      v47 = [v45 countByEnumeratingWithState:&v92 objects:v119 count:16];
    }

    while (v47);
  }

  punchoutPickerTitle = [(_SFPBCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_SFPBCardSection *)self referencedCommands];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v53 = v91 = 0u;
  v54 = [v53 countByEnumeratingWithState:&v88 objects:v118 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v89;
    do
    {
      v57 = 0;
      do
      {
        if (*v89 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v88 + 1) + 8 * v57);
        PBDataWriterWriteSubmessage();
        ++v57;
      }

      while (v55 != v57);
      v55 = [v53 countByEnumeratingWithState:&v88 objects:v118 count:16];
    }

    while (v55);
  }

  if ([(_SFPBCardSection *)self forceEnable3DTouch])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCardSection *)self shouldShowInSmartDialog])
  {
    PBDataWriterWriteBOOLField();
  }

  appEntityAnnotation = [(_SFPBCardSection *)self appEntityAnnotation];
  if (appEntityAnnotation)
  {
    PBDataWriterWriteSubmessage();
  }

  emphasisSubjectId = [(_SFPBCardSection *)self emphasisSubjectId];
  if (emphasisSubjectId)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCardSection *)self increasedContrastMode])
  {
    PBDataWriterWriteInt32Field();
  }

  secondaryCommand = [(_SFPBCardSection *)self secondaryCommand];
  if (secondaryCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBCardSection *)self requiredLevelOfDetail])
  {
    PBDataWriterWriteInt32Field();
  }

  racFeedbackSubfeatureId = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
  if (racFeedbackSubfeatureId)
  {
    PBDataWriterWriteStringField();
  }

  racFeedbackLoggingContent = [(_SFPBCardSection *)self racFeedbackLoggingContent];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v64 = self->_racFeedbackLoggingContent;
  v65 = [(NSDictionary *)v64 countByEnumeratingWithState:&v84 objects:v117 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v85;
    do
    {
      v68 = 0;
      do
      {
        if (*v85 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v84 + 1) + 8 * v68);
        v83 = 0;
        PBDataWriterPlaceMark();
        PBDataWriterWriteStringField();
        v70 = [(NSDictionary *)self->_racFeedbackLoggingContent objectForKeyedSubscript:v69];
        PBDataWriterWriteStringField();

        PBDataWriterRecallMark();
        ++v68;
      }

      while (v66 != v68);
      v66 = [(NSDictionary *)v64 countByEnumeratingWithState:&v84 objects:v117 count:16];
    }

    while (v66);
  }

  [(_SFPBCardSection *)self copyableItems];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v71 = v82 = 0u;
  v72 = [v71 countByEnumeratingWithState:&v79 objects:v116 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v80;
    do
    {
      v75 = 0;
      do
      {
        if (*v80 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v76 = *(*(&v79 + 1) + 8 * v75);
        PBDataWriterWriteSubmessage();
        ++v75;
      }

      while (v73 != v75);
      v73 = [v71 countByEnumeratingWithState:&v79 objects:v116 count:16];
    }

    while (v73);
  }

  applicationBundleIdentifier = [(_SFPBCardSection *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v78 = *MEMORY[0x1E69E9840];
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCopyableItems:(id)items
{
  itemsCopy = items;
  copyableItems = self->_copyableItems;
  v8 = itemsCopy;
  if (!copyableItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_copyableItems;
    self->_copyableItems = array;

    itemsCopy = v8;
    copyableItems = self->_copyableItems;
  }

  [(NSArray *)copyableItems addObject:itemsCopy];
}

- (void)setCopyableItems:(id)items
{
  v4 = [items copy];
  copyableItems = self->_copyableItems;
  self->_copyableItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRacFeedbackLoggingContent:(id)content forKey:(id)key
{
  contentCopy = content;
  keyCopy = key;
  racFeedbackLoggingContent = self->_racFeedbackLoggingContent;
  if (!racFeedbackLoggingContent)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_racFeedbackLoggingContent;
    self->_racFeedbackLoggingContent = dictionary;

    racFeedbackLoggingContent = self->_racFeedbackLoggingContent;
  }

  [(NSDictionary *)racFeedbackLoggingContent setObject:contentCopy forKey:keyCopy];
}

- (BOOL)getRacFeedbackLoggingContent:(id *)content forKey:(id)key
{
  v5 = [(NSDictionary *)self->_racFeedbackLoggingContent objectForKeyedSubscript:key];
  if (content && v5)
  {
    v5 = v5;
    *content = v5;
  }

  v6 = v5 != 0;

  return v6;
}

- (void)setRacFeedbackLoggingContent:(id)content
{
  v4 = [content copy];
  racFeedbackLoggingContent = self->_racFeedbackLoggingContent;
  self->_racFeedbackLoggingContent = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRacFeedbackSubfeatureId:(id)id
{
  v4 = [id copy];
  racFeedbackSubfeatureId = self->_racFeedbackSubfeatureId;
  self->_racFeedbackSubfeatureId = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEmphasisSubjectId:(id)id
{
  v4 = [id copy];
  emphasisSubjectId = self->_emphasisSubjectId;
  self->_emphasisSubjectId = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addReferencedCommands:(id)commands
{
  commandsCopy = commands;
  referencedCommands = self->_referencedCommands;
  v8 = commandsCopy;
  if (!referencedCommands)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_referencedCommands;
    self->_referencedCommands = array;

    commandsCopy = v8;
    referencedCommands = self->_referencedCommands;
  }

  [(NSArray *)referencedCommands addObject:commandsCopy];
}

- (void)setReferencedCommands:(id)commands
{
  v4 = [commands copy];
  referencedCommands = self->_referencedCommands;
  self->_referencedCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)text
{
  v4 = [text copy];
  punchoutPickerDismissText = self->_punchoutPickerDismissText;
  self->_punchoutPickerDismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)title
{
  v4 = [title copy];
  punchoutPickerTitle = self->_punchoutPickerTitle;
  self->_punchoutPickerTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)options
{
  optionsCopy = options;
  punchoutOptions = self->_punchoutOptions;
  v8 = optionsCopy;
  if (!punchoutOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = array;

    optionsCopy = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:optionsCopy];
}

- (void)setPunchoutOptions:(id)options
{
  v4 = [options copy];
  punchoutOptions = self->_punchoutOptions;
  self->_punchoutOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addTrailingSwipeButtonItems:(id)items
{
  itemsCopy = items;
  trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  v8 = itemsCopy;
  if (!trailingSwipeButtonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_trailingSwipeButtonItems;
    self->_trailingSwipeButtonItems = array;

    itemsCopy = v8;
    trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  }

  [(NSArray *)trailingSwipeButtonItems addObject:itemsCopy];
}

- (void)setTrailingSwipeButtonItems:(id)items
{
  v4 = [items copy];
  trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  self->_trailingSwipeButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addLeadingSwipeButtonItems:(id)items
{
  itemsCopy = items;
  leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  v8 = itemsCopy;
  if (!leadingSwipeButtonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_leadingSwipeButtonItems;
    self->_leadingSwipeButtonItems = array;

    itemsCopy = v8;
    leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  }

  [(NSArray *)leadingSwipeButtonItems addObject:itemsCopy];
}

- (void)setLeadingSwipeButtonItems:(id)items
{
  v4 = [items copy];
  leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  self->_leadingSwipeButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPreviewButtonItemsTitle:(id)title
{
  v4 = [title copy];
  previewButtonItemsTitle = self->_previewButtonItemsTitle;
  self->_previewButtonItemsTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCardSectionDetail:(id)detail
{
  v4 = [detail copy];
  cardSectionDetail = self->_cardSectionDetail;
  self->_cardSectionDetail = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPreviewButtonItems:(id)items
{
  itemsCopy = items;
  previewButtonItems = self->_previewButtonItems;
  v8 = itemsCopy;
  if (!previewButtonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_previewButtonItems;
    self->_previewButtonItems = array;

    itemsCopy = v8;
    previewButtonItems = self->_previewButtonItems;
  }

  [(NSArray *)previewButtonItems addObject:itemsCopy];
}

- (void)setPreviewButtonItems:(id)items
{
  v4 = [items copy];
  previewButtonItems = self->_previewButtonItems;
  self->_previewButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setResultIdentifier:(id)identifier
{
  v4 = [identifier copy];
  resultIdentifier = self->_resultIdentifier;
  self->_resultIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCardSectionId:(id)id
{
  v4 = [id copy];
  cardSectionId = self->_cardSectionId;
  self->_cardSectionId = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addParameterKeyPaths:(id)paths
{
  pathsCopy = paths;
  parameterKeyPaths = self->_parameterKeyPaths;
  v8 = pathsCopy;
  if (!parameterKeyPaths)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameterKeyPaths;
    self->_parameterKeyPaths = array;

    pathsCopy = v8;
    parameterKeyPaths = self->_parameterKeyPaths;
  }

  [(NSArray *)parameterKeyPaths addObject:pathsCopy];
}

- (void)setParameterKeyPaths:(id)paths
{
  v4 = [paths copy];
  parameterKeyPaths = self->_parameterKeyPaths;
  self->_parameterKeyPaths = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCommands:(id)commands
{
  commandsCopy = commands;
  commands = self->_commands;
  v8 = commandsCopy;
  if (!commands)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_commands;
    self->_commands = array;

    commandsCopy = v8;
    commands = self->_commands;
  }

  [(NSArray *)commands addObject:commandsCopy];
}

- (void)setCommands:(id)commands
{
  v4 = [commands copy];
  commands = self->_commands;
  self->_commands = v4;

  MEMORY[0x1EEE66BB8]();
}

@end