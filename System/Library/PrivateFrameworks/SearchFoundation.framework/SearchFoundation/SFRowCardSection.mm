@interface SFRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRowCardSection)initWithCoder:(id)coder;
- (SFRowCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFRowCardSection

- (unint64_t)hash
{
  v43.receiver = self;
  v43.super_class = SFRowCardSection;
  v3 = [(SFCardSection *)&v43 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [punchoutPickerDismissText hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFRowCardSection *)self type];
  v10 = hasBottomPadding ^ [type hash];
  v11 = v10 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v12 = v11 ^ [backgroundColor hash];
  image = [(SFRowCardSection *)self image];
  v13 = v8 ^ v12 ^ [image hash];
  imageIsRightAligned = [(SFRowCardSection *)self imageIsRightAligned];
  leadingText = [(SFRowCardSection *)self leadingText];
  v16 = imageIsRightAligned ^ [leadingText hash];
  trailingText = [(SFRowCardSection *)self trailingText];
  v18 = v16 ^ [trailingText hash];
  attributionImage = [(SFRowCardSection *)self attributionImage];
  v20 = v18 ^ [attributionImage hash];
  v21 = [(SFRowCardSection *)self key];
  v22 = v20 ^ [v21 hash];
  v36 = v13 ^ v22 ^ [(SFRowCardSection *)self keyNoWrap];
  keyWeight = [(SFRowCardSection *)self keyWeight];
  v24 = [keyWeight hash];
  value = [(SFRowCardSection *)self value];
  v26 = v24 ^ [value hash];
  v27 = v26 ^ [(SFRowCardSection *)self valueNoWrap];
  valueWeight = [(SFRowCardSection *)self valueWeight];
  v29 = v27 ^ [valueWeight hash];
  v30 = v29 ^ [(SFRowCardSection *)self cardPaddingBottom];
  leadingSubtitle = [(SFRowCardSection *)self leadingSubtitle];
  v32 = v30 ^ [leadingSubtitle hash];
  trailingSubtitle = [(SFRowCardSection *)self trailingSubtitle];
  v34 = v32 ^ [trailingSubtitle hash];

  return v36 ^ v34;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_99;
  }

  if (![(SFRowCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v162.receiver = self, v162.super_class = SFRowCardSection, ![(SFCardSection *)&v162 isEqual:equalCopy]))
  {
    v19 = 0;
    goto LABEL_99;
  }

  v5 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
  v156 = punchoutOptions2 == 0;
  v157 = punchoutOptions != 0;
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

  punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
  v8 = punchoutOptions3 != 0;
  v143 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v138 = v139 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
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

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v155) = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
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

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = punchoutPickerTitle3 != 0;
  v137 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle5 = [(SFCardSection *)v5 punchoutPickerTitle];
    v134 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
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

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
  DWORD2(v155) = v21;
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
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

  punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
  v36 = punchoutPickerDismissText3 != 0;
  v132 = punchoutPickerDismissText3;
  if (punchoutPickerDismissText3)
  {
    punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText5 = [(SFCardSection *)v5 punchoutPickerDismissText];
    v131 = punchoutPickerDismissText4;
    if (![punchoutPickerDismissText4 isEqual:?])
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

  canBeHidden = [(SFCardSection *)self canBeHidden];
  if (canBeHidden != [(SFCardSection *)v5 canBeHidden]|| (v39 = [(SFCardSection *)self hasTopPadding], v39 != [(SFCardSection *)v5 hasTopPadding]) || (v40 = [(SFCardSection *)self hasBottomPadding], v40 != [(SFCardSection *)v5 hasBottomPadding]))
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

  type = [(SFRowCardSection *)self type];
  type2 = [(SFRowCardSection *)v5 type];
  if ((type != 0) == (type2 == 0))
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

  type3 = [(SFRowCardSection *)self type];
  v42 = type3 != 0;
  v127 = type3;
  if (type3)
  {
    type4 = [(SFRowCardSection *)self type];
    type5 = [(SFRowCardSection *)v5 type];
    v126 = type4;
    if (![type4 isEqual:?])
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

  separatorStyle = [(SFCardSection *)self separatorStyle];
  if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
  {
    backgroundColor = [(SFCardSection *)self backgroundColor];
    backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
    if ((backgroundColor != 0) == (backgroundColor2 == 0))
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
      backgroundColor3 = [(SFCardSection *)self backgroundColor];
      *&v161[16] = backgroundColor3 != 0;
      v122 = backgroundColor3;
      if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v118 = objc_claimAutoreleasedReturnValue(), v119 = v46, [v46 isEqual:?]))
      {
        image = [(SFRowCardSection *)self image];
        image2 = [(SFRowCardSection *)v5 image];
        if ((image != 0) == (image2 == 0))
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
          image3 = [(SFRowCardSection *)self image];
          *&v161[12] = image3 != 0;
          v117 = image3;
          if (!image3 || (-[SFRowCardSection image](self, "image"), v48 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection image](v5, "image"), v115 = objc_claimAutoreleasedReturnValue(), v116 = v48, [v48 isEqual:?]))
          {
            imageIsRightAligned = [(SFRowCardSection *)self imageIsRightAligned];
            if (imageIsRightAligned == [(SFRowCardSection *)v5 imageIsRightAligned])
            {
              leadingText = [(SFRowCardSection *)self leadingText];
              leadingText2 = [(SFRowCardSection *)v5 leadingText];
              if ((leadingText != 0) == (leadingText2 == 0))
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
                leadingText3 = [(SFRowCardSection *)self leadingText];
                *&v161[8] = leadingText3 != 0;
                v112 = leadingText3;
                if (!leadingText3 || (-[SFRowCardSection leadingText](self, "leadingText"), v51 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection leadingText](v5, "leadingText"), v108 = objc_claimAutoreleasedReturnValue(), v109 = v51, [v51 isEqual:?]))
                {
                  trailingText = [(SFRowCardSection *)self trailingText];
                  trailingText2 = [(SFRowCardSection *)v5 trailingText];
                  if ((trailingText != 0) == (trailingText2 == 0))
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
                    trailingText3 = [(SFRowCardSection *)self trailingText];
                    *&v161[4] = trailingText3 != 0;
                    v107 = trailingText3;
                    if (!trailingText3 || (-[SFRowCardSection trailingText](self, "trailingText"), v53 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection trailingText](v5, "trailingText"), v103 = objc_claimAutoreleasedReturnValue(), v104 = v53, [v53 isEqual:?]))
                    {
                      attributionImage = [(SFRowCardSection *)self attributionImage];
                      attributionImage2 = [(SFRowCardSection *)v5 attributionImage];
                      if ((attributionImage != 0) == (attributionImage2 == 0))
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
                        attributionImage3 = [(SFRowCardSection *)self attributionImage];
                        *v161 = attributionImage3 != 0;
                        v102 = attributionImage3;
                        if (!attributionImage3 || (-[SFRowCardSection attributionImage](self, "attributionImage"), v55 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection attributionImage](v5, "attributionImage"), v98 = objc_claimAutoreleasedReturnValue(), v99 = v55, [v55 isEqual:?]))
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
                              keyNoWrap = [(SFRowCardSection *)self keyNoWrap];
                              if (keyNoWrap == [(SFRowCardSection *)v5 keyNoWrap])
                              {
                                keyWeight = [(SFRowCardSection *)self keyWeight];
                                keyWeight2 = [(SFRowCardSection *)v5 keyWeight];
                                if ((keyWeight != 0) == (keyWeight2 == 0))
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
                                  keyWeight3 = [(SFRowCardSection *)self keyWeight];
                                  HIDWORD(v154) = keyWeight3 != 0;
                                  v92 = keyWeight3;
                                  if (!keyWeight3 || (-[SFRowCardSection keyWeight](self, "keyWeight"), v60 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection keyWeight](v5, "keyWeight"), v88 = objc_claimAutoreleasedReturnValue(), v89 = v60, [v60 isEqual:?]))
                                  {
                                    value = [(SFRowCardSection *)self value];
                                    value2 = [(SFRowCardSection *)v5 value];
                                    if ((value != 0) == (value2 == 0))
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
                                      value3 = [(SFRowCardSection *)self value];
                                      DWORD2(v154) = value3 != 0;
                                      v85 = value3;
                                      if (!value3 || (-[SFRowCardSection value](self, "value"), v62 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection value](v5, "value"), v86 = objc_claimAutoreleasedReturnValue(), v87 = v62, [v62 isEqual:?]))
                                      {
                                        valueNoWrap = [(SFRowCardSection *)self valueNoWrap];
                                        if (valueNoWrap == [(SFRowCardSection *)v5 valueNoWrap])
                                        {
                                          valueWeight = [(SFRowCardSection *)self valueWeight];
                                          valueWeight2 = [(SFRowCardSection *)v5 valueWeight];
                                          if ((valueWeight != 0) == (valueWeight2 == 0))
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
                                            valueWeight3 = [(SFRowCardSection *)self valueWeight];
                                            DWORD1(v154) = valueWeight3 != 0;
                                            v80 = valueWeight3;
                                            if (!valueWeight3 || (-[SFRowCardSection valueWeight](self, "valueWeight"), v65 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection valueWeight](v5, "valueWeight"), v81 = objc_claimAutoreleasedReturnValue(), v82 = v65, [v65 isEqual:?]))
                                            {
                                              cardPaddingBottom = [(SFRowCardSection *)self cardPaddingBottom];
                                              if (cardPaddingBottom == [(SFRowCardSection *)v5 cardPaddingBottom])
                                              {
                                                leadingSubtitle = [(SFRowCardSection *)self leadingSubtitle];
                                                leadingSubtitle2 = [(SFRowCardSection *)v5 leadingSubtitle];
                                                if ((leadingSubtitle != 0) == (leadingSubtitle2 == 0))
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
                                                  leadingSubtitle3 = [(SFRowCardSection *)self leadingSubtitle];
                                                  HIDWORD(v153[3]) = leadingSubtitle3 != 0;
                                                  v75 = leadingSubtitle3;
                                                  if (!leadingSubtitle3 || (-[SFRowCardSection leadingSubtitle](self, "leadingSubtitle"), v68 = objc_claimAutoreleasedReturnValue(), -[SFRowCardSection leadingSubtitle](v5, "leadingSubtitle"), v76 = objc_claimAutoreleasedReturnValue(), v77 = v68, [v68 isEqual:?]))
                                                  {
                                                    trailingSubtitle = [(SFRowCardSection *)self trailingSubtitle];
                                                    trailingSubtitle2 = [(SFRowCardSection *)v5 trailingSubtitle];
                                                    if ((trailingSubtitle != 0) == (trailingSubtitle2 == 0))
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
                                                      trailingSubtitle3 = [(SFRowCardSection *)self trailingSubtitle];
                                                      if (trailingSubtitle3)
                                                      {
                                                        trailingSubtitle4 = [(SFRowCardSection *)self trailingSubtitle];
                                                        trailingSubtitle5 = [(SFRowCardSection *)v5 trailingSubtitle];
                                                        v71 = trailingSubtitle4;
                                                        v19 = [trailingSubtitle4 isEqual:trailingSubtitle5];
                                                        v6 = trailingSubtitle5;
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
                                                        trailingSubtitle3 = 0;
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
    v142 = equalCopy;
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
    equalCopy = v142;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v36.receiver = self;
  v36.super_class = SFRowCardSection;
  v4 = [(SFCardSection *)&v36 copyWithZone:zone];
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
  type = [(SFRowCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  image = [(SFRowCardSection *)self image];
  v16 = [image copy];
  [v4 setImage:v16];

  [v4 setImageIsRightAligned:{-[SFRowCardSection imageIsRightAligned](self, "imageIsRightAligned")}];
  leadingText = [(SFRowCardSection *)self leadingText];
  v18 = [leadingText copy];
  [v4 setLeadingText:v18];

  trailingText = [(SFRowCardSection *)self trailingText];
  v20 = [trailingText copy];
  [v4 setTrailingText:v20];

  attributionImage = [(SFRowCardSection *)self attributionImage];
  v22 = [attributionImage copy];
  [v4 setAttributionImage:v22];

  v23 = [(SFRowCardSection *)self key];
  v24 = [v23 copy];
  [v4 setKey:v24];

  [v4 setKeyNoWrap:{-[SFRowCardSection keyNoWrap](self, "keyNoWrap")}];
  keyWeight = [(SFRowCardSection *)self keyWeight];
  v26 = [keyWeight copy];
  [v4 setKeyWeight:v26];

  value = [(SFRowCardSection *)self value];
  v28 = [value copy];
  [v4 setValue:v28];

  [v4 setValueNoWrap:{-[SFRowCardSection valueNoWrap](self, "valueNoWrap")}];
  valueWeight = [(SFRowCardSection *)self valueWeight];
  v30 = [valueWeight copy];
  [v4 setValueWeight:v30];

  [v4 setCardPaddingBottom:{-[SFRowCardSection cardPaddingBottom](self, "cardPaddingBottom")}];
  leadingSubtitle = [(SFRowCardSection *)self leadingSubtitle];
  v32 = [leadingSubtitle copy];
  [v4 setLeadingSubtitle:v32];

  trailingSubtitle = [(SFRowCardSection *)self trailingSubtitle];
  v34 = [trailingSubtitle copy];
  [v4 setTrailingSubtitle:v34];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRowCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRowCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRowCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRowCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFRowCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFRowCardSection)initWithCoder:(id)coder
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
    [(SFRowCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    image = [(SFCardSection *)v8 image];
    [(SFRowCardSection *)v5 setImage:image];

    [(SFRowCardSection *)v5 setImageIsRightAligned:[(SFCardSection *)v8 imageIsRightAligned]];
    leadingText = [(SFCardSection *)v8 leadingText];
    [(SFRowCardSection *)v5 setLeadingText:leadingText];

    trailingText = [(SFCardSection *)v8 trailingText];
    [(SFRowCardSection *)v5 setTrailingText:trailingText];

    attributionImage = [(SFCardSection *)v8 attributionImage];
    [(SFRowCardSection *)v5 setAttributionImage:attributionImage];

    v18 = [(SFCardSection *)v8 key];
    [(SFRowCardSection *)v5 setKey:v18];

    [(SFRowCardSection *)v5 setKeyNoWrap:[(SFCardSection *)v8 keyNoWrap]];
    keyWeight = [(SFCardSection *)v8 keyWeight];
    [(SFRowCardSection *)v5 setKeyWeight:keyWeight];

    value = [(SFCardSection *)v8 value];
    [(SFRowCardSection *)v5 setValue:value];

    [(SFRowCardSection *)v5 setValueNoWrap:[(SFCardSection *)v8 valueNoWrap]];
    valueWeight = [(SFCardSection *)v8 valueWeight];
    [(SFRowCardSection *)v5 setValueWeight:valueWeight];

    [(SFRowCardSection *)v5 setCardPaddingBottom:[(SFCardSection *)v8 cardPaddingBottom]];
    leadingSubtitle = [(SFCardSection *)v8 leadingSubtitle];
    [(SFRowCardSection *)v5 setLeadingSubtitle:leadingSubtitle];

    trailingSubtitle = [(SFCardSection *)v8 trailingSubtitle];
    [(SFRowCardSection *)v5 setTrailingSubtitle:trailingSubtitle];

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

- (SFRowCardSection)initWithProtobuf:(id)protobuf
{
  v63 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v61.receiver = self;
  v61.super_class = SFRowCardSection;
  v5 = [(SFCardSection *)&v61 init];
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

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v57 objects:v62 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v57 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v57 objects:v62 count:16];
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
      [(SFRowCardSection *)v5 setType:type2];
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

    image = [protobufCopy image];

    if (image)
    {
      v25 = [SFImage alloc];
      image2 = [protobufCopy image];
      v27 = [(SFImage *)v25 initWithProtobuf:image2];
      [(SFRowCardSection *)v5 setImage:v27];
    }

    if ([protobufCopy imageIsRightAligned])
    {
      -[SFRowCardSection setImageIsRightAligned:](v5, "setImageIsRightAligned:", [protobufCopy imageIsRightAligned]);
    }

    leadingText = [protobufCopy leadingText];

    if (leadingText)
    {
      v29 = [SFRichText alloc];
      leadingText2 = [protobufCopy leadingText];
      v31 = [(SFRichText *)v29 initWithProtobuf:leadingText2];
      [(SFRowCardSection *)v5 setLeadingText:v31];
    }

    trailingText = [protobufCopy trailingText];

    if (trailingText)
    {
      v33 = [SFRichText alloc];
      trailingText2 = [protobufCopy trailingText];
      v35 = [(SFRichText *)v33 initWithProtobuf:trailingText2];
      [(SFRowCardSection *)v5 setTrailingText:v35];
    }

    attributionImage = [protobufCopy attributionImage];

    if (attributionImage)
    {
      v37 = [SFImage alloc];
      attributionImage2 = [protobufCopy attributionImage];
      v39 = [(SFImage *)v37 initWithProtobuf:attributionImage2];
      [(SFRowCardSection *)v5 setAttributionImage:v39];
    }

    v40 = [protobufCopy key];

    if (v40)
    {
      v41 = [protobufCopy key];
      [(SFRowCardSection *)v5 setKey:v41];
    }

    if ([protobufCopy keyNoWrap])
    {
      -[SFRowCardSection setKeyNoWrap:](v5, "setKeyNoWrap:", [protobufCopy keyNoWrap]);
    }

    if ([protobufCopy keyWeight])
    {
      v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "keyWeight")}];
      [(SFRowCardSection *)v5 setKeyWeight:v42];
    }

    value = [protobufCopy value];

    if (value)
    {
      value2 = [protobufCopy value];
      [(SFRowCardSection *)v5 setValue:value2];
    }

    if ([protobufCopy valueNoWrap])
    {
      -[SFRowCardSection setValueNoWrap:](v5, "setValueNoWrap:", [protobufCopy valueNoWrap]);
    }

    if ([protobufCopy valueWeight])
    {
      v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "valueWeight")}];
      [(SFRowCardSection *)v5 setValueWeight:v45];
    }

    if ([protobufCopy cardPaddingBottom])
    {
      -[SFRowCardSection setCardPaddingBottom:](v5, "setCardPaddingBottom:", [protobufCopy cardPaddingBottom]);
    }

    leadingSubtitle = [protobufCopy leadingSubtitle];

    if (leadingSubtitle)
    {
      v47 = [SFRichText alloc];
      leadingSubtitle2 = [protobufCopy leadingSubtitle];
      v49 = [(SFRichText *)v47 initWithProtobuf:leadingSubtitle2];
      [(SFRowCardSection *)v5 setLeadingSubtitle:v49];
    }

    trailingSubtitle = [protobufCopy trailingSubtitle];

    if (trailingSubtitle)
    {
      v51 = [SFRichText alloc];
      trailingSubtitle2 = [protobufCopy trailingSubtitle];
      v53 = [(SFRichText *)v51 initWithProtobuf:trailingSubtitle2];
      [(SFRowCardSection *)v5 setTrailingSubtitle:v53];
    }

    v54 = v5;
  }

  v55 = *MEMORY[0x1E69E9840];
  return v5;
}

@end