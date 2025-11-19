@interface SFAudioPlaybackCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAudioPlaybackCardSection)initWithCoder:(id)a3;
- (SFAudioPlaybackCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAudioPlaybackCardSection

- (SFAudioPlaybackCardSection)initWithProtobuf:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v72.receiver = self;
  v72.super_class = SFAudioPlaybackCardSection;
  v5 = [(SFCardSection *)&v72 init];
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

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v68 objects:v75 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v68 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v68 objects:v75 count:16];
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
      [(SFAudioPlaybackCardSection *)v5 setType:v19];
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

    if ([v4 state])
    {
      -[SFAudioPlaybackCardSection setState:](v5, "setState:", [v4 state]);
    }

    v24 = [v4 playCommands];
    if (v24)
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
    v26 = [v4 playCommands];
    v27 = [v26 countByEnumeratingWithState:&v64 objects:v74 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = [[SFAbstractCommand alloc] initWithProtobuf:*(*(&v64 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v28);
    }

    [(SFAudioPlaybackCardSection *)v5 setPlayCommands:v25];
    v32 = [v4 stopCommands];
    v59 = v5;
    if (v32)
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
    v34 = [v4 stopCommands];
    v35 = [v34 countByEnumeratingWithState:&v60 objects:v73 count:16];
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
            objc_enumerationMutation(v34);
          }

          v39 = [[SFAbstractCommand alloc] initWithProtobuf:*(*(&v60 + 1) + 8 * k)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v36);
    }

    v5 = v59;
    [(SFAudioPlaybackCardSection *)v59 setStopCommands:v33];
    v40 = [v4 detailText];

    if (v40)
    {
      v41 = [SFRichText alloc];
      v42 = [v4 detailText];
      v43 = [(SFRichText *)v41 initWithProtobuf:v42];
      [(SFAudioPlaybackCardSection *)v59 setDetailText:v43];
    }

    v44 = [v4 title];

    if (v44)
    {
      v45 = [SFRichText alloc];
      v46 = [v4 title];
      v47 = [(SFRichText *)v45 initWithProtobuf:v46];
      [(SFAudioPlaybackCardSection *)v59 setTitle:v47];
    }

    v48 = [v4 subtitle];

    if (v48)
    {
      v49 = [SFRichText alloc];
      v50 = [v4 subtitle];
      v51 = [(SFRichText *)v49 initWithProtobuf:v50];
      [(SFAudioPlaybackCardSection *)v59 setSubtitle:v51];
    }

    v52 = [v4 thumbnail];

    if (v52)
    {
      v53 = [SFImage alloc];
      v54 = [v4 thumbnail];
      v55 = [(SFImage *)v53 initWithProtobuf:v54];
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
  v31 = [(SFCardSection *)self punchoutOptions];
  v4 = [v31 hash];
  v30 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v30 hash];
  v6 = [(SFCardSection *)self punchoutPickerDismissText];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(SFCardSection *)self canBeHidden];
  v9 = v8 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v10 = [(SFCardSection *)self hasBottomPadding];
  v11 = [(SFAudioPlaybackCardSection *)self type];
  v12 = v10 ^ [v11 hash];
  v13 = v12 ^ [(SFCardSection *)self separatorStyle];
  v14 = [(SFCardSection *)self backgroundColor];
  v15 = v13 ^ [v14 hash];
  v29 = v9 ^ v15 ^ [(SFAudioPlaybackCardSection *)self state];
  v16 = [(SFAudioPlaybackCardSection *)self playCommands];
  v17 = [v16 hash];
  v18 = [(SFAudioPlaybackCardSection *)self stopCommands];
  v19 = v17 ^ [v18 hash];
  v20 = [(SFAudioPlaybackCardSection *)self detailText];
  v21 = v19 ^ [v20 hash];
  v22 = [(SFAudioPlaybackCardSection *)self title];
  v23 = v21 ^ [v22 hash];
  v24 = [(SFAudioPlaybackCardSection *)self subtitle];
  v25 = v23 ^ [v24 hash];
  v26 = [(SFAudioPlaybackCardSection *)self thumbnail];
  v27 = v25 ^ [v26 hash];

  return v29 ^ v27;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_77;
  }

  if (![(SFAudioPlaybackCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v120.receiver = self, v120.super_class = SFAudioPlaybackCardSection, ![(SFCardSection *)&v120 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_77;
  }

  v5 = v4;
  v118 = [(SFCardSection *)self punchoutOptions];
  v117 = [(SFCardSection *)v5 punchoutOptions];
  v115 = v117 == 0;
  v116 = v118 != 0;
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

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v112 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v107 = v108 = v9;
    if (![v9 isEqual:?])
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

  v110 = [(SFCardSection *)self punchoutPickerTitle];
  v109 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v114[3]) = v8;
  if ((v110 != 0) == (v109 == 0))
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

  v20 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = v20 != 0;
  v106 = v20;
  if (v20)
  {
    v22 = [(SFCardSection *)self punchoutPickerTitle];
    v102 = [(SFCardSection *)v5 punchoutPickerTitle];
    v103 = v22;
    if (![v22 isEqual:?])
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

  v105 = [(SFCardSection *)self punchoutPickerDismissText];
  v104 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((v105 != 0) == (v104 == 0))
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
    v35 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = v35 != 0;
    v101 = v35;
    if (!v35 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v99 = objc_claimAutoreleasedReturnValue(), v100 = v37, [v37 isEqual:?]))
    {
      v38 = [(SFCardSection *)self canBeHidden];
      HIDWORD(v114[2]) = v36;
      if (v38 == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        v98 = [(SFAudioPlaybackCardSection *)self type];
        v97 = [(SFAudioPlaybackCardSection *)v5 type];
        if ((v98 != 0) == (v97 == 0))
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
          v41 = [(SFAudioPlaybackCardSection *)self type];
          v42 = v41 != 0;
          v96 = v41;
          if (!v41 || (-[SFAudioPlaybackCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection type](v5, "type"), v94 = objc_claimAutoreleasedReturnValue(), v95 = v43, [v43 isEqual:?]))
          {
            LODWORD(v114[2]) = v42;
            v44 = [(SFCardSection *)self separatorStyle];
            if (v44 == [(SFCardSection *)v5 separatorStyle])
            {
              v93 = [(SFCardSection *)self backgroundColor];
              v92 = [(SFCardSection *)v5 backgroundColor];
              if ((v93 != 0) == (v92 == 0))
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
                v45 = [(SFCardSection *)self backgroundColor];
                HIDWORD(v119[2]) = v45 != 0;
                v91 = v45;
                if (!v45 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v89 = objc_claimAutoreleasedReturnValue(), v90 = v46, [v46 isEqual:?]))
                {
                  v47 = [(SFAudioPlaybackCardSection *)self state];
                  if (v47 == [(SFAudioPlaybackCardSection *)v5 state])
                  {
                    v88 = [(SFAudioPlaybackCardSection *)self playCommands];
                    v87 = [(SFAudioPlaybackCardSection *)v5 playCommands];
                    if ((v88 != 0) == (v87 == 0))
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
                      v48 = [(SFAudioPlaybackCardSection *)self playCommands];
                      LODWORD(v119[2]) = v48 != 0;
                      v86 = v48;
                      if (!v48 || (-[SFAudioPlaybackCardSection playCommands](self, "playCommands"), v49 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection playCommands](v5, "playCommands"), v82 = objc_claimAutoreleasedReturnValue(), v83 = v49, [v49 isEqual:?]))
                      {
                        v85 = [(SFAudioPlaybackCardSection *)self stopCommands];
                        v84 = [(SFAudioPlaybackCardSection *)v5 stopCommands];
                        if ((v85 != 0) == (v84 == 0))
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
                          v50 = [(SFAudioPlaybackCardSection *)self stopCommands];
                          HIDWORD(v119[1]) = v50 != 0;
                          v81 = v50;
                          if (!v50 || (-[SFAudioPlaybackCardSection stopCommands](self, "stopCommands"), v51 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection stopCommands](v5, "stopCommands"), v77 = objc_claimAutoreleasedReturnValue(), v78 = v51, [v51 isEqual:?]))
                          {
                            v80 = [(SFAudioPlaybackCardSection *)self detailText];
                            v79 = [(SFAudioPlaybackCardSection *)v5 detailText];
                            if ((v80 != 0) == (v79 == 0))
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
                              v52 = [(SFAudioPlaybackCardSection *)self detailText];
                              LODWORD(v119[1]) = v52 != 0;
                              v76 = v52;
                              if (!v52 || (-[SFAudioPlaybackCardSection detailText](self, "detailText"), v53 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection detailText](v5, "detailText"), v72 = objc_claimAutoreleasedReturnValue(), v73 = v53, [v53 isEqual:?]))
                              {
                                v75 = [(SFAudioPlaybackCardSection *)self title];
                                v74 = [(SFAudioPlaybackCardSection *)v5 title];
                                if ((v75 != 0) == (v74 == 0))
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
                                  v54 = [(SFAudioPlaybackCardSection *)self title];
                                  HIDWORD(v119[0]) = v54 != 0;
                                  v71 = v54;
                                  if (!v54 || (-[SFAudioPlaybackCardSection title](self, "title"), v55 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection title](v5, "title"), v67 = objc_claimAutoreleasedReturnValue(), v68 = v55, [v55 isEqual:?]))
                                  {
                                    v70 = [(SFAudioPlaybackCardSection *)self subtitle];
                                    v69 = [(SFAudioPlaybackCardSection *)v5 subtitle];
                                    if ((v70 != 0) == (v69 == 0))
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
                                      v56 = [(SFAudioPlaybackCardSection *)self subtitle];
                                      LODWORD(v119[0]) = v56 != 0;
                                      v66 = v56;
                                      if (!v56 || (-[SFAudioPlaybackCardSection subtitle](self, "subtitle"), v57 = objc_claimAutoreleasedReturnValue(), -[SFAudioPlaybackCardSection subtitle](v5, "subtitle"), v62 = objc_claimAutoreleasedReturnValue(), v63 = v57, [v57 isEqual:?]))
                                      {
                                        v65 = [(SFAudioPlaybackCardSection *)self thumbnail];
                                        v64 = [(SFAudioPlaybackCardSection *)v5 thumbnail];
                                        if ((v65 != 0) == (v64 == 0))
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
                                          v61 = [(SFAudioPlaybackCardSection *)self thumbnail];
                                          if (v61)
                                          {
                                            v58 = [(SFAudioPlaybackCardSection *)self thumbnail];
                                            v59 = [(SFAudioPlaybackCardSection *)v5 thumbnail];
                                            v60 = v58;
                                            v19 = [v58 isEqual:v59];
                                            v6 = v59;
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
                                            v61 = 0;
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
    v111 = v4;
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
    v4 = v111;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v28.receiver = self;
  v28.super_class = SFAudioPlaybackCardSection;
  v4 = [(SFCardSection *)&v28 copyWithZone:a3];
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
  v11 = [(SFAudioPlaybackCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  [v4 setState:{-[SFAudioPlaybackCardSection state](self, "state")}];
  v15 = [(SFAudioPlaybackCardSection *)self playCommands];
  v16 = [v15 copy];
  [v4 setPlayCommands:v16];

  v17 = [(SFAudioPlaybackCardSection *)self stopCommands];
  v18 = [v17 copy];
  [v4 setStopCommands:v18];

  v19 = [(SFAudioPlaybackCardSection *)self detailText];
  v20 = [v19 copy];
  [v4 setDetailText:v20];

  v21 = [(SFAudioPlaybackCardSection *)self title];
  v22 = [v21 copy];
  [v4 setTitle:v22];

  v23 = [(SFAudioPlaybackCardSection *)self subtitle];
  v24 = [v23 copy];
  [v4 setSubtitle:v24];

  v25 = [(SFAudioPlaybackCardSection *)self thumbnail];
  v26 = [v25 copy];
  [v4 setThumbnail:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAudioPlaybackCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBAudioPlaybackCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAudioPlaybackCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBAudioPlaybackCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFAudioPlaybackCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFAudioPlaybackCardSection)initWithCoder:(id)a3
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
    [(SFAudioPlaybackCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    [(SFAudioPlaybackCardSection *)v5 setState:[(SFCardSection *)v8 state]];
    v14 = [(SFCardSection *)v8 playCommands];
    [(SFAudioPlaybackCardSection *)v5 setPlayCommands:v14];

    v15 = [(SFCardSection *)v8 stopCommands];
    [(SFAudioPlaybackCardSection *)v5 setStopCommands:v15];

    v16 = [(SFCardSection *)v8 detailText];
    [(SFAudioPlaybackCardSection *)v5 setDetailText:v16];

    v17 = [(SFCardSection *)v8 title];
    [(SFAudioPlaybackCardSection *)v5 setTitle:v17];

    v18 = [(SFCardSection *)v8 subtitle];
    [(SFAudioPlaybackCardSection *)v5 setSubtitle:v18];

    v19 = [(SFCardSection *)v8 thumbnail];
    [(SFAudioPlaybackCardSection *)v5 setThumbnail:v19];

    v20 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v20];

    v21 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v21];

    v22 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v22];

    v23 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v23];

    v24 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v24];

    v25 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v25];

    v26 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v26];

    v27 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v27];

    v28 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v28];

    v29 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v29];

    v30 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v30];

    v31 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v31];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v32 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v32];

    v33 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v33];

    v34 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v34];

    v35 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v35];

    v36 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v36];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v37 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v37];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v38 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v38];

    v39 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v39];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v40 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v40];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v41 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v41];

    v42 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v42];

    v43 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v43];

    v44 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v44];
  }

  return v5;
}

@end