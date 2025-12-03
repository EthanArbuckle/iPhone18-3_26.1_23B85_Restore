@interface SFDescriptionCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDescriptionCardSection)initWithCoder:(id)coder;
- (SFDescriptionCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFDescriptionCardSection

- (unint64_t)hash
{
  v47.receiver = self;
  v47.super_class = SFDescriptionCardSection;
  v3 = [(SFTitleCardSection *)&v47 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [punchoutPickerDismissText hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFTitleCardSection *)self type];
  v10 = hasBottomPadding ^ [type hash];
  v11 = v10 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v12 = v11 ^ [backgroundColor hash];
  title = [(SFTitleCardSection *)self title];
  v13 = v8 ^ v12 ^ [title hash];
  subtitle = [(SFTitleCardSection *)self subtitle];
  v14 = [subtitle hash];
  descriptionText = [(SFDescriptionCardSection *)self descriptionText];
  v15 = v14 ^ [descriptionText hash];
  expandText = [(SFDescriptionCardSection *)self expandText];
  v16 = v15 ^ [expandText hash];
  image = [(SFDescriptionCardSection *)self image];
  v18 = v16 ^ [image hash];
  v19 = v18 ^ [(SFDescriptionCardSection *)self titleNoWrap];
  titleWeight = [(SFDescriptionCardSection *)self titleWeight];
  v21 = v19 ^ [titleWeight hash];
  descriptionSize = [(SFDescriptionCardSection *)self descriptionSize];
  v23 = v13 ^ v21 ^ [descriptionSize hash];
  descriptionWeight = [(SFDescriptionCardSection *)self descriptionWeight];
  v25 = [descriptionWeight hash];
  v26 = v25 ^ [(SFDescriptionCardSection *)self descriptionExpand];
  v27 = v26 ^ [(SFDescriptionCardSection *)self imageAlign];
  v28 = v27 ^ [(SFDescriptionCardSection *)self textAlign];
  attributionText = [(SFDescriptionCardSection *)self attributionText];
  v30 = v28 ^ [attributionText hash];
  attributionURL = [(SFDescriptionCardSection *)self attributionURL];
  v32 = v30 ^ [attributionURL hash];
  attributionGlyph = [(SFDescriptionCardSection *)self attributionGlyph];
  v34 = v23 ^ v32 ^ [attributionGlyph hash];
  richDescriptions = [(SFDescriptionCardSection *)self richDescriptions];
  v36 = [richDescriptions hash];

  return v34 ^ v36;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
    goto LABEL_113;
  }

  if (![(SFDescriptionCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v182.receiver = self, v182.super_class = SFDescriptionCardSection, ![(SFTitleCardSection *)&v182 isEqual:equalCopy]))
  {
    v18 = 0;
    goto LABEL_113;
  }

  v5 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
  v174 = punchoutOptions2 == 0;
  v175 = punchoutOptions != 0;
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

  punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
  v8 = punchoutOptions3 != 0;
  v152 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v148 = v149 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
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

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v173) = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
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

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v20 = punchoutPickerTitle3 != 0;
  v147 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    [(SFCardSection *)v5 punchoutPickerTitle];
    v143 = v144 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
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

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
  DWORD2(v173) = v20;
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
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

  punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
  v32 = punchoutPickerDismissText3 != 0;
  v142 = punchoutPickerDismissText3;
  if (punchoutPickerDismissText3)
  {
    punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
    [(SFCardSection *)v5 punchoutPickerDismissText];
    v140 = v141 = punchoutPickerDismissText4;
    if (![punchoutPickerDismissText4 isEqual:?])
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

  canBeHidden = [(SFCardSection *)self canBeHidden];
  if (canBeHidden != [(SFCardSection *)v5 canBeHidden]|| (v35 = [(SFCardSection *)self hasTopPadding], v35 != [(SFCardSection *)v5 hasTopPadding]) || (v36 = [(SFCardSection *)self hasBottomPadding], v36 != [(SFCardSection *)v5 hasBottomPadding]))
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

  type = [(SFTitleCardSection *)self type];
  type2 = [(SFTitleCardSection *)v5 type];
  if ((type != 0) == (type2 == 0))
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

  type3 = [(SFTitleCardSection *)self type];
  v38 = type3 != 0;
  v137 = type3;
  if (type3)
  {
    type4 = [(SFTitleCardSection *)self type];
    [(SFTitleCardSection *)v5 type];
    v135 = v136 = type4;
    if (![type4 isEqual:?])
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

  separatorStyle = [(SFCardSection *)self separatorStyle];
  if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
  {
    backgroundColor = [(SFCardSection *)self backgroundColor];
    backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
    if ((backgroundColor != 0) == (backgroundColor2 == 0))
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
      backgroundColor3 = [(SFCardSection *)self backgroundColor];
      HIDWORD(v181) = backgroundColor3 != 0;
      v132 = backgroundColor3;
      if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v42 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v128 = objc_claimAutoreleasedReturnValue(), v129 = v42, [v42 isEqual:?]))
      {
        title = [(SFTitleCardSection *)self title];
        title2 = [(SFTitleCardSection *)v5 title];
        if ((title != 0) == (title2 == 0))
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
          title3 = [(SFTitleCardSection *)self title];
          DWORD2(v181) = title3 != 0;
          v127 = title3;
          if (!title3 || (-[SFTitleCardSection title](self, "title"), v44 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection title](v5, "title"), v123 = objc_claimAutoreleasedReturnValue(), v124 = v44, [v44 isEqual:?]))
          {
            subtitle = [(SFTitleCardSection *)self subtitle];
            subtitle2 = [(SFTitleCardSection *)v5 subtitle];
            if ((subtitle != 0) == (subtitle2 == 0))
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
              subtitle3 = [(SFTitleCardSection *)self subtitle];
              DWORD1(v181) = subtitle3 != 0;
              v122 = subtitle3;
              if (!subtitle3 || (-[SFTitleCardSection subtitle](self, "subtitle"), v46 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection subtitle](v5, "subtitle"), v118 = objc_claimAutoreleasedReturnValue(), v119 = v46, [v46 isEqual:?]))
              {
                descriptionText = [(SFDescriptionCardSection *)self descriptionText];
                descriptionText2 = [(SFDescriptionCardSection *)v5 descriptionText];
                if ((descriptionText != 0) == (descriptionText2 == 0))
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
                  descriptionText3 = [(SFDescriptionCardSection *)self descriptionText];
                  LODWORD(v181) = descriptionText3 != 0;
                  v117 = descriptionText3;
                  if (!descriptionText3 || (-[SFDescriptionCardSection descriptionText](self, "descriptionText"), v48 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection descriptionText](v5, "descriptionText"), v113 = objc_claimAutoreleasedReturnValue(), v114 = v48, [v48 isEqual:?]))
                  {
                    expandText = [(SFDescriptionCardSection *)self expandText];
                    expandText2 = [(SFDescriptionCardSection *)v5 expandText];
                    if ((expandText != 0) == (expandText2 == 0))
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
                      expandText3 = [(SFDescriptionCardSection *)self expandText];
                      v180 = expandText3 != 0;
                      v112 = expandText3;
                      if (!expandText3 || (-[SFDescriptionCardSection expandText](self, "expandText"), v50 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection expandText](v5, "expandText"), v108 = objc_claimAutoreleasedReturnValue(), v109 = v50, [v50 isEqual:?]))
                      {
                        image = [(SFDescriptionCardSection *)self image];
                        image2 = [(SFDescriptionCardSection *)v5 image];
                        if ((image != 0) == (image2 == 0))
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
                          image3 = [(SFDescriptionCardSection *)self image];
                          v179 = image3 != 0;
                          v107 = image3;
                          if (!image3 || (-[SFDescriptionCardSection image](self, "image"), v52 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection image](v5, "image"), v105 = objc_claimAutoreleasedReturnValue(), v106 = v52, [v52 isEqual:?]))
                          {
                            titleNoWrap = [(SFDescriptionCardSection *)self titleNoWrap];
                            if (titleNoWrap == [(SFDescriptionCardSection *)v5 titleNoWrap])
                            {
                              titleWeight = [(SFDescriptionCardSection *)self titleWeight];
                              titleWeight2 = [(SFDescriptionCardSection *)v5 titleWeight];
                              if ((titleWeight != 0) == (titleWeight2 == 0))
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
                                titleWeight3 = [(SFDescriptionCardSection *)self titleWeight];
                                v178 = titleWeight3 != 0;
                                v102 = titleWeight3;
                                if (!titleWeight3 || (-[SFDescriptionCardSection titleWeight](self, "titleWeight"), v55 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection titleWeight](v5, "titleWeight"), v100 = objc_claimAutoreleasedReturnValue(), v101 = v55, [v55 isEqual:?]))
                                {
                                  descriptionSize = [(SFDescriptionCardSection *)self descriptionSize];
                                  descriptionSize2 = [(SFDescriptionCardSection *)v5 descriptionSize];
                                  if ((descriptionSize != 0) == (descriptionSize2 == 0))
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
                                    descriptionSize3 = [(SFDescriptionCardSection *)self descriptionSize];
                                    v172 = descriptionSize3 != 0;
                                    v97 = descriptionSize3;
                                    if (!descriptionSize3 || (-[SFDescriptionCardSection descriptionSize](self, "descriptionSize"), v57 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection descriptionSize](v5, "descriptionSize"), v95 = objc_claimAutoreleasedReturnValue(), v96 = v57, [v57 isEqual:?]))
                                    {
                                      descriptionWeight = [(SFDescriptionCardSection *)self descriptionWeight];
                                      descriptionWeight2 = [(SFDescriptionCardSection *)v5 descriptionWeight];
                                      if ((descriptionWeight != 0) == (descriptionWeight2 == 0))
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
                                        descriptionWeight3 = [(SFDescriptionCardSection *)self descriptionWeight];
                                        HIDWORD(v171) = descriptionWeight3 != 0;
                                        v90 = descriptionWeight3;
                                        if (!descriptionWeight3 || (-[SFDescriptionCardSection descriptionWeight](self, "descriptionWeight"), v59 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection descriptionWeight](v5, "descriptionWeight"), v91 = objc_claimAutoreleasedReturnValue(), v92 = v59, [v59 isEqual:?]))
                                        {
                                          descriptionExpand = [(SFDescriptionCardSection *)self descriptionExpand];
                                          if (descriptionExpand == [(SFDescriptionCardSection *)v5 descriptionExpand]&& (v61 = [(SFDescriptionCardSection *)self imageAlign], v61 == [(SFDescriptionCardSection *)v5 imageAlign]) && (v62 = [(SFDescriptionCardSection *)self textAlign], v62 == [(SFDescriptionCardSection *)v5 textAlign]))
                                          {
                                            attributionText = [(SFDescriptionCardSection *)self attributionText];
                                            attributionText2 = [(SFDescriptionCardSection *)v5 attributionText];
                                            if ((attributionText != 0) == (attributionText2 == 0))
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
                                              attributionText3 = [(SFDescriptionCardSection *)self attributionText];
                                              DWORD2(v171) = attributionText3 != 0;
                                              v85 = attributionText3;
                                              if (!attributionText3 || (-[SFDescriptionCardSection attributionText](self, "attributionText"), v64 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection attributionText](v5, "attributionText"), v88 = objc_claimAutoreleasedReturnValue(), v89 = v64, [v64 isEqual:?]))
                                              {
                                                attributionURL = [(SFDescriptionCardSection *)self attributionURL];
                                                attributionURL2 = [(SFDescriptionCardSection *)v5 attributionURL];
                                                if ((attributionURL != 0) == (attributionURL2 == 0))
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
                                                  attributionURL3 = [(SFDescriptionCardSection *)self attributionURL];
                                                  DWORD1(v171) = attributionURL3 != 0;
                                                  v80 = attributionURL3;
                                                  if (!attributionURL3 || (-[SFDescriptionCardSection attributionURL](self, "attributionURL"), v66 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection attributionURL](v5, "attributionURL"), v83 = objc_claimAutoreleasedReturnValue(), v84 = v66, [v66 isEqual:?]))
                                                  {
                                                    attributionGlyph = [(SFDescriptionCardSection *)self attributionGlyph];
                                                    attributionGlyph2 = [(SFDescriptionCardSection *)v5 attributionGlyph];
                                                    if ((attributionGlyph != 0) == (attributionGlyph2 == 0))
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
                                                      attributionGlyph3 = [(SFDescriptionCardSection *)self attributionGlyph];
                                                      *&v170[8] = attributionGlyph3 != 0;
                                                      v75 = attributionGlyph3;
                                                      if (!attributionGlyph3 || (-[SFDescriptionCardSection attributionGlyph](self, "attributionGlyph"), v68 = objc_claimAutoreleasedReturnValue(), -[SFDescriptionCardSection attributionGlyph](v5, "attributionGlyph"), v79 = v68, v77 = objc_claimAutoreleasedReturnValue(), [v68 isEqual:?]))
                                                      {
                                                        richDescriptions = [(SFDescriptionCardSection *)self richDescriptions];
                                                        richDescriptions2 = [(SFDescriptionCardSection *)v5 richDescriptions];
                                                        if ((richDescriptions != 0) == (richDescriptions2 == 0))
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
                                                          richDescriptions3 = [(SFDescriptionCardSection *)self richDescriptions];
                                                          if (richDescriptions3)
                                                          {
                                                            richDescriptions4 = [(SFDescriptionCardSection *)self richDescriptions];
                                                            richDescriptions5 = [(SFDescriptionCardSection *)v5 richDescriptions];
                                                            v71 = richDescriptions4;
                                                            v18 = [richDescriptions4 isEqual:richDescriptions5];
                                                            v6 = richDescriptions5;
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
                                                            richDescriptions3 = 0;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v40.receiver = self;
  v40.super_class = SFDescriptionCardSection;
  v4 = [(SFTitleCardSection *)&v40 copyWithZone:zone];
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

  descriptionText = [(SFDescriptionCardSection *)self descriptionText];
  v20 = [descriptionText copy];
  [v4 setDescriptionText:v20];

  expandText = [(SFDescriptionCardSection *)self expandText];
  v22 = [expandText copy];
  [v4 setExpandText:v22];

  image = [(SFDescriptionCardSection *)self image];
  v24 = [image copy];
  [v4 setImage:v24];

  [v4 setTitleNoWrap:{-[SFDescriptionCardSection titleNoWrap](self, "titleNoWrap")}];
  titleWeight = [(SFDescriptionCardSection *)self titleWeight];
  v26 = [titleWeight copy];
  [v4 setTitleWeight:v26];

  descriptionSize = [(SFDescriptionCardSection *)self descriptionSize];
  v28 = [descriptionSize copy];
  [v4 setDescriptionSize:v28];

  descriptionWeight = [(SFDescriptionCardSection *)self descriptionWeight];
  v30 = [descriptionWeight copy];
  [v4 setDescriptionWeight:v30];

  [v4 setDescriptionExpand:{-[SFDescriptionCardSection descriptionExpand](self, "descriptionExpand")}];
  [v4 setImageAlign:{-[SFDescriptionCardSection imageAlign](self, "imageAlign")}];
  [v4 setTextAlign:{-[SFDescriptionCardSection textAlign](self, "textAlign")}];
  attributionText = [(SFDescriptionCardSection *)self attributionText];
  v32 = [attributionText copy];
  [v4 setAttributionText:v32];

  attributionURL = [(SFDescriptionCardSection *)self attributionURL];
  v34 = [attributionURL copy];
  [v4 setAttributionURL:v34];

  attributionGlyph = [(SFDescriptionCardSection *)self attributionGlyph];
  v36 = [attributionGlyph copy];
  [v4 setAttributionGlyph:v36];

  richDescriptions = [(SFDescriptionCardSection *)self richDescriptions];
  v38 = [richDescriptions copy];
  [v4 setRichDescriptions:v38];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDescriptionCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBDescriptionCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDescriptionCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBDescriptionCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFDescriptionCardSection;
  [(SFTitleCardSection *)&v3 encodeWithCoder:coder];
}

- (SFDescriptionCardSection)initWithCoder:(id)coder
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

    descriptionText = [(SFCardSection *)v8 descriptionText];
    [(SFDescriptionCardSection *)v5 setDescriptionText:descriptionText];

    expandText = [(SFCardSection *)v8 expandText];
    [(SFDescriptionCardSection *)v5 setExpandText:expandText];

    image = [(SFCardSection *)v8 image];
    [(SFDescriptionCardSection *)v5 setImage:image];

    [(SFDescriptionCardSection *)v5 setTitleNoWrap:[(SFCardSection *)v8 titleNoWrap]];
    titleWeight = [(SFCardSection *)v8 titleWeight];
    [(SFDescriptionCardSection *)v5 setTitleWeight:titleWeight];

    descriptionSize = [(SFCardSection *)v8 descriptionSize];
    [(SFDescriptionCardSection *)v5 setDescriptionSize:descriptionSize];

    descriptionWeight = [(SFCardSection *)v8 descriptionWeight];
    [(SFDescriptionCardSection *)v5 setDescriptionWeight:descriptionWeight];

    [(SFDescriptionCardSection *)v5 setDescriptionExpand:[(SFCardSection *)v8 descriptionExpand]];
    [(SFDescriptionCardSection *)v5 setImageAlign:[(SFCardSection *)v8 imageAlign]];
    [(SFDescriptionCardSection *)v5 setTextAlign:[(SFCardSection *)v8 textAlign]];
    attributionText = [(SFCardSection *)v8 attributionText];
    [(SFDescriptionCardSection *)v5 setAttributionText:attributionText];

    attributionURL = [(SFCardSection *)v8 attributionURL];
    [(SFDescriptionCardSection *)v5 setAttributionURL:attributionURL];

    attributionGlyph = [(SFCardSection *)v8 attributionGlyph];
    [(SFDescriptionCardSection *)v5 setAttributionGlyph:attributionGlyph];

    richDescriptions = [(SFCardSection *)v8 richDescriptions];
    [(SFDescriptionCardSection *)v5 setRichDescriptions:richDescriptions];

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

- (SFDescriptionCardSection)initWithProtobuf:(id)protobuf
{
  v72 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v69.receiver = self;
  v69.super_class = SFDescriptionCardSection;
  v5 = [(SFCardSection *)&v69 init];
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

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v65 objects:v71 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v65 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v65 objects:v71 count:16];
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

    descriptionText = [protobufCopy descriptionText];

    if (descriptionText)
    {
      v29 = [SFText alloc];
      descriptionText2 = [protobufCopy descriptionText];
      v31 = [(SFText *)v29 initWithProtobuf:descriptionText2];
      [(SFDescriptionCardSection *)v5 setDescriptionText:v31];
    }

    expandText = [protobufCopy expandText];

    if (expandText)
    {
      expandText2 = [protobufCopy expandText];
      [(SFDescriptionCardSection *)v5 setExpandText:expandText2];
    }

    image = [protobufCopy image];

    if (image)
    {
      v35 = [SFImage alloc];
      image2 = [protobufCopy image];
      v37 = [(SFImage *)v35 initWithProtobuf:image2];
      [(SFDescriptionCardSection *)v5 setImage:v37];
    }

    if ([protobufCopy titleNoWrap])
    {
      -[SFDescriptionCardSection setTitleNoWrap:](v5, "setTitleNoWrap:", [protobufCopy titleNoWrap]);
    }

    if ([protobufCopy titleWeight])
    {
      v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "titleWeight")}];
      [(SFDescriptionCardSection *)v5 setTitleWeight:v38];
    }

    if ([protobufCopy descriptionSize])
    {
      v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "descriptionSize")}];
      [(SFDescriptionCardSection *)v5 setDescriptionSize:v39];
    }

    if ([protobufCopy descriptionWeight])
    {
      v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "descriptionWeight")}];
      [(SFDescriptionCardSection *)v5 setDescriptionWeight:v40];
    }

    if ([protobufCopy descriptionExpand])
    {
      -[SFDescriptionCardSection setDescriptionExpand:](v5, "setDescriptionExpand:", [protobufCopy descriptionExpand]);
    }

    if ([protobufCopy imageAlign])
    {
      -[SFDescriptionCardSection setImageAlign:](v5, "setImageAlign:", [protobufCopy imageAlign]);
    }

    if ([protobufCopy textAlign])
    {
      -[SFDescriptionCardSection setTextAlign:](v5, "setTextAlign:", [protobufCopy textAlign]);
    }

    attributionText = [protobufCopy attributionText];

    if (attributionText)
    {
      attributionText2 = [protobufCopy attributionText];
      [(SFDescriptionCardSection *)v5 setAttributionText:attributionText2];
    }

    attributionURL = [protobufCopy attributionURL];

    if (attributionURL)
    {
      attributionURL2 = [protobufCopy attributionURL];
      v45 = _SFPBURLHandwrittenTranslator(attributionURL2);
      [(SFDescriptionCardSection *)v5 setAttributionURL:v45];
    }

    attributionGlyph = [protobufCopy attributionGlyph];

    if (attributionGlyph)
    {
      v47 = [SFImage alloc];
      attributionGlyph2 = [protobufCopy attributionGlyph];
      v49 = [(SFImage *)v47 initWithProtobuf:attributionGlyph2];
      [(SFDescriptionCardSection *)v5 setAttributionGlyph:v49];
    }

    richDescriptions = [protobufCopy richDescriptions];
    if (richDescriptions)
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
    richDescriptions2 = [protobufCopy richDescriptions];
    v53 = [richDescriptions2 countByEnumeratingWithState:&v61 objects:v70 count:16];
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
            objc_enumerationMutation(richDescriptions2);
          }

          v57 = [[SFRichText alloc] initWithProtobuf:*(*(&v61 + 1) + 8 * j)];
          if (v57)
          {
            [v51 addObject:v57];
          }
        }

        v54 = [richDescriptions2 countByEnumeratingWithState:&v61 objects:v70 count:16];
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