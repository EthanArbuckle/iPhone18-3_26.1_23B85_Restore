@interface _SFPBMediaInfoCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMediaInfoCardSection)initWithDictionary:(id)dictionary;
- (_SFPBMediaInfoCardSection)initWithFacade:(id)facade;
- (_SFPBMediaInfoCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDetails:(id)details;
- (void)addOffers:(id)offers;
- (void)addPunchoutOptions:(id)options;
- (void)setDetails:(id)details;
- (void)setOffers:(id)offers;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)setWatchListButtonLabel:(id)label;
- (void)setWatchListConfirmationText:(id)text;
- (void)setWatchListContinuationText:(id)text;
- (void)setWatchListIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMediaInfoCardSection

- (_SFPBMediaInfoCardSection)initWithFacade:(id)facade
{
  v79 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBMediaInfoCardSection *)self init];
  if (v5)
  {
    punchoutOptions = [facadeCopy punchoutOptions];
    if (punchoutOptions)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v72 objects:v78 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v73;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v73 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v72 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v10);
    }

    [(_SFPBMediaInfoCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBMediaInfoCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBMediaInfoCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBMediaInfoCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBMediaInfoCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBMediaInfoCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBMediaInfoCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBMediaInfoCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBMediaInfoCardSection *)v5 setBackgroundColor:v23];
    }

    mediaItem = [facadeCopy mediaItem];

    if (mediaItem)
    {
      v25 = [_SFPBMediaItem alloc];
      mediaItem2 = [facadeCopy mediaItem];
      v27 = [(_SFPBMediaItem *)v25 initWithFacade:mediaItem2];
      [(_SFPBMediaInfoCardSection *)v5 setMediaItem:v27];
    }

    details = [facadeCopy details];
    if (details)
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v29 = 0;
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    details2 = [facadeCopy details];
    v31 = [details2 countByEnumeratingWithState:&v68 objects:v77 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v69;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v69 != v33)
          {
            objc_enumerationMutation(details2);
          }

          v35 = [[_SFPBMediaDetail alloc] initWithFacade:*(*(&v68 + 1) + 8 * j)];
          if (v35)
          {
            [v29 addObject:v35];
          }
        }

        v32 = [details2 countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v32);
    }

    [(_SFPBMediaInfoCardSection *)v5 setDetails:v29];
    playAction = [facadeCopy playAction];

    if (playAction)
    {
      v37 = [_SFPBActionItem alloc];
      playAction2 = [facadeCopy playAction];
      v39 = [(_SFPBActionItem *)v37 initWithFacade:playAction2];
      [(_SFPBMediaInfoCardSection *)v5 setPlayAction:v39];
    }

    offers = [facadeCopy offers];
    v63 = v5;
    if (offers)
    {
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v41 = 0;
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    offers2 = [facadeCopy offers];
    v43 = [offers2 countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v65;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v65 != v45)
          {
            objc_enumerationMutation(offers2);
          }

          v47 = [[_SFPBMediaOffer alloc] initWithFacade:*(*(&v64 + 1) + 8 * k)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [offers2 countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v44);
    }

    v5 = v63;
    [(_SFPBMediaInfoCardSection *)v63 setOffers:v41];
    watchListIdentifier = [facadeCopy watchListIdentifier];

    if (watchListIdentifier)
    {
      watchListIdentifier2 = [facadeCopy watchListIdentifier];
      [(_SFPBMediaInfoCardSection *)v63 setWatchListIdentifier:watchListIdentifier2];
    }

    watchListButtonLabel = [facadeCopy watchListButtonLabel];

    if (watchListButtonLabel)
    {
      watchListButtonLabel2 = [facadeCopy watchListButtonLabel];
      [(_SFPBMediaInfoCardSection *)v63 setWatchListButtonLabel:watchListButtonLabel2];
    }

    watchListContinuationText = [facadeCopy watchListContinuationText];

    if (watchListContinuationText)
    {
      watchListContinuationText2 = [facadeCopy watchListContinuationText];
      [(_SFPBMediaInfoCardSection *)v63 setWatchListContinuationText:watchListContinuationText2];
    }

    watchListConfirmationText = [facadeCopy watchListConfirmationText];

    if (watchListConfirmationText)
    {
      watchListConfirmationText2 = [facadeCopy watchListConfirmationText];
      [(_SFPBMediaInfoCardSection *)v63 setWatchListConfirmationText:watchListConfirmationText2];
    }

    if ([facadeCopy hasIsMediaContainer])
    {
      -[_SFPBMediaInfoCardSection setIsMediaContainer:](v63, "setIsMediaContainer:", [facadeCopy isMediaContainer]);
    }

    specialOfferButtonLabel = [facadeCopy specialOfferButtonLabel];

    if (specialOfferButtonLabel)
    {
      v57 = [_SFPBRichText alloc];
      specialOfferButtonLabel2 = [facadeCopy specialOfferButtonLabel];
      v59 = [(_SFPBRichText *)v57 initWithFacade:specialOfferButtonLabel2];
      [(_SFPBMediaInfoCardSection *)v63 setSpecialOfferButtonLabel:v59];
    }

    if ([facadeCopy hasWatchListItemType])
    {
      -[_SFPBMediaInfoCardSection setWatchListItemType:](v63, "setWatchListItemType:", [facadeCopy watchListItemType]);
    }

    v60 = v63;
  }

  v61 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaInfoCardSection)initWithDictionary:(id)dictionary
{
  v89 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v85.receiver = self;
  v85.super_class = _SFPBMediaInfoCardSection;
  v5 = [(_SFPBMediaInfoCardSection *)&v85 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    v72 = v6;
    if (objc_opt_isKindOfClass())
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v81 objects:v88 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v82;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v82 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v81 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBMediaInfoCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v81 objects:v88 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBMediaInfoCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBMediaInfoCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaInfoCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaInfoCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v71 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaInfoCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v64 = v18;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v70 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBMediaInfoCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaInfoCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v62 = v23;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v69 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBMediaInfoCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"mediaItem"];
    objc_opt_class();
    v68 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBMediaItem alloc] initWithDictionary:v26];
      [(_SFPBMediaInfoCardSection *)v5 setMediaItem:v27];
    }

    v63 = v19;
    v65 = v16;
    v66 = v14;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"details"];
    objc_opt_class();
    v67 = v28;
    if (objc_opt_isKindOfClass())
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v77 objects:v87 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v78;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v78 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v77 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [[_SFPBMediaDetail alloc] initWithDictionary:v34];
              [(_SFPBMediaInfoCardSection *)v5 addDetails:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v77 objects:v87 count:16];
        }

        while (v31);
      }
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"playAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBActionItem alloc] initWithDictionary:v36];
      [(_SFPBMediaInfoCardSection *)v5 setPlayAction:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:{@"offers", v36}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v39 = v38;
      v40 = [v39 countByEnumeratingWithState:&v73 objects:v86 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v74;
        do
        {
          for (k = 0; k != v41; ++k)
          {
            if (*v74 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v73 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = [[_SFPBMediaOffer alloc] initWithDictionary:v44];
              [(_SFPBMediaInfoCardSection *)v5 addOffers:v45];
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v73 objects:v86 count:16];
        }

        while (v41);
      }
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"watchListIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [v46 copy];
      [(_SFPBMediaInfoCardSection *)v5 setWatchListIdentifier:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"watchListButtonLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [v48 copy];
      [(_SFPBMediaInfoCardSection *)v5 setWatchListButtonLabel:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"watchListContinuationText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [v50 copy];
      [(_SFPBMediaInfoCardSection *)v5 setWatchListContinuationText:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"watchListConfirmationText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [v52 copy];
      [(_SFPBMediaInfoCardSection *)v5 setWatchListConfirmationText:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"isMediaContainer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaInfoCardSection setIsMediaContainer:](v5, "setIsMediaContainer:", [v54 BOOLValue]);
    }

    v55 = [dictionaryCopy objectForKeyedSubscript:@"specialOfferButtonLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [[_SFPBRichText alloc] initWithDictionary:v55];
      [(_SFPBMediaInfoCardSection *)v5 setSpecialOfferButtonLabel:v56];
    }

    v57 = [dictionaryCopy objectForKeyedSubscript:@"watchListItemType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaInfoCardSection setWatchListItemType:](v5, "setWatchListItemType:", [v57 intValue]);
    }

    v58 = v5;
  }

  v59 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaInfoCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMediaInfoCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMediaInfoCardSection *)self dictionaryRepresentation];
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
  v79 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBMediaInfoCardSection *)self backgroundColor];
    dictionaryRepresentation = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaInfoCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_details count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v9 = self->_details;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v72 objects:v78 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v73;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v73 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v72 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"details"];
  }

  if (self->_hasBottomPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaInfoCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v16 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaInfoCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v17 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_isMediaContainer)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaInfoCardSection isMediaContainer](self, "isMediaContainer")}];
    [dictionary setObject:v18 forKeyedSubscript:@"isMediaContainer"];
  }

  if (self->_mediaItem)
  {
    mediaItem = [(_SFPBMediaInfoCardSection *)self mediaItem];
    dictionaryRepresentation3 = [mediaItem dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"mediaItem"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"mediaItem"];
    }
  }

  if ([(NSArray *)self->_offers count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v23 = self->_offers;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v68 objects:v77 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v69;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v69 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation4 = [*(*(&v68 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array2 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null4];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v25);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"offers"];
  }

  if (self->_playAction)
  {
    playAction = [(_SFPBMediaInfoCardSection *)self playAction];
    dictionaryRepresentation5 = [playAction dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"playAction"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"playAction"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v34 = self->_punchoutOptions;
    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v65;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v65 != v37)
          {
            objc_enumerationMutation(v34);
          }

          dictionaryRepresentation6 = [*(*(&v64 + 1) + 8 * k) dictionaryRepresentation];
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

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v36);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBMediaInfoCardSection *)self punchoutPickerDismissText];
    v42 = [punchoutPickerDismissText copy];
    [dictionary setObject:v42 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBMediaInfoCardSection *)self punchoutPickerTitle];
    v44 = [punchoutPickerTitle copy];
    [dictionary setObject:v44 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBMediaInfoCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v46 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v46 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_specialOfferButtonLabel)
  {
    specialOfferButtonLabel = [(_SFPBMediaInfoCardSection *)self specialOfferButtonLabel];
    dictionaryRepresentation7 = [specialOfferButtonLabel dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"specialOfferButtonLabel"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"specialOfferButtonLabel"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBMediaInfoCardSection *)self type];
    v51 = [type copy];
    [dictionary setObject:v51 forKeyedSubscript:@"type"];
  }

  if (self->_watchListButtonLabel)
  {
    watchListButtonLabel = [(_SFPBMediaInfoCardSection *)self watchListButtonLabel];
    v53 = [watchListButtonLabel copy];
    [dictionary setObject:v53 forKeyedSubscript:@"watchListButtonLabel"];
  }

  if (self->_watchListConfirmationText)
  {
    watchListConfirmationText = [(_SFPBMediaInfoCardSection *)self watchListConfirmationText];
    v55 = [watchListConfirmationText copy];
    [dictionary setObject:v55 forKeyedSubscript:@"watchListConfirmationText"];
  }

  if (self->_watchListContinuationText)
  {
    watchListContinuationText = [(_SFPBMediaInfoCardSection *)self watchListContinuationText];
    v57 = [watchListContinuationText copy];
    [dictionary setObject:v57 forKeyedSubscript:@"watchListContinuationText"];
  }

  if (self->_watchListIdentifier)
  {
    watchListIdentifier = [(_SFPBMediaInfoCardSection *)self watchListIdentifier];
    v59 = [watchListIdentifier copy];
    [dictionary setObject:v59 forKeyedSubscript:@"watchListIdentifier"];
  }

  if (self->_watchListItemType)
  {
    watchListItemType = [(_SFPBMediaInfoCardSection *)self watchListItemType];
    if (watchListItemType >= 6)
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", watchListItemType];
    }

    else
    {
      v61 = off_1E7ACE580[watchListItemType];
    }

    [dictionary setObject:v61 forKeyedSubscript:@"watchListItemType"];
  }

  v62 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v26 = [(NSArray *)self->_punchoutOptions hash];
  v25 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v23 = v4;
  v24 = v3;
  if (self->_hasTopPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v21 = v6;
  v22 = v5;
  v7 = [(NSString *)self->_type hash];
  v19 = 2654435761 * self->_separatorStyle;
  v20 = v7;
  v18 = [(_SFPBColor *)self->_backgroundColor hash];
  v17 = [(_SFPBMediaItem *)self->_mediaItem hash];
  v8 = [(NSArray *)self->_details hash];
  v9 = [(_SFPBActionItem *)self->_playAction hash];
  v10 = [(NSArray *)self->_offers hash];
  v11 = [(NSString *)self->_watchListIdentifier hash];
  v12 = [(NSString *)self->_watchListButtonLabel hash];
  v13 = [(NSString *)self->_watchListContinuationText hash];
  v14 = [(NSString *)self->_watchListConfirmationText hash];
  if (self->_isMediaContainer)
  {
    v15 = 2654435761;
  }

  else
  {
    v15 = 0;
  }

  return v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ [(_SFPBRichText *)self->_specialOfferButtonLabel hash]^ (2654435761 * self->_watchListItemType);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  punchoutOptions3 = [(_SFPBMediaInfoCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBMediaInfoCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  punchoutPickerTitle = [(_SFPBMediaInfoCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBMediaInfoCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  punchoutPickerDismissText = [(_SFPBMediaInfoCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBMediaInfoCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_77;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_77;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_77;
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  type = [(_SFPBMediaInfoCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBMediaInfoCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_77;
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  backgroundColor = [(_SFPBMediaInfoCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBMediaInfoCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self mediaItem];
  punchoutOptions2 = [equalCopy mediaItem];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  mediaItem = [(_SFPBMediaInfoCardSection *)self mediaItem];
  if (mediaItem)
  {
    v37 = mediaItem;
    mediaItem2 = [(_SFPBMediaInfoCardSection *)self mediaItem];
    mediaItem3 = [equalCopy mediaItem];
    v40 = [mediaItem2 isEqual:mediaItem3];

    if (!v40)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self details];
  punchoutOptions2 = [equalCopy details];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  details = [(_SFPBMediaInfoCardSection *)self details];
  if (details)
  {
    v42 = details;
    details2 = [(_SFPBMediaInfoCardSection *)self details];
    details3 = [equalCopy details];
    v45 = [details2 isEqual:details3];

    if (!v45)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self playAction];
  punchoutOptions2 = [equalCopy playAction];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  playAction = [(_SFPBMediaInfoCardSection *)self playAction];
  if (playAction)
  {
    v47 = playAction;
    playAction2 = [(_SFPBMediaInfoCardSection *)self playAction];
    playAction3 = [equalCopy playAction];
    v50 = [playAction2 isEqual:playAction3];

    if (!v50)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self offers];
  punchoutOptions2 = [equalCopy offers];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  offers = [(_SFPBMediaInfoCardSection *)self offers];
  if (offers)
  {
    v52 = offers;
    offers2 = [(_SFPBMediaInfoCardSection *)self offers];
    offers3 = [equalCopy offers];
    v55 = [offers2 isEqual:offers3];

    if (!v55)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self watchListIdentifier];
  punchoutOptions2 = [equalCopy watchListIdentifier];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  watchListIdentifier = [(_SFPBMediaInfoCardSection *)self watchListIdentifier];
  if (watchListIdentifier)
  {
    v57 = watchListIdentifier;
    watchListIdentifier2 = [(_SFPBMediaInfoCardSection *)self watchListIdentifier];
    watchListIdentifier3 = [equalCopy watchListIdentifier];
    v60 = [watchListIdentifier2 isEqual:watchListIdentifier3];

    if (!v60)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self watchListButtonLabel];
  punchoutOptions2 = [equalCopy watchListButtonLabel];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  watchListButtonLabel = [(_SFPBMediaInfoCardSection *)self watchListButtonLabel];
  if (watchListButtonLabel)
  {
    v62 = watchListButtonLabel;
    watchListButtonLabel2 = [(_SFPBMediaInfoCardSection *)self watchListButtonLabel];
    watchListButtonLabel3 = [equalCopy watchListButtonLabel];
    v65 = [watchListButtonLabel2 isEqual:watchListButtonLabel3];

    if (!v65)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self watchListContinuationText];
  punchoutOptions2 = [equalCopy watchListContinuationText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  watchListContinuationText = [(_SFPBMediaInfoCardSection *)self watchListContinuationText];
  if (watchListContinuationText)
  {
    v67 = watchListContinuationText;
    watchListContinuationText2 = [(_SFPBMediaInfoCardSection *)self watchListContinuationText];
    watchListContinuationText3 = [equalCopy watchListContinuationText];
    v70 = [watchListContinuationText2 isEqual:watchListContinuationText3];

    if (!v70)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self watchListConfirmationText];
  punchoutOptions2 = [equalCopy watchListConfirmationText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  watchListConfirmationText = [(_SFPBMediaInfoCardSection *)self watchListConfirmationText];
  if (watchListConfirmationText)
  {
    v72 = watchListConfirmationText;
    watchListConfirmationText2 = [(_SFPBMediaInfoCardSection *)self watchListConfirmationText];
    watchListConfirmationText3 = [equalCopy watchListConfirmationText];
    v75 = [watchListConfirmationText2 isEqual:watchListConfirmationText3];

    if (!v75)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  isMediaContainer = self->_isMediaContainer;
  if (isMediaContainer != [equalCopy isMediaContainer])
  {
    goto LABEL_77;
  }

  punchoutOptions = [(_SFPBMediaInfoCardSection *)self specialOfferButtonLabel];
  punchoutOptions2 = [equalCopy specialOfferButtonLabel];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_76:

    goto LABEL_77;
  }

  specialOfferButtonLabel = [(_SFPBMediaInfoCardSection *)self specialOfferButtonLabel];
  if (!specialOfferButtonLabel)
  {

LABEL_80:
    watchListItemType = self->_watchListItemType;
    v82 = watchListItemType == [equalCopy watchListItemType];
    goto LABEL_78;
  }

  v78 = specialOfferButtonLabel;
  specialOfferButtonLabel2 = [(_SFPBMediaInfoCardSection *)self specialOfferButtonLabel];
  specialOfferButtonLabel3 = [equalCopy specialOfferButtonLabel];
  v81 = [specialOfferButtonLabel2 isEqual:specialOfferButtonLabel3];

  if (v81)
  {
    goto LABEL_80;
  }

LABEL_77:
  v82 = 0;
LABEL_78:

  return v82;
}

- (void)writeTo:(id)to
{
  v50 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBMediaInfoCardSection *)self punchoutOptions];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    do
    {
      v9 = 0;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBMediaInfoCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBMediaInfoCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaInfoCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMediaInfoCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMediaInfoCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBMediaInfoCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaInfoCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBMediaInfoCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  mediaItem = [(_SFPBMediaInfoCardSection *)self mediaItem];
  if (mediaItem)
  {
    PBDataWriterWriteSubmessage();
  }

  details = [(_SFPBMediaInfoCardSection *)self details];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = [details countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      v20 = 0;
      do
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(details);
        }

        v21 = *(*(&v39 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [details countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v18);
  }

  playAction = [(_SFPBMediaInfoCardSection *)self playAction];
  if (playAction)
  {
    PBDataWriterWriteSubmessage();
  }

  offers = [(_SFPBMediaInfoCardSection *)self offers];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = [offers countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      v27 = 0;
      do
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(offers);
        }

        v28 = *(*(&v35 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [offers countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v25);
  }

  watchListIdentifier = [(_SFPBMediaInfoCardSection *)self watchListIdentifier];
  if (watchListIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  watchListButtonLabel = [(_SFPBMediaInfoCardSection *)self watchListButtonLabel];
  if (watchListButtonLabel)
  {
    PBDataWriterWriteStringField();
  }

  watchListContinuationText = [(_SFPBMediaInfoCardSection *)self watchListContinuationText];
  if (watchListContinuationText)
  {
    PBDataWriterWriteStringField();
  }

  watchListConfirmationText = [(_SFPBMediaInfoCardSection *)self watchListConfirmationText];
  if (watchListConfirmationText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaInfoCardSection *)self isMediaContainer])
  {
    PBDataWriterWriteBOOLField();
  }

  specialOfferButtonLabel = [(_SFPBMediaInfoCardSection *)self specialOfferButtonLabel];
  if (specialOfferButtonLabel)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBMediaInfoCardSection *)self watchListItemType])
  {
    PBDataWriterWriteInt32Field();
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)setWatchListConfirmationText:(id)text
{
  v4 = [text copy];
  watchListConfirmationText = self->_watchListConfirmationText;
  self->_watchListConfirmationText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setWatchListContinuationText:(id)text
{
  v4 = [text copy];
  watchListContinuationText = self->_watchListContinuationText;
  self->_watchListContinuationText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setWatchListButtonLabel:(id)label
{
  v4 = [label copy];
  watchListButtonLabel = self->_watchListButtonLabel;
  self->_watchListButtonLabel = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setWatchListIdentifier:(id)identifier
{
  v4 = [identifier copy];
  watchListIdentifier = self->_watchListIdentifier;
  self->_watchListIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addOffers:(id)offers
{
  offersCopy = offers;
  offers = self->_offers;
  v8 = offersCopy;
  if (!offers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_offers;
    self->_offers = array;

    offersCopy = v8;
    offers = self->_offers;
  }

  [(NSArray *)offers addObject:offersCopy];
}

- (void)setOffers:(id)offers
{
  v4 = [offers copy];
  offers = self->_offers;
  self->_offers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addDetails:(id)details
{
  detailsCopy = details;
  details = self->_details;
  v8 = detailsCopy;
  if (!details)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_details;
    self->_details = array;

    detailsCopy = v8;
    details = self->_details;
  }

  [(NSArray *)details addObject:detailsCopy];
}

- (void)setDetails:(id)details
{
  v4 = [details copy];
  details = self->_details;
  self->_details = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)type
{
  v4 = [type copy];
  type = self->_type;
  self->_type = v4;

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

@end