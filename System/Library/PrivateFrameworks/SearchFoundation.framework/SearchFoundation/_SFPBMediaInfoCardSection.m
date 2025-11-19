@interface _SFPBMediaInfoCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMediaInfoCardSection)initWithDictionary:(id)a3;
- (_SFPBMediaInfoCardSection)initWithFacade:(id)a3;
- (_SFPBMediaInfoCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDetails:(id)a3;
- (void)addOffers:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)setDetails:(id)a3;
- (void)setOffers:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)setWatchListButtonLabel:(id)a3;
- (void)setWatchListConfirmationText:(id)a3;
- (void)setWatchListContinuationText:(id)a3;
- (void)setWatchListIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMediaInfoCardSection

- (_SFPBMediaInfoCardSection)initWithFacade:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMediaInfoCardSection *)self init];
  if (v5)
  {
    v6 = [v4 punchoutOptions];
    if (v6)
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
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v72 objects:v78 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v72 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v10);
    }

    [(_SFPBMediaInfoCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBMediaInfoCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBMediaInfoCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBMediaInfoCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBMediaInfoCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBMediaInfoCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBMediaInfoCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBMediaInfoCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBMediaInfoCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 mediaItem];

    if (v24)
    {
      v25 = [_SFPBMediaItem alloc];
      v26 = [v4 mediaItem];
      v27 = [(_SFPBMediaItem *)v25 initWithFacade:v26];
      [(_SFPBMediaInfoCardSection *)v5 setMediaItem:v27];
    }

    v28 = [v4 details];
    if (v28)
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
    v30 = [v4 details];
    v31 = [v30 countByEnumeratingWithState:&v68 objects:v77 count:16];
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
            objc_enumerationMutation(v30);
          }

          v35 = [[_SFPBMediaDetail alloc] initWithFacade:*(*(&v68 + 1) + 8 * j)];
          if (v35)
          {
            [v29 addObject:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v32);
    }

    [(_SFPBMediaInfoCardSection *)v5 setDetails:v29];
    v36 = [v4 playAction];

    if (v36)
    {
      v37 = [_SFPBActionItem alloc];
      v38 = [v4 playAction];
      v39 = [(_SFPBActionItem *)v37 initWithFacade:v38];
      [(_SFPBMediaInfoCardSection *)v5 setPlayAction:v39];
    }

    v40 = [v4 offers];
    v63 = v5;
    if (v40)
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
    v42 = [v4 offers];
    v43 = [v42 countByEnumeratingWithState:&v64 objects:v76 count:16];
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
            objc_enumerationMutation(v42);
          }

          v47 = [[_SFPBMediaOffer alloc] initWithFacade:*(*(&v64 + 1) + 8 * k)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v44);
    }

    v5 = v63;
    [(_SFPBMediaInfoCardSection *)v63 setOffers:v41];
    v48 = [v4 watchListIdentifier];

    if (v48)
    {
      v49 = [v4 watchListIdentifier];
      [(_SFPBMediaInfoCardSection *)v63 setWatchListIdentifier:v49];
    }

    v50 = [v4 watchListButtonLabel];

    if (v50)
    {
      v51 = [v4 watchListButtonLabel];
      [(_SFPBMediaInfoCardSection *)v63 setWatchListButtonLabel:v51];
    }

    v52 = [v4 watchListContinuationText];

    if (v52)
    {
      v53 = [v4 watchListContinuationText];
      [(_SFPBMediaInfoCardSection *)v63 setWatchListContinuationText:v53];
    }

    v54 = [v4 watchListConfirmationText];

    if (v54)
    {
      v55 = [v4 watchListConfirmationText];
      [(_SFPBMediaInfoCardSection *)v63 setWatchListConfirmationText:v55];
    }

    if ([v4 hasIsMediaContainer])
    {
      -[_SFPBMediaInfoCardSection setIsMediaContainer:](v63, "setIsMediaContainer:", [v4 isMediaContainer]);
    }

    v56 = [v4 specialOfferButtonLabel];

    if (v56)
    {
      v57 = [_SFPBRichText alloc];
      v58 = [v4 specialOfferButtonLabel];
      v59 = [(_SFPBRichText *)v57 initWithFacade:v58];
      [(_SFPBMediaInfoCardSection *)v63 setSpecialOfferButtonLabel:v59];
    }

    if ([v4 hasWatchListItemType])
    {
      -[_SFPBMediaInfoCardSection setWatchListItemType:](v63, "setWatchListItemType:", [v4 watchListItemType]);
    }

    v60 = v63;
  }

  v61 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaInfoCardSection)initWithDictionary:(id)a3
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v85.receiver = self;
  v85.super_class = _SFPBMediaInfoCardSection;
  v5 = [(_SFPBMediaInfoCardSection *)&v85 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
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

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBMediaInfoCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBMediaInfoCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaInfoCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaInfoCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v71 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaInfoCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v64 = v18;
    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v70 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBMediaInfoCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaInfoCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v62 = v23;
    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v69 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBMediaInfoCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"mediaItem"];
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
    v28 = [v4 objectForKeyedSubscript:@"details"];
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

    v36 = [v4 objectForKeyedSubscript:@"playAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBActionItem alloc] initWithDictionary:v36];
      [(_SFPBMediaInfoCardSection *)v5 setPlayAction:v37];
    }

    v38 = [v4 objectForKeyedSubscript:{@"offers", v36}];
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

    v46 = [v4 objectForKeyedSubscript:@"watchListIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [v46 copy];
      [(_SFPBMediaInfoCardSection *)v5 setWatchListIdentifier:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"watchListButtonLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [v48 copy];
      [(_SFPBMediaInfoCardSection *)v5 setWatchListButtonLabel:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"watchListContinuationText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [v50 copy];
      [(_SFPBMediaInfoCardSection *)v5 setWatchListContinuationText:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"watchListConfirmationText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [v52 copy];
      [(_SFPBMediaInfoCardSection *)v5 setWatchListConfirmationText:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"isMediaContainer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaInfoCardSection setIsMediaContainer:](v5, "setIsMediaContainer:", [v54 BOOLValue]);
    }

    v55 = [v4 objectForKeyedSubscript:@"specialOfferButtonLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [[_SFPBRichText alloc] initWithDictionary:v55];
      [(_SFPBMediaInfoCardSection *)v5 setSpecialOfferButtonLabel:v56];
    }

    v57 = [v4 objectForKeyedSubscript:@"watchListItemType"];
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

- (_SFPBMediaInfoCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMediaInfoCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMediaInfoCardSection *)self dictionaryRepresentation];
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
  v79 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBMediaInfoCardSection *)self backgroundColor];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaInfoCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_details count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
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

          v14 = [*(*(&v72 + 1) + 8 * i) dictionaryRepresentation];
          if (v14)
          {
            [v8 addObject:v14];
          }

          else
          {
            v15 = [MEMORY[0x1E695DFB0] null];
            [v8 addObject:v15];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"details"];
  }

  if (self->_hasBottomPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaInfoCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v16 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaInfoCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v17 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_isMediaContainer)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaInfoCardSection isMediaContainer](self, "isMediaContainer")}];
    [v3 setObject:v18 forKeyedSubscript:@"isMediaContainer"];
  }

  if (self->_mediaItem)
  {
    v19 = [(_SFPBMediaInfoCardSection *)self mediaItem];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"mediaItem"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"mediaItem"];
    }
  }

  if ([(NSArray *)self->_offers count])
  {
    v22 = [MEMORY[0x1E695DF70] array];
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

          v28 = [*(*(&v68 + 1) + 8 * j) dictionaryRepresentation];
          if (v28)
          {
            [v22 addObject:v28];
          }

          else
          {
            v29 = [MEMORY[0x1E695DFB0] null];
            [v22 addObject:v29];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKeyedSubscript:@"offers"];
  }

  if (self->_playAction)
  {
    v30 = [(_SFPBMediaInfoCardSection *)self playAction];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"playAction"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"playAction"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v33 = [MEMORY[0x1E695DF70] array];
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

          v39 = [*(*(&v64 + 1) + 8 * k) dictionaryRepresentation];
          if (v39)
          {
            [v33 addObject:v39];
          }

          else
          {
            v40 = [MEMORY[0x1E695DFB0] null];
            [v33 addObject:v40];
          }
        }

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v36);
    }

    [v3 setObject:v33 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v41 = [(_SFPBMediaInfoCardSection *)self punchoutPickerDismissText];
    v42 = [v41 copy];
    [v3 setObject:v42 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v43 = [(_SFPBMediaInfoCardSection *)self punchoutPickerTitle];
    v44 = [v43 copy];
    [v3 setObject:v44 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v45 = [(_SFPBMediaInfoCardSection *)self separatorStyle];
    if (v45 >= 6)
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v45];
    }

    else
    {
      v46 = off_1E7ACE580[v45];
    }

    [v3 setObject:v46 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_specialOfferButtonLabel)
  {
    v47 = [(_SFPBMediaInfoCardSection *)self specialOfferButtonLabel];
    v48 = [v47 dictionaryRepresentation];
    if (v48)
    {
      [v3 setObject:v48 forKeyedSubscript:@"specialOfferButtonLabel"];
    }

    else
    {
      v49 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v49 forKeyedSubscript:@"specialOfferButtonLabel"];
    }
  }

  if (self->_type)
  {
    v50 = [(_SFPBMediaInfoCardSection *)self type];
    v51 = [v50 copy];
    [v3 setObject:v51 forKeyedSubscript:@"type"];
  }

  if (self->_watchListButtonLabel)
  {
    v52 = [(_SFPBMediaInfoCardSection *)self watchListButtonLabel];
    v53 = [v52 copy];
    [v3 setObject:v53 forKeyedSubscript:@"watchListButtonLabel"];
  }

  if (self->_watchListConfirmationText)
  {
    v54 = [(_SFPBMediaInfoCardSection *)self watchListConfirmationText];
    v55 = [v54 copy];
    [v3 setObject:v55 forKeyedSubscript:@"watchListConfirmationText"];
  }

  if (self->_watchListContinuationText)
  {
    v56 = [(_SFPBMediaInfoCardSection *)self watchListContinuationText];
    v57 = [v56 copy];
    [v3 setObject:v57 forKeyedSubscript:@"watchListContinuationText"];
  }

  if (self->_watchListIdentifier)
  {
    v58 = [(_SFPBMediaInfoCardSection *)self watchListIdentifier];
    v59 = [v58 copy];
    [v3 setObject:v59 forKeyedSubscript:@"watchListIdentifier"];
  }

  if (self->_watchListItemType)
  {
    v60 = [(_SFPBMediaInfoCardSection *)self watchListItemType];
    if (v60 >= 6)
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v60];
    }

    else
    {
      v61 = off_1E7ACE580[v60];
    }

    [v3 setObject:v61 forKeyedSubscript:@"watchListItemType"];
  }

  v62 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  v5 = [(_SFPBMediaInfoCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v7 = [(_SFPBMediaInfoCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBMediaInfoCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaInfoCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v12 = [(_SFPBMediaInfoCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBMediaInfoCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaInfoCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v17 = [(_SFPBMediaInfoCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBMediaInfoCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_77;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_77;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_77;
  }

  v5 = [(_SFPBMediaInfoCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v25 = [(_SFPBMediaInfoCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBMediaInfoCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_77;
  }

  v5 = [(_SFPBMediaInfoCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v31 = [(_SFPBMediaInfoCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBMediaInfoCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaInfoCardSection *)self mediaItem];
  v6 = [v4 mediaItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v36 = [(_SFPBMediaInfoCardSection *)self mediaItem];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBMediaInfoCardSection *)self mediaItem];
    v39 = [v4 mediaItem];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaInfoCardSection *)self details];
  v6 = [v4 details];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v41 = [(_SFPBMediaInfoCardSection *)self details];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBMediaInfoCardSection *)self details];
    v44 = [v4 details];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaInfoCardSection *)self playAction];
  v6 = [v4 playAction];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v46 = [(_SFPBMediaInfoCardSection *)self playAction];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBMediaInfoCardSection *)self playAction];
    v49 = [v4 playAction];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaInfoCardSection *)self offers];
  v6 = [v4 offers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v51 = [(_SFPBMediaInfoCardSection *)self offers];
  if (v51)
  {
    v52 = v51;
    v53 = [(_SFPBMediaInfoCardSection *)self offers];
    v54 = [v4 offers];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaInfoCardSection *)self watchListIdentifier];
  v6 = [v4 watchListIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v56 = [(_SFPBMediaInfoCardSection *)self watchListIdentifier];
  if (v56)
  {
    v57 = v56;
    v58 = [(_SFPBMediaInfoCardSection *)self watchListIdentifier];
    v59 = [v4 watchListIdentifier];
    v60 = [v58 isEqual:v59];

    if (!v60)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaInfoCardSection *)self watchListButtonLabel];
  v6 = [v4 watchListButtonLabel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v61 = [(_SFPBMediaInfoCardSection *)self watchListButtonLabel];
  if (v61)
  {
    v62 = v61;
    v63 = [(_SFPBMediaInfoCardSection *)self watchListButtonLabel];
    v64 = [v4 watchListButtonLabel];
    v65 = [v63 isEqual:v64];

    if (!v65)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaInfoCardSection *)self watchListContinuationText];
  v6 = [v4 watchListContinuationText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v66 = [(_SFPBMediaInfoCardSection *)self watchListContinuationText];
  if (v66)
  {
    v67 = v66;
    v68 = [(_SFPBMediaInfoCardSection *)self watchListContinuationText];
    v69 = [v4 watchListContinuationText];
    v70 = [v68 isEqual:v69];

    if (!v70)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaInfoCardSection *)self watchListConfirmationText];
  v6 = [v4 watchListConfirmationText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v71 = [(_SFPBMediaInfoCardSection *)self watchListConfirmationText];
  if (v71)
  {
    v72 = v71;
    v73 = [(_SFPBMediaInfoCardSection *)self watchListConfirmationText];
    v74 = [v4 watchListConfirmationText];
    v75 = [v73 isEqual:v74];

    if (!v75)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  isMediaContainer = self->_isMediaContainer;
  if (isMediaContainer != [v4 isMediaContainer])
  {
    goto LABEL_77;
  }

  v5 = [(_SFPBMediaInfoCardSection *)self specialOfferButtonLabel];
  v6 = [v4 specialOfferButtonLabel];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_76:

    goto LABEL_77;
  }

  v77 = [(_SFPBMediaInfoCardSection *)self specialOfferButtonLabel];
  if (!v77)
  {

LABEL_80:
    watchListItemType = self->_watchListItemType;
    v82 = watchListItemType == [v4 watchListItemType];
    goto LABEL_78;
  }

  v78 = v77;
  v79 = [(_SFPBMediaInfoCardSection *)self specialOfferButtonLabel];
  v80 = [v4 specialOfferButtonLabel];
  v81 = [v79 isEqual:v80];

  if (v81)
  {
    goto LABEL_80;
  }

LABEL_77:
  v82 = 0;
LABEL_78:

  return v82;
}

- (void)writeTo:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMediaInfoCardSection *)self punchoutOptions];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBMediaInfoCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBMediaInfoCardSection *)self punchoutPickerDismissText];
  if (v12)
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

  v13 = [(_SFPBMediaInfoCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaInfoCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBMediaInfoCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBMediaInfoCardSection *)self mediaItem];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBMediaInfoCardSection *)self details];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v39 objects:v48 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v39 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v18);
  }

  v22 = [(_SFPBMediaInfoCardSection *)self playAction];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBMediaInfoCardSection *)self offers];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v35 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v25);
  }

  v29 = [(_SFPBMediaInfoCardSection *)self watchListIdentifier];
  if (v29)
  {
    PBDataWriterWriteStringField();
  }

  v30 = [(_SFPBMediaInfoCardSection *)self watchListButtonLabel];
  if (v30)
  {
    PBDataWriterWriteStringField();
  }

  v31 = [(_SFPBMediaInfoCardSection *)self watchListContinuationText];
  if (v31)
  {
    PBDataWriterWriteStringField();
  }

  v32 = [(_SFPBMediaInfoCardSection *)self watchListConfirmationText];
  if (v32)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaInfoCardSection *)self isMediaContainer])
  {
    PBDataWriterWriteBOOLField();
  }

  v33 = [(_SFPBMediaInfoCardSection *)self specialOfferButtonLabel];
  if (v33)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBMediaInfoCardSection *)self watchListItemType])
  {
    PBDataWriterWriteInt32Field();
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)setWatchListConfirmationText:(id)a3
{
  v4 = [a3 copy];
  watchListConfirmationText = self->_watchListConfirmationText;
  self->_watchListConfirmationText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setWatchListContinuationText:(id)a3
{
  v4 = [a3 copy];
  watchListContinuationText = self->_watchListContinuationText;
  self->_watchListContinuationText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setWatchListButtonLabel:(id)a3
{
  v4 = [a3 copy];
  watchListButtonLabel = self->_watchListButtonLabel;
  self->_watchListButtonLabel = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setWatchListIdentifier:(id)a3
{
  v4 = [a3 copy];
  watchListIdentifier = self->_watchListIdentifier;
  self->_watchListIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addOffers:(id)a3
{
  v4 = a3;
  offers = self->_offers;
  v8 = v4;
  if (!offers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_offers;
    self->_offers = v6;

    v4 = v8;
    offers = self->_offers;
  }

  [(NSArray *)offers addObject:v4];
}

- (void)setOffers:(id)a3
{
  v4 = [a3 copy];
  offers = self->_offers;
  self->_offers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addDetails:(id)a3
{
  v4 = a3;
  details = self->_details;
  v8 = v4;
  if (!details)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_details;
    self->_details = v6;

    v4 = v8;
    details = self->_details;
  }

  [(NSArray *)details addObject:v4];
}

- (void)setDetails:(id)a3
{
  v4 = [a3 copy];
  details = self->_details;
  self->_details = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)a3
{
  v4 = [a3 copy];
  type = self->_type;
  self->_type = v4;

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

@end