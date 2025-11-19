@interface SFScoreboardCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFScoreboardCardSection)initWithCoder:(id)a3;
- (SFScoreboardCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFScoreboardCardSection

- (SFScoreboardCardSection)initWithProtobuf:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = SFScoreboardCardSection;
  v5 = [(SFCardSection *)&v47 init];
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

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v43 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
      [(SFTitleCardSection *)v5 setType:v19];
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

    v24 = [v4 title];

    if (v24)
    {
      v25 = [v4 title];
      [(SFTitleCardSection *)v5 setTitle:v25];
    }

    v26 = [v4 subtitle];

    if (v26)
    {
      v27 = [v4 subtitle];
      [(SFTitleCardSection *)v5 setSubtitle:v27];
    }

    v28 = [v4 team1];

    if (v28)
    {
      v29 = [SFSportsTeam alloc];
      v30 = [v4 team1];
      v31 = [(SFSportsTeam *)v29 initWithProtobuf:v30];
      [(SFScoreboardCardSection *)v5 setTeam1:v31];
    }

    v32 = [v4 team2];

    if (v32)
    {
      v33 = [SFSportsTeam alloc];
      v34 = [v4 team2];
      v35 = [(SFSportsTeam *)v33 initWithProtobuf:v34];
      [(SFScoreboardCardSection *)v5 setTeam2:v35];
    }

    v36 = [v4 accessibilityDescription];

    if (v36)
    {
      v37 = [v4 accessibilityDescription];
      [(SFScoreboardCardSection *)v5 setAccessibilityDescription:v37];
    }

    v38 = [v4 eventStatus];

    if (v38)
    {
      v39 = [v4 eventStatus];
      [(SFScoreboardCardSection *)v5 setEventStatus:v39];
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v31.receiver = self;
  v31.super_class = SFScoreboardCardSection;
  v3 = [(SFTitleCardSection *)&v31 hash];
  v30 = [(SFCardSection *)self punchoutOptions];
  v4 = [v30 hash];
  v29 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v29 hash];
  v6 = [(SFCardSection *)self punchoutPickerDismissText];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(SFCardSection *)self canBeHidden];
  v9 = v8 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v10 = [(SFCardSection *)self hasBottomPadding];
  v11 = [(SFTitleCardSection *)self type];
  v12 = v10 ^ [v11 hash];
  v13 = v12 ^ [(SFCardSection *)self separatorStyle];
  v14 = [(SFCardSection *)self backgroundColor];
  v15 = v13 ^ [v14 hash];
  v16 = [(SFTitleCardSection *)self title];
  v28 = v9 ^ v15 ^ [v16 hash];
  v17 = [(SFTitleCardSection *)self subtitle];
  v18 = [v17 hash];
  v19 = [(SFScoreboardCardSection *)self team1];
  v20 = v18 ^ [v19 hash];
  v21 = [(SFScoreboardCardSection *)self team2];
  v22 = v20 ^ [v21 hash];
  v23 = [(SFScoreboardCardSection *)self accessibilityDescription];
  v24 = v22 ^ [v23 hash];
  v25 = [(SFScoreboardCardSection *)self eventStatus];
  v26 = v24 ^ [v25 hash];

  return v28 ^ v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_79;
  }

  if (![(SFScoreboardCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v121.receiver = self, v121.super_class = SFScoreboardCardSection, ![(SFTitleCardSection *)&v121 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_79;
  }

  v5 = v4;
  v116 = [(SFCardSection *)self punchoutOptions];
  v115 = [(SFCardSection *)v5 punchoutOptions];
  v113 = v115 == 0;
  v114 = v116 != 0;
  if (v114 == v113)
  {
    v112 = 0uLL;
    v118 = 0;
    memset(v119, 0, sizeof(v119));
    v117 = 0uLL;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v120, 0, sizeof(v120));
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v111 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v106 = v107 = v9;
    if (![v9 isEqual:?])
    {
      *(&v112 + 4) = 0;
      v118 = 0;
      memset(v119, 0, sizeof(v119));
      v117 = 0uLL;
      LODWORD(v112) = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      memset(v120, 0, sizeof(v120));
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      HIDWORD(v112) = 1;
      goto LABEL_16;
    }
  }

  v109 = [(SFCardSection *)self punchoutPickerTitle];
  v108 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v112) = v8;
  if ((v109 != 0) == (v108 == 0))
  {
    *(&v112 + 4) = 0;
    v118 = 0;
    memset(v119, 0, 20);
    v117 = 0uLL;
    LODWORD(v112) = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v120, 0, sizeof(v120));
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    HIDWORD(v119[2]) = 1;
    goto LABEL_16;
  }

  v20 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = v20 != 0;
  v105 = v20;
  if (v20)
  {
    v22 = [(SFCardSection *)self punchoutPickerTitle];
    v101 = [(SFCardSection *)v5 punchoutPickerTitle];
    v102 = v22;
    if (![v22 isEqual:?])
    {
      v119[0] = 0;
      v119[1] = 0;
      v117 = 0uLL;
      *&v112 = 0;
      v10 = 0;
      v118 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      memset(v120, 0, sizeof(v120));
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v119[2] = 0x100000001;
      DWORD2(v112) = 1;
      goto LABEL_16;
    }

    DWORD2(v112) = v21;
  }

  else
  {
    DWORD2(v112) = 0;
  }

  v104 = [(SFCardSection *)self punchoutPickerDismissText];
  v103 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((v104 != 0) == (v103 == 0))
  {
    v117 = 0uLL;
    *&v112 = 0;
    *(v119 + 4) = 0;
    v10 = 0;
    v118 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v120, 0, sizeof(v120));
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    HIDWORD(v119[1]) = 0;
    v119[2] = 0x100000001;
    LODWORD(v119[0]) = 1;
  }

  else
  {
    v35 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = v35 != 0;
    v100 = v35;
    if (!v35 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v98 = objc_claimAutoreleasedReturnValue(), v99 = v37, [v37 isEqual:?]))
    {
      v38 = [(SFCardSection *)self canBeHidden];
      DWORD1(v112) = v36;
      if (v38 == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        v97 = [(SFTitleCardSection *)self type];
        v96 = [(SFTitleCardSection *)v5 type];
        if ((v97 != 0) == (v96 == 0))
        {
          v119[1] = 0;
          LODWORD(v112) = 0;
          v10 = 0;
          v118 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          memset(v120, 0, sizeof(v120));
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v119[2] = 0x100000001;
          v119[0] = 0x100000001;
          v117 = 1uLL;
        }

        else
        {
          v41 = [(SFTitleCardSection *)self type];
          v42 = v41 != 0;
          v95 = v41;
          if (!v41 || (-[SFTitleCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection type](v5, "type"), v93 = objc_claimAutoreleasedReturnValue(), v94 = v43, [v43 isEqual:?]))
          {
            LODWORD(v112) = v42;
            v44 = [(SFCardSection *)self separatorStyle];
            if (v44 == [(SFCardSection *)v5 separatorStyle])
            {
              v92 = [(SFCardSection *)self backgroundColor];
              v91 = [(SFCardSection *)v5 backgroundColor];
              if ((v92 != 0) == (v91 == 0))
              {
                v118 = 0;
                v11 = 0;
                v12 = 0;
                v13 = 0;
                v14 = 0;
                memset(v120, 0, sizeof(v120));
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v119[2] = 0x100000001;
                v119[0] = 0x100000001;
                v117 = 1uLL;
                v119[1] = 1;
                v10 = 1;
              }

              else
              {
                v45 = [(SFCardSection *)self backgroundColor];
                HIDWORD(v120[2]) = v45 != 0;
                v90 = v45;
                if (!v45 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v86 = objc_claimAutoreleasedReturnValue(), v87 = v46, [v46 isEqual:?]))
                {
                  v89 = [(SFTitleCardSection *)self title];
                  v88 = [(SFTitleCardSection *)v5 title];
                  if ((v89 != 0) == (v88 == 0))
                  {
                    v11 = 0;
                    v12 = 0;
                    v13 = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    memset(v120, 0, 20);
                    v119[2] = 0x100000001;
                    v119[0] = 0x100000001;
                    v117 = 1uLL;
                    v119[1] = 0x100000001;
                    v10 = 1;
                    v118 = 0x100000000;
                  }

                  else
                  {
                    v47 = [(SFTitleCardSection *)self title];
                    LODWORD(v120[2]) = v47 != 0;
                    v85 = v47;
                    if (!v47 || (-[SFTitleCardSection title](self, "title"), v48 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection title](v5, "title"), v81 = objc_claimAutoreleasedReturnValue(), v82 = v48, [v48 isEqual:?]))
                    {
                      v84 = [(SFTitleCardSection *)self subtitle];
                      v83 = [(SFTitleCardSection *)v5 subtitle];
                      if ((v84 != 0) == (v83 == 0))
                      {
                        v12 = 0;
                        v120[0] = 0;
                        v120[1] = 0;
                        *(&v117 + 4) = 0;
                        v13 = 0;
                        v14 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        v119[2] = 0x100000001;
                        v119[0] = 0x100000001;
                        LODWORD(v117) = 1;
                        v119[1] = 0x100000001;
                        v10 = 1;
                        v118 = 0x100000000;
                        v11 = 1;
                        HIDWORD(v117) = 1;
                      }

                      else
                      {
                        v49 = [(SFTitleCardSection *)self subtitle];
                        HIDWORD(v120[1]) = v49 != 0;
                        v80 = v49;
                        if (!v49 || (-[SFTitleCardSection subtitle](self, "subtitle"), v50 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection subtitle](v5, "subtitle"), v76 = objc_claimAutoreleasedReturnValue(), v77 = v50, [v50 isEqual:?]))
                        {
                          v79 = [(SFScoreboardCardSection *)self team1];
                          v78 = [(SFScoreboardCardSection *)v5 team1];
                          if ((v79 != 0) == (v78 == 0))
                          {
                            v13 = 0;
                            *(v120 + 4) = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            LODWORD(v120[0]) = 0;
                            v119[2] = 0x100000001;
                            v119[0] = 0x100000001;
                            *&v117 = 0x100000001;
                            v119[1] = 0x100000001;
                            v10 = 1;
                            v118 = 0x100000000;
                            v11 = 1;
                            *(&v117 + 1) = 0x100000000;
                            v12 = 1;
                          }

                          else
                          {
                            v51 = [(SFScoreboardCardSection *)self team1];
                            LODWORD(v120[1]) = v51 != 0;
                            v75 = v51;
                            if (!v51 || (-[SFScoreboardCardSection team1](self, "team1"), v52 = objc_claimAutoreleasedReturnValue(), -[SFScoreboardCardSection team1](v5, "team1"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v52, [v52 isEqual:?]))
                            {
                              v74 = [(SFScoreboardCardSection *)self team2];
                              v73 = [(SFScoreboardCardSection *)v5 team2];
                              if ((v74 != 0) == (v73 == 0))
                              {
                                v14 = 0;
                                v120[0] = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                v119[2] = 0x100000001;
                                v119[0] = 0x100000001;
                                LODWORD(v117) = 1;
                                *(&v117 + 4) = 0x100000001;
                                v119[1] = 0x100000001;
                                v10 = 1;
                                v118 = 0x100000000;
                                v11 = 1;
                                HIDWORD(v117) = 1;
                                v12 = 1;
                                v13 = 1;
                              }

                              else
                              {
                                v53 = [(SFScoreboardCardSection *)self team2];
                                HIDWORD(v120[0]) = v53 != 0;
                                v70 = v53;
                                if (!v53 || (-[SFScoreboardCardSection team2](self, "team2"), v54 = objc_claimAutoreleasedReturnValue(), -[SFScoreboardCardSection team2](v5, "team2"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v54, [v54 isEqual:?]))
                                {
                                  v69 = [(SFScoreboardCardSection *)self accessibilityDescription];
                                  v68 = [(SFScoreboardCardSection *)v5 accessibilityDescription];
                                  if ((v69 != 0) == (v68 == 0))
                                  {
                                    v15 = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    LODWORD(v120[0]) = 0;
                                    v119[2] = 0x100000001;
                                    v119[0] = 0x100000001;
                                    *&v117 = 0x100000001;
                                    v119[1] = 0x100000001;
                                    v10 = 1;
                                    v11 = 1;
                                    *(&v117 + 1) = 0x100000001;
                                    v12 = 1;
                                    v13 = 1;
                                    v14 = 1;
                                    v118 = 0x100000001;
                                  }

                                  else
                                  {
                                    v55 = [(SFScoreboardCardSection *)self accessibilityDescription];
                                    LODWORD(v120[0]) = v55 != 0;
                                    v65 = v55;
                                    if (!v55 || (-[SFScoreboardCardSection accessibilityDescription](self, "accessibilityDescription"), v56 = objc_claimAutoreleasedReturnValue(), -[SFScoreboardCardSection accessibilityDescription](v5, "accessibilityDescription"), v61 = objc_claimAutoreleasedReturnValue(), v62 = v56, [v56 isEqual:?]))
                                    {
                                      v64 = [(SFScoreboardCardSection *)self eventStatus];
                                      v63 = [(SFScoreboardCardSection *)v5 eventStatus];
                                      if ((v64 != 0) == (v63 == 0))
                                      {
                                        v17 = 0;
                                        v18 = 0;
                                        v19 = 0;
                                        v119[2] = 0x100000001;
                                        v119[0] = 0x100000001;
                                        *&v117 = 0x100000001;
                                        v119[1] = 0x100000001;
                                        v10 = 1;
                                        v118 = 0x100000001;
                                        v11 = 1;
                                        *(&v117 + 1) = 0x100000001;
                                        v12 = 1;
                                        v13 = 1;
                                        v14 = 1;
                                        v15 = 1;
                                        v16 = 1;
                                      }

                                      else
                                      {
                                        v60 = [(SFScoreboardCardSection *)self eventStatus];
                                        if (v60)
                                        {
                                          v57 = [(SFScoreboardCardSection *)self eventStatus];
                                          v58 = [(SFScoreboardCardSection *)v5 eventStatus];
                                          v59 = v57;
                                          v19 = [v57 isEqual:v58];
                                          v6 = v58;
                                          v18 = 1;
                                          v119[2] = 0x100000001;
                                          v119[0] = 0x100000001;
                                          *&v117 = 0x100000001;
                                          v119[1] = 0x100000001;
                                          v10 = 1;
                                          v118 = 0x100000001;
                                          v11 = 1;
                                          *(&v117 + 1) = 0x100000001;
                                          v12 = 1;
                                          v13 = 1;
                                          v14 = 1;
                                          v15 = 1;
                                          v16 = 1;
                                          v17 = 1;
                                        }

                                        else
                                        {
                                          v60 = 0;
                                          v18 = 0;
                                          v119[2] = 0x100000001;
                                          v119[0] = 0x100000001;
                                          *&v117 = 0x100000001;
                                          v119[1] = 0x100000001;
                                          v10 = 1;
                                          v118 = 0x100000001;
                                          v11 = 1;
                                          *(&v117 + 1) = 0x100000001;
                                          v12 = 1;
                                          v13 = 1;
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
                                      v119[2] = 0x100000001;
                                      v119[0] = 0x100000001;
                                      *&v117 = 0x100000001;
                                      v119[1] = 0x100000001;
                                      v10 = 1;
                                      v118 = 0x100000001;
                                      v11 = 1;
                                      *(&v117 + 1) = 0x100000001;
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
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v19 = 0;
                                  v120[0] = 0x100000000;
                                  v119[2] = 0x100000001;
                                  v119[0] = 0x100000001;
                                  *&v117 = 0x100000001;
                                  v119[1] = 0x100000001;
                                  v10 = 1;
                                  v118 = 0x100000000;
                                  v11 = 1;
                                  *(&v117 + 1) = 0x100000001;
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
                              v119[2] = 0x100000001;
                              v119[0] = 0x100000001;
                              *&v117 = 0x100000001;
                              v119[1] = 0x100000001;
                              v10 = 1;
                              v118 = 0x100000000;
                              v11 = 1;
                              *(&v117 + 1) = 0x100000000;
                              v12 = 1;
                              v13 = 1;
                              LODWORD(v120[1]) = 1;
                            }
                          }
                        }

                        else
                        {
                          *(&v117 + 4) = 0;
                          v13 = 0;
                          *(v120 + 4) = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          LODWORD(v120[0]) = 0;
                          v119[2] = 0x100000001;
                          v119[0] = 0x100000001;
                          LODWORD(v117) = 1;
                          v119[1] = 0x100000001;
                          v10 = 1;
                          v118 = 0x100000000;
                          v11 = 1;
                          HIDWORD(v117) = 1;
                          v12 = 1;
                          HIDWORD(v120[1]) = 1;
                        }
                      }
                    }

                    else
                    {
                      v12 = 0;
                      v120[0] = 0;
                      v120[1] = 0;
                      v13 = 0;
                      v14 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      v119[2] = 0x100000001;
                      v119[0] = 0x100000001;
                      v117 = 1uLL;
                      v119[1] = 0x100000001;
                      v10 = 1;
                      v118 = 0x100000000;
                      v11 = 1;
                      LODWORD(v120[2]) = 1;
                    }
                  }
                }

                else
                {
                  v118 = 0;
                  v11 = 0;
                  v12 = 0;
                  v13 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  memset(v120, 0, 20);
                  v119[2] = 0x100000001;
                  v119[0] = 0x100000001;
                  v117 = 1uLL;
                  v119[1] = 0x100000001;
                  v10 = 1;
                  HIDWORD(v120[2]) = 1;
                }
              }
            }

            else
            {
              v10 = 0;
              v118 = 0;
              v11 = 0;
              v12 = 0;
              v13 = 0;
              v14 = 0;
              memset(v120, 0, sizeof(v120));
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v119[2] = 0x100000001;
              v119[0] = 0x100000001;
              v117 = 1uLL;
              v119[1] = 1;
            }
          }

          else
          {
            v10 = 0;
            v118 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            memset(v120, 0, sizeof(v120));
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v119[2] = 0x100000001;
            v119[0] = 0x100000001;
            v117 = 1uLL;
            v119[1] = 1;
            LODWORD(v112) = 1;
          }
        }
      }

      else
      {
        *(v119 + 4) = 0;
        LODWORD(v112) = 0;
        v10 = 0;
        v118 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        memset(v120, 0, sizeof(v120));
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        HIDWORD(v119[1]) = 0;
        v119[2] = 0x100000001;
        LODWORD(v119[0]) = 1;
        v117 = 1uLL;
      }
    }

    else
    {
      *(v119 + 4) = 0;
      *&v112 = 0x100000000;
      v10 = 0;
      v118 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      memset(v120, 0, sizeof(v120));
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      HIDWORD(v119[1]) = 0;
      v119[2] = 0x100000001;
      LODWORD(v119[0]) = 1;
      v117 = 1uLL;
    }
  }

LABEL_16:
  if (v18)
  {
    v110 = v4;
    v23 = v19;
    v24 = v13;
    v25 = v14;
    v26 = v5;
    v27 = v16;
    v28 = v12;
    v29 = v15;
    v30 = v10;
    v31 = v11;
    v32 = v17;

    v33 = v32;
    v11 = v31;
    v10 = v30;
    v15 = v29;
    v12 = v28;
    v16 = v27;
    v5 = v26;
    v14 = v25;
    v13 = v24;
    v19 = v23;
    v4 = v110;
    if (!v33)
    {
      goto LABEL_18;
    }

LABEL_81:

    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v17)
  {
    goto LABEL_81;
  }

LABEL_18:
  if (v16)
  {
LABEL_19:
  }

LABEL_20:
  if (LODWORD(v120[0]))
  {
  }

  if (v15)
  {
  }

  if (v118)
  {
  }

  if (HIDWORD(v120[0]))
  {
  }

  if (v14)
  {
  }

  if (DWORD2(v117))
  {
  }

  if (LODWORD(v120[1]))
  {
  }

  if (v13)
  {
  }

  if (DWORD1(v117))
  {
  }

  if (HIDWORD(v120[1]))
  {
  }

  if (v12)
  {
  }

  if (HIDWORD(v117))
  {
  }

  if (LODWORD(v120[2]))
  {
  }

  if (v11)
  {
  }

  if (HIDWORD(v118))
  {
  }

  if (HIDWORD(v120[2]))
  {
  }

  if (HIDWORD(v119[1]))
  {
  }

  if (v10)
  {
  }

  if (v112)
  {
  }

  if (LODWORD(v119[1]))
  {
  }

  if (HIDWORD(v119[0]))
  {
  }

  if (DWORD1(v112))
  {
  }

  if (v117)
  {
  }

  if (LODWORD(v119[0]))
  {
  }

  if (DWORD2(v112))
  {
  }

  if (LODWORD(v119[2]))
  {
  }

  if (HIDWORD(v119[2]))
  {
  }

  if (HIDWORD(v112))
  {
  }

  if (v114 != v113)
  {
  }

LABEL_79:
  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28.receiver = self;
  v28.super_class = SFScoreboardCardSection;
  v4 = [(SFTitleCardSection *)&v28 copyWithZone:a3];
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
  v11 = [(SFTitleCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFTitleCardSection *)self title];
  v16 = [v15 copy];
  [v4 setTitle:v16];

  v17 = [(SFTitleCardSection *)self subtitle];
  v18 = [v17 copy];
  [v4 setSubtitle:v18];

  v19 = [(SFScoreboardCardSection *)self team1];
  v20 = [v19 copy];
  [v4 setTeam1:v20];

  v21 = [(SFScoreboardCardSection *)self team2];
  v22 = [v21 copy];
  [v4 setTeam2:v22];

  v23 = [(SFScoreboardCardSection *)self accessibilityDescription];
  v24 = [v23 copy];
  [v4 setAccessibilityDescription:v24];

  v25 = [(SFScoreboardCardSection *)self eventStatus];
  v26 = [v25 copy];
  [v4 setEventStatus:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBScoreboardCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBScoreboardCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBScoreboardCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBScoreboardCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFScoreboardCardSection;
  [(SFTitleCardSection *)&v3 encodeWithCoder:a3];
}

- (SFScoreboardCardSection)initWithCoder:(id)a3
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
    [(SFTitleCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 title];
    [(SFTitleCardSection *)v5 setTitle:v14];

    v15 = [(SFCardSection *)v8 subtitle];
    [(SFTitleCardSection *)v5 setSubtitle:v15];

    v16 = [(SFCardSection *)v8 team1];
    [(SFScoreboardCardSection *)v5 setTeam1:v16];

    v17 = [(SFCardSection *)v8 team2];
    [(SFScoreboardCardSection *)v5 setTeam2:v17];

    v18 = [(SFCardSection *)v8 accessibilityDescription];
    [(SFScoreboardCardSection *)v5 setAccessibilityDescription:v18];

    v19 = [(SFCardSection *)v8 eventStatus];
    [(SFScoreboardCardSection *)v5 setEventStatus:v19];

    v20 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v20];

    v21 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v21];

    v22 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v22];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    v23 = [(SFCardSection *)v8 type];
    [(SFTitleCardSection *)v5 setType:v23];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v24 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v24];

    v25 = [(SFCardSection *)v8 title];
    [(SFTitleCardSection *)v5 setTitle:v25];

    v26 = [(SFCardSection *)v8 subtitle];
    [(SFTitleCardSection *)v5 setSubtitle:v26];

    [(SFTitleCardSection *)v5 setIsCentered:[(SFCardSection *)v8 isCentered]];
    v27 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v27];

    v28 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v28];

    v29 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v29];

    v30 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v30];

    v31 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v31];

    v32 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v32];

    v33 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v33];

    v34 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v34];

    v35 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v35];

    v36 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v36];

    v37 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v37];

    v38 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v38];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v39 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v39];

    v40 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v40];

    v41 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v41];

    v42 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v42];

    v43 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v43];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v44 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v44];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v45 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v45];

    v46 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v46];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v47 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v47];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v48 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v48];

    v49 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v49];

    v50 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v50];

    v51 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v51];
  }

  return v5;
}

@end