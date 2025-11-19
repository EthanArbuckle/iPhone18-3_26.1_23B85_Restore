@interface SFMediaInfoCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaInfoCardSection)initWithCoder:(id)a3;
- (SFMediaInfoCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMediaInfoCardSection

- (SFMediaInfoCardSection)initWithProtobuf:(id)a3
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v76.receiver = self;
  v76.super_class = SFMediaInfoCardSection;
  v5 = [(SFCardSection *)&v76 init];
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
    v9 = [v8 countByEnumeratingWithState:&v72 objects:v79 count:16];
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

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v72 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v10);
    }

    [(SFCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(SFCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(SFCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 canBeHidden])
    {
      -[SFCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasTopPadding])
    {
      -[SFCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasBottomPadding])
    {
      -[SFCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(SFMediaInfoCardSection *)v5 setType:v19];
    }

    if ([v4 separatorStyle])
    {
      -[SFCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [SFColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(SFColor *)v21 initWithProtobuf:v22];
      [(SFCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 mediaItem];

    if (v24)
    {
      v25 = [SFMediaItem alloc];
      v26 = [v4 mediaItem];
      v27 = [(SFMediaItem *)v25 initWithProtobuf:v26];
      [(SFMediaInfoCardSection *)v5 setMediaItem:v27];
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
    v31 = [v30 countByEnumeratingWithState:&v68 objects:v78 count:16];
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

          v35 = [[SFMediaDetail alloc] initWithProtobuf:*(*(&v68 + 1) + 8 * j)];
          if (v35)
          {
            [v29 addObject:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v68 objects:v78 count:16];
      }

      while (v32);
    }

    [(SFMediaInfoCardSection *)v5 setDetails:v29];
    v36 = [v4 playAction];

    if (v36)
    {
      v37 = [SFActionItem alloc];
      v38 = [v4 playAction];
      v39 = [(SFActionItem *)v37 initWithProtobuf:v38];
      [(SFMediaInfoCardSection *)v5 setPlayAction:v39];
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
    v43 = [v42 countByEnumeratingWithState:&v64 objects:v77 count:16];
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

          v47 = [[SFMediaOffer alloc] initWithProtobuf:*(*(&v64 + 1) + 8 * k)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v44);
    }

    v5 = v63;
    [(SFMediaInfoCardSection *)v63 setOffers:v41];
    v48 = [v4 watchListIdentifier];

    if (v48)
    {
      v49 = [v4 watchListIdentifier];
      [(SFMediaInfoCardSection *)v63 setWatchListIdentifier:v49];
    }

    v50 = [v4 watchListButtonLabel];

    if (v50)
    {
      v51 = [v4 watchListButtonLabel];
      [(SFMediaInfoCardSection *)v63 setWatchListButtonLabel:v51];
    }

    v52 = [v4 watchListContinuationText];

    if (v52)
    {
      v53 = [v4 watchListContinuationText];
      [(SFMediaInfoCardSection *)v63 setWatchListContinuationText:v53];
    }

    v54 = [v4 watchListConfirmationText];

    if (v54)
    {
      v55 = [v4 watchListConfirmationText];
      [(SFMediaInfoCardSection *)v63 setWatchListConfirmationText:v55];
    }

    if ([v4 isMediaContainer])
    {
      -[SFMediaInfoCardSection setIsMediaContainer:](v63, "setIsMediaContainer:", [v4 isMediaContainer]);
    }

    v56 = [v4 specialOfferButtonLabel];

    if (v56)
    {
      v57 = [SFRichText alloc];
      v58 = [v4 specialOfferButtonLabel];
      v59 = [(SFRichText *)v57 initWithProtobuf:v58];
      [(SFMediaInfoCardSection *)v63 setSpecialOfferButtonLabel:v59];
    }

    if ([v4 watchListItemType])
    {
      -[SFMediaInfoCardSection setWatchListItemType:](v63, "setWatchListItemType:", [v4 watchListItemType]);
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
  v38 = [(SFCardSection *)self punchoutOptions];
  v4 = [v38 hash];
  v37 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v37 hash];
  v36 = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [v36 hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v9 = [(SFCardSection *)self hasBottomPadding];
  v35 = [(SFMediaInfoCardSection *)self type];
  v10 = v9 ^ [v35 hash];
  v11 = v10 ^ [(SFCardSection *)self separatorStyle];
  v34 = [(SFCardSection *)self backgroundColor];
  v12 = v11 ^ [v34 hash];
  v33 = [(SFMediaInfoCardSection *)self mediaItem];
  v13 = v8 ^ v12 ^ [v33 hash];
  v14 = [(SFMediaInfoCardSection *)self details];
  v15 = [v14 hash];
  v16 = [(SFMediaInfoCardSection *)self playAction];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFMediaInfoCardSection *)self offers];
  v19 = v17 ^ [v18 hash];
  v20 = [(SFMediaInfoCardSection *)self watchListIdentifier];
  v21 = v19 ^ [v20 hash];
  v22 = [(SFMediaInfoCardSection *)self watchListButtonLabel];
  v23 = v21 ^ [v22 hash];
  v24 = [(SFMediaInfoCardSection *)self watchListContinuationText];
  v25 = v23 ^ [v24 hash];
  v26 = [(SFMediaInfoCardSection *)self watchListConfirmationText];
  v32 = v13 ^ v25 ^ [v26 hash];
  v27 = [(SFMediaInfoCardSection *)self isMediaContainer];
  v28 = [(SFMediaInfoCardSection *)self specialOfferButtonLabel];
  v29 = v27 ^ [v28 hash];
  v30 = v29 ^ [(SFMediaInfoCardSection *)self watchListItemType];

  return v32 ^ v30;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_97;
  }

  if (![(SFMediaInfoCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v148.receiver = self, v148.super_class = SFMediaInfoCardSection, ![(SFCardSection *)&v148 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_97;
  }

  v5 = v4;
  v146 = [(SFCardSection *)self punchoutOptions];
  v145 = [(SFCardSection *)v5 punchoutOptions];
  v143 = v145 == 0;
  v144 = v146 != 0;
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

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v136 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v130 = v131 = v9;
    if (![v9 isEqual:?])
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

  v133 = [(SFCardSection *)self punchoutPickerTitle];
  v132 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v142) = v8;
  if ((v133 != 0) == (v132 == 0))
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

  v20 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = v20 != 0;
  v129 = v20;
  if (v20)
  {
    v22 = [(SFCardSection *)self punchoutPickerTitle];
    v125 = [(SFCardSection *)v5 punchoutPickerTitle];
    v126 = v22;
    if (![v22 isEqual:?])
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

  v128 = [(SFCardSection *)self punchoutPickerDismissText];
  v127 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((v128 != 0) == (v127 == 0))
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
    v35 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = v35 != 0;
    v124 = v35;
    if (!v35 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v122 = objc_claimAutoreleasedReturnValue(), v123 = v37, [v37 isEqual:?]))
    {
      v38 = [(SFCardSection *)self canBeHidden];
      DWORD1(v142) = v36;
      if (v38 == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        v121 = [(SFMediaInfoCardSection *)self type];
        v120 = [(SFMediaInfoCardSection *)v5 type];
        if ((v121 != 0) == (v120 == 0))
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
          v41 = [(SFMediaInfoCardSection *)self type];
          v42 = v41 != 0;
          v119 = v41;
          if (!v41 || (-[SFMediaInfoCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection type](v5, "type"), v117 = objc_claimAutoreleasedReturnValue(), v118 = v43, [v43 isEqual:?]))
          {
            LODWORD(v142) = v42;
            v44 = [(SFCardSection *)self separatorStyle];
            if (v44 == [(SFCardSection *)v5 separatorStyle])
            {
              v116 = [(SFCardSection *)self backgroundColor];
              v115 = [(SFCardSection *)v5 backgroundColor];
              if ((v116 != 0) == (v115 == 0))
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
                v45 = [(SFCardSection *)self backgroundColor];
                *&v147[32] = v45 != 0;
                v114 = v45;
                if (!v45 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v110 = objc_claimAutoreleasedReturnValue(), v111 = v46, [v46 isEqual:?]))
                {
                  v113 = [(SFMediaInfoCardSection *)self mediaItem];
                  v112 = [(SFMediaInfoCardSection *)v5 mediaItem];
                  if ((v113 != 0) == (v112 == 0))
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
                    v47 = [(SFMediaInfoCardSection *)self mediaItem];
                    *&v147[28] = v47 != 0;
                    v109 = v47;
                    if (!v47 || (-[SFMediaInfoCardSection mediaItem](self, "mediaItem"), v48 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection mediaItem](v5, "mediaItem"), v105 = objc_claimAutoreleasedReturnValue(), v106 = v48, [v48 isEqual:?]))
                    {
                      v108 = [(SFMediaInfoCardSection *)self details];
                      v107 = [(SFMediaInfoCardSection *)v5 details];
                      if ((v108 != 0) == (v107 == 0))
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
                        v49 = [(SFMediaInfoCardSection *)self details];
                        *&v147[24] = v49 != 0;
                        v104 = v49;
                        if (!v49 || (-[SFMediaInfoCardSection details](self, "details"), v50 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection details](v5, "details"), v100 = objc_claimAutoreleasedReturnValue(), v101 = v50, [v50 isEqual:?]))
                        {
                          v103 = [(SFMediaInfoCardSection *)self playAction];
                          v102 = [(SFMediaInfoCardSection *)v5 playAction];
                          if ((v103 != 0) == (v102 == 0))
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
                            v51 = [(SFMediaInfoCardSection *)self playAction];
                            *&v147[20] = v51 != 0;
                            v99 = v51;
                            if (!v51 || (-[SFMediaInfoCardSection playAction](self, "playAction"), v52 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection playAction](v5, "playAction"), v95 = objc_claimAutoreleasedReturnValue(), v96 = v52, [v52 isEqual:?]))
                            {
                              v98 = [(SFMediaInfoCardSection *)self offers];
                              v97 = [(SFMediaInfoCardSection *)v5 offers];
                              if ((v98 != 0) == (v97 == 0))
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
                                v53 = [(SFMediaInfoCardSection *)self offers];
                                *&v147[16] = v53 != 0;
                                v94 = v53;
                                if (!v53 || (-[SFMediaInfoCardSection offers](self, "offers"), v54 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection offers](v5, "offers"), v90 = objc_claimAutoreleasedReturnValue(), v91 = v54, [v54 isEqual:?]))
                                {
                                  v93 = [(SFMediaInfoCardSection *)self watchListIdentifier];
                                  v92 = [(SFMediaInfoCardSection *)v5 watchListIdentifier];
                                  if ((v93 != 0) == (v92 == 0))
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
                                    v55 = [(SFMediaInfoCardSection *)self watchListIdentifier];
                                    *&v147[12] = v55 != 0;
                                    v89 = v55;
                                    if (!v55 || (-[SFMediaInfoCardSection watchListIdentifier](self, "watchListIdentifier"), v56 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection watchListIdentifier](v5, "watchListIdentifier"), v85 = objc_claimAutoreleasedReturnValue(), v86 = v56, [v56 isEqual:?]))
                                    {
                                      v88 = [(SFMediaInfoCardSection *)self watchListButtonLabel];
                                      v87 = [(SFMediaInfoCardSection *)v5 watchListButtonLabel];
                                      if ((v88 != 0) == (v87 == 0))
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
                                        v57 = [(SFMediaInfoCardSection *)self watchListButtonLabel];
                                        *&v147[8] = v57 != 0;
                                        v84 = v57;
                                        if (!v57 || (-[SFMediaInfoCardSection watchListButtonLabel](self, "watchListButtonLabel"), v58 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection watchListButtonLabel](v5, "watchListButtonLabel"), v80 = objc_claimAutoreleasedReturnValue(), v81 = v58, [v58 isEqual:?]))
                                        {
                                          v83 = [(SFMediaInfoCardSection *)self watchListContinuationText];
                                          v82 = [(SFMediaInfoCardSection *)v5 watchListContinuationText];
                                          if ((v83 != 0) == (v82 == 0))
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
                                            v59 = [(SFMediaInfoCardSection *)self watchListContinuationText];
                                            *&v147[4] = v59 != 0;
                                            v79 = v59;
                                            if (!v59 || (-[SFMediaInfoCardSection watchListContinuationText](self, "watchListContinuationText"), v60 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection watchListContinuationText](v5, "watchListContinuationText"), v75 = objc_claimAutoreleasedReturnValue(), v76 = v60, [v60 isEqual:?]))
                                            {
                                              v78 = [(SFMediaInfoCardSection *)self watchListConfirmationText];
                                              v77 = [(SFMediaInfoCardSection *)v5 watchListConfirmationText];
                                              if ((v78 != 0) == (v77 == 0))
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
                                                v61 = [(SFMediaInfoCardSection *)self watchListConfirmationText];
                                                *v147 = v61 != 0;
                                                v74 = v61;
                                                if (!v61 || (-[SFMediaInfoCardSection watchListConfirmationText](self, "watchListConfirmationText"), v62 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection watchListConfirmationText](v5, "watchListConfirmationText"), v72 = objc_claimAutoreleasedReturnValue(), v73 = v62, [v62 isEqual:?]))
                                                {
                                                  v63 = [(SFMediaInfoCardSection *)self isMediaContainer];
                                                  if (v63 == [(SFMediaInfoCardSection *)v5 isMediaContainer])
                                                  {
                                                    v71 = [(SFMediaInfoCardSection *)self specialOfferButtonLabel];
                                                    v70 = [(SFMediaInfoCardSection *)v5 specialOfferButtonLabel];
                                                    if ((v71 != 0) == (v70 == 0))
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
                                                      v64 = [(SFMediaInfoCardSection *)self specialOfferButtonLabel];
                                                      v135 = v64 != 0;
                                                      v68 = v64;
                                                      if (!v64 || (-[SFMediaInfoCardSection specialOfferButtonLabel](self, "specialOfferButtonLabel"), v65 = objc_claimAutoreleasedReturnValue(), -[SFMediaInfoCardSection specialOfferButtonLabel](v5, "specialOfferButtonLabel"), v69 = v65, v67 = objc_claimAutoreleasedReturnValue(), [v65 isEqual:?]))
                                                      {
                                                        v66 = [(SFMediaInfoCardSection *)self watchListItemType];
                                                        v19 = v66 == [(SFMediaInfoCardSection *)v5 watchListItemType];
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
    v134 = v4;
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
    v4 = v134;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v34.receiver = self;
  v34.super_class = SFMediaInfoCardSection;
  v4 = [(SFCardSection *)&v34 copyWithZone:a3];
  v5 = [(SFCardSection *)self punchoutOptions];
  v6 = [v5 copy];
  [v4 setPunchoutOptions:v6];

  v7 = [(SFCardSection *)self punchoutPickerTitle];
  v8 = [v7 copy];
  [v4 setPunchoutPickerTitle:v8];

  v9 = [(SFCardSection *)self punchoutPickerDismissText];
  v10 = [v9 copy];
  [v4 setPunchoutPickerDismissText:v10];

  [v4 setCanBeHidden:{-[SFCardSection canBeHidden](self, "canBeHidden")}];
  [v4 setHasTopPadding:{-[SFCardSection hasTopPadding](self, "hasTopPadding")}];
  [v4 setHasBottomPadding:{-[SFCardSection hasBottomPadding](self, "hasBottomPadding")}];
  v11 = [(SFMediaInfoCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFMediaInfoCardSection *)self mediaItem];
  v16 = [v15 copy];
  [v4 setMediaItem:v16];

  v17 = [(SFMediaInfoCardSection *)self details];
  v18 = [v17 copy];
  [v4 setDetails:v18];

  v19 = [(SFMediaInfoCardSection *)self playAction];
  v20 = [v19 copy];
  [v4 setPlayAction:v20];

  v21 = [(SFMediaInfoCardSection *)self offers];
  v22 = [v21 copy];
  [v4 setOffers:v22];

  v23 = [(SFMediaInfoCardSection *)self watchListIdentifier];
  v24 = [v23 copy];
  [v4 setWatchListIdentifier:v24];

  v25 = [(SFMediaInfoCardSection *)self watchListButtonLabel];
  v26 = [v25 copy];
  [v4 setWatchListButtonLabel:v26];

  v27 = [(SFMediaInfoCardSection *)self watchListContinuationText];
  v28 = [v27 copy];
  [v4 setWatchListContinuationText:v28];

  v29 = [(SFMediaInfoCardSection *)self watchListConfirmationText];
  v30 = [v29 copy];
  [v4 setWatchListConfirmationText:v30];

  [v4 setIsMediaContainer:{-[SFMediaInfoCardSection isMediaContainer](self, "isMediaContainer")}];
  v31 = [(SFMediaInfoCardSection *)self specialOfferButtonLabel];
  v32 = [v31 copy];
  [v4 setSpecialOfferButtonLabel:v32];

  [v4 setWatchListItemType:{-[SFMediaInfoCardSection watchListItemType](self, "watchListItemType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaInfoCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBMediaInfoCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaInfoCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBMediaInfoCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFMediaInfoCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFMediaInfoCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v9];

    v10 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v10];

    v11 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v11];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    v12 = [(SFCardSection *)v8 type];
    [(SFMediaInfoCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 mediaItem];
    [(SFMediaInfoCardSection *)v5 setMediaItem:v14];

    v15 = [(SFCardSection *)v8 details];
    [(SFMediaInfoCardSection *)v5 setDetails:v15];

    v16 = [(SFCardSection *)v8 playAction];
    [(SFMediaInfoCardSection *)v5 setPlayAction:v16];

    v17 = [(SFCardSection *)v8 offers];
    [(SFMediaInfoCardSection *)v5 setOffers:v17];

    v18 = [(SFCardSection *)v8 watchListIdentifier];
    [(SFMediaInfoCardSection *)v5 setWatchListIdentifier:v18];

    v19 = [(SFCardSection *)v8 watchListButtonLabel];
    [(SFMediaInfoCardSection *)v5 setWatchListButtonLabel:v19];

    v20 = [(SFCardSection *)v8 watchListContinuationText];
    [(SFMediaInfoCardSection *)v5 setWatchListContinuationText:v20];

    v21 = [(SFCardSection *)v8 watchListConfirmationText];
    [(SFMediaInfoCardSection *)v5 setWatchListConfirmationText:v21];

    [(SFMediaInfoCardSection *)v5 setIsMediaContainer:[(SFCardSection *)v8 isMediaContainer]];
    v22 = [(SFCardSection *)v8 specialOfferButtonLabel];
    [(SFMediaInfoCardSection *)v5 setSpecialOfferButtonLabel:v22];

    [(SFMediaInfoCardSection *)v5 setWatchListItemType:[(SFCardSection *)v8 watchListItemType]];
    v23 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v23];

    v24 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v24];

    v25 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v25];

    v26 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v26];

    v27 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v27];

    v28 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v28];

    v29 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v29];

    v30 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v30];

    v31 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v31];

    v32 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v32];

    v33 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v33];

    v34 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v34];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v35 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v35];

    v36 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v36];

    v37 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v37];

    v38 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v38];

    v39 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v39];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v40 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v40];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v41 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v41];

    v42 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v42];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v43 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v43];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v44 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v44];

    v45 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v45];

    v46 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v46];

    v47 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v47];
  }

  return v5;
}

@end