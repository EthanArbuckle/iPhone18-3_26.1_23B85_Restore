@interface SFWatchListItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFWatchListItem)initWithCoder:(id)coder;
- (SFWatchListItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFWatchListItem

- (SFWatchListItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v28.receiver = self;
  v28.super_class = SFWatchListItem;
  v5 = [(SFWatchListItem *)&v28 init];
  if (v5)
  {
    watchListIdentifier = [protobufCopy watchListIdentifier];

    if (watchListIdentifier)
    {
      watchListIdentifier2 = [protobufCopy watchListIdentifier];
      [(SFWatchListItem *)v5 setWatchListIdentifier:watchListIdentifier2];
    }

    seasonEpisodeTextFormat = [protobufCopy seasonEpisodeTextFormat];

    if (seasonEpisodeTextFormat)
    {
      seasonEpisodeTextFormat2 = [protobufCopy seasonEpisodeTextFormat];
      [(SFWatchListItem *)v5 setSeasonEpisodeTextFormat:seasonEpisodeTextFormat2];
    }

    continueInTextFormat = [protobufCopy continueInTextFormat];

    if (continueInTextFormat)
    {
      continueInTextFormat2 = [protobufCopy continueInTextFormat];
      [(SFWatchListItem *)v5 setContinueInTextFormat:continueInTextFormat2];
    }

    openButtonTitle = [protobufCopy openButtonTitle];

    if (openButtonTitle)
    {
      openButtonTitle2 = [protobufCopy openButtonTitle];
      [(SFWatchListItem *)v5 setOpenButtonTitle:openButtonTitle2];
    }

    installButtonTitle = [protobufCopy installButtonTitle];

    if (installButtonTitle)
    {
      installButtonTitle2 = [protobufCopy installButtonTitle];
      [(SFWatchListItem *)v5 setInstallButtonTitle:installButtonTitle2];
    }

    purchaseOfferTextFormat = [protobufCopy purchaseOfferTextFormat];

    if (purchaseOfferTextFormat)
    {
      purchaseOfferTextFormat2 = [protobufCopy purchaseOfferTextFormat];
      [(SFWatchListItem *)v5 setPurchaseOfferTextFormat:purchaseOfferTextFormat2];
    }

    inUpNextText = [protobufCopy inUpNextText];

    if (inUpNextText)
    {
      inUpNextText2 = [protobufCopy inUpNextText];
      [(SFWatchListItem *)v5 setInUpNextText:inUpNextText2];
    }

    addToUpNextText = [protobufCopy addToUpNextText];

    if (addToUpNextText)
    {
      addToUpNextText2 = [protobufCopy addToUpNextText];
      [(SFWatchListItem *)v5 setAddToUpNextText:addToUpNextText2];
    }

    addedToUpNextText = [protobufCopy addedToUpNextText];

    if (addedToUpNextText)
    {
      addedToUpNextText2 = [protobufCopy addedToUpNextText];
      [(SFWatchListItem *)v5 setAddedToUpNextText:addedToUpNextText2];
    }

    watchLiveTextFormat = [protobufCopy watchLiveTextFormat];

    if (watchLiveTextFormat)
    {
      watchLiveTextFormat2 = [protobufCopy watchLiveTextFormat];
      [(SFWatchListItem *)v5 setWatchLiveTextFormat:watchLiveTextFormat2];
    }

    if ([protobufCopy isMediaContainer])
    {
      -[SFWatchListItem setIsMediaContainer:](v5, "setIsMediaContainer:", [protobufCopy isMediaContainer]);
    }

    if ([protobufCopy type])
    {
      -[SFWatchListItem setType:](v5, "setType:", [protobufCopy type]);
    }

    v26 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  watchListIdentifier = [(SFWatchListItem *)self watchListIdentifier];
  v3 = [watchListIdentifier hash];
  seasonEpisodeTextFormat = [(SFWatchListItem *)self seasonEpisodeTextFormat];
  v4 = [seasonEpisodeTextFormat hash] ^ v3;
  continueInTextFormat = [(SFWatchListItem *)self continueInTextFormat];
  v5 = [continueInTextFormat hash];
  openButtonTitle = [(SFWatchListItem *)self openButtonTitle];
  v7 = v4 ^ v5 ^ [openButtonTitle hash];
  installButtonTitle = [(SFWatchListItem *)self installButtonTitle];
  v9 = [installButtonTitle hash];
  purchaseOfferTextFormat = [(SFWatchListItem *)self purchaseOfferTextFormat];
  v11 = v9 ^ [purchaseOfferTextFormat hash];
  inUpNextText = [(SFWatchListItem *)self inUpNextText];
  v13 = v7 ^ v11 ^ [inUpNextText hash];
  addToUpNextText = [(SFWatchListItem *)self addToUpNextText];
  v15 = [addToUpNextText hash];
  addedToUpNextText = [(SFWatchListItem *)self addedToUpNextText];
  v17 = v15 ^ [addedToUpNextText hash];
  watchLiveTextFormat = [(SFWatchListItem *)self watchLiveTextFormat];
  v19 = v17 ^ [watchLiveTextFormat hash];
  v20 = v13 ^ v19 ^ [(SFWatchListItem *)self isMediaContainer];
  type = [(SFWatchListItem *)self type];

  return v20 ^ type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
    goto LABEL_120;
  }

  if (![(SFWatchListItem *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v17 = 0;
    goto LABEL_120;
  }

  v5 = equalCopy;
  watchListIdentifier = [(SFWatchListItem *)self watchListIdentifier];
  watchListIdentifier2 = [(SFWatchListItem *)v5 watchListIdentifier];
  v98 = watchListIdentifier2 == 0;
  v99 = watchListIdentifier != 0;
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

  watchListIdentifier3 = [(SFWatchListItem *)self watchListIdentifier];
  v7 = watchListIdentifier3 != 0;
  v95 = watchListIdentifier3;
  if (watchListIdentifier3)
  {
    watchListIdentifier4 = [(SFWatchListItem *)self watchListIdentifier];
    watchListIdentifier5 = [(SFWatchListItem *)v5 watchListIdentifier];
    v91 = watchListIdentifier4;
    if (![watchListIdentifier4 isEqual:?])
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

  seasonEpisodeTextFormat = [(SFWatchListItem *)self seasonEpisodeTextFormat];
  seasonEpisodeTextFormat2 = [(SFWatchListItem *)v5 seasonEpisodeTextFormat];
  *&v97[56] = v7;
  if ((seasonEpisodeTextFormat != 0) == (seasonEpisodeTextFormat2 == 0))
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

  seasonEpisodeTextFormat3 = [(SFWatchListItem *)self seasonEpisodeTextFormat];
  v19 = seasonEpisodeTextFormat3 != 0;
  v89 = seasonEpisodeTextFormat3;
  if (seasonEpisodeTextFormat3)
  {
    seasonEpisodeTextFormat4 = [(SFWatchListItem *)self seasonEpisodeTextFormat];
    seasonEpisodeTextFormat5 = [(SFWatchListItem *)v5 seasonEpisodeTextFormat];
    v86 = seasonEpisodeTextFormat4;
    if (![seasonEpisodeTextFormat4 isEqual:?])
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

  continueInTextFormat = [(SFWatchListItem *)self continueInTextFormat];
  continueInTextFormat2 = [(SFWatchListItem *)v5 continueInTextFormat];
  if ((continueInTextFormat != 0) == (continueInTextFormat2 == 0))
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

  continueInTextFormat3 = [(SFWatchListItem *)self continueInTextFormat];
  v22 = continueInTextFormat3 != 0;
  v84 = continueInTextFormat3;
  if (continueInTextFormat3)
  {
    continueInTextFormat4 = [(SFWatchListItem *)self continueInTextFormat];
    continueInTextFormat5 = [(SFWatchListItem *)v5 continueInTextFormat];
    v81 = continueInTextFormat4;
    if (![continueInTextFormat4 isEqual:?])
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

  openButtonTitle = [(SFWatchListItem *)self openButtonTitle];
  openButtonTitle2 = [(SFWatchListItem *)v5 openButtonTitle];
  if ((openButtonTitle != 0) == (openButtonTitle2 == 0))
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

  openButtonTitle3 = [(SFWatchListItem *)self openButtonTitle];
  v25 = openButtonTitle3 != 0;
  v79 = openButtonTitle3;
  if (openButtonTitle3)
  {
    openButtonTitle4 = [(SFWatchListItem *)self openButtonTitle];
    openButtonTitle5 = [(SFWatchListItem *)v5 openButtonTitle];
    v76 = openButtonTitle4;
    if (![openButtonTitle4 isEqual:?])
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

  installButtonTitle = [(SFWatchListItem *)self installButtonTitle];
  installButtonTitle2 = [(SFWatchListItem *)v5 installButtonTitle];
  if ((installButtonTitle != 0) == (installButtonTitle2 == 0))
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

  installButtonTitle3 = [(SFWatchListItem *)self installButtonTitle];
  v28 = installButtonTitle3 != 0;
  v74 = installButtonTitle3;
  if (installButtonTitle3)
  {
    installButtonTitle4 = [(SFWatchListItem *)self installButtonTitle];
    installButtonTitle5 = [(SFWatchListItem *)v5 installButtonTitle];
    v71 = installButtonTitle4;
    if (![installButtonTitle4 isEqual:?])
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

  purchaseOfferTextFormat = [(SFWatchListItem *)self purchaseOfferTextFormat];
  purchaseOfferTextFormat2 = [(SFWatchListItem *)v5 purchaseOfferTextFormat];
  if ((purchaseOfferTextFormat != 0) == (purchaseOfferTextFormat2 == 0))
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

  purchaseOfferTextFormat3 = [(SFWatchListItem *)self purchaseOfferTextFormat];
  v31 = purchaseOfferTextFormat3 != 0;
  v69 = purchaseOfferTextFormat3;
  if (purchaseOfferTextFormat3)
  {
    purchaseOfferTextFormat4 = [(SFWatchListItem *)self purchaseOfferTextFormat];
    purchaseOfferTextFormat5 = [(SFWatchListItem *)v5 purchaseOfferTextFormat];
    v66 = purchaseOfferTextFormat4;
    if (![purchaseOfferTextFormat4 isEqual:?])
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

  inUpNextText = [(SFWatchListItem *)self inUpNextText];
  inUpNextText2 = [(SFWatchListItem *)v5 inUpNextText];
  if ((inUpNextText != 0) == (inUpNextText2 == 0))
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

  inUpNextText3 = [(SFWatchListItem *)self inUpNextText];
  v34 = inUpNextText3 != 0;
  v64 = inUpNextText3;
  if (inUpNextText3)
  {
    inUpNextText4 = [(SFWatchListItem *)self inUpNextText];
    inUpNextText5 = [(SFWatchListItem *)v5 inUpNextText];
    v61 = inUpNextText4;
    if (![inUpNextText4 isEqual:?])
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

  addToUpNextText = [(SFWatchListItem *)self addToUpNextText];
  addToUpNextText2 = [(SFWatchListItem *)v5 addToUpNextText];
  if ((addToUpNextText != 0) == (addToUpNextText2 == 0))
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

  addToUpNextText3 = [(SFWatchListItem *)self addToUpNextText];
  HIDWORD(v102) = addToUpNextText3 != 0;
  v59 = addToUpNextText3;
  v47 = v5;
  if (addToUpNextText3)
  {
    addToUpNextText4 = [(SFWatchListItem *)self addToUpNextText];
    addToUpNextText5 = [(SFWatchListItem *)v5 addToUpNextText];
    v56 = addToUpNextText4;
    if (![addToUpNextText4 isEqual:?])
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

  addedToUpNextText = [(SFWatchListItem *)self addedToUpNextText];
  addedToUpNextText2 = [(SFWatchListItem *)v5 addedToUpNextText];
  if ((addedToUpNextText != 0) == (addedToUpNextText2 == 0))
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

  addedToUpNextText3 = [(SFWatchListItem *)self addedToUpNextText];
  LODWORD(v102) = addedToUpNextText3 != 0;
  v54 = addedToUpNextText3;
  if (addedToUpNextText3)
  {
    addedToUpNextText4 = [(SFWatchListItem *)self addedToUpNextText];
    addedToUpNextText5 = [(SFWatchListItem *)v47 addedToUpNextText];
    v51 = addedToUpNextText4;
    if (![addedToUpNextText4 isEqual:?])
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

  watchLiveTextFormat = [(SFWatchListItem *)self watchLiveTextFormat];
  watchLiveTextFormat2 = [(SFWatchListItem *)v47 watchLiveTextFormat];
  if ((watchLiveTextFormat != 0) == (watchLiveTextFormat2 == 0))
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

  watchLiveTextFormat3 = [(SFWatchListItem *)self watchLiveTextFormat];
  v94 = watchLiveTextFormat3 != 0;
  v49 = watchLiveTextFormat3;
  if (watchLiveTextFormat3)
  {
    watchLiveTextFormat4 = [(SFWatchListItem *)self watchLiveTextFormat];
    [(SFWatchListItem *)v47 watchLiveTextFormat];
    v46 = v48 = watchLiveTextFormat4;
    if (![watchLiveTextFormat4 isEqual:?])
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

  isMediaContainer = [(SFWatchListItem *)self isMediaContainer];
  if (isMediaContainer != [(SFWatchListItem *)v47 isMediaContainer])
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

  type = [(SFWatchListItem *)self type];
  v5 = v47;
  v17 = type == [(SFWatchListItem *)v47 type];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  watchListIdentifier = [(SFWatchListItem *)self watchListIdentifier];
  v6 = [watchListIdentifier copy];
  [v4 setWatchListIdentifier:v6];

  seasonEpisodeTextFormat = [(SFWatchListItem *)self seasonEpisodeTextFormat];
  v8 = [seasonEpisodeTextFormat copy];
  [v4 setSeasonEpisodeTextFormat:v8];

  continueInTextFormat = [(SFWatchListItem *)self continueInTextFormat];
  v10 = [continueInTextFormat copy];
  [v4 setContinueInTextFormat:v10];

  openButtonTitle = [(SFWatchListItem *)self openButtonTitle];
  v12 = [openButtonTitle copy];
  [v4 setOpenButtonTitle:v12];

  installButtonTitle = [(SFWatchListItem *)self installButtonTitle];
  v14 = [installButtonTitle copy];
  [v4 setInstallButtonTitle:v14];

  purchaseOfferTextFormat = [(SFWatchListItem *)self purchaseOfferTextFormat];
  v16 = [purchaseOfferTextFormat copy];
  [v4 setPurchaseOfferTextFormat:v16];

  inUpNextText = [(SFWatchListItem *)self inUpNextText];
  v18 = [inUpNextText copy];
  [v4 setInUpNextText:v18];

  addToUpNextText = [(SFWatchListItem *)self addToUpNextText];
  v20 = [addToUpNextText copy];
  [v4 setAddToUpNextText:v20];

  addedToUpNextText = [(SFWatchListItem *)self addedToUpNextText];
  v22 = [addedToUpNextText copy];
  [v4 setAddedToUpNextText:v22];

  watchLiveTextFormat = [(SFWatchListItem *)self watchLiveTextFormat];
  v24 = [watchLiveTextFormat copy];
  [v4 setWatchLiveTextFormat:v24];

  [v4 setIsMediaContainer:{-[SFWatchListItem isMediaContainer](self, "isMediaContainer")}];
  [v4 setType:{-[SFWatchListItem type](self, "type")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBWatchListItem alloc] initWithFacade:self];
  jsonData = [(_SFPBWatchListItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBWatchListItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBWatchListItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBWatchListItem alloc] initWithFacade:self];
  data = [(_SFPBWatchListItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFWatchListItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBWatchListItem alloc] initWithData:v5];
  v7 = [(SFWatchListItem *)self initWithProtobuf:v6];

  return v7;
}

@end