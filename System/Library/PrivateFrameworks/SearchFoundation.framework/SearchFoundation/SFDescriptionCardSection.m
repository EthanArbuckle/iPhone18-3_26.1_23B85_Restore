@interface SFDescriptionCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDescriptionCardSection)initWithCoder:(id)a3;
- (SFDescriptionCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFDescriptionCardSection

- (unint64_t)hash
{
  v47.receiver = self;
  v47.super_class = SFDescriptionCardSection;
  v3 = [(SFTitleCardSection *)&v47 hash];
  v46 = [(SFCardSection *)self punchoutOptions];
  v4 = [v46 hash];
  v45 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v45 hash];
  v44 = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [v44 hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v9 = [(SFCardSection *)self hasBottomPadding];
  v43 = [(SFTitleCardSection *)self type];
  v10 = v9 ^ [v43 hash];
  v11 = v10 ^ [(SFCardSection *)self separatorStyle];
  v42 = [(SFCardSection *)self backgroundColor];
  v12 = v11 ^ [v42 hash];
  v41 = [(SFTitleCardSection *)self title];
  v13 = v8 ^ v12 ^ [v41 hash];
  v40 = [(SFTitleCardSection *)self subtitle];
  v14 = [v40 hash];
  v39 = [(SFDescriptionCardSection *)self descriptionText];
  v15 = v14 ^ [v39 hash];
  v38 = [(SFDescriptionCardSection *)self expandText];
  v16 = v15 ^ [v38 hash];
  v17 = [(SFDescriptionCardSection *)self image];
  v18 = v16 ^ [v17 hash];
  v19 = v18 ^ [(SFDescriptionCardSection *)self titleNoWrap];
  v20 = [(SFDescriptionCardSection *)self titleWeight];
  v21 = v19 ^ [v20 hash];
  v22 = [(SFDescriptionCardSection *)self descriptionSize];
  v23 = v13 ^ v21 ^ [v22 hash];
  v24 = [(SFDescriptionCardSection *)self descriptionWeight];
  v25 = [v24 hash];
  v26 = v25 ^ [(SFDescriptionCardSection *)self descriptionExpand];
  v27 = v26 ^ [(SFDescriptionCardSection *)self imageAlign];
  v28 = v27 ^ [(SFDescriptionCardSection *)self textAlign];
  v29 = [(SFDescriptionCardSection *)self attributionText];
  v30 = v28 ^ [v29 hash];
  v31 = [(SFDescriptionCardSection *)self attributionURL];
  v32 = v30 ^ [v31 hash];
  v33 = [(SFDescriptionCardSection *)self attributionGlyph];
  v34 = v23 ^ v32 ^ [v33 hash];
  v35 = [(SFDescriptionCardSection *)self richDescriptions];
  v36 = [v35 hash];

  return v34 ^ v36;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
    goto LABEL_113;
  }

  if (![(SFDescriptionCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v182.receiver = self, v182.super_class = SFDescriptionCardSection, ![(SFTitleCardSection *)&v182 isEqual:v4]))
  {
    v18 = 0;
    goto LABEL_113;
  }

  v5 = v4;
  v177 = [(SFCardSection *)self punchoutOptions];
  v176 = [(SFCardSection *)v5 punchoutOptions];
  v174 = v176 == 0;
  v175 = v177 != 0;
  if (v175 == v174)
  {
    v173 = 0uLL;
    v171 = 0uLL;
    memset(v170, 0, sizeof(v170));
    v10 = 0;
    v166 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v181 = 0uLL;
    v168 = 0;
    v163 = 0;
    v164 = 0;
    v159 = 0;
    v162 = 0;
    v180 = 0;
    v153 = 0;
    v157 = 0;
    v179 = 0;
    v158 = 0;
    v161 = 0;
    v178 = 0;
    v156 = 0;
    v160 = 0;
    v172 = 0;
    v155 = 0;
    v154 = 0;
    v165 = 0;
    v167 = 0;
    v169 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v152 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v148 = v149 = v9;
    if (![v9 isEqual:?])
    {
      v171 = 0uLL;
      memset(v170, 0, sizeof(v170));
      *(&v173 + 4) = 0;
      v10 = 0;
      v166 = 0;
      v11 = 0;
      v12 = 0;
      LODWORD(v173) = 0;
      v13 = 0;
      v181 = 0uLL;
      v168 = 0;
      v163 = 0;
      v164 = 0;
      v159 = 0;
      v162 = 0;
      v180 = 0;
      v153 = 0;
      v157 = 0;
      v179 = 0;
      v158 = 0;
      v161 = 0;
      v178 = 0;
      v156 = 0;
      v160 = 0;
      v172 = 0;
      v155 = 0;
      v154 = 0;
      v165 = 0;
      v167 = 0;
      v169 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      HIDWORD(v173) = 1;
      goto LABEL_16;
    }
  }

  v151 = [(SFCardSection *)self punchoutPickerTitle];
  v150 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v173) = v8;
  if ((v151 != 0) == (v150 == 0))
  {
    memset(v170, 0, sizeof(v170));
    *(&v173 + 4) = 0;
    v10 = 0;
    v166 = 0;
    v11 = 0;
    v12 = 0;
    LODWORD(v173) = 0;
    v13 = 0;
    v181 = 0uLL;
    v168 = 0;
    v163 = 0;
    v164 = 0;
    v159 = 0;
    v162 = 0;
    v180 = 0;
    v153 = 0;
    v157 = 0;
    v179 = 0;
    v158 = 0;
    v161 = 0;
    v178 = 0;
    v156 = 0;
    v160 = 0;
    v172 = 0;
    v155 = 0;
    v154 = 0;
    v165 = 0;
    v167 = 0;
    v169 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v171 = 1uLL;
    goto LABEL_16;
  }

  v19 = [(SFCardSection *)self punchoutPickerTitle];
  v20 = v19 != 0;
  v147 = v19;
  if (v19)
  {
    v21 = [(SFCardSection *)self punchoutPickerTitle];
    [(SFCardSection *)v5 punchoutPickerTitle];
    v143 = v144 = v21;
    if (![v21 isEqual:?])
    {
      v10 = 0;
      v166 = 0;
      *&v173 = 0;
      v11 = 0;
      v12 = 0;
      *v170 = 0x100000000;
      v13 = 0;
      v181 = 0uLL;
      v168 = 0;
      v163 = 0;
      v164 = 0;
      v159 = 0;
      v162 = 0;
      v180 = 0;
      v153 = 0;
      v157 = 0;
      v179 = 0;
      v158 = 0;
      v161 = 0;
      v178 = 0;
      v156 = 0;
      v160 = 0;
      v172 = 0;
      v155 = 0;
      v154 = 0;
      v165 = 0;
      v167 = 0;
      v169 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v171 = 1uLL;
      *&v170[8] = 0;
      DWORD2(v173) = 1;
      goto LABEL_16;
    }
  }

  v146 = [(SFCardSection *)self punchoutPickerDismissText];
  v145 = [(SFCardSection *)v5 punchoutPickerDismissText];
  DWORD2(v173) = v20;
  if ((v146 != 0) == (v145 == 0))
  {
    v166 = 0;
    *&v173 = 0;
    v11 = 0;
    v12 = 0;
    *v170 = 0;
    v13 = 0;
    v181 = 0uLL;
    v168 = 0;
    v163 = 0;
    v164 = 0;
    v159 = 0;
    v162 = 0;
    v180 = 0;
    v153 = 0;
    v157 = 0;
    v179 = 0;
    v158 = 0;
    v161 = 0;
    v178 = 0;
    v156 = 0;
    v160 = 0;
    v172 = 0;
    v155 = 0;
    v154 = 0;
    v165 = 0;
    v167 = 0;
    v169 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v171 = 1uLL;
    *&v170[4] = 1;
    v10 = 1;
    goto LABEL_16;
  }

  v31 = [(SFCardSection *)self punchoutPickerDismissText];
  v32 = v31 != 0;
  v142 = v31;
  if (v31)
  {
    v33 = [(SFCardSection *)self punchoutPickerDismissText];
    [(SFCardSection *)v5 punchoutPickerDismissText];
    v140 = v141 = v33;
    if (![v33 isEqual:?])
    {
      v11 = 0;
      v12 = 0;
      *&v173 = 0x100000000;
      *v170 = 0x100000000;
      v13 = 0;
      v181 = 0uLL;
      v166 = 0x100000000;
      v168 = 0;
      v163 = 0;
      v164 = 0;
      v159 = 0;
      v162 = 0;
      v180 = 0;
      v153 = 0;
      v157 = 0;
      v179 = 0;
      v158 = 0;
      v161 = 0;
      v178 = 0;
      v156 = 0;
      v160 = 0;
      v172 = 0;
      v155 = 0;
      v154 = 0;
      v165 = 0;
      v167 = 0;
      v169 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v171 = 1uLL;
      *&v170[8] = 0;
      v10 = 1;
      goto LABEL_16;
    }

    DWORD1(v173) = v32;
  }

  else
  {
    DWORD1(v173) = 0;
  }

  v34 = [(SFCardSection *)self canBeHidden];
  if (v34 != [(SFCardSection *)v5 canBeHidden]|| (v35 = [(SFCardSection *)self hasTopPadding], v35 != [(SFCardSection *)v5 hasTopPadding]) || (v36 = [(SFCardSection *)self hasBottomPadding], v36 != [(SFCardSection *)v5 hasBottomPadding]))
  {
    v11 = 0;
    v12 = 0;
    LODWORD(v173) = 0;
    *v170 = 0x100000000;
    v13 = 0;
    v181 = 0uLL;
    v166 = 0x100000000;
    v168 = 0;
    v163 = 0;
    v164 = 0;
    v159 = 0;
    v162 = 0;
    v180 = 0;
    v153 = 0;
    v157 = 0;
    v179 = 0;
    v158 = 0;
    v161 = 0;
    v178 = 0;
    v156 = 0;
    v160 = 0;
    v172 = 0;
    v155 = 0;
    v154 = 0;
    v165 = 0;
    v167 = 0;
    v169 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v171 = 1uLL;
    *&v170[8] = 0;
    v10 = 1;
    goto LABEL_16;
  }

  v139 = [(SFTitleCardSection *)self type];
  v138 = [(SFTitleCardSection *)v5 type];
  if ((v139 != 0) == (v138 == 0))
  {
    v12 = 0;
    LODWORD(v173) = 0;
    *v170 = 0;
    v13 = 0;
    v181 = 0uLL;
    v166 = 0x100000000;
    v168 = 0;
    v163 = 0;
    v164 = 0;
    v159 = 0;
    v162 = 0;
    v180 = 0;
    v153 = 0;
    v157 = 0;
    v179 = 0;
    v158 = 0;
    v161 = 0;
    v178 = 0;
    v156 = 0;
    v160 = 0;
    v172 = 0;
    v155 = 0;
    v154 = 0;
    v165 = 0;
    v167 = 0;
    v169 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v171 = 1uLL;
    *&v170[4] = 1;
    v10 = 1;
    v11 = 1;
    goto LABEL_16;
  }

  v37 = [(SFTitleCardSection *)self type];
  v38 = v37 != 0;
  v137 = v37;
  if (v37)
  {
    v39 = [(SFTitleCardSection *)self type];
    [(SFTitleCardSection *)v5 type];
    v135 = v136 = v39;
    if (![v39 isEqual:?])
    {
      *v170 = 0x100000000;
      v13 = 0;
      v181 = 0uLL;
      v166 = 0x100000000;
      v168 = 0;
      v163 = 0;
      v164 = 0;
      v159 = 0;
      v162 = 0;
      v180 = 0;
      v153 = 0;
      v157 = 0;
      v179 = 0;
      v158 = 0;
      v161 = 0;
      v178 = 0;
      v156 = 0;
      v160 = 0;
      v172 = 0;
      v155 = 0;
      v154 = 0;
      v165 = 0;
      v167 = 0;
      v169 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v171 = 1uLL;
      *&v170[8] = 0;
      v10 = 1;
      v11 = 1;
      v12 = 1;
      LODWORD(v173) = 1;
      goto LABEL_16;
    }

    LODWORD(v173) = v38;
  }

  else
  {
    LODWORD(v173) = 0;
  }

  v40 = [(SFCardSection *)self separatorStyle];
  if (v40 == [(SFCardSection *)v5 separatorStyle])
  {
    v134 = [(SFCardSection *)self backgroundColor];
    v133 = [(SFCardSection *)v5 backgroundColor];
    if ((v134 != 0) == (v133 == 0))
    {
      v13 = 0;
      v181 = 0uLL;
      v166 = 0x100000000;
      v168 = 0;
      v163 = 0;
      v164 = 0;
      v159 = 0;
      v162 = 0;
      v180 = 0;
      v153 = 0;
      v157 = 0;
      v179 = 0;
      v158 = 0;
      v161 = 0;
      v178 = 0;
      v156 = 0;
      v160 = 0;
      v172 = 0;
      v155 = 0;
      v154 = 0;
      v165 = 0;
      v167 = 0;
      v169 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v171 = 1uLL;
      *&v170[8] = 0;
      v10 = 1;
      v11 = 1;
      v12 = 1;
      *v170 = 0x100000001;
    }

    else
    {
      v41 = [(SFCardSection *)self backgroundColor];
      HIDWORD(v181) = v41 != 0;
      v132 = v41;
      if (!v41 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v42 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v128 = objc_claimAutoreleasedReturnValue(), v129 = v42, [v42 isEqual:?]))
      {
        v131 = [(SFTitleCardSection *)self title];
        v130 = [(SFTitleCardSection *)v5 title];
        if ((v131 != 0) == (v130 == 0))
        {
          v168 = 0;
          *(&v181 + 4) = 0;
          v163 = 0;
          v164 = 0;
          LODWORD(v181) = 0;
          v159 = 0;
          v162 = 0;
          v180 = 0;
          v153 = 0;
          v157 = 0;
          v179 = 0;
          v158 = 0;
          v161 = 0;
          v178 = 0;
          v156 = 0;
          v160 = 0;
          v172 = 0;
          v155 = 0;
          v154 = 0;
          v167 = 0;
          v169 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v171 = 1uLL;
          *&v170[8] = 0;
          v10 = 1;
          v11 = 1;
          v12 = 1;
          *v170 = 0x100000001;
          v13 = 1;
          v165 = 0;
          v166 = 0x100000001;
        }

        else
        {
          v43 = [(SFTitleCardSection *)self title];
          DWORD2(v181) = v43 != 0;
          v127 = v43;
          if (!v43 || (-[SFTitleCardSection title](self, "title"), v44 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection title](v5, "title"), v123 = objc_claimAutoreleasedReturnValue(), v124 = v44, [v44 isEqual:?]))
          {
            v126 = [(SFTitleCardSection *)self subtitle];
            v125 = [(SFTitleCardSection *)v5 subtitle];
            if ((v126 != 0) == (v125 == 0))
            {
              *&v181 = 0;
              v163 = 0;
              v159 = 0;
              v162 = 0;
              v180 = 0;
              v153 = 0;
              v157 = 0;
              v179 = 0;
              v158 = 0;
              v161 = 0;
              v178 = 0;
              v156 = 0;
              v160 = 0;
              v172 = 0;
              v155 = 0;
              v154 = 0;
              v167 = 0;
              v169 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v171 = 1uLL;
              *&v170[8] = 0;
              v10 = 1;
              v11 = 1;
              v12 = 1;
              *v170 = 0x100000001;
              v13 = 1;
              v165 = 0;
              v166 = 0x100000001;
              v168 = 1;
              v164 = 1;
            }

            else
            {
              v45 = [(SFTitleCardSection *)self subtitle];
              DWORD1(v181) = v45 != 0;
              v122 = v45;
              if (!v45 || (-[SFTitleCardSection subtitle](self, "subtitle"), v46 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection subtitle](v5, "subtitle"), v118 = objc_claimAutoreleasedReturnValue(), v119 = v46, [v46 isEqual:?]))
              {
                v121 = [(SFDescriptionCardSection *)self descriptionText];
                v120 = [(SFDescriptionCardSection *)v5 descriptionText];
                if ((v121 != 0) == (v120 == 0))
                {
                  LODWORD(v181) = 0;
                  v159 = 0;
                  v162 = 0;
                  v180 = 0;
                  v153 = 0;
                  v157 = 0;
                  v179 = 0;
                  v158 = 0;
                  v161 = 0;
                  v178 = 0;
                  v156 = 0;
                  v160 = 0;
                  v172 = 0;
                  v155 = 0;
                  v154 = 0;
                  v167 = 0;
                  v169 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v171 = 1uLL;
                  *&v170[8] = 0;
                  v10 = 1;
                  v11 = 1;
                  v12 = 1;
                  *v170 = 0x100000001;
                  v13 = 1;
                  v165 = 0;
                  v166 = 0x100000001;
                  v168 = 1;
                  v164 = 0x100000001;
                  v163 = 1;
                }

                else
                {
                  v47 = [(SFDescriptionCardSection *)self descriptionText];
                  LODWORD(v181) = v47 != 0;
                  v117 = v47;
                  if (!v47 || (-[SFDescriptionCardSection descriptionText](self, "descriptionText"), v48 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection descriptionText](v5, "descriptionText"), v113 = objc_claimAutoreleasedReturnValue(), v114 = v48, [v48 isEqual:?]))
                  {
                    v116 = [(SFDescriptionCardSection *)self expandText];
                    v115 = [(SFDescriptionCardSection *)v5 expandText];
                    if ((v116 != 0) == (v115 == 0))
                    {
                      v162 = 0;
                      v180 = 0;
                      v153 = 0;
                      v157 = 0;
                      v179 = 0;
                      v158 = 0;
                      v161 = 0;
                      v178 = 0;
                      v156 = 0;
                      v160 = 0;
                      v172 = 0;
                      v155 = 0;
                      v154 = 0;
                      v167 = 0;
                      v169 = 0;
                      v14 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v171 = 1uLL;
                      *&v170[8] = 0;
                      v10 = 1;
                      v11 = 1;
                      v12 = 1;
                      *v170 = 0x100000001;
                      v13 = 1;
                      v165 = 0;
                      v166 = 0x100000001;
                      v168 = 1;
                      v164 = 0x100000001;
                      v163 = 0x100000001;
                      v159 = 1;
                    }

                    else
                    {
                      v49 = [(SFDescriptionCardSection *)self expandText];
                      v180 = v49 != 0;
                      v112 = v49;
                      if (!v49 || (-[SFDescriptionCardSection expandText](self, "expandText"), v50 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection expandText](v5, "expandText"), v108 = objc_claimAutoreleasedReturnValue(), v109 = v50, [v50 isEqual:?]))
                      {
                        v111 = [(SFDescriptionCardSection *)self image];
                        v110 = [(SFDescriptionCardSection *)v5 image];
                        if ((v111 != 0) == (v110 == 0))
                        {
                          v157 = 0;
                          v179 = 0;
                          v158 = 0;
                          v161 = 0;
                          v178 = 0;
                          v156 = 0;
                          v160 = 0;
                          v172 = 0;
                          v155 = 0;
                          v154 = 0;
                          v167 = 0;
                          v169 = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v171 = 1uLL;
                          *&v170[8] = 0;
                          v10 = 1;
                          v11 = 1;
                          v12 = 1;
                          *v170 = 0x100000001;
                          v13 = 1;
                          v165 = 0;
                          v166 = 0x100000001;
                          v168 = 1;
                          v164 = 0x100000001;
                          v163 = 0x100000001;
                          v159 = 1;
                          v162 = 1;
                          v153 = 1;
                        }

                        else
                        {
                          v51 = [(SFDescriptionCardSection *)self image];
                          v179 = v51 != 0;
                          v107 = v51;
                          if (!v51 || (-[SFDescriptionCardSection image](self, "image"), v52 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection image](v5, "image"), v105 = objc_claimAutoreleasedReturnValue(), v106 = v52, [v52 isEqual:?]))
                          {
                            v53 = [(SFDescriptionCardSection *)self titleNoWrap];
                            if (v53 == [(SFDescriptionCardSection *)v5 titleNoWrap])
                            {
                              v104 = [(SFDescriptionCardSection *)self titleWeight];
                              v103 = [(SFDescriptionCardSection *)v5 titleWeight];
                              if ((v104 != 0) == (v103 == 0))
                              {
                                v161 = 0;
                                v178 = 0;
                                v156 = 0;
                                v160 = 0;
                                v172 = 0;
                                v155 = 0;
                                v154 = 0;
                                v167 = 0;
                                v169 = 0;
                                v14 = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v171 = 1uLL;
                                *&v170[8] = 0;
                                v10 = 1;
                                v11 = 1;
                                v12 = 1;
                                *v170 = 0x100000001;
                                v13 = 1;
                                v165 = 0;
                                v166 = 0x100000001;
                                v168 = 1;
                                v164 = 0x100000001;
                                v163 = 0x100000001;
                                v159 = 1;
                                v162 = 1;
                                v153 = 1;
                                v157 = 1;
                                v158 = 1;
                              }

                              else
                              {
                                v54 = [(SFDescriptionCardSection *)self titleWeight];
                                v178 = v54 != 0;
                                v102 = v54;
                                if (!v54 || (-[SFDescriptionCardSection titleWeight](self, "titleWeight"), v55 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection titleWeight](v5, "titleWeight"), v100 = objc_claimAutoreleasedReturnValue(), v101 = v55, [v55 isEqual:?]))
                                {
                                  v99 = [(SFDescriptionCardSection *)self descriptionSize];
                                  v98 = [(SFDescriptionCardSection *)v5 descriptionSize];
                                  if ((v99 != 0) == (v98 == 0))
                                  {
                                    v160 = 0;
                                    v172 = 0;
                                    v155 = 0;
                                    v154 = 0;
                                    v167 = 0;
                                    v169 = 0;
                                    v14 = 0;
                                    v15 = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v171 = 1uLL;
                                    *&v170[8] = 0;
                                    v10 = 1;
                                    v11 = 1;
                                    v12 = 1;
                                    *v170 = 0x100000001;
                                    v13 = 1;
                                    v165 = 0;
                                    v166 = 0x100000001;
                                    v168 = 1;
                                    v164 = 0x100000001;
                                    v163 = 0x100000001;
                                    v159 = 1;
                                    v162 = 1;
                                    v153 = 1;
                                    v157 = 1;
                                    v158 = 1;
                                    v161 = 1;
                                    v156 = 1;
                                  }

                                  else
                                  {
                                    v56 = [(SFDescriptionCardSection *)self descriptionSize];
                                    v172 = v56 != 0;
                                    v97 = v56;
                                    if (!v56 || (-[SFDescriptionCardSection descriptionSize](self, "descriptionSize"), v57 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection descriptionSize](v5, "descriptionSize"), v95 = objc_claimAutoreleasedReturnValue(), v96 = v57, [v57 isEqual:?]))
                                    {
                                      v94 = [(SFDescriptionCardSection *)self descriptionWeight];
                                      v93 = [(SFDescriptionCardSection *)v5 descriptionWeight];
                                      if ((v94 != 0) == (v93 == 0))
                                      {
                                        v154 = 0;
                                        v167 = 0;
                                        v169 = 0;
                                        v14 = 0;
                                        v15 = 0;
                                        v16 = 0;
                                        v17 = 0;
                                        v18 = 0;
                                        v171 = 1uLL;
                                        *&v170[8] = 0;
                                        v10 = 1;
                                        v11 = 1;
                                        v12 = 1;
                                        *v170 = 0x100000001;
                                        v13 = 1;
                                        v165 = 0;
                                        v166 = 0x100000001;
                                        v168 = 1;
                                        v164 = 0x100000001;
                                        v163 = 0x100000001;
                                        v159 = 1;
                                        v162 = 1;
                                        v153 = 1;
                                        v157 = 1;
                                        v158 = 1;
                                        v161 = 1;
                                        v156 = 1;
                                        v160 = 1;
                                        v155 = 1;
                                      }

                                      else
                                      {
                                        v58 = [(SFDescriptionCardSection *)self descriptionWeight];
                                        HIDWORD(v171) = v58 != 0;
                                        v90 = v58;
                                        if (!v58 || (-[SFDescriptionCardSection descriptionWeight](self, "descriptionWeight"), v59 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection descriptionWeight](v5, "descriptionWeight"), v91 = objc_claimAutoreleasedReturnValue(), v92 = v59, [v59 isEqual:?]))
                                        {
                                          v60 = [(SFDescriptionCardSection *)self descriptionExpand];
                                          if (v60 == [(SFDescriptionCardSection *)v5 descriptionExpand]&& (v61 = [(SFDescriptionCardSection *)self imageAlign], v61 == [(SFDescriptionCardSection *)v5 imageAlign]) && (v62 = [(SFDescriptionCardSection *)self textAlign], v62 == [(SFDescriptionCardSection *)v5 textAlign]))
                                          {
                                            v87 = [(SFDescriptionCardSection *)self attributionText];
                                            v86 = [(SFDescriptionCardSection *)v5 attributionText];
                                            if ((v87 != 0) == (v86 == 0))
                                            {
                                              v167 = 0;
                                              *(&v171 + 4) = 0;
                                              v169 = 0;
                                              v14 = 0;
                                              v15 = 0;
                                              v16 = 0;
                                              v17 = 0;
                                              v18 = 0;
                                              *&v170[8] = 0;
                                              LODWORD(v171) = 1;
                                              *v170 = 0x100000001;
                                              v10 = 1;
                                              v166 = 0x100000001;
                                              v11 = 1;
                                              v12 = 1;
                                              v13 = 1;
                                              v168 = 1;
                                              v164 = 0x100000001;
                                              v163 = 0x100000001;
                                              v159 = 1;
                                              v162 = 1;
                                              v153 = 1;
                                              v157 = 1;
                                              v158 = 1;
                                              v161 = 1;
                                              v156 = 1;
                                              v160 = 1;
                                              v155 = 1;
                                              v154 = 1;
                                              v165 = 1;
                                            }

                                            else
                                            {
                                              v63 = [(SFDescriptionCardSection *)self attributionText];
                                              DWORD2(v171) = v63 != 0;
                                              v85 = v63;
                                              if (!v63 || (-[SFDescriptionCardSection attributionText](self, "attributionText"), v64 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection attributionText](v5, "attributionText"), v88 = objc_claimAutoreleasedReturnValue(), v89 = v64, [v64 isEqual:?]))
                                              {
                                                v82 = [(SFDescriptionCardSection *)self attributionURL];
                                                v81 = [(SFDescriptionCardSection *)v5 attributionURL];
                                                if ((v82 != 0) == (v81 == 0))
                                                {
                                                  v169 = 0;
                                                  v14 = 0;
                                                  v15 = 0;
                                                  v16 = 0;
                                                  v17 = 0;
                                                  v18 = 0;
                                                  *&v171 = 1;
                                                  *&v170[8] = 0;
                                                  v10 = 1;
                                                  v166 = 0x100000001;
                                                  v11 = 1;
                                                  v12 = 1;
                                                  *v170 = 0x100000001;
                                                  v13 = 1;
                                                  v168 = 1;
                                                  v164 = 0x100000001;
                                                  v163 = 0x100000001;
                                                  v159 = 1;
                                                  v162 = 1;
                                                  v153 = 1;
                                                  v157 = 1;
                                                  v158 = 1;
                                                  v161 = 1;
                                                  v156 = 1;
                                                  v160 = 1;
                                                  v155 = 1;
                                                  v154 = 1;
                                                  v165 = 1;
                                                  v167 = 0x100000001;
                                                }

                                                else
                                                {
                                                  v65 = [(SFDescriptionCardSection *)self attributionURL];
                                                  DWORD1(v171) = v65 != 0;
                                                  v80 = v65;
                                                  if (!v65 || (-[SFDescriptionCardSection attributionURL](self, "attributionURL"), v66 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection attributionURL](v5, "attributionURL"), v83 = objc_claimAutoreleasedReturnValue(), v84 = v66, [v66 isEqual:?]))
                                                  {
                                                    v78 = [(SFDescriptionCardSection *)self attributionGlyph];
                                                    v76 = [(SFDescriptionCardSection *)v5 attributionGlyph];
                                                    if ((v78 != 0) == (v76 == 0))
                                                    {
                                                      v14 = 0;
                                                      v15 = 0;
                                                      v16 = 0;
                                                      v17 = 0;
                                                      v18 = 0;
                                                      *&v170[8] = 0;
                                                      LODWORD(v171) = 1;
                                                      *v170 = 0x100000001;
                                                      v10 = 1;
                                                      v166 = 0x100000001;
                                                      v11 = 1;
                                                      v12 = 1;
                                                      v13 = 1;
                                                      v168 = 1;
                                                      v164 = 0x100000001;
                                                      v163 = 0x100000001;
                                                      v159 = 1;
                                                      v162 = 1;
                                                      v153 = 1;
                                                      v157 = 1;
                                                      v158 = 1;
                                                      v161 = 1;
                                                      v156 = 1;
                                                      v160 = 1;
                                                      v155 = 1;
                                                      v154 = 1;
                                                      v165 = 1;
                                                      v167 = 0x100000001;
                                                      v169 = 0x100000001;
                                                    }

                                                    else
                                                    {
                                                      v67 = [(SFDescriptionCardSection *)self attributionGlyph];
                                                      *&v170[8] = v67 != 0;
                                                      v75 = v67;
                                                      if (!v67 || (-[SFDescriptionCardSection attributionGlyph](self, "attributionGlyph"), v68 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection attributionGlyph](v5, "attributionGlyph"), v79 = v68, v77 = objc_claimAutoreleasedReturnValue(), [v68 isEqual:?]))
                                                      {
                                                        v73 = [(SFDescriptionCardSection *)self richDescriptions];
                                                        v72 = [(SFDescriptionCardSection *)v5 richDescriptions];
                                                        if ((v73 != 0) == (v72 == 0))
                                                        {
                                                          v16 = 0;
                                                          v17 = 0;
                                                          v18 = 0;
                                                          LODWORD(v171) = 1;
                                                          *v170 = 0x100000001;
                                                          v10 = 1;
                                                          v166 = 0x100000001;
                                                          v11 = 1;
                                                          v12 = 1;
                                                          v13 = 1;
                                                          v168 = 1;
                                                          v164 = 0x100000001;
                                                          v163 = 0x100000001;
                                                          v159 = 1;
                                                          v162 = 1;
                                                          v153 = 1;
                                                          v157 = 1;
                                                          v158 = 1;
                                                          v161 = 1;
                                                          v156 = 1;
                                                          v160 = 1;
                                                          v155 = 1;
                                                          v154 = 1;
                                                          v165 = 1;
                                                          v167 = 0x100000001;
                                                          v169 = 0x100000001;
                                                          v14 = 1;
                                                          v15 = 1;
                                                        }

                                                        else
                                                        {
                                                          v74 = [(SFDescriptionCardSection *)self richDescriptions];
                                                          if (v74)
                                                          {
                                                            v69 = [(SFDescriptionCardSection *)self richDescriptions];
                                                            v70 = [(SFDescriptionCardSection *)v5 richDescriptions];
                                                            v71 = v69;
                                                            v18 = [v69 isEqual:v70];
                                                            v6 = v70;
                                                            v17 = 1;
                                                            LODWORD(v171) = 1;
                                                            *v170 = 0x100000001;
                                                            v10 = 1;
                                                            v166 = 0x100000001;
                                                            v11 = 1;
                                                            v12 = 1;
                                                            v13 = 1;
                                                            v168 = 1;
                                                            v164 = 0x100000001;
                                                            v163 = 0x100000001;
                                                            v159 = 1;
                                                            v162 = 1;
                                                            v153 = 1;
                                                            v157 = 1;
                                                            v158 = 1;
                                                            v161 = 1;
                                                            v156 = 1;
                                                            v160 = 1;
                                                            v155 = 1;
                                                            v154 = 1;
                                                            v165 = 1;
                                                            v167 = 0x100000001;
                                                            v169 = 0x100000001;
                                                            v14 = 1;
                                                            v15 = 1;
                                                            v16 = 1;
                                                          }

                                                          else
                                                          {
                                                            v74 = 0;
                                                            v17 = 0;
                                                            LODWORD(v171) = 1;
                                                            *v170 = 0x100000001;
                                                            v10 = 1;
                                                            v166 = 0x100000001;
                                                            v11 = 1;
                                                            v12 = 1;
                                                            v13 = 1;
                                                            v168 = 1;
                                                            v164 = 0x100000001;
                                                            v163 = 0x100000001;
                                                            v159 = 1;
                                                            v162 = 1;
                                                            v153 = 1;
                                                            v157 = 1;
                                                            v158 = 1;
                                                            v161 = 1;
                                                            v156 = 1;
                                                            v160 = 1;
                                                            v155 = 1;
                                                            v154 = 1;
                                                            v165 = 1;
                                                            v167 = 0x100000001;
                                                            v169 = 0x100000001;
                                                            v14 = 1;
                                                            v15 = 1;
                                                            v16 = 1;
                                                            v18 = 1;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v15 = 0;
                                                        v16 = 0;
                                                        v17 = 0;
                                                        v18 = 0;
                                                        LODWORD(v171) = 1;
                                                        *v170 = 0x100000001;
                                                        v10 = 1;
                                                        v166 = 0x100000001;
                                                        v11 = 1;
                                                        v12 = 1;
                                                        v13 = 1;
                                                        v168 = 1;
                                                        v164 = 0x100000001;
                                                        v163 = 0x100000001;
                                                        v159 = 1;
                                                        v162 = 1;
                                                        v153 = 1;
                                                        v157 = 1;
                                                        v158 = 1;
                                                        v161 = 1;
                                                        v156 = 1;
                                                        v160 = 1;
                                                        v155 = 1;
                                                        v154 = 1;
                                                        v165 = 1;
                                                        v167 = 0x100000001;
                                                        v169 = 0x100000001;
                                                        v14 = 1;
                                                        *&v170[8] = 1;
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
                                                    *&v170[8] = 0;
                                                    *&v171 = 0x100000001;
                                                    *v170 = 0x100000001;
                                                    v10 = 1;
                                                    v166 = 0x100000001;
                                                    v11 = 1;
                                                    v12 = 1;
                                                    v13 = 1;
                                                    v168 = 1;
                                                    v169 = 0x100000000;
                                                    v164 = 0x100000001;
                                                    v163 = 0x100000001;
                                                    v159 = 1;
                                                    v162 = 1;
                                                    v153 = 1;
                                                    v157 = 1;
                                                    v158 = 1;
                                                    v161 = 1;
                                                    v156 = 1;
                                                    v160 = 1;
                                                    v155 = 1;
                                                    v154 = 1;
                                                    v165 = 1;
                                                    v167 = 0x100000001;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v169 = 0;
                                                v14 = 0;
                                                v15 = 0;
                                                v16 = 0;
                                                v17 = 0;
                                                v18 = 0;
                                                LODWORD(v171) = 1;
                                                *(&v171 + 4) = 0x100000000;
                                                *&v170[8] = 0;
                                                v10 = 1;
                                                v167 = 0x100000000;
                                                v11 = 1;
                                                v12 = 1;
                                                *v170 = 0x100000001;
                                                v13 = 1;
                                                v166 = 0x100000001;
                                                v168 = 1;
                                                v164 = 0x100000001;
                                                v163 = 0x100000001;
                                                v159 = 1;
                                                v162 = 1;
                                                v153 = 1;
                                                v157 = 1;
                                                v158 = 1;
                                                v161 = 1;
                                                v156 = 1;
                                                v160 = 1;
                                                v155 = 1;
                                                v154 = 1;
                                                v165 = 1;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            v167 = 0;
                                            *(&v171 + 4) = 0;
                                            v169 = 0;
                                            v14 = 0;
                                            v15 = 0;
                                            v16 = 0;
                                            v17 = 0;
                                            v18 = 0;
                                            *&v170[8] = 0;
                                            LODWORD(v171) = 1;
                                            *v170 = 0x100000001;
                                            v10 = 1;
                                            v11 = 1;
                                            v12 = 1;
                                            v13 = 1;
                                            v165 = 0;
                                            v166 = 0x100000001;
                                            v168 = 1;
                                            v164 = 0x100000001;
                                            v163 = 0x100000001;
                                            v159 = 1;
                                            v162 = 1;
                                            v153 = 1;
                                            v157 = 1;
                                            v158 = 1;
                                            v161 = 1;
                                            v156 = 1;
                                            v160 = 1;
                                            v155 = 1;
                                            v154 = 1;
                                          }
                                        }

                                        else
                                        {
                                          v167 = 0;
                                          *(&v171 + 4) = 0;
                                          v169 = 0;
                                          v14 = 0;
                                          v15 = 0;
                                          v16 = 0;
                                          v17 = 0;
                                          v18 = 0;
                                          *&v170[8] = 0;
                                          LODWORD(v171) = 1;
                                          *v170 = 0x100000001;
                                          v10 = 1;
                                          v11 = 1;
                                          v12 = 1;
                                          v13 = 1;
                                          v165 = 0;
                                          v166 = 0x100000001;
                                          v168 = 1;
                                          v164 = 0x100000001;
                                          v163 = 0x100000001;
                                          v159 = 1;
                                          v162 = 1;
                                          v153 = 1;
                                          v157 = 1;
                                          v158 = 1;
                                          v161 = 1;
                                          v156 = 1;
                                          v160 = 1;
                                          v155 = 1;
                                          v154 = 1;
                                          HIDWORD(v171) = 1;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v155 = 0;
                                      v154 = 0;
                                      v167 = 0;
                                      v169 = 0;
                                      v14 = 0;
                                      v15 = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v171 = 1uLL;
                                      *&v170[8] = 0;
                                      v10 = 1;
                                      v11 = 1;
                                      v12 = 1;
                                      *v170 = 0x100000001;
                                      v13 = 1;
                                      v165 = 0;
                                      v166 = 0x100000001;
                                      v168 = 1;
                                      v164 = 0x100000001;
                                      v163 = 0x100000001;
                                      v159 = 1;
                                      v162 = 1;
                                      v153 = 1;
                                      v157 = 1;
                                      v158 = 1;
                                      v161 = 1;
                                      v156 = 1;
                                      v160 = 1;
                                      v172 = 1;
                                    }
                                  }
                                }

                                else
                                {
                                  v156 = 0;
                                  v160 = 0;
                                  v172 = 0;
                                  v155 = 0;
                                  v154 = 0;
                                  v167 = 0;
                                  v169 = 0;
                                  v14 = 0;
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v171 = 1uLL;
                                  *&v170[8] = 0;
                                  v10 = 1;
                                  v11 = 1;
                                  v12 = 1;
                                  *v170 = 0x100000001;
                                  v13 = 1;
                                  v165 = 0;
                                  v166 = 0x100000001;
                                  v168 = 1;
                                  v164 = 0x100000001;
                                  v163 = 0x100000001;
                                  v159 = 1;
                                  v162 = 1;
                                  v153 = 1;
                                  v157 = 1;
                                  v158 = 1;
                                  v161 = 1;
                                  v178 = 1;
                                }
                              }
                            }

                            else
                            {
                              v158 = 0;
                              v161 = 0;
                              v178 = 0;
                              v156 = 0;
                              v160 = 0;
                              v172 = 0;
                              v155 = 0;
                              v154 = 0;
                              v167 = 0;
                              v169 = 0;
                              v14 = 0;
                              v15 = 0;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v171 = 1uLL;
                              *&v170[8] = 0;
                              v10 = 1;
                              v11 = 1;
                              v12 = 1;
                              *v170 = 0x100000001;
                              v13 = 1;
                              v165 = 0;
                              v166 = 0x100000001;
                              v168 = 1;
                              v164 = 0x100000001;
                              v163 = 0x100000001;
                              v159 = 1;
                              v162 = 1;
                              v153 = 1;
                              v157 = 1;
                            }
                          }

                          else
                          {
                            v158 = 0;
                            v161 = 0;
                            v178 = 0;
                            v156 = 0;
                            v160 = 0;
                            v172 = 0;
                            v155 = 0;
                            v154 = 0;
                            v167 = 0;
                            v169 = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v171 = 1uLL;
                            *&v170[8] = 0;
                            v10 = 1;
                            v11 = 1;
                            v12 = 1;
                            *v170 = 0x100000001;
                            v13 = 1;
                            v165 = 0;
                            v166 = 0x100000001;
                            v168 = 1;
                            v164 = 0x100000001;
                            v163 = 0x100000001;
                            v159 = 1;
                            v162 = 1;
                            v153 = 1;
                            v157 = 1;
                            v179 = 1;
                          }
                        }
                      }

                      else
                      {
                        v153 = 0;
                        v157 = 0;
                        v179 = 0;
                        v158 = 0;
                        v161 = 0;
                        v178 = 0;
                        v156 = 0;
                        v160 = 0;
                        v172 = 0;
                        v155 = 0;
                        v154 = 0;
                        v167 = 0;
                        v169 = 0;
                        v14 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v171 = 1uLL;
                        *&v170[8] = 0;
                        v10 = 1;
                        v11 = 1;
                        v12 = 1;
                        *v170 = 0x100000001;
                        v13 = 1;
                        v165 = 0;
                        v166 = 0x100000001;
                        v168 = 1;
                        v164 = 0x100000001;
                        v163 = 0x100000001;
                        v159 = 1;
                        v162 = 1;
                        v180 = 1;
                      }
                    }
                  }

                  else
                  {
                    v159 = 0;
                    v162 = 0;
                    v180 = 0;
                    v153 = 0;
                    v157 = 0;
                    v179 = 0;
                    v158 = 0;
                    v161 = 0;
                    v178 = 0;
                    v156 = 0;
                    v160 = 0;
                    v172 = 0;
                    v155 = 0;
                    v154 = 0;
                    v167 = 0;
                    v169 = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v171 = 1uLL;
                    *&v170[8] = 0;
                    v10 = 1;
                    v11 = 1;
                    v12 = 1;
                    *v170 = 0x100000001;
                    v13 = 1;
                    v165 = 0;
                    v166 = 0x100000001;
                    v168 = 1;
                    v164 = 0x100000001;
                    v163 = 0x100000001;
                    LODWORD(v181) = 1;
                  }
                }
              }

              else
              {
                v163 = 0;
                *&v181 = 0x100000000;
                v159 = 0;
                v162 = 0;
                v180 = 0;
                v153 = 0;
                v157 = 0;
                v179 = 0;
                v158 = 0;
                v161 = 0;
                v178 = 0;
                v156 = 0;
                v160 = 0;
                v172 = 0;
                v155 = 0;
                v154 = 0;
                v167 = 0;
                v169 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v171 = 1uLL;
                *&v170[8] = 0;
                v10 = 1;
                v11 = 1;
                v12 = 1;
                *v170 = 0x100000001;
                v13 = 1;
                v165 = 0;
                v166 = 0x100000001;
                v168 = 1;
                v164 = 0x100000001;
              }
            }
          }

          else
          {
            v163 = 0;
            v164 = 0;
            *&v181 = 0;
            v159 = 0;
            v162 = 0;
            v180 = 0;
            v153 = 0;
            v157 = 0;
            v179 = 0;
            v158 = 0;
            v161 = 0;
            v178 = 0;
            v156 = 0;
            v160 = 0;
            v172 = 0;
            v155 = 0;
            v154 = 0;
            v167 = 0;
            v169 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v171 = 1uLL;
            *&v170[8] = 0;
            v10 = 1;
            v11 = 1;
            v12 = 1;
            *v170 = 0x100000001;
            v13 = 1;
            v165 = 0;
            v166 = 0x100000001;
            v168 = 1;
            DWORD2(v181) = 1;
          }
        }
      }

      else
      {
        v166 = 0x100000000;
        v168 = 0;
        *(&v181 + 4) = 0;
        v163 = 0;
        v164 = 0;
        LODWORD(v181) = 0;
        v159 = 0;
        v162 = 0;
        v180 = 0;
        v153 = 0;
        v157 = 0;
        v179 = 0;
        v158 = 0;
        v161 = 0;
        v178 = 0;
        v156 = 0;
        v160 = 0;
        v172 = 0;
        v155 = 0;
        v154 = 0;
        v165 = 0;
        v167 = 0;
        v169 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v171 = 1uLL;
        *&v170[8] = 0;
        v10 = 1;
        v11 = 1;
        v12 = 1;
        *v170 = 0x100000001;
        v13 = 1;
        HIDWORD(v181) = 1;
      }
    }
  }

  else
  {
    *v170 = 0;
    v13 = 0;
    v181 = 0uLL;
    v166 = 0x100000000;
    v168 = 0;
    v163 = 0;
    v164 = 0;
    v159 = 0;
    v162 = 0;
    v180 = 0;
    v153 = 0;
    v157 = 0;
    v179 = 0;
    v158 = 0;
    v161 = 0;
    v178 = 0;
    v156 = 0;
    v160 = 0;
    v172 = 0;
    v155 = 0;
    v154 = 0;
    v165 = 0;
    v167 = 0;
    v169 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v171 = 1uLL;
    *&v170[4] = 1;
    v10 = 1;
    v11 = 1;
    v12 = 1;
  }

LABEL_16:
  if (v17)
  {
    v22 = v14;
    v23 = v15;
    v24 = v12;
    v25 = v13;
    v26 = v5;
    v27 = v11;
    v28 = v10;
    v29 = v16;

    v16 = v29;
    v10 = v28;
    v11 = v27;
    v5 = v26;
    v13 = v25;
    v12 = v24;
    v15 = v23;
    v14 = v22;
  }

  if (v16)
  {
  }

  if (v15)
  {
  }

  if (*&v170[8])
  {
  }

  if (v14)
  {
  }

  if (v169)
  {
  }

  if (DWORD1(v171))
  {
  }

  if (HIDWORD(v169))
  {
  }

  if (v167)
  {
  }

  if (DWORD2(v171))
  {
  }

  if (HIDWORD(v167))
  {
  }

  if (v165)
  {
  }

  if (HIDWORD(v171))
  {
  }

  if (v154)
  {
  }

  if (v155)
  {
  }

  if (v172)
  {
  }

  if (v160)
  {
  }

  if (v156)
  {
  }

  if (v178)
  {
  }

  if (v161)
  {
  }

  if (v158)
  {
  }

  if (v179)
  {
  }

  if (v157)
  {
  }

  if (v153)
  {
  }

  if (v180)
  {
  }

  if (v162)
  {
  }

  if (v159)
  {
  }

  if (v181)
  {
  }

  if (HIDWORD(v163))
  {
  }

  if (v163)
  {
  }

  if (DWORD1(v181))
  {
  }

  if (HIDWORD(v164))
  {
  }

  if (v164)
  {
  }

  if (DWORD2(v181))
  {
  }

  if (v168)
  {
  }

  if (v166)
  {
  }

  if (HIDWORD(v181))
  {
  }

  if (v13)
  {
  }

  if (*v170)
  {
  }

  if (v173)
  {

    if (!v12)
    {
      goto LABEL_96;
    }
  }

  else if (!v12)
  {
LABEL_96:
    if (!v11)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (v11)
  {
LABEL_97:
  }

LABEL_98:
  if (DWORD1(v173))
  {
  }

  if (HIDWORD(v166))
  {

    if (!v10)
    {
      goto LABEL_102;
    }

LABEL_118:

    if (!DWORD2(v173))
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  if (v10)
  {
    goto LABEL_118;
  }

LABEL_102:
  if (DWORD2(v173))
  {
LABEL_103:
  }

LABEL_104:
  if (*&v170[4])
  {
  }

  if (v171)
  {
  }

  if (HIDWORD(v173))
  {
  }

  if (v175 != v174)
  {
  }

LABEL_113:
  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v40.receiver = self;
  v40.super_class = SFDescriptionCardSection;
  v4 = [(SFTitleCardSection *)&v40 copyWithZone:a3];
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

  v19 = [(SFDescriptionCardSection *)self descriptionText];
  v20 = [v19 copy];
  [v4 setDescriptionText:v20];

  v21 = [(SFDescriptionCardSection *)self expandText];
  v22 = [v21 copy];
  [v4 setExpandText:v22];

  v23 = [(SFDescriptionCardSection *)self image];
  v24 = [v23 copy];
  [v4 setImage:v24];

  [v4 setTitleNoWrap:{-[SFDescriptionCardSection titleNoWrap](self, "titleNoWrap")}];
  v25 = [(SFDescriptionCardSection *)self titleWeight];
  v26 = [v25 copy];
  [v4 setTitleWeight:v26];

  v27 = [(SFDescriptionCardSection *)self descriptionSize];
  v28 = [v27 copy];
  [v4 setDescriptionSize:v28];

  v29 = [(SFDescriptionCardSection *)self descriptionWeight];
  v30 = [v29 copy];
  [v4 setDescriptionWeight:v30];

  [v4 setDescriptionExpand:{-[SFDescriptionCardSection descriptionExpand](self, "descriptionExpand")}];
  [v4 setImageAlign:{-[SFDescriptionCardSection imageAlign](self, "imageAlign")}];
  [v4 setTextAlign:{-[SFDescriptionCardSection textAlign](self, "textAlign")}];
  v31 = [(SFDescriptionCardSection *)self attributionText];
  v32 = [v31 copy];
  [v4 setAttributionText:v32];

  v33 = [(SFDescriptionCardSection *)self attributionURL];
  v34 = [v33 copy];
  [v4 setAttributionURL:v34];

  v35 = [(SFDescriptionCardSection *)self attributionGlyph];
  v36 = [v35 copy];
  [v4 setAttributionGlyph:v36];

  v37 = [(SFDescriptionCardSection *)self richDescriptions];
  v38 = [v37 copy];
  [v4 setRichDescriptions:v38];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDescriptionCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBDescriptionCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDescriptionCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBDescriptionCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFDescriptionCardSection;
  [(SFTitleCardSection *)&v3 encodeWithCoder:a3];
}

- (SFDescriptionCardSection)initWithCoder:(id)a3
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

    v16 = [(SFCardSection *)v8 descriptionText];
    [(SFDescriptionCardSection *)v5 setDescriptionText:v16];

    v17 = [(SFCardSection *)v8 expandText];
    [(SFDescriptionCardSection *)v5 setExpandText:v17];

    v18 = [(SFCardSection *)v8 image];
    [(SFDescriptionCardSection *)v5 setImage:v18];

    [(SFDescriptionCardSection *)v5 setTitleNoWrap:[(SFCardSection *)v8 titleNoWrap]];
    v19 = [(SFCardSection *)v8 titleWeight];
    [(SFDescriptionCardSection *)v5 setTitleWeight:v19];

    v20 = [(SFCardSection *)v8 descriptionSize];
    [(SFDescriptionCardSection *)v5 setDescriptionSize:v20];

    v21 = [(SFCardSection *)v8 descriptionWeight];
    [(SFDescriptionCardSection *)v5 setDescriptionWeight:v21];

    [(SFDescriptionCardSection *)v5 setDescriptionExpand:[(SFCardSection *)v8 descriptionExpand]];
    [(SFDescriptionCardSection *)v5 setImageAlign:[(SFCardSection *)v8 imageAlign]];
    [(SFDescriptionCardSection *)v5 setTextAlign:[(SFCardSection *)v8 textAlign]];
    v22 = [(SFCardSection *)v8 attributionText];
    [(SFDescriptionCardSection *)v5 setAttributionText:v22];

    v23 = [(SFCardSection *)v8 attributionURL];
    [(SFDescriptionCardSection *)v5 setAttributionURL:v23];

    v24 = [(SFCardSection *)v8 attributionGlyph];
    [(SFDescriptionCardSection *)v5 setAttributionGlyph:v24];

    v25 = [(SFCardSection *)v8 richDescriptions];
    [(SFDescriptionCardSection *)v5 setRichDescriptions:v25];

    v26 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v26];

    v27 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v27];

    v28 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v28];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    v29 = [(SFCardSection *)v8 type];
    [(SFTitleCardSection *)v5 setType:v29];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v30 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v30];

    v31 = [(SFCardSection *)v8 title];
    [(SFTitleCardSection *)v5 setTitle:v31];

    v32 = [(SFCardSection *)v8 subtitle];
    [(SFTitleCardSection *)v5 setSubtitle:v32];

    [(SFTitleCardSection *)v5 setIsCentered:[(SFCardSection *)v8 isCentered]];
    v33 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v33];

    v34 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v34];

    v35 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v35];

    v36 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v36];

    v37 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v37];

    v38 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v38];

    v39 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v39];

    v40 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v40];

    v41 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v41];

    v42 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v42];

    v43 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v43];

    v44 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v44];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v45 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v45];

    v46 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v46];

    v47 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v47];

    v48 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v48];

    v49 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v49];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v50 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v50];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v51 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v51];

    v52 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v52];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v53 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v53];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v54 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v54];

    v55 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v55];

    v56 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v56];

    v57 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v57];
  }

  return v5;
}

- (SFDescriptionCardSection)initWithProtobuf:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v69.receiver = self;
  v69.super_class = SFDescriptionCardSection;
  v5 = [(SFCardSection *)&v69 init];
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

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v66;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v66 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v65 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v65 objects:v71 count:16];
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

    v28 = [v4 descriptionText];

    if (v28)
    {
      v29 = [SFText alloc];
      v30 = [v4 descriptionText];
      v31 = [(SFText *)v29 initWithProtobuf:v30];
      [(SFDescriptionCardSection *)v5 setDescriptionText:v31];
    }

    v32 = [v4 expandText];

    if (v32)
    {
      v33 = [v4 expandText];
      [(SFDescriptionCardSection *)v5 setExpandText:v33];
    }

    v34 = [v4 image];

    if (v34)
    {
      v35 = [SFImage alloc];
      v36 = [v4 image];
      v37 = [(SFImage *)v35 initWithProtobuf:v36];
      [(SFDescriptionCardSection *)v5 setImage:v37];
    }

    if ([v4 titleNoWrap])
    {
      -[SFDescriptionCardSection setTitleNoWrap:](v5, "setTitleNoWrap:", [v4 titleNoWrap]);
    }

    if ([v4 titleWeight])
    {
      v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "titleWeight")}];
      [(SFDescriptionCardSection *)v5 setTitleWeight:v38];
    }

    if ([v4 descriptionSize])
    {
      v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "descriptionSize")}];
      [(SFDescriptionCardSection *)v5 setDescriptionSize:v39];
    }

    if ([v4 descriptionWeight])
    {
      v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "descriptionWeight")}];
      [(SFDescriptionCardSection *)v5 setDescriptionWeight:v40];
    }

    if ([v4 descriptionExpand])
    {
      -[SFDescriptionCardSection setDescriptionExpand:](v5, "setDescriptionExpand:", [v4 descriptionExpand]);
    }

    if ([v4 imageAlign])
    {
      -[SFDescriptionCardSection setImageAlign:](v5, "setImageAlign:", [v4 imageAlign]);
    }

    if ([v4 textAlign])
    {
      -[SFDescriptionCardSection setTextAlign:](v5, "setTextAlign:", [v4 textAlign]);
    }

    v41 = [v4 attributionText];

    if (v41)
    {
      v42 = [v4 attributionText];
      [(SFDescriptionCardSection *)v5 setAttributionText:v42];
    }

    v43 = [v4 attributionURL];

    if (v43)
    {
      v44 = [v4 attributionURL];
      v45 = _SFPBURLHandwrittenTranslator(v44);
      [(SFDescriptionCardSection *)v5 setAttributionURL:v45];
    }

    v46 = [v4 attributionGlyph];

    if (v46)
    {
      v47 = [SFImage alloc];
      v48 = [v4 attributionGlyph];
      v49 = [(SFImage *)v47 initWithProtobuf:v48];
      [(SFDescriptionCardSection *)v5 setAttributionGlyph:v49];
    }

    v50 = [v4 richDescriptions];
    if (v50)
    {
      v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v51 = 0;
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v52 = [v4 richDescriptions];
    v53 = [v52 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v62;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v62 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = [[SFRichText alloc] initWithProtobuf:*(*(&v61 + 1) + 8 * j)];
          if (v57)
          {
            [v51 addObject:v57];
          }
        }

        v54 = [v52 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v54);
    }

    [(SFDescriptionCardSection *)v5 setRichDescriptions:v51];
    v58 = v5;
  }

  v59 = *MEMORY[0x1E69E9840];
  return v5;
}

@end