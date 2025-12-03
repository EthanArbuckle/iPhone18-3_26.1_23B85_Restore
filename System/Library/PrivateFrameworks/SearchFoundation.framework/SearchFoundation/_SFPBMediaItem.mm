@interface _SFPBMediaItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMediaItem)initWithDictionary:(id)dictionary;
- (_SFPBMediaItem)initWithFacade:(id)facade;
- (_SFPBMediaItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBuyOptions:(id)options;
- (void)addSubtitleCustomLineBreaking:(id)breaking;
- (void)setBuyOptions:(id)options;
- (void)setContentAdvisory:(id)advisory;
- (void)setReviewText:(id)text;
- (void)setSubtitleCustomLineBreaking:(id)breaking;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMediaItem

- (_SFPBMediaItem)initWithFacade:(id)facade
{
  v64 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBMediaItem *)self init];
  if (v5)
  {
    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBMediaItem *)v5 setTitle:title2];
    }

    subtitleText = [facadeCopy subtitleText];

    if (subtitleText)
    {
      v9 = [_SFPBText alloc];
      subtitleText2 = [facadeCopy subtitleText];
      v11 = [(_SFPBText *)v9 initWithFacade:subtitleText2];
      [(_SFPBMediaItem *)v5 setSubtitleText:v11];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v13 = [_SFPBImage alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v15 = [(_SFPBImage *)v13 initWithFacade:thumbnail2];
      [(_SFPBMediaItem *)v5 setThumbnail:v15];
    }

    reviewGlyph = [facadeCopy reviewGlyph];

    if (reviewGlyph)
    {
      v17 = [_SFPBImage alloc];
      reviewGlyph2 = [facadeCopy reviewGlyph];
      v19 = [(_SFPBImage *)v17 initWithFacade:reviewGlyph2];
      [(_SFPBMediaItem *)v5 setReviewGlyph:v19];
    }

    overlayImage = [facadeCopy overlayImage];

    if (overlayImage)
    {
      v21 = [_SFPBImage alloc];
      overlayImage2 = [facadeCopy overlayImage];
      v23 = [(_SFPBImage *)v21 initWithFacade:overlayImage2];
      [(_SFPBMediaItem *)v5 setOverlayImage:v23];
    }

    reviewText = [facadeCopy reviewText];

    if (reviewText)
    {
      reviewText2 = [facadeCopy reviewText];
      [(_SFPBMediaItem *)v5 setReviewText:reviewText2];
    }

    punchout = [facadeCopy punchout];

    if (punchout)
    {
      v27 = [_SFPBPunchout alloc];
      punchout2 = [facadeCopy punchout];
      v29 = [(_SFPBPunchout *)v27 initWithFacade:punchout2];
      [(_SFPBMediaItem *)v5 setPunchout:v29];
    }

    subtitleCustomLineBreaking = [facadeCopy subtitleCustomLineBreaking];
    if (subtitleCustomLineBreaking)
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
    subtitleCustomLineBreaking2 = [facadeCopy subtitleCustomLineBreaking];
    v33 = [subtitleCustomLineBreaking2 countByEnumeratingWithState:&v58 objects:v63 count:16];
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
            objc_enumerationMutation(subtitleCustomLineBreaking2);
          }

          if (*(*(&v58 + 1) + 8 * i))
          {
            [v31 addObject:?];
          }
        }

        v34 = [subtitleCustomLineBreaking2 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v34);
    }

    [(_SFPBMediaItem *)v5 setSubtitleCustomLineBreakings:v31];
    buyOptions = [facadeCopy buyOptions];
    if (buyOptions)
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
    buyOptions2 = [facadeCopy buyOptions];
    v40 = [buyOptions2 countByEnumeratingWithState:&v54 objects:v62 count:16];
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
            objc_enumerationMutation(buyOptions2);
          }

          v44 = [[_SFPBMediaOffer alloc] initWithFacade:*(*(&v54 + 1) + 8 * j)];
          if (v44)
          {
            [v38 addObject:v44];
          }
        }

        v41 = [buyOptions2 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v41);
    }

    [(_SFPBMediaItem *)v5 setBuyOptions:v38];
    contentAdvisory = [facadeCopy contentAdvisory];

    if (contentAdvisory)
    {
      contentAdvisory2 = [facadeCopy contentAdvisory];
      [(_SFPBMediaItem *)v5 setContentAdvisory:contentAdvisory2];
    }

    contentAdvisoryImage = [facadeCopy contentAdvisoryImage];

    if (contentAdvisoryImage)
    {
      v48 = [_SFPBImage alloc];
      contentAdvisoryImage2 = [facadeCopy contentAdvisoryImage];
      v50 = [(_SFPBImage *)v48 initWithFacade:contentAdvisoryImage2];
      [(_SFPBMediaItem *)v5 setContentAdvisoryImage:v50];
    }

    v51 = v5;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaItem)initWithDictionary:(id)dictionary
{
  v63 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v60.receiver = self;
  v60.super_class = _SFPBMediaItem;
  v5 = [(_SFPBMediaItem *)&v60 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBMediaItem *)v5 setTitle:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"subtitleText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBText alloc] initWithDictionary:v8];
      [(_SFPBMediaItem *)v5 setSubtitleText:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBImage alloc] initWithDictionary:v10];
      [(_SFPBMediaItem *)v5 setThumbnail:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"reviewGlyph"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBImage alloc] initWithDictionary:v12];
      [(_SFPBMediaItem *)v5 setReviewGlyph:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"overlayImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBImage alloc] initWithDictionary:v14];
      [(_SFPBMediaItem *)v5 setOverlayImage:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"reviewText"];
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
    v18 = [dictionaryCopy objectForKeyedSubscript:@"punchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBPunchout alloc] initWithDictionary:v18];
      [(_SFPBMediaItem *)v5 setPunchout:v19];
    }

    v44 = v18;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"subtitleCustomLineBreaking"];
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

    v28 = [dictionaryCopy objectForKeyedSubscript:@"buyOptions"];
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

    v36 = [dictionaryCopy objectForKeyedSubscript:@"contentAdvisory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [v36 copy];
      [(_SFPBMediaItem *)v5 setContentAdvisory:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"contentAdvisoryImage"];
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

- (_SFPBMediaItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMediaItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMediaItem *)self dictionaryRepresentation];
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
  v45 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_buyOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"buyOptions"];
  }

  if (self->_contentAdvisory)
  {
    contentAdvisory = [(_SFPBMediaItem *)self contentAdvisory];
    v13 = [contentAdvisory copy];
    [dictionary setObject:v13 forKeyedSubscript:@"contentAdvisory"];
  }

  if (self->_contentAdvisoryImage)
  {
    contentAdvisoryImage = [(_SFPBMediaItem *)self contentAdvisoryImage];
    dictionaryRepresentation2 = [contentAdvisoryImage dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"contentAdvisoryImage"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"contentAdvisoryImage"];
    }
  }

  if (self->_overlayImage)
  {
    overlayImage = [(_SFPBMediaItem *)self overlayImage];
    dictionaryRepresentation3 = [overlayImage dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"overlayImage"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"overlayImage"];
    }
  }

  if (self->_punchout)
  {
    punchout = [(_SFPBMediaItem *)self punchout];
    dictionaryRepresentation4 = [punchout dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"punchout"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"punchout"];
    }
  }

  if (self->_reviewGlyph)
  {
    reviewGlyph = [(_SFPBMediaItem *)self reviewGlyph];
    dictionaryRepresentation5 = [reviewGlyph dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"reviewGlyph"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"reviewGlyph"];
    }
  }

  if (self->_reviewText)
  {
    reviewText = [(_SFPBMediaItem *)self reviewText];
    v27 = [reviewText copy];
    [dictionary setObject:v27 forKeyedSubscript:@"reviewText"];
  }

  if (self->_subtitleCustomLineBreakings)
  {
    subtitleCustomLineBreakings = [(_SFPBMediaItem *)self subtitleCustomLineBreakings];
    v29 = [subtitleCustomLineBreakings copy];
    [dictionary setObject:v29 forKeyedSubscript:@"subtitleCustomLineBreaking"];
  }

  if (self->_subtitleText)
  {
    subtitleText = [(_SFPBMediaItem *)self subtitleText];
    dictionaryRepresentation6 = [subtitleText dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"subtitleText"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"subtitleText"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBMediaItem *)self thumbnail];
    dictionaryRepresentation7 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBMediaItem *)self title];
    v37 = [title copy];
    [dictionary setObject:v37 forKeyedSubscript:@"title"];
  }

  v38 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  title = [(_SFPBMediaItem *)self title];
  title2 = [equalCopy title];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_56;
  }

  title3 = [(_SFPBMediaItem *)self title];
  if (title3)
  {
    v8 = title3;
    title4 = [(_SFPBMediaItem *)self title];
    title5 = [equalCopy title];
    v11 = [title4 isEqual:title5];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  title = [(_SFPBMediaItem *)self subtitleText];
  title2 = [equalCopy subtitleText];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_56;
  }

  subtitleText = [(_SFPBMediaItem *)self subtitleText];
  if (subtitleText)
  {
    v13 = subtitleText;
    subtitleText2 = [(_SFPBMediaItem *)self subtitleText];
    subtitleText3 = [equalCopy subtitleText];
    v16 = [subtitleText2 isEqual:subtitleText3];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  title = [(_SFPBMediaItem *)self thumbnail];
  title2 = [equalCopy thumbnail];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_56;
  }

  thumbnail = [(_SFPBMediaItem *)self thumbnail];
  if (thumbnail)
  {
    v18 = thumbnail;
    thumbnail2 = [(_SFPBMediaItem *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v21 = [thumbnail2 isEqual:thumbnail3];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  title = [(_SFPBMediaItem *)self reviewGlyph];
  title2 = [equalCopy reviewGlyph];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_56;
  }

  reviewGlyph = [(_SFPBMediaItem *)self reviewGlyph];
  if (reviewGlyph)
  {
    v23 = reviewGlyph;
    reviewGlyph2 = [(_SFPBMediaItem *)self reviewGlyph];
    reviewGlyph3 = [equalCopy reviewGlyph];
    v26 = [reviewGlyph2 isEqual:reviewGlyph3];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  title = [(_SFPBMediaItem *)self overlayImage];
  title2 = [equalCopy overlayImage];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_56;
  }

  overlayImage = [(_SFPBMediaItem *)self overlayImage];
  if (overlayImage)
  {
    v28 = overlayImage;
    overlayImage2 = [(_SFPBMediaItem *)self overlayImage];
    overlayImage3 = [equalCopy overlayImage];
    v31 = [overlayImage2 isEqual:overlayImage3];

    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  title = [(_SFPBMediaItem *)self reviewText];
  title2 = [equalCopy reviewText];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_56;
  }

  reviewText = [(_SFPBMediaItem *)self reviewText];
  if (reviewText)
  {
    v33 = reviewText;
    reviewText2 = [(_SFPBMediaItem *)self reviewText];
    reviewText3 = [equalCopy reviewText];
    v36 = [reviewText2 isEqual:reviewText3];

    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  title = [(_SFPBMediaItem *)self punchout];
  title2 = [equalCopy punchout];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_56;
  }

  punchout = [(_SFPBMediaItem *)self punchout];
  if (punchout)
  {
    v38 = punchout;
    punchout2 = [(_SFPBMediaItem *)self punchout];
    punchout3 = [equalCopy punchout];
    v41 = [punchout2 isEqual:punchout3];

    if (!v41)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  title = [(_SFPBMediaItem *)self subtitleCustomLineBreakings];
  title2 = [equalCopy subtitleCustomLineBreakings];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_56;
  }

  subtitleCustomLineBreakings = [(_SFPBMediaItem *)self subtitleCustomLineBreakings];
  if (subtitleCustomLineBreakings)
  {
    v43 = subtitleCustomLineBreakings;
    subtitleCustomLineBreakings2 = [(_SFPBMediaItem *)self subtitleCustomLineBreakings];
    subtitleCustomLineBreakings3 = [equalCopy subtitleCustomLineBreakings];
    v46 = [subtitleCustomLineBreakings2 isEqual:subtitleCustomLineBreakings3];

    if (!v46)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  title = [(_SFPBMediaItem *)self buyOptions];
  title2 = [equalCopy buyOptions];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_56;
  }

  buyOptions = [(_SFPBMediaItem *)self buyOptions];
  if (buyOptions)
  {
    v48 = buyOptions;
    buyOptions2 = [(_SFPBMediaItem *)self buyOptions];
    buyOptions3 = [equalCopy buyOptions];
    v51 = [buyOptions2 isEqual:buyOptions3];

    if (!v51)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  title = [(_SFPBMediaItem *)self contentAdvisory];
  title2 = [equalCopy contentAdvisory];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_56;
  }

  contentAdvisory = [(_SFPBMediaItem *)self contentAdvisory];
  if (contentAdvisory)
  {
    v53 = contentAdvisory;
    contentAdvisory2 = [(_SFPBMediaItem *)self contentAdvisory];
    contentAdvisory3 = [equalCopy contentAdvisory];
    v56 = [contentAdvisory2 isEqual:contentAdvisory3];

    if (!v56)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  title = [(_SFPBMediaItem *)self contentAdvisoryImage];
  title2 = [equalCopy contentAdvisoryImage];
  if ((title != 0) != (title2 == 0))
  {
    contentAdvisoryImage = [(_SFPBMediaItem *)self contentAdvisoryImage];
    if (!contentAdvisoryImage)
    {

LABEL_60:
      v62 = 1;
      goto LABEL_58;
    }

    v58 = contentAdvisoryImage;
    contentAdvisoryImage2 = [(_SFPBMediaItem *)self contentAdvisoryImage];
    contentAdvisoryImage3 = [equalCopy contentAdvisoryImage];
    v61 = [contentAdvisoryImage2 isEqual:contentAdvisoryImage3];

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

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  title = [(_SFPBMediaItem *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  subtitleText = [(_SFPBMediaItem *)self subtitleText];
  if (subtitleText)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBMediaItem *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  reviewGlyph = [(_SFPBMediaItem *)self reviewGlyph];
  if (reviewGlyph)
  {
    PBDataWriterWriteSubmessage();
  }

  overlayImage = [(_SFPBMediaItem *)self overlayImage];
  if (overlayImage)
  {
    PBDataWriterWriteSubmessage();
  }

  reviewText = [(_SFPBMediaItem *)self reviewText];
  if (reviewText)
  {
    PBDataWriterWriteStringField();
  }

  punchout = [(_SFPBMediaItem *)self punchout];
  if (punchout)
  {
    PBDataWriterWriteSubmessage();
  }

  subtitleCustomLineBreakings = [(_SFPBMediaItem *)self subtitleCustomLineBreakings];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [subtitleCustomLineBreakings countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(subtitleCustomLineBreakings);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [subtitleCustomLineBreakings countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v14);
  }

  buyOptions = [(_SFPBMediaItem *)self buyOptions];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = [buyOptions countByEnumeratingWithState:&v27 objects:v35 count:16];
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
          objc_enumerationMutation(buyOptions);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [buyOptions countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  contentAdvisory = [(_SFPBMediaItem *)self contentAdvisory];
  if (contentAdvisory)
  {
    PBDataWriterWriteStringField();
  }

  contentAdvisoryImage = [(_SFPBMediaItem *)self contentAdvisoryImage];
  if (contentAdvisoryImage)
  {
    PBDataWriterWriteSubmessage();
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)setContentAdvisory:(id)advisory
{
  v4 = [advisory copy];
  contentAdvisory = self->_contentAdvisory;
  self->_contentAdvisory = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addBuyOptions:(id)options
{
  optionsCopy = options;
  buyOptions = self->_buyOptions;
  v8 = optionsCopy;
  if (!buyOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_buyOptions;
    self->_buyOptions = array;

    optionsCopy = v8;
    buyOptions = self->_buyOptions;
  }

  [(NSArray *)buyOptions addObject:optionsCopy];
}

- (void)setBuyOptions:(id)options
{
  v4 = [options copy];
  buyOptions = self->_buyOptions;
  self->_buyOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addSubtitleCustomLineBreaking:(id)breaking
{
  breakingCopy = breaking;
  subtitleCustomLineBreakings = self->_subtitleCustomLineBreakings;
  v8 = breakingCopy;
  if (!subtitleCustomLineBreakings)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_subtitleCustomLineBreakings;
    self->_subtitleCustomLineBreakings = array;

    breakingCopy = v8;
    subtitleCustomLineBreakings = self->_subtitleCustomLineBreakings;
  }

  [(NSArray *)subtitleCustomLineBreakings addObject:breakingCopy];
}

- (void)setSubtitleCustomLineBreaking:(id)breaking
{
  v4 = [breaking copy];
  subtitleCustomLineBreakings = self->_subtitleCustomLineBreakings;
  self->_subtitleCustomLineBreakings = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setReviewText:(id)text
{
  v4 = [text copy];
  reviewText = self->_reviewText;
  self->_reviewText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end