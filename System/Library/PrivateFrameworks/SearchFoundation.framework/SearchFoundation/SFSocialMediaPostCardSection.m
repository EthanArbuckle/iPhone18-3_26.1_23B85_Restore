@interface SFSocialMediaPostCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSocialMediaPostCardSection)initWithCoder:(id)a3;
- (SFSocialMediaPostCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSocialMediaPostCardSection

- (unint64_t)hash
{
  v38.receiver = self;
  v38.super_class = SFSocialMediaPostCardSection;
  v3 = [(SFCardSection *)&v38 hash];
  v37 = [(SFCardSection *)self punchoutOptions];
  v4 = [v37 hash];
  v36 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v36 hash];
  v35 = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [v35 hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v9 = [(SFCardSection *)self hasBottomPadding];
  v34 = [(SFSocialMediaPostCardSection *)self type];
  v10 = v9 ^ [v34 hash];
  v11 = v10 ^ [(SFCardSection *)self separatorStyle];
  v33 = [(SFCardSection *)self backgroundColor];
  v12 = v11 ^ [v33 hash];
  v13 = [(SFSocialMediaPostCardSection *)self name];
  v14 = v8 ^ v12 ^ [v13 hash];
  v15 = [(SFSocialMediaPostCardSection *)self nameNoWrap];
  v16 = [(SFSocialMediaPostCardSection *)self nameMaxLines];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFSocialMediaPostCardSection *)self handle];
  v19 = v17 ^ [v18 hash];
  v20 = [(SFSocialMediaPostCardSection *)self verifiedGlyph];
  v21 = v19 ^ [v20 hash];
  v22 = [(SFSocialMediaPostCardSection *)self profilePicture];
  v23 = v21 ^ [v22 hash];
  v24 = [(SFSocialMediaPostCardSection *)self post];
  v32 = v14 ^ v23 ^ [v24 hash];
  v25 = [(SFSocialMediaPostCardSection *)self picture];
  v26 = [v25 hash];
  v27 = [(SFSocialMediaPostCardSection *)self timestamp];
  v28 = v26 ^ [v27 hash];
  v29 = [(SFSocialMediaPostCardSection *)self footnote];
  v30 = v28 ^ [v29 hash];

  return v32 ^ v30;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_95;
  }

  if (![(SFSocialMediaPostCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v144.receiver = self, v144.super_class = SFSocialMediaPostCardSection, ![(SFCardSection *)&v144 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_95;
  }

  v5 = v4;
  v142 = [(SFCardSection *)self punchoutOptions];
  v141 = [(SFCardSection *)v5 punchoutOptions];
  v139 = v141 == 0;
  v140 = v142 != 0;
  if (v140 == v139)
  {
    memset(v138, 0, sizeof(v138));
    memset(v136, 0, sizeof(v136));
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v135, 0, sizeof(v135));
    v13 = 0;
    memset(v143, 0, sizeof(v143));
    memset(v134, 0, sizeof(v134));
    v14 = 0;
    v15 = 0;
    v137 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v133 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    v128 = [(SFCardSection *)v5 punchoutOptions];
    v129 = v9;
    if (![v9 isEqual:?])
    {
      memset(v138, 0, 24);
      memset(v136, 0, sizeof(v136));
      v10 = 0;
      v11 = 0;
      v12 = 0;
      memset(v135, 0, sizeof(v135));
      v13 = 0;
      memset(v143, 0, sizeof(v143));
      memset(v134, 0, sizeof(v134));
      v14 = 0;
      v15 = 0;
      v137 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v138[24] = 1;
      goto LABEL_16;
    }
  }

  v131 = [(SFCardSection *)self punchoutPickerTitle];
  v130 = [(SFCardSection *)v5 punchoutPickerTitle];
  *&v138[24] = v8;
  if ((v131 != 0) == (v130 == 0))
  {
    memset(v136, 0, sizeof(v136));
    *&v138[8] = 0uLL;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v135, 0, sizeof(v135));
    v13 = 0;
    memset(v143, 0, sizeof(v143));
    memset(v134, 0, sizeof(v134));
    v14 = 0;
    v15 = 0;
    v137 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *v138 = 1;
    goto LABEL_16;
  }

  v20 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = v20 != 0;
  v127 = v20;
  if (v20)
  {
    v22 = [(SFCardSection *)self punchoutPickerTitle];
    v123 = [(SFCardSection *)v5 punchoutPickerTitle];
    v124 = v22;
    if (![v22 isEqual:?])
    {
      *v136 = 0;
      *&v138[4] = 0;
      *&v138[12] = 0;
      *&v136[8] = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      memset(v135, 0, sizeof(v135));
      v13 = 0;
      memset(v143, 0, sizeof(v143));
      memset(v134, 0, sizeof(v134));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v137 = 0;
      *v138 = 1;
      *&v136[16] = 1;
      *&v138[20] = 1;
      goto LABEL_16;
    }

    *&v138[20] = v21;
  }

  else
  {
    *&v138[20] = 0;
  }

  v126 = [(SFCardSection *)self punchoutPickerDismissText];
  v125 = [(SFCardSection *)v5 punchoutPickerDismissText];
  if ((v126 != 0) == (v125 == 0))
  {
    *&v138[4] = 0;
    *&v138[12] = 0;
    *&v136[4] = 0;
    *&v136[12] = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v135, 0, sizeof(v135));
    v13 = 0;
    memset(v143, 0, sizeof(v143));
    memset(v134, 0, sizeof(v134));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v137 = 0;
    *v138 = 1;
    *&v136[16] = 1;
    *v136 = 1;
  }

  else
  {
    v35 = [(SFCardSection *)self punchoutPickerDismissText];
    v36 = v35 != 0;
    v122 = v35;
    if (!v35 || (-[SFCardSection punchoutPickerDismissText](self, "punchoutPickerDismissText"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection punchoutPickerDismissText](v5, "punchoutPickerDismissText"), v120 = objc_claimAutoreleasedReturnValue(), v121 = v37, [v37 isEqual:?]))
    {
      v38 = [(SFCardSection *)self canBeHidden];
      *&v138[16] = v36;
      if (v38 == [(SFCardSection *)v5 canBeHidden]&& (v39 = [(SFCardSection *)self hasTopPadding], v39 == [(SFCardSection *)v5 hasTopPadding]) && (v40 = [(SFCardSection *)self hasBottomPadding], v40 == [(SFCardSection *)v5 hasBottomPadding]))
      {
        v119 = [(SFSocialMediaPostCardSection *)self type];
        v118 = [(SFSocialMediaPostCardSection *)v5 type];
        if ((v119 != 0) == (v118 == 0))
        {
          *&v138[12] = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          memset(v135, 0, sizeof(v135));
          v13 = 0;
          *&v134[4] = 0;
          memset(v143, 0, sizeof(v143));
          *v134 = 0;
          *&v138[4] = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v137 = 0;
          *v138 = 1;
          *&v136[16] = 1;
          *v136 = 1;
          *&v134[12] = 1;
          *&v134[16] = 0;
          *&v136[8] = 1;
        }

        else
        {
          v41 = [(SFSocialMediaPostCardSection *)self type];
          v42 = v41 != 0;
          v117 = v41;
          if (!v41 || (-[SFSocialMediaPostCardSection type](self, "type"), v43 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection type](v5, "type"), v115 = objc_claimAutoreleasedReturnValue(), v116 = v43, [v43 isEqual:?]))
          {
            *&v138[12] = v42;
            v44 = [(SFCardSection *)self separatorStyle];
            if (v44 == [(SFCardSection *)v5 separatorStyle])
            {
              v114 = [(SFCardSection *)self backgroundColor];
              v113 = [(SFCardSection *)v5 backgroundColor];
              if ((v114 != 0) == (v113 == 0))
              {
                v10 = 0;
                v11 = 0;
                v12 = 0;
                memset(v135, 0, 24);
                v13 = 0;
                *&v134[4] = 0;
                memset(v143, 0, sizeof(v143));
                *v134 = 0;
                *&v138[4] = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v137 = 0;
                *v138 = 1;
                *&v136[16] = 1;
                *v136 = 0x100000001;
                *&v134[12] = 1;
                *&v134[16] = 0;
                *&v136[8] = 1;
                *&v135[24] = 1;
              }

              else
              {
                v45 = [(SFCardSection *)self backgroundColor];
                HIDWORD(v143[2]) = v45 != 0;
                v112 = v45;
                if (!v45 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v108 = objc_claimAutoreleasedReturnValue(), v109 = v46, [v46 isEqual:?]))
                {
                  v111 = [(SFSocialMediaPostCardSection *)self name];
                  v110 = [(SFSocialMediaPostCardSection *)v5 name];
                  if ((v111 != 0) == (v110 == 0))
                  {
                    v11 = 0;
                    v12 = 0;
                    memset(v135, 0, 24);
                    v13 = 0;
                    *&v134[4] = 0;
                    *v134 = 0;
                    memset(v143, 0, 20);
                    *&v138[4] = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v137 = 0;
                    *v138 = 1;
                    *&v136[16] = 1;
                    *v136 = 0x100000001;
                    *&v134[12] = 1;
                    *&v136[8] = 0x100000001;
                    *&v135[24] = 1;
                    v10 = 1;
                  }

                  else
                  {
                    v47 = [(SFSocialMediaPostCardSection *)self name];
                    LODWORD(v143[2]) = v47 != 0;
                    v107 = v47;
                    if (!v47 || (-[SFSocialMediaPostCardSection name](self, "name"), v48 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection name](v5, "name"), v105 = objc_claimAutoreleasedReturnValue(), v106 = v48, [v48 isEqual:?]))
                    {
                      v49 = [(SFSocialMediaPostCardSection *)self nameNoWrap];
                      if (v49 == [(SFSocialMediaPostCardSection *)v5 nameNoWrap])
                      {
                        v104 = [(SFSocialMediaPostCardSection *)self nameMaxLines];
                        v103 = [(SFSocialMediaPostCardSection *)v5 nameMaxLines];
                        if ((v104 != 0) == (v103 == 0))
                        {
                          v143[0] = 0;
                          v143[1] = 0;
                          memset(v135, 0, 24);
                          v13 = 0;
                          *&v134[4] = 0;
                          *v134 = 0;
                          *&v138[4] = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          v137 = 0;
                          *v138 = 1;
                          *&v136[16] = 1;
                          *v136 = 0x100000001;
                          *&v134[12] = 1;
                          *&v136[8] = 0x100000001;
                          *&v135[24] = 1;
                          v10 = 1;
                          v11 = 1;
                          v12 = 1;
                        }

                        else
                        {
                          v50 = [(SFSocialMediaPostCardSection *)self nameMaxLines];
                          HIDWORD(v143[1]) = v50 != 0;
                          v102 = v50;
                          if (!v50 || (-[SFSocialMediaPostCardSection nameMaxLines](self, "nameMaxLines"), v51 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection nameMaxLines](v5, "nameMaxLines"), v98 = objc_claimAutoreleasedReturnValue(), v99 = v51, [v51 isEqual:?]))
                          {
                            v101 = [(SFSocialMediaPostCardSection *)self handle];
                            v100 = [(SFSocialMediaPostCardSection *)v5 handle];
                            if ((v101 != 0) == (v100 == 0))
                            {
                              v13 = 0;
                              *(v143 + 4) = 0;
                              *&v134[4] = 0;
                              *&v135[12] = 0;
                              *v134 = 0;
                              *&v135[4] = 0;
                              LODWORD(v143[0]) = 0;
                              *&v138[4] = 0;
                              v14 = 0;
                              v15 = 0;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v19 = 0;
                              v137 = 0;
                              *v138 = 1;
                              *&v136[12] = 1;
                              *&v136[16] = 1;
                              *v136 = 1;
                              *&v136[4] = 1;
                              *&v134[12] = 1;
                              *&v134[16] = 0;
                              *&v136[8] = 1;
                              *&v135[20] = 1;
                              *&v135[24] = 1;
                              v10 = 1;
                              v11 = 1;
                              v12 = 1;
                              *v135 = 1;
                            }

                            else
                            {
                              v52 = [(SFSocialMediaPostCardSection *)self handle];
                              LODWORD(v143[1]) = v52 != 0;
                              v97 = v52;
                              if (!v52 || (-[SFSocialMediaPostCardSection handle](self, "handle"), v53 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection handle](v5, "handle"), v93 = objc_claimAutoreleasedReturnValue(), v94 = v53, [v53 isEqual:?]))
                              {
                                v96 = [(SFSocialMediaPostCardSection *)self verifiedGlyph];
                                v95 = [(SFSocialMediaPostCardSection *)v5 verifiedGlyph];
                                if ((v96 != 0) == (v95 == 0))
                                {
                                  *&v135[12] = 0;
                                  v143[0] = 0;
                                  *v134 = 0;
                                  *&v135[4] = 0;
                                  *&v138[4] = 0;
                                  v14 = 0;
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v19 = 0;
                                  v137 = 0;
                                  *v138 = 1;
                                  *&v136[12] = 1;
                                  *&v136[16] = 1;
                                  *v136 = 1;
                                  *&v136[4] = 1;
                                  *&v134[12] = 1;
                                  *&v134[16] = 0;
                                  *&v136[8] = 1;
                                  *&v135[20] = 1;
                                  *&v135[24] = 1;
                                  v10 = 1;
                                  v11 = 1;
                                  v12 = 1;
                                  *v135 = 1;
                                  v13 = 1;
                                  *&v134[8] = 1;
                                }

                                else
                                {
                                  v54 = [(SFSocialMediaPostCardSection *)self verifiedGlyph];
                                  HIDWORD(v143[0]) = v54 != 0;
                                  v92 = v54;
                                  if (!v54 || (-[SFSocialMediaPostCardSection verifiedGlyph](self, "verifiedGlyph"), v55 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection verifiedGlyph](v5, "verifiedGlyph"), v88 = objc_claimAutoreleasedReturnValue(), v89 = v55, [v55 isEqual:?]))
                                  {
                                    v91 = [(SFSocialMediaPostCardSection *)self profilePicture];
                                    v90 = [(SFSocialMediaPostCardSection *)v5 profilePicture];
                                    if ((v91 != 0) == (v90 == 0))
                                    {
                                      *&v135[4] = 0;
                                      LODWORD(v143[0]) = 0;
                                      *&v134[4] = 0;
                                      *&v138[4] = 0;
                                      v14 = 0;
                                      *&v135[12] = 0;
                                      v15 = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v19 = 0;
                                      v137 = 0;
                                      *v138 = 1;
                                      *&v136[12] = 1;
                                      *&v136[16] = 1;
                                      *v136 = 1;
                                      *&v136[4] = 1;
                                      *&v134[12] = 1;
                                      *&v134[16] = 0;
                                      *&v136[8] = 1;
                                      *&v135[20] = 1;
                                      *&v135[24] = 1;
                                      v10 = 1;
                                      v11 = 1;
                                      v12 = 1;
                                      *v135 = 1;
                                      v13 = 1;
                                      *&v134[8] = 1;
                                      *&v135[16] = 1;
                                      *v134 = 1;
                                    }

                                    else
                                    {
                                      v56 = [(SFSocialMediaPostCardSection *)self profilePicture];
                                      LODWORD(v143[0]) = v56 != 0;
                                      v87 = v56;
                                      if (!v56 || (-[SFSocialMediaPostCardSection profilePicture](self, "profilePicture"), v57 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection profilePicture](v5, "profilePicture"), v83 = objc_claimAutoreleasedReturnValue(), v84 = v57, [v57 isEqual:?]))
                                      {
                                        v86 = [(SFSocialMediaPostCardSection *)self post];
                                        v85 = [(SFSocialMediaPostCardSection *)v5 post];
                                        if ((v86 != 0) == (v85 == 0))
                                        {
                                          *&v135[8] = 0;
                                          *&v138[4] = 0;
                                          v14 = 0;
                                          v15 = 0;
                                          v16 = 0;
                                          v17 = 0;
                                          v18 = 0;
                                          v19 = 0;
                                          v137 = 0;
                                          *v138 = 1;
                                          *&v136[12] = 1;
                                          *&v136[16] = 1;
                                          *v136 = 1;
                                          *&v136[4] = 1;
                                          *&v134[12] = 1;
                                          *&v134[16] = 0;
                                          *&v136[8] = 1;
                                          *&v135[20] = 1;
                                          *&v135[24] = 1;
                                          v10 = 1;
                                          v11 = 1;
                                          v12 = 1;
                                          *v135 = 1;
                                          *&v135[4] = 1;
                                          v13 = 1;
                                          *&v134[8] = 1;
                                          *&v135[16] = 1;
                                          *v134 = 1;
                                          *&v134[4] = 1;
                                        }

                                        else
                                        {
                                          v58 = [(SFSocialMediaPostCardSection *)self post];
                                          *&v138[8] = v58 != 0;
                                          v82 = v58;
                                          if (!v58 || (-[SFSocialMediaPostCardSection post](self, "post"), v59 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection post](v5, "post"), v80 = objc_claimAutoreleasedReturnValue(), v81 = v59, [v59 isEqual:?]))
                                          {
                                            v79 = [(SFSocialMediaPostCardSection *)self picture];
                                            v78 = [(SFSocialMediaPostCardSection *)v5 picture];
                                            if ((v79 != 0) == (v78 == 0))
                                            {
                                              v14 = 0;
                                              *&v135[12] = 0;
                                              v15 = 0;
                                              v16 = 0;
                                              v17 = 0;
                                              v18 = 0;
                                              v19 = 0;
                                              *v138 = 1;
                                              *&v138[4] = 0;
                                              *&v136[16] = 1;
                                              v137 = 0;
                                              *v136 = 1;
                                              *&v136[4] = 1;
                                              *&v134[8] = 1;
                                              *&v134[12] = 1;
                                              *&v136[8] = 1;
                                              *&v136[12] = 1;
                                              *&v135[20] = 1;
                                              *&v135[24] = 1;
                                              v10 = 1;
                                              v11 = 1;
                                              v12 = 1;
                                              *v135 = 1;
                                              *&v135[4] = 1;
                                              v13 = 1;
                                              *&v135[16] = 1;
                                              *v134 = 1;
                                              *&v134[4] = 1;
                                              *&v135[8] = 1;
                                              *&v134[16] = 1;
                                            }

                                            else
                                            {
                                              v60 = [(SFSocialMediaPostCardSection *)self picture];
                                              *&v138[4] = v60 != 0;
                                              v77 = v60;
                                              if (!v60 || (-[SFSocialMediaPostCardSection picture](self, "picture"), v61 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection picture](v5, "picture"), v75 = objc_claimAutoreleasedReturnValue(), v76 = v61, [v61 isEqual:?]))
                                              {
                                                v74 = [(SFSocialMediaPostCardSection *)self timestamp];
                                                v73 = [(SFSocialMediaPostCardSection *)v5 timestamp];
                                                if ((v74 != 0) == (v73 == 0))
                                                {
                                                  v15 = 0;
                                                  v16 = 0;
                                                  v17 = 0;
                                                  v18 = 0;
                                                  v19 = 0;
                                                  v137 = 0;
                                                  *v138 = 1;
                                                  *&v136[12] = 1;
                                                  *&v136[16] = 1;
                                                  *v136 = 1;
                                                  *&v136[4] = 1;
                                                  *&v134[8] = 1;
                                                  *&v134[12] = 1;
                                                  *&v136[8] = 1;
                                                  *&v135[20] = 1;
                                                  *&v135[24] = 1;
                                                  v10 = 1;
                                                  v11 = 1;
                                                  v12 = 1;
                                                  *v135 = 1;
                                                  *&v135[4] = 1;
                                                  v13 = 1;
                                                  *&v135[16] = 1;
                                                  *v134 = 1;
                                                  *&v134[4] = 1;
                                                  *&v135[8] = 1;
                                                  *&v134[16] = 1;
                                                  v14 = 1;
                                                  *&v135[12] = 1;
                                                }

                                                else
                                                {
                                                  v62 = [(SFSocialMediaPostCardSection *)self timestamp];
                                                  v137 = v62 != 0;
                                                  v70 = v62;
                                                  if (!v62 || (-[SFSocialMediaPostCardSection timestamp](self, "timestamp"), v63 = objc_claimAutoreleasedReturnValue(), -[SFSocialMediaPostCardSection timestamp](v5, "timestamp"), v71 = objc_claimAutoreleasedReturnValue(), v72 = v63, [v63 isEqual:?]))
                                                  {
                                                    v69 = [(SFSocialMediaPostCardSection *)self footnote];
                                                    v68 = [(SFSocialMediaPostCardSection *)v5 footnote];
                                                    if ((v69 != 0) == (v68 == 0))
                                                    {
                                                      v17 = 0;
                                                      v18 = 0;
                                                      v19 = 0;
                                                      *v138 = 1;
                                                      *&v136[12] = 1;
                                                      *&v136[16] = 1;
                                                      *v136 = 1;
                                                      *&v136[4] = 1;
                                                      *&v134[8] = 1;
                                                      *&v134[12] = 1;
                                                      *&v136[8] = 1;
                                                      *&v135[20] = 1;
                                                      *&v135[24] = 1;
                                                      v10 = 1;
                                                      v11 = 1;
                                                      v12 = 1;
                                                      *v135 = 1;
                                                      *&v135[4] = 1;
                                                      v13 = 1;
                                                      *&v135[12] = 1;
                                                      *&v135[16] = 1;
                                                      *v134 = 1;
                                                      *&v134[4] = 1;
                                                      *&v135[8] = 1;
                                                      *&v134[16] = 1;
                                                      v14 = 1;
                                                      v15 = 1;
                                                      v16 = 1;
                                                    }

                                                    else
                                                    {
                                                      v67 = [(SFSocialMediaPostCardSection *)self footnote];
                                                      if (v67)
                                                      {
                                                        v64 = [(SFSocialMediaPostCardSection *)self footnote];
                                                        v65 = [(SFSocialMediaPostCardSection *)v5 footnote];
                                                        v66 = v64;
                                                        v19 = [v64 isEqual:v65];
                                                        v6 = v65;
                                                        v18 = 1;
                                                        *v138 = 1;
                                                        *&v136[12] = 1;
                                                        *&v136[16] = 1;
                                                        *v136 = 1;
                                                        *&v136[4] = 1;
                                                        *&v134[8] = 1;
                                                        *&v134[12] = 1;
                                                        *&v136[8] = 1;
                                                        *&v135[20] = 1;
                                                        *&v135[24] = 1;
                                                        v10 = 1;
                                                        v11 = 1;
                                                        v12 = 1;
                                                        *v135 = 1;
                                                        *&v135[4] = 1;
                                                        v13 = 1;
                                                        *&v135[12] = 1;
                                                        *&v135[16] = 1;
                                                        *v134 = 1;
                                                        *&v134[4] = 1;
                                                        *&v135[8] = 1;
                                                        *&v134[16] = 1;
                                                        v14 = 1;
                                                        v15 = 1;
                                                        v16 = 1;
                                                        v17 = 1;
                                                      }

                                                      else
                                                      {
                                                        v67 = 0;
                                                        v18 = 0;
                                                        *v138 = 1;
                                                        *&v136[16] = 1;
                                                        *v136 = 0x100000001;
                                                        *&v134[8] = 0x100000001;
                                                        *&v136[8] = 0x100000001;
                                                        *&v135[20] = 0x100000001;
                                                        v10 = 1;
                                                        v11 = 1;
                                                        v12 = 1;
                                                        *v135 = 0x100000001;
                                                        v13 = 1;
                                                        *&v135[16] = 1;
                                                        *v134 = 0x100000001;
                                                        *&v135[8] = 0x100000001;
                                                        *&v134[16] = 1;
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
                                                    *v138 = 1;
                                                    *&v136[12] = 1;
                                                    *&v136[16] = 1;
                                                    *v136 = 1;
                                                    *&v136[4] = 1;
                                                    *&v134[8] = 1;
                                                    *&v134[12] = 1;
                                                    *&v136[8] = 1;
                                                    *&v135[20] = 1;
                                                    *&v135[24] = 1;
                                                    v10 = 1;
                                                    v11 = 1;
                                                    v12 = 1;
                                                    *v135 = 1;
                                                    *&v135[4] = 1;
                                                    v13 = 1;
                                                    *&v135[12] = 1;
                                                    *&v135[16] = 1;
                                                    *v134 = 1;
                                                    *&v134[4] = 1;
                                                    *&v135[8] = 1;
                                                    *&v134[16] = 1;
                                                    v14 = 1;
                                                    v15 = 1;
                                                    v137 = 1;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                *&v135[12] = 0;
                                                v15 = 0;
                                                v16 = 0;
                                                v17 = 0;
                                                v18 = 0;
                                                v19 = 0;
                                                v137 = 0;
                                                *v138 = 1;
                                                *&v136[12] = 1;
                                                *&v136[16] = 1;
                                                *v136 = 1;
                                                *&v136[4] = 1;
                                                *&v134[8] = 1;
                                                *&v134[12] = 1;
                                                *&v136[8] = 1;
                                                *&v135[20] = 1;
                                                *&v135[24] = 1;
                                                v10 = 1;
                                                v11 = 1;
                                                v12 = 1;
                                                *v135 = 1;
                                                *&v135[4] = 1;
                                                v13 = 1;
                                                *&v135[16] = 1;
                                                *v134 = 1;
                                                *&v134[4] = 1;
                                                *&v135[8] = 1;
                                                *&v134[16] = 1;
                                                v14 = 1;
                                                *&v138[4] = 1;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            v14 = 0;
                                            *&v135[12] = 0;
                                            v15 = 0;
                                            v16 = 0;
                                            v17 = 0;
                                            v18 = 0;
                                            v19 = 0;
                                            *v138 = 1;
                                            *&v138[4] = 0;
                                            *&v136[16] = 1;
                                            v137 = 0;
                                            *v136 = 1;
                                            *&v136[4] = 1;
                                            *&v134[12] = 1;
                                            *&v134[16] = 0;
                                            *&v136[8] = 1;
                                            *&v136[12] = 1;
                                            *&v135[20] = 1;
                                            *&v135[24] = 1;
                                            v10 = 1;
                                            v11 = 1;
                                            v12 = 1;
                                            *v135 = 1;
                                            *&v135[4] = 1;
                                            v13 = 1;
                                            *&v134[4] = 1;
                                            *&v134[8] = 1;
                                            *&v135[16] = 1;
                                            *v134 = 1;
                                            *&v135[8] = 1;
                                            *&v138[8] = 1;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        *&v134[4] = 0;
                                        *&v135[8] = 0;
                                        *&v138[4] = 0;
                                        v14 = 0;
                                        v15 = 0;
                                        v16 = 0;
                                        v17 = 0;
                                        v18 = 0;
                                        v19 = 0;
                                        v137 = 0;
                                        *v138 = 1;
                                        *&v136[12] = 1;
                                        *&v136[16] = 1;
                                        *v136 = 1;
                                        *&v136[4] = 1;
                                        *&v134[12] = 1;
                                        *&v134[16] = 0;
                                        *&v136[8] = 1;
                                        *&v135[20] = 1;
                                        *&v135[24] = 1;
                                        v10 = 1;
                                        v11 = 1;
                                        v12 = 1;
                                        *v135 = 1;
                                        *&v135[4] = 1;
                                        v13 = 1;
                                        *&v134[8] = 1;
                                        *&v135[16] = 1;
                                        *v134 = 1;
                                        LODWORD(v143[0]) = 1;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    *v134 = 0;
                                    *&v135[4] = 0;
                                    v143[0] = 0x100000000;
                                    *&v138[4] = 0;
                                    v14 = 0;
                                    *&v135[12] = 0;
                                    v15 = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    v137 = 0;
                                    *v138 = 1;
                                    *&v136[16] = 1;
                                    *v136 = 0x100000001;
                                    *&v134[16] = 0;
                                    *&v136[8] = 0x100000001;
                                    *&v135[20] = 0x100000001;
                                    v10 = 1;
                                    v11 = 1;
                                    v12 = 1;
                                    *v135 = 1;
                                    v13 = 1;
                                    *&v134[8] = 0x100000001;
                                    *&v135[16] = 1;
                                  }
                                }
                              }

                              else
                              {
                                *&v134[4] = 0;
                                *&v135[12] = 0;
                                v143[0] = 0;
                                *v134 = 0;
                                *&v135[4] = 0;
                                *&v138[4] = 0;
                                v14 = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                v137 = 0;
                                *v138 = 1;
                                *&v136[12] = 1;
                                *&v136[16] = 1;
                                *v136 = 1;
                                *&v136[4] = 1;
                                *&v134[12] = 1;
                                *&v134[16] = 0;
                                *&v136[8] = 1;
                                *&v135[20] = 1;
                                *&v135[24] = 1;
                                v10 = 1;
                                v11 = 1;
                                v12 = 1;
                                *v135 = 1;
                                v13 = 1;
                                LODWORD(v143[1]) = 1;
                              }
                            }
                          }

                          else
                          {
                            memset(v135, 0, 20);
                            v13 = 0;
                            *(v143 + 4) = 0;
                            *&v134[4] = 0;
                            *v134 = 0;
                            LODWORD(v143[0]) = 0;
                            *&v138[4] = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            v137 = 0;
                            *v138 = 1;
                            *&v136[16] = 1;
                            *v136 = 0x100000001;
                            *&v134[12] = 1;
                            *&v134[16] = 0;
                            *&v136[8] = 0x100000001;
                            *&v135[20] = 0x100000001;
                            v10 = 1;
                            v11 = 1;
                            v12 = 1;
                            HIDWORD(v143[1]) = 1;
                          }
                        }
                      }

                      else
                      {
                        v12 = 0;
                        v143[0] = 0;
                        v143[1] = 0;
                        memset(v135, 0, 24);
                        v13 = 0;
                        *&v134[4] = 0;
                        *v134 = 0;
                        *&v138[4] = 0;
                        v14 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        v137 = 0;
                        *v138 = 1;
                        *&v136[16] = 1;
                        *v136 = 0x100000001;
                        *&v134[12] = 1;
                        *&v136[8] = 0x100000001;
                        *&v135[24] = 1;
                        v10 = 1;
                        v11 = 1;
                      }
                    }

                    else
                    {
                      v12 = 0;
                      v143[0] = 0;
                      v143[1] = 0;
                      memset(v135, 0, 24);
                      v13 = 0;
                      *&v134[4] = 0;
                      *v134 = 0;
                      *&v138[4] = 0;
                      v14 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      v137 = 0;
                      *v138 = 1;
                      *&v136[16] = 1;
                      *v136 = 0x100000001;
                      *&v134[12] = 1;
                      *&v134[16] = 0;
                      *&v136[8] = 0x100000001;
                      *&v135[24] = 1;
                      v10 = 1;
                      v11 = 1;
                      LODWORD(v143[2]) = 1;
                    }
                  }
                }

                else
                {
                  v10 = 0;
                  v11 = 0;
                  v12 = 0;
                  memset(v135, 0, 24);
                  v13 = 0;
                  *&v134[4] = 0;
                  *v134 = 0;
                  memset(v143, 0, 20);
                  *&v138[4] = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v137 = 0;
                  *v138 = 1;
                  *&v136[16] = 1;
                  *v136 = 0x100000001;
                  *&v134[12] = 1;
                  *&v134[16] = 0;
                  *&v136[8] = 0x100000001;
                  *&v135[24] = 1;
                  HIDWORD(v143[2]) = 1;
                }
              }
            }

            else
            {
              v10 = 0;
              v11 = 0;
              v12 = 0;
              memset(v135, 0, sizeof(v135));
              v13 = 0;
              *&v134[4] = 0;
              memset(v143, 0, sizeof(v143));
              *v134 = 0;
              *&v138[4] = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v137 = 0;
              *v138 = 1;
              *&v136[16] = 1;
              *v136 = 0x100000001;
              *&v134[12] = 1;
              *&v134[16] = 0;
              *&v136[8] = 1;
            }
          }

          else
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            memset(v135, 0, sizeof(v135));
            v13 = 0;
            *&v134[4] = 0;
            memset(v143, 0, sizeof(v143));
            *v134 = 0;
            *&v138[4] = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v137 = 0;
            *v138 = 1;
            *&v136[16] = 1;
            *v136 = 0x100000001;
            *&v134[12] = 1;
            *&v134[16] = 0;
            *&v136[8] = 1;
            *&v138[12] = 1;
          }
        }
      }

      else
      {
        *&v136[4] = 0;
        *&v138[12] = 0;
        *&v136[12] = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        memset(v135, 0, sizeof(v135));
        v13 = 0;
        *&v134[4] = 0;
        memset(v143, 0, sizeof(v143));
        *v134 = 0;
        *&v138[4] = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v137 = 0;
        *v138 = 1;
        *&v136[16] = 1;
        *v136 = 1;
        *&v134[12] = 1;
      }
    }

    else
    {
      *&v136[4] = 0;
      *&v138[12] = 0;
      *&v136[12] = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      memset(v135, 0, sizeof(v135));
      v13 = 0;
      *&v134[4] = 0;
      memset(v143, 0, sizeof(v143));
      *v134 = 0;
      *&v138[4] = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v137 = 0;
      *v138 = 1;
      *&v136[16] = 1;
      *v136 = 1;
      *&v134[12] = 1;
      *&v134[16] = 0;
      *&v138[16] = 1;
    }
  }

LABEL_16:
  if (v18)
  {
    v132 = v4;
    v23 = v19;
    v24 = v12;
    v25 = v10;
    v26 = v11;
    v27 = v14;
    v28 = v5;
    v29 = v13;
    v30 = v16;
    v31 = v15;
    v32 = v17;

    v33 = v32;
    v15 = v31;
    v16 = v30;
    v13 = v29;
    v5 = v28;
    v14 = v27;
    v11 = v26;
    v10 = v25;
    v12 = v24;
    v19 = v23;
    v4 = v132;
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
  if (v137)
  {
  }

  if (v15)
  {
  }

  if (*&v135[12])
  {
  }

  if (*&v138[4])
  {
  }

  if (v14)
  {
  }

  if (*&v134[16])
  {
  }

  if (*&v138[8])
  {
  }

  if (*&v135[8])
  {
  }

  if (*&v134[4])
  {
  }

  if (LODWORD(v143[0]))
  {
  }

  if (*&v135[4])
  {
  }

  if (*v134)
  {
  }

  if (HIDWORD(v143[0]))
  {
  }

  if (*&v135[16])
  {
  }

  if (*&v134[8])
  {
  }

  if (LODWORD(v143[1]))
  {
  }

  if (v13)
  {
  }

  if (*v135)
  {
  }

  if (HIDWORD(v143[1]))
  {
  }

  if (*&v135[20])
  {
  }

  if (v12)
  {
  }

  if (LODWORD(v143[2]))
  {

    if (!v11)
    {
      goto LABEL_64;
    }

LABEL_100:

    if (!v10)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v11)
  {
    goto LABEL_100;
  }

LABEL_64:
  if (v10)
  {
LABEL_65:
  }

LABEL_66:
  if (HIDWORD(v143[2]))
  {
  }

  if (*&v136[12])
  {
  }

  if (*&v135[24])
  {
  }

  if (*&v138[12])
  {
  }

  if (*&v136[4])
  {
  }

  if (*&v136[8])
  {
  }

  if (*&v138[16])
  {
  }

  if (*&v134[12])
  {
  }

  if (*v136)
  {
  }

  if (*&v138[20])
  {
  }

  if (*&v136[16])
  {
  }

  if (*v138)
  {
  }

  if (*&v138[24])
  {
  }

  if (v140 != v139)
  {
  }

LABEL_95:
  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v34.receiver = self;
  v34.super_class = SFSocialMediaPostCardSection;
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
  v11 = [(SFSocialMediaPostCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFSocialMediaPostCardSection *)self name];
  v16 = [v15 copy];
  [v4 setName:v16];

  [v4 setNameNoWrap:{-[SFSocialMediaPostCardSection nameNoWrap](self, "nameNoWrap")}];
  v17 = [(SFSocialMediaPostCardSection *)self nameMaxLines];
  v18 = [v17 copy];
  [v4 setNameMaxLines:v18];

  v19 = [(SFSocialMediaPostCardSection *)self handle];
  v20 = [v19 copy];
  [v4 setHandle:v20];

  v21 = [(SFSocialMediaPostCardSection *)self verifiedGlyph];
  v22 = [v21 copy];
  [v4 setVerifiedGlyph:v22];

  v23 = [(SFSocialMediaPostCardSection *)self profilePicture];
  v24 = [v23 copy];
  [v4 setProfilePicture:v24];

  v25 = [(SFSocialMediaPostCardSection *)self post];
  v26 = [v25 copy];
  [v4 setPost:v26];

  v27 = [(SFSocialMediaPostCardSection *)self picture];
  v28 = [v27 copy];
  [v4 setPicture:v28];

  v29 = [(SFSocialMediaPostCardSection *)self timestamp];
  v30 = [v29 copy];
  [v4 setTimestamp:v30];

  v31 = [(SFSocialMediaPostCardSection *)self footnote];
  v32 = [v31 copy];
  [v4 setFootnote:v32];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSocialMediaPostCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBSocialMediaPostCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSocialMediaPostCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBSocialMediaPostCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFSocialMediaPostCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFSocialMediaPostCardSection)initWithCoder:(id)a3
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
    [(SFSocialMediaPostCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 name];
    [(SFSocialMediaPostCardSection *)v5 setName:v14];

    [(SFSocialMediaPostCardSection *)v5 setNameNoWrap:[(SFCardSection *)v8 nameNoWrap]];
    v15 = [(SFCardSection *)v8 nameMaxLines];
    [(SFSocialMediaPostCardSection *)v5 setNameMaxLines:v15];

    v16 = [(SFCardSection *)v8 handle];
    [(SFSocialMediaPostCardSection *)v5 setHandle:v16];

    v17 = [(SFCardSection *)v8 verifiedGlyph];
    [(SFSocialMediaPostCardSection *)v5 setVerifiedGlyph:v17];

    v18 = [(SFCardSection *)v8 profilePicture];
    [(SFSocialMediaPostCardSection *)v5 setProfilePicture:v18];

    v19 = [(SFCardSection *)v8 post];
    [(SFSocialMediaPostCardSection *)v5 setPost:v19];

    v20 = [(SFCardSection *)v8 picture];
    [(SFSocialMediaPostCardSection *)v5 setPicture:v20];

    v21 = [(SFCardSection *)v8 timestamp];
    [(SFSocialMediaPostCardSection *)v5 setTimestamp:v21];

    v22 = [(SFCardSection *)v8 footnote];
    [(SFSocialMediaPostCardSection *)v5 setFootnote:v22];

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

- (SFSocialMediaPostCardSection)initWithProtobuf:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v56.receiver = self;
  v56.super_class = SFSocialMediaPostCardSection;
  v5 = [(SFCardSection *)&v56 init];
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

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v53;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v53 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v52 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v52 objects:v57 count:16];
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
      [(SFSocialMediaPostCardSection *)v5 setType:v19];
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

    v24 = [v4 name];

    if (v24)
    {
      v25 = [v4 name];
      [(SFSocialMediaPostCardSection *)v5 setName:v25];
    }

    if ([v4 nameNoWrap])
    {
      -[SFSocialMediaPostCardSection setNameNoWrap:](v5, "setNameNoWrap:", [v4 nameNoWrap]);
    }

    if ([v4 nameMaxLines])
    {
      v26 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "nameMaxLines")}];
      [(SFSocialMediaPostCardSection *)v5 setNameMaxLines:v26];
    }

    v27 = [v4 handle];

    if (v27)
    {
      v28 = [v4 handle];
      [(SFSocialMediaPostCardSection *)v5 setHandle:v28];
    }

    v29 = [v4 verifiedGlyph];

    if (v29)
    {
      v30 = [SFImage alloc];
      v31 = [v4 verifiedGlyph];
      v32 = [(SFImage *)v30 initWithProtobuf:v31];
      [(SFSocialMediaPostCardSection *)v5 setVerifiedGlyph:v32];
    }

    v33 = [v4 profilePicture];

    if (v33)
    {
      v34 = [SFImage alloc];
      v35 = [v4 profilePicture];
      v36 = [(SFImage *)v34 initWithProtobuf:v35];
      [(SFSocialMediaPostCardSection *)v5 setProfilePicture:v36];
    }

    v37 = [v4 post];

    if (v37)
    {
      v38 = [SFRichText alloc];
      v39 = [v4 post];
      v40 = [(SFRichText *)v38 initWithProtobuf:v39];
      [(SFSocialMediaPostCardSection *)v5 setPost:v40];
    }

    v41 = [v4 picture];

    if (v41)
    {
      v42 = [SFImage alloc];
      v43 = [v4 picture];
      v44 = [(SFImage *)v42 initWithProtobuf:v43];
      [(SFSocialMediaPostCardSection *)v5 setPicture:v44];
    }

    v45 = [v4 timestamp];

    if (v45)
    {
      v46 = [v4 timestamp];
      [(SFSocialMediaPostCardSection *)v5 setTimestamp:v46];
    }

    v47 = [v4 footnote];

    if (v47)
    {
      v48 = [v4 footnote];
      [(SFSocialMediaPostCardSection *)v5 setFootnote:v48];
    }

    v49 = v5;
  }

  v50 = *MEMORY[0x1E69E9840];
  return v5;
}

@end