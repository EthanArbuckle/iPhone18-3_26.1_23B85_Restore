@interface _SFPBCardSection
- (BOOL)getRacFeedbackLoggingContent:(id *)a3 forKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCardSection)initWithDictionary:(id)a3;
- (_SFPBCardSection)initWithFacade:(id)a3;
- (_SFPBCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCommands:(id)a3;
- (void)addCopyableItems:(id)a3;
- (void)addLeadingSwipeButtonItems:(id)a3;
- (void)addParameterKeyPaths:(id)a3;
- (void)addPreviewButtonItems:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)addReferencedCommands:(id)a3;
- (void)addTrailingSwipeButtonItems:(id)a3;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)setCardSectionDetail:(id)a3;
- (void)setCardSectionId:(id)a3;
- (void)setCommands:(id)a3;
- (void)setCopyableItems:(id)a3;
- (void)setEmphasisSubjectId:(id)a3;
- (void)setLeadingSwipeButtonItems:(id)a3;
- (void)setParameterKeyPaths:(id)a3;
- (void)setPreviewButtonItems:(id)a3;
- (void)setPreviewButtonItemsTitle:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setRacFeedbackLoggingContent:(id)a3;
- (void)setRacFeedbackLoggingContent:(id)a3 forKey:(id)a4;
- (void)setRacFeedbackSubfeatureId:(id)a3;
- (void)setReferencedCommands:(id)a3;
- (void)setResultIdentifier:(id)a3;
- (void)setTrailingSwipeButtonItems:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCardSection

- (_SFPBCardSection)initWithFacade:(id)a3
{
  v402 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v392.receiver = self;
  v392.super_class = _SFPBCardSection;
  v5 = [(_SFPBCardSection *)&v392 init];

  if (v5)
  {
    v6 = [v4 nextCard];

    if (v6)
    {
      v7 = [_SFPBCard alloc];
      v8 = [v4 nextCard];
      v9 = [(_SFPBCard *)v7 initWithFacade:v8];
      [(_SFPBCardSection *)v5 setNextCard:v9];
    }

    v10 = [v4 commands];
    if (v10)
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
    v351 = v4;
    v12 = [v4 commands];
    v13 = [v12 countByEnumeratingWithState:&v388 objects:v401 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [[_SFPBAbstractCommand alloc] initWithFacade:*(*(&v388 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v388 objects:v401 count:16];
      }

      while (v14);
    }

    [(_SFPBCardSection *)v5 setCommands:v11];
    v18 = [v351 parameterKeyPaths];
    if (v18)
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
    v20 = [v351 parameterKeyPaths];
    v21 = [v20 countByEnumeratingWithState:&v384 objects:v400 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v384 + 1) + 8 * j);
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v384 objects:v400 count:16];
      }

      while (v22);
    }

    [(_SFPBCardSection *)v5 setParameterKeyPaths:v19];
    v26 = [v351 cardSectionId];

    if (v26)
    {
      v27 = [v351 cardSectionId];
      [(_SFPBCardSection *)v5 setCardSectionId:v27];
    }

    v28 = [v351 resultIdentifier];

    if (v28)
    {
      v29 = [v351 resultIdentifier];
      [(_SFPBCardSection *)v5 setResultIdentifier:v29];
    }

    v30 = [v351 userReportRequest];

    if (v30)
    {
      v31 = [_SFPBUserReportRequest alloc];
      v32 = [v351 userReportRequest];
      v33 = [(_SFPBUserReportRequest *)v31 initWithFacade:v32];
      [(_SFPBCardSection *)v5 setUserReportRequest:v33];
    }

    v34 = [v351 command];

    if (v34)
    {
      v35 = [_SFPBCommand alloc];
      v36 = [v351 command];
      v37 = [(_SFPBCommand *)v35 initWithFacade:v36];
      [(_SFPBCardSection *)v5 setCommand:v37];
    }

    v38 = [v351 previewCommand];

    if (v38)
    {
      v39 = [_SFPBCommand alloc];
      v40 = [v351 previewCommand];
      v41 = [(_SFPBCommand *)v39 initWithFacade:v40];
      [(_SFPBCardSection *)v5 setPreviewCommand:v41];
    }

    v42 = [v351 previewButtonItems];
    v350 = v5;
    if (v42)
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
    v43 = [v351 previewButtonItems];
    v44 = [v43 countByEnumeratingWithState:&v380 objects:v399 count:16];
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
            objc_enumerationMutation(v43);
          }

          v48 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v380 + 1) + 8 * k)];
          if (v48)
          {
            [v355 addObject:v48];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v380 objects:v399 count:16];
      }

      while (v45);
    }

    [(_SFPBCardSection *)v5 setPreviewButtonItems:v355];
    v49 = [v351 cardSectionDetail];

    if (v49)
    {
      v50 = [v351 cardSectionDetail];
      [(_SFPBCardSection *)v5 setCardSectionDetail:v50];
    }

    v51 = [v351 previewButtonItemsTitle];

    if (v51)
    {
      v52 = [v351 previewButtonItemsTitle];
      [(_SFPBCardSection *)v5 setPreviewButtonItemsTitle:v52];
    }

    v53 = [v351 backgroundColor];

    if (v53)
    {
      v54 = [_SFPBColor alloc];
      v55 = [v351 backgroundColor];
      v56 = [(_SFPBColor *)v54 initWithFacade:v55];
      [(_SFPBCardSection *)v5 setBackgroundColor:v56];
    }

    -[_SFPBCardSection setShouldHideInAmbientMode:](v5, "setShouldHideInAmbientMode:", [v351 shouldHideInAmbientMode]);
    v57 = [v351 leadingSwipeButtonItems];
    if (v57)
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
    v58 = [v351 leadingSwipeButtonItems];
    v59 = [v58 countByEnumeratingWithState:&v376 objects:v398 count:16];
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
            objc_enumerationMutation(v58);
          }

          v63 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v376 + 1) + 8 * m)];
          if (v63)
          {
            [v354 addObject:v63];
          }
        }

        v60 = [v58 countByEnumeratingWithState:&v376 objects:v398 count:16];
      }

      while (v60);
    }

    [(_SFPBCardSection *)v5 setLeadingSwipeButtonItems:v354];
    v64 = [v351 trailingSwipeButtonItems];
    if (v64)
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
    v65 = [v351 trailingSwipeButtonItems];
    v66 = [v65 countByEnumeratingWithState:&v372 objects:v397 count:16];
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
            objc_enumerationMutation(v65);
          }

          v70 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v372 + 1) + 8 * n)];
          if (v70)
          {
            [v353 addObject:v70];
          }
        }

        v67 = [v65 countByEnumeratingWithState:&v372 objects:v397 count:16];
      }

      while (v67);
    }

    [(_SFPBCardSection *)v5 setTrailingSwipeButtonItems:v353];
    v71 = [v351 punchoutOptions];
    v349 = v11;
    if (v71)
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
    v72 = [v351 punchoutOptions];
    v73 = [v72 countByEnumeratingWithState:&v368 objects:v396 count:16];
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
            objc_enumerationMutation(v72);
          }

          v77 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v368 + 1) + 8 * ii)];
          if (v77)
          {
            [v352 addObject:v77];
          }
        }

        v74 = [v72 countByEnumeratingWithState:&v368 objects:v396 count:16];
      }

      while (v74);
    }

    [(_SFPBCardSection *)v5 setPunchoutOptions:v352];
    v78 = [v351 punchoutPickerTitle];

    if (v78)
    {
      v79 = [v351 punchoutPickerTitle];
      [(_SFPBCardSection *)v5 setPunchoutPickerTitle:v79];
    }

    v80 = [v351 punchoutPickerDismissText];

    if (v80)
    {
      v81 = [v351 punchoutPickerDismissText];
      [(_SFPBCardSection *)v5 setPunchoutPickerDismissText:v81];
    }

    -[_SFPBCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v351 canBeHidden]);
    -[_SFPBCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v351 hasTopPadding]);
    -[_SFPBCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v351 hasBottomPadding]);
    -[_SFPBCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v351 separatorStyle]);
    v82 = [v351 referencedCommands];
    if (v82)
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
    v84 = [v351 referencedCommands];
    v85 = [v84 countByEnumeratingWithState:&v364 objects:v395 count:16];
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
            objc_enumerationMutation(v84);
          }

          v89 = [[_SFPBCommand alloc] initWithFacade:*(*(&v364 + 1) + 8 * jj)];
          if (v89)
          {
            [v83 addObject:v89];
          }
        }

        v86 = [v84 countByEnumeratingWithState:&v364 objects:v395 count:16];
      }

      while (v86);
    }

    [(_SFPBCardSection *)v5 setReferencedCommands:v83];
    -[_SFPBCardSection setForceEnable3DTouch:](v5, "setForceEnable3DTouch:", [v351 forceEnable3DTouch]);
    -[_SFPBCardSection setShouldShowInSmartDialog:](v5, "setShouldShowInSmartDialog:", [v351 shouldShowInSmartDialog]);
    v90 = [v351 appEntityAnnotation];

    if (v90)
    {
      v91 = [_SFPBAppEntityAnnotation alloc];
      v92 = [v351 appEntityAnnotation];
      v93 = [(_SFPBAppEntityAnnotation *)v91 initWithFacade:v92];
      [(_SFPBCardSection *)v5 setAppEntityAnnotation:v93];
    }

    v94 = [v351 emphasisSubjectId];

    if (v94)
    {
      v95 = [v351 emphasisSubjectId];
      [(_SFPBCardSection *)v5 setEmphasisSubjectId:v95];
    }

    -[_SFPBCardSection setIncreasedContrastMode:](v5, "setIncreasedContrastMode:", [v351 increasedContrastMode]);
    v96 = [v351 secondaryCommand];

    if (v96)
    {
      v97 = [_SFPBCommand alloc];
      v98 = [v351 secondaryCommand];
      v99 = [(_SFPBCommand *)v97 initWithFacade:v98];
      [(_SFPBCardSection *)v5 setSecondaryCommand:v99];
    }

    -[_SFPBCardSection setRequiredLevelOfDetail:](v5, "setRequiredLevelOfDetail:", [v351 requiredLevelOfDetail]);
    v100 = [v351 racFeedbackSubfeatureId];

    if (v100)
    {
      v101 = [v351 racFeedbackSubfeatureId];
      [(_SFPBCardSection *)v5 setRacFeedbackSubfeatureId:v101];
    }

    v102 = [v351 racFeedbackLoggingContent];
    v103 = v102;
    if (v102)
    {
      v104 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v102, "count")}];
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
    v112 = [v351 copyableItems];
    if (v112)
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
    v114 = [v351 copyableItems];
    v115 = [v114 countByEnumeratingWithState:&v356 objects:v393 count:16];
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
            objc_enumerationMutation(v114);
          }

          v119 = [[_SFPBCopyItem alloc] initWithFacade:*(*(&v356 + 1) + 8 * mm)];
          if (v119)
          {
            [v113 addObject:v119];
          }
        }

        v116 = [v114 countByEnumeratingWithState:&v356 objects:v393 count:16];
      }

      while (v116);
    }

    v5 = v350;
    [(_SFPBCardSection *)v350 setCopyableItems:v113];
    v4 = v351;
    v120 = [v351 applicationBundleIdentifier];

    if (v120)
    {
      v121 = [v351 applicationBundleIdentifier];
      [(_SFPBCardSection *)v350 setApplicationBundleIdentifier:v121];
    }

    v122 = objc_alloc_init(_SFPBCardSectionValue);
    [(_SFPBCardSection *)v350 setValue:v122];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:1];
      v123 = [[_SFPBAppLinkCardSection alloc] initWithFacade:v351];
      v124 = [(_SFPBCardSection *)v350 value];
      [v124 setAppLinkCardSection:v123];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:2];
      v125 = [[_SFPBDescriptionCardSection alloc] initWithFacade:v351];
      v126 = [(_SFPBCardSection *)v350 value];
      [v126 setDescriptionCardSection:v125];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:3];
      v127 = [[_SFPBKeyValueDataCardSection alloc] initWithFacade:v351];
      v128 = [(_SFPBCardSection *)v350 value];
      [v128 setKeyValueDataCardSection:v127];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:4];
      v129 = [[_SFPBMapCardSection alloc] initWithFacade:v351];
      v130 = [(_SFPBCardSection *)v350 value];
      [v130 setMapCardSection:v129];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:5];
      v131 = [[_SFPBMediaInfoCardSection alloc] initWithFacade:v351];
      v132 = [(_SFPBCardSection *)v350 value];
      [v132 setMediaInfoCardSection:v131];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:6];
      v133 = [[_SFPBMediaPlayerCardSection alloc] initWithFacade:v351];
      v134 = [(_SFPBCardSection *)v350 value];
      [v134 setMediaPlayerCardSection:v133];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:7];
      v135 = [[_SFPBNowPlayingCardSection alloc] initWithFacade:v351];
      v136 = [(_SFPBCardSection *)v350 value];
      [v136 setNowPlayingCardSection:v135];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:8];
      v137 = [[_SFPBRichTitleCardSection alloc] initWithFacade:v351];
      v138 = [(_SFPBCardSection *)v350 value];
      [v138 setRichTitleCardSection:v137];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:9];
      v139 = [[_SFPBRowCardSection alloc] initWithFacade:v351];
      v140 = [(_SFPBCardSection *)v350 value];
      [v140 setRowCardSection:v139];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:10];
      v141 = [[_SFPBScoreboardCardSection alloc] initWithFacade:v351];
      v142 = [(_SFPBCardSection *)v350 value];
      [v142 setScoreboardCardSection:v141];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:11];
      v143 = [[_SFPBSocialMediaPostCardSection alloc] initWithFacade:v351];
      v144 = [(_SFPBCardSection *)v350 value];
      [v144 setSocialMediaPostCardSection:v143];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:12];
      v145 = [[_SFPBStockChartCardSection alloc] initWithFacade:v351];
      v146 = [(_SFPBCardSection *)v350 value];
      [v146 setStockChartCardSection:v145];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:13];
      v147 = [[_SFPBTableHeaderRowCardSection alloc] initWithFacade:v351];
      v148 = [(_SFPBCardSection *)v350 value];
      [v148 setTableHeaderRowCardSection:v147];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(_SFPBCardSection *)v350 setType:14];
        v149 = [[_SFPBTableRowCardSection alloc] initWithFacade:v351];
        v150 = [(_SFPBCardSection *)v350 value];
        [v150 setTableRowCardSection:v149];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:15];
      v151 = [[_SFPBTextColumnsCardSection alloc] initWithFacade:v351];
      v152 = [(_SFPBCardSection *)v350 value];
      [v152 setTextColumnsCardSection:v151];
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
                  v154 = [(_SFPBCardSection *)v350 value];
                  [v154 setTitleCardSection:v153];
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
      v156 = [(_SFPBCardSection *)v350 value];
      [v156 setTrackListCardSection:v155];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:18];
      v157 = [[_SFPBAudioPlaybackCardSection alloc] initWithFacade:v351];
      v158 = [(_SFPBCardSection *)v350 value];
      [v158 setAudioPlaybackCardSection:v157];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:19];
      v159 = [[_SFPBFlightCardSection alloc] initWithFacade:v351];
      v160 = [(_SFPBCardSection *)v350 value];
      [v160 setFlightCardSection:v159];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:20];
      v161 = [[_SFPBActivityIndicatorCardSection alloc] initWithFacade:v351];
      v162 = [(_SFPBCardSection *)v350 value];
      [v162 setActivityIndicatorCardSection:v161];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:21];
      v163 = [[_SFPBWebCardSection alloc] initWithFacade:v351];
      v164 = [(_SFPBCardSection *)v350 value];
      [v164 setWebCardSection:v163];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:22];
      v165 = [[_SFPBMessageCardSection alloc] initWithFacade:v351];
      v166 = [(_SFPBCardSection *)v350 value];
      [v166 setMessageCardSection:v165];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:23];
      v167 = [[_SFPBDetailedRowCardSection alloc] initWithFacade:v351];
      v168 = [(_SFPBCardSection *)v350 value];
      [v168 setDetailedRowCardSection:v167];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:24];
      v169 = [[_SFPBImagesCardSection alloc] initWithFacade:v351];
      v170 = [(_SFPBCardSection *)v350 value];
      [v170 setImagesCardSection:v169];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:25];
      v171 = [[_SFPBSuggestionCardSection alloc] initWithFacade:v351];
      v172 = [(_SFPBCardSection *)v350 value];
      [v172 setSuggestionCardSection:v171];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:26];
      v173 = [[_SFPBSelectableGridCardSection alloc] initWithFacade:v351];
      v174 = [(_SFPBCardSection *)v350 value];
      [v174 setSelectableGridCardSection:v173];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:27];
      v175 = [[_SFPBSectionHeaderCardSection alloc] initWithFacade:v351];
      v176 = [(_SFPBCardSection *)v350 value];
      [v176 setSectionHeaderCardSection:v175];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:28];
      v177 = [[_SFPBMetaInfoCardSection alloc] initWithFacade:v351];
      v178 = [(_SFPBCardSection *)v350 value];
      [v178 setMetaInfoCardSection:v177];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:29];
      v179 = [[_SFPBWatchListCardSection alloc] initWithFacade:v351];
      v180 = [(_SFPBCardSection *)v350 value];
      [v180 setWatchListCardSection:v179];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:30];
      v181 = [[_SFPBMapsDetailedRowCardSection alloc] initWithFacade:v351];
      v182 = [(_SFPBCardSection *)v350 value];
      [v182 setMapsDetailedRowCardSection:v181];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:31];
      v183 = [[_SFPBButtonCardSection alloc] initWithFacade:v351];
      v184 = [(_SFPBCardSection *)v350 value];
      [v184 setButtonCardSection:v183];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:32];
      v185 = [[_SFPBHorizontalButtonCardSection alloc] initWithFacade:v351];
      v186 = [(_SFPBCardSection *)v350 value];
      [v186 setHorizontalButtonCardSection:v185];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:33];
      v187 = [[_SFPBVerticalLayoutCardSection alloc] initWithFacade:v351];
      v188 = [(_SFPBCardSection *)v350 value];
      [v188 setVerticalLayoutCardSection:v187];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:34];
      v189 = [[_SFPBProductCardSection alloc] initWithFacade:v351];
      v190 = [(_SFPBCardSection *)v350 value];
      [v190 setProductCardSection:v189];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:35];
      v191 = [[_SFPBHorizontalScrollCardSection alloc] initWithFacade:v351];
      v192 = [(_SFPBCardSection *)v350 value];
      [v192 setHorizontalScrollCardSection:v191];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:36];
      v193 = [[_SFPBMediaRemoteControlCardSection alloc] initWithFacade:v351];
      v194 = [(_SFPBCardSection *)v350 value];
      [v194 setMediaRemoteControlCardSection:v193];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:37];
      v195 = [[_SFPBMapPlaceCardSection alloc] initWithFacade:v351];
      v196 = [(_SFPBCardSection *)v350 value];
      [v196 setMapPlaceCardSection:v195];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:38];
      v197 = [[_SFPBCompactRowCardSection alloc] initWithFacade:v351];
      v198 = [(_SFPBCardSection *)v350 value];
      [v198 setCompactRowCardSection:v197];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:39];
      v199 = [[_SFPBWorldMapCardSection alloc] initWithFacade:v351];
      v200 = [(_SFPBCardSection *)v350 value];
      [v200 setWorldMapCardSection:v199];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:40];
      v201 = [[_SFPBAttributionFooterCardSection alloc] initWithFacade:v351];
      v202 = [(_SFPBCardSection *)v350 value];
      [v202 setAttributionFooterCardSection:v201];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:41];
      v203 = [[_SFPBGridCardSection alloc] initWithFacade:v351];
      v204 = [(_SFPBCardSection *)v350 value];
      [v204 setGridCardSection:v203];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:42];
      v205 = [[_SFPBPersonHeaderCardSection alloc] initWithFacade:v351];
      v206 = [(_SFPBCardSection *)v350 value];
      [v206 setPersonHeaderCardSection:v205];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:43];
      v207 = [[_SFPBColorBarCardSection alloc] initWithFacade:v351];
      v208 = [(_SFPBCardSection *)v350 value];
      [v208 setColorBarCardSection:v207];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:44];
      v209 = [[_SFPBSplitCardSection alloc] initWithFacade:v351];
      v210 = [(_SFPBCardSection *)v350 value];
      [v210 setSplitCardSection:v209];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:45];
      v211 = [[_SFPBLinkPresentationCardSection alloc] initWithFacade:v351];
      v212 = [(_SFPBCardSection *)v350 value];
      [v212 setLinkPresentationCardSection:v211];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:46];
      v213 = [[_SFPBFindMyCardSection alloc] initWithFacade:v351];
      v214 = [(_SFPBCardSection *)v350 value];
      [v214 setFindMyCardSection:v213];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:47];
      v215 = [[_SFPBHeroCardSection alloc] initWithFacade:v351];
      v216 = [(_SFPBCardSection *)v350 value];
      [v216 setHeroCardSection:v215];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:48];
      v217 = [[_SFPBNewsCardSection alloc] initWithFacade:v351];
      v218 = [(_SFPBCardSection *)v350 value];
      [v218 setNewsCardSection:v217];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:49];
      v219 = [[_SFPBMiniCardSection alloc] initWithFacade:v351];
      v220 = [(_SFPBCardSection *)v350 value];
      [v220 setMiniCardSection:v219];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:50];
      v221 = [[_SFPBInfoCardSection alloc] initWithFacade:v351];
      v222 = [(_SFPBCardSection *)v350 value];
      [v222 setInfoCardSection:v221];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:51];
      v223 = [[_SFPBCollectionCardSection alloc] initWithFacade:v351];
      v224 = [(_SFPBCardSection *)v350 value];
      [v224 setCollectionCardSection:v223];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:52];
      v225 = [[_SFPBCombinedCardSection alloc] initWithFacade:v351];
      v226 = [(_SFPBCardSection *)v350 value];
      [v226 setCombinedCardSection:v225];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:53];
      v227 = [[_SFPBResponseWrapperCardSection alloc] initWithFacade:v351];
      v228 = [(_SFPBCardSection *)v350 value];
      [v228 setResponseWrapperCardSection:v227];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:54];
      v229 = [[_SFPBListenToCardSection alloc] initWithFacade:v351];
      v230 = [(_SFPBCardSection *)v350 value];
      [v230 setListenToCardSection:v229];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:55];
      v231 = [[_SFPBWatchNowCardSection alloc] initWithFacade:v351];
      v232 = [(_SFPBCardSection *)v350 value];
      [v232 setWatchNowCardSection:v231];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:56];
      v233 = [[_SFPBStrokeAnimationCardSection alloc] initWithFacade:v351];
      v234 = [(_SFPBCardSection *)v350 value];
      [v234 setStrokeAnimationCardSection:v233];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:57];
      v235 = [[_SFPBButtonListCardSection alloc] initWithFacade:v351];
      v236 = [(_SFPBCardSection *)v350 value];
      [v236 setButtonListCardSection:v235];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:58];
      v237 = [[_SFPBCommandRowCardSection alloc] initWithFacade:v351];
      v238 = [(_SFPBCardSection *)v350 value];
      [v238 setCommandRowCardSection:v237];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:59];
      v239 = [[_SFPBLeadingTrailingCardSection alloc] initWithFacade:v351];
      v240 = [(_SFPBCardSection *)v350 value];
      [v240 setLeadingTrailingCardSection:v239];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:60];
      v241 = [[_SFPBHeroTitleCardSection alloc] initWithFacade:v351];
      v242 = [(_SFPBCardSection *)v350 value];
      [v242 setHeroTitleCardSection:v241];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:61];
      v243 = [[_SFPBArchiveViewCardSection alloc] initWithFacade:v351];
      v244 = [(_SFPBCardSection *)v350 value];
      [v244 setArchiveViewCardSection:v243];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:63];
      v245 = [[_SFPBAppIconCardSection alloc] initWithFacade:v351];
      v246 = [(_SFPBCardSection *)v350 value];
      [v246 setAppIconCardSection:v245];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:64];
      v247 = [[_SFPBLargeTitleDetailedRowCardSection alloc] initWithFacade:v351];
      v248 = [(_SFPBCardSection *)v350 value];
      [v248 setLargeTitleDetailedRowCardSection:v247];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:90];
      v249 = [[_SFPBSafariTableOfContentsCardSection alloc] initWithFacade:v351];
      v250 = [(_SFPBCardSection *)v350 value];
      [v250 setSafariTableOfContentsCardSection:v249];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:200];
      v251 = [[_SFPBRFSummaryItemShortNumberCardSection alloc] initWithFacade:v351];
      v252 = [(_SFPBCardSection *)v350 value];
      [v252 setRfSummaryItemShortNumberCardSection:v251];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:201];
      v253 = [[_SFPBRFSummaryItemTextCardSection alloc] initWithFacade:v351];
      v254 = [(_SFPBCardSection *)v350 value];
      [v254 setRfSummaryItemTextCardSection:v253];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:202];
      v255 = [[_SFPBRFSummaryItemStandardCardSection alloc] initWithFacade:v351];
      v256 = [(_SFPBCardSection *)v350 value];
      [v256 setRfSummaryItemStandardCardSection:v255];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:203];
      v257 = [[_SFPBRFFactItemShortNumberCardSection alloc] initWithFacade:v351];
      v258 = [(_SFPBCardSection *)v350 value];
      [v258 setRfFactItemShortNumberCardSection:v257];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:204];
      v259 = [[_SFPBRFFactItemStandardCardSection alloc] initWithFacade:v351];
      v260 = [(_SFPBCardSection *)v350 value];
      [v260 setRfFactItemStandardCardSection:v259];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:205];
      v261 = [[_SFPBRFLongItemStandardCardSection alloc] initWithFacade:v351];
      v262 = [(_SFPBCardSection *)v350 value];
      [v262 setRfLongItemStandardCardSection:v261];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:206];
      v263 = [[_SFPBRFPrimaryHeaderRichCardSection alloc] initWithFacade:v351];
      v264 = [(_SFPBCardSection *)v350 value];
      [v264 setRfPrimaryHeaderRichCardSection:v263];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:207];
      v265 = [[_SFPBRFPrimaryHeaderStandardCardSection alloc] initWithFacade:v351];
      v266 = [(_SFPBCardSection *)v350 value];
      [v266 setRfPrimaryHeaderStandardCardSection:v265];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:208];
      v267 = [[_SFPBRFReferenceFootnoteCardSection alloc] initWithFacade:v351];
      v268 = [(_SFPBCardSection *)v350 value];
      [v268 setRfReferenceFootnoteCardSection:v267];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:209];
      v269 = [[_SFPBRFReferenceRichCardSection alloc] initWithFacade:v351];
      v270 = [(_SFPBCardSection *)v350 value];
      [v270 setRfReferenceRichCardSection:v269];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:210];
      v271 = [[_SFPBRFSimpleItemRichCardSection alloc] initWithFacade:v351];
      v272 = [(_SFPBCardSection *)v350 value];
      [v272 setRfSimpleItemRichCardSection:v271];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:211];
      v273 = [[_SFPBRFSimpleItemStandardCardSection alloc] initWithFacade:v351];
      v274 = [(_SFPBCardSection *)v350 value];
      [v274 setRfSimpleItemStandardCardSection:v273];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:212];
      v275 = [[_SFPBRFSummaryItemAlignedTextCardSection alloc] initWithFacade:v351];
      v276 = [(_SFPBCardSection *)v350 value];
      [v276 setRfSummaryItemAlignedTextCardSection:v275];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:213];
      v277 = [[_SFPBRFExpandableStandardCardSection alloc] initWithFacade:v351];
      v278 = [(_SFPBCardSection *)v350 value];
      [v278 setRfExpandableStandardCardSection:v277];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:214];
      v279 = [[_SFPBRFFactItemButtonCardSection alloc] initWithFacade:v351];
      v280 = [(_SFPBCardSection *)v350 value];
      [v280 setRfFactItemButtonCardSection:v279];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:215];
      v281 = [[_SFPBRFFactItemHeroNumberCardSection alloc] initWithFacade:v351];
      v282 = [(_SFPBCardSection *)v350 value];
      [v282 setRfFactItemHeroNumberCardSection:v281];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:216];
      v283 = [[_SFPBRFPrimaryHeaderMarqueeCardSection alloc] initWithFacade:v351];
      v284 = [(_SFPBCardSection *)v350 value];
      [v284 setRfPrimaryHeaderMarqueeCardSection:v283];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:217];
      v285 = [[_SFPBRFSummaryItemDetailedTextCardSection alloc] initWithFacade:v351];
      v286 = [(_SFPBCardSection *)v350 value];
      [v286 setRfSummaryItemDetailedTextCardSection:v285];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:218];
      v287 = [[_SFPBRFSimpleItemPlayerCardSection alloc] initWithFacade:v351];
      v288 = [(_SFPBCardSection *)v350 value];
      [v288 setRfSimpleItemPlayerCardSection:v287];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:219];
      v289 = [[_SFPBRFSummaryItemPairCardSection alloc] initWithFacade:v351];
      v290 = [(_SFPBCardSection *)v350 value];
      [v290 setRfSummaryItemPairCardSection:v289];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:220];
      v291 = [[_SFPBRFSummaryItemPairNumberCardSection alloc] initWithFacade:v351];
      v292 = [(_SFPBCardSection *)v350 value];
      [v292 setRfSummaryItemPairNumberCardSection:v291];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:221];
      v293 = [[_SFPBRFFactItemShortHeroNumberCardSection alloc] initWithFacade:v351];
      v294 = [(_SFPBCardSection *)v350 value];
      [v294 setRfFactItemShortHeroNumberCardSection:v293];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:222];
      v295 = [[_SFPBRFFactItemDetailedNumberCardSection alloc] initWithFacade:v351];
      v296 = [(_SFPBCardSection *)v350 value];
      [v296 setRfFactItemDetailedNumberCardSection:v295];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:223];
      v297 = [[_SFPBRFFactItemHeroButtonCardSection alloc] initWithFacade:v351];
      v298 = [(_SFPBCardSection *)v350 value];
      [v298 setRfFactItemHeroButtonCardSection:v297];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:224];
      v299 = [[_SFPBRFFactItemImageRightCardSection alloc] initWithFacade:v351];
      v300 = [(_SFPBCardSection *)v350 value];
      [v300 setRfFactItemImageRightCardSection:v299];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:225];
      v301 = [[_SFPBRFSummaryItemSwitchV2CardSection alloc] initWithFacade:v351];
      v302 = [(_SFPBCardSection *)v350 value];
      [v302 setRfSummaryItemSwitchV2CardSection:v301];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:226];
      v303 = [[_SFPBRFTableHeaderCardSection alloc] initWithFacade:v351];
      v304 = [(_SFPBCardSection *)v350 value];
      [v304 setRfTableHeaderCardSection:v303];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:227];
      v305 = [[_SFPBRFTableRowCardSection alloc] initWithFacade:v351];
      v306 = [(_SFPBCardSection *)v350 value];
      [v306 setRfTableRowCardSection:v305];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:228];
      v307 = [[_SFPBRFSimpleItemVisualElementCardSection alloc] initWithFacade:v351];
      v308 = [(_SFPBCardSection *)v350 value];
      [v308 setRfSimpleItemVisualElementCardSection:v307];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:229];
      v309 = [[_SFPBRFSummaryItemPlayerCardSection alloc] initWithFacade:v351];
      v310 = [(_SFPBCardSection *)v350 value];
      [v310 setRfSummaryItemPlayerCardSection:v309];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:230];
      v311 = [[_SFPBRFSummaryItemImageRightCardSection alloc] initWithFacade:v351];
      v312 = [(_SFPBCardSection *)v350 value];
      [v312 setRfSummaryItemImageRightCardSection:v311];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:231];
      v313 = [[_SFPBRFSummaryItemButtonCardSection alloc] initWithFacade:v351];
      v314 = [(_SFPBCardSection *)v350 value];
      [v314 setRfSummaryItemButtonCardSection:v313];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:232];
      v315 = [[_SFPBRFSimpleItemReverseRichCardSection alloc] initWithFacade:v351];
      v316 = [(_SFPBCardSection *)v350 value];
      [v316 setRfSimpleItemReverseRichCardSection:v315];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:233];
      v317 = [[_SFPBRFSimpleItemRichSearchResultCardSection alloc] initWithFacade:v351];
      v318 = [(_SFPBCardSection *)v350 value];
      [v318 setRfSimpleItemRichSearchResultCardSection:v317];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:234];
      v319 = [[_SFPBRFPrimaryHeaderStackedImageCardSection alloc] initWithFacade:v351];
      v320 = [(_SFPBCardSection *)v350 value];
      [v320 setRfPrimaryHeaderStackedImageCardSection:v319];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:235];
      v321 = [[_SFPBRFReferenceItemLogoCardSection alloc] initWithFacade:v351];
      v322 = [(_SFPBCardSection *)v350 value];
      [v322 setRfReferenceItemLogoCardSection:v321];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:236];
      v323 = [[_SFPBRFReferenceItemButtonCardSection alloc] initWithFacade:v351];
      v324 = [(_SFPBCardSection *)v350 value];
      [v324 setRfReferenceItemButtonCardSection:v323];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:237];
      v325 = [[_SFPBRFButtonCardSection alloc] initWithFacade:v351];
      v326 = [(_SFPBCardSection *)v350 value];
      [v326 setRfButtonCardSection:v325];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:238];
      v327 = [[_SFPBRFBinaryButtonCardSection alloc] initWithFacade:v351];
      v328 = [(_SFPBCardSection *)v350 value];
      [v328 setRfBinaryButtonCardSection:v327];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:239];
      v329 = [[_SFPBRFReferenceCenteredCardSection alloc] initWithFacade:v351];
      v330 = [(_SFPBCardSection *)v350 value];
      [v330 setRfReferenceCenteredCardSection:v329];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:240];
      v331 = [[_SFPBRFSecondaryHeaderStandardCardSection alloc] initWithFacade:v351];
      v332 = [(_SFPBCardSection *)v350 value];
      [v332 setRfSecondaryHeaderStandardCardSection:v331];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:241];
      v333 = [[_SFPBRFSecondaryHeaderEmphasizedCardSection alloc] initWithFacade:v351];
      v334 = [(_SFPBCardSection *)v350 value];
      [v334 setRfSecondaryHeaderEmphasizedCardSection:v333];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:242];
      v335 = [[_SFPBRFMapCardSection alloc] initWithFacade:v351];
      v336 = [(_SFPBCardSection *)v350 value];
      [v336 setRfMapCardSection:v335];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:243];
      v337 = [[_SFPBRFReferenceStandardCardSection alloc] initWithFacade:v351];
      v338 = [(_SFPBCardSection *)v350 value];
      [v338 setRfReferenceStandardCardSection:v337];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:744];
      v339 = [[_SFPBRFMultiButtonCardSection alloc] initWithFacade:v351];
      v340 = [(_SFPBCardSection *)v350 value];
      [v340 setRfMultiButtonCardSection:v339];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:745];
      v341 = [[_SFPBRFDisambiguationTitleCardSection alloc] initWithFacade:v351];
      v342 = [(_SFPBCardSection *)v350 value];
      [v342 setRfDisambiguationTitleCardSection:v341];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v350 setType:246];
      v343 = [[_SFPBRFSummaryItemExpandableCardSection alloc] initWithFacade:v351];
      v344 = [(_SFPBCardSection *)v350 value];
      [v344 setRfSummaryItemExpandableCardSection:v343];
    }

    v345 = v350;
  }

  v346 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCardSection)initWithDictionary:(id)a3
{
  v221 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v211.receiver = self;
  v211.super_class = _SFPBCardSection;
  v5 = [(_SFPBCardSection *)&v211 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    v7 = 0x1E696A000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setType:](v5, "setType:", [v6 intValue]);
    }

    v147 = v6;
    v8 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBCardSectionValue alloc] initWithDictionary:v8];
      [(_SFPBCardSection *)v5 setValue:v9];
    }

    v146 = v8;
    v10 = [v4 objectForKeyedSubscript:@"nextCard"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBCard alloc] initWithDictionary:v10];
      [(_SFPBCardSection *)v5 setNextCard:v11];
    }

    v145 = v10;
    v12 = [v4 objectForKeyedSubscript:@"commands"];
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

    v21 = [v4 objectForKeyedSubscript:@"parameterKeyPaths"];
    objc_opt_class();
    v173 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = v4;
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

      v4 = v22;
      v13 = 0x1E695D000uLL;
    }

    v30 = [v4 objectForKeyedSubscript:@"cardSectionId"];
    objc_opt_class();
    v172 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(_SFPBCardSection *)v5 setCardSectionId:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"resultIdentifier"];
    objc_opt_class();
    v171 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [v32 copy];
      [(_SFPBCardSection *)v5 setResultIdentifier:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"userReportRequest"];
    objc_opt_class();
    v170 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBUserReportRequest alloc] initWithDictionary:v34];
      [(_SFPBCardSection *)v5 setUserReportRequest:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"command"];
    objc_opt_class();
    v169 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBCommand alloc] initWithDictionary:v36];
      [(_SFPBCardSection *)v5 setCommand:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"previewCommand"];
    objc_opt_class();
    v168 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBCommand alloc] initWithDictionary:v38];
      [(_SFPBCardSection *)v5 setPreviewCommand:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"previewButtonItems"];
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

    v48 = [v4 objectForKeyedSubscript:@"cardSectionDetail"];
    objc_opt_class();
    v166 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [v48 copy];
      [(_SFPBCardSection *)v5 setCardSectionDetail:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"previewButtonItemsTitle"];
    objc_opt_class();
    v165 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [v50 copy];
      [(_SFPBCardSection *)v5 setPreviewButtonItemsTitle:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v164 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBColor alloc] initWithDictionary:v52];
      [(_SFPBCardSection *)v5 setBackgroundColor:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"shouldHideInAmbientMode"];
    v55 = *(v7 + 3480);
    objc_opt_class();
    v163 = v54;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setShouldHideInAmbientMode:](v5, "setShouldHideInAmbientMode:", [v54 BOOLValue]);
    }

    v56 = [v4 objectForKeyedSubscript:@"leadingSwipeButtonItems"];
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

    v64 = [v4 objectForKeyedSubscript:@"trailingSwipeButtonItems"];
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

    v72 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
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

    v80 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    v159 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [v80 copy];
      [(_SFPBCardSection *)v5 setPunchoutPickerTitle:v81];
    }

    v82 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    v158 = v82;
    if (objc_opt_isKindOfClass())
    {
      v83 = [v82 copy];
      [(_SFPBCardSection *)v5 setPunchoutPickerDismissText:v83];
    }

    v84 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    v85 = *(v7 + 3480);
    objc_opt_class();
    v157 = v84;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v84 BOOLValue]);
    }

    v86 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    v87 = *(v7 + 3480);
    objc_opt_class();
    v156 = v86;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v86 BOOLValue]);
    }

    v88 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    v89 = *(v7 + 3480);
    objc_opt_class();
    v155 = v88;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v88 BOOLValue]);
    }

    v90 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    v91 = *(v7 + 3480);
    objc_opt_class();
    v154 = v90;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v90 intValue]);
    }

    v92 = [v4 objectForKeyedSubscript:@"referencedCommands"];
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

    v100 = [v4 objectForKeyedSubscript:@"forceEnable3DTouch"];
    v101 = *(v7 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setForceEnable3DTouch:](v5, "setForceEnable3DTouch:", [v100 BOOLValue]);
    }

    v102 = [v4 objectForKeyedSubscript:@"shouldShowInSmartDialog"];
    v103 = *(v7 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setShouldShowInSmartDialog:](v5, "setShouldShowInSmartDialog:", [v102 BOOLValue]);
    }

    v104 = [v4 objectForKeyedSubscript:@"appEntityAnnotation"];
    objc_opt_class();
    v152 = v104;
    if (objc_opt_isKindOfClass())
    {
      v105 = [[_SFPBAppEntityAnnotation alloc] initWithDictionary:v104];
      [(_SFPBCardSection *)v5 setAppEntityAnnotation:v105];
    }

    v106 = [v4 objectForKeyedSubscript:@"emphasisSubjectId"];
    objc_opt_class();
    v151 = v106;
    if (objc_opt_isKindOfClass())
    {
      v107 = [v106 copy];
      [(_SFPBCardSection *)v5 setEmphasisSubjectId:v107];
    }

    v108 = [v4 objectForKeyedSubscript:@"increasedContrastMode"];
    v109 = *(v7 + 3480);
    objc_opt_class();
    v150 = v108;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setIncreasedContrastMode:](v5, "setIncreasedContrastMode:", [v108 intValue]);
    }

    v110 = [v4 objectForKeyedSubscript:@"secondaryCommand"];
    objc_opt_class();
    v149 = v110;
    if (objc_opt_isKindOfClass())
    {
      v111 = [[_SFPBCommand alloc] initWithDictionary:v110];
      [(_SFPBCardSection *)v5 setSecondaryCommand:v111];
    }

    v112 = [v4 objectForKeyedSubscript:@"requiredLevelOfDetail"];
    v113 = *(v7 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setRequiredLevelOfDetail:](v5, "setRequiredLevelOfDetail:", [v112 intValue]);
    }

    v143 = v102;
    v144 = v100;
    v114 = [v4 objectForKeyedSubscript:@"racFeedbackSubfeatureId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v115 = [v114 copy];
      [(_SFPBCardSection *)v5 setRacFeedbackSubfeatureId:v115];
    }

    v116 = [v4 objectForKeyedSubscript:@"racFeedbackLoggingContent"];
    objc_opt_class();
    v148 = v4;
    v141 = v114;
    v142 = v112;
    v140 = v116;
    if (objc_opt_isKindOfClass())
    {
      v117 = [MEMORY[0x1E695DF90] dictionary];
      racFeedbackLoggingContent = v5->_racFeedbackLoggingContent;
      v5->_racFeedbackLoggingContent = v117;

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

      v4 = v148;
      v13 = 0x1E695D000uLL;
      v114 = v141;
      v116 = v140;
    }

    v126 = [v4 objectForKeyedSubscript:@"copyableItems"];
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

      v4 = v148;
      v114 = v141;
      v112 = v142;
      v116 = v140;
    }

    v135 = [v4 objectForKeyedSubscript:@"applicationBundleIdentifier"];
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

- (_SFPBCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appEntityAnnotation)
  {
    v4 = [(_SFPBCardSection *)self appEntityAnnotation];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appEntityAnnotation"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appEntityAnnotation"];
    }
  }

  if (self->_applicationBundleIdentifier)
  {
    v7 = [(_SFPBCardSection *)self applicationBundleIdentifier];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_backgroundColor)
  {
    v9 = [(_SFPBCardSection *)self backgroundColor];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v12 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_cardSectionDetail)
  {
    v13 = [(_SFPBCardSection *)self cardSectionDetail];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"cardSectionDetail"];
  }

  if (self->_cardSectionId)
  {
    v15 = [(_SFPBCardSection *)self cardSectionId];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"cardSectionId"];
  }

  if (self->_command)
  {
    v17 = [(_SFPBCardSection *)self command];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"command"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"command"];
    }
  }

  v129 = v3;
  if ([(NSArray *)self->_commands count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
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

          v26 = [*(*(&v158 + 1) + 8 * i) dictionaryRepresentation];
          if (v26)
          {
            [v20 addObject:v26];
          }

          else
          {
            v27 = [MEMORY[0x1E695DFB0] null];
            [v20 addObject:v27];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v158 objects:v169 count:16];
      }

      while (v23);
    }

    v3 = v129;
    [v129 setObject:v20 forKeyedSubscript:@"commands"];
  }

  if ([(NSArray *)self->_copyableItems count])
  {
    v28 = [MEMORY[0x1E695DF70] array];
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

          v34 = [*(*(&v154 + 1) + 8 * j) dictionaryRepresentation];
          if (v34)
          {
            [v28 addObject:v34];
          }

          else
          {
            v35 = [MEMORY[0x1E695DFB0] null];
            [v28 addObject:v35];
          }
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v154 objects:v168 count:16];
      }

      while (v31);
    }

    v3 = v129;
    [v129 setObject:v28 forKeyedSubscript:@"copyableItems"];
  }

  if (self->_emphasisSubjectId)
  {
    v36 = [(_SFPBCardSection *)self emphasisSubjectId];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"emphasisSubjectId"];
  }

  if (self->_forceEnable3DTouch)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection forceEnable3DTouch](self, "forceEnable3DTouch")}];
    [v3 setObject:v38 forKeyedSubscript:@"forceEnable3DTouch"];
  }

  if (self->_hasBottomPadding)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v39 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v40 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_increasedContrastMode)
  {
    v41 = [(_SFPBCardSection *)self increasedContrastMode];
    if (v41 >= 4)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v41];
    }

    else
    {
      v42 = off_1E7ACE560[v41];
    }

    [v3 setObject:v42 forKeyedSubscript:@"increasedContrastMode"];
  }

  if ([(NSArray *)self->_leadingSwipeButtonItems count])
  {
    v43 = [MEMORY[0x1E695DF70] array];
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

          v49 = [*(*(&v150 + 1) + 8 * k) dictionaryRepresentation];
          if (v49)
          {
            [v43 addObject:v49];
          }

          else
          {
            v50 = [MEMORY[0x1E695DFB0] null];
            [v43 addObject:v50];
          }
        }

        v46 = [(NSArray *)v44 countByEnumeratingWithState:&v150 objects:v167 count:16];
      }

      while (v46);
    }

    v3 = v129;
    [v129 setObject:v43 forKeyedSubscript:@"leadingSwipeButtonItems"];
  }

  if (self->_nextCard)
  {
    v51 = [(_SFPBCardSection *)self nextCard];
    v52 = [v51 dictionaryRepresentation];
    if (v52)
    {
      [v3 setObject:v52 forKeyedSubscript:@"nextCard"];
    }

    else
    {
      v53 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v53 forKeyedSubscript:@"nextCard"];
    }
  }

  if (self->_parameterKeyPaths)
  {
    v54 = [(_SFPBCardSection *)self parameterKeyPaths];
    v55 = [v54 copy];
    [v3 setObject:v55 forKeyedSubscript:@"parameterKeyPaths"];
  }

  if ([(NSArray *)self->_previewButtonItems count])
  {
    v56 = [MEMORY[0x1E695DF70] array];
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

          v62 = [*(*(&v146 + 1) + 8 * m) dictionaryRepresentation];
          if (v62)
          {
            [v56 addObject:v62];
          }

          else
          {
            v63 = [MEMORY[0x1E695DFB0] null];
            [v56 addObject:v63];
          }
        }

        v59 = [(NSArray *)v57 countByEnumeratingWithState:&v146 objects:v166 count:16];
      }

      while (v59);
    }

    v3 = v129;
    [v129 setObject:v56 forKeyedSubscript:@"previewButtonItems"];
  }

  if (self->_previewButtonItemsTitle)
  {
    v64 = [(_SFPBCardSection *)self previewButtonItemsTitle];
    v65 = [v64 copy];
    [v3 setObject:v65 forKeyedSubscript:@"previewButtonItemsTitle"];
  }

  if (self->_previewCommand)
  {
    v66 = [(_SFPBCardSection *)self previewCommand];
    v67 = [v66 dictionaryRepresentation];
    if (v67)
    {
      [v3 setObject:v67 forKeyedSubscript:@"previewCommand"];
    }

    else
    {
      v68 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v68 forKeyedSubscript:@"previewCommand"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v69 = [MEMORY[0x1E695DF70] array];
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

          v75 = [*(*(&v142 + 1) + 8 * n) dictionaryRepresentation];
          if (v75)
          {
            [v69 addObject:v75];
          }

          else
          {
            v76 = [MEMORY[0x1E695DFB0] null];
            [v69 addObject:v76];
          }
        }

        v72 = [(NSArray *)v70 countByEnumeratingWithState:&v142 objects:v165 count:16];
      }

      while (v72);
    }

    v3 = v129;
    [v129 setObject:v69 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v77 = [(_SFPBCardSection *)self punchoutPickerDismissText];
    v78 = [v77 copy];
    [v3 setObject:v78 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v79 = [(_SFPBCardSection *)self punchoutPickerTitle];
    v80 = [v79 copy];
    [v3 setObject:v80 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  v81 = [MEMORY[0x1E695DF90] dictionary];
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
        [v81 setObject:v88 forKeyedSubscript:v87];
      }

      v84 = [(NSDictionary *)v82 countByEnumeratingWithState:&v138 objects:v164 count:16];
    }

    while (v84);
  }

  [v3 setObject:v81 forKeyedSubscript:@"racFeedbackLoggingContent"];
  if (self->_racFeedbackSubfeatureId)
  {
    v89 = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
    v90 = [v89 copy];
    [v3 setObject:v90 forKeyedSubscript:@"racFeedbackSubfeatureId"];
  }

  if ([(NSArray *)self->_referencedCommands count])
  {
    v91 = [MEMORY[0x1E695DF70] array];
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

          v97 = [*(*(&v134 + 1) + 8 * jj) dictionaryRepresentation];
          if (v97)
          {
            [v91 addObject:v97];
          }

          else
          {
            v98 = [MEMORY[0x1E695DFB0] null];
            [v91 addObject:v98];
          }
        }

        v94 = [(NSArray *)v92 countByEnumeratingWithState:&v134 objects:v163 count:16];
      }

      while (v94);
    }

    v3 = v129;
    [v129 setObject:v91 forKeyedSubscript:@"referencedCommands"];
  }

  if (self->_requiredLevelOfDetail)
  {
    v99 = [(_SFPBCardSection *)self requiredLevelOfDetail];
    if (v99 >= 4)
    {
      v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v99];
    }

    else
    {
      v100 = off_1E7ACE560[v99];
    }

    [v3 setObject:v100 forKeyedSubscript:@"requiredLevelOfDetail"];
  }

  if (self->_resultIdentifier)
  {
    v101 = [(_SFPBCardSection *)self resultIdentifier];
    v102 = [v101 copy];
    [v3 setObject:v102 forKeyedSubscript:@"resultIdentifier"];
  }

  if (self->_secondaryCommand)
  {
    v103 = [(_SFPBCardSection *)self secondaryCommand];
    v104 = [v103 dictionaryRepresentation];
    if (v104)
    {
      [v3 setObject:v104 forKeyedSubscript:@"secondaryCommand"];
    }

    else
    {
      v105 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v105 forKeyedSubscript:@"secondaryCommand"];
    }
  }

  if (self->_separatorStyle)
  {
    v106 = [(_SFPBCardSection *)self separatorStyle];
    if (v106 >= 6)
    {
      v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v106];
    }

    else
    {
      v107 = off_1E7ACE580[v106];
    }

    [v3 setObject:v107 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_shouldHideInAmbientMode)
  {
    v108 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection shouldHideInAmbientMode](self, "shouldHideInAmbientMode")}];
    [v3 setObject:v108 forKeyedSubscript:@"shouldHideInAmbientMode"];
  }

  if (self->_shouldShowInSmartDialog)
  {
    v109 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection shouldShowInSmartDialog](self, "shouldShowInSmartDialog")}];
    [v3 setObject:v109 forKeyedSubscript:@"shouldShowInSmartDialog"];
  }

  if ([(NSArray *)self->_trailingSwipeButtonItems count])
  {
    v110 = [MEMORY[0x1E695DF70] array];
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

          v116 = [*(*(&v130 + 1) + 8 * kk) dictionaryRepresentation];
          if (v116)
          {
            [v110 addObject:v116];
          }

          else
          {
            v117 = [MEMORY[0x1E695DFB0] null];
            [v110 addObject:v117];
          }
        }

        v113 = [(NSArray *)v111 countByEnumeratingWithState:&v130 objects:v162 count:16];
      }

      while (v113);
    }

    v3 = v129;
    [v129 setObject:v110 forKeyedSubscript:@"trailingSwipeButtonItems"];
  }

  if (self->_type)
  {
    v118 = [(_SFPBCardSection *)self type];
    v119 = @"0";
    switch(v118)
    {
      case 0:
        break;
      case 1:
        v119 = @"1";
        break;
      case 2:
        v119 = @"2";
        break;
      case 3:
        v119 = @"3";
        break;
      case 4:
        v119 = @"4";
        break;
      case 5:
        v119 = @"5";
        break;
      case 6:
        v119 = @"6";
        break;
      case 7:
        v119 = @"7";
        break;
      case 8:
        v119 = @"8";
        break;
      case 9:
        v119 = @"9";
        break;
      case 10:
        v119 = @"10";
        break;
      case 11:
        v119 = @"11";
        break;
      case 12:
        v119 = @"12";
        break;
      case 13:
        v119 = @"13";
        break;
      case 14:
        v119 = @"14";
        break;
      case 15:
        v119 = @"15";
        break;
      case 16:
        v119 = @"16";
        break;
      case 17:
        v119 = @"17";
        break;
      case 18:
        v119 = @"18";
        break;
      case 19:
        v119 = @"19";
        break;
      case 20:
        v119 = @"20";
        break;
      case 21:
        v119 = @"21";
        break;
      case 22:
        v119 = @"22";
        break;
      case 23:
        v119 = @"23";
        break;
      case 24:
        v119 = @"24";
        break;
      case 25:
        v119 = @"25";
        break;
      case 26:
        v119 = @"26";
        break;
      case 27:
        v119 = @"27";
        break;
      case 28:
        v119 = @"28";
        break;
      case 29:
        v119 = @"29";
        break;
      case 30:
        v119 = @"30";
        break;
      case 31:
        v119 = @"31";
        break;
      case 32:
        v119 = @"32";
        break;
      case 33:
        v119 = @"33";
        break;
      case 34:
        v119 = @"34";
        break;
      case 35:
        v119 = @"35";
        break;
      case 36:
        v119 = @"36";
        break;
      case 37:
        v119 = @"37";
        break;
      case 38:
        v119 = @"38";
        break;
      case 39:
        v119 = @"39";
        break;
      case 40:
        v119 = @"40";
        break;
      case 41:
        v119 = @"41";
        break;
      case 42:
        v119 = @"42";
        break;
      case 43:
        v119 = @"43";
        break;
      case 44:
        v119 = @"44";
        break;
      case 45:
        v119 = @"45";
        break;
      case 46:
        v119 = @"46";
        break;
      case 47:
        v119 = @"47";
        break;
      case 48:
        v119 = @"48";
        break;
      case 49:
        v119 = @"49";
        break;
      case 50:
        v119 = @"50";
        break;
      case 51:
        v119 = @"51";
        break;
      case 52:
        v119 = @"52";
        break;
      case 53:
        v119 = @"53";
        break;
      case 54:
        v119 = @"54";
        break;
      case 55:
        v119 = @"55";
        break;
      case 56:
        v119 = @"56";
        break;
      case 57:
        v119 = @"57";
        break;
      case 58:
        v119 = @"58";
        break;
      case 59:
        v119 = @"59";
        break;
      case 60:
        v119 = @"60";
        break;
      case 61:
        v119 = @"61";
        break;
      case 63:
        v119 = @"63";
        break;
      case 64:
        v119 = @"64";
        break;
      case 200:
        v119 = @"200";
        break;
      case 201:
        v119 = @"201";
        break;
      case 202:
        v119 = @"202";
        break;
      case 203:
        v119 = @"203";
        break;
      case 204:
        v119 = @"204";
        break;
      case 205:
        v119 = @"205";
        break;
      case 206:
        v119 = @"206";
        break;
      case 207:
        v119 = @"207";
        break;
      case 208:
        v119 = @"208";
        break;
      case 209:
        v119 = @"209";
        break;
      case 210:
        v119 = @"210";
        break;
      case 211:
        v119 = @"211";
        break;
      case 212:
        v119 = @"212";
        break;
      case 213:
        v119 = @"213";
        break;
      case 214:
        v119 = @"214";
        break;
      case 215:
        v119 = @"215";
        break;
      case 216:
        v119 = @"216";
        break;
      case 217:
        v119 = @"217";
        break;
      case 218:
        v119 = @"218";
        break;
      case 219:
        v119 = @"219";
        break;
      case 220:
        v119 = @"220";
        break;
      case 221:
        v119 = @"221";
        break;
      case 222:
        v119 = @"222";
        break;
      case 223:
        v119 = @"223";
        break;
      case 224:
        v119 = @"224";
        break;
      case 225:
        v119 = @"225";
        break;
      case 226:
        v119 = @"226";
        break;
      case 227:
        v119 = @"227";
        break;
      case 228:
        v119 = @"228";
        break;
      case 229:
        v119 = @"229";
        break;
      case 230:
        v119 = @"230";
        break;
      case 231:
        v119 = @"231";
        break;
      case 232:
        v119 = @"232";
        break;
      case 233:
        v119 = @"233";
        break;
      case 234:
        v119 = @"234";
        break;
      case 235:
        v119 = @"235";
        break;
      case 236:
        v119 = @"236";
        break;
      case 237:
        v119 = @"237";
        break;
      case 238:
        v119 = @"238";
        break;
      case 239:
        v119 = @"239";
        break;
      case 240:
        v119 = @"240";
        break;
      case 241:
        v119 = @"241";
        break;
      case 242:
        v119 = @"242";
        break;
      case 243:
        v119 = @"243";
        break;
      case 244:
        v119 = @"244";
        break;
      case 245:
        v119 = @"245";
        break;
      case 246:
        v119 = @"246";
        break;
      default:
        v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v118];
        break;
    }

    [v3 setObject:v119 forKeyedSubscript:@"type"];
  }

  if (self->_userReportRequest)
  {
    v120 = [(_SFPBCardSection *)self userReportRequest];
    v121 = [v120 dictionaryRepresentation];
    if (v121)
    {
      [v3 setObject:v121 forKeyedSubscript:@"userReportRequest"];
    }

    else
    {
      v122 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v122 forKeyedSubscript:@"userReportRequest"];
    }
  }

  if (self->_value)
  {
    v123 = [(_SFPBCardSection *)self value];
    v124 = [v123 dictionaryRepresentation];
    if (v124)
    {
      [v3 setObject:v124 forKeyedSubscript:@"value"];
    }

    else
    {
      v125 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v125 forKeyedSubscript:@"value"];
    }
  }

  v126 = v3;

  v127 = *MEMORY[0x1E69E9840];
  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_142;
  }

  type = self->_type;
  if (type != [v4 type])
  {
    goto LABEL_142;
  }

  v6 = [(_SFPBCardSection *)self value];
  v7 = [v4 value];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v8 = [(_SFPBCardSection *)self value];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBCardSection *)self value];
    v11 = [v4 value];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self nextCard];
  v7 = [v4 nextCard];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v13 = [(_SFPBCardSection *)self nextCard];
  if (v13)
  {
    v14 = v13;
    v15 = [(_SFPBCardSection *)self nextCard];
    v16 = [v4 nextCard];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self commands];
  v7 = [v4 commands];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v18 = [(_SFPBCardSection *)self commands];
  if (v18)
  {
    v19 = v18;
    v20 = [(_SFPBCardSection *)self commands];
    v21 = [v4 commands];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self parameterKeyPaths];
  v7 = [v4 parameterKeyPaths];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v23 = [(_SFPBCardSection *)self parameterKeyPaths];
  if (v23)
  {
    v24 = v23;
    v25 = [(_SFPBCardSection *)self parameterKeyPaths];
    v26 = [v4 parameterKeyPaths];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self cardSectionId];
  v7 = [v4 cardSectionId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v28 = [(_SFPBCardSection *)self cardSectionId];
  if (v28)
  {
    v29 = v28;
    v30 = [(_SFPBCardSection *)self cardSectionId];
    v31 = [v4 cardSectionId];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self resultIdentifier];
  v7 = [v4 resultIdentifier];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v33 = [(_SFPBCardSection *)self resultIdentifier];
  if (v33)
  {
    v34 = v33;
    v35 = [(_SFPBCardSection *)self resultIdentifier];
    v36 = [v4 resultIdentifier];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self userReportRequest];
  v7 = [v4 userReportRequest];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v38 = [(_SFPBCardSection *)self userReportRequest];
  if (v38)
  {
    v39 = v38;
    v40 = [(_SFPBCardSection *)self userReportRequest];
    v41 = [v4 userReportRequest];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self command];
  v7 = [v4 command];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v43 = [(_SFPBCardSection *)self command];
  if (v43)
  {
    v44 = v43;
    v45 = [(_SFPBCardSection *)self command];
    v46 = [v4 command];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self previewCommand];
  v7 = [v4 previewCommand];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v48 = [(_SFPBCardSection *)self previewCommand];
  if (v48)
  {
    v49 = v48;
    v50 = [(_SFPBCardSection *)self previewCommand];
    v51 = [v4 previewCommand];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self previewButtonItems];
  v7 = [v4 previewButtonItems];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v53 = [(_SFPBCardSection *)self previewButtonItems];
  if (v53)
  {
    v54 = v53;
    v55 = [(_SFPBCardSection *)self previewButtonItems];
    v56 = [v4 previewButtonItems];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self cardSectionDetail];
  v7 = [v4 cardSectionDetail];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v58 = [(_SFPBCardSection *)self cardSectionDetail];
  if (v58)
  {
    v59 = v58;
    v60 = [(_SFPBCardSection *)self cardSectionDetail];
    v61 = [v4 cardSectionDetail];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self previewButtonItemsTitle];
  v7 = [v4 previewButtonItemsTitle];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v63 = [(_SFPBCardSection *)self previewButtonItemsTitle];
  if (v63)
  {
    v64 = v63;
    v65 = [(_SFPBCardSection *)self previewButtonItemsTitle];
    v66 = [v4 previewButtonItemsTitle];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self backgroundColor];
  v7 = [v4 backgroundColor];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v68 = [(_SFPBCardSection *)self backgroundColor];
  if (v68)
  {
    v69 = v68;
    v70 = [(_SFPBCardSection *)self backgroundColor];
    v71 = [v4 backgroundColor];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  shouldHideInAmbientMode = self->_shouldHideInAmbientMode;
  if (shouldHideInAmbientMode != [v4 shouldHideInAmbientMode])
  {
    goto LABEL_142;
  }

  v6 = [(_SFPBCardSection *)self leadingSwipeButtonItems];
  v7 = [v4 leadingSwipeButtonItems];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v74 = [(_SFPBCardSection *)self leadingSwipeButtonItems];
  if (v74)
  {
    v75 = v74;
    v76 = [(_SFPBCardSection *)self leadingSwipeButtonItems];
    v77 = [v4 leadingSwipeButtonItems];
    v78 = [v76 isEqual:v77];

    if (!v78)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self trailingSwipeButtonItems];
  v7 = [v4 trailingSwipeButtonItems];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v79 = [(_SFPBCardSection *)self trailingSwipeButtonItems];
  if (v79)
  {
    v80 = v79;
    v81 = [(_SFPBCardSection *)self trailingSwipeButtonItems];
    v82 = [v4 trailingSwipeButtonItems];
    v83 = [v81 isEqual:v82];

    if (!v83)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self punchoutOptions];
  v7 = [v4 punchoutOptions];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v84 = [(_SFPBCardSection *)self punchoutOptions];
  if (v84)
  {
    v85 = v84;
    v86 = [(_SFPBCardSection *)self punchoutOptions];
    v87 = [v4 punchoutOptions];
    v88 = [v86 isEqual:v87];

    if (!v88)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self punchoutPickerTitle];
  v7 = [v4 punchoutPickerTitle];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v89 = [(_SFPBCardSection *)self punchoutPickerTitle];
  if (v89)
  {
    v90 = v89;
    v91 = [(_SFPBCardSection *)self punchoutPickerTitle];
    v92 = [v4 punchoutPickerTitle];
    v93 = [v91 isEqual:v92];

    if (!v93)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self punchoutPickerDismissText];
  v7 = [v4 punchoutPickerDismissText];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v94 = [(_SFPBCardSection *)self punchoutPickerDismissText];
  if (v94)
  {
    v95 = v94;
    v96 = [(_SFPBCardSection *)self punchoutPickerDismissText];
    v97 = [v4 punchoutPickerDismissText];
    v98 = [v96 isEqual:v97];

    if (!v98)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_142;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_142;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_142;
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_142;
  }

  v6 = [(_SFPBCardSection *)self referencedCommands];
  v7 = [v4 referencedCommands];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v103 = [(_SFPBCardSection *)self referencedCommands];
  if (v103)
  {
    v104 = v103;
    v105 = [(_SFPBCardSection *)self referencedCommands];
    v106 = [v4 referencedCommands];
    v107 = [v105 isEqual:v106];

    if (!v107)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  forceEnable3DTouch = self->_forceEnable3DTouch;
  if (forceEnable3DTouch != [v4 forceEnable3DTouch])
  {
    goto LABEL_142;
  }

  shouldShowInSmartDialog = self->_shouldShowInSmartDialog;
  if (shouldShowInSmartDialog != [v4 shouldShowInSmartDialog])
  {
    goto LABEL_142;
  }

  v6 = [(_SFPBCardSection *)self appEntityAnnotation];
  v7 = [v4 appEntityAnnotation];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v110 = [(_SFPBCardSection *)self appEntityAnnotation];
  if (v110)
  {
    v111 = v110;
    v112 = [(_SFPBCardSection *)self appEntityAnnotation];
    v113 = [v4 appEntityAnnotation];
    v114 = [v112 isEqual:v113];

    if (!v114)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self emphasisSubjectId];
  v7 = [v4 emphasisSubjectId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v115 = [(_SFPBCardSection *)self emphasisSubjectId];
  if (v115)
  {
    v116 = v115;
    v117 = [(_SFPBCardSection *)self emphasisSubjectId];
    v118 = [v4 emphasisSubjectId];
    v119 = [v117 isEqual:v118];

    if (!v119)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  increasedContrastMode = self->_increasedContrastMode;
  if (increasedContrastMode != [v4 increasedContrastMode])
  {
    goto LABEL_142;
  }

  v6 = [(_SFPBCardSection *)self secondaryCommand];
  v7 = [v4 secondaryCommand];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v121 = [(_SFPBCardSection *)self secondaryCommand];
  if (v121)
  {
    v122 = v121;
    v123 = [(_SFPBCardSection *)self secondaryCommand];
    v124 = [v4 secondaryCommand];
    v125 = [v123 isEqual:v124];

    if (!v125)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  requiredLevelOfDetail = self->_requiredLevelOfDetail;
  if (requiredLevelOfDetail != [v4 requiredLevelOfDetail])
  {
    goto LABEL_142;
  }

  v6 = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
  v7 = [v4 racFeedbackSubfeatureId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v127 = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
  if (v127)
  {
    v128 = v127;
    v129 = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
    v130 = [v4 racFeedbackSubfeatureId];
    v131 = [v129 isEqual:v130];

    if (!v131)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self racFeedbackLoggingContent];
  v7 = [v4 racFeedbackLoggingContent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v132 = [(_SFPBCardSection *)self racFeedbackLoggingContent];
  if (v132)
  {
    v133 = v132;
    v134 = [(_SFPBCardSection *)self racFeedbackLoggingContent];
    v135 = [v4 racFeedbackLoggingContent];
    v136 = [v134 isEqual:v135];

    if (!v136)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self copyableItems];
  v7 = [v4 copyableItems];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_141;
  }

  v137 = [(_SFPBCardSection *)self copyableItems];
  if (v137)
  {
    v138 = v137;
    v139 = [(_SFPBCardSection *)self copyableItems];
    v140 = [v4 copyableItems];
    v141 = [v139 isEqual:v140];

    if (!v141)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  v6 = [(_SFPBCardSection *)self applicationBundleIdentifier];
  v7 = [v4 applicationBundleIdentifier];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_141:

    goto LABEL_142;
  }

  v142 = [(_SFPBCardSection *)self applicationBundleIdentifier];
  if (!v142)
  {

LABEL_145:
    v147 = 1;
    goto LABEL_143;
  }

  v143 = v142;
  v144 = [(_SFPBCardSection *)self applicationBundleIdentifier];
  v145 = [v4 applicationBundleIdentifier];
  v146 = [v144 isEqual:v145];

  if (v146)
  {
    goto LABEL_145;
  }

LABEL_142:
  v147 = 0;
LABEL_143:

  return v147;
}

- (void)writeTo:(id)a3
{
  v125 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_SFPBCardSection *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_SFPBCardSection *)self value];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBCardSection *)self nextCard];
  if (v6)
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

  v19 = [(_SFPBCardSection *)self cardSectionId];
  if (v19)
  {
    PBDataWriterWriteStringField();
  }

  v20 = [(_SFPBCardSection *)self resultIdentifier];
  if (v20)
  {
    PBDataWriterWriteStringField();
  }

  v21 = [(_SFPBCardSection *)self userReportRequest];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBCardSection *)self command];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBCardSection *)self previewCommand];
  if (v23)
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

  v30 = [(_SFPBCardSection *)self cardSectionDetail];
  if (v30)
  {
    PBDataWriterWriteStringField();
  }

  v31 = [(_SFPBCardSection *)self previewButtonItemsTitle];
  if (v31)
  {
    PBDataWriterWriteStringField();
  }

  v32 = [(_SFPBCardSection *)self backgroundColor];
  if (v32)
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

  v51 = [(_SFPBCardSection *)self punchoutPickerTitle];
  if (v51)
  {
    PBDataWriterWriteStringField();
  }

  v52 = [(_SFPBCardSection *)self punchoutPickerDismissText];
  if (v52)
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

  v59 = [(_SFPBCardSection *)self appEntityAnnotation];
  if (v59)
  {
    PBDataWriterWriteSubmessage();
  }

  v60 = [(_SFPBCardSection *)self emphasisSubjectId];
  if (v60)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCardSection *)self increasedContrastMode])
  {
    PBDataWriterWriteInt32Field();
  }

  v61 = [(_SFPBCardSection *)self secondaryCommand];
  if (v61)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBCardSection *)self requiredLevelOfDetail])
  {
    PBDataWriterWriteInt32Field();
  }

  v62 = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
  if (v62)
  {
    PBDataWriterWriteStringField();
  }

  v63 = [(_SFPBCardSection *)self racFeedbackLoggingContent];
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

  v77 = [(_SFPBCardSection *)self applicationBundleIdentifier];
  if (v77)
  {
    PBDataWriterWriteStringField();
  }

  v78 = *MEMORY[0x1E69E9840];
}

- (void)setApplicationBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCopyableItems:(id)a3
{
  v4 = a3;
  copyableItems = self->_copyableItems;
  v8 = v4;
  if (!copyableItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_copyableItems;
    self->_copyableItems = v6;

    v4 = v8;
    copyableItems = self->_copyableItems;
  }

  [(NSArray *)copyableItems addObject:v4];
}

- (void)setCopyableItems:(id)a3
{
  v4 = [a3 copy];
  copyableItems = self->_copyableItems;
  self->_copyableItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRacFeedbackLoggingContent:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  racFeedbackLoggingContent = self->_racFeedbackLoggingContent;
  if (!racFeedbackLoggingContent)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_racFeedbackLoggingContent;
    self->_racFeedbackLoggingContent = v8;

    racFeedbackLoggingContent = self->_racFeedbackLoggingContent;
  }

  [(NSDictionary *)racFeedbackLoggingContent setObject:v10 forKey:v6];
}

- (BOOL)getRacFeedbackLoggingContent:(id *)a3 forKey:(id)a4
{
  v5 = [(NSDictionary *)self->_racFeedbackLoggingContent objectForKeyedSubscript:a4];
  if (a3 && v5)
  {
    v5 = v5;
    *a3 = v5;
  }

  v6 = v5 != 0;

  return v6;
}

- (void)setRacFeedbackLoggingContent:(id)a3
{
  v4 = [a3 copy];
  racFeedbackLoggingContent = self->_racFeedbackLoggingContent;
  self->_racFeedbackLoggingContent = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRacFeedbackSubfeatureId:(id)a3
{
  v4 = [a3 copy];
  racFeedbackSubfeatureId = self->_racFeedbackSubfeatureId;
  self->_racFeedbackSubfeatureId = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEmphasisSubjectId:(id)a3
{
  v4 = [a3 copy];
  emphasisSubjectId = self->_emphasisSubjectId;
  self->_emphasisSubjectId = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addReferencedCommands:(id)a3
{
  v4 = a3;
  referencedCommands = self->_referencedCommands;
  v8 = v4;
  if (!referencedCommands)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_referencedCommands;
    self->_referencedCommands = v6;

    v4 = v8;
    referencedCommands = self->_referencedCommands;
  }

  [(NSArray *)referencedCommands addObject:v4];
}

- (void)setReferencedCommands:(id)a3
{
  v4 = [a3 copy];
  referencedCommands = self->_referencedCommands;
  self->_referencedCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)a3
{
  v4 = [a3 copy];
  punchoutPickerDismissText = self->_punchoutPickerDismissText;
  self->_punchoutPickerDismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)a3
{
  v4 = [a3 copy];
  punchoutPickerTitle = self->_punchoutPickerTitle;
  self->_punchoutPickerTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)a3
{
  v4 = a3;
  punchoutOptions = self->_punchoutOptions;
  v8 = v4;
  if (!punchoutOptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = v6;

    v4 = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:v4];
}

- (void)setPunchoutOptions:(id)a3
{
  v4 = [a3 copy];
  punchoutOptions = self->_punchoutOptions;
  self->_punchoutOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addTrailingSwipeButtonItems:(id)a3
{
  v4 = a3;
  trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  v8 = v4;
  if (!trailingSwipeButtonItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_trailingSwipeButtonItems;
    self->_trailingSwipeButtonItems = v6;

    v4 = v8;
    trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  }

  [(NSArray *)trailingSwipeButtonItems addObject:v4];
}

- (void)setTrailingSwipeButtonItems:(id)a3
{
  v4 = [a3 copy];
  trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  self->_trailingSwipeButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addLeadingSwipeButtonItems:(id)a3
{
  v4 = a3;
  leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  v8 = v4;
  if (!leadingSwipeButtonItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_leadingSwipeButtonItems;
    self->_leadingSwipeButtonItems = v6;

    v4 = v8;
    leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  }

  [(NSArray *)leadingSwipeButtonItems addObject:v4];
}

- (void)setLeadingSwipeButtonItems:(id)a3
{
  v4 = [a3 copy];
  leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  self->_leadingSwipeButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPreviewButtonItemsTitle:(id)a3
{
  v4 = [a3 copy];
  previewButtonItemsTitle = self->_previewButtonItemsTitle;
  self->_previewButtonItemsTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCardSectionDetail:(id)a3
{
  v4 = [a3 copy];
  cardSectionDetail = self->_cardSectionDetail;
  self->_cardSectionDetail = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPreviewButtonItems:(id)a3
{
  v4 = a3;
  previewButtonItems = self->_previewButtonItems;
  v8 = v4;
  if (!previewButtonItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_previewButtonItems;
    self->_previewButtonItems = v6;

    v4 = v8;
    previewButtonItems = self->_previewButtonItems;
  }

  [(NSArray *)previewButtonItems addObject:v4];
}

- (void)setPreviewButtonItems:(id)a3
{
  v4 = [a3 copy];
  previewButtonItems = self->_previewButtonItems;
  self->_previewButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setResultIdentifier:(id)a3
{
  v4 = [a3 copy];
  resultIdentifier = self->_resultIdentifier;
  self->_resultIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCardSectionId:(id)a3
{
  v4 = [a3 copy];
  cardSectionId = self->_cardSectionId;
  self->_cardSectionId = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addParameterKeyPaths:(id)a3
{
  v4 = a3;
  parameterKeyPaths = self->_parameterKeyPaths;
  v8 = v4;
  if (!parameterKeyPaths)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameterKeyPaths;
    self->_parameterKeyPaths = v6;

    v4 = v8;
    parameterKeyPaths = self->_parameterKeyPaths;
  }

  [(NSArray *)parameterKeyPaths addObject:v4];
}

- (void)setParameterKeyPaths:(id)a3
{
  v4 = [a3 copy];
  parameterKeyPaths = self->_parameterKeyPaths;
  self->_parameterKeyPaths = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCommands:(id)a3
{
  v4 = a3;
  commands = self->_commands;
  v8 = v4;
  if (!commands)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_commands;
    self->_commands = v6;

    v4 = v8;
    commands = self->_commands;
  }

  [(NSArray *)commands addObject:v4];
}

- (void)setCommands:(id)a3
{
  v4 = [a3 copy];
  commands = self->_commands;
  self->_commands = v4;

  MEMORY[0x1EEE66BB8]();
}

@end