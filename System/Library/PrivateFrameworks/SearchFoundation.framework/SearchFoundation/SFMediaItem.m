@interface SFMediaItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaItem)initWithCoder:(id)a3;
- (SFMediaItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMediaItem

- (SFMediaItem)initWithProtobuf:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v62.receiver = self;
  v62.super_class = SFMediaItem;
  v5 = [(SFMediaItem *)&v62 init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(SFMediaItem *)v5 setTitle:v7];
    }

    v8 = [v4 subtitleText];

    if (v8)
    {
      v9 = [SFText alloc];
      v10 = [v4 subtitleText];
      v11 = [(SFText *)v9 initWithProtobuf:v10];
      [(SFMediaItem *)v5 setSubtitleText:v11];
    }

    v12 = [v4 thumbnail];

    if (v12)
    {
      v13 = [SFImage alloc];
      v14 = [v4 thumbnail];
      v15 = [(SFImage *)v13 initWithProtobuf:v14];
      [(SFMediaItem *)v5 setThumbnail:v15];
    }

    v16 = [v4 reviewGlyph];

    if (v16)
    {
      v17 = [SFImage alloc];
      v18 = [v4 reviewGlyph];
      v19 = [(SFImage *)v17 initWithProtobuf:v18];
      [(SFMediaItem *)v5 setReviewGlyph:v19];
    }

    v20 = [v4 overlayImage];

    if (v20)
    {
      v21 = [SFImage alloc];
      v22 = [v4 overlayImage];
      v23 = [(SFImage *)v21 initWithProtobuf:v22];
      [(SFMediaItem *)v5 setOverlayImage:v23];
    }

    v24 = [v4 reviewText];

    if (v24)
    {
      v25 = [v4 reviewText];
      [(SFMediaItem *)v5 setReviewText:v25];
    }

    v26 = [v4 punchout];

    if (v26)
    {
      v27 = [SFPunchout alloc];
      v28 = [v4 punchout];
      v29 = [(SFPunchout *)v27 initWithProtobuf:v28];
      [(SFMediaItem *)v5 setPunchout:v29];
    }

    v30 = [v4 subtitleCustomLineBreakings];
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
    v32 = [v4 subtitleCustomLineBreakings];
    v33 = [v32 countByEnumeratingWithState:&v58 objects:v64 count:16];
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

        v34 = [v32 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v34);
    }

    [(SFMediaItem *)v5 setSubtitleCustomLineBreaking:v31];
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
    v40 = [v39 countByEnumeratingWithState:&v54 objects:v63 count:16];
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

          v44 = [[SFMediaOffer alloc] initWithProtobuf:*(*(&v54 + 1) + 8 * j)];
          if (v44)
          {
            [v38 addObject:v44];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v41);
    }

    [(SFMediaItem *)v5 setBuyOptions:v38];
    v45 = [v4 contentAdvisory];

    if (v45)
    {
      v46 = [v4 contentAdvisory];
      [(SFMediaItem *)v5 setContentAdvisory:v46];
    }

    v47 = [v4 contentAdvisoryImage];

    if (v47)
    {
      v48 = [SFImage alloc];
      v49 = [v4 contentAdvisoryImage];
      v50 = [(SFImage *)v48 initWithProtobuf:v49];
      [(SFMediaItem *)v5 setContentAdvisoryImage:v50];
    }

    v51 = v5;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v25 = [(SFMediaItem *)self title];
  v3 = [v25 hash];
  v24 = [(SFMediaItem *)self subtitleText];
  v4 = [v24 hash] ^ v3;
  v5 = [(SFMediaItem *)self thumbnail];
  v6 = [v5 hash];
  v7 = [(SFMediaItem *)self reviewGlyph];
  v8 = v4 ^ v6 ^ [v7 hash];
  v9 = [(SFMediaItem *)self overlayImage];
  v10 = [v9 hash];
  v11 = [(SFMediaItem *)self reviewText];
  v12 = v10 ^ [v11 hash];
  v13 = [(SFMediaItem *)self punchout];
  v23 = v8 ^ v12 ^ [v13 hash];
  v14 = [(SFMediaItem *)self subtitleCustomLineBreaking];
  v15 = [v14 hash];
  v16 = [(SFMediaItem *)self buyOptions];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFMediaItem *)self contentAdvisory];
  v19 = v17 ^ [v18 hash];
  v20 = [(SFMediaItem *)self contentAdvisoryImage];
  v21 = v19 ^ [v20 hash];

  return v23 ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_78;
  }

  if (![(SFMediaItem *)v4 isMemberOfClass:objc_opt_class()])
  {
    v19 = 0;
    goto LABEL_78;
  }

  v5 = v4;
  v119 = [(SFMediaItem *)self title];
  v118 = [(SFMediaItem *)v5 title];
  v116 = v118 == 0;
  v117 = v119 != 0;
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

  v7 = [(SFMediaItem *)self title];
  v8 = v7 != 0;
  v111 = v7;
  if (v7)
  {
    v9 = [(SFMediaItem *)self title];
    v106 = [(SFMediaItem *)v5 title];
    v107 = v9;
    if (![v9 isEqual:?])
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

  v109 = [(SFMediaItem *)self subtitleText];
  v108 = [(SFMediaItem *)v5 subtitleText];
  *&v115[24] = v8;
  if ((v109 != 0) == (v108 == 0))
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

  v20 = [(SFMediaItem *)self subtitleText];
  v21 = v20 != 0;
  v105 = v20;
  if (v20)
  {
    v22 = [(SFMediaItem *)self subtitleText];
    v101 = [(SFMediaItem *)v5 subtitleText];
    v102 = v22;
    if (![v22 isEqual:?])
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

  v104 = [(SFMediaItem *)self thumbnail];
  v103 = [(SFMediaItem *)v5 thumbnail];
  if ((v104 != 0) == (v103 == 0))
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

  v35 = [(SFMediaItem *)self thumbnail];
  v36 = v35 != 0;
  v100 = v35;
  if (v35)
  {
    v37 = [(SFMediaItem *)self thumbnail];
    v96 = [(SFMediaItem *)v5 thumbnail];
    v97 = v37;
    if (![v37 isEqual:?])
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

  v99 = [(SFMediaItem *)self reviewGlyph];
  v98 = [(SFMediaItem *)v5 reviewGlyph];
  if ((v99 != 0) == (v98 == 0))
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

  v38 = [(SFMediaItem *)self reviewGlyph];
  v39 = v38 != 0;
  v95 = v38;
  if (v38)
  {
    v40 = [(SFMediaItem *)self reviewGlyph];
    v91 = [(SFMediaItem *)v5 reviewGlyph];
    v92 = v40;
    if (![v40 isEqual:?])
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

  v94 = [(SFMediaItem *)self overlayImage];
  v93 = [(SFMediaItem *)v5 overlayImage];
  if ((v94 != 0) == (v93 == 0))
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

  v41 = [(SFMediaItem *)self overlayImage];
  v42 = v41 != 0;
  v90 = v41;
  if (v41)
  {
    v43 = [(SFMediaItem *)self overlayImage];
    v86 = [(SFMediaItem *)v5 overlayImage];
    v87 = v43;
    if (![v43 isEqual:?])
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

  v89 = [(SFMediaItem *)self reviewText];
  v88 = [(SFMediaItem *)v5 reviewText];
  if ((v89 != 0) == (v88 == 0))
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

  v44 = [(SFMediaItem *)self reviewText];
  v45 = v44 != 0;
  v85 = v44;
  if (v44)
  {
    v46 = [(SFMediaItem *)self reviewText];
    v81 = [(SFMediaItem *)v5 reviewText];
    v82 = v46;
    if (![v46 isEqual:?])
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

  v84 = [(SFMediaItem *)self punchout];
  v83 = [(SFMediaItem *)v5 punchout];
  if ((v84 != 0) == (v83 == 0))
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

  v47 = [(SFMediaItem *)self punchout];
  v48 = v47 != 0;
  v80 = v47;
  if (v47)
  {
    v49 = [(SFMediaItem *)self punchout];
    v76 = [(SFMediaItem *)v5 punchout];
    v77 = v49;
    if (![v49 isEqual:?])
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

  v79 = [(SFMediaItem *)self subtitleCustomLineBreaking];
  v78 = [(SFMediaItem *)v5 subtitleCustomLineBreaking];
  if ((v79 != 0) == (v78 == 0))
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

  v50 = [(SFMediaItem *)self subtitleCustomLineBreaking];
  LODWORD(v120[1]) = v50 != 0;
  v75 = v50;
  v58 = v5;
  if (!v50 || (-[SFMediaItem subtitleCustomLineBreaking](self, "subtitleCustomLineBreaking"), v51 = objc_claimAutoreleasedReturnValue(), -[SFMediaItem subtitleCustomLineBreaking](v5, "subtitleCustomLineBreaking"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v51, [v51 isEqual:?]))
  {
    v74 = [(SFMediaItem *)self buyOptions];
    v73 = [(SFMediaItem *)v58 buyOptions];
    if ((v74 != 0) == (v73 == 0))
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
      v52 = [(SFMediaItem *)self buyOptions];
      HIDWORD(v120[0]) = v52 != 0;
      v70 = v52;
      if (!v52 || (-[SFMediaItem buyOptions](self, "buyOptions"), v53 = objc_claimAutoreleasedReturnValue(), -[SFMediaItem buyOptions](v58, "buyOptions"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v53, [v53 isEqual:?]))
      {
        v69 = [(SFMediaItem *)self contentAdvisory];
        v68 = [(SFMediaItem *)v58 contentAdvisory];
        if ((v69 != 0) == (v68 == 0))
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
          v54 = [(SFMediaItem *)self contentAdvisory];
          LODWORD(v120[0]) = v54 != 0;
          v65 = v54;
          if (!v54 || (-[SFMediaItem contentAdvisory](self, "contentAdvisory"), v55 = objc_claimAutoreleasedReturnValue(), -[SFMediaItem contentAdvisory](v58, "contentAdvisory"), v61 = objc_claimAutoreleasedReturnValue(), v62 = v55, [v55 isEqual:?]))
          {
            v64 = [(SFMediaItem *)self contentAdvisoryImage];
            v63 = [(SFMediaItem *)v58 contentAdvisoryImage];
            if ((v64 != 0) == (v63 == 0))
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
              v60 = [(SFMediaItem *)self contentAdvisoryImage];
              if (v60)
              {
                v56 = [(SFMediaItem *)self contentAdvisoryImage];
                v5 = v58;
                v57 = [(SFMediaItem *)v58 contentAdvisoryImage];
                v59 = v56;
                v19 = [v56 isEqual:v57];
                v6 = v57;
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

              v60 = 0;
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
    v110 = v4;
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
    v4 = v110;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFMediaItem *)self title];
  v6 = [v5 copy];
  [v4 setTitle:v6];

  v7 = [(SFMediaItem *)self subtitleText];
  v8 = [v7 copy];
  [v4 setSubtitleText:v8];

  v9 = [(SFMediaItem *)self thumbnail];
  v10 = [v9 copy];
  [v4 setThumbnail:v10];

  v11 = [(SFMediaItem *)self reviewGlyph];
  v12 = [v11 copy];
  [v4 setReviewGlyph:v12];

  v13 = [(SFMediaItem *)self overlayImage];
  v14 = [v13 copy];
  [v4 setOverlayImage:v14];

  v15 = [(SFMediaItem *)self reviewText];
  v16 = [v15 copy];
  [v4 setReviewText:v16];

  v17 = [(SFMediaItem *)self punchout];
  v18 = [v17 copy];
  [v4 setPunchout:v18];

  v19 = [(SFMediaItem *)self subtitleCustomLineBreaking];
  v20 = [v19 copy];
  [v4 setSubtitleCustomLineBreaking:v20];

  v21 = [(SFMediaItem *)self buyOptions];
  v22 = [v21 copy];
  [v4 setBuyOptions:v22];

  v23 = [(SFMediaItem *)self contentAdvisory];
  v24 = [v23 copy];
  [v4 setContentAdvisory:v24];

  v25 = [(SFMediaItem *)self contentAdvisoryImage];
  v26 = [v25 copy];
  [v4 setContentAdvisoryImage:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaItem alloc] initWithFacade:self];
  v3 = [(_SFPBMediaItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaItem alloc] initWithFacade:self];
  v3 = [(_SFPBMediaItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBMediaItem alloc] initWithFacade:self];
  v5 = [(_SFPBMediaItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFMediaItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMediaItem alloc] initWithData:v5];
  v7 = [(SFMediaItem *)self initWithProtobuf:v6];

  return v7;
}

@end