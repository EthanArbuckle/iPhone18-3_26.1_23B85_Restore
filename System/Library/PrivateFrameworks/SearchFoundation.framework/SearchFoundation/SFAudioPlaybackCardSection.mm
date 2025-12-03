@interface SFAudioPlaybackCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAudioPlaybackCardSection)initWithCoder:(id)coder;
- (SFAudioPlaybackCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAudioPlaybackCardSection

- (SFAudioPlaybackCardSection)initWithProtobuf:(id)protobuf
{
  v76 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v72.receiver = self;
  v72.super_class = SFAudioPlaybackCardSection;
  v5 = [(SFCardSection *)&v72 init];
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

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v69;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v69 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v68 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v68 objects:v75 count:16];
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
      [(SFAudioPlaybackCardSection *)v5 setType:type2];
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

    if ([protobufCopy state])
    {
      -[SFAudioPlaybackCardSection setState:](v5, "setState:", [protobufCopy state]);
    }

    playCommands = [protobufCopy playCommands];
    if (playCommands)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    playCommands2 = [protobufCopy playCommands];
    v27 = [playCommands2 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v65;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v65 != v29)
          {
            objc_enumerationMutation(playCommands2);
          }

          v31 = [[SFAbstractCommand alloc] initWithProtobuf:*(*(&v64 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [playCommands2 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v28);
    }

    [(SFAudioPlaybackCardSection *)v5 setPlayCommands:v25];
    stopCommands = [protobufCopy stopCommands];
    v59 = v5;
    if (stopCommands)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v33 = 0;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    stopCommands2 = [protobufCopy stopCommands];
    v35 = [stopCommands2 countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v61;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v61 != v37)
          {
            objc_enumerationMutation(stopCommands2);
          }

          v39 = [[SFAbstractCommand alloc] initWithProtobuf:*(*(&v60 + 1) + 8 * k)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [stopCommands2 countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v36);
    }

    v5 = v59;
    [(SFAudioPlaybackCardSection *)v59 setStopCommands:v33];
    detailText = [protobufCopy detailText];

    if (detailText)
    {
      v41 = [SFRichText alloc];
      detailText2 = [protobufCopy detailText];
      v43 = [(SFRichText *)v41 initWithProtobuf:detailText2];
      [(SFAudioPlaybackCardSection *)v59 setDetailText:v43];
    }

    title = [protobufCopy title];

    if (title)
    {
      v45 = [SFRichText alloc];
      title2 = [protobufCopy title];
      v47 = [(SFRichText *)v45 initWithProtobuf:title2];
      [(SFAudioPlaybackCardSection *)v59 setTitle:v47];
    }

    subtitle = [protobufCopy subtitle];

    if (subtitle)
    {
      v49 = [SFRichText alloc];
      subtitle2 = [protobufCopy subtitle];
      v51 = [(SFRichText *)v49 initWithProtobuf:subtitle2];
      [(SFAudioPlaybackCardSection *)v59 setSubtitle:v51];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v53 = [SFImage alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v55 = [(SFImage *)v53 initWithProtobuf:thumbnail2];
      [(SFAudioPlaybackCardSection *)v59 setThumbnail:v55];
    }

    v56 = v59;
  }

  v57 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v32.receiver = self;
  v32.super_class = SFAudioPlaybackCardSection;
  v3 = [(SFCardSection *)&v32 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v7 = v5 ^ [punchoutPickerDismissText hash];
  v8 = v7 ^ [(SFCardSection *)self canBeHidden];
  v9 = v8 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFAudioPlaybackCardSection *)self type];
  v12 = hasBottomPadding ^ [type hash];
  v13 = v12 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v15 = v13 ^ [backgroundColor hash];
  v29 = v9 ^ v15 ^ [(SFAudioPlaybackCardSection *)self state];
  playCommands = [(SFAudioPlaybackCardSection *)self playCommands];
  v17 = [playCommands hash];
  stopCommands = [(SFAudioPlaybackCardSection *)self stopCommands];
  v19 = v17 ^ [stopCommands hash];
  detailText = [(SFAudioPlaybackCardSection *)self detailText];
  v21 = v19 ^ [detailText hash];
  title = [(SFAudioPlaybackCardSection *)self title];
  v23 = v21 ^ [title hash];
  subtitle = [(SFAudioPlaybackCardSection *)self subtitle];
  v25 = v23 ^ [subtitle hash];
  thumbnail = [(SFAudioPlaybackCardSection *)self thumbnail];
  v27 = v25 ^ [thumbnail hash];

  return v29 ^ v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_77;
  }

  if (![(SFAudioPlaybackCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v120.receiver = self, v120.super_class = SFAudioPlaybackCardSection, ![(SFCardSection *)&v120 isEqual:equalCopy]))
  {
    v19 = 0;
    goto LABEL_77;
  }

  v5 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
  v115 = punchoutOptions2 == 0;
  v116 = punchoutOptions != 0;
  if (v116 == v115)
  {
    memset(v114, 0, sizeof(v114));
    memset(v113, 0, sizeof(v113));
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v119, 0, sizeof(v119));
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
  v8 = punchoutOptions3 != 0;
  v112 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v107 = v108 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
    {
      memset(v114, 0, 28);
      memset(v113, 0, sizeof(v113));
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      memset(v119, 0, sizeof(v119));
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      HIDWORD(v114[3]) = 1;
      goto LABEL_16;
    }
  }

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v114[3]) = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
  {
    *(v114 + 4) = 0;
    memset(v113, 0, sizeof(v113));
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    LODWORD(v114[0]) = 0;
    v14 = 0;
    memset(v119, 0, sizeof(v119));
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *(&v114[1] + 4) = 1uLL;
    goto LABEL_16;
  }

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = punchoutPickerTitle3 != 0;
  v106 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle5 = [(SFCardSection *)v5 punchoutPickerTitle];
    v103 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
    {
      v114[0] = 0;
      memset(v113, 0, sizeof(v113));
      v114[2] = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      memset(v119, 0, sizeof(v119));
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v114[1] = 0x100000001;
      LODWORD(v114[3]) = 1;
      goto LABEL_16;
    }

    LODWORD(v114[3]) = v21;
  }

  else
  {
    LODWORD(v114[3]) = 0;
  }

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
  {
    memset(v113, 0, 28);
    v114[2] = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v114[0] = 0;
    v14 = 0;
    memset(v119, 0, sizeof(v119));
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v114[1] = 0x100000001;
    HIDWORD(v113[3]) = 1;
  }

  else
  {
    punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = punchoutPickerDismissText3 != 0;
    v101 = punchoutPickerDismissText3;
    if (!punchoutPickerDismissText3 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v99 = objc_claimAutoreleasedReturnValue(), v100 = v37, [v37 isEqual:?]))
    {
      canBeHidden = [(SFCardSection *)self canBeHidden];
      HIDWORD(v114[2]) = v36;
      if (canBeHidden == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        type = [(SFAudioPlaybackCardSection *)self type];
        type2 = [(SFAudioPlaybackCardSection *)v5 type];
        if ((type != 0) == (type2 == 0))
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v114[0] = 0;
          memset(v113 + 4, 0, 24);
          v14 = 0;
          memset(v119, 0, sizeof(v119));
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(&v114[1] + 4) = 1;
          LODWORD(v114[1]) = 1;
          HIDWORD(v113[3]) = 1;
          LODWORD(v113[0]) = 1;
          v10 = 1;
        }

        else
        {
          type3 = [(SFAudioPlaybackCardSection *)self type];
          v42 = type3 != 0;
          v96 = type3;
          if (!type3 || (-[SFAudioPlaybackCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection type](v5, "type"), v94 = objc_claimAutoreleasedReturnValue(), v95 = v43, [v43 isEqual:?]))
          {
            LODWORD(v114[2]) = v42;
            separatorStyle = [(SFCardSection *)self separatorStyle];
            if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
            {
              backgroundColor = [(SFCardSection *)self backgroundColor];
              backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
              if ((backgroundColor != 0) == (backgroundColor2 == 0))
              {
                v13 = 0;
                v114[0] = 0;
                memset(v113 + 4, 0, 24);
                v14 = 0;
                memset(v119, 0, sizeof(v119));
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v114[1] = 0x100000001;
                HIDWORD(v113[3]) = 1;
                LODWORD(v113[0]) = 1;
                v10 = 1;
                v11 = 1;
                v12 = 1;
              }

              else
              {
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                HIDWORD(v119[2]) = backgroundColor3 != 0;
                v91 = backgroundColor3;
                if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v89 = objc_claimAutoreleasedReturnValue(), v90 = v46, [v46 isEqual:?]))
                {
                  state = [(SFAudioPlaybackCardSection *)self state];
                  if (state == [(SFAudioPlaybackCardSection *)v5 state])
                  {
                    playCommands = [(SFAudioPlaybackCardSection *)self playCommands];
                    playCommands2 = [(SFAudioPlaybackCardSection *)v5 playCommands];
                    if ((playCommands != 0) == (playCommands2 == 0))
                    {
                      v114[0] = 0;
                      memset(v113 + 4, 0, 20);
                      v14 = 0;
                      v15 = 0;
                      memset(v119, 0, 20);
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      v114[1] = 0x100000001;
                      v113[3] = 0x100000001;
                      LODWORD(v113[0]) = 1;
                      v10 = 1;
                      v11 = 1;
                      v12 = 1;
                      v13 = 1;
                    }

                    else
                    {
                      playCommands3 = [(SFAudioPlaybackCardSection *)self playCommands];
                      LODWORD(v119[2]) = playCommands3 != 0;
                      v86 = playCommands3;
                      if (!playCommands3 || (-[SFAudioPlaybackCardSection playCommands](self, "playCommands"), v49 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection playCommands](v5, "playCommands"), v82 = objc_claimAutoreleasedReturnValue(), v83 = v49, [v49 isEqual:?]))
                      {
                        stopCommands = [(SFAudioPlaybackCardSection *)self stopCommands];
                        stopCommands2 = [(SFAudioPlaybackCardSection *)v5 stopCommands];
                        if ((stopCommands != 0) == (stopCommands2 == 0))
                        {
                          v119[0] = 0;
                          v119[1] = 0;
                          *(v113 + 4) = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          v114[1] = 0x100000001;
                          v114[0] = 0x100000000;
                          LODWORD(v113[0]) = 1;
                          v10 = 1;
                          v11 = 1;
                          v12 = 1;
                          v113[3] = 0x100000001;
                          v13 = 1;
                          HIDWORD(v113[1]) = 0;
                          v113[2] = 1;
                        }

                        else
                        {
                          stopCommands3 = [(SFAudioPlaybackCardSection *)self stopCommands];
                          HIDWORD(v119[1]) = stopCommands3 != 0;
                          v81 = stopCommands3;
                          if (!stopCommands3 || (-[SFAudioPlaybackCardSection stopCommands](self, "stopCommands"), v51 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection stopCommands](v5, "stopCommands"), v77 = objc_claimAutoreleasedReturnValue(), v78 = v51, [v51 isEqual:?]))
                          {
                            detailText = [(SFAudioPlaybackCardSection *)self detailText];
                            detailText2 = [(SFAudioPlaybackCardSection *)v5 detailText];
                            if ((detailText != 0) == (detailText2 == 0))
                            {
                              v14 = 0;
                              *(v119 + 4) = 0;
                              v15 = 0;
                              LODWORD(v119[0]) = 0;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v19 = 0;
                              v114[1] = 0x100000001;
                              v114[0] = 0x100000001;
                              v113[0] = 1;
                              v10 = 1;
                              v11 = 1;
                              v12 = 1;
                              v113[3] = 0x100000001;
                              v13 = 1;
                              v113[2] = 1;
                              v113[1] = 1;
                            }

                            else
                            {
                              detailText3 = [(SFAudioPlaybackCardSection *)self detailText];
                              LODWORD(v119[1]) = detailText3 != 0;
                              v76 = detailText3;
                              if (!detailText3 || (-[SFAudioPlaybackCardSection detailText](self, "detailText"), v53 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection detailText](v5, "detailText"), v72 = objc_claimAutoreleasedReturnValue(), v73 = v53, [v53 isEqual:?]))
                              {
                                title = [(SFAudioPlaybackCardSection *)self title];
                                title2 = [(SFAudioPlaybackCardSection *)v5 title];
                                if ((title != 0) == (title2 == 0))
                                {
                                  v119[0] = 0;
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v19 = 0;
                                  v114[1] = 0x100000001;
                                  v114[0] = 0x100000001;
                                  v113[0] = 0x100000001;
                                  v10 = 1;
                                  v11 = 1;
                                  v12 = 1;
                                  v113[3] = 0x100000001;
                                  v13 = 1;
                                  v113[2] = 1;
                                  v113[1] = 1;
                                  v14 = 1;
                                }

                                else
                                {
                                  title3 = [(SFAudioPlaybackCardSection *)self title];
                                  HIDWORD(v119[0]) = title3 != 0;
                                  v71 = title3;
                                  if (!title3 || (-[SFAudioPlaybackCardSection title](self, "title"), v55 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection title](v5, "title"), v67 = objc_claimAutoreleasedReturnValue(), v68 = v55, [v55 isEqual:?]))
                                  {
                                    subtitle = [(SFAudioPlaybackCardSection *)self subtitle];
                                    subtitle2 = [(SFAudioPlaybackCardSection *)v5 subtitle];
                                    if ((subtitle != 0) == (subtitle2 == 0))
                                    {
                                      v15 = 0;
                                      LODWORD(v119[0]) = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v19 = 0;
                                      v114[1] = 0x100000001;
                                      v113[3] = 0x100000001;
                                      v113[0] = 0x100000001;
                                      v10 = 1;
                                      v11 = 1;
                                      v12 = 1;
                                      v13 = 1;
                                      v114[0] = 0x100000001;
                                      v113[2] = 0x100000001;
                                      v113[1] = 0x100000001;
                                      v14 = 1;
                                    }

                                    else
                                    {
                                      subtitle3 = [(SFAudioPlaybackCardSection *)self subtitle];
                                      LODWORD(v119[0]) = subtitle3 != 0;
                                      v66 = subtitle3;
                                      if (!subtitle3 || (-[SFAudioPlaybackCardSection subtitle](self, "subtitle"), v57 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection subtitle](v5, "subtitle"), v62 = objc_claimAutoreleasedReturnValue(), v63 = v57, [v57 isEqual:?]))
                                      {
                                        thumbnail = [(SFAudioPlaybackCardSection *)self thumbnail];
                                        thumbnail2 = [(SFAudioPlaybackCardSection *)v5 thumbnail];
                                        if ((thumbnail != 0) == (thumbnail2 == 0))
                                        {
                                          v17 = 0;
                                          v18 = 0;
                                          v19 = 0;
                                          v114[1] = 0x100000001;
                                          v113[3] = 0x100000001;
                                          v113[0] = 0x100000001;
                                          v10 = 1;
                                          v11 = 1;
                                          v12 = 1;
                                          v13 = 1;
                                          v114[0] = 0x100000001;
                                          v113[2] = 0x100000001;
                                          v113[1] = 0x100000001;
                                          v14 = 1;
                                          v15 = 1;
                                          v16 = 1;
                                        }

                                        else
                                        {
                                          thumbnail3 = [(SFAudioPlaybackCardSection *)self thumbnail];
                                          if (thumbnail3)
                                          {
                                            thumbnail4 = [(SFAudioPlaybackCardSection *)self thumbnail];
                                            thumbnail5 = [(SFAudioPlaybackCardSection *)v5 thumbnail];
                                            v60 = thumbnail4;
                                            v19 = [thumbnail4 isEqual:thumbnail5];
                                            v6 = thumbnail5;
                                            v18 = 1;
                                            v114[1] = 0x100000001;
                                            v113[3] = 0x100000001;
                                            v113[0] = 0x100000001;
                                            v10 = 1;
                                            v11 = 1;
                                            v12 = 1;
                                            v13 = 1;
                                            v114[0] = 0x100000001;
                                            v113[2] = 0x100000001;
                                            v113[1] = 0x100000001;
                                            v14 = 1;
                                            v15 = 1;
                                            v16 = 1;
                                            v17 = 1;
                                          }

                                          else
                                          {
                                            thumbnail3 = 0;
                                            v18 = 0;
                                            v114[1] = 0x100000001;
                                            v113[3] = 0x100000001;
                                            v113[0] = 0x100000001;
                                            v10 = 1;
                                            v11 = 1;
                                            v12 = 1;
                                            v13 = 1;
                                            v114[0] = 0x100000001;
                                            v113[2] = 0x100000001;
                                            v113[1] = 0x100000001;
                                            v14 = 1;
                                            v15 = 1;
                                            v16 = 1;
                                            v17 = 1;
                                            v19 = 1;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v16 = 0;
                                        v17 = 0;
                                        v18 = 0;
                                        v19 = 0;
                                        v114[1] = 0x100000001;
                                        v113[3] = 0x100000001;
                                        v113[0] = 0x100000001;
                                        v10 = 1;
                                        v11 = 1;
                                        v12 = 1;
                                        v13 = 1;
                                        v114[0] = 0x100000001;
                                        v113[2] = 0x100000001;
                                        v113[1] = 0x100000001;
                                        v14 = 1;
                                        v15 = 1;
                                        LODWORD(v119[0]) = 1;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v15 = 0;
                                    v119[0] = 0x100000000;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    v114[1] = 0x100000001;
                                    v113[3] = 0x100000001;
                                    v113[0] = 0x100000001;
                                    v10 = 1;
                                    v11 = 1;
                                    v12 = 1;
                                    v13 = 1;
                                    v114[0] = 0x100000001;
                                    v113[2] = 0x100000001;
                                    v113[1] = 1;
                                    v14 = 1;
                                  }
                                }
                              }

                              else
                              {
                                v119[0] = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                v114[1] = 0x100000001;
                                v114[0] = 0x100000001;
                                v113[0] = 1;
                                v10 = 1;
                                v11 = 1;
                                v12 = 1;
                                v113[3] = 0x100000001;
                                v13 = 1;
                                v113[2] = 1;
                                v113[1] = 1;
                                v14 = 1;
                                LODWORD(v119[1]) = 1;
                              }
                            }
                          }

                          else
                          {
                            *(v113 + 4) = 0;
                            v14 = 0;
                            *(v119 + 4) = 0;
                            v15 = 0;
                            LODWORD(v119[0]) = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            v114[1] = 0x100000001;
                            v114[0] = 0x100000001;
                            LODWORD(v113[0]) = 1;
                            v10 = 1;
                            v11 = 1;
                            v12 = 1;
                            v113[3] = 0x100000001;
                            v13 = 1;
                            HIDWORD(v113[1]) = 0;
                            v113[2] = 1;
                            HIDWORD(v119[1]) = 1;
                          }
                        }
                      }

                      else
                      {
                        v119[0] = 0;
                        v119[1] = 0;
                        memset(v113 + 4, 0, 20);
                        v14 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        v114[1] = 0x100000001;
                        v114[0] = 0x100000000;
                        LODWORD(v113[0]) = 1;
                        v10 = 1;
                        v11 = 1;
                        v12 = 1;
                        v113[3] = 0x100000001;
                        v13 = 1;
                        LODWORD(v119[2]) = 1;
                      }
                    }
                  }

                  else
                  {
                    v13 = 0;
                    v114[0] = 0;
                    memset(v113 + 4, 0, 20);
                    v14 = 0;
                    v15 = 0;
                    memset(v119, 0, 20);
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v114[1] = 0x100000001;
                    LODWORD(v113[0]) = 1;
                    v10 = 1;
                    v11 = 1;
                    v12 = 1;
                    v113[3] = 0x100000001;
                  }
                }

                else
                {
                  v13 = 0;
                  v114[0] = 0;
                  memset(v113 + 4, 0, 20);
                  v14 = 0;
                  v15 = 0;
                  memset(v119, 0, 20);
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v114[1] = 0x100000001;
                  v113[3] = 0x100000001;
                  LODWORD(v113[0]) = 1;
                  v10 = 1;
                  v11 = 1;
                  v12 = 1;
                  HIDWORD(v119[2]) = 1;
                }
              }
            }

            else
            {
              v12 = 0;
              v13 = 0;
              v114[0] = 0;
              memset(v113 + 4, 0, 24);
              v14 = 0;
              memset(v119, 0, sizeof(v119));
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v114[1] = 0x100000001;
              HIDWORD(v113[3]) = 1;
              LODWORD(v113[0]) = 1;
              v10 = 1;
              v11 = 1;
            }
          }

          else
          {
            v12 = 0;
            v13 = 0;
            v114[0] = 0;
            memset(v113 + 4, 0, 24);
            v14 = 0;
            memset(v119, 0, sizeof(v119));
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v114[1] = 0x100000001;
            HIDWORD(v113[3]) = 1;
            LODWORD(v113[0]) = 1;
            v10 = 1;
            v11 = 1;
            LODWORD(v114[2]) = 1;
          }
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v114[0] = 0;
        memset(v113 + 4, 0, 24);
        v14 = 0;
        memset(v119, 0, sizeof(v119));
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        LODWORD(v114[2]) = 0;
        v114[1] = 0x100000001;
        HIDWORD(v113[3]) = 1;
        LODWORD(v113[0]) = 1;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v114[0] = 0;
      memset(v113 + 4, 0, 24);
      v14 = 0;
      memset(v119, 0, sizeof(v119));
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v114[2] = 0x100000000;
      v114[1] = 0x100000001;
      HIDWORD(v113[3]) = 1;
      LODWORD(v113[0]) = 1;
    }
  }

LABEL_16:
  if (v18)
  {
    v111 = equalCopy;
    v23 = v19;
    v24 = v14;
    v25 = v16;
    v26 = v5;
    v27 = v13;
    v28 = v12;
    v29 = v15;
    v30 = v11;
    v31 = v10;
    v32 = v17;

    v33 = v32;
    v10 = v31;
    v11 = v30;
    v15 = v29;
    v12 = v28;
    v13 = v27;
    v5 = v26;
    v16 = v25;
    v14 = v24;
    v19 = v23;
    equalCopy = v111;
    if (!v33)
    {
      goto LABEL_18;
    }
  }

  else if (!v17)
  {
LABEL_18:
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v16)
  {
LABEL_19:
  }

LABEL_20:
  if (LODWORD(v119[0]))
  {
  }

  if (v15)
  {
  }

  if (HIDWORD(v113[1]))
  {
  }

  if (HIDWORD(v119[0]))
  {
  }

  if (HIDWORD(v113[2]))
  {
  }

  if (HIDWORD(v113[0]))
  {
  }

  if (LODWORD(v119[1]))
  {
  }

  if (v14)
  {
  }

  if (LODWORD(v113[1]))
  {
  }

  if (HIDWORD(v119[1]))
  {
  }

  if (LODWORD(v114[0]))
  {
  }

  if (LODWORD(v113[2]))
  {
  }

  if (LODWORD(v119[2]))
  {
  }

  if (HIDWORD(v114[0]))
  {
  }

  if (v13)
  {
  }

  if (HIDWORD(v119[2]))
  {
  }

  if (LODWORD(v113[3]))
  {
  }

  if (v12)
  {
  }

  if (LODWORD(v114[2]))
  {

    if (!v11)
    {
      goto LABEL_58;
    }

LABEL_82:

    if (!v10)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v11)
  {
    goto LABEL_82;
  }

LABEL_58:
  if (v10)
  {
LABEL_59:
  }

LABEL_60:
  if (HIDWORD(v114[2]))
  {
  }

  if (LODWORD(v113[0]))
  {
  }

  if (HIDWORD(v113[3]))
  {
  }

  if (LODWORD(v114[3]))
  {
  }

  if (LODWORD(v114[1]))
  {
  }

  if (HIDWORD(v114[1]))
  {
  }

  if (HIDWORD(v114[3]))
  {
  }

  if (v116 != v115)
  {
  }

LABEL_77:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28.receiver = self;
  v28.super_class = SFAudioPlaybackCardSection;
  v4 = [(SFCardSection *)&v28 copyWithZone:zone];
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
  type = [(SFAudioPlaybackCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  [v4 setState:{-[SFAudioPlaybackCardSection state](self, "state")}];
  playCommands = [(SFAudioPlaybackCardSection *)self playCommands];
  v16 = [playCommands copy];
  [v4 setPlayCommands:v16];

  stopCommands = [(SFAudioPlaybackCardSection *)self stopCommands];
  v18 = [stopCommands copy];
  [v4 setStopCommands:v18];

  detailText = [(SFAudioPlaybackCardSection *)self detailText];
  v20 = [detailText copy];
  [v4 setDetailText:v20];

  title = [(SFAudioPlaybackCardSection *)self title];
  v22 = [title copy];
  [v4 setTitle:v22];

  subtitle = [(SFAudioPlaybackCardSection *)self subtitle];
  v24 = [subtitle copy];
  [v4 setSubtitle:v24];

  thumbnail = [(SFAudioPlaybackCardSection *)self thumbnail];
  v26 = [thumbnail copy];
  [v4 setThumbnail:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAudioPlaybackCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBAudioPlaybackCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAudioPlaybackCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBAudioPlaybackCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFAudioPlaybackCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFAudioPlaybackCardSection)initWithCoder:(id)coder
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
    [(SFAudioPlaybackCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    [(SFAudioPlaybackCardSection *)v5 setState:[(SFCardSection *)v8 state]];
    playCommands = [(SFCardSection *)v8 playCommands];
    [(SFAudioPlaybackCardSection *)v5 setPlayCommands:playCommands];

    stopCommands = [(SFCardSection *)v8 stopCommands];
    [(SFAudioPlaybackCardSection *)v5 setStopCommands:stopCommands];

    detailText = [(SFCardSection *)v8 detailText];
    [(SFAudioPlaybackCardSection *)v5 setDetailText:detailText];

    title = [(SFCardSection *)v8 title];
    [(SFAudioPlaybackCardSection *)v5 setTitle:title];

    subtitle = [(SFCardSection *)v8 subtitle];
    [(SFAudioPlaybackCardSection *)v5 setSubtitle:subtitle];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(SFAudioPlaybackCardSection *)v5 setThumbnail:thumbnail];

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