@interface SFWatchListItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFWatchListItem)initWithCoder:(id)a3;
- (SFWatchListItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFWatchListItem

- (SFWatchListItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SFWatchListItem;
  v5 = [(SFWatchListItem *)&v28 init];
  if (v5)
  {
    v6 = [v4 watchListIdentifier];

    if (v6)
    {
      v7 = [v4 watchListIdentifier];
      [(SFWatchListItem *)v5 setWatchListIdentifier:v7];
    }

    v8 = [v4 seasonEpisodeTextFormat];

    if (v8)
    {
      v9 = [v4 seasonEpisodeTextFormat];
      [(SFWatchListItem *)v5 setSeasonEpisodeTextFormat:v9];
    }

    v10 = [v4 continueInTextFormat];

    if (v10)
    {
      v11 = [v4 continueInTextFormat];
      [(SFWatchListItem *)v5 setContinueInTextFormat:v11];
    }

    v12 = [v4 openButtonTitle];

    if (v12)
    {
      v13 = [v4 openButtonTitle];
      [(SFWatchListItem *)v5 setOpenButtonTitle:v13];
    }

    v14 = [v4 installButtonTitle];

    if (v14)
    {
      v15 = [v4 installButtonTitle];
      [(SFWatchListItem *)v5 setInstallButtonTitle:v15];
    }

    v16 = [v4 purchaseOfferTextFormat];

    if (v16)
    {
      v17 = [v4 purchaseOfferTextFormat];
      [(SFWatchListItem *)v5 setPurchaseOfferTextFormat:v17];
    }

    v18 = [v4 inUpNextText];

    if (v18)
    {
      v19 = [v4 inUpNextText];
      [(SFWatchListItem *)v5 setInUpNextText:v19];
    }

    v20 = [v4 addToUpNextText];

    if (v20)
    {
      v21 = [v4 addToUpNextText];
      [(SFWatchListItem *)v5 setAddToUpNextText:v21];
    }

    v22 = [v4 addedToUpNextText];

    if (v22)
    {
      v23 = [v4 addedToUpNextText];
      [(SFWatchListItem *)v5 setAddedToUpNextText:v23];
    }

    v24 = [v4 watchLiveTextFormat];

    if (v24)
    {
      v25 = [v4 watchLiveTextFormat];
      [(SFWatchListItem *)v5 setWatchLiveTextFormat:v25];
    }

    if ([v4 isMediaContainer])
    {
      -[SFWatchListItem setIsMediaContainer:](v5, "setIsMediaContainer:", [v4 isMediaContainer]);
    }

    if ([v4 type])
    {
      -[SFWatchListItem setType:](v5, "setType:", [v4 type]);
    }

    v26 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v25 = [(SFWatchListItem *)self watchListIdentifier];
  v3 = [v25 hash];
  v24 = [(SFWatchListItem *)self seasonEpisodeTextFormat];
  v4 = [v24 hash] ^ v3;
  v23 = [(SFWatchListItem *)self continueInTextFormat];
  v5 = [v23 hash];
  v6 = [(SFWatchListItem *)self openButtonTitle];
  v7 = v4 ^ v5 ^ [v6 hash];
  v8 = [(SFWatchListItem *)self installButtonTitle];
  v9 = [v8 hash];
  v10 = [(SFWatchListItem *)self purchaseOfferTextFormat];
  v11 = v9 ^ [v10 hash];
  v12 = [(SFWatchListItem *)self inUpNextText];
  v13 = v7 ^ v11 ^ [v12 hash];
  v14 = [(SFWatchListItem *)self addToUpNextText];
  v15 = [v14 hash];
  v16 = [(SFWatchListItem *)self addedToUpNextText];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFWatchListItem *)self watchLiveTextFormat];
  v19 = v17 ^ [v18 hash];
  v20 = v13 ^ v19 ^ [(SFWatchListItem *)self isMediaContainer];
  v21 = [(SFWatchListItem *)self type];

  return v20 ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
    goto LABEL_120;
  }

  if (![(SFWatchListItem *)v4 isMemberOfClass:objc_opt_class()])
  {
    v17 = 0;
    goto LABEL_120;
  }

  v5 = v4;
  v101 = [(SFWatchListItem *)self watchListIdentifier];
  v100 = [(SFWatchListItem *)v5 watchListIdentifier];
  v98 = v100 == 0;
  v99 = v101 != 0;
  if (v99 == v98)
  {
    v9 = 0;
    memset(v97, 0, sizeof(v97));
    v10 = 0;
    v11 = 0;
    v96 = 0;
    v12 = 0;
    v102 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_132;
  }

  v6 = [(SFWatchListItem *)self watchListIdentifier];
  v7 = v6 != 0;
  v95 = v6;
  if (v6)
  {
    v8 = [(SFWatchListItem *)self watchListIdentifier];
    v90 = [(SFWatchListItem *)v5 watchListIdentifier];
    v91 = v8;
    if (![v8 isEqual:?])
    {
      v9 = 0;
      memset(v97, 0, 56);
      v10 = 0;
      v11 = 0;
      v96 = 0;
      v12 = 0;
      v102 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v97[56] = 1;
      goto LABEL_132;
    }
  }

  v93 = [(SFWatchListItem *)self seasonEpisodeTextFormat];
  v92 = [(SFWatchListItem *)v5 seasonEpisodeTextFormat];
  *&v97[56] = v7;
  if ((v93 != 0) == (v92 == 0))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    memset(&v97[32], 0, 24);
    v96 = 0;
    v12 = 0;
    memset(v97, 0, 28);
    v102 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *&v97[28] = 1;
    goto LABEL_132;
  }

  v18 = [(SFWatchListItem *)self seasonEpisodeTextFormat];
  v19 = v18 != 0;
  v89 = v18;
  if (v18)
  {
    v20 = [(SFWatchListItem *)self seasonEpisodeTextFormat];
    v85 = [(SFWatchListItem *)v5 seasonEpisodeTextFormat];
    v86 = v20;
    if (![v20 isEqual:?])
    {
      v9 = 0;
      memset(v97, 0, 24);
      v10 = 0;
      v11 = 0;
      v96 = 0;
      v12 = 0;
      v102 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      memset(&v97[32], 0, 20);
      *&v97[24] = 0x100000001;
      *&v97[52] = 1;
      goto LABEL_132;
    }

    *&v97[52] = v19;
  }

  else
  {
    *&v97[52] = 0;
  }

  v88 = [(SFWatchListItem *)self continueInTextFormat];
  v87 = [(SFWatchListItem *)v5 continueInTextFormat];
  if ((v88 != 0) == (v87 == 0))
  {
    *&v97[8] = 0;
    v9 = 0;
    *v97 = 0;
    v10 = 0;
    v11 = 0;
    v96 = 0;
    v12 = 0;
    v102 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    memset(&v97[32], 0, 20);
    *&v97[24] = 0x100000001;
    *&v97[16] = 1;
    goto LABEL_132;
  }

  v21 = [(SFWatchListItem *)self continueInTextFormat];
  v22 = v21 != 0;
  v84 = v21;
  if (v21)
  {
    v23 = [(SFWatchListItem *)self continueInTextFormat];
    v80 = [(SFWatchListItem *)v5 continueInTextFormat];
    v81 = v23;
    if (![v23 isEqual:?])
    {
      *&v97[8] = 0;
      *&v97[40] = 0;
      v9 = 0;
      *v97 = 0;
      v10 = 0;
      v11 = 0;
      *&v97[32] = 0;
      v96 = 0;
      v12 = 0;
      v102 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v97[24] = 1;
      *&v97[28] = 1;
      *&v97[16] = 1;
      *&v97[20] = 1;
      *&v97[48] = 1;
      goto LABEL_132;
    }

    *&v97[48] = v22;
  }

  else
  {
    *&v97[48] = 0;
  }

  v83 = [(SFWatchListItem *)self openButtonTitle];
  v82 = [(SFWatchListItem *)v5 openButtonTitle];
  if ((v83 != 0) == (v82 == 0))
  {
    *&v97[40] = 0;
    v9 = 0;
    *v97 = 0;
    v10 = 0;
    v11 = 0;
    *&v97[32] = 0;
    v96 = 0;
    v12 = 0;
    v102 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *&v97[24] = 1;
    *&v97[28] = 1;
    *&v97[12] = 0;
    *&v97[16] = 1;
    *&v97[20] = 1;
    *&v97[8] = 1;
    goto LABEL_132;
  }

  v24 = [(SFWatchListItem *)self openButtonTitle];
  v25 = v24 != 0;
  v79 = v24;
  if (v24)
  {
    v26 = [(SFWatchListItem *)self openButtonTitle];
    v75 = [(SFWatchListItem *)v5 openButtonTitle];
    v76 = v26;
    if (![v26 isEqual:?])
    {
      v9 = 0;
      *v97 = 0;
      *&v97[36] = 0;
      v10 = 0;
      v11 = 0;
      v96 = 0;
      v12 = 0;
      v102 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v97[28] = 1;
      *&v97[32] = 0;
      *&v97[20] = 1;
      *&v97[24] = 1;
      *&v97[12] = 1;
      *&v97[16] = 1;
      *&v97[8] = 1;
      *&v97[44] = 1;
      goto LABEL_132;
    }

    *&v97[44] = v25;
  }

  else
  {
    *&v97[44] = 0;
  }

  v78 = [(SFWatchListItem *)self installButtonTitle];
  v77 = [(SFWatchListItem *)v5 installButtonTitle];
  if ((v78 != 0) == (v77 == 0))
  {
    *v97 = 0;
    *&v97[36] = 0;
    v10 = 0;
    v11 = 0;
    v96 = 0;
    v12 = 0;
    v102 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *&v97[28] = 1;
    *&v97[20] = 1;
    *&v97[24] = 1;
    *&v97[12] = 1;
    *&v97[16] = 1;
    *&v97[8] = 1;
    v9 = 1;
    goto LABEL_132;
  }

  v27 = [(SFWatchListItem *)self installButtonTitle];
  v28 = v27 != 0;
  v74 = v27;
  if (v27)
  {
    v29 = [(SFWatchListItem *)self installButtonTitle];
    v70 = [(SFWatchListItem *)v5 installButtonTitle];
    v71 = v29;
    if (![v29 isEqual:?])
    {
      v10 = 0;
      v11 = 0;
      *&v97[32] = 0;
      v96 = 0;
      v12 = 0;
      v102 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v97[24] = 1;
      *&v97[28] = 1;
      *&v97[16] = 1;
      *&v97[20] = 1;
      *&v97[8] = 1;
      *&v97[12] = 1;
      v9 = 1;
      *v97 = 0;
      *&v97[4] = 1;
      *&v97[40] = 1;
      goto LABEL_132;
    }

    *&v97[40] = v28;
  }

  else
  {
    *&v97[40] = 0;
  }

  v73 = [(SFWatchListItem *)self purchaseOfferTextFormat];
  v72 = [(SFWatchListItem *)v5 purchaseOfferTextFormat];
  if ((v73 != 0) == (v72 == 0))
  {
    v11 = 0;
    *&v97[32] = 0;
    v96 = 0;
    v12 = 0;
    v102 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *&v97[24] = 1;
    *&v97[28] = 1;
    *&v97[16] = 1;
    *&v97[20] = 1;
    *&v97[8] = 1;
    *&v97[12] = 1;
    v9 = 1;
    *v97 = 0;
    *&v97[4] = 1;
    v10 = 1;
    goto LABEL_132;
  }

  v30 = [(SFWatchListItem *)self purchaseOfferTextFormat];
  v31 = v30 != 0;
  v69 = v30;
  if (v30)
  {
    v32 = [(SFWatchListItem *)self purchaseOfferTextFormat];
    v65 = [(SFWatchListItem *)v5 purchaseOfferTextFormat];
    v66 = v32;
    if (![v32 isEqual:?])
    {
      v96 = 0;
      v12 = 0;
      v102 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v97[28] = 1;
      *&v97[32] = 0;
      *&v97[20] = 1;
      *&v97[24] = 1;
      *&v97[12] = 1;
      *&v97[16] = 1;
      *&v97[8] = 1;
      v9 = 1;
      *v97 = 0;
      *&v97[4] = 1;
      v10 = 1;
      v11 = 1;
      *&v97[36] = 1;
      goto LABEL_132;
    }

    *&v97[36] = v31;
  }

  else
  {
    *&v97[36] = 0;
  }

  v68 = [(SFWatchListItem *)self inUpNextText];
  v67 = [(SFWatchListItem *)v5 inUpNextText];
  if ((v68 != 0) == (v67 == 0))
  {
    v12 = 0;
    v96 = 0x100000000;
    v102 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *&v97[32] = 0;
    *&v97[24] = 0x100000001;
    *&v97[16] = 0x100000001;
    *&v97[8] = 0x100000001;
    v9 = 1;
    *v97 = 0x100000000;
    v10 = 1;
    v11 = 1;
    goto LABEL_132;
  }

  v33 = [(SFWatchListItem *)self inUpNextText];
  v34 = v33 != 0;
  v64 = v33;
  if (v33)
  {
    v35 = [(SFWatchListItem *)self inUpNextText];
    v60 = [(SFWatchListItem *)v5 inUpNextText];
    v61 = v35;
    if (![v35 isEqual:?])
    {
      v102 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v97[24] = 0x100000001;
      *&v97[16] = 0x100000001;
      *&v97[8] = 0x100000001;
      v9 = 1;
      *v97 = 0x100000000;
      v10 = 1;
      v11 = 1;
      v96 = 0x100000000;
      v12 = 1;
      *&v97[32] = 1;
      goto LABEL_132;
    }

    *&v97[32] = v34;
  }

  else
  {
    *&v97[32] = 0;
  }

  v63 = [(SFWatchListItem *)self addToUpNextText];
  v62 = [(SFWatchListItem *)v5 addToUpNextText];
  if ((v63 != 0) == (v62 == 0))
  {
    v102 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *&v97[24] = 0x100000001;
    *&v97[16] = 0x100000001;
    *&v97[8] = 0x100000001;
    v9 = 1;
    *v97 = 0x100000000;
    v10 = 1;
    v11 = 1;
    v12 = 1;
    v96 = 0x100000001;
    goto LABEL_132;
  }

  v36 = [(SFWatchListItem *)self addToUpNextText];
  HIDWORD(v102) = v36 != 0;
  v59 = v36;
  v47 = v5;
  if (v36)
  {
    v37 = [(SFWatchListItem *)self addToUpNextText];
    v55 = [(SFWatchListItem *)v5 addToUpNextText];
    v56 = v37;
    if (![v37 isEqual:?])
    {
      v13 = 0;
      v14 = 0;
      v102 = 0x100000000;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v97[24] = 0x100000001;
      *&v97[16] = 0x100000001;
      *&v97[8] = 0x100000001;
      v9 = 1;
      *v97 = 0x100000001;
      v10 = 1;
      v11 = 1;
      v96 = 0x100000001;
      v12 = 1;
LABEL_67:
      v5 = v47;
      goto LABEL_132;
    }
  }

  v58 = [(SFWatchListItem *)self addedToUpNextText];
  v57 = [(SFWatchListItem *)v5 addedToUpNextText];
  if ((v58 != 0) == (v57 == 0))
  {
    v14 = 0;
    LODWORD(v102) = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *&v97[24] = 0x100000001;
    *&v97[16] = 0x100000001;
    *&v97[8] = 0x100000001;
    v9 = 1;
    *v97 = 0x100000001;
    v10 = 1;
    v11 = 1;
    v96 = 0x100000001;
    v12 = 1;
    v13 = 1;
    goto LABEL_67;
  }

  v38 = [(SFWatchListItem *)self addedToUpNextText];
  LODWORD(v102) = v38 != 0;
  v54 = v38;
  if (v38)
  {
    v39 = [(SFWatchListItem *)self addedToUpNextText];
    v50 = [(SFWatchListItem *)v47 addedToUpNextText];
    v51 = v39;
    if (![v39 isEqual:?])
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v97[24] = 0x100000001;
      *&v97[16] = 0x100000001;
      *&v97[8] = 0x100000001;
      v9 = 1;
      *v97 = 0x100000001;
      v10 = 1;
      v11 = 1;
      v96 = 0x100000001;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      LODWORD(v102) = 1;
      goto LABEL_67;
    }
  }

  v53 = [(SFWatchListItem *)self watchLiveTextFormat];
  v52 = [(SFWatchListItem *)v47 watchLiveTextFormat];
  if ((v53 != 0) == (v52 == 0))
  {
    v16 = 0;
    v17 = 0;
    *&v97[24] = 0x100000001;
    *&v97[16] = 0x100000001;
    *&v97[8] = 0x100000001;
    v9 = 1;
    *v97 = 0x100000001;
    v10 = 1;
    v11 = 1;
    v96 = 0x100000001;
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    goto LABEL_67;
  }

  v40 = [(SFWatchListItem *)self watchLiveTextFormat];
  v94 = v40 != 0;
  v49 = v40;
  if (v40)
  {
    v41 = [(SFWatchListItem *)self watchLiveTextFormat];
    [(SFWatchListItem *)v47 watchLiveTextFormat];
    v46 = v48 = v41;
    if (![v41 isEqual:?])
    {
      v17 = 0;
      *&v97[24] = 0x100000001;
      *&v97[16] = 0x100000001;
      *&v97[8] = 0x100000001;
      v9 = 1;
      *v97 = 0x100000001;
      v10 = 1;
      v11 = 1;
      v96 = 0x100000001;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      v42 = 1;
LABEL_129:
      v5 = v47;
      goto LABEL_131;
    }
  }

  v44 = [(SFWatchListItem *)self isMediaContainer];
  if (v44 != [(SFWatchListItem *)v47 isMediaContainer])
  {
    v17 = 0;
    *&v97[24] = 0x100000001;
    *&v97[16] = 0x100000001;
    *&v97[8] = 0x100000001;
    v9 = 1;
    *v97 = 0x100000001;
    v10 = 1;
    v11 = 1;
    v96 = 0x100000001;
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    v42 = v94;
    goto LABEL_129;
  }

  v45 = [(SFWatchListItem *)self type];
  v5 = v47;
  v17 = v45 == [(SFWatchListItem *)v47 type];
  *&v97[24] = 0x100000001;
  *&v97[16] = 0x100000001;
  *&v97[8] = 0x100000001;
  v9 = 1;
  *v97 = 0x100000001;
  v10 = 1;
  v11 = 1;
  v96 = 0x100000001;
  v12 = 1;
  v13 = 1;
  v14 = 1;
  v15 = 1;
  v16 = 1;
  v42 = v94;
LABEL_131:
  if (v42)
  {

    v11 = 1;
    v9 = 1;
    v14 = 1;
    v12 = 1;
    v15 = 1;
    v10 = 1;
    v13 = 1;
    goto LABEL_133;
  }

LABEL_132:
  if (!v16)
  {
    if (!v15)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_133:

  if (v15)
  {
LABEL_70:
  }

LABEL_71:
  if (v102)
  {

    if (!v14)
    {
      goto LABEL_73;
    }
  }

  else if (!v14)
  {
LABEL_73:
    if (!v13)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v13)
  {
LABEL_74:
  }

LABEL_75:
  if (HIDWORD(v102))
  {
  }

  if (*v97)
  {
  }

  if (v96)
  {
  }

  if (*&v97[32])
  {
  }

  if (v12)
  {
  }

  if (HIDWORD(v96))
  {
  }

  if (*&v97[36])
  {

    if (!v11)
    {
      goto LABEL_89;
    }

LABEL_125:

    if (!v10)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if (v11)
  {
    goto LABEL_125;
  }

LABEL_89:
  if (v10)
  {
LABEL_90:
  }

LABEL_91:
  if (*&v97[40])
  {
  }

  if (*&v97[4])
  {
  }

  if (v9)
  {
  }

  if (*&v97[44])
  {
  }

  if (*&v97[12])
  {
  }

  if (*&v97[8])
  {
  }

  if (*&v97[48])
  {
  }

  if (*&v97[20])
  {
  }

  if (*&v97[16])
  {
  }

  if (*&v97[52])
  {
  }

  if (*&v97[24])
  {
  }

  if (*&v97[28])
  {
  }

  if (*&v97[56])
  {
  }

  if (v99 != v98)
  {
  }

LABEL_120:
  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFWatchListItem *)self watchListIdentifier];
  v6 = [v5 copy];
  [v4 setWatchListIdentifier:v6];

  v7 = [(SFWatchListItem *)self seasonEpisodeTextFormat];
  v8 = [v7 copy];
  [v4 setSeasonEpisodeTextFormat:v8];

  v9 = [(SFWatchListItem *)self continueInTextFormat];
  v10 = [v9 copy];
  [v4 setContinueInTextFormat:v10];

  v11 = [(SFWatchListItem *)self openButtonTitle];
  v12 = [v11 copy];
  [v4 setOpenButtonTitle:v12];

  v13 = [(SFWatchListItem *)self installButtonTitle];
  v14 = [v13 copy];
  [v4 setInstallButtonTitle:v14];

  v15 = [(SFWatchListItem *)self purchaseOfferTextFormat];
  v16 = [v15 copy];
  [v4 setPurchaseOfferTextFormat:v16];

  v17 = [(SFWatchListItem *)self inUpNextText];
  v18 = [v17 copy];
  [v4 setInUpNextText:v18];

  v19 = [(SFWatchListItem *)self addToUpNextText];
  v20 = [v19 copy];
  [v4 setAddToUpNextText:v20];

  v21 = [(SFWatchListItem *)self addedToUpNextText];
  v22 = [v21 copy];
  [v4 setAddedToUpNextText:v22];

  v23 = [(SFWatchListItem *)self watchLiveTextFormat];
  v24 = [v23 copy];
  [v4 setWatchLiveTextFormat:v24];

  [v4 setIsMediaContainer:{-[SFWatchListItem isMediaContainer](self, "isMediaContainer")}];
  [v4 setType:{-[SFWatchListItem type](self, "type")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBWatchListItem alloc] initWithFacade:self];
  v3 = [(_SFPBWatchListItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBWatchListItem alloc] initWithFacade:self];
  v3 = [(_SFPBWatchListItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBWatchListItem alloc] initWithFacade:self];
  v5 = [(_SFPBWatchListItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFWatchListItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBWatchListItem alloc] initWithData:v5];
  v7 = [(SFWatchListItem *)self initWithProtobuf:v6];

  return v7;
}

@end