@interface _SFPBMediaItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMediaItem)initWithDictionary:(id)a3;
- (_SFPBMediaItem)initWithFacade:(id)a3;
- (_SFPBMediaItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBuyOptions:(id)a3;
- (void)addSubtitleCustomLineBreaking:(id)a3;
- (void)setBuyOptions:(id)a3;
- (void)setContentAdvisory:(id)a3;
- (void)setReviewText:(id)a3;
- (void)setSubtitleCustomLineBreaking:(id)a3;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMediaItem

- (_SFPBMediaItem)initWithFacade:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMediaItem *)self init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(_SFPBMediaItem *)v5 setTitle:v7];
    }

    v8 = [v4 subtitleText];

    if (v8)
    {
      v9 = [_SFPBText alloc];
      v10 = [v4 subtitleText];
      v11 = [(_SFPBText *)v9 initWithFacade:v10];
      [(_SFPBMediaItem *)v5 setSubtitleText:v11];
    }

    v12 = [v4 thumbnail];

    if (v12)
    {
      v13 = [_SFPBImage alloc];
      v14 = [v4 thumbnail];
      v15 = [(_SFPBImage *)v13 initWithFacade:v14];
      [(_SFPBMediaItem *)v5 setThumbnail:v15];
    }

    v16 = [v4 reviewGlyph];

    if (v16)
    {
      v17 = [_SFPBImage alloc];
      v18 = [v4 reviewGlyph];
      v19 = [(_SFPBImage *)v17 initWithFacade:v18];
      [(_SFPBMediaItem *)v5 setReviewGlyph:v19];
    }

    v20 = [v4 overlayImage];

    if (v20)
    {
      v21 = [_SFPBImage alloc];
      v22 = [v4 overlayImage];
      v23 = [(_SFPBImage *)v21 initWithFacade:v22];
      [(_SFPBMediaItem *)v5 setOverlayImage:v23];
    }

    v24 = [v4 reviewText];

    if (v24)
    {
      v25 = [v4 reviewText];
      [(_SFPBMediaItem *)v5 setReviewText:v25];
    }

    v26 = [v4 punchout];

    if (v26)
    {
      v27 = [_SFPBPunchout alloc];
      v28 = [v4 punchout];
      v29 = [(_SFPBPunchout *)v27 initWithFacade:v28];
      [(_SFPBMediaItem *)v5 setPunchout:v29];
    }

    v30 = [v4 subtitleCustomLineBreaking];
    if (v30)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v32 = [v4 subtitleCustomLineBreaking];
    v33 = [v32 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v59;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v59 != v35)
          {
            objc_enumerationMutation(v32);
          }

          if (*(*(&v58 + 1) + 8 * i))
          {
            [v31 addObject:?];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v34);
    }

    [(_SFPBMediaItem *)v5 setSubtitleCustomLineBreakings:v31];
    v37 = [v4 buyOptions];
    if (v37)
    {
      v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v38 = 0;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v39 = [v4 buyOptions];
    v40 = [v39 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v55;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v55 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [[_SFPBMediaOffer alloc] initWithFacade:*(*(&v54 + 1) + 8 * j)];
          if (v44)
          {
            [v38 addObject:v44];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v41);
    }

    [(_SFPBMediaItem *)v5 setBuyOptions:v38];
    v45 = [v4 contentAdvisory];

    if (v45)
    {
      v46 = [v4 contentAdvisory];
      [(_SFPBMediaItem *)v5 setContentAdvisory:v46];
    }

    v47 = [v4 contentAdvisoryImage];

    if (v47)
    {
      v48 = [_SFPBImage alloc];
      v49 = [v4 contentAdvisoryImage];
      v50 = [(_SFPBImage *)v48 initWithFacade:v49];
      [(_SFPBMediaItem *)v5 setContentAdvisoryImage:v50];
    }

    v51 = v5;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaItem)initWithDictionary:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v60.receiver = self;
  v60.super_class = _SFPBMediaItem;
  v5 = [(_SFPBMediaItem *)&v60 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBMediaItem *)v5 setTitle:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"subtitleText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBText alloc] initWithDictionary:v8];
      [(_SFPBMediaItem *)v5 setSubtitleText:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBImage alloc] initWithDictionary:v10];
      [(_SFPBMediaItem *)v5 setThumbnail:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"reviewGlyph"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBImage alloc] initWithDictionary:v12];
      [(_SFPBMediaItem *)v5 setReviewGlyph:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"overlayImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBImage alloc] initWithDictionary:v14];
      [(_SFPBMediaItem *)v5 setOverlayImage:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"reviewText"];
    objc_opt_class();
    v51 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBMediaItem *)v5 setReviewText:v17];
    }

    v45 = v14;
    v46 = v12;
    v47 = v10;
    v18 = [v4 objectForKeyedSubscript:@"punchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBPunchout alloc] initWithDictionary:v18];
      [(_SFPBMediaItem *)v5 setPunchout:v19];
    }

    v44 = v18;
    v20 = [v4 objectForKeyedSubscript:@"subtitleCustomLineBreaking"];
    objc_opt_class();
    v48 = v8;
    v49 = v6;
    v43 = v20;
    if (objc_opt_isKindOfClass())
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v57;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v57 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v56 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [v26 copy];
              [(_SFPBMediaItem *)v5 addSubtitleCustomLineBreaking:v27];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v56 objects:v62 count:16];
        }

        while (v23);
      }

      v8 = v48;
      v6 = v49;
      v20 = v43;
    }

    v28 = [v4 objectForKeyedSubscript:@"buyOptions"];
    objc_opt_class();
    v50 = v28;
    if (objc_opt_isKindOfClass())
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v53;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v53 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v52 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [[_SFPBMediaOffer alloc] initWithDictionary:v34];
              [(_SFPBMediaItem *)v5 addBuyOptions:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v52 objects:v61 count:16];
        }

        while (v31);
      }

      v8 = v48;
      v6 = v49;
      v20 = v43;
    }

    v36 = [v4 objectForKeyedSubscript:@"contentAdvisory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [v36 copy];
      [(_SFPBMediaItem *)v5 setContentAdvisory:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"contentAdvisoryImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBImage alloc] initWithDictionary:v38];
      [(_SFPBMediaItem *)v5 setContentAdvisoryImage:v39];
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMediaItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMediaItem *)self dictionaryRepresentation];
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
  v45 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_buyOptions count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v5 = self->_buyOptions;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"buyOptions"];
  }

  if (self->_contentAdvisory)
  {
    v12 = [(_SFPBMediaItem *)self contentAdvisory];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"contentAdvisory"];
  }

  if (self->_contentAdvisoryImage)
  {
    v14 = [(_SFPBMediaItem *)self contentAdvisoryImage];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"contentAdvisoryImage"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"contentAdvisoryImage"];
    }
  }

  if (self->_overlayImage)
  {
    v17 = [(_SFPBMediaItem *)self overlayImage];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"overlayImage"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"overlayImage"];
    }
  }

  if (self->_punchout)
  {
    v20 = [(_SFPBMediaItem *)self punchout];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"punchout"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"punchout"];
    }
  }

  if (self->_reviewGlyph)
  {
    v23 = [(_SFPBMediaItem *)self reviewGlyph];
    v24 = [v23 dictionaryRepresentation];
    if (v24)
    {
      [v3 setObject:v24 forKeyedSubscript:@"reviewGlyph"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"reviewGlyph"];
    }
  }

  if (self->_reviewText)
  {
    v26 = [(_SFPBMediaItem *)self reviewText];
    v27 = [v26 copy];
    [v3 setObject:v27 forKeyedSubscript:@"reviewText"];
  }

  if (self->_subtitleCustomLineBreakings)
  {
    v28 = [(_SFPBMediaItem *)self subtitleCustomLineBreakings];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"subtitleCustomLineBreaking"];
  }

  if (self->_subtitleText)
  {
    v30 = [(_SFPBMediaItem *)self subtitleText];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"subtitleText"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"subtitleText"];
    }
  }

  if (self->_thumbnail)
  {
    v33 = [(_SFPBMediaItem *)self thumbnail];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_title)
  {
    v36 = [(_SFPBMediaItem *)self title];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"title"];
  }

  v38 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(_SFPBText *)self->_subtitleText hash]^ v3;
  v5 = [(_SFPBImage *)self->_thumbnail hash];
  v6 = v4 ^ v5 ^ [(_SFPBImage *)self->_reviewGlyph hash];
  v7 = [(_SFPBImage *)self->_overlayImage hash];
  v8 = v7 ^ [(NSString *)self->_reviewText hash];
  v9 = v6 ^ v8 ^ [(_SFPBPunchout *)self->_punchout hash];
  v10 = [(NSArray *)self->_subtitleCustomLineBreakings hash];
  v11 = v10 ^ [(NSArray *)self->_buyOptions hash];
  v12 = v11 ^ [(NSString *)self->_contentAdvisory hash];
  return v9 ^ v12 ^ [(_SFPBImage *)self->_contentAdvisoryImage hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  v5 = [(_SFPBMediaItem *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v7 = [(_SFPBMediaItem *)self title];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBMediaItem *)self title];
    v10 = [v4 title];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaItem *)self subtitleText];
  v6 = [v4 subtitleText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v12 = [(_SFPBMediaItem *)self subtitleText];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBMediaItem *)self subtitleText];
    v15 = [v4 subtitleText];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaItem *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v17 = [(_SFPBMediaItem *)self thumbnail];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBMediaItem *)self thumbnail];
    v20 = [v4 thumbnail];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaItem *)self reviewGlyph];
  v6 = [v4 reviewGlyph];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v22 = [(_SFPBMediaItem *)self reviewGlyph];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBMediaItem *)self reviewGlyph];
    v25 = [v4 reviewGlyph];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaItem *)self overlayImage];
  v6 = [v4 overlayImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v27 = [(_SFPBMediaItem *)self overlayImage];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBMediaItem *)self overlayImage];
    v30 = [v4 overlayImage];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaItem *)self reviewText];
  v6 = [v4 reviewText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v32 = [(_SFPBMediaItem *)self reviewText];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBMediaItem *)self reviewText];
    v35 = [v4 reviewText];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaItem *)self punchout];
  v6 = [v4 punchout];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v37 = [(_SFPBMediaItem *)self punchout];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBMediaItem *)self punchout];
    v40 = [v4 punchout];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaItem *)self subtitleCustomLineBreakings];
  v6 = [v4 subtitleCustomLineBreakings];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v42 = [(_SFPBMediaItem *)self subtitleCustomLineBreakings];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBMediaItem *)self subtitleCustomLineBreakings];
    v45 = [v4 subtitleCustomLineBreakings];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaItem *)self buyOptions];
  v6 = [v4 buyOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v47 = [(_SFPBMediaItem *)self buyOptions];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBMediaItem *)self buyOptions];
    v50 = [v4 buyOptions];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaItem *)self contentAdvisory];
  v6 = [v4 contentAdvisory];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v52 = [(_SFPBMediaItem *)self contentAdvisory];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBMediaItem *)self contentAdvisory];
    v55 = [v4 contentAdvisory];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaItem *)self contentAdvisoryImage];
  v6 = [v4 contentAdvisoryImage];
  if ((v5 != 0) != (v6 == 0))
  {
    v57 = [(_SFPBMediaItem *)self contentAdvisoryImage];
    if (!v57)
    {

LABEL_60:
      v62 = 1;
      goto LABEL_58;
    }

    v58 = v57;
    v59 = [(_SFPBMediaItem *)self contentAdvisoryImage];
    v60 = [v4 contentAdvisoryImage];
    v61 = [v59 isEqual:v60];

    if (v61)
    {
      goto LABEL_60;
    }
  }

  else
  {
LABEL_56:
  }

LABEL_57:
  v62 = 0;
LABEL_58:

  return v62;
}

- (void)writeTo:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMediaItem *)self title];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBMediaItem *)self subtitleText];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBMediaItem *)self thumbnail];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBMediaItem *)self reviewGlyph];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_SFPBMediaItem *)self overlayImage];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBMediaItem *)self reviewText];
  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = [(_SFPBMediaItem *)self punchout];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_SFPBMediaItem *)self subtitleCustomLineBreakings];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v14);
  }

  v18 = [(_SFPBMediaItem *)self buyOptions];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  v24 = [(_SFPBMediaItem *)self contentAdvisory];
  if (v24)
  {
    PBDataWriterWriteStringField();
  }

  v25 = [(_SFPBMediaItem *)self contentAdvisoryImage];
  if (v25)
  {
    PBDataWriterWriteSubmessage();
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)setContentAdvisory:(id)a3
{
  v4 = [a3 copy];
  contentAdvisory = self->_contentAdvisory;
  self->_contentAdvisory = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addBuyOptions:(id)a3
{
  v4 = a3;
  buyOptions = self->_buyOptions;
  v8 = v4;
  if (!buyOptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_buyOptions;
    self->_buyOptions = v6;

    v4 = v8;
    buyOptions = self->_buyOptions;
  }

  [(NSArray *)buyOptions addObject:v4];
}

- (void)setBuyOptions:(id)a3
{
  v4 = [a3 copy];
  buyOptions = self->_buyOptions;
  self->_buyOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addSubtitleCustomLineBreaking:(id)a3
{
  v4 = a3;
  subtitleCustomLineBreakings = self->_subtitleCustomLineBreakings;
  v8 = v4;
  if (!subtitleCustomLineBreakings)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_subtitleCustomLineBreakings;
    self->_subtitleCustomLineBreakings = v6;

    v4 = v8;
    subtitleCustomLineBreakings = self->_subtitleCustomLineBreakings;
  }

  [(NSArray *)subtitleCustomLineBreakings addObject:v4];
}

- (void)setSubtitleCustomLineBreaking:(id)a3
{
  v4 = [a3 copy];
  subtitleCustomLineBreakings = self->_subtitleCustomLineBreakings;
  self->_subtitleCustomLineBreakings = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setReviewText:(id)a3
{
  v4 = [a3 copy];
  reviewText = self->_reviewText;
  self->_reviewText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end