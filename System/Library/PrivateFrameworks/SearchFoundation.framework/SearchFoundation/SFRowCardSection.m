@interface SFRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRowCardSection)initWithCoder:(id)a3;
- (SFRowCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFRowCardSection

- (unint64_t)hash
{
  v43.receiver = self;
  v43.super_class = SFRowCardSection;
  v3 = [(SFCardSection *)&v43 hash];
  v42 = [(SFCardSection *)self punchoutOptions];
  v4 = [v42 hash];
  v41 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v41 hash];
  v40 = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [v40 hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v9 = [(SFCardSection *)self hasBottomPadding];
  v39 = [(SFRowCardSection *)self type];
  v10 = v9 ^ [v39 hash];
  v11 = v10 ^ [(SFCardSection *)self separatorStyle];
  v38 = [(SFCardSection *)self backgroundColor];
  v12 = v11 ^ [v38 hash];
  v37 = [(SFRowCardSection *)self image];
  v13 = v8 ^ v12 ^ [v37 hash];
  v14 = [(SFRowCardSection *)self imageIsRightAligned];
  v15 = [(SFRowCardSection *)self leadingText];
  v16 = v14 ^ [v15 hash];
  v17 = [(SFRowCardSection *)self trailingText];
  v18 = v16 ^ [v17 hash];
  v19 = [(SFRowCardSection *)self attributionImage];
  v20 = v18 ^ [v19 hash];
  v21 = [(SFRowCardSection *)self key];
  v22 = v20 ^ [v21 hash];
  v36 = v13 ^ v22 ^ [(SFRowCardSection *)self keyNoWrap];
  v23 = [(SFRowCardSection *)self keyWeight];
  v24 = [v23 hash];
  v25 = [(SFRowCardSection *)self value];
  v26 = v24 ^ [v25 hash];
  v27 = v26 ^ [(SFRowCardSection *)self valueNoWrap];
  v28 = [(SFRowCardSection *)self valueWeight];
  v29 = v27 ^ [v28 hash];
  v30 = v29 ^ [(SFRowCardSection *)self cardPaddingBottom];
  v31 = [(SFRowCardSection *)self leadingSubtitle];
  v32 = v30 ^ [v31 hash];
  v33 = [(SFRowCardSection *)self trailingSubtitle];
  v34 = v32 ^ [v33 hash];

  return v36 ^ v34;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_99;
  }

  if (![(SFRowCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v162.receiver = self, v162.super_class = SFRowCardSection, ![(SFCardSection *)&v162 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_99;
  }

  v5 = v4;
  v159 = [(SFCardSection *)self punchoutOptions];
  v158 = [(SFCardSection *)v5 punchoutOptions];
  v156 = v158 == 0;
  v157 = v159 != 0;
  if (v157 == v156)
  {
    v155 = 0uLL;
    v154 = 0uLL;
    v10 = 0;
    memset(v153, 0, sizeof(v153));
    v11 = 0;
    v12 = 0;
    v151 = 0;
    v147 = 0;
    v145 = 0;
    v149 = 0;
    memset(v161, 0, sizeof(v161));
    v144 = 0;
    v160 = 0;
    v146 = 0;
    v150 = 0;
    v148 = 0;
    v152 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v143 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v138 = v139 = v9;
    if (![v9 isEqual:?])
    {
      v154 = 0uLL;
      *(&v155 + 4) = 0;
      v10 = 0;
      memset(v153, 0, sizeof(v153));
      v11 = 0;
      LODWORD(v155) = 0;
      v12 = 0;
      v151 = 0;
      v147 = 0;
      v145 = 0;
      v149 = 0;
      memset(v161, 0, sizeof(v161));
      v144 = 0;
      v160 = 0;
      v146 = 0;
      v150 = 0;
      v148 = 0;
      v152 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      HIDWORD(v155) = 1;
      goto LABEL_16;
    }
  }

  v141 = [(SFCardSection *)self punchoutPickerTitle];
  v140 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v155) = v8;
  if ((v141 != 0) == (v140 == 0))
  {
    *(&v155 + 4) = 0;
    v10 = 0;
    memset(v153, 0, sizeof(v153));
    v11 = 0;
    LODWORD(v155) = 0;
    v12 = 0;
    v151 = 0;
    v147 = 0;
    v145 = 0;
    v149 = 0;
    memset(v161, 0, sizeof(v161));
    v144 = 0;
    v160 = 0;
    v146 = 0;
    v150 = 0;
    v148 = 0;
    v152 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v154 = 1uLL;
    goto LABEL_16;
  }

  v20 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = v20 != 0;
  v137 = v20;
  if (v20)
  {
    v22 = [(SFCardSection *)self punchoutPickerTitle];
    v133 = [(SFCardSection *)v5 punchoutPickerTitle];
    v134 = v22;
    if (![v22 isEqual:?])
    {
      v10 = 0;
      memset(v153, 0, 24);
      *&v155 = 0;
      v11 = 0;
      v12 = 0;
      v151 = 0;
      v147 = 0;
      v145 = 0;
      v149 = 0;
      memset(v161, 0, sizeof(v161));
      v144 = 0;
      v160 = 0;
      v146 = 0;
      v150 = 0;
      v148 = 0;
      v152 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v154 = 1uLL;
      v153[3] = 1;
      DWORD2(v155) = 1;
      goto LABEL_16;
    }
  }

  v136 = [(SFCardSection *)self punchoutPickerDismissText];
  v135 = [(SFCardSection *)v5 punchoutPickerDismissText];
  DWORD2(v155) = v21;
  if ((v136 != 0) == (v135 == 0))
  {
    memset(v153, 0, 24);
    *&v155 = 0;
    v11 = 0;
    v12 = 0;
    v151 = 0;
    v147 = 0;
    v145 = 0;
    v149 = 0;
    memset(v161, 0, sizeof(v161));
    v144 = 0;
    v160 = 0;
    v146 = 0;
    v150 = 0;
    v148 = 0;
    v152 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v154 = 1uLL;
    v153[3] = 1;
    v10 = 1;
    goto LABEL_16;
  }

  v35 = [(SFCardSection *)self punchoutPickerDismissText];
  v36 = v35 != 0;
  v132 = v35;
  if (v35)
  {
    v37 = [(SFCardSection *)self punchoutPickerDismissText];
    v130 = [(SFCardSection *)v5 punchoutPickerDismissText];
    v131 = v37;
    if (![v37 isEqual:?])
    {
      v11 = 0;
      *&v155 = 0x100000000;
      v12 = 0;
      memset(v153 + 4, 0, 20);
      v151 = 0;
      v147 = 0;
      v145 = 0;
      v149 = 0;
      memset(v161, 0, sizeof(v161));
      v144 = 0;
      v160 = 0;
      v146 = 0;
      v150 = 0;
      v148 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v154 = 1uLL;
      v153[3] = 1;
      v10 = 1;
      v152 = 0;
      LODWORD(v153[0]) = 1;
      goto LABEL_16;
    }

    DWORD1(v155) = v36;
  }

  else
  {
    DWORD1(v155) = 0;
  }

  v38 = [(SFCardSection *)self canBeHidden];
  if (v38 != [(SFCardSection *)v5 canBeHidden]|| (v39 = [(SFCardSection *)self hasTopPadding], v39 != [(SFCardSection *)v5 hasTopPadding]) || (v40 = [(SFCardSection *)self hasBottomPadding], v40 != [(SFCardSection *)v5 hasBottomPadding]))
  {
    v11 = 0;
    LODWORD(v155) = 0;
    v12 = 0;
    memset(v153 + 4, 0, 20);
    v151 = 0;
    v147 = 0;
    v145 = 0;
    v149 = 0;
    memset(v161, 0, sizeof(v161));
    v144 = 0;
    v160 = 0;
    v146 = 0;
    v150 = 0;
    v148 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v154 = 1uLL;
    v153[3] = 1;
    v10 = 1;
    v152 = 0;
    LODWORD(v153[0]) = 1;
    goto LABEL_16;
  }

  v129 = [(SFRowCardSection *)self type];
  v128 = [(SFRowCardSection *)v5 type];
  if ((v129 != 0) == (v128 == 0))
  {
    v11 = 0;
    LODWORD(v155) = 0;
    v12 = 0;
    *(v153 + 4) = 0uLL;
    v151 = 0;
    v147 = 0;
    v145 = 0;
    v149 = 0;
    memset(v161, 0, sizeof(v161));
    v144 = 0;
    v160 = 0;
    v146 = 0;
    v150 = 0;
    v148 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v154 = 1uLL;
    v153[3] = 1;
    v10 = 1;
    v152 = 0;
    LODWORD(v153[0]) = 1;
    HIDWORD(v153[2]) = 1;
    goto LABEL_16;
  }

  v41 = [(SFRowCardSection *)self type];
  v42 = v41 != 0;
  v127 = v41;
  if (v41)
  {
    v43 = [(SFRowCardSection *)self type];
    v125 = [(SFRowCardSection *)v5 type];
    v126 = v43;
    if (![v43 isEqual:?])
    {
      v12 = 0;
      *(v153 + 4) = 0uLL;
      v151 = 0;
      v147 = 0;
      v145 = 0;
      v149 = 0;
      memset(v161, 0, sizeof(v161));
      v144 = 0;
      v160 = 0;
      v146 = 0;
      v150 = 0;
      v148 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v154 = 1uLL;
      v153[3] = 1;
      v10 = 1;
      v152 = 0;
      LODWORD(v153[0]) = 1;
      HIDWORD(v153[2]) = 1;
      v11 = 1;
      LODWORD(v155) = 1;
      goto LABEL_16;
    }

    LODWORD(v155) = v42;
  }

  else
  {
    LODWORD(v155) = 0;
  }

  v44 = [(SFCardSection *)self separatorStyle];
  if (v44 == [(SFCardSection *)v5 separatorStyle])
  {
    v124 = [(SFCardSection *)self backgroundColor];
    v123 = [(SFCardSection *)v5 backgroundColor];
    if ((v124 != 0) == (v123 == 0))
    {
      *(&v153[1] + 4) = 0;
      *(v153 + 4) = 0;
      v151 = 0;
      v147 = 0;
      v145 = 0;
      v149 = 0;
      memset(v161, 0, sizeof(v161));
      v144 = 0;
      v160 = 0;
      v146 = 0;
      v150 = 0;
      v148 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v154 = 1uLL;
      v153[3] = 1;
      v10 = 1;
      v152 = 0;
      LODWORD(v153[0]) = 1;
      HIDWORD(v153[2]) = 1;
      v11 = 1;
      v12 = 1;
    }

    else
    {
      v45 = [(SFCardSection *)self backgroundColor];
      *&v161[16] = v45 != 0;
      v122 = v45;
      if (!v45 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v118 = objc_claimAutoreleasedReturnValue(), v119 = v46, [v46 isEqual:?]))
      {
        v121 = [(SFRowCardSection *)self image];
        v120 = [(SFRowCardSection *)v5 image];
        if ((v121 != 0) == (v120 == 0))
        {
          v153[1] = 0;
          *&v161[8] = 0;
          v151 = 0;
          v147 = 0;
          *v161 = 0;
          v145 = 0;
          v149 = 0;
          v144 = 0;
          v160 = 0;
          v146 = 0;
          v150 = 0;
          v148 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v154 = 1uLL;
          v153[3] = 1;
          v10 = 1;
          v152 = 0;
          v153[0] = 0x100000001;
          v153[2] = 0x100000001;
          v11 = 1;
          v12 = 1;
        }

        else
        {
          v47 = [(SFRowCardSection *)self image];
          *&v161[12] = v47 != 0;
          v117 = v47;
          if (!v47 || (-[SFRowCardSection image](self, "image"), v48 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection image](v5, "image"), v115 = objc_claimAutoreleasedReturnValue(), v116 = v48, [v48 isEqual:?]))
          {
            v49 = [(SFRowCardSection *)self imageIsRightAligned];
            if (v49 == [(SFRowCardSection *)v5 imageIsRightAligned])
            {
              v114 = [(SFRowCardSection *)self leadingText];
              v113 = [(SFRowCardSection *)v5 leadingText];
              if ((v114 != 0) == (v113 == 0))
              {
                *&v161[4] = 0;
                v147 = 0;
                v151 = 0x100000000;
                v145 = 0;
                v149 = 0;
                *v161 = 0;
                v144 = 0;
                v160 = 0;
                v146 = 0;
                v150 = 0;
                v148 = 0;
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v154 = 1uLL;
                v153[3] = 1;
                v10 = 1;
                v152 = 0;
                v153[0] = 0x100000001;
                v153[2] = 0x100000001;
                v11 = 1;
                v12 = 1;
                v153[1] = 1;
              }

              else
              {
                v50 = [(SFRowCardSection *)self leadingText];
                *&v161[8] = v50 != 0;
                v112 = v50;
                if (!v50 || (-[SFRowCardSection leadingText](self, "leadingText"), v51 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection leadingText](v5, "leadingText"), v108 = objc_claimAutoreleasedReturnValue(), v109 = v51, [v51 isEqual:?]))
                {
                  v111 = [(SFRowCardSection *)self trailingText];
                  v110 = [(SFRowCardSection *)v5 trailingText];
                  if ((v111 != 0) == (v110 == 0))
                  {
                    v151 = 0x100000000;
                    *v161 = 0;
                    v145 = 0;
                    v149 = 0;
                    v144 = 0;
                    v160 = 0;
                    v146 = 0;
                    v150 = 0;
                    v148 = 0;
                    v13 = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v154 = 1uLL;
                    v153[3] = 1;
                    v10 = 1;
                    v152 = 0;
                    v153[0] = 0x100000001;
                    v153[2] = 0x100000001;
                    v11 = 1;
                    v12 = 1;
                    v153[1] = 0x100000001;
                    v147 = 1;
                  }

                  else
                  {
                    v52 = [(SFRowCardSection *)self trailingText];
                    *&v161[4] = v52 != 0;
                    v107 = v52;
                    if (!v52 || (-[SFRowCardSection trailingText](self, "trailingText"), v53 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection trailingText](v5, "trailingText"), v103 = objc_claimAutoreleasedReturnValue(), v104 = v53, [v53 isEqual:?]))
                    {
                      v106 = [(SFRowCardSection *)self attributionImage];
                      v105 = [(SFRowCardSection *)v5 attributionImage];
                      if ((v106 != 0) == (v105 == 0))
                      {
                        v149 = 0;
                        *v161 = 0;
                        v144 = 0;
                        v160 = 0;
                        v146 = 0;
                        v150 = 0;
                        v148 = 0;
                        v13 = 0;
                        v14 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        v154 = 1uLL;
                        v153[3] = 1;
                        v10 = 1;
                        v152 = 0;
                        v153[0] = 0x100000001;
                        v153[2] = 0x100000001;
                        v11 = 1;
                        v12 = 1;
                        v153[1] = 0x100000001;
                        v151 = 0x100000001;
                        v147 = 1;
                        v145 = 1;
                      }

                      else
                      {
                        v54 = [(SFRowCardSection *)self attributionImage];
                        *v161 = v54 != 0;
                        v102 = v54;
                        if (!v54 || (-[SFRowCardSection attributionImage](self, "attributionImage"), v55 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection attributionImage](v5, "attributionImage"), v98 = objc_claimAutoreleasedReturnValue(), v99 = v55, [v55 isEqual:?]))
                        {
                          v101 = [(SFRowCardSection *)self key];
                          v100 = [(SFRowCardSection *)v5 key];
                          if ((v101 != 0) == (v100 == 0))
                          {
                            v160 = 0;
                            v146 = 0;
                            v150 = 0;
                            v148 = 0;
                            v13 = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            v154 = 1uLL;
                            v153[3] = 1;
                            v10 = 1;
                            v152 = 0;
                            v153[0] = 0x100000001;
                            v153[2] = 0x100000001;
                            v11 = 1;
                            v12 = 1;
                            v153[1] = 0x100000001;
                            v151 = 0x100000001;
                            v147 = 1;
                            v145 = 1;
                            v149 = 1;
                            v144 = 1;
                          }

                          else
                          {
                            v56 = [(SFRowCardSection *)self key];
                            v160 = v56 != 0;
                            v97 = v56;
                            if (!v56 || (-[SFRowCardSection key](self, "key"), v57 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection key](v5, "key"), v95 = objc_claimAutoreleasedReturnValue(), v96 = v57, [v57 isEqual:?]))
                            {
                              v58 = [(SFRowCardSection *)self keyNoWrap];
                              if (v58 == [(SFRowCardSection *)v5 keyNoWrap])
                              {
                                v94 = [(SFRowCardSection *)self keyWeight];
                                v93 = [(SFRowCardSection *)v5 keyWeight];
                                if ((v94 != 0) == (v93 == 0))
                                {
                                  v150 = 0;
                                  v146 = 0x100000000;
                                  v148 = 0;
                                  v13 = 0;
                                  v14 = 0;
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v19 = 0;
                                  v154 = 1uLL;
                                  v153[3] = 1;
                                  v10 = 1;
                                  v152 = 0;
                                  v153[0] = 0x100000001;
                                  v153[2] = 0x100000001;
                                  v11 = 1;
                                  v12 = 1;
                                  v153[1] = 0x100000001;
                                  v151 = 0x100000001;
                                  v147 = 1;
                                  v145 = 1;
                                  v149 = 1;
                                  v144 = 0x100000001;
                                }

                                else
                                {
                                  v59 = [(SFRowCardSection *)self keyWeight];
                                  HIDWORD(v154) = v59 != 0;
                                  v92 = v59;
                                  if (!v59 || (-[SFRowCardSection keyWeight](self, "keyWeight"), v60 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection keyWeight](v5, "keyWeight"), v88 = objc_claimAutoreleasedReturnValue(), v89 = v60, [v60 isEqual:?]))
                                  {
                                    v91 = [(SFRowCardSection *)self value];
                                    v90 = [(SFRowCardSection *)v5 value];
                                    if ((v91 != 0) == (v90 == 0))
                                    {
                                      v148 = 0;
                                      *(&v154 + 4) = 0;
                                      v13 = 0;
                                      v14 = 0;
                                      v15 = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v19 = 0;
                                      LODWORD(v154) = 1;
                                      v153[3] = 1;
                                      v10 = 1;
                                      v152 = 0;
                                      v153[0] = 0x100000001;
                                      v11 = 1;
                                      v12 = 1;
                                      v153[2] = 0x100000001;
                                      v153[1] = 0x100000001;
                                      v151 = 0x100000001;
                                      v147 = 1;
                                      v145 = 1;
                                      v149 = 1;
                                      v144 = 0x100000001;
                                      v150 = 1;
                                      v146 = 0x100000001;
                                    }

                                    else
                                    {
                                      v61 = [(SFRowCardSection *)self value];
                                      DWORD2(v154) = v61 != 0;
                                      v85 = v61;
                                      if (!v61 || (-[SFRowCardSection value](self, "value"), v62 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection value](v5, "value"), v86 = objc_claimAutoreleasedReturnValue(), v87 = v62, [v62 isEqual:?]))
                                      {
                                        v63 = [(SFRowCardSection *)self valueNoWrap];
                                        if (v63 == [(SFRowCardSection *)v5 valueNoWrap])
                                        {
                                          v84 = [(SFRowCardSection *)self valueWeight];
                                          v83 = [(SFRowCardSection *)v5 valueWeight];
                                          if ((v84 != 0) == (v83 == 0))
                                          {
                                            v13 = 0;
                                            v14 = 0;
                                            v15 = 0;
                                            v16 = 0;
                                            v17 = 0;
                                            v18 = 0;
                                            v19 = 0;
                                            *&v154 = 1;
                                            v153[3] = 1;
                                            v10 = 1;
                                            v153[0] = 0x100000001;
                                            v153[2] = 0x100000001;
                                            v11 = 1;
                                            v12 = 1;
                                            v153[1] = 0x100000001;
                                            v151 = 0x100000001;
                                            v147 = 1;
                                            v145 = 1;
                                            v149 = 1;
                                            v144 = 0x100000001;
                                            v146 = 0x100000001;
                                            v150 = 1;
                                            v148 = 1;
                                            v152 = 1;
                                          }

                                          else
                                          {
                                            v64 = [(SFRowCardSection *)self valueWeight];
                                            DWORD1(v154) = v64 != 0;
                                            v80 = v64;
                                            if (!v64 || (-[SFRowCardSection valueWeight](self, "valueWeight"), v65 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection valueWeight](v5, "valueWeight"), v81 = objc_claimAutoreleasedReturnValue(), v82 = v65, [v65 isEqual:?]))
                                            {
                                              v66 = [(SFRowCardSection *)self cardPaddingBottom];
                                              if (v66 == [(SFRowCardSection *)v5 cardPaddingBottom])
                                              {
                                                v79 = [(SFRowCardSection *)self leadingSubtitle];
                                                v78 = [(SFRowCardSection *)v5 leadingSubtitle];
                                                if ((v79 != 0) == (v78 == 0))
                                                {
                                                  v15 = 0;
                                                  v16 = 0;
                                                  v17 = 0;
                                                  v18 = 0;
                                                  v19 = 0;
                                                  LODWORD(v154) = 1;
                                                  v153[3] = 1;
                                                  v10 = 1;
                                                  v153[0] = 0x100000001;
                                                  v11 = 1;
                                                  v12 = 1;
                                                  v153[2] = 0x100000001;
                                                  v153[1] = 0x100000001;
                                                  v151 = 0x100000001;
                                                  v147 = 1;
                                                  v145 = 1;
                                                  v149 = 1;
                                                  v144 = 0x100000001;
                                                  v146 = 0x100000001;
                                                  v150 = 1;
                                                  v148 = 1;
                                                  v152 = 1;
                                                  v13 = 1;
                                                  v14 = 1;
                                                }

                                                else
                                                {
                                                  v67 = [(SFRowCardSection *)self leadingSubtitle];
                                                  HIDWORD(v153[3]) = v67 != 0;
                                                  v75 = v67;
                                                  if (!v67 || (-[SFRowCardSection leadingSubtitle](self, "leadingSubtitle"), v68 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection leadingSubtitle](v5, "leadingSubtitle"), v76 = objc_claimAutoreleasedReturnValue(), v77 = v68, [v68 isEqual:?]))
                                                  {
                                                    v74 = [(SFRowCardSection *)self trailingSubtitle];
                                                    v72 = [(SFRowCardSection *)v5 trailingSubtitle];
                                                    if ((v74 != 0) == (v72 == 0))
                                                    {
                                                      v17 = 0;
                                                      v18 = 0;
                                                      v19 = 0;
                                                      LODWORD(v154) = 1;
                                                      LODWORD(v153[3]) = 1;
                                                      v10 = 1;
                                                      v153[0] = 0x100000001;
                                                      v11 = 1;
                                                      v12 = 1;
                                                      v153[2] = 0x100000001;
                                                      v153[1] = 0x100000001;
                                                      v151 = 0x100000001;
                                                      v147 = 1;
                                                      v145 = 1;
                                                      v149 = 1;
                                                      v144 = 0x100000001;
                                                      v146 = 0x100000001;
                                                      v150 = 1;
                                                      v148 = 1;
                                                      v152 = 1;
                                                      v13 = 1;
                                                      v14 = 1;
                                                      v15 = 1;
                                                      v16 = 1;
                                                    }

                                                    else
                                                    {
                                                      v73 = [(SFRowCardSection *)self trailingSubtitle];
                                                      if (v73)
                                                      {
                                                        v69 = [(SFRowCardSection *)self trailingSubtitle];
                                                        v70 = [(SFRowCardSection *)v5 trailingSubtitle];
                                                        v71 = v69;
                                                        v19 = [v69 isEqual:v70];
                                                        v6 = v70;
                                                        v18 = 1;
                                                        LODWORD(v154) = 1;
                                                        LODWORD(v153[3]) = 1;
                                                        v10 = 1;
                                                        v153[0] = 0x100000001;
                                                        v11 = 1;
                                                        v12 = 1;
                                                        v153[2] = 0x100000001;
                                                        v153[1] = 0x100000001;
                                                        v151 = 0x100000001;
                                                        v147 = 1;
                                                        v145 = 1;
                                                        v149 = 1;
                                                        v144 = 0x100000001;
                                                        v146 = 0x100000001;
                                                        v150 = 1;
                                                        v148 = 1;
                                                        v152 = 1;
                                                        v13 = 1;
                                                        v14 = 1;
                                                        v15 = 1;
                                                        v16 = 1;
                                                        v17 = 1;
                                                      }

                                                      else
                                                      {
                                                        v73 = 0;
                                                        v18 = 0;
                                                        LODWORD(v154) = 1;
                                                        LODWORD(v153[3]) = 1;
                                                        v10 = 1;
                                                        v153[0] = 0x100000001;
                                                        v11 = 1;
                                                        v12 = 1;
                                                        v153[2] = 0x100000001;
                                                        v153[1] = 0x100000001;
                                                        v151 = 0x100000001;
                                                        v147 = 1;
                                                        v145 = 1;
                                                        v149 = 1;
                                                        v144 = 0x100000001;
                                                        v146 = 0x100000001;
                                                        v150 = 1;
                                                        v148 = 1;
                                                        v152 = 1;
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
                                                    LODWORD(v154) = 1;
                                                    v153[3] = 0x100000001;
                                                    v10 = 1;
                                                    v153[0] = 0x100000001;
                                                    v11 = 1;
                                                    v12 = 1;
                                                    v153[2] = 0x100000001;
                                                    v153[1] = 0x100000001;
                                                    v151 = 0x100000001;
                                                    v147 = 1;
                                                    v145 = 1;
                                                    v149 = 1;
                                                    v144 = 0x100000001;
                                                    v146 = 0x100000001;
                                                    v150 = 1;
                                                    v148 = 1;
                                                    v152 = 1;
                                                    v13 = 1;
                                                    v14 = 1;
                                                    v15 = 1;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v14 = 0;
                                                v15 = 0;
                                                v16 = 0;
                                                v17 = 0;
                                                v18 = 0;
                                                v19 = 0;
                                                LODWORD(v154) = 1;
                                                v153[3] = 1;
                                                v10 = 1;
                                                v153[0] = 0x100000001;
                                                v11 = 1;
                                                v12 = 1;
                                                v153[2] = 0x100000001;
                                                v153[1] = 0x100000001;
                                                v151 = 0x100000001;
                                                v147 = 1;
                                                v145 = 1;
                                                v149 = 1;
                                                v144 = 0x100000001;
                                                v146 = 0x100000001;
                                                v150 = 1;
                                                v148 = 1;
                                                v152 = 1;
                                                v13 = 1;
                                              }
                                            }

                                            else
                                            {
                                              v14 = 0;
                                              v15 = 0;
                                              v16 = 0;
                                              v17 = 0;
                                              v18 = 0;
                                              v19 = 0;
                                              *&v154 = 0x100000001;
                                              v153[3] = 1;
                                              v10 = 1;
                                              v153[0] = 0x100000001;
                                              v11 = 1;
                                              v12 = 1;
                                              v153[2] = 0x100000001;
                                              v153[1] = 0x100000001;
                                              v151 = 0x100000001;
                                              v147 = 1;
                                              v145 = 1;
                                              v149 = 1;
                                              v144 = 0x100000001;
                                              v146 = 0x100000001;
                                              v150 = 1;
                                              v148 = 1;
                                              v152 = 1;
                                              v13 = 1;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v13 = 0;
                                          v14 = 0;
                                          v15 = 0;
                                          v16 = 0;
                                          v17 = 0;
                                          v18 = 0;
                                          v19 = 0;
                                          *&v154 = 1;
                                          v153[3] = 1;
                                          v10 = 1;
                                          v152 = 0;
                                          v153[0] = 0x100000001;
                                          v153[2] = 0x100000001;
                                          v11 = 1;
                                          v12 = 1;
                                          v153[1] = 0x100000001;
                                          v151 = 0x100000001;
                                          v147 = 1;
                                          v145 = 1;
                                          v149 = 1;
                                          v144 = 0x100000001;
                                          v146 = 0x100000001;
                                          v150 = 1;
                                          v148 = 1;
                                        }
                                      }

                                      else
                                      {
                                        v13 = 0;
                                        v14 = 0;
                                        v15 = 0;
                                        v16 = 0;
                                        v17 = 0;
                                        v18 = 0;
                                        v19 = 0;
                                        LODWORD(v154) = 1;
                                        *(&v154 + 4) = 0x100000000;
                                        v153[3] = 1;
                                        v10 = 1;
                                        v152 = 0;
                                        v153[0] = 0x100000001;
                                        v153[2] = 0x100000001;
                                        v11 = 1;
                                        v12 = 1;
                                        v153[1] = 0x100000001;
                                        v151 = 0x100000001;
                                        v147 = 1;
                                        v145 = 1;
                                        v149 = 1;
                                        v144 = 0x100000001;
                                        v146 = 0x100000001;
                                        v150 = 1;
                                        v148 = 1;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v146 = 0x100000000;
                                    v148 = 0;
                                    *(&v154 + 4) = 0;
                                    v13 = 0;
                                    v14 = 0;
                                    v15 = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    LODWORD(v154) = 1;
                                    v153[3] = 1;
                                    v10 = 1;
                                    v152 = 0;
                                    v153[0] = 0x100000001;
                                    v11 = 1;
                                    v12 = 1;
                                    v153[2] = 0x100000001;
                                    v153[1] = 0x100000001;
                                    v151 = 0x100000001;
                                    v147 = 1;
                                    v145 = 1;
                                    v149 = 1;
                                    v144 = 0x100000001;
                                    v150 = 1;
                                    HIDWORD(v154) = 1;
                                  }
                                }
                              }

                              else
                              {
                                v146 = 0;
                                v150 = 0;
                                v148 = 0;
                                v13 = 0;
                                v14 = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                v154 = 1uLL;
                                v153[3] = 1;
                                v10 = 1;
                                v152 = 0;
                                v153[0] = 0x100000001;
                                v153[2] = 0x100000001;
                                v11 = 1;
                                v12 = 1;
                                v153[1] = 0x100000001;
                                v151 = 0x100000001;
                                v147 = 1;
                                v145 = 1;
                                v149 = 1;
                                v144 = 0x100000001;
                              }
                            }

                            else
                            {
                              v146 = 0;
                              v150 = 0;
                              v148 = 0;
                              v13 = 0;
                              v14 = 0;
                              v15 = 0;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v19 = 0;
                              v154 = 1uLL;
                              v153[3] = 1;
                              v10 = 1;
                              v152 = 0;
                              v153[0] = 0x100000001;
                              v153[2] = 0x100000001;
                              v11 = 1;
                              v12 = 1;
                              v153[1] = 0x100000001;
                              v151 = 0x100000001;
                              v147 = 1;
                              v145 = 1;
                              v149 = 1;
                              v144 = 0x100000001;
                              v160 = 1;
                            }
                          }
                        }

                        else
                        {
                          v144 = 0;
                          v160 = 0;
                          v146 = 0;
                          v150 = 0;
                          v148 = 0;
                          v13 = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          v154 = 1uLL;
                          v153[3] = 1;
                          v10 = 1;
                          v152 = 0;
                          v153[0] = 0x100000001;
                          v153[2] = 0x100000001;
                          v11 = 1;
                          v12 = 1;
                          v153[1] = 0x100000001;
                          v151 = 0x100000001;
                          v147 = 1;
                          v145 = 1;
                          v149 = 1;
                          *v161 = 1;
                        }
                      }
                    }

                    else
                    {
                      v145 = 0;
                      v149 = 0;
                      *v161 = 0x100000000;
                      v144 = 0;
                      v160 = 0;
                      v146 = 0;
                      v150 = 0;
                      v148 = 0;
                      v13 = 0;
                      v14 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      v154 = 1uLL;
                      v153[3] = 1;
                      v10 = 1;
                      v152 = 0;
                      v153[0] = 0x100000001;
                      v153[2] = 0x100000001;
                      v11 = 1;
                      v12 = 1;
                      v153[1] = 0x100000001;
                      v151 = 0x100000001;
                      v147 = 1;
                    }
                  }
                }

                else
                {
                  v147 = 0;
                  v151 = 0x100000000;
                  *v161 = 0;
                  v145 = 0;
                  v149 = 0;
                  v144 = 0;
                  v160 = 0;
                  v146 = 0;
                  v150 = 0;
                  v148 = 0;
                  v13 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v154 = 1uLL;
                  v153[3] = 1;
                  v10 = 1;
                  v152 = 0;
                  v153[0] = 0x100000001;
                  v153[2] = 0x100000001;
                  v11 = 1;
                  v12 = 1;
                  v153[1] = 0x100000001;
                  *&v161[8] = 1;
                }
              }
            }

            else
            {
              v151 = 0;
              *&v161[4] = 0;
              v147 = 0;
              v145 = 0;
              v149 = 0;
              *v161 = 0;
              v144 = 0;
              v160 = 0;
              v146 = 0;
              v150 = 0;
              v148 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v154 = 1uLL;
              v153[3] = 1;
              v10 = 1;
              v152 = 0;
              v153[0] = 0x100000001;
              v153[2] = 0x100000001;
              v11 = 1;
              v12 = 1;
              v153[1] = 1;
            }
          }

          else
          {
            v151 = 0;
            *&v161[4] = 0;
            v147 = 0;
            v145 = 0;
            v149 = 0;
            *v161 = 0;
            v144 = 0;
            v160 = 0;
            v146 = 0;
            v150 = 0;
            v148 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v154 = 1uLL;
            v153[3] = 1;
            v10 = 1;
            v152 = 0;
            v153[0] = 0x100000001;
            v153[2] = 0x100000001;
            v11 = 1;
            v12 = 1;
            v153[1] = 1;
            *&v161[12] = 1;
          }
        }
      }

      else
      {
        *(v153 + 4) = 0;
        *&v161[8] = 0;
        v151 = 0;
        HIDWORD(v153[1]) = 0;
        v147 = 0;
        *v161 = 0;
        v145 = 0;
        v149 = 0;
        v144 = 0;
        v160 = 0;
        v146 = 0;
        v150 = 0;
        v148 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v154 = 1uLL;
        v153[3] = 1;
        v10 = 1;
        v152 = 0;
        LODWORD(v153[0]) = 1;
        v153[2] = 0x100000001;
        v11 = 1;
        v12 = 1;
        *&v161[16] = 1;
      }
    }
  }

  else
  {
    v12 = 0;
    *(&v153[1] + 4) = 0;
    *(v153 + 4) = 0;
    v151 = 0;
    v147 = 0;
    v145 = 0;
    v149 = 0;
    memset(v161, 0, sizeof(v161));
    v144 = 0;
    v160 = 0;
    v146 = 0;
    v150 = 0;
    v148 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v154 = 1uLL;
    v153[3] = 1;
    v10 = 1;
    v152 = 0;
    LODWORD(v153[0]) = 1;
    HIDWORD(v153[2]) = 1;
    v11 = 1;
  }

LABEL_16:
  if (v18)
  {
    v142 = v4;
    v23 = v19;
    v24 = v13;
    v25 = v12;
    v26 = v14;
    v27 = v16;
    v28 = v11;
    v29 = v5;
    v30 = v15;
    v31 = v10;
    v32 = v17;

    v33 = v32;
    v10 = v31;
    v15 = v30;
    v5 = v29;
    v11 = v28;
    v16 = v27;
    v14 = v26;
    v12 = v25;
    v13 = v24;
    v19 = v23;
    v4 = v142;
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
  if (HIDWORD(v153[3]))
  {

    if (!v15)
    {
      goto LABEL_22;
    }
  }

  else if (!v15)
  {
LABEL_22:
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v14)
  {
LABEL_23:
  }

LABEL_24:
  if (DWORD1(v154))
  {
  }

  if (v13)
  {
  }

  if (v152)
  {
  }

  if (DWORD2(v154))
  {
  }

  if (v148)
  {
  }

  if (v146)
  {
  }

  if (HIDWORD(v154))
  {
  }

  if (v150)
  {
  }

  if (HIDWORD(v146))
  {
  }

  if (v160)
  {
  }

  if (HIDWORD(v144))
  {
  }

  if (v144)
  {
  }

  if (*v161)
  {
  }

  if (v149)
  {
  }

  if (v145)
  {
  }

  if (*&v161[4])
  {
  }

  if (v151)
  {
  }

  if (v147)
  {
  }

  if (*&v161[8])
  {
  }

  if (HIDWORD(v153[1]))
  {
  }

  if (HIDWORD(v151))
  {
  }

  if (*&v161[12])
  {
  }

  if (LODWORD(v153[1]))
  {
  }

  if (HIDWORD(v153[0]))
  {
  }

  if (*&v161[16])
  {
  }

  if (LODWORD(v153[2]))
  {
  }

  if (v12)
  {
  }

  if (v155)
  {
  }

  if (v11)
  {
  }

  if (HIDWORD(v153[2]))
  {
  }

  if (DWORD1(v155))
  {
  }

  if (LODWORD(v153[0]))
  {

    if (!v10)
    {
      goto LABEL_88;
    }

LABEL_107:

    if (!DWORD2(v155))
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  if (v10)
  {
    goto LABEL_107;
  }

LABEL_88:
  if (DWORD2(v155))
  {
LABEL_89:
  }

LABEL_90:
  if (LODWORD(v153[3]))
  {
  }

  if (v154)
  {
  }

  if (HIDWORD(v155))
  {
  }

  if (v157 != v156)
  {
  }

LABEL_99:
  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v36.receiver = self;
  v36.super_class = SFRowCardSection;
  v4 = [(SFCardSection *)&v36 copyWithZone:a3];
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
  v11 = [(SFRowCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFRowCardSection *)self image];
  v16 = [v15 copy];
  [v4 setImage:v16];

  [v4 setImageIsRightAligned:{-[SFRowCardSection imageIsRightAligned](self, "imageIsRightAligned")}];
  v17 = [(SFRowCardSection *)self leadingText];
  v18 = [v17 copy];
  [v4 setLeadingText:v18];

  v19 = [(SFRowCardSection *)self trailingText];
  v20 = [v19 copy];
  [v4 setTrailingText:v20];

  v21 = [(SFRowCardSection *)self attributionImage];
  v22 = [v21 copy];
  [v4 setAttributionImage:v22];

  v23 = [(SFRowCardSection *)self key];
  v24 = [v23 copy];
  [v4 setKey:v24];

  [v4 setKeyNoWrap:{-[SFRowCardSection keyNoWrap](self, "keyNoWrap")}];
  v25 = [(SFRowCardSection *)self keyWeight];
  v26 = [v25 copy];
  [v4 setKeyWeight:v26];

  v27 = [(SFRowCardSection *)self value];
  v28 = [v27 copy];
  [v4 setValue:v28];

  [v4 setValueNoWrap:{-[SFRowCardSection valueNoWrap](self, "valueNoWrap")}];
  v29 = [(SFRowCardSection *)self valueWeight];
  v30 = [v29 copy];
  [v4 setValueWeight:v30];

  [v4 setCardPaddingBottom:{-[SFRowCardSection cardPaddingBottom](self, "cardPaddingBottom")}];
  v31 = [(SFRowCardSection *)self leadingSubtitle];
  v32 = [v31 copy];
  [v4 setLeadingSubtitle:v32];

  v33 = [(SFRowCardSection *)self trailingSubtitle];
  v34 = [v33 copy];
  [v4 setTrailingSubtitle:v34];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRowCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRowCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRowCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRowCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFRowCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFRowCardSection)initWithCoder:(id)a3
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
    [(SFRowCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 image];
    [(SFRowCardSection *)v5 setImage:v14];

    [(SFRowCardSection *)v5 setImageIsRightAligned:[(SFCardSection *)v8 imageIsRightAligned]];
    v15 = [(SFCardSection *)v8 leadingText];
    [(SFRowCardSection *)v5 setLeadingText:v15];

    v16 = [(SFCardSection *)v8 trailingText];
    [(SFRowCardSection *)v5 setTrailingText:v16];

    v17 = [(SFCardSection *)v8 attributionImage];
    [(SFRowCardSection *)v5 setAttributionImage:v17];

    v18 = [(SFCardSection *)v8 key];
    [(SFRowCardSection *)v5 setKey:v18];

    [(SFRowCardSection *)v5 setKeyNoWrap:[(SFCardSection *)v8 keyNoWrap]];
    v19 = [(SFCardSection *)v8 keyWeight];
    [(SFRowCardSection *)v5 setKeyWeight:v19];

    v20 = [(SFCardSection *)v8 value];
    [(SFRowCardSection *)v5 setValue:v20];

    [(SFRowCardSection *)v5 setValueNoWrap:[(SFCardSection *)v8 valueNoWrap]];
    v21 = [(SFCardSection *)v8 valueWeight];
    [(SFRowCardSection *)v5 setValueWeight:v21];

    [(SFRowCardSection *)v5 setCardPaddingBottom:[(SFCardSection *)v8 cardPaddingBottom]];
    v22 = [(SFCardSection *)v8 leadingSubtitle];
    [(SFRowCardSection *)v5 setLeadingSubtitle:v22];

    v23 = [(SFCardSection *)v8 trailingSubtitle];
    [(SFRowCardSection *)v5 setTrailingSubtitle:v23];

    v24 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v24];

    v25 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v25];

    v26 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v26];

    v27 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v27];

    v28 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v28];

    v29 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v29];

    v30 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v30];

    v31 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v31];

    v32 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v32];

    v33 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v33];

    v34 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v34];

    v35 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v35];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v36 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v36];

    v37 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v37];

    v38 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v38];

    v39 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v39];

    v40 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v40];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v41 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v41];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v42 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v42];

    v43 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v43];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v44 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v44];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v45 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v45];

    v46 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v46];

    v47 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v47];

    v48 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v48];
  }

  return v5;
}

- (SFRowCardSection)initWithProtobuf:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v61.receiver = self;
  v61.super_class = SFRowCardSection;
  v5 = [(SFCardSection *)&v61 init];
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

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v58;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v58 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v57 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v57 objects:v62 count:16];
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
      [(SFRowCardSection *)v5 setType:v19];
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

    v24 = [v4 image];

    if (v24)
    {
      v25 = [SFImage alloc];
      v26 = [v4 image];
      v27 = [(SFImage *)v25 initWithProtobuf:v26];
      [(SFRowCardSection *)v5 setImage:v27];
    }

    if ([v4 imageIsRightAligned])
    {
      -[SFRowCardSection setImageIsRightAligned:](v5, "setImageIsRightAligned:", [v4 imageIsRightAligned]);
    }

    v28 = [v4 leadingText];

    if (v28)
    {
      v29 = [SFRichText alloc];
      v30 = [v4 leadingText];
      v31 = [(SFRichText *)v29 initWithProtobuf:v30];
      [(SFRowCardSection *)v5 setLeadingText:v31];
    }

    v32 = [v4 trailingText];

    if (v32)
    {
      v33 = [SFRichText alloc];
      v34 = [v4 trailingText];
      v35 = [(SFRichText *)v33 initWithProtobuf:v34];
      [(SFRowCardSection *)v5 setTrailingText:v35];
    }

    v36 = [v4 attributionImage];

    if (v36)
    {
      v37 = [SFImage alloc];
      v38 = [v4 attributionImage];
      v39 = [(SFImage *)v37 initWithProtobuf:v38];
      [(SFRowCardSection *)v5 setAttributionImage:v39];
    }

    v40 = [v4 key];

    if (v40)
    {
      v41 = [v4 key];
      [(SFRowCardSection *)v5 setKey:v41];
    }

    if ([v4 keyNoWrap])
    {
      -[SFRowCardSection setKeyNoWrap:](v5, "setKeyNoWrap:", [v4 keyNoWrap]);
    }

    if ([v4 keyWeight])
    {
      v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "keyWeight")}];
      [(SFRowCardSection *)v5 setKeyWeight:v42];
    }

    v43 = [v4 value];

    if (v43)
    {
      v44 = [v4 value];
      [(SFRowCardSection *)v5 setValue:v44];
    }

    if ([v4 valueNoWrap])
    {
      -[SFRowCardSection setValueNoWrap:](v5, "setValueNoWrap:", [v4 valueNoWrap]);
    }

    if ([v4 valueWeight])
    {
      v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "valueWeight")}];
      [(SFRowCardSection *)v5 setValueWeight:v45];
    }

    if ([v4 cardPaddingBottom])
    {
      -[SFRowCardSection setCardPaddingBottom:](v5, "setCardPaddingBottom:", [v4 cardPaddingBottom]);
    }

    v46 = [v4 leadingSubtitle];

    if (v46)
    {
      v47 = [SFRichText alloc];
      v48 = [v4 leadingSubtitle];
      v49 = [(SFRichText *)v47 initWithProtobuf:v48];
      [(SFRowCardSection *)v5 setLeadingSubtitle:v49];
    }

    v50 = [v4 trailingSubtitle];

    if (v50)
    {
      v51 = [SFRichText alloc];
      v52 = [v4 trailingSubtitle];
      v53 = [(SFRichText *)v51 initWithProtobuf:v52];
      [(SFRowCardSection *)v5 setTrailingSubtitle:v53];
    }

    v54 = v5;
  }

  v55 = *MEMORY[0x1E69E9840];
  return v5;
}

@end