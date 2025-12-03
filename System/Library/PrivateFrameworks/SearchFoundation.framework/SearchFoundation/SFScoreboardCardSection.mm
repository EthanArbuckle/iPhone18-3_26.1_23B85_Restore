@interface SFScoreboardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFScoreboardCardSection)initWithCoder:(id)coder;
- (SFScoreboardCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFScoreboardCardSection

- (SFScoreboardCardSection)initWithProtobuf:(id)protobuf
{
  v49 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v47.receiver = self;
  v47.super_class = SFScoreboardCardSection;
  v5 = [(SFCardSection *)&v47 init];
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

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v43 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
      [(SFTitleCardSection *)v5 setType:type2];
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

    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFTitleCardSection *)v5 setTitle:title2];
    }

    subtitle = [protobufCopy subtitle];

    if (subtitle)
    {
      subtitle2 = [protobufCopy subtitle];
      [(SFTitleCardSection *)v5 setSubtitle:subtitle2];
    }

    team1 = [protobufCopy team1];

    if (team1)
    {
      v29 = [SFSportsTeam alloc];
      team12 = [protobufCopy team1];
      v31 = [(SFSportsTeam *)v29 initWithProtobuf:team12];
      [(SFScoreboardCardSection *)v5 setTeam1:v31];
    }

    team2 = [protobufCopy team2];

    if (team2)
    {
      v33 = [SFSportsTeam alloc];
      team22 = [protobufCopy team2];
      v35 = [(SFSportsTeam *)v33 initWithProtobuf:team22];
      [(SFScoreboardCardSection *)v5 setTeam2:v35];
    }

    accessibilityDescription = [protobufCopy accessibilityDescription];

    if (accessibilityDescription)
    {
      accessibilityDescription2 = [protobufCopy accessibilityDescription];
      [(SFScoreboardCardSection *)v5 setAccessibilityDescription:accessibilityDescription2];
    }

    eventStatus = [protobufCopy eventStatus];

    if (eventStatus)
    {
      eventStatus2 = [protobufCopy eventStatus];
      [(SFScoreboardCardSection *)v5 setEventStatus:eventStatus2];
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
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v7 = v5 ^ [punchoutPickerDismissText hash];
  v8 = v7 ^ [(SFCardSection *)self canBeHidden];
  v9 = v8 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFTitleCardSection *)self type];
  v12 = hasBottomPadding ^ [type hash];
  v13 = v12 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v15 = v13 ^ [backgroundColor hash];
  title = [(SFTitleCardSection *)self title];
  v28 = v9 ^ v15 ^ [title hash];
  subtitle = [(SFTitleCardSection *)self subtitle];
  v18 = [subtitle hash];
  team1 = [(SFScoreboardCardSection *)self team1];
  v20 = v18 ^ [team1 hash];
  team2 = [(SFScoreboardCardSection *)self team2];
  v22 = v20 ^ [team2 hash];
  accessibilityDescription = [(SFScoreboardCardSection *)self accessibilityDescription];
  v24 = v22 ^ [accessibilityDescription hash];
  eventStatus = [(SFScoreboardCardSection *)self eventStatus];
  v26 = v24 ^ [eventStatus hash];

  return v28 ^ v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_79;
  }

  if (![(SFScoreboardCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v121.receiver = self, v121.super_class = SFScoreboardCardSection, ![(SFTitleCardSection *)&v121 isEqual:equalCopy]))
  {
    v19 = 0;
    goto LABEL_79;
  }

  v5 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
  v113 = punchoutOptions2 == 0;
  v114 = punchoutOptions != 0;
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

  punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
  v8 = punchoutOptions3 != 0;
  v111 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v106 = v107 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
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

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v112) = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
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

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = punchoutPickerTitle3 != 0;
  v105 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle5 = [(SFCardSection *)v5 punchoutPickerTitle];
    v102 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
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

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
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
    punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = punchoutPickerDismissText3 != 0;
    v100 = punchoutPickerDismissText3;
    if (!punchoutPickerDismissText3 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v98 = objc_claimAutoreleasedReturnValue(), v99 = v37, [v37 isEqual:?]))
    {
      canBeHidden = [(SFCardSection *)self canBeHidden];
      DWORD1(v112) = v36;
      if (canBeHidden == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        type = [(SFTitleCardSection *)self type];
        type2 = [(SFTitleCardSection *)v5 type];
        if ((type != 0) == (type2 == 0))
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
          type3 = [(SFTitleCardSection *)self type];
          v42 = type3 != 0;
          v95 = type3;
          if (!type3 || (-[SFTitleCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection type](v5, "type"), v93 = objc_claimAutoreleasedReturnValue(), v94 = v43, [v43 isEqual:?]))
          {
            LODWORD(v112) = v42;
            separatorStyle = [(SFCardSection *)self separatorStyle];
            if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
            {
              backgroundColor = [(SFCardSection *)self backgroundColor];
              backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
              if ((backgroundColor != 0) == (backgroundColor2 == 0))
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
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                HIDWORD(v120[2]) = backgroundColor3 != 0;
                v90 = backgroundColor3;
                if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v86 = objc_claimAutoreleasedReturnValue(), v87 = v46, [v46 isEqual:?]))
                {
                  title = [(SFTitleCardSection *)self title];
                  title2 = [(SFTitleCardSection *)v5 title];
                  if ((title != 0) == (title2 == 0))
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
                    title3 = [(SFTitleCardSection *)self title];
                    LODWORD(v120[2]) = title3 != 0;
                    v85 = title3;
                    if (!title3 || (-[SFTitleCardSection title](self, "title"), v48 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection title](v5, "title"), v81 = objc_claimAutoreleasedReturnValue(), v82 = v48, [v48 isEqual:?]))
                    {
                      subtitle = [(SFTitleCardSection *)self subtitle];
                      subtitle2 = [(SFTitleCardSection *)v5 subtitle];
                      if ((subtitle != 0) == (subtitle2 == 0))
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
                        subtitle3 = [(SFTitleCardSection *)self subtitle];
                        HIDWORD(v120[1]) = subtitle3 != 0;
                        v80 = subtitle3;
                        if (!subtitle3 || (-[SFTitleCardSection subtitle](self, "subtitle"), v50 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection subtitle](v5, "subtitle"), v76 = objc_claimAutoreleasedReturnValue(), v77 = v50, [v50 isEqual:?]))
                        {
                          team1 = [(SFScoreboardCardSection *)self team1];
                          team12 = [(SFScoreboardCardSection *)v5 team1];
                          if ((team1 != 0) == (team12 == 0))
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
                            team13 = [(SFScoreboardCardSection *)self team1];
                            LODWORD(v120[1]) = team13 != 0;
                            v75 = team13;
                            if (!team13 || (-[SFScoreboardCardSection team1](self, "team1"), v52 = objc_claimAutoreleasedReturnValue(), -[SFScoreboardCardSection team1](v5, "team1"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v52, [v52 isEqual:?]))
                            {
                              team2 = [(SFScoreboardCardSection *)self team2];
                              team22 = [(SFScoreboardCardSection *)v5 team2];
                              if ((team2 != 0) == (team22 == 0))
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
                                team23 = [(SFScoreboardCardSection *)self team2];
                                HIDWORD(v120[0]) = team23 != 0;
                                v70 = team23;
                                if (!team23 || (-[SFScoreboardCardSection team2](self, "team2"), v54 = objc_claimAutoreleasedReturnValue(), -[SFScoreboardCardSection team2](v5, "team2"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v54, [v54 isEqual:?]))
                                {
                                  accessibilityDescription = [(SFScoreboardCardSection *)self accessibilityDescription];
                                  accessibilityDescription2 = [(SFScoreboardCardSection *)v5 accessibilityDescription];
                                  if ((accessibilityDescription != 0) == (accessibilityDescription2 == 0))
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
                                    accessibilityDescription3 = [(SFScoreboardCardSection *)self accessibilityDescription];
                                    LODWORD(v120[0]) = accessibilityDescription3 != 0;
                                    v65 = accessibilityDescription3;
                                    if (!accessibilityDescription3 || (-[SFScoreboardCardSection accessibilityDescription](self, "accessibilityDescription"), v56 = objc_claimAutoreleasedReturnValue(), -[SFScoreboardCardSection accessibilityDescription](v5, "accessibilityDescription"), v61 = objc_claimAutoreleasedReturnValue(), v62 = v56, [v56 isEqual:?]))
                                    {
                                      eventStatus = [(SFScoreboardCardSection *)self eventStatus];
                                      eventStatus2 = [(SFScoreboardCardSection *)v5 eventStatus];
                                      if ((eventStatus != 0) == (eventStatus2 == 0))
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
                                        eventStatus3 = [(SFScoreboardCardSection *)self eventStatus];
                                        if (eventStatus3)
                                        {
                                          eventStatus4 = [(SFScoreboardCardSection *)self eventStatus];
                                          eventStatus5 = [(SFScoreboardCardSection *)v5 eventStatus];
                                          v59 = eventStatus4;
                                          v19 = [eventStatus4 isEqual:eventStatus5];
                                          v6 = eventStatus5;
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
                                          eventStatus3 = 0;
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
    v110 = equalCopy;
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
    equalCopy = v110;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v28.receiver = self;
  v28.super_class = SFScoreboardCardSection;
  v4 = [(SFTitleCardSection *)&v28 copyWithZone:zone];
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
  type = [(SFTitleCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  title = [(SFTitleCardSection *)self title];
  v16 = [title copy];
  [v4 setTitle:v16];

  subtitle = [(SFTitleCardSection *)self subtitle];
  v18 = [subtitle copy];
  [v4 setSubtitle:v18];

  team1 = [(SFScoreboardCardSection *)self team1];
  v20 = [team1 copy];
  [v4 setTeam1:v20];

  team2 = [(SFScoreboardCardSection *)self team2];
  v22 = [team2 copy];
  [v4 setTeam2:v22];

  accessibilityDescription = [(SFScoreboardCardSection *)self accessibilityDescription];
  v24 = [accessibilityDescription copy];
  [v4 setAccessibilityDescription:v24];

  eventStatus = [(SFScoreboardCardSection *)self eventStatus];
  v26 = [eventStatus copy];
  [v4 setEventStatus:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBScoreboardCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBScoreboardCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBScoreboardCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBScoreboardCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFScoreboardCardSection;
  [(SFTitleCardSection *)&v3 encodeWithCoder:coder];
}

- (SFScoreboardCardSection)initWithCoder:(id)coder
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
    [(SFTitleCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    title = [(SFCardSection *)v8 title];
    [(SFTitleCardSection *)v5 setTitle:title];

    subtitle = [(SFCardSection *)v8 subtitle];
    [(SFTitleCardSection *)v5 setSubtitle:subtitle];

    team1 = [(SFCardSection *)v8 team1];
    [(SFScoreboardCardSection *)v5 setTeam1:team1];

    team2 = [(SFCardSection *)v8 team2];
    [(SFScoreboardCardSection *)v5 setTeam2:team2];

    accessibilityDescription = [(SFCardSection *)v8 accessibilityDescription];
    [(SFScoreboardCardSection *)v5 setAccessibilityDescription:accessibilityDescription];

    eventStatus = [(SFCardSection *)v8 eventStatus];
    [(SFScoreboardCardSection *)v5 setEventStatus:eventStatus];

    punchoutOptions2 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions2];

    punchoutPickerTitle2 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];

    punchoutPickerDismissText2 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    type2 = [(SFCardSection *)v8 type];
    [(SFTitleCardSection *)v5 setType:type2];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor2 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor2];

    title2 = [(SFCardSection *)v8 title];
    [(SFTitleCardSection *)v5 setTitle:title2];

    subtitle2 = [(SFCardSection *)v8 subtitle];
    [(SFTitleCardSection *)v5 setSubtitle:subtitle2];

    [(SFTitleCardSection *)v5 setIsCentered:[(SFCardSection *)v8 isCentered]];
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

    backgroundColor3 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor3];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    leadingSwipeButtonItems = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:leadingSwipeButtonItems];

    trailingSwipeButtonItems = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:trailingSwipeButtonItems];

    punchoutOptions3 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions3];

    punchoutPickerTitle3 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle3];

    punchoutPickerDismissText3 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText3];

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