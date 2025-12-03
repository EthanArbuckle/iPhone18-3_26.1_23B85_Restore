@interface SFMediaItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaItem)initWithCoder:(id)coder;
- (SFMediaItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMediaItem

- (SFMediaItem)initWithProtobuf:(id)protobuf
{
  v65 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v62.receiver = self;
  v62.super_class = SFMediaItem;
  v5 = [(SFMediaItem *)&v62 init];
  if (v5)
  {
    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFMediaItem *)v5 setTitle:title2];
    }

    subtitleText = [protobufCopy subtitleText];

    if (subtitleText)
    {
      v9 = [SFText alloc];
      subtitleText2 = [protobufCopy subtitleText];
      v11 = [(SFText *)v9 initWithProtobuf:subtitleText2];
      [(SFMediaItem *)v5 setSubtitleText:v11];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v13 = [SFImage alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v15 = [(SFImage *)v13 initWithProtobuf:thumbnail2];
      [(SFMediaItem *)v5 setThumbnail:v15];
    }

    reviewGlyph = [protobufCopy reviewGlyph];

    if (reviewGlyph)
    {
      v17 = [SFImage alloc];
      reviewGlyph2 = [protobufCopy reviewGlyph];
      v19 = [(SFImage *)v17 initWithProtobuf:reviewGlyph2];
      [(SFMediaItem *)v5 setReviewGlyph:v19];
    }

    overlayImage = [protobufCopy overlayImage];

    if (overlayImage)
    {
      v21 = [SFImage alloc];
      overlayImage2 = [protobufCopy overlayImage];
      v23 = [(SFImage *)v21 initWithProtobuf:overlayImage2];
      [(SFMediaItem *)v5 setOverlayImage:v23];
    }

    reviewText = [protobufCopy reviewText];

    if (reviewText)
    {
      reviewText2 = [protobufCopy reviewText];
      [(SFMediaItem *)v5 setReviewText:reviewText2];
    }

    punchout = [protobufCopy punchout];

    if (punchout)
    {
      v27 = [SFPunchout alloc];
      punchout2 = [protobufCopy punchout];
      v29 = [(SFPunchout *)v27 initWithProtobuf:punchout2];
      [(SFMediaItem *)v5 setPunchout:v29];
    }

    subtitleCustomLineBreakings = [protobufCopy subtitleCustomLineBreakings];
    if (subtitleCustomLineBreakings)
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
    subtitleCustomLineBreakings2 = [protobufCopy subtitleCustomLineBreakings];
    v33 = [subtitleCustomLineBreakings2 countByEnumeratingWithState:&v58 objects:v64 count:16];
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
            objc_enumerationMutation(subtitleCustomLineBreakings2);
          }

          if (*(*(&v58 + 1) + 8 * i))
          {
            [v31 addObject:?];
          }
        }

        v34 = [subtitleCustomLineBreakings2 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v34);
    }

    [(SFMediaItem *)v5 setSubtitleCustomLineBreaking:v31];
    buyOptions = [protobufCopy buyOptions];
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
    buyOptions2 = [protobufCopy buyOptions];
    v40 = [buyOptions2 countByEnumeratingWithState:&v54 objects:v63 count:16];
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

          v44 = [[SFMediaOffer alloc] initWithProtobuf:*(*(&v54 + 1) + 8 * j)];
          if (v44)
          {
            [v38 addObject:v44];
          }
        }

        v41 = [buyOptions2 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v41);
    }

    [(SFMediaItem *)v5 setBuyOptions:v38];
    contentAdvisory = [protobufCopy contentAdvisory];

    if (contentAdvisory)
    {
      contentAdvisory2 = [protobufCopy contentAdvisory];
      [(SFMediaItem *)v5 setContentAdvisory:contentAdvisory2];
    }

    contentAdvisoryImage = [protobufCopy contentAdvisoryImage];

    if (contentAdvisoryImage)
    {
      v48 = [SFImage alloc];
      contentAdvisoryImage2 = [protobufCopy contentAdvisoryImage];
      v50 = [(SFImage *)v48 initWithProtobuf:contentAdvisoryImage2];
      [(SFMediaItem *)v5 setContentAdvisoryImage:v50];
    }

    v51 = v5;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  title = [(SFMediaItem *)self title];
  v3 = [title hash];
  subtitleText = [(SFMediaItem *)self subtitleText];
  v4 = [subtitleText hash] ^ v3;
  thumbnail = [(SFMediaItem *)self thumbnail];
  v6 = [thumbnail hash];
  reviewGlyph = [(SFMediaItem *)self reviewGlyph];
  v8 = v4 ^ v6 ^ [reviewGlyph hash];
  overlayImage = [(SFMediaItem *)self overlayImage];
  v10 = [overlayImage hash];
  reviewText = [(SFMediaItem *)self reviewText];
  v12 = v10 ^ [reviewText hash];
  punchout = [(SFMediaItem *)self punchout];
  v23 = v8 ^ v12 ^ [punchout hash];
  subtitleCustomLineBreaking = [(SFMediaItem *)self subtitleCustomLineBreaking];
  v15 = [subtitleCustomLineBreaking hash];
  buyOptions = [(SFMediaItem *)self buyOptions];
  v17 = v15 ^ [buyOptions hash];
  contentAdvisory = [(SFMediaItem *)self contentAdvisory];
  v19 = v17 ^ [contentAdvisory hash];
  contentAdvisoryImage = [(SFMediaItem *)self contentAdvisoryImage];
  v21 = v19 ^ [contentAdvisoryImage hash];

  return v23 ^ v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_78;
  }

  if (![(SFMediaItem *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v19 = 0;
    goto LABEL_78;
  }

  v5 = equalCopy;
  title = [(SFMediaItem *)self title];
  title2 = [(SFMediaItem *)v5 title];
  v116 = title2 == 0;
  v117 = title != 0;
  if (v117 == v116)
  {
    v10 = 0;
    memset(v114, 0, sizeof(v114));
    v11 = 0;
    v113 = 0;
    v112 = 0;
    v12 = 0;
    memset(v115, 0, sizeof(v115));
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_15;
  }

  title3 = [(SFMediaItem *)self title];
  v8 = title3 != 0;
  v111 = title3;
  if (title3)
  {
    title4 = [(SFMediaItem *)self title];
    title5 = [(SFMediaItem *)v5 title];
    v107 = title4;
    if (![title4 isEqual:?])
    {
      v10 = 0;
      memset(v114, 0, sizeof(v114));
      v11 = 0;
      v113 = 0;
      memset(v115, 0, 24);
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v115[24] = 1;
      goto LABEL_15;
    }
  }

  subtitleText = [(SFMediaItem *)self subtitleText];
  subtitleText2 = [(SFMediaItem *)v5 subtitleText];
  *&v115[24] = v8;
  if ((subtitleText != 0) == (subtitleText2 == 0))
  {
    v10 = 0;
    v11 = 0;
    v113 = 0;
    memset(v115, 0, 24);
    v112 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v114, 0, 28);
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    HIDWORD(v114[3]) = 1;
    goto LABEL_15;
  }

  subtitleText3 = [(SFMediaItem *)self subtitleText];
  v21 = subtitleText3 != 0;
  v105 = subtitleText3;
  if (subtitleText3)
  {
    subtitleText4 = [(SFMediaItem *)self subtitleText];
    subtitleText5 = [(SFMediaItem *)v5 subtitleText];
    v102 = subtitleText4;
    if (![subtitleText4 isEqual:?])
    {
      v10 = 0;
      memset(v114, 0, 24);
      v11 = 0;
      v113 = 0;
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      memset(v115, 0, 20);
      v114[3] = 0x100000001;
      *&v115[20] = 1;
      goto LABEL_15;
    }

    *&v115[20] = v21;
  }

  else
  {
    *&v115[20] = 0;
  }

  thumbnail = [(SFMediaItem *)self thumbnail];
  thumbnail2 = [(SFMediaItem *)v5 thumbnail];
  if ((thumbnail != 0) == (thumbnail2 == 0))
  {
    v10 = 0;
    v114[1] = 0;
    v114[0] = 0;
    v11 = 0;
    v113 = 0;
    v112 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    memset(v115, 0, 20);
    v114[3] = 0x100000001;
    v114[2] = 1;
    goto LABEL_15;
  }

  thumbnail3 = [(SFMediaItem *)self thumbnail];
  v36 = thumbnail3 != 0;
  v100 = thumbnail3;
  if (thumbnail3)
  {
    thumbnail4 = [(SFMediaItem *)self thumbnail];
    thumbnail5 = [(SFMediaItem *)v5 thumbnail];
    v97 = thumbnail4;
    if (![thumbnail4 isEqual:?])
    {
      v10 = 0;
      v114[1] = 0;
      *&v115[8] = 0;
      v114[0] = 0;
      v11 = 0;
      v113 = 0;
      *v115 = 0;
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v114[3] = 0x100000001;
      v114[2] = 0x100000001;
      *&v115[16] = 1;
      goto LABEL_15;
    }

    *&v115[16] = v36;
  }

  else
  {
    *&v115[16] = 0;
  }

  reviewGlyph = [(SFMediaItem *)self reviewGlyph];
  reviewGlyph2 = [(SFMediaItem *)v5 reviewGlyph];
  if ((reviewGlyph != 0) == (reviewGlyph2 == 0))
  {
    v114[1] = 0;
    *&v115[8] = 0;
    v114[0] = 0;
    v11 = 0;
    v113 = 0;
    *v115 = 0;
    v112 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    goto LABEL_15;
  }

  reviewGlyph3 = [(SFMediaItem *)self reviewGlyph];
  v39 = reviewGlyph3 != 0;
  v95 = reviewGlyph3;
  if (reviewGlyph3)
  {
    reviewGlyph4 = [(SFMediaItem *)self reviewGlyph];
    reviewGlyph5 = [(SFMediaItem *)v5 reviewGlyph];
    v92 = reviewGlyph4;
    if (![reviewGlyph4 isEqual:?])
    {
      *(v114 + 4) = 0;
      v11 = 0;
      *&v115[4] = 0;
      v113 = 0;
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      LODWORD(v114[0]) = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *v115 = 0;
      v114[3] = 0x100000001;
      HIDWORD(v114[1]) = 1;
      v114[2] = 0x100000001;
      v10 = 1;
      *&v115[12] = 1;
      goto LABEL_15;
    }

    *&v115[12] = v39;
  }

  else
  {
    *&v115[12] = 0;
  }

  overlayImage = [(SFMediaItem *)self overlayImage];
  overlayImage2 = [(SFMediaItem *)v5 overlayImage];
  if ((overlayImage != 0) == (overlayImage2 == 0))
  {
    v11 = 0;
    *&v115[4] = 0;
    v113 = 0;
    v112 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *v115 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    v114[1] = 0x100000000;
    v114[0] = 0x100000000;
    goto LABEL_15;
  }

  overlayImage3 = [(SFMediaItem *)self overlayImage];
  v42 = overlayImage3 != 0;
  v90 = overlayImage3;
  if (overlayImage3)
  {
    overlayImage4 = [(SFMediaItem *)self overlayImage];
    overlayImage5 = [(SFMediaItem *)v5 overlayImage];
    v87 = overlayImage4;
    if (![overlayImage4 isEqual:?])
    {
      v113 = 0;
      *v115 = 0;
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v114[3] = 0x100000001;
      v114[2] = 0x100000001;
      v10 = 1;
      v114[1] = 0x100000000;
      v114[0] = 0x100000000;
      v11 = 1;
      *&v115[8] = 1;
      goto LABEL_15;
    }

    *&v115[8] = v42;
  }

  else
  {
    *&v115[8] = 0;
  }

  reviewText = [(SFMediaItem *)self reviewText];
  reviewText2 = [(SFMediaItem *)v5 reviewText];
  if ((reviewText != 0) == (reviewText2 == 0))
  {
    v114[1] = 0x100000000;
    *v115 = 0;
    v112 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    v114[0] = 0x100000000;
    v11 = 1;
    v113 = 0x100000000;
    goto LABEL_15;
  }

  reviewText3 = [(SFMediaItem *)self reviewText];
  v45 = reviewText3 != 0;
  v85 = reviewText3;
  if (reviewText3)
  {
    reviewText4 = [(SFMediaItem *)self reviewText];
    reviewText5 = [(SFMediaItem *)v5 reviewText];
    v82 = reviewText4;
    if (![reviewText4 isEqual:?])
    {
      v112 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *v115 = 0x100000000;
      v114[3] = 0x100000001;
      v114[2] = 0x100000001;
      v10 = 1;
      v114[0] = 0x100000000;
      v11 = 1;
      v113 = 0x100000000;
      v114[1] = 0x100000001;
      goto LABEL_15;
    }

    *&v115[4] = v45;
  }

  else
  {
    *&v115[4] = 0;
  }

  punchout = [(SFMediaItem *)self punchout];
  punchout2 = [(SFMediaItem *)v5 punchout];
  if ((punchout != 0) == (punchout2 == 0))
  {
    v12 = 0;
    v112 = 0x100000000;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *v115 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    v114[0] = 0x100000000;
    v11 = 1;
    v113 = 0x100000000;
    v114[1] = 0x100000001;
    goto LABEL_15;
  }

  punchout3 = [(SFMediaItem *)self punchout];
  v48 = punchout3 != 0;
  v80 = punchout3;
  if (punchout3)
  {
    punchout4 = [(SFMediaItem *)self punchout];
    punchout5 = [(SFMediaItem *)v5 punchout];
    v77 = punchout4;
    if (![punchout4 isEqual:?])
    {
      v112 = 0x100000000;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v120, 0, 12);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v114[3] = 0x100000001;
      v114[2] = 0x100000001;
      v10 = 1;
      v114[1] = 0x100000001;
      v114[0] = 0x100000000;
      v11 = 1;
      v113 = 0x100000000;
      v12 = 1;
      *v115 = 1;
      goto LABEL_15;
    }

    *v115 = v48;
  }

  else
  {
    *v115 = 0;
  }

  subtitleCustomLineBreaking = [(SFMediaItem *)self subtitleCustomLineBreaking];
  subtitleCustomLineBreaking2 = [(SFMediaItem *)v5 subtitleCustomLineBreaking];
  if ((subtitleCustomLineBreaking != 0) == (subtitleCustomLineBreaking2 == 0))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v120, 0, 12);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    v114[1] = 0x100000001;
    v114[0] = 0x100000000;
    v11 = 1;
    v113 = 0x100000000;
    v12 = 1;
    v112 = 0x100000001;
    goto LABEL_15;
  }

  subtitleCustomLineBreaking3 = [(SFMediaItem *)self subtitleCustomLineBreaking];
  LODWORD(v120[1]) = subtitleCustomLineBreaking3 != 0;
  v75 = subtitleCustomLineBreaking3;
  v58 = v5;
  if (!subtitleCustomLineBreaking3 || (-[SFMediaItem subtitleCustomLineBreaking](self, "subtitleCustomLineBreaking"), v51 = objc_claimAutoreleasedReturnValue(), -[SFMediaItem subtitleCustomLineBreaking](v5, "subtitleCustomLineBreaking"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v51, [v51 isEqual:?]))
  {
    buyOptions = [(SFMediaItem *)self buyOptions];
    buyOptions2 = [(SFMediaItem *)v58 buyOptions];
    if ((buyOptions != 0) == (buyOptions2 == 0))
    {
      v14 = 0;
      v120[0] = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v114[3] = 0x100000001;
      v114[2] = 0x100000001;
      v10 = 1;
      v114[1] = 0x100000001;
      v114[0] = 0x100000000;
      v11 = 1;
      v112 = 0x100000001;
      v12 = 1;
      v13 = 1;
      v113 = 0x100000001;
    }

    else
    {
      buyOptions3 = [(SFMediaItem *)self buyOptions];
      HIDWORD(v120[0]) = buyOptions3 != 0;
      v70 = buyOptions3;
      if (!buyOptions3 || (-[SFMediaItem buyOptions](self, "buyOptions"), v53 = objc_claimAutoreleasedReturnValue(), -[SFMediaItem buyOptions](v58, "buyOptions"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v53, [v53 isEqual:?]))
      {
        contentAdvisory = [(SFMediaItem *)self contentAdvisory];
        contentAdvisory2 = [(SFMediaItem *)v58 contentAdvisory];
        if ((contentAdvisory != 0) == (contentAdvisory2 == 0))
        {
          v15 = 0;
          LODWORD(v120[0]) = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v114[3] = 0x100000001;
          v114[2] = 0x100000001;
          v10 = 1;
          v114[1] = 0x100000001;
          v11 = 1;
          v113 = 0x100000001;
          v112 = 0x100000001;
          v12 = 1;
          v13 = 1;
          v14 = 1;
          v114[0] = 0x100000001;
        }

        else
        {
          contentAdvisory3 = [(SFMediaItem *)self contentAdvisory];
          LODWORD(v120[0]) = contentAdvisory3 != 0;
          v65 = contentAdvisory3;
          if (!contentAdvisory3 || (-[SFMediaItem contentAdvisory](self, "contentAdvisory"), v55 = objc_claimAutoreleasedReturnValue(), -[SFMediaItem contentAdvisory](v58, "contentAdvisory"), v61 = objc_claimAutoreleasedReturnValue(), v62 = v55, [v55 isEqual:?]))
          {
            contentAdvisoryImage = [(SFMediaItem *)self contentAdvisoryImage];
            contentAdvisoryImage2 = [(SFMediaItem *)v58 contentAdvisoryImage];
            if ((contentAdvisoryImage != 0) == (contentAdvisoryImage2 == 0))
            {
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v114[3] = 0x100000001;
              v114[2] = 0x100000001;
              v10 = 1;
              v114[1] = 0x100000001;
              v114[0] = 0x100000001;
              v11 = 1;
              v113 = 0x100000001;
              v112 = 0x100000001;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              v15 = 1;
              v16 = 1;
            }

            else
            {
              contentAdvisoryImage3 = [(SFMediaItem *)self contentAdvisoryImage];
              if (contentAdvisoryImage3)
              {
                contentAdvisoryImage4 = [(SFMediaItem *)self contentAdvisoryImage];
                v5 = v58;
                contentAdvisoryImage5 = [(SFMediaItem *)v58 contentAdvisoryImage];
                v59 = contentAdvisoryImage4;
                v19 = [contentAdvisoryImage4 isEqual:contentAdvisoryImage5];
                v6 = contentAdvisoryImage5;
                v18 = 1;
                v114[3] = 0x100000001;
                v114[2] = 0x100000001;
                v10 = 1;
                v114[1] = 0x100000001;
                v114[0] = 0x100000001;
                v11 = 1;
                v113 = 0x100000001;
                v112 = 0x100000001;
                v12 = 1;
                v13 = 1;
                v14 = 1;
                v15 = 1;
                v16 = 1;
                v17 = 1;
                goto LABEL_15;
              }

              contentAdvisoryImage3 = 0;
              v18 = 0;
              v114[3] = 0x100000001;
              v114[2] = 0x100000001;
              v10 = 1;
              v114[1] = 0x100000001;
              v114[0] = 0x100000001;
              v11 = 1;
              v113 = 0x100000001;
              v112 = 0x100000001;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              v15 = 1;
              v16 = 1;
              v17 = 1;
              v19 = 1;
            }
          }

          else
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v114[3] = 0x100000001;
            v114[2] = 0x100000001;
            v10 = 1;
            v114[1] = 0x100000001;
            v114[0] = 0x100000001;
            v11 = 1;
            v113 = 0x100000001;
            v112 = 0x100000001;
            v12 = 1;
            v13 = 1;
            v14 = 1;
            v15 = 1;
            LODWORD(v120[0]) = 1;
          }
        }
      }

      else
      {
        v15 = 0;
        v120[0] = 0x100000000;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v114[3] = 0x100000001;
        v114[2] = 0x100000001;
        v10 = 1;
        v114[1] = 0x100000001;
        v114[0] = 0x100000000;
        v11 = 1;
        v113 = 0x100000001;
        v112 = 0x100000001;
        v12 = 1;
        v13 = 1;
        v14 = 1;
      }
    }
  }

  else
  {
    v14 = 0;
    v120[0] = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v114[3] = 0x100000001;
    v114[2] = 0x100000001;
    v10 = 1;
    v114[1] = 0x100000001;
    v114[0] = 0x100000000;
    v11 = 1;
    v113 = 0x100000000;
    v112 = 0x100000001;
    v12 = 1;
    v13 = 1;
    LODWORD(v120[1]) = 1;
  }

  v5 = v58;
LABEL_15:
  if (v18)
  {
    v110 = equalCopy;
    v23 = v19;
    v24 = v13;
    v25 = v12;
    v26 = v5;
    v27 = v14;
    v28 = v16;
    v29 = v15;
    v30 = v11;
    v31 = v10;
    v32 = v17;

    v33 = v32;
    v10 = v31;
    v11 = v30;
    v15 = v29;
    v16 = v28;
    v14 = v27;
    v5 = v26;
    v12 = v25;
    v13 = v24;
    v19 = v23;
    equalCopy = v110;
    if (!v33)
    {
      goto LABEL_17;
    }

LABEL_80:

    if (!v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v17)
  {
    goto LABEL_80;
  }

LABEL_17:
  if (v16)
  {
LABEL_18:
  }

LABEL_19:
  if (LODWORD(v120[0]))
  {
  }

  if (v15)
  {
  }

  if (LODWORD(v114[0]))
  {
  }

  if (HIDWORD(v120[0]))
  {
  }

  if (v14)
  {
  }

  if (v113)
  {
  }

  if (LODWORD(v120[1]))
  {
  }

  if (v13)
  {
  }

  if (v112)
  {
  }

  if (*v115)
  {
  }

  if (v12)
  {
  }

  if (HIDWORD(v112))
  {
  }

  if (*&v115[4])
  {
  }

  if (LODWORD(v114[1]))
  {
  }

  if (HIDWORD(v113))
  {
  }

  if (*&v115[8])
  {
  }

  if (v11)
  {
  }

  if (HIDWORD(v114[0]))
  {
  }

  if (*&v115[12])
  {
  }

  if (HIDWORD(v114[1]))
  {
  }

  if (v10)
  {
  }

  if (*&v115[16])
  {
  }

  if (HIDWORD(v114[2]))
  {
  }

  if (LODWORD(v114[2]))
  {
  }

  if (*&v115[20])
  {
  }

  if (LODWORD(v114[3]))
  {
  }

  if (HIDWORD(v114[3]))
  {
  }

  if (*&v115[24])
  {
  }

  if (v117 != v116)
  {
  }

LABEL_78:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(SFMediaItem *)self title];
  v6 = [title copy];
  [v4 setTitle:v6];

  subtitleText = [(SFMediaItem *)self subtitleText];
  v8 = [subtitleText copy];
  [v4 setSubtitleText:v8];

  thumbnail = [(SFMediaItem *)self thumbnail];
  v10 = [thumbnail copy];
  [v4 setThumbnail:v10];

  reviewGlyph = [(SFMediaItem *)self reviewGlyph];
  v12 = [reviewGlyph copy];
  [v4 setReviewGlyph:v12];

  overlayImage = [(SFMediaItem *)self overlayImage];
  v14 = [overlayImage copy];
  [v4 setOverlayImage:v14];

  reviewText = [(SFMediaItem *)self reviewText];
  v16 = [reviewText copy];
  [v4 setReviewText:v16];

  punchout = [(SFMediaItem *)self punchout];
  v18 = [punchout copy];
  [v4 setPunchout:v18];

  subtitleCustomLineBreaking = [(SFMediaItem *)self subtitleCustomLineBreaking];
  v20 = [subtitleCustomLineBreaking copy];
  [v4 setSubtitleCustomLineBreaking:v20];

  buyOptions = [(SFMediaItem *)self buyOptions];
  v22 = [buyOptions copy];
  [v4 setBuyOptions:v22];

  contentAdvisory = [(SFMediaItem *)self contentAdvisory];
  v24 = [contentAdvisory copy];
  [v4 setContentAdvisory:v24];

  contentAdvisoryImage = [(SFMediaItem *)self contentAdvisoryImage];
  v26 = [contentAdvisoryImage copy];
  [v4 setContentAdvisoryImage:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaItem alloc] initWithFacade:self];
  jsonData = [(_SFPBMediaItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMediaItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBMediaItem alloc] initWithFacade:self];
  data = [(_SFPBMediaItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFMediaItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMediaItem alloc] initWithData:v5];
  v7 = [(SFMediaItem *)self initWithProtobuf:v6];

  return v7;
}

@end