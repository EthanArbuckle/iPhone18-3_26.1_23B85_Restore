@interface SFMediaInfoCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaInfoCardSection)initWithCoder:(id)coder;
- (SFMediaInfoCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMediaInfoCardSection

- (SFMediaInfoCardSection)initWithProtobuf:(id)protobuf
{
  v80 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v76.receiver = self;
  v76.super_class = SFMediaInfoCardSection;
  v5 = [(SFCardSection *)&v76 init];
  if (v5)
  {
    punchoutOptions = [protobufCopy punchoutOptions];
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
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v72 objects:v79 count:16];
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

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v72 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v10);
    }

    [(SFCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [protobufCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [protobufCopy punchoutPickerTitle];
      [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [protobufCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [protobufCopy punchoutPickerDismissText];
      [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([protobufCopy canBeHidden])
    {
      -[SFCardSection setCanBeHidden:](v5, "setCanBeHidden:", [protobufCopy canBeHidden]);
    }

    if ([protobufCopy hasTopPadding])
    {
      -[SFCardSection setHasTopPadding:](v5, "setHasTopPadding:", [protobufCopy hasTopPadding]);
    }

    if ([protobufCopy hasBottomPadding])
    {
      -[SFCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [protobufCopy hasBottomPadding]);
    }

    type = [protobufCopy type];

    if (type)
    {
      type2 = [protobufCopy type];
      [(SFMediaInfoCardSection *)v5 setType:type2];
    }

    if ([protobufCopy separatorStyle])
    {
      -[SFCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [protobufCopy separatorStyle]);
    }

    backgroundColor = [protobufCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [SFColor alloc];
      backgroundColor2 = [protobufCopy backgroundColor];
      v23 = [(SFColor *)v21 initWithProtobuf:backgroundColor2];
      [(SFCardSection *)v5 setBackgroundColor:v23];
    }

    mediaItem = [protobufCopy mediaItem];

    if (mediaItem)
    {
      v25 = [SFMediaItem alloc];
      mediaItem2 = [protobufCopy mediaItem];
      v27 = [(SFMediaItem *)v25 initWithProtobuf:mediaItem2];
      [(SFMediaInfoCardSection *)v5 setMediaItem:v27];
    }

    details = [protobufCopy details];
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
    details2 = [protobufCopy details];
    v31 = [details2 countByEnumeratingWithState:&v68 objects:v78 count:16];
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

          v35 = [[SFMediaDetail alloc] initWithProtobuf:*(*(&v68 + 1) + 8 * j)];
          if (v35)
          {
            [v29 addObject:v35];
          }
        }

        v32 = [details2 countByEnumeratingWithState:&v68 objects:v78 count:16];
      }

      while (v32);
    }

    [(SFMediaInfoCardSection *)v5 setDetails:v29];
    playAction = [protobufCopy playAction];

    if (playAction)
    {
      v37 = [SFActionItem alloc];
      playAction2 = [protobufCopy playAction];
      v39 = [(SFActionItem *)v37 initWithProtobuf:playAction2];
      [(SFMediaInfoCardSection *)v5 setPlayAction:v39];
    }

    offers = [protobufCopy offers];
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
    offers2 = [protobufCopy offers];
    v43 = [offers2 countByEnumeratingWithState:&v64 objects:v77 count:16];
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

          v47 = [[SFMediaOffer alloc] initWithProtobuf:*(*(&v64 + 1) + 8 * k)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [offers2 countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v44);
    }

    v5 = v63;
    [(SFMediaInfoCardSection *)v63 setOffers:v41];
    watchListIdentifier = [protobufCopy watchListIdentifier];

    if (watchListIdentifier)
    {
      watchListIdentifier2 = [protobufCopy watchListIdentifier];
      [(SFMediaInfoCardSection *)v63 setWatchListIdentifier:watchListIdentifier2];
    }

    watchListButtonLabel = [protobufCopy watchListButtonLabel];

    if (watchListButtonLabel)
    {
      watchListButtonLabel2 = [protobufCopy watchListButtonLabel];
      [(SFMediaInfoCardSection *)v63 setWatchListButtonLabel:watchListButtonLabel2];
    }

    watchListContinuationText = [protobufCopy watchListContinuationText];

    if (watchListContinuationText)
    {
      watchListContinuationText2 = [protobufCopy watchListContinuationText];
      [(SFMediaInfoCardSection *)v63 setWatchListContinuationText:watchListContinuationText2];
    }

    watchListConfirmationText = [protobufCopy watchListConfirmationText];

    if (watchListConfirmationText)
    {
      watchListConfirmationText2 = [protobufCopy watchListConfirmationText];
      [(SFMediaInfoCardSection *)v63 setWatchListConfirmationText:watchListConfirmationText2];
    }

    if ([protobufCopy isMediaContainer])
    {
      -[SFMediaInfoCardSection setIsMediaContainer:](v63, "setIsMediaContainer:", [protobufCopy isMediaContainer]);
    }

    specialOfferButtonLabel = [protobufCopy specialOfferButtonLabel];

    if (specialOfferButtonLabel)
    {
      v57 = [SFRichText alloc];
      specialOfferButtonLabel2 = [protobufCopy specialOfferButtonLabel];
      v59 = [(SFRichText *)v57 initWithProtobuf:specialOfferButtonLabel2];
      [(SFMediaInfoCardSection *)v63 setSpecialOfferButtonLabel:v59];
    }

    if ([protobufCopy watchListItemType])
    {
      -[SFMediaInfoCardSection setWatchListItemType:](v63, "setWatchListItemType:", [protobufCopy watchListItemType]);
    }

    v60 = v63;
  }

  v61 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v39.receiver = self;
  v39.super_class = SFMediaInfoCardSection;
  v3 = [(SFCardSection *)&v39 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [punchoutPickerDismissText hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFMediaInfoCardSection *)self type];
  v10 = hasBottomPadding ^ [type hash];
  v11 = v10 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v12 = v11 ^ [backgroundColor hash];
  mediaItem = [(SFMediaInfoCardSection *)self mediaItem];
  v13 = v8 ^ v12 ^ [mediaItem hash];
  details = [(SFMediaInfoCardSection *)self details];
  v15 = [details hash];
  playAction = [(SFMediaInfoCardSection *)self playAction];
  v17 = v15 ^ [playAction hash];
  offers = [(SFMediaInfoCardSection *)self offers];
  v19 = v17 ^ [offers hash];
  watchListIdentifier = [(SFMediaInfoCardSection *)self watchListIdentifier];
  v21 = v19 ^ [watchListIdentifier hash];
  watchListButtonLabel = [(SFMediaInfoCardSection *)self watchListButtonLabel];
  v23 = v21 ^ [watchListButtonLabel hash];
  watchListContinuationText = [(SFMediaInfoCardSection *)self watchListContinuationText];
  v25 = v23 ^ [watchListContinuationText hash];
  watchListConfirmationText = [(SFMediaInfoCardSection *)self watchListConfirmationText];
  v32 = v13 ^ v25 ^ [watchListConfirmationText hash];
  isMediaContainer = [(SFMediaInfoCardSection *)self isMediaContainer];
  specialOfferButtonLabel = [(SFMediaInfoCardSection *)self specialOfferButtonLabel];
  v29 = isMediaContainer ^ [specialOfferButtonLabel hash];
  v30 = v29 ^ [(SFMediaInfoCardSection *)self watchListItemType];

  return v32 ^ v30;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_97;
  }

  if (![(SFMediaInfoCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v148.receiver = self, v148.super_class = SFMediaInfoCardSection, ![(SFCardSection *)&v148 isEqual:equalCopy]))
  {
    v19 = 0;
    goto LABEL_97;
  }

  v5 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
  v143 = punchoutOptions2 == 0;
  v144 = punchoutOptions != 0;
  if (v144 == v143)
  {
    v142 = 0uLL;
    memset(v141, 0, sizeof(v141));
    v10 = 0;
    v139 = 0;
    v140 = 0uLL;
    v11 = 0;
    memset(v138, 0, sizeof(v138));
    v12 = 0;
    v13 = 0;
    memset(v137, 0, sizeof(v137));
    v14 = 0;
    v15 = 0;
    memset(v147, 0, sizeof(v147));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
  v8 = punchoutOptions3 != 0;
  v136 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v130 = v131 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
    {
      *(&v142 + 4) = 0;
      memset(v141, 0, sizeof(v141));
      v10 = 0;
      LODWORD(v142) = 0;
      v139 = 0;
      v140 = 0uLL;
      v11 = 0;
      memset(v138, 0, sizeof(v138));
      v12 = 0;
      v13 = 0;
      memset(v137, 0, sizeof(v137));
      v14 = 0;
      v15 = 0;
      memset(v147, 0, sizeof(v147));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      HIDWORD(v142) = 1;
      goto LABEL_16;
    }
  }

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v142) = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
  {
    *(&v142 + 4) = 0;
    memset(v141, 0, 20);
    v10 = 0;
    LODWORD(v142) = 0;
    v139 = 0;
    v140 = 0uLL;
    v11 = 0;
    memset(v138, 0, sizeof(v138));
    v12 = 0;
    v13 = 0;
    memset(v137, 0, sizeof(v137));
    v14 = 0;
    v15 = 0;
    memset(v147, 0, sizeof(v147));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    HIDWORD(v141[2]) = 1;
    goto LABEL_16;
  }

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = punchoutPickerTitle3 != 0;
  v129 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle5 = [(SFCardSection *)v5 punchoutPickerTitle];
    v126 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
    {
      v141[0] = 0;
      v141[1] = 0;
      v10 = 0;
      *&v142 = 0;
      v140 = 0uLL;
      v11 = 0;
      memset(v138, 0, sizeof(v138));
      v12 = 0;
      v13 = 0;
      memset(v137, 0, sizeof(v137));
      v139 = 0;
      v14 = 0;
      v15 = 0;
      memset(v147, 0, sizeof(v147));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v141[2] = 0x100000001;
      DWORD2(v142) = 1;
      goto LABEL_16;
    }

    DWORD2(v142) = v21;
  }

  else
  {
    DWORD2(v142) = 0;
  }

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
  {
    v10 = 0;
    *&v142 = 0;
    *(v141 + 4) = 0;
    v140 = 0uLL;
    HIDWORD(v141[1]) = 0;
    v11 = 0;
    memset(v138, 0, sizeof(v138));
    v12 = 0;
    v13 = 0;
    memset(v137, 0, sizeof(v137));
    v139 = 0;
    v14 = 0;
    v15 = 0;
    memset(v147, 0, sizeof(v147));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v141[2] = 0x100000001;
    LODWORD(v141[0]) = 1;
  }

  else
  {
    punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = punchoutPickerDismissText3 != 0;
    v124 = punchoutPickerDismissText3;
    if (!punchoutPickerDismissText3 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v122 = objc_claimAutoreleasedReturnValue(), v123 = v37, [v37 isEqual:?]))
    {
      canBeHidden = [(SFCardSection *)self canBeHidden];
      DWORD1(v142) = v36;
      if (canBeHidden == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        type = [(SFMediaInfoCardSection *)self type];
        type2 = [(SFMediaInfoCardSection *)v5 type];
        if ((type != 0) == (type2 == 0))
        {
          LODWORD(v142) = 0;
          v140 = 0uLL;
          v11 = 0;
          memset(v138, 0, sizeof(v138));
          v12 = 0;
          v13 = 0;
          memset(v137, 0, sizeof(v137));
          v139 = 0;
          v14 = 0;
          v15 = 0;
          memset(v147, 0, sizeof(v147));
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v141[2] = 0x100000001;
          v141[0] = 1;
          v10 = 1;
          v141[1] = 1;
        }

        else
        {
          type3 = [(SFMediaInfoCardSection *)self type];
          v42 = type3 != 0;
          v119 = type3;
          if (!type3 || (-[SFMediaInfoCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection type](v5, "type"), v117 = objc_claimAutoreleasedReturnValue(), v118 = v43, [v43 isEqual:?]))
          {
            LODWORD(v142) = v42;
            separatorStyle = [(SFCardSection *)self separatorStyle];
            if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
            {
              backgroundColor = [(SFCardSection *)self backgroundColor];
              backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
              if ((backgroundColor != 0) == (backgroundColor2 == 0))
              {
                v139 = 0;
                *&v140 = 0;
                *(&v140 + 1) = 0x100000000;
                v11 = 0;
                memset(v138, 0, sizeof(v138));
                v12 = 0;
                v13 = 0;
                memset(v137, 0, sizeof(v137));
                v14 = 0;
                v15 = 0;
                memset(v147, 0, sizeof(v147));
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v141[2] = 0x100000001;
                v141[0] = 0x100000001;
                v10 = 1;
                v141[1] = 1;
              }

              else
              {
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                *&v147[32] = backgroundColor3 != 0;
                v114 = backgroundColor3;
                if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v110 = objc_claimAutoreleasedReturnValue(), v111 = v46, [v46 isEqual:?]))
                {
                  mediaItem = [(SFMediaInfoCardSection *)self mediaItem];
                  mediaItem2 = [(SFMediaInfoCardSection *)v5 mediaItem];
                  if ((mediaItem != 0) == (mediaItem2 == 0))
                  {
                    *(&v140 + 4) = 0;
                    v11 = 0;
                    memset(v138, 0, sizeof(v138));
                    v12 = 0;
                    v13 = 0;
                    memset(v137, 0, sizeof(v137));
                    v139 = 0;
                    v14 = 0;
                    memset(v147, 0, 32);
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v141[2] = 0x100000001;
                    v141[0] = 0x100000001;
                    v10 = 1;
                    v141[1] = 0x100000001;
                    HIDWORD(v140) = 1;
                    LODWORD(v140) = 1;
                  }

                  else
                  {
                    mediaItem3 = [(SFMediaInfoCardSection *)self mediaItem];
                    *&v147[28] = mediaItem3 != 0;
                    v109 = mediaItem3;
                    if (!mediaItem3 || (-[SFMediaInfoCardSection mediaItem](self, "mediaItem"), v48 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection mediaItem](v5, "mediaItem"), v105 = objc_claimAutoreleasedReturnValue(), v106 = v48, [v48 isEqual:?]))
                    {
                      details = [(SFMediaInfoCardSection *)self details];
                      details2 = [(SFMediaInfoCardSection *)v5 details];
                      if ((details != 0) == (details2 == 0))
                      {
                        memset(v138, 0, sizeof(v138));
                        v12 = 0;
                        v13 = 0;
                        memset(v137, 0, sizeof(v137));
                        v139 = 0;
                        v14 = 0;
                        v15 = 0;
                        memset(v147, 0, 28);
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        v141[2] = 0x100000001;
                        v141[0] = 0x100000001;
                        v10 = 1;
                        v141[1] = 0x100000001;
                        *(&v140 + 1) = 0x100000001;
                        *&v140 = 1;
                        v11 = 1;
                      }

                      else
                      {
                        details3 = [(SFMediaInfoCardSection *)self details];
                        *&v147[24] = details3 != 0;
                        v104 = details3;
                        if (!details3 || (-[SFMediaInfoCardSection details](self, "details"), v50 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection details](v5, "details"), v100 = objc_claimAutoreleasedReturnValue(), v101 = v50, [v50 isEqual:?]))
                        {
                          playAction = [(SFMediaInfoCardSection *)self playAction];
                          playAction2 = [(SFMediaInfoCardSection *)v5 playAction];
                          if ((playAction != 0) == (playAction2 == 0))
                          {
                            v12 = 0;
                            v13 = 0;
                            memset(v137, 0, sizeof(v137));
                            v139 = 0;
                            *v138 = 0;
                            v14 = 0;
                            memset(v147, 0, 24);
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            v141[2] = 0x100000001;
                            v141[0] = 0x100000001;
                            v10 = 1;
                            v141[1] = 0x100000001;
                            *(&v140 + 1) = 0x100000001;
                            *&v140 = 0x100000001;
                            v11 = 1;
                            *&v138[4] = 1;
                          }

                          else
                          {
                            playAction3 = [(SFMediaInfoCardSection *)self playAction];
                            *&v147[20] = playAction3 != 0;
                            v99 = playAction3;
                            if (!playAction3 || (-[SFMediaInfoCardSection playAction](self, "playAction"), v52 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection playAction](v5, "playAction"), v95 = objc_claimAutoreleasedReturnValue(), v96 = v52, [v52 isEqual:?]))
                            {
                              offers = [(SFMediaInfoCardSection *)self offers];
                              offers2 = [(SFMediaInfoCardSection *)v5 offers];
                              if ((offers != 0) == (offers2 == 0))
                              {
                                v13 = 0;
                                *v137 = 0;
                                v139 = 0;
                                *v138 = 0x100000000;
                                v14 = 0;
                                v15 = 0;
                                memset(v147, 0, 20);
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                v141[2] = 0x100000001;
                                v141[0] = 0x100000001;
                                v10 = 1;
                                v141[1] = 0x100000001;
                                *(&v140 + 1) = 0x100000001;
                                *&v140 = 0x100000001;
                                v11 = 1;
                                *&v138[8] = 0;
                                v12 = 1;
                                *&v137[8] = 1;
                              }

                              else
                              {
                                offers3 = [(SFMediaInfoCardSection *)self offers];
                                *&v147[16] = offers3 != 0;
                                v94 = offers3;
                                if (!offers3 || (-[SFMediaInfoCardSection offers](self, "offers"), v54 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection offers](v5, "offers"), v90 = objc_claimAutoreleasedReturnValue(), v91 = v54, [v54 isEqual:?]))
                                {
                                  watchListIdentifier = [(SFMediaInfoCardSection *)self watchListIdentifier];
                                  watchListIdentifier2 = [(SFMediaInfoCardSection *)v5 watchListIdentifier];
                                  if ((watchListIdentifier != 0) == (watchListIdentifier2 == 0))
                                  {
                                    v139 = 0;
                                    *&v147[8] = 0;
                                    *v138 = 0x100000000;
                                    v14 = 0;
                                    *v147 = 0;
                                    v15 = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    v141[2] = 0x100000001;
                                    v141[0] = 0x100000001;
                                    v10 = 1;
                                    v141[1] = 0x100000001;
                                    *(&v140 + 1) = 0x100000001;
                                    *&v140 = 0x100000001;
                                    v11 = 1;
                                    *&v138[8] = 0;
                                    v12 = 1;
                                    *&v137[8] = 1;
                                    v13 = 1;
                                    *v137 = 1;
                                  }

                                  else
                                  {
                                    watchListIdentifier3 = [(SFMediaInfoCardSection *)self watchListIdentifier];
                                    *&v147[12] = watchListIdentifier3 != 0;
                                    v89 = watchListIdentifier3;
                                    if (!watchListIdentifier3 || (-[SFMediaInfoCardSection watchListIdentifier](self, "watchListIdentifier"), v56 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection watchListIdentifier](v5, "watchListIdentifier"), v85 = objc_claimAutoreleasedReturnValue(), v86 = v56, [v56 isEqual:?]))
                                    {
                                      watchListButtonLabel = [(SFMediaInfoCardSection *)self watchListButtonLabel];
                                      watchListButtonLabel2 = [(SFMediaInfoCardSection *)v5 watchListButtonLabel];
                                      if ((watchListButtonLabel != 0) == (watchListButtonLabel2 == 0))
                                      {
                                        *&v147[4] = 0;
                                        *v138 = 0x100000000;
                                        v14 = 0;
                                        v15 = 0;
                                        *v147 = 0;
                                        v16 = 0;
                                        v17 = 0;
                                        v18 = 0;
                                        v19 = 0;
                                        v141[2] = 0x100000001;
                                        v141[0] = 0x100000001;
                                        v10 = 1;
                                        v141[1] = 0x100000001;
                                        *(&v140 + 1) = 0x100000001;
                                        *&v140 = 0x100000001;
                                        v11 = 1;
                                        *&v138[8] = 0;
                                        v12 = 1;
                                        *&v137[8] = 1;
                                        v13 = 1;
                                        *v137 = 0x100000001;
                                        v139 = 1;
                                      }

                                      else
                                      {
                                        watchListButtonLabel3 = [(SFMediaInfoCardSection *)self watchListButtonLabel];
                                        *&v147[8] = watchListButtonLabel3 != 0;
                                        v84 = watchListButtonLabel3;
                                        if (!watchListButtonLabel3 || (-[SFMediaInfoCardSection watchListButtonLabel](self, "watchListButtonLabel"), v58 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection watchListButtonLabel](v5, "watchListButtonLabel"), v80 = objc_claimAutoreleasedReturnValue(), v81 = v58, [v58 isEqual:?]))
                                        {
                                          watchListContinuationText = [(SFMediaInfoCardSection *)self watchListContinuationText];
                                          watchListContinuationText2 = [(SFMediaInfoCardSection *)v5 watchListContinuationText];
                                          if ((watchListContinuationText != 0) == (watchListContinuationText2 == 0))
                                          {
                                            v14 = 0;
                                            *v147 = 0;
                                            v15 = 0;
                                            v16 = 0;
                                            v17 = 0;
                                            v18 = 0;
                                            v19 = 0;
                                            v141[2] = 0x100000001;
                                            v141[0] = 0x100000001;
                                            v10 = 1;
                                            v141[1] = 0x100000001;
                                            *(&v140 + 1) = 0x100000001;
                                            *&v140 = 0x100000001;
                                            v11 = 1;
                                            *&v138[8] = 0;
                                            v12 = 1;
                                            *&v137[8] = 1;
                                            v13 = 1;
                                            *v137 = 0x100000001;
                                            v139 = 0x100000001;
                                            *v138 = 0x100000001;
                                          }

                                          else
                                          {
                                            watchListContinuationText3 = [(SFMediaInfoCardSection *)self watchListContinuationText];
                                            *&v147[4] = watchListContinuationText3 != 0;
                                            v79 = watchListContinuationText3;
                                            if (!watchListContinuationText3 || (-[SFMediaInfoCardSection watchListContinuationText](self, "watchListContinuationText"), v60 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection watchListContinuationText](v5, "watchListContinuationText"), v75 = objc_claimAutoreleasedReturnValue(), v76 = v60, [v60 isEqual:?]))
                                            {
                                              watchListConfirmationText = [(SFMediaInfoCardSection *)self watchListConfirmationText];
                                              watchListConfirmationText2 = [(SFMediaInfoCardSection *)v5 watchListConfirmationText];
                                              if ((watchListConfirmationText != 0) == (watchListConfirmationText2 == 0))
                                              {
                                                v15 = 0;
                                                *v147 = 0;
                                                v16 = 0;
                                                v17 = 0;
                                                v18 = 0;
                                                v19 = 0;
                                                v141[2] = 0x100000001;
                                                v141[0] = 0x100000001;
                                                v10 = 1;
                                                v141[1] = 0x100000001;
                                                *(&v140 + 1) = 0x100000001;
                                                *&v140 = 0x100000001;
                                                v11 = 1;
                                                *v138 = 0x100000001;
                                                v12 = 1;
                                                *&v137[8] = 1;
                                                v13 = 1;
                                                *v137 = 0x100000001;
                                                v139 = 0x100000001;
                                                v14 = 1;
                                                *&v138[8] = 1;
                                              }

                                              else
                                              {
                                                watchListConfirmationText3 = [(SFMediaInfoCardSection *)self watchListConfirmationText];
                                                *v147 = watchListConfirmationText3 != 0;
                                                v74 = watchListConfirmationText3;
                                                if (!watchListConfirmationText3 || (-[SFMediaInfoCardSection watchListConfirmationText](self, "watchListConfirmationText"), v62 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection watchListConfirmationText](v5, "watchListConfirmationText"), v72 = objc_claimAutoreleasedReturnValue(), v73 = v62, [v62 isEqual:?]))
                                                {
                                                  isMediaContainer = [(SFMediaInfoCardSection *)self isMediaContainer];
                                                  if (isMediaContainer == [(SFMediaInfoCardSection *)v5 isMediaContainer])
                                                  {
                                                    specialOfferButtonLabel = [(SFMediaInfoCardSection *)self specialOfferButtonLabel];
                                                    specialOfferButtonLabel2 = [(SFMediaInfoCardSection *)v5 specialOfferButtonLabel];
                                                    if ((specialOfferButtonLabel != 0) == (specialOfferButtonLabel2 == 0))
                                                    {
                                                      v17 = 0;
                                                      v18 = 0;
                                                      v19 = 0;
                                                      v141[2] = 0x100000001;
                                                      v141[0] = 0x100000001;
                                                      v10 = 1;
                                                      v141[1] = 0x100000001;
                                                      *(&v140 + 1) = 0x100000001;
                                                      *&v140 = 0x100000001;
                                                      v11 = 1;
                                                      *v138 = 0x100000001;
                                                      v12 = 1;
                                                      *&v137[8] = 1;
                                                      v13 = 1;
                                                      *v137 = 0x100000001;
                                                      v139 = 0x100000001;
                                                      v14 = 1;
                                                      *&v138[8] = 1;
                                                      v15 = 1;
                                                      v16 = 1;
                                                    }

                                                    else
                                                    {
                                                      specialOfferButtonLabel3 = [(SFMediaInfoCardSection *)self specialOfferButtonLabel];
                                                      v135 = specialOfferButtonLabel3 != 0;
                                                      v68 = specialOfferButtonLabel3;
                                                      if (!specialOfferButtonLabel3 || (-[SFMediaInfoCardSection specialOfferButtonLabel](self, "specialOfferButtonLabel"), v65 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection specialOfferButtonLabel](v5, "specialOfferButtonLabel"), v69 = v65, v67 = objc_claimAutoreleasedReturnValue(), [v65 isEqual:?]))
                                                      {
                                                        watchListItemType = [(SFMediaInfoCardSection *)self watchListItemType];
                                                        v19 = watchListItemType == [(SFMediaInfoCardSection *)v5 watchListItemType];
                                                        v141[2] = 0x100000001;
                                                        v141[0] = 0x100000001;
                                                        v10 = 1;
                                                        v141[1] = 0x100000001;
                                                        *(&v140 + 1) = 0x100000001;
                                                        *&v140 = 0x100000001;
                                                        v11 = 1;
                                                        *v138 = 0x100000001;
                                                        v12 = 1;
                                                        *&v137[8] = 1;
                                                        v13 = 1;
                                                        *v137 = 0x100000001;
                                                        v139 = 0x100000001;
                                                        v14 = 1;
                                                        *&v138[8] = 1;
                                                        v15 = 1;
                                                        v16 = 1;
                                                        v17 = 1;
                                                        v18 = v135;
                                                      }

                                                      else
                                                      {
                                                        v19 = 0;
                                                        v141[2] = 0x100000001;
                                                        v141[0] = 0x100000001;
                                                        v10 = 1;
                                                        v141[1] = 0x100000001;
                                                        *(&v140 + 1) = 0x100000001;
                                                        *&v140 = 0x100000001;
                                                        v11 = 1;
                                                        *v138 = 0x100000001;
                                                        v12 = 1;
                                                        *&v137[8] = 1;
                                                        v13 = 1;
                                                        *v137 = 0x100000001;
                                                        v139 = 0x100000001;
                                                        v14 = 1;
                                                        *&v138[8] = 1;
                                                        v15 = 1;
                                                        v16 = 1;
                                                        v17 = 1;
                                                        v18 = 1;
                                                      }

                                                      v6 = v67;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v16 = 0;
                                                    v17 = 0;
                                                    v18 = 0;
                                                    v19 = 0;
                                                    v141[2] = 0x100000001;
                                                    v141[0] = 0x100000001;
                                                    v10 = 1;
                                                    v141[1] = 0x100000001;
                                                    *(&v140 + 1) = 0x100000001;
                                                    *&v140 = 0x100000001;
                                                    v11 = 1;
                                                    *v138 = 0x100000001;
                                                    v12 = 1;
                                                    *&v137[8] = 1;
                                                    v13 = 1;
                                                    *v137 = 0x100000001;
                                                    v139 = 0x100000001;
                                                    v14 = 1;
                                                    *&v138[8] = 1;
                                                    v15 = 1;
                                                  }
                                                }

                                                else
                                                {
                                                  v16 = 0;
                                                  v17 = 0;
                                                  v18 = 0;
                                                  v19 = 0;
                                                  v141[2] = 0x100000001;
                                                  v141[0] = 0x100000001;
                                                  v10 = 1;
                                                  v141[1] = 0x100000001;
                                                  *(&v140 + 1) = 0x100000001;
                                                  *&v140 = 0x100000001;
                                                  v11 = 1;
                                                  *v138 = 0x100000001;
                                                  v12 = 1;
                                                  *&v137[8] = 1;
                                                  v13 = 1;
                                                  *v137 = 0x100000001;
                                                  v139 = 0x100000001;
                                                  v14 = 1;
                                                  *&v138[8] = 1;
                                                  v15 = 1;
                                                  *v147 = 1;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              v15 = 0;
                                              *v147 = 0x100000000;
                                              v16 = 0;
                                              v17 = 0;
                                              v18 = 0;
                                              v19 = 0;
                                              v141[2] = 0x100000001;
                                              v141[0] = 0x100000001;
                                              v10 = 1;
                                              v141[1] = 0x100000001;
                                              *(&v140 + 1) = 0x100000001;
                                              *&v140 = 0x100000001;
                                              v11 = 1;
                                              *&v138[8] = 0;
                                              v12 = 1;
                                              *&v137[8] = 1;
                                              v13 = 1;
                                              *v137 = 0x100000001;
                                              v139 = 0x100000001;
                                              *v138 = 0x100000001;
                                              v14 = 1;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          *v138 = 0x100000000;
                                          v14 = 0;
                                          *v147 = 0;
                                          v15 = 0;
                                          v16 = 0;
                                          v17 = 0;
                                          v18 = 0;
                                          v19 = 0;
                                          v141[2] = 0x100000001;
                                          v141[0] = 0x100000001;
                                          v10 = 1;
                                          v141[1] = 0x100000001;
                                          *(&v140 + 1) = 0x100000001;
                                          *&v140 = 0x100000001;
                                          v11 = 1;
                                          *&v138[8] = 0;
                                          v12 = 1;
                                          *&v137[8] = 1;
                                          v13 = 1;
                                          *v137 = 0x100000001;
                                          v139 = 0x100000001;
                                          *&v147[8] = 1;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      *&v147[4] = 0;
                                      *v138 = 0x100000000;
                                      v14 = 0;
                                      v15 = 0;
                                      *v147 = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v19 = 0;
                                      v141[2] = 0x100000001;
                                      v141[0] = 0x100000001;
                                      v10 = 1;
                                      v141[1] = 0x100000001;
                                      *(&v140 + 1) = 0x100000001;
                                      *&v140 = 0x100000001;
                                      v11 = 1;
                                      *&v138[8] = 0;
                                      v12 = 1;
                                      *&v137[8] = 1;
                                      v13 = 1;
                                      *v137 = 1;
                                      v139 = 1;
                                      *&v147[12] = 1;
                                    }
                                  }
                                }

                                else
                                {
                                  *v137 = 0;
                                  v139 = 0;
                                  *&v147[8] = 0;
                                  *v138 = 0x100000000;
                                  v14 = 0;
                                  *v147 = 0;
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v19 = 0;
                                  v141[2] = 0x100000001;
                                  v141[0] = 0x100000001;
                                  v10 = 1;
                                  v141[1] = 0x100000001;
                                  *(&v140 + 1) = 0x100000001;
                                  *&v140 = 0x100000001;
                                  v11 = 1;
                                  *&v138[8] = 0;
                                  v12 = 1;
                                  *&v137[8] = 1;
                                  v13 = 1;
                                  *&v147[16] = 1;
                                }
                              }
                            }

                            else
                            {
                              v13 = 0;
                              memset(v137, 0, sizeof(v137));
                              v139 = 0;
                              *v138 = 0x100000000;
                              v14 = 0;
                              v15 = 0;
                              memset(v147, 0, 20);
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v19 = 0;
                              v141[2] = 0x100000001;
                              v141[0] = 0x100000001;
                              v10 = 1;
                              v141[1] = 0x100000001;
                              *(&v140 + 1) = 0x100000001;
                              *&v140 = 0x100000001;
                              v11 = 1;
                              *&v138[8] = 0;
                              v12 = 1;
                              *&v147[20] = 1;
                            }
                          }
                        }

                        else
                        {
                          memset(v138, 0, sizeof(v138));
                          v12 = 0;
                          v13 = 0;
                          memset(v137, 0, sizeof(v137));
                          v139 = 0;
                          v14 = 0;
                          memset(v147, 0, 24);
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          v141[2] = 0x100000001;
                          v141[0] = 0x100000001;
                          v10 = 1;
                          v141[1] = 0x100000001;
                          *(&v140 + 1) = 0x100000001;
                          *&v140 = 0x100000001;
                          v11 = 1;
                          *&v147[24] = 1;
                        }
                      }
                    }

                    else
                    {
                      v11 = 0;
                      memset(v138, 0, sizeof(v138));
                      v12 = 0;
                      v13 = 0;
                      memset(v137, 0, sizeof(v137));
                      v139 = 0;
                      v14 = 0;
                      v15 = 0;
                      memset(v147, 0, 28);
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      v141[2] = 0x100000001;
                      v141[0] = 0x100000001;
                      v10 = 1;
                      v141[1] = 0x100000001;
                      *(&v140 + 1) = 0x100000001;
                      *&v140 = 1;
                      *&v147[28] = 1;
                    }
                  }
                }

                else
                {
                  v139 = 0;
                  *&v140 = 0;
                  *(&v140 + 1) = 0x100000000;
                  v11 = 0;
                  memset(v138, 0, sizeof(v138));
                  v12 = 0;
                  v13 = 0;
                  memset(v137, 0, sizeof(v137));
                  v14 = 0;
                  memset(v147, 0, 32);
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v141[2] = 0x100000001;
                  v141[0] = 0x100000001;
                  v10 = 1;
                  v141[1] = 0x100000001;
                  *&v147[32] = 1;
                }
              }
            }

            else
            {
              v140 = 0uLL;
              v11 = 0;
              memset(v138, 0, sizeof(v138));
              v12 = 0;
              v13 = 0;
              memset(v137, 0, sizeof(v137));
              v139 = 0;
              v14 = 0;
              v15 = 0;
              memset(v147, 0, sizeof(v147));
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v141[2] = 0x100000001;
              v141[0] = 0x100000001;
              v10 = 1;
              v141[1] = 1;
            }
          }

          else
          {
            v140 = 0uLL;
            v11 = 0;
            memset(v138, 0, sizeof(v138));
            v12 = 0;
            v13 = 0;
            memset(v137, 0, sizeof(v137));
            v139 = 0;
            v14 = 0;
            v15 = 0;
            memset(v147, 0, sizeof(v147));
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v141[2] = 0x100000001;
            v141[0] = 0x100000001;
            v10 = 1;
            v141[1] = 1;
            LODWORD(v142) = 1;
          }
        }
      }

      else
      {
        *(v141 + 4) = 0;
        LODWORD(v142) = 0;
        v140 = 0uLL;
        HIDWORD(v141[1]) = 0;
        v11 = 0;
        memset(v138, 0, sizeof(v138));
        v12 = 0;
        v13 = 0;
        memset(v137, 0, sizeof(v137));
        v139 = 0;
        v14 = 0;
        v15 = 0;
        memset(v147, 0, sizeof(v147));
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v141[2] = 0x100000001;
        LODWORD(v141[0]) = 1;
        v10 = 1;
      }
    }

    else
    {
      *(v141 + 4) = 0;
      *&v142 = 0x100000000;
      v140 = 0uLL;
      HIDWORD(v141[1]) = 0;
      v11 = 0;
      memset(v138, 0, sizeof(v138));
      v12 = 0;
      v13 = 0;
      memset(v137, 0, sizeof(v137));
      v139 = 0;
      v14 = 0;
      v15 = 0;
      memset(v147, 0, sizeof(v147));
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v141[2] = 0x100000001;
      LODWORD(v141[0]) = 1;
      v10 = 1;
    }
  }

LABEL_16:
  if (v18)
  {
    v134 = equalCopy;
    v23 = v19;
    v24 = v13;
    v25 = v14;
    v26 = v11;
    v27 = v5;
    v28 = v10;
    v29 = v12;
    v30 = v15;
    v31 = v16;
    v32 = v17;

    v33 = v32;
    v16 = v31;
    v15 = v30;
    v12 = v29;
    v10 = v28;
    v5 = v27;
    v11 = v26;
    v14 = v25;
    v13 = v24;
    v19 = v23;
    equalCopy = v134;
    if (!v33)
    {
      goto LABEL_18;
    }

LABEL_99:

    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v17)
  {
    goto LABEL_99;
  }

LABEL_18:
  if (v16)
  {
LABEL_19:
  }

LABEL_20:
  if (*v147)
  {
  }

  if (v15)
  {
  }

  if (*&v138[8])
  {
  }

  if (*&v147[4])
  {
  }

  if (v14)
  {
  }

  if (*v138)
  {
  }

  if (*&v147[8])
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (*&v137[4])
  {
  }

  if (*&v147[12])
  {
  }

  if (v139)
  {
  }

  if (*v137)
  {
  }

  if (*&v147[16])
  {
  }

  if (v13)
  {
  }

  if (*&v137[8])
  {
  }

  if (*&v147[20])
  {
  }

  if (v12)
  {
  }

  if (*&v138[4])
  {
  }

  if (*&v147[24])
  {
  }

  if (DWORD1(v140))
  {
  }

  if (v11)
  {
  }

  if (*&v147[28])
  {
  }

  if (DWORD2(v140))
  {
  }

  if (v140)
  {
  }

  if (*&v147[32])
  {
  }

  if (HIDWORD(v141[1]))
  {
  }

  if (HIDWORD(v140))
  {
  }

  if (v142)
  {
  }

  if (HIDWORD(v141[0]))
  {
  }

  if (LODWORD(v141[1]))
  {
  }

  if (DWORD1(v142))
  {
  }

  if (v10)
  {
  }

  if (LODWORD(v141[0]))
  {
  }

  if (DWORD2(v142))
  {
  }

  if (LODWORD(v141[2]))
  {
  }

  if (HIDWORD(v141[2]))
  {
  }

  if (HIDWORD(v142))
  {
  }

  if (v144 != v143)
  {
  }

LABEL_97:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34.receiver = self;
  v34.super_class = SFMediaInfoCardSection;
  v4 = [(SFCardSection *)&v34 copyWithZone:zone];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v6 = [punchoutOptions copy];
  [v4 setPunchoutOptions:v6];

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v8 = [punchoutPickerTitle copy];
  [v4 setPunchoutPickerTitle:v8];

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v10 = [punchoutPickerDismissText copy];
  [v4 setPunchoutPickerDismissText:v10];

  [v4 setCanBeHidden:{-[SFCardSection canBeHidden](self, "canBeHidden")}];
  [v4 setHasTopPadding:{-[SFCardSection hasTopPadding](self, "hasTopPadding")}];
  [v4 setHasBottomPadding:{-[SFCardSection hasBottomPadding](self, "hasBottomPadding")}];
  type = [(SFMediaInfoCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  mediaItem = [(SFMediaInfoCardSection *)self mediaItem];
  v16 = [mediaItem copy];
  [v4 setMediaItem:v16];

  details = [(SFMediaInfoCardSection *)self details];
  v18 = [details copy];
  [v4 setDetails:v18];

  playAction = [(SFMediaInfoCardSection *)self playAction];
  v20 = [playAction copy];
  [v4 setPlayAction:v20];

  offers = [(SFMediaInfoCardSection *)self offers];
  v22 = [offers copy];
  [v4 setOffers:v22];

  watchListIdentifier = [(SFMediaInfoCardSection *)self watchListIdentifier];
  v24 = [watchListIdentifier copy];
  [v4 setWatchListIdentifier:v24];

  watchListButtonLabel = [(SFMediaInfoCardSection *)self watchListButtonLabel];
  v26 = [watchListButtonLabel copy];
  [v4 setWatchListButtonLabel:v26];

  watchListContinuationText = [(SFMediaInfoCardSection *)self watchListContinuationText];
  v28 = [watchListContinuationText copy];
  [v4 setWatchListContinuationText:v28];

  watchListConfirmationText = [(SFMediaInfoCardSection *)self watchListConfirmationText];
  v30 = [watchListConfirmationText copy];
  [v4 setWatchListConfirmationText:v30];

  [v4 setIsMediaContainer:{-[SFMediaInfoCardSection isMediaContainer](self, "isMediaContainer")}];
  specialOfferButtonLabel = [(SFMediaInfoCardSection *)self specialOfferButtonLabel];
  v32 = [specialOfferButtonLabel copy];
  [v4 setSpecialOfferButtonLabel:v32];

  [v4 setWatchListItemType:{-[SFMediaInfoCardSection watchListItemType](self, "watchListItemType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaInfoCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBMediaInfoCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaInfoCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMediaInfoCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFMediaInfoCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFMediaInfoCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    punchoutOptions = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions];

    punchoutPickerTitle = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle];

    punchoutPickerDismissText = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    type = [(SFCardSection *)v8 type];
    [(SFMediaInfoCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    mediaItem = [(SFCardSection *)v8 mediaItem];
    [(SFMediaInfoCardSection *)v5 setMediaItem:mediaItem];

    details = [(SFCardSection *)v8 details];
    [(SFMediaInfoCardSection *)v5 setDetails:details];

    playAction = [(SFCardSection *)v8 playAction];
    [(SFMediaInfoCardSection *)v5 setPlayAction:playAction];

    offers = [(SFCardSection *)v8 offers];
    [(SFMediaInfoCardSection *)v5 setOffers:offers];

    watchListIdentifier = [(SFCardSection *)v8 watchListIdentifier];
    [(SFMediaInfoCardSection *)v5 setWatchListIdentifier:watchListIdentifier];

    watchListButtonLabel = [(SFCardSection *)v8 watchListButtonLabel];
    [(SFMediaInfoCardSection *)v5 setWatchListButtonLabel:watchListButtonLabel];

    watchListContinuationText = [(SFCardSection *)v8 watchListContinuationText];
    [(SFMediaInfoCardSection *)v5 setWatchListContinuationText:watchListContinuationText];

    watchListConfirmationText = [(SFCardSection *)v8 watchListConfirmationText];
    [(SFMediaInfoCardSection *)v5 setWatchListConfirmationText:watchListConfirmationText];

    [(SFMediaInfoCardSection *)v5 setIsMediaContainer:[(SFCardSection *)v8 isMediaContainer]];
    specialOfferButtonLabel = [(SFCardSection *)v8 specialOfferButtonLabel];
    [(SFMediaInfoCardSection *)v5 setSpecialOfferButtonLabel:specialOfferButtonLabel];

    [(SFMediaInfoCardSection *)v5 setWatchListItemType:[(SFCardSection *)v8 watchListItemType]];
    nextCard = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:nextCard];

    commands = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:commands];

    parameterKeyPaths = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:parameterKeyPaths];

    cardSectionId = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:cardSectionId];

    resultIdentifier = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:resultIdentifier];

    userReportRequest = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:userReportRequest];

    command = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:command];

    previewCommand = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:previewCommand];

    previewButtonItems = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:previewButtonItems];

    cardSectionDetail = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:cardSectionDetail];

    previewButtonItemsTitle = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:previewButtonItemsTitle];

    backgroundColor2 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor2];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    leadingSwipeButtonItems = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:leadingSwipeButtonItems];

    trailingSwipeButtonItems = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:trailingSwipeButtonItems];

    punchoutOptions2 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions2];

    punchoutPickerTitle2 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];

    punchoutPickerDismissText2 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    referencedCommands = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:referencedCommands];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    appEntityAnnotation = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:appEntityAnnotation];

    emphasisSubjectId = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:emphasisSubjectId];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    secondaryCommand = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:secondaryCommand];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    racFeedbackSubfeatureId = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:racFeedbackSubfeatureId];

    racFeedbackLoggingContent = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:racFeedbackLoggingContent];

    copyableItems = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:copyableItems];

    applicationBundleIdentifier = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];
  }

  return v5;
}

@end