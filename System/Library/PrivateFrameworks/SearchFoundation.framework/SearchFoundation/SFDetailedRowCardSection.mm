@interface SFDetailedRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDetailedRowCardSection)initWithCoder:(id)coder;
- (SFDetailedRowCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFDetailedRowCardSection

- (unint64_t)hash
{
  v57.receiver = self;
  v57.super_class = SFDetailedRowCardSection;
  v3 = [(SFCardSection *)&v57 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [punchoutPickerDismissText hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFDetailedRowCardSection *)self type];
  v10 = hasBottomPadding ^ [type hash];
  v11 = v10 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v12 = v11 ^ [backgroundColor hash];
  thumbnail = [(SFDetailedRowCardSection *)self thumbnail];
  v13 = v8 ^ v12 ^ [thumbnail hash];
  preventThumbnailImageScaling = [(SFDetailedRowCardSection *)self preventThumbnailImageScaling];
  title = [(SFDetailedRowCardSection *)self title];
  v15 = preventThumbnailImageScaling ^ [title hash];
  secondaryTitle = [(SFDetailedRowCardSection *)self secondaryTitle];
  v16 = v15 ^ [secondaryTitle hash];
  secondaryTitleImage = [(SFDetailedRowCardSection *)self secondaryTitleImage];
  v17 = v16 ^ [secondaryTitleImage hash];
  v18 = v17 ^ [(SFDetailedRowCardSection *)self isSecondaryTitleDetached];
  descriptions = [(SFDetailedRowCardSection *)self descriptions];
  v19 = v13 ^ v18 ^ [descriptions hash];
  footnote = [(SFDetailedRowCardSection *)self footnote];
  v20 = [footnote hash];
  trailingTopText = [(SFDetailedRowCardSection *)self trailingTopText];
  v21 = v20 ^ [trailingTopText hash];
  trailingMiddleText = [(SFDetailedRowCardSection *)self trailingMiddleText];
  v22 = v21 ^ [trailingMiddleText hash];
  trailingBottomText = [(SFDetailedRowCardSection *)self trailingBottomText];
  v24 = v22 ^ [trailingBottomText hash];
  action = [(SFDetailedRowCardSection *)self action];
  v26 = v24 ^ [action hash];
  button = [(SFDetailedRowCardSection *)self button];
  v28 = v26 ^ [button hash];
  v29 = v28 ^ [(SFDetailedRowCardSection *)self shouldUseCompactDisplay];
  buttonItems = [(SFDetailedRowCardSection *)self buttonItems];
  v43 = v19 ^ v29 ^ [buttonItems hash];
  trailingThumbnail = [(SFDetailedRowCardSection *)self trailingThumbnail];
  v32 = [trailingThumbnail hash];
  v33 = v32 ^ [(SFDetailedRowCardSection *)self buttonItemsAreTrailing];
  topText = [(SFDetailedRowCardSection *)self topText];
  v35 = v33 ^ [topText hash];
  richTrailingTopText = [(SFDetailedRowCardSection *)self richTrailingTopText];
  v37 = v35 ^ [richTrailingTopText hash];
  richTrailingMiddleText = [(SFDetailedRowCardSection *)self richTrailingMiddleText];
  v39 = v37 ^ [richTrailingMiddleText hash];
  richTrailingBottomText = [(SFDetailedRowCardSection *)self richTrailingBottomText];
  v41 = v39 ^ [richTrailingBottomText hash];

  return v43 ^ v41;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_145;
  }

  if (![(SFDetailedRowCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v238.receiver = self, v238.super_class = SFDetailedRowCardSection, ![(SFCardSection *)&v238 isEqual:equalCopy]))
  {
    v19 = 0;
    goto LABEL_145;
  }

  v5 = equalCopy;
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
  v230 = punchoutOptions2 == 0;
  v231 = punchoutOptions != 0;
  if (v231 == v230)
  {
    v229 = 0uLL;
    v219 = 0;
    v218 = 0;
    v10 = 0;
    v11 = 0;
    v237 = 0;
    memset(v217, 0, sizeof(v217));
    v215 = 0;
    v12 = 0;
    v236 = 0;
    v212 = 0;
    v214 = 0;
    v235 = 0;
    v207 = 0;
    v234 = 0;
    v206 = 0;
    v211 = 0;
    v228 = 0;
    v201 = 0;
    v208 = 0;
    v227 = 0;
    v198 = 0;
    v204 = 0;
    v226 = 0;
    v196 = 0;
    v202 = 0;
    v225 = 0;
    v195 = 0;
    v200 = 0;
    v224 = 0;
    v193 = 0;
    v199 = 0;
    v223 = 0;
    v194 = 0;
    v197 = 0;
    v222 = 0;
    v203 = 0;
    v209 = 0;
    v221 = 0;
    v205 = 0;
    v210 = 0;
    v220 = 0;
    v213 = 0;
    v216 = 0;
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
  v192 = punchoutOptions3;
  if (punchoutOptions3)
  {
    punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v187 = v188 = punchoutOptions4;
    if (![punchoutOptions4 isEqual:?])
    {
      v219 = 0;
      v218 = 0;
      *(&v229 + 4) = 0;
      v10 = 0;
      LODWORD(v229) = 0;
      v11 = 0;
      v237 = 0;
      memset(v217, 0, sizeof(v217));
      v215 = 0;
      v12 = 0;
      v236 = 0;
      v212 = 0;
      v214 = 0;
      v235 = 0;
      v207 = 0;
      v234 = 0;
      v206 = 0;
      v211 = 0;
      v228 = 0;
      v201 = 0;
      v208 = 0;
      v227 = 0;
      v198 = 0;
      v204 = 0;
      v226 = 0;
      v196 = 0;
      v202 = 0;
      v225 = 0;
      v195 = 0;
      v200 = 0;
      v224 = 0;
      v193 = 0;
      v199 = 0;
      v223 = 0;
      v194 = 0;
      v197 = 0;
      v222 = 0;
      v203 = 0;
      v209 = 0;
      v221 = 0;
      v205 = 0;
      v210 = 0;
      v220 = 0;
      v213 = 0;
      v216 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      HIDWORD(v229) = 1;
      goto LABEL_16;
    }
  }

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v229) = v8;
  if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
  {
    v218 = 0;
    *(&v229 + 4) = 0;
    v10 = 0;
    LODWORD(v229) = 0;
    v11 = 0;
    v237 = 0;
    memset(v217, 0, sizeof(v217));
    v215 = 0;
    v12 = 0;
    v236 = 0;
    v212 = 0;
    v214 = 0;
    v235 = 0;
    v207 = 0;
    v234 = 0;
    v206 = 0;
    v211 = 0;
    v228 = 0;
    v201 = 0;
    v208 = 0;
    v227 = 0;
    v198 = 0;
    v204 = 0;
    v226 = 0;
    v196 = 0;
    v202 = 0;
    v225 = 0;
    v195 = 0;
    v200 = 0;
    v224 = 0;
    v193 = 0;
    v199 = 0;
    v223 = 0;
    v194 = 0;
    v197 = 0;
    v222 = 0;
    v203 = 0;
    v209 = 0;
    v221 = 0;
    v205 = 0;
    v210 = 0;
    v220 = 0;
    v213 = 0;
    v216 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v219 = 1;
    goto LABEL_16;
  }

  punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = punchoutPickerTitle3 != 0;
  v186 = punchoutPickerTitle3;
  if (punchoutPickerTitle3)
  {
    punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
    [(SFCardSection *)v5 punchoutPickerTitle];
    v182 = v183 = punchoutPickerTitle4;
    if (![punchoutPickerTitle4 isEqual:?])
    {
      v10 = 0;
      *&v229 = 0;
      v11 = 0;
      v237 = 0;
      memset(v217, 0, sizeof(v217));
      v215 = 0;
      v12 = 0;
      v236 = 0;
      v212 = 0;
      v214 = 0;
      v235 = 0;
      v207 = 0;
      v234 = 0;
      v206 = 0;
      v211 = 0;
      v228 = 0;
      v201 = 0;
      v208 = 0;
      v227 = 0;
      v198 = 0;
      v204 = 0;
      v226 = 0;
      v196 = 0;
      v202 = 0;
      v225 = 0;
      v195 = 0;
      v200 = 0;
      v224 = 0;
      v193 = 0;
      v199 = 0;
      v223 = 0;
      v194 = 0;
      v197 = 0;
      v222 = 0;
      v203 = 0;
      v209 = 0;
      v221 = 0;
      v205 = 0;
      v210 = 0;
      v220 = 0;
      v213 = 0;
      v216 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v219 = 1;
      v218 = 1;
      DWORD2(v229) = 1;
      goto LABEL_16;
    }
  }

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
  DWORD2(v229) = v21;
  if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
  {
    v10 = 0;
    *&v229 = 0;
    v11 = 0;
    v237 = 0;
    memset(v217, 0, 20);
    v215 = 0;
    v12 = 0;
    v236 = 0;
    v212 = 0;
    v214 = 0;
    v235 = 0;
    v207 = 0;
    v234 = 0;
    v206 = 0;
    v211 = 0;
    v228 = 0;
    v201 = 0;
    v208 = 0;
    v227 = 0;
    v198 = 0;
    v204 = 0;
    v226 = 0;
    v196 = 0;
    v202 = 0;
    v225 = 0;
    v195 = 0;
    v200 = 0;
    v224 = 0;
    v193 = 0;
    v199 = 0;
    v223 = 0;
    v194 = 0;
    v197 = 0;
    v222 = 0;
    v203 = 0;
    v209 = 0;
    v221 = 0;
    v205 = 0;
    v210 = 0;
    v220 = 0;
    v213 = 0;
    v216 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v219 = 1;
    v218 = 1;
    *&v217[20] = 1;
    goto LABEL_16;
  }

  punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
  v36 = punchoutPickerDismissText3 != 0;
  v181 = punchoutPickerDismissText3;
  if (punchoutPickerDismissText3)
  {
    punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
    [(SFCardSection *)v5 punchoutPickerDismissText];
    v179 = v180 = punchoutPickerDismissText4;
    if (![punchoutPickerDismissText4 isEqual:?])
    {
      *&v229 = 0x100000000;
      v11 = 0;
      v237 = 0;
      memset(v217, 0, 20);
      v215 = 0;
      v12 = 0;
      v236 = 0;
      v212 = 0;
      v214 = 0;
      v235 = 0;
      v207 = 0;
      v234 = 0;
      v206 = 0;
      v211 = 0;
      v228 = 0;
      v201 = 0;
      v208 = 0;
      v227 = 0;
      v198 = 0;
      v204 = 0;
      v226 = 0;
      v196 = 0;
      v202 = 0;
      v225 = 0;
      v195 = 0;
      v200 = 0;
      v224 = 0;
      v193 = 0;
      v199 = 0;
      v223 = 0;
      v194 = 0;
      v197 = 0;
      v222 = 0;
      v203 = 0;
      v209 = 0;
      v221 = 0;
      v205 = 0;
      v210 = 0;
      v220 = 0;
      v213 = 0;
      v216 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v219 = 1;
      v218 = 1;
      *&v217[20] = 1;
      *&v217[24] = 0;
      v10 = 1;
      goto LABEL_16;
    }

    DWORD1(v229) = v36;
  }

  else
  {
    DWORD1(v229) = 0;
  }

  canBeHidden = [(SFCardSection *)self canBeHidden];
  if (canBeHidden != [(SFCardSection *)v5 canBeHidden]|| (v39 = [(SFCardSection *)self hasTopPadding], v39 != [(SFCardSection *)v5 hasTopPadding]) || (v40 = [(SFCardSection *)self hasBottomPadding], v40 != [(SFCardSection *)v5 hasBottomPadding]))
  {
    LODWORD(v229) = 0;
    v11 = 0;
    v237 = 0;
    memset(v217, 0, 20);
    v215 = 0;
    v12 = 0;
    v236 = 0;
    v212 = 0;
    v214 = 0;
    v235 = 0;
    v207 = 0;
    v234 = 0;
    v206 = 0;
    v211 = 0;
    v228 = 0;
    v201 = 0;
    v208 = 0;
    v227 = 0;
    v198 = 0;
    v204 = 0;
    v226 = 0;
    v196 = 0;
    v202 = 0;
    v225 = 0;
    v195 = 0;
    v200 = 0;
    v224 = 0;
    v193 = 0;
    v199 = 0;
    v223 = 0;
    v194 = 0;
    v197 = 0;
    v222 = 0;
    v203 = 0;
    v209 = 0;
    v221 = 0;
    v205 = 0;
    v210 = 0;
    v220 = 0;
    v213 = 0;
    v216 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v219 = 1;
    v218 = 1;
    *&v217[20] = 1;
    v10 = 1;
    goto LABEL_16;
  }

  type = [(SFDetailedRowCardSection *)self type];
  type2 = [(SFDetailedRowCardSection *)v5 type];
  if ((type != 0) == (type2 == 0))
  {
    *v217 = 0;
    *&v217[8] = 0;
    LODWORD(v229) = 0;
    v11 = 0;
    v237 = 0;
    v215 = 0;
    v12 = 0;
    v236 = 0;
    v212 = 0;
    v214 = 0;
    v235 = 0;
    v207 = 0;
    v234 = 0;
    v206 = 0;
    v211 = 0;
    v228 = 0;
    v201 = 0;
    v208 = 0;
    v227 = 0;
    v198 = 0;
    v204 = 0;
    v226 = 0;
    v196 = 0;
    v202 = 0;
    v225 = 0;
    v195 = 0;
    v200 = 0;
    v224 = 0;
    v193 = 0;
    v199 = 0;
    v223 = 0;
    v194 = 0;
    v197 = 0;
    v222 = 0;
    v203 = 0;
    v209 = 0;
    v221 = 0;
    v205 = 0;
    v210 = 0;
    v220 = 0;
    v213 = 0;
    v216 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v219 = 1;
    v218 = 1;
    *&v217[24] = 0;
    v10 = 1;
    *&v217[16] = 0x100000001;
    goto LABEL_16;
  }

  type3 = [(SFDetailedRowCardSection *)self type];
  v42 = type3 != 0;
  v176 = type3;
  if (type3)
  {
    type4 = [(SFDetailedRowCardSection *)self type];
    [(SFDetailedRowCardSection *)v5 type];
    v174 = v175 = type4;
    if (![type4 isEqual:?])
    {
      *&v217[4] = 0;
      v11 = 0;
      v237 = 0;
      *v217 = 0;
      v215 = 0;
      v12 = 0;
      v236 = 0;
      v212 = 0;
      v214 = 0;
      v235 = 0;
      v207 = 0;
      v234 = 0;
      v206 = 0;
      v211 = 0;
      v228 = 0;
      v201 = 0;
      v208 = 0;
      v227 = 0;
      v198 = 0;
      v204 = 0;
      v226 = 0;
      v196 = 0;
      v202 = 0;
      v225 = 0;
      v195 = 0;
      v200 = 0;
      v224 = 0;
      v193 = 0;
      v199 = 0;
      v223 = 0;
      v194 = 0;
      v197 = 0;
      v222 = 0;
      v203 = 0;
      v209 = 0;
      v221 = 0;
      v205 = 0;
      v210 = 0;
      v220 = 0;
      v213 = 0;
      v216 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v219 = 1;
      v218 = 1;
      *&v217[24] = 0;
      v10 = 1;
      *&v217[12] = 1;
      *&v217[16] = 0x100000001;
      LODWORD(v229) = 1;
      goto LABEL_16;
    }

    LODWORD(v229) = v42;
  }

  else
  {
    LODWORD(v229) = 0;
  }

  separatorStyle = [(SFCardSection *)self separatorStyle];
  if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
  {
    backgroundColor = [(SFCardSection *)self backgroundColor];
    backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
    if ((backgroundColor != 0) == (backgroundColor2 == 0))
    {
      v11 = 0;
      v237 = 0;
      *v217 = 0;
      v215 = 0;
      v12 = 0;
      v236 = 0;
      v212 = 0;
      v214 = 0;
      v235 = 0;
      v207 = 0;
      v234 = 0;
      v206 = 0;
      v211 = 0;
      v228 = 0;
      v201 = 0;
      v208 = 0;
      v227 = 0;
      v198 = 0;
      v204 = 0;
      v226 = 0;
      v196 = 0;
      v202 = 0;
      v225 = 0;
      v195 = 0;
      v200 = 0;
      v224 = 0;
      v193 = 0;
      v199 = 0;
      v223 = 0;
      v194 = 0;
      v197 = 0;
      v222 = 0;
      v203 = 0;
      v209 = 0;
      v221 = 0;
      v205 = 0;
      v210 = 0;
      v220 = 0;
      v213 = 0;
      v216 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v219 = 1;
      v218 = 1;
      *&v217[24] = 0;
      v10 = 1;
      *&v217[16] = 0x100000001;
      *&v217[8] = 0x100000001;
    }

    else
    {
      backgroundColor3 = [(SFCardSection *)self backgroundColor];
      HIDWORD(v237) = backgroundColor3 != 0;
      v171 = backgroundColor3;
      if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v168 = v46, v167 = objc_claimAutoreleasedReturnValue(), [v46 isEqual:?]))
      {
        thumbnail = [(SFDetailedRowCardSection *)self thumbnail];
        thumbnail2 = [(SFDetailedRowCardSection *)v5 thumbnail];
        if ((thumbnail != 0) == (thumbnail2 == 0))
        {
          *v217 = 0x100000000;
          LODWORD(v237) = 0;
          v215 = 0;
          v12 = 0;
          v236 = 0;
          v212 = 0;
          v214 = 0;
          v235 = 0;
          v207 = 0;
          v234 = 0;
          v206 = 0;
          v211 = 0;
          v228 = 0;
          v201 = 0;
          v208 = 0;
          v227 = 0;
          v198 = 0;
          v204 = 0;
          v226 = 0;
          v196 = 0;
          v202 = 0;
          v225 = 0;
          v195 = 0;
          v200 = 0;
          v224 = 0;
          v193 = 0;
          v199 = 0;
          v223 = 0;
          v194 = 0;
          v197 = 0;
          v222 = 0;
          v203 = 0;
          v209 = 0;
          v221 = 0;
          v205 = 0;
          v210 = 0;
          v220 = 0;
          v213 = 0;
          v216 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v219 = 1;
          v218 = 1;
          *&v217[24] = 0;
          v10 = 1;
          *&v217[16] = 0x100000001;
          *&v217[8] = 0x100000001;
          v11 = 1;
        }

        else
        {
          thumbnail3 = [(SFDetailedRowCardSection *)self thumbnail];
          LODWORD(v237) = thumbnail3 != 0;
          v166 = thumbnail3;
          if (!thumbnail3 || (-[SFDetailedRowCardSection thumbnail](self, "thumbnail"), v48 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection thumbnail](v5, "thumbnail"), v165 = v48, v164 = objc_claimAutoreleasedReturnValue(), [v48 isEqual:?]))
          {
            preventThumbnailImageScaling = [(SFDetailedRowCardSection *)self preventThumbnailImageScaling];
            if (preventThumbnailImageScaling == [(SFDetailedRowCardSection *)v5 preventThumbnailImageScaling])
            {
              title = [(SFDetailedRowCardSection *)self title];
              title2 = [(SFDetailedRowCardSection *)v5 title];
              if ((title != 0) == (title2 == 0))
              {
                v12 = 0;
                v236 = 0;
                v212 = 0;
                v214 = 0;
                v235 = 0;
                v207 = 0;
                v234 = 0;
                v206 = 0;
                v211 = 0;
                v228 = 0;
                v201 = 0;
                v208 = 0;
                v227 = 0;
                v198 = 0;
                v204 = 0;
                v226 = 0;
                v196 = 0;
                v202 = 0;
                v225 = 0;
                v195 = 0;
                v200 = 0;
                v224 = 0;
                v193 = 0;
                v199 = 0;
                v223 = 0;
                v194 = 0;
                v197 = 0;
                v222 = 0;
                v203 = 0;
                v209 = 0;
                v221 = 0;
                v205 = 0;
                v210 = 0;
                v220 = 0;
                v213 = 0;
                v216 = 0;
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v219 = 1;
                v218 = 1;
                *&v217[24] = 0;
                v10 = 1;
                *&v217[16] = 0x100000001;
                *&v217[8] = 0x100000001;
                v11 = 1;
                *v217 = 0x100000001;
                v215 = 1;
              }

              else
              {
                title3 = [(SFDetailedRowCardSection *)self title];
                v236 = title3 != 0;
                v161 = title3;
                if (!title3 || (-[SFDetailedRowCardSection title](self, "title"), v51 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection title](v5, "title"), v158 = v51, v157 = objc_claimAutoreleasedReturnValue(), [v51 isEqual:?]))
                {
                  secondaryTitle = [(SFDetailedRowCardSection *)self secondaryTitle];
                  secondaryTitle2 = [(SFDetailedRowCardSection *)v5 secondaryTitle];
                  if ((secondaryTitle != 0) == (secondaryTitle2 == 0))
                  {
                    v214 = 0;
                    v235 = 0;
                    v207 = 0;
                    v234 = 0;
                    v206 = 0;
                    v211 = 0;
                    v228 = 0;
                    v201 = 0;
                    v208 = 0;
                    v227 = 0;
                    v198 = 0;
                    v204 = 0;
                    v226 = 0;
                    v196 = 0;
                    v202 = 0;
                    v225 = 0;
                    v195 = 0;
                    v200 = 0;
                    v224 = 0;
                    v193 = 0;
                    v199 = 0;
                    v223 = 0;
                    v194 = 0;
                    v197 = 0;
                    v222 = 0;
                    v203 = 0;
                    v209 = 0;
                    v221 = 0;
                    v205 = 0;
                    v210 = 0;
                    v220 = 0;
                    v213 = 0;
                    v216 = 0;
                    v13 = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v219 = 1;
                    v218 = 1;
                    *&v217[24] = 0;
                    v10 = 1;
                    *&v217[16] = 0x100000001;
                    *&v217[8] = 0x100000001;
                    v11 = 1;
                    *v217 = 0x100000001;
                    v215 = 1;
                    v12 = 1;
                    v212 = 1;
                  }

                  else
                  {
                    secondaryTitle3 = [(SFDetailedRowCardSection *)self secondaryTitle];
                    v235 = secondaryTitle3 != 0;
                    v156 = secondaryTitle3;
                    if (!secondaryTitle3 || (-[SFDetailedRowCardSection secondaryTitle](self, "secondaryTitle"), v53 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection secondaryTitle](v5, "secondaryTitle"), v153 = v53, v152 = objc_claimAutoreleasedReturnValue(), [v53 isEqual:?]))
                    {
                      secondaryTitleImage = [(SFDetailedRowCardSection *)self secondaryTitleImage];
                      secondaryTitleImage2 = [(SFDetailedRowCardSection *)v5 secondaryTitleImage];
                      if ((secondaryTitleImage != 0) == (secondaryTitleImage2 == 0))
                      {
                        v234 = 0;
                        v206 = 0;
                        v211 = 0;
                        v228 = 0;
                        v201 = 0;
                        v208 = 0;
                        v227 = 0;
                        v198 = 0;
                        v204 = 0;
                        v226 = 0;
                        v196 = 0;
                        v202 = 0;
                        v225 = 0;
                        v195 = 0;
                        v200 = 0;
                        v224 = 0;
                        v193 = 0;
                        v199 = 0;
                        v223 = 0;
                        v194 = 0;
                        v197 = 0;
                        v222 = 0;
                        v203 = 0;
                        v209 = 0;
                        v221 = 0;
                        v205 = 0;
                        v210 = 0;
                        v220 = 0;
                        v213 = 0;
                        v216 = 0;
                        v13 = 0;
                        v14 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        v219 = 1;
                        v218 = 1;
                        *&v217[24] = 0;
                        v10 = 1;
                        *&v217[16] = 0x100000001;
                        *&v217[8] = 0x100000001;
                        v11 = 1;
                        *v217 = 0x100000001;
                        v215 = 1;
                        v12 = 1;
                        v212 = 1;
                        v214 = 1;
                        v207 = 1;
                      }

                      else
                      {
                        secondaryTitleImage3 = [(SFDetailedRowCardSection *)self secondaryTitleImage];
                        v234 = secondaryTitleImage3 != 0;
                        v151 = secondaryTitleImage3;
                        if (!secondaryTitleImage3 || (-[SFDetailedRowCardSection secondaryTitleImage](self, "secondaryTitleImage"), v55 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection secondaryTitleImage](v5, "secondaryTitleImage"), v150 = v55, v149 = objc_claimAutoreleasedReturnValue(), [v55 isEqual:?]))
                        {
                          isSecondaryTitleDetached = [(SFDetailedRowCardSection *)self isSecondaryTitleDetached];
                          if (isSecondaryTitleDetached == [(SFDetailedRowCardSection *)v5 isSecondaryTitleDetached])
                          {
                            descriptions = [(SFDetailedRowCardSection *)self descriptions];
                            descriptions2 = [(SFDetailedRowCardSection *)v5 descriptions];
                            if ((descriptions != 0) == (descriptions2 == 0))
                            {
                              v211 = 0;
                              v228 = 0;
                              v201 = 0;
                              v208 = 0;
                              v227 = 0;
                              v198 = 0;
                              v204 = 0;
                              v226 = 0;
                              v196 = 0;
                              v202 = 0;
                              v225 = 0;
                              v195 = 0;
                              v200 = 0;
                              v224 = 0;
                              v193 = 0;
                              v199 = 0;
                              v223 = 0;
                              v194 = 0;
                              v197 = 0;
                              v222 = 0;
                              v203 = 0;
                              v209 = 0;
                              v221 = 0;
                              v205 = 0;
                              v210 = 0;
                              v220 = 0;
                              v213 = 0;
                              v216 = 0;
                              v13 = 0;
                              v14 = 0;
                              v15 = 0;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v19 = 0;
                              v219 = 1;
                              v218 = 1;
                              *&v217[24] = 0;
                              v10 = 1;
                              *&v217[16] = 0x100000001;
                              *&v217[8] = 0x100000001;
                              v11 = 1;
                              *v217 = 0x100000001;
                              v215 = 1;
                              v12 = 1;
                              v212 = 1;
                              v214 = 1;
                              v207 = 0x100000001;
                              v206 = 1;
                            }

                            else
                            {
                              descriptions3 = [(SFDetailedRowCardSection *)self descriptions];
                              v228 = descriptions3 != 0;
                              v146 = descriptions3;
                              if (!descriptions3 || (-[SFDetailedRowCardSection descriptions](self, "descriptions"), v58 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection descriptions](v5, "descriptions"), v142 = objc_claimAutoreleasedReturnValue(), v143 = v58, [v58 isEqual:?]))
                              {
                                footnote = [(SFDetailedRowCardSection *)self footnote];
                                footnote2 = [(SFDetailedRowCardSection *)v5 footnote];
                                if ((footnote != 0) == (footnote2 == 0))
                                {
                                  v208 = 0;
                                  v227 = 0;
                                  v198 = 0;
                                  v204 = 0;
                                  v226 = 0;
                                  v196 = 0;
                                  v202 = 0;
                                  v225 = 0;
                                  v195 = 0;
                                  v200 = 0;
                                  v224 = 0;
                                  v193 = 0;
                                  v199 = 0;
                                  v223 = 0;
                                  v194 = 0;
                                  v197 = 0;
                                  v222 = 0;
                                  v203 = 0;
                                  v209 = 0;
                                  v221 = 0;
                                  v205 = 0;
                                  v210 = 0;
                                  v220 = 0;
                                  v213 = 0;
                                  v216 = 0;
                                  v13 = 0;
                                  v14 = 0;
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v19 = 0;
                                  v219 = 1;
                                  v218 = 1;
                                  *&v217[24] = 0;
                                  v10 = 1;
                                  *&v217[16] = 0x100000001;
                                  *&v217[8] = 0x100000001;
                                  v11 = 1;
                                  *v217 = 0x100000001;
                                  v215 = 1;
                                  v12 = 1;
                                  v212 = 1;
                                  v214 = 1;
                                  v207 = 0x100000001;
                                  v206 = 1;
                                  v211 = 1;
                                  v201 = 1;
                                }

                                else
                                {
                                  footnote3 = [(SFDetailedRowCardSection *)self footnote];
                                  v227 = footnote3 != 0;
                                  v141 = footnote3;
                                  if (!footnote3 || (-[SFDetailedRowCardSection footnote](self, "footnote"), v60 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection footnote](v5, "footnote"), v137 = objc_claimAutoreleasedReturnValue(), v138 = v60, [v60 isEqual:?]))
                                  {
                                    trailingTopText = [(SFDetailedRowCardSection *)self trailingTopText];
                                    trailingTopText2 = [(SFDetailedRowCardSection *)v5 trailingTopText];
                                    if ((trailingTopText != 0) == (trailingTopText2 == 0))
                                    {
                                      v204 = 0;
                                      v226 = 0;
                                      v196 = 0;
                                      v202 = 0;
                                      v225 = 0;
                                      v195 = 0;
                                      v200 = 0;
                                      v224 = 0;
                                      v193 = 0;
                                      v199 = 0;
                                      v223 = 0;
                                      v194 = 0;
                                      v197 = 0;
                                      v222 = 0;
                                      v203 = 0;
                                      v209 = 0;
                                      v221 = 0;
                                      v205 = 0;
                                      v210 = 0;
                                      v220 = 0;
                                      v213 = 0;
                                      v216 = 0;
                                      v13 = 0;
                                      v14 = 0;
                                      v15 = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v19 = 0;
                                      v219 = 1;
                                      v218 = 1;
                                      *&v217[24] = 0;
                                      v10 = 1;
                                      *&v217[16] = 0x100000001;
                                      *&v217[8] = 0x100000001;
                                      v11 = 1;
                                      *v217 = 0x100000001;
                                      v215 = 1;
                                      v12 = 1;
                                      v212 = 1;
                                      v214 = 1;
                                      v207 = 0x100000001;
                                      v206 = 1;
                                      v211 = 1;
                                      v201 = 1;
                                      v208 = 1;
                                      v198 = 1;
                                    }

                                    else
                                    {
                                      trailingTopText3 = [(SFDetailedRowCardSection *)self trailingTopText];
                                      v226 = trailingTopText3 != 0;
                                      v134 = trailingTopText3;
                                      if (!trailingTopText3 || (-[SFDetailedRowCardSection trailingTopText](self, "trailingTopText"), v62 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection trailingTopText](v5, "trailingTopText"), v135 = objc_claimAutoreleasedReturnValue(), v136 = v62, [v62 isEqual:?]))
                                      {
                                        trailingMiddleText = [(SFDetailedRowCardSection *)self trailingMiddleText];
                                        trailingMiddleText2 = [(SFDetailedRowCardSection *)v5 trailingMiddleText];
                                        if ((trailingMiddleText != 0) == (trailingMiddleText2 == 0))
                                        {
                                          v202 = 0;
                                          v225 = 0;
                                          v195 = 0;
                                          v200 = 0;
                                          v224 = 0;
                                          v193 = 0;
                                          v199 = 0;
                                          v223 = 0;
                                          v194 = 0;
                                          v197 = 0;
                                          v222 = 0;
                                          v203 = 0;
                                          v209 = 0;
                                          v221 = 0;
                                          v205 = 0;
                                          v210 = 0;
                                          v220 = 0;
                                          v213 = 0;
                                          v216 = 0;
                                          v13 = 0;
                                          v14 = 0;
                                          v15 = 0;
                                          v16 = 0;
                                          v17 = 0;
                                          v18 = 0;
                                          v19 = 0;
                                          v219 = 1;
                                          v218 = 1;
                                          *&v217[24] = 0;
                                          v10 = 1;
                                          *&v217[16] = 0x100000001;
                                          *&v217[8] = 0x100000001;
                                          v11 = 1;
                                          *v217 = 0x100000001;
                                          v215 = 1;
                                          v12 = 1;
                                          v212 = 1;
                                          v214 = 1;
                                          v207 = 0x100000001;
                                          v206 = 1;
                                          v211 = 1;
                                          v201 = 1;
                                          v208 = 1;
                                          v198 = 1;
                                          v204 = 1;
                                          v196 = 1;
                                        }

                                        else
                                        {
                                          trailingMiddleText3 = [(SFDetailedRowCardSection *)self trailingMiddleText];
                                          v225 = trailingMiddleText3 != 0;
                                          v127 = trailingMiddleText3;
                                          if (!trailingMiddleText3 || (-[SFDetailedRowCardSection trailingMiddleText](self, "trailingMiddleText"), v64 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection trailingMiddleText](v5, "trailingMiddleText"), v130 = objc_claimAutoreleasedReturnValue(), v131 = v64, [v64 isEqual:?]))
                                          {
                                            trailingBottomText = [(SFDetailedRowCardSection *)self trailingBottomText];
                                            trailingBottomText2 = [(SFDetailedRowCardSection *)v5 trailingBottomText];
                                            if ((trailingBottomText != 0) == (trailingBottomText2 == 0))
                                            {
                                              v200 = 0;
                                              v224 = 0;
                                              v193 = 0;
                                              v199 = 0;
                                              v223 = 0;
                                              v194 = 0;
                                              v197 = 0;
                                              v222 = 0;
                                              v203 = 0;
                                              v209 = 0;
                                              v221 = 0;
                                              v205 = 0;
                                              v210 = 0;
                                              v220 = 0;
                                              v213 = 0;
                                              v216 = 0;
                                              v13 = 0;
                                              v14 = 0;
                                              v15 = 0;
                                              v16 = 0;
                                              v17 = 0;
                                              v18 = 0;
                                              v19 = 0;
                                              v219 = 1;
                                              v218 = 1;
                                              *&v217[24] = 0;
                                              v10 = 1;
                                              *&v217[16] = 0x100000001;
                                              *&v217[8] = 0x100000001;
                                              v11 = 1;
                                              *v217 = 0x100000001;
                                              v215 = 1;
                                              v12 = 1;
                                              v212 = 1;
                                              v214 = 1;
                                              v207 = 0x100000001;
                                              v206 = 1;
                                              v211 = 1;
                                              v201 = 1;
                                              v208 = 1;
                                              v198 = 1;
                                              v204 = 1;
                                              v196 = 1;
                                              v202 = 1;
                                              v195 = 1;
                                            }

                                            else
                                            {
                                              trailingBottomText3 = [(SFDetailedRowCardSection *)self trailingBottomText];
                                              v224 = trailingBottomText3 != 0;
                                              v122 = trailingBottomText3;
                                              if (!trailingBottomText3 || (-[SFDetailedRowCardSection trailingBottomText](self, "trailingBottomText"), v66 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection trailingBottomText](v5, "trailingBottomText"), v128 = objc_claimAutoreleasedReturnValue(), v129 = v66, [v66 isEqual:?]))
                                              {
                                                action = [(SFDetailedRowCardSection *)self action];
                                                action2 = [(SFDetailedRowCardSection *)v5 action];
                                                if ((action != 0) == (action2 == 0))
                                                {
                                                  v199 = 0;
                                                  v223 = 0;
                                                  v194 = 0;
                                                  v197 = 0;
                                                  v222 = 0;
                                                  v203 = 0;
                                                  v209 = 0;
                                                  v221 = 0;
                                                  v205 = 0;
                                                  v210 = 0;
                                                  v220 = 0;
                                                  v213 = 0;
                                                  v216 = 0;
                                                  v13 = 0;
                                                  v14 = 0;
                                                  v15 = 0;
                                                  v16 = 0;
                                                  v17 = 0;
                                                  v18 = 0;
                                                  v19 = 0;
                                                  v219 = 1;
                                                  v218 = 1;
                                                  *&v217[24] = 0;
                                                  v10 = 1;
                                                  *&v217[16] = 0x100000001;
                                                  *&v217[8] = 0x100000001;
                                                  v11 = 1;
                                                  *v217 = 0x100000001;
                                                  v215 = 1;
                                                  v12 = 1;
                                                  v212 = 1;
                                                  v214 = 1;
                                                  v207 = 0x100000001;
                                                  v206 = 1;
                                                  v211 = 1;
                                                  v201 = 1;
                                                  v208 = 1;
                                                  v198 = 1;
                                                  v204 = 1;
                                                  v196 = 1;
                                                  v202 = 1;
                                                  v195 = 1;
                                                  v200 = 1;
                                                  v193 = 1;
                                                }

                                                else
                                                {
                                                  action3 = [(SFDetailedRowCardSection *)self action];
                                                  v223 = action3 != 0;
                                                  v117 = action3;
                                                  if (!action3 || (-[SFDetailedRowCardSection action](self, "action"), v68 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection action](v5, "action"), v124 = objc_claimAutoreleasedReturnValue(), v125 = v68, [v68 isEqual:?]))
                                                  {
                                                    button = [(SFDetailedRowCardSection *)self button];
                                                    button2 = [(SFDetailedRowCardSection *)v5 button];
                                                    if ((button != 0) == (button2 == 0))
                                                    {
                                                      v197 = 0;
                                                      v222 = 0;
                                                      v203 = 0;
                                                      v209 = 0;
                                                      v221 = 0;
                                                      v205 = 0;
                                                      v210 = 0;
                                                      v220 = 0;
                                                      v213 = 0;
                                                      v216 = 0;
                                                      v13 = 0;
                                                      v14 = 0;
                                                      v15 = 0;
                                                      v16 = 0;
                                                      v17 = 0;
                                                      v18 = 0;
                                                      v19 = 0;
                                                      v219 = 1;
                                                      v218 = 1;
                                                      *&v217[24] = 0;
                                                      v10 = 1;
                                                      *&v217[16] = 0x100000001;
                                                      *&v217[8] = 0x100000001;
                                                      v11 = 1;
                                                      *v217 = 0x100000001;
                                                      v215 = 1;
                                                      v12 = 1;
                                                      v212 = 1;
                                                      v214 = 1;
                                                      v207 = 0x100000001;
                                                      v206 = 1;
                                                      v211 = 1;
                                                      v201 = 1;
                                                      v208 = 1;
                                                      v198 = 1;
                                                      v204 = 1;
                                                      v196 = 1;
                                                      v202 = 1;
                                                      v195 = 1;
                                                      v200 = 1;
                                                      v193 = 1;
                                                      v199 = 1;
                                                      v194 = 1;
                                                    }

                                                    else
                                                    {
                                                      button3 = [(SFDetailedRowCardSection *)self button];
                                                      v222 = button3 != 0;
                                                      v112 = button3;
                                                      if (!button3 || (-[SFDetailedRowCardSection button](self, "button"), v70 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection button](v5, "button"), v119 = objc_claimAutoreleasedReturnValue(), v120 = v70, [v70 isEqual:?]))
                                                      {
                                                        shouldUseCompactDisplay = [(SFDetailedRowCardSection *)self shouldUseCompactDisplay];
                                                        if (shouldUseCompactDisplay == [(SFDetailedRowCardSection *)v5 shouldUseCompactDisplay])
                                                        {
                                                          buttonItems = [(SFDetailedRowCardSection *)self buttonItems];
                                                          buttonItems2 = [(SFDetailedRowCardSection *)v5 buttonItems];
                                                          if ((buttonItems != 0) == (buttonItems2 == 0))
                                                          {
                                                            v209 = 0;
                                                            v221 = 0;
                                                            v205 = 0;
                                                            v210 = 0;
                                                            v220 = 0;
                                                            v213 = 0;
                                                            v216 = 0;
                                                            v13 = 0;
                                                            v14 = 0;
                                                            v15 = 0;
                                                            v16 = 0;
                                                            v17 = 0;
                                                            v18 = 0;
                                                            v19 = 0;
                                                            v219 = 1;
                                                            v218 = 1;
                                                            *&v217[24] = 0;
                                                            v10 = 1;
                                                            *&v217[16] = 0x100000001;
                                                            *&v217[8] = 0x100000001;
                                                            v11 = 1;
                                                            *v217 = 0x100000001;
                                                            v215 = 1;
                                                            v12 = 1;
                                                            v212 = 1;
                                                            v214 = 1;
                                                            v207 = 0x100000001;
                                                            v206 = 1;
                                                            v211 = 1;
                                                            v201 = 1;
                                                            v208 = 1;
                                                            v198 = 1;
                                                            v204 = 1;
                                                            v196 = 1;
                                                            v202 = 1;
                                                            v195 = 1;
                                                            v200 = 1;
                                                            v193 = 1;
                                                            v199 = 1;
                                                            v194 = 1;
                                                            v197 = 1;
                                                            v203 = 1;
                                                          }

                                                          else
                                                          {
                                                            buttonItems3 = [(SFDetailedRowCardSection *)self buttonItems];
                                                            v221 = buttonItems3 != 0;
                                                            v107 = buttonItems3;
                                                            if (!buttonItems3 || (-[SFDetailedRowCardSection buttonItems](self, "buttonItems"), v73 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection buttonItems](v5, "buttonItems"), v113 = objc_claimAutoreleasedReturnValue(), v114 = v73, [v73 isEqual:?]))
                                                            {
                                                              trailingThumbnail = [(SFDetailedRowCardSection *)self trailingThumbnail];
                                                              trailingThumbnail2 = [(SFDetailedRowCardSection *)v5 trailingThumbnail];
                                                              if ((trailingThumbnail != 0) == (trailingThumbnail2 == 0))
                                                              {
                                                                v210 = 0;
                                                                v220 = 0;
                                                                v213 = 0;
                                                                v216 = 0;
                                                                v13 = 0;
                                                                v14 = 0;
                                                                v15 = 0;
                                                                v16 = 0;
                                                                v17 = 0;
                                                                v18 = 0;
                                                                v19 = 0;
                                                                v219 = 1;
                                                                v218 = 1;
                                                                *&v217[24] = 0;
                                                                v10 = 1;
                                                                *&v217[16] = 0x100000001;
                                                                *&v217[8] = 0x100000001;
                                                                v11 = 1;
                                                                *v217 = 0x100000001;
                                                                v215 = 1;
                                                                v12 = 1;
                                                                v212 = 1;
                                                                v214 = 1;
                                                                v207 = 0x100000001;
                                                                v206 = 1;
                                                                v211 = 1;
                                                                v201 = 1;
                                                                v208 = 1;
                                                                v198 = 1;
                                                                v204 = 1;
                                                                v196 = 1;
                                                                v202 = 1;
                                                                v195 = 1;
                                                                v200 = 1;
                                                                v193 = 1;
                                                                v199 = 1;
                                                                v194 = 1;
                                                                v197 = 1;
                                                                v203 = 1;
                                                                v209 = 1;
                                                                v205 = 1;
                                                              }

                                                              else
                                                              {
                                                                trailingThumbnail3 = [(SFDetailedRowCardSection *)self trailingThumbnail];
                                                                v220 = trailingThumbnail3 != 0;
                                                                v102 = trailingThumbnail3;
                                                                if (!trailingThumbnail3 || (-[SFDetailedRowCardSection trailingThumbnail](self, "trailingThumbnail"), v75 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection trailingThumbnail](v5, "trailingThumbnail"), v109 = objc_claimAutoreleasedReturnValue(), v110 = v75, [v75 isEqual:?]))
                                                                {
                                                                  buttonItemsAreTrailing = [(SFDetailedRowCardSection *)self buttonItemsAreTrailing];
                                                                  if (buttonItemsAreTrailing == [(SFDetailedRowCardSection *)v5 buttonItemsAreTrailing])
                                                                  {
                                                                    topText = [(SFDetailedRowCardSection *)self topText];
                                                                    topText2 = [(SFDetailedRowCardSection *)v5 topText];
                                                                    if ((topText != 0) == (topText2 == 0))
                                                                    {
                                                                      v216 = 0;
                                                                      v13 = 0;
                                                                      v14 = 0;
                                                                      v15 = 0;
                                                                      v16 = 0;
                                                                      v17 = 0;
                                                                      v18 = 0;
                                                                      v19 = 0;
                                                                      v219 = 1;
                                                                      v218 = 1;
                                                                      *&v217[24] = 0;
                                                                      v10 = 1;
                                                                      *&v217[16] = 0x100000001;
                                                                      *&v217[8] = 0x100000001;
                                                                      v11 = 1;
                                                                      *v217 = 0x100000001;
                                                                      v215 = 1;
                                                                      v12 = 1;
                                                                      v212 = 1;
                                                                      v214 = 1;
                                                                      v207 = 0x100000001;
                                                                      v206 = 1;
                                                                      v211 = 1;
                                                                      v201 = 1;
                                                                      v208 = 1;
                                                                      v198 = 1;
                                                                      v204 = 1;
                                                                      v196 = 1;
                                                                      v202 = 1;
                                                                      v195 = 1;
                                                                      v200 = 1;
                                                                      v193 = 1;
                                                                      v199 = 1;
                                                                      v194 = 1;
                                                                      v197 = 1;
                                                                      v203 = 1;
                                                                      v209 = 1;
                                                                      v205 = 1;
                                                                      v210 = 1;
                                                                      v213 = 1;
                                                                    }

                                                                    else
                                                                    {
                                                                      topText3 = [(SFDetailedRowCardSection *)self topText];
                                                                      HIDWORD(v219) = topText3 != 0;
                                                                      v97 = topText3;
                                                                      if (!topText3 || (-[SFDetailedRowCardSection topText](self, "topText"), v78 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection topText](v5, "topText"), v103 = objc_claimAutoreleasedReturnValue(), v104 = v78, [v78 isEqual:?]))
                                                                      {
                                                                        richTrailingTopText = [(SFDetailedRowCardSection *)self richTrailingTopText];
                                                                        richTrailingTopText2 = [(SFDetailedRowCardSection *)v5 richTrailingTopText];
                                                                        if ((richTrailingTopText != 0) == (richTrailingTopText2 == 0))
                                                                        {
                                                                          v13 = 0;
                                                                          v14 = 0;
                                                                          v15 = 0;
                                                                          v16 = 0;
                                                                          v17 = 0;
                                                                          v18 = 0;
                                                                          v19 = 0;
                                                                          LODWORD(v219) = 1;
                                                                          *&v217[24] = 0;
                                                                          v218 = 1;
                                                                          *&v217[16] = 0x100000001;
                                                                          v10 = 1;
                                                                          *&v217[8] = 0x100000001;
                                                                          v11 = 1;
                                                                          *v217 = 0x100000001;
                                                                          v215 = 1;
                                                                          v12 = 1;
                                                                          v212 = 1;
                                                                          v214 = 1;
                                                                          v207 = 0x100000001;
                                                                          v206 = 1;
                                                                          v211 = 1;
                                                                          v201 = 1;
                                                                          v208 = 1;
                                                                          v198 = 1;
                                                                          v204 = 1;
                                                                          v196 = 1;
                                                                          v202 = 1;
                                                                          v195 = 1;
                                                                          v200 = 1;
                                                                          v193 = 1;
                                                                          v199 = 1;
                                                                          v194 = 1;
                                                                          v197 = 1;
                                                                          v203 = 1;
                                                                          v209 = 1;
                                                                          v205 = 1;
                                                                          v210 = 1;
                                                                          v213 = 1;
                                                                          v216 = 0x100000001;
                                                                        }

                                                                        else
                                                                        {
                                                                          richTrailingTopText3 = [(SFDetailedRowCardSection *)self richTrailingTopText];
                                                                          HIDWORD(v218) = richTrailingTopText3 != 0;
                                                                          v92 = richTrailingTopText3;
                                                                          if (!richTrailingTopText3 || (-[SFDetailedRowCardSection richTrailingTopText](self, "richTrailingTopText"), v80 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection richTrailingTopText](v5, "richTrailingTopText"), v98 = objc_claimAutoreleasedReturnValue(), v99 = v80, [v80 isEqual:?]))
                                                                          {
                                                                            richTrailingMiddleText = [(SFDetailedRowCardSection *)self richTrailingMiddleText];
                                                                            richTrailingMiddleText2 = [(SFDetailedRowCardSection *)v5 richTrailingMiddleText];
                                                                            if ((richTrailingMiddleText != 0) == (richTrailingMiddleText2 == 0))
                                                                            {
                                                                              v15 = 0;
                                                                              v16 = 0;
                                                                              v17 = 0;
                                                                              v18 = 0;
                                                                              v19 = 0;
                                                                              LODWORD(v219) = 1;
                                                                              *&v217[24] = 0;
                                                                              LODWORD(v218) = 1;
                                                                              *&v217[16] = 0x100000001;
                                                                              v10 = 1;
                                                                              *&v217[8] = 0x100000001;
                                                                              v11 = 1;
                                                                              *v217 = 0x100000001;
                                                                              v215 = 1;
                                                                              v12 = 1;
                                                                              v212 = 1;
                                                                              v214 = 1;
                                                                              v207 = 0x100000001;
                                                                              v206 = 1;
                                                                              v211 = 1;
                                                                              v201 = 1;
                                                                              v208 = 1;
                                                                              v198 = 1;
                                                                              v204 = 1;
                                                                              v196 = 1;
                                                                              v202 = 1;
                                                                              v195 = 1;
                                                                              v200 = 1;
                                                                              v193 = 1;
                                                                              v199 = 1;
                                                                              v194 = 1;
                                                                              v197 = 1;
                                                                              v203 = 1;
                                                                              v209 = 1;
                                                                              v205 = 1;
                                                                              v210 = 1;
                                                                              v213 = 1;
                                                                              v216 = 0x100000001;
                                                                              v13 = 1;
                                                                              v14 = 1;
                                                                            }

                                                                            else
                                                                            {
                                                                              richTrailingMiddleText3 = [(SFDetailedRowCardSection *)self richTrailingMiddleText];
                                                                              *&v217[24] = richTrailingMiddleText3 != 0;
                                                                              v88 = richTrailingMiddleText3;
                                                                              if (!richTrailingMiddleText3 || (-[SFDetailedRowCardSection richTrailingMiddleText](self, "richTrailingMiddleText"), v82 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection richTrailingMiddleText](v5, "richTrailingMiddleText"), v93 = objc_claimAutoreleasedReturnValue(), v94 = v82, [v82 isEqual:?]))
                                                                              {
                                                                                richTrailingBottomText = [(SFDetailedRowCardSection *)self richTrailingBottomText];
                                                                                richTrailingBottomText2 = [(SFDetailedRowCardSection *)v5 richTrailingBottomText];
                                                                                if ((richTrailingBottomText != 0) == (richTrailingBottomText2 == 0))
                                                                                {
                                                                                  v17 = 0;
                                                                                  v18 = 0;
                                                                                  v19 = 0;
                                                                                  LODWORD(v219) = 1;
                                                                                  LODWORD(v218) = 1;
                                                                                  *&v217[16] = 0x100000001;
                                                                                  v10 = 1;
                                                                                  *&v217[8] = 0x100000001;
                                                                                  v11 = 1;
                                                                                  *v217 = 0x100000001;
                                                                                  v215 = 1;
                                                                                  v12 = 1;
                                                                                  v212 = 1;
                                                                                  v214 = 1;
                                                                                  v207 = 0x100000001;
                                                                                  v206 = 1;
                                                                                  v211 = 1;
                                                                                  v201 = 1;
                                                                                  v208 = 1;
                                                                                  v198 = 1;
                                                                                  v204 = 1;
                                                                                  v196 = 1;
                                                                                  v202 = 1;
                                                                                  v195 = 1;
                                                                                  v200 = 1;
                                                                                  v193 = 1;
                                                                                  v199 = 1;
                                                                                  v194 = 1;
                                                                                  v197 = 1;
                                                                                  v203 = 1;
                                                                                  v209 = 1;
                                                                                  v205 = 1;
                                                                                  v210 = 1;
                                                                                  v213 = 1;
                                                                                  v216 = 0x100000001;
                                                                                  v13 = 1;
                                                                                  v14 = 1;
                                                                                  v15 = 1;
                                                                                  v16 = 1;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v89 = [(SFDetailedRowCardSection *)self richTrailingBottomText:richTrailingBottomText2];
                                                                                  if (v89)
                                                                                  {
                                                                                    richTrailingBottomText3 = [(SFDetailedRowCardSection *)self richTrailingBottomText];
                                                                                    richTrailingBottomText4 = [(SFDetailedRowCardSection *)v5 richTrailingBottomText];
                                                                                    v87 = richTrailingBottomText3;
                                                                                    v19 = [richTrailingBottomText3 isEqual:richTrailingBottomText4];
                                                                                    v6 = richTrailingBottomText4;
                                                                                    v18 = 1;
                                                                                    LODWORD(v219) = 1;
                                                                                    LODWORD(v218) = 1;
                                                                                    *&v217[16] = 0x100000001;
                                                                                    v10 = 1;
                                                                                    *&v217[8] = 0x100000001;
                                                                                    v11 = 1;
                                                                                    *v217 = 0x100000001;
                                                                                    v215 = 1;
                                                                                    v12 = 1;
                                                                                    v212 = 1;
                                                                                    v214 = 1;
                                                                                    v207 = 0x100000001;
                                                                                    v206 = 1;
                                                                                    v211 = 1;
                                                                                    v201 = 1;
                                                                                    v208 = 1;
                                                                                    v198 = 1;
                                                                                    v204 = 1;
                                                                                    v196 = 1;
                                                                                    v202 = 1;
                                                                                    v195 = 1;
                                                                                    v200 = 1;
                                                                                    v193 = 1;
                                                                                    v199 = 1;
                                                                                    v194 = 1;
                                                                                    v197 = 1;
                                                                                    v203 = 1;
                                                                                    v209 = 1;
                                                                                    v205 = 1;
                                                                                    v210 = 1;
                                                                                    v213 = 1;
                                                                                    v216 = 0x100000001;
                                                                                    v13 = 1;
                                                                                    v14 = 1;
                                                                                    v15 = 1;
                                                                                    v16 = 1;
                                                                                    v17 = 1;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v89 = 0;
                                                                                    v18 = 0;
                                                                                    LODWORD(v219) = 1;
                                                                                    LODWORD(v218) = 1;
                                                                                    *&v217[16] = 0x100000001;
                                                                                    v10 = 1;
                                                                                    *&v217[8] = 0x100000001;
                                                                                    v11 = 1;
                                                                                    *v217 = 0x100000001;
                                                                                    v215 = 1;
                                                                                    v12 = 1;
                                                                                    v212 = 1;
                                                                                    v214 = 1;
                                                                                    v207 = 0x100000001;
                                                                                    v206 = 1;
                                                                                    v211 = 1;
                                                                                    v201 = 1;
                                                                                    v208 = 1;
                                                                                    v198 = 1;
                                                                                    v204 = 1;
                                                                                    v196 = 1;
                                                                                    v202 = 1;
                                                                                    v195 = 1;
                                                                                    v200 = 1;
                                                                                    v193 = 1;
                                                                                    v199 = 1;
                                                                                    v194 = 1;
                                                                                    v197 = 1;
                                                                                    v203 = 1;
                                                                                    v209 = 1;
                                                                                    v205 = 1;
                                                                                    v210 = 1;
                                                                                    v213 = 1;
                                                                                    v216 = 0x100000001;
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
                                                                                LODWORD(v219) = 1;
                                                                                LODWORD(v218) = 1;
                                                                                *&v217[16] = 0x100000001;
                                                                                v10 = 1;
                                                                                *&v217[8] = 0x100000001;
                                                                                v11 = 1;
                                                                                *v217 = 0x100000001;
                                                                                v215 = 1;
                                                                                v12 = 1;
                                                                                v212 = 1;
                                                                                v214 = 1;
                                                                                v207 = 0x100000001;
                                                                                v206 = 1;
                                                                                v211 = 1;
                                                                                v201 = 1;
                                                                                v208 = 1;
                                                                                v198 = 1;
                                                                                v204 = 1;
                                                                                v196 = 1;
                                                                                v202 = 1;
                                                                                v195 = 1;
                                                                                v200 = 1;
                                                                                v193 = 1;
                                                                                v199 = 1;
                                                                                v194 = 1;
                                                                                v197 = 1;
                                                                                v203 = 1;
                                                                                v209 = 1;
                                                                                v205 = 1;
                                                                                v210 = 1;
                                                                                v213 = 1;
                                                                                v216 = 0x100000001;
                                                                                v13 = 1;
                                                                                v14 = 1;
                                                                                v15 = 1;
                                                                                *&v217[24] = 1;
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
                                                                            LODWORD(v219) = 1;
                                                                            *&v217[24] = 0;
                                                                            v218 = 0x100000001;
                                                                            *&v217[16] = 0x100000001;
                                                                            v10 = 1;
                                                                            *&v217[8] = 0x100000001;
                                                                            v11 = 1;
                                                                            *v217 = 0x100000001;
                                                                            v215 = 1;
                                                                            v12 = 1;
                                                                            v212 = 1;
                                                                            v214 = 1;
                                                                            v207 = 0x100000001;
                                                                            v206 = 1;
                                                                            v211 = 1;
                                                                            v201 = 1;
                                                                            v208 = 1;
                                                                            v198 = 1;
                                                                            v204 = 1;
                                                                            v196 = 1;
                                                                            v202 = 1;
                                                                            v195 = 1;
                                                                            v200 = 1;
                                                                            v193 = 1;
                                                                            v199 = 1;
                                                                            v194 = 1;
                                                                            v197 = 1;
                                                                            v203 = 1;
                                                                            v209 = 1;
                                                                            v205 = 1;
                                                                            v210 = 1;
                                                                            v213 = 1;
                                                                            v216 = 0x100000001;
                                                                            v13 = 1;
                                                                          }
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v216 = 0x100000000;
                                                                        v13 = 0;
                                                                        v14 = 0;
                                                                        v15 = 0;
                                                                        v16 = 0;
                                                                        v17 = 0;
                                                                        v18 = 0;
                                                                        v19 = 0;
                                                                        v219 = 0x100000001;
                                                                        *&v217[24] = 0;
                                                                        v218 = 1;
                                                                        *&v217[16] = 0x100000001;
                                                                        v10 = 1;
                                                                        *&v217[8] = 0x100000001;
                                                                        v11 = 1;
                                                                        *v217 = 0x100000001;
                                                                        v215 = 1;
                                                                        v12 = 1;
                                                                        v212 = 1;
                                                                        v214 = 1;
                                                                        v207 = 0x100000001;
                                                                        v206 = 1;
                                                                        v211 = 1;
                                                                        v201 = 1;
                                                                        v208 = 1;
                                                                        v198 = 1;
                                                                        v204 = 1;
                                                                        v196 = 1;
                                                                        v202 = 1;
                                                                        v195 = 1;
                                                                        v200 = 1;
                                                                        v193 = 1;
                                                                        v199 = 1;
                                                                        v194 = 1;
                                                                        v197 = 1;
                                                                        v203 = 1;
                                                                        v209 = 1;
                                                                        v205 = 1;
                                                                        v210 = 1;
                                                                        v213 = 1;
                                                                      }
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v213 = 0;
                                                                    v216 = 0;
                                                                    v13 = 0;
                                                                    v14 = 0;
                                                                    v15 = 0;
                                                                    v16 = 0;
                                                                    v17 = 0;
                                                                    v18 = 0;
                                                                    v19 = 0;
                                                                    v219 = 1;
                                                                    v218 = 1;
                                                                    *&v217[24] = 0;
                                                                    v10 = 1;
                                                                    *&v217[16] = 0x100000001;
                                                                    *&v217[8] = 0x100000001;
                                                                    v11 = 1;
                                                                    *v217 = 0x100000001;
                                                                    v215 = 1;
                                                                    v12 = 1;
                                                                    v212 = 1;
                                                                    v214 = 1;
                                                                    v207 = 0x100000001;
                                                                    v206 = 1;
                                                                    v211 = 1;
                                                                    v201 = 1;
                                                                    v208 = 1;
                                                                    v198 = 1;
                                                                    v204 = 1;
                                                                    v196 = 1;
                                                                    v202 = 1;
                                                                    v195 = 1;
                                                                    v200 = 1;
                                                                    v193 = 1;
                                                                    v199 = 1;
                                                                    v194 = 1;
                                                                    v197 = 1;
                                                                    v203 = 1;
                                                                    v209 = 1;
                                                                    v205 = 1;
                                                                    v210 = 1;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v213 = 0;
                                                                  v216 = 0;
                                                                  v13 = 0;
                                                                  v14 = 0;
                                                                  v15 = 0;
                                                                  v16 = 0;
                                                                  v17 = 0;
                                                                  v18 = 0;
                                                                  v19 = 0;
                                                                  v219 = 1;
                                                                  v218 = 1;
                                                                  *&v217[24] = 0;
                                                                  v10 = 1;
                                                                  *&v217[16] = 0x100000001;
                                                                  *&v217[8] = 0x100000001;
                                                                  v11 = 1;
                                                                  *v217 = 0x100000001;
                                                                  v215 = 1;
                                                                  v12 = 1;
                                                                  v212 = 1;
                                                                  v214 = 1;
                                                                  v207 = 0x100000001;
                                                                  v206 = 1;
                                                                  v211 = 1;
                                                                  v201 = 1;
                                                                  v208 = 1;
                                                                  v198 = 1;
                                                                  v204 = 1;
                                                                  v196 = 1;
                                                                  v202 = 1;
                                                                  v195 = 1;
                                                                  v200 = 1;
                                                                  v193 = 1;
                                                                  v199 = 1;
                                                                  v194 = 1;
                                                                  v197 = 1;
                                                                  v203 = 1;
                                                                  v209 = 1;
                                                                  v205 = 1;
                                                                  v210 = 1;
                                                                  v220 = 1;
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v205 = 0;
                                                              v210 = 0;
                                                              v220 = 0;
                                                              v213 = 0;
                                                              v216 = 0;
                                                              v13 = 0;
                                                              v14 = 0;
                                                              v15 = 0;
                                                              v16 = 0;
                                                              v17 = 0;
                                                              v18 = 0;
                                                              v19 = 0;
                                                              v219 = 1;
                                                              v218 = 1;
                                                              *&v217[24] = 0;
                                                              v10 = 1;
                                                              *&v217[16] = 0x100000001;
                                                              *&v217[8] = 0x100000001;
                                                              v11 = 1;
                                                              *v217 = 0x100000001;
                                                              v215 = 1;
                                                              v12 = 1;
                                                              v212 = 1;
                                                              v214 = 1;
                                                              v207 = 0x100000001;
                                                              v206 = 1;
                                                              v211 = 1;
                                                              v201 = 1;
                                                              v208 = 1;
                                                              v198 = 1;
                                                              v204 = 1;
                                                              v196 = 1;
                                                              v202 = 1;
                                                              v195 = 1;
                                                              v200 = 1;
                                                              v193 = 1;
                                                              v199 = 1;
                                                              v194 = 1;
                                                              v197 = 1;
                                                              v203 = 1;
                                                              v209 = 1;
                                                              v221 = 1;
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v203 = 0;
                                                          v209 = 0;
                                                          v221 = 0;
                                                          v205 = 0;
                                                          v210 = 0;
                                                          v220 = 0;
                                                          v213 = 0;
                                                          v216 = 0;
                                                          v13 = 0;
                                                          v14 = 0;
                                                          v15 = 0;
                                                          v16 = 0;
                                                          v17 = 0;
                                                          v18 = 0;
                                                          v19 = 0;
                                                          v219 = 1;
                                                          v218 = 1;
                                                          *&v217[24] = 0;
                                                          v10 = 1;
                                                          *&v217[16] = 0x100000001;
                                                          *&v217[8] = 0x100000001;
                                                          v11 = 1;
                                                          *v217 = 0x100000001;
                                                          v215 = 1;
                                                          v12 = 1;
                                                          v212 = 1;
                                                          v214 = 1;
                                                          v207 = 0x100000001;
                                                          v206 = 1;
                                                          v211 = 1;
                                                          v201 = 1;
                                                          v208 = 1;
                                                          v198 = 1;
                                                          v204 = 1;
                                                          v196 = 1;
                                                          v202 = 1;
                                                          v195 = 1;
                                                          v200 = 1;
                                                          v193 = 1;
                                                          v199 = 1;
                                                          v194 = 1;
                                                          v197 = 1;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v203 = 0;
                                                        v209 = 0;
                                                        v221 = 0;
                                                        v205 = 0;
                                                        v210 = 0;
                                                        v220 = 0;
                                                        v213 = 0;
                                                        v216 = 0;
                                                        v13 = 0;
                                                        v14 = 0;
                                                        v15 = 0;
                                                        v16 = 0;
                                                        v17 = 0;
                                                        v18 = 0;
                                                        v19 = 0;
                                                        v219 = 1;
                                                        v218 = 1;
                                                        *&v217[24] = 0;
                                                        v10 = 1;
                                                        *&v217[16] = 0x100000001;
                                                        *&v217[8] = 0x100000001;
                                                        v11 = 1;
                                                        *v217 = 0x100000001;
                                                        v215 = 1;
                                                        v12 = 1;
                                                        v212 = 1;
                                                        v214 = 1;
                                                        v207 = 0x100000001;
                                                        v206 = 1;
                                                        v211 = 1;
                                                        v201 = 1;
                                                        v208 = 1;
                                                        v198 = 1;
                                                        v204 = 1;
                                                        v196 = 1;
                                                        v202 = 1;
                                                        v195 = 1;
                                                        v200 = 1;
                                                        v193 = 1;
                                                        v199 = 1;
                                                        v194 = 1;
                                                        v197 = 1;
                                                        v222 = 1;
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v194 = 0;
                                                    v197 = 0;
                                                    v222 = 0;
                                                    v203 = 0;
                                                    v209 = 0;
                                                    v221 = 0;
                                                    v205 = 0;
                                                    v210 = 0;
                                                    v220 = 0;
                                                    v213 = 0;
                                                    v216 = 0;
                                                    v13 = 0;
                                                    v14 = 0;
                                                    v15 = 0;
                                                    v16 = 0;
                                                    v17 = 0;
                                                    v18 = 0;
                                                    v19 = 0;
                                                    v219 = 1;
                                                    v218 = 1;
                                                    *&v217[24] = 0;
                                                    v10 = 1;
                                                    *&v217[16] = 0x100000001;
                                                    *&v217[8] = 0x100000001;
                                                    v11 = 1;
                                                    *v217 = 0x100000001;
                                                    v215 = 1;
                                                    v12 = 1;
                                                    v212 = 1;
                                                    v214 = 1;
                                                    v207 = 0x100000001;
                                                    v206 = 1;
                                                    v211 = 1;
                                                    v201 = 1;
                                                    v208 = 1;
                                                    v198 = 1;
                                                    v204 = 1;
                                                    v196 = 1;
                                                    v202 = 1;
                                                    v195 = 1;
                                                    v200 = 1;
                                                    v193 = 1;
                                                    v199 = 1;
                                                    v223 = 1;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v193 = 0;
                                                v199 = 0;
                                                v223 = 0;
                                                v194 = 0;
                                                v197 = 0;
                                                v222 = 0;
                                                v203 = 0;
                                                v209 = 0;
                                                v221 = 0;
                                                v205 = 0;
                                                v210 = 0;
                                                v220 = 0;
                                                v213 = 0;
                                                v216 = 0;
                                                v13 = 0;
                                                v14 = 0;
                                                v15 = 0;
                                                v16 = 0;
                                                v17 = 0;
                                                v18 = 0;
                                                v19 = 0;
                                                v219 = 1;
                                                v218 = 1;
                                                *&v217[24] = 0;
                                                v10 = 1;
                                                *&v217[16] = 0x100000001;
                                                *&v217[8] = 0x100000001;
                                                v11 = 1;
                                                *v217 = 0x100000001;
                                                v215 = 1;
                                                v12 = 1;
                                                v212 = 1;
                                                v214 = 1;
                                                v207 = 0x100000001;
                                                v206 = 1;
                                                v211 = 1;
                                                v201 = 1;
                                                v208 = 1;
                                                v198 = 1;
                                                v204 = 1;
                                                v196 = 1;
                                                v202 = 1;
                                                v195 = 1;
                                                v200 = 1;
                                                v224 = 1;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            v195 = 0;
                                            v200 = 0;
                                            v224 = 0;
                                            v193 = 0;
                                            v199 = 0;
                                            v223 = 0;
                                            v194 = 0;
                                            v197 = 0;
                                            v222 = 0;
                                            v203 = 0;
                                            v209 = 0;
                                            v221 = 0;
                                            v205 = 0;
                                            v210 = 0;
                                            v220 = 0;
                                            v213 = 0;
                                            v216 = 0;
                                            v13 = 0;
                                            v14 = 0;
                                            v15 = 0;
                                            v16 = 0;
                                            v17 = 0;
                                            v18 = 0;
                                            v19 = 0;
                                            v219 = 1;
                                            v218 = 1;
                                            *&v217[24] = 0;
                                            v10 = 1;
                                            *&v217[16] = 0x100000001;
                                            *&v217[8] = 0x100000001;
                                            v11 = 1;
                                            *v217 = 0x100000001;
                                            v215 = 1;
                                            v12 = 1;
                                            v212 = 1;
                                            v214 = 1;
                                            v207 = 0x100000001;
                                            v206 = 1;
                                            v211 = 1;
                                            v201 = 1;
                                            v208 = 1;
                                            v198 = 1;
                                            v204 = 1;
                                            v196 = 1;
                                            v202 = 1;
                                            v225 = 1;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v196 = 0;
                                        v202 = 0;
                                        v225 = 0;
                                        v195 = 0;
                                        v200 = 0;
                                        v224 = 0;
                                        v193 = 0;
                                        v199 = 0;
                                        v223 = 0;
                                        v194 = 0;
                                        v197 = 0;
                                        v222 = 0;
                                        v203 = 0;
                                        v209 = 0;
                                        v221 = 0;
                                        v205 = 0;
                                        v210 = 0;
                                        v220 = 0;
                                        v213 = 0;
                                        v216 = 0;
                                        v13 = 0;
                                        v14 = 0;
                                        v15 = 0;
                                        v16 = 0;
                                        v17 = 0;
                                        v18 = 0;
                                        v19 = 0;
                                        v219 = 1;
                                        v218 = 1;
                                        *&v217[24] = 0;
                                        v10 = 1;
                                        *&v217[16] = 0x100000001;
                                        *&v217[8] = 0x100000001;
                                        v11 = 1;
                                        *v217 = 0x100000001;
                                        v215 = 1;
                                        v12 = 1;
                                        v212 = 1;
                                        v214 = 1;
                                        v207 = 0x100000001;
                                        v206 = 1;
                                        v211 = 1;
                                        v201 = 1;
                                        v208 = 1;
                                        v198 = 1;
                                        v204 = 1;
                                        v226 = 1;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v198 = 0;
                                    v204 = 0;
                                    v226 = 0;
                                    v196 = 0;
                                    v202 = 0;
                                    v225 = 0;
                                    v195 = 0;
                                    v200 = 0;
                                    v224 = 0;
                                    v193 = 0;
                                    v199 = 0;
                                    v223 = 0;
                                    v194 = 0;
                                    v197 = 0;
                                    v222 = 0;
                                    v203 = 0;
                                    v209 = 0;
                                    v221 = 0;
                                    v205 = 0;
                                    v210 = 0;
                                    v220 = 0;
                                    v213 = 0;
                                    v216 = 0;
                                    v13 = 0;
                                    v14 = 0;
                                    v15 = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    v219 = 1;
                                    v218 = 1;
                                    *&v217[24] = 0;
                                    v10 = 1;
                                    *&v217[16] = 0x100000001;
                                    *&v217[8] = 0x100000001;
                                    v11 = 1;
                                    *v217 = 0x100000001;
                                    v215 = 1;
                                    v12 = 1;
                                    v212 = 1;
                                    v214 = 1;
                                    v207 = 0x100000001;
                                    v206 = 1;
                                    v211 = 1;
                                    v201 = 1;
                                    v208 = 1;
                                    v227 = 1;
                                  }
                                }
                              }

                              else
                              {
                                v201 = 0;
                                v208 = 0;
                                v227 = 0;
                                v198 = 0;
                                v204 = 0;
                                v226 = 0;
                                v196 = 0;
                                v202 = 0;
                                v225 = 0;
                                v195 = 0;
                                v200 = 0;
                                v224 = 0;
                                v193 = 0;
                                v199 = 0;
                                v223 = 0;
                                v194 = 0;
                                v197 = 0;
                                v222 = 0;
                                v203 = 0;
                                v209 = 0;
                                v221 = 0;
                                v205 = 0;
                                v210 = 0;
                                v220 = 0;
                                v213 = 0;
                                v216 = 0;
                                v13 = 0;
                                v14 = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                v219 = 1;
                                v218 = 1;
                                *&v217[24] = 0;
                                v10 = 1;
                                *&v217[16] = 0x100000001;
                                *&v217[8] = 0x100000001;
                                v11 = 1;
                                *v217 = 0x100000001;
                                v215 = 1;
                                v12 = 1;
                                v212 = 1;
                                v214 = 1;
                                v207 = 0x100000001;
                                v206 = 1;
                                v211 = 1;
                                v228 = 1;
                              }
                            }
                          }

                          else
                          {
                            v206 = 0;
                            v211 = 0;
                            v228 = 0;
                            v201 = 0;
                            v208 = 0;
                            v227 = 0;
                            v198 = 0;
                            v204 = 0;
                            v226 = 0;
                            v196 = 0;
                            v202 = 0;
                            v225 = 0;
                            v195 = 0;
                            v200 = 0;
                            v224 = 0;
                            v193 = 0;
                            v199 = 0;
                            v223 = 0;
                            v194 = 0;
                            v197 = 0;
                            v222 = 0;
                            v203 = 0;
                            v209 = 0;
                            v221 = 0;
                            v205 = 0;
                            v210 = 0;
                            v220 = 0;
                            v213 = 0;
                            v216 = 0;
                            v13 = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            v219 = 1;
                            v218 = 1;
                            *&v217[24] = 0;
                            v10 = 1;
                            *&v217[16] = 0x100000001;
                            *&v217[8] = 0x100000001;
                            v11 = 1;
                            *v217 = 0x100000001;
                            v215 = 1;
                            v12 = 1;
                            v212 = 1;
                            v214 = 1;
                            v207 = 0x100000001;
                          }
                        }

                        else
                        {
                          v206 = 0;
                          v211 = 0;
                          v228 = 0;
                          v201 = 0;
                          v208 = 0;
                          v227 = 0;
                          v198 = 0;
                          v204 = 0;
                          v226 = 0;
                          v196 = 0;
                          v202 = 0;
                          v225 = 0;
                          v195 = 0;
                          v200 = 0;
                          v224 = 0;
                          v193 = 0;
                          v199 = 0;
                          v223 = 0;
                          v194 = 0;
                          v197 = 0;
                          v222 = 0;
                          v203 = 0;
                          v209 = 0;
                          v221 = 0;
                          v205 = 0;
                          v210 = 0;
                          v220 = 0;
                          v213 = 0;
                          v216 = 0;
                          v13 = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          v219 = 1;
                          v218 = 1;
                          *&v217[24] = 0;
                          v10 = 1;
                          *&v217[16] = 0x100000001;
                          *&v217[8] = 0x100000001;
                          v11 = 1;
                          *v217 = 0x100000001;
                          v215 = 1;
                          v12 = 1;
                          v212 = 1;
                          v214 = 1;
                          v207 = 0x100000001;
                          v234 = 1;
                        }
                      }
                    }

                    else
                    {
                      v207 = 0;
                      v234 = 0;
                      v206 = 0;
                      v211 = 0;
                      v228 = 0;
                      v201 = 0;
                      v208 = 0;
                      v227 = 0;
                      v198 = 0;
                      v204 = 0;
                      v226 = 0;
                      v196 = 0;
                      v202 = 0;
                      v225 = 0;
                      v195 = 0;
                      v200 = 0;
                      v224 = 0;
                      v193 = 0;
                      v199 = 0;
                      v223 = 0;
                      v194 = 0;
                      v197 = 0;
                      v222 = 0;
                      v203 = 0;
                      v209 = 0;
                      v221 = 0;
                      v205 = 0;
                      v210 = 0;
                      v220 = 0;
                      v213 = 0;
                      v216 = 0;
                      v13 = 0;
                      v14 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      v219 = 1;
                      v218 = 1;
                      *&v217[24] = 0;
                      v10 = 1;
                      *&v217[16] = 0x100000001;
                      *&v217[8] = 0x100000001;
                      v11 = 1;
                      *v217 = 0x100000001;
                      v215 = 1;
                      v12 = 1;
                      v212 = 1;
                      v214 = 1;
                      v235 = 1;
                    }
                  }
                }

                else
                {
                  v212 = 0;
                  v214 = 0;
                  v235 = 0;
                  v207 = 0;
                  v234 = 0;
                  v206 = 0;
                  v211 = 0;
                  v228 = 0;
                  v201 = 0;
                  v208 = 0;
                  v227 = 0;
                  v198 = 0;
                  v204 = 0;
                  v226 = 0;
                  v196 = 0;
                  v202 = 0;
                  v225 = 0;
                  v195 = 0;
                  v200 = 0;
                  v224 = 0;
                  v193 = 0;
                  v199 = 0;
                  v223 = 0;
                  v194 = 0;
                  v197 = 0;
                  v222 = 0;
                  v203 = 0;
                  v209 = 0;
                  v221 = 0;
                  v205 = 0;
                  v210 = 0;
                  v220 = 0;
                  v213 = 0;
                  v216 = 0;
                  v13 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v219 = 1;
                  v218 = 1;
                  *&v217[24] = 0;
                  v10 = 1;
                  *&v217[16] = 0x100000001;
                  *&v217[8] = 0x100000001;
                  v11 = 1;
                  *v217 = 0x100000001;
                  v215 = 1;
                  v12 = 1;
                  v236 = 1;
                }
              }
            }

            else
            {
              v215 = 0;
              v12 = 0;
              v236 = 0;
              v212 = 0;
              v214 = 0;
              v235 = 0;
              v207 = 0;
              v234 = 0;
              v206 = 0;
              v211 = 0;
              v228 = 0;
              v201 = 0;
              v208 = 0;
              v227 = 0;
              v198 = 0;
              v204 = 0;
              v226 = 0;
              v196 = 0;
              v202 = 0;
              v225 = 0;
              v195 = 0;
              v200 = 0;
              v224 = 0;
              v193 = 0;
              v199 = 0;
              v223 = 0;
              v194 = 0;
              v197 = 0;
              v222 = 0;
              v203 = 0;
              v209 = 0;
              v221 = 0;
              v205 = 0;
              v210 = 0;
              v220 = 0;
              v213 = 0;
              v216 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v219 = 1;
              v218 = 1;
              *&v217[24] = 0;
              v10 = 1;
              *&v217[16] = 0x100000001;
              *&v217[8] = 0x100000001;
              v11 = 1;
              *v217 = 0x100000001;
            }
          }

          else
          {
            v215 = 0;
            v12 = 0;
            v236 = 0;
            v212 = 0;
            v214 = 0;
            v235 = 0;
            v207 = 0;
            v234 = 0;
            v206 = 0;
            v211 = 0;
            v228 = 0;
            v201 = 0;
            v208 = 0;
            v227 = 0;
            v198 = 0;
            v204 = 0;
            v226 = 0;
            v196 = 0;
            v202 = 0;
            v225 = 0;
            v195 = 0;
            v200 = 0;
            v224 = 0;
            v193 = 0;
            v199 = 0;
            v223 = 0;
            v194 = 0;
            v197 = 0;
            v222 = 0;
            v203 = 0;
            v209 = 0;
            v221 = 0;
            v205 = 0;
            v210 = 0;
            v220 = 0;
            v213 = 0;
            v216 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v219 = 1;
            v218 = 1;
            *&v217[24] = 0;
            v10 = 1;
            *&v217[16] = 0x100000001;
            *&v217[8] = 0x100000001;
            v11 = 1;
            *v217 = 0x100000001;
            LODWORD(v237) = 1;
          }
        }
      }

      else
      {
        *v217 = 0;
        v237 = 0x100000000;
        v215 = 0;
        v12 = 0;
        v236 = 0;
        v212 = 0;
        v214 = 0;
        v235 = 0;
        v207 = 0;
        v234 = 0;
        v206 = 0;
        v211 = 0;
        v228 = 0;
        v201 = 0;
        v208 = 0;
        v227 = 0;
        v198 = 0;
        v204 = 0;
        v226 = 0;
        v196 = 0;
        v202 = 0;
        v225 = 0;
        v195 = 0;
        v200 = 0;
        v224 = 0;
        v193 = 0;
        v199 = 0;
        v223 = 0;
        v194 = 0;
        v197 = 0;
        v222 = 0;
        v203 = 0;
        v209 = 0;
        v221 = 0;
        v205 = 0;
        v210 = 0;
        v220 = 0;
        v213 = 0;
        v216 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v219 = 1;
        v218 = 1;
        *&v217[24] = 0;
        v10 = 1;
        *&v217[16] = 0x100000001;
        *&v217[8] = 0x100000001;
        v11 = 1;
      }
    }
  }

  else
  {
    *&v217[4] = 0;
    v11 = 0;
    v237 = 0;
    *v217 = 0;
    v215 = 0;
    v12 = 0;
    v236 = 0;
    v212 = 0;
    v214 = 0;
    v235 = 0;
    v207 = 0;
    v234 = 0;
    v206 = 0;
    v211 = 0;
    v228 = 0;
    v201 = 0;
    v208 = 0;
    v227 = 0;
    v198 = 0;
    v204 = 0;
    v226 = 0;
    v196 = 0;
    v202 = 0;
    v225 = 0;
    v195 = 0;
    v200 = 0;
    v224 = 0;
    v193 = 0;
    v199 = 0;
    v223 = 0;
    v194 = 0;
    v197 = 0;
    v222 = 0;
    v203 = 0;
    v209 = 0;
    v221 = 0;
    v205 = 0;
    v210 = 0;
    v220 = 0;
    v213 = 0;
    v216 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v219 = 1;
    v218 = 1;
    *&v217[24] = 0;
    v10 = 1;
    *&v217[16] = 0x100000001;
    *&v217[12] = 1;
  }

LABEL_16:
  if (v18)
  {
    v191 = equalCopy;
    v23 = v19;
    v24 = v10;
    v25 = v12;
    v26 = v13;
    v27 = v14;
    v28 = v15;
    v29 = v16;
    v30 = v5;
    v31 = v11;
    v32 = v17;

    v33 = v32;
    v11 = v31;
    v5 = v30;
    v16 = v29;
    v15 = v28;
    v14 = v27;
    v13 = v26;
    v12 = v25;
    v10 = v24;
    v19 = v23;
    equalCopy = v191;
    if (!v33)
    {
      goto LABEL_18;
    }

LABEL_147:

    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v17)
  {
    goto LABEL_147;
  }

LABEL_18:
  if (v16)
  {
LABEL_19:
  }

LABEL_20:
  if (*&v217[24])
  {
  }

  if (v15)
  {
  }

  if (v14)
  {
  }

  if (HIDWORD(v218))
  {
  }

  if (v13)
  {
  }

  if (v216)
  {
  }

  if (HIDWORD(v219))
  {
  }

  if (HIDWORD(v216))
  {
  }

  if (v213)
  {
  }

  if (v220)
  {
  }

  if (v210)
  {
  }

  if (v205)
  {
  }

  if (v221)
  {
  }

  if (v209)
  {
  }

  if (v203)
  {
  }

  if (v222)
  {
  }

  if (v197)
  {
  }

  if (v194)
  {
  }

  if (v223)
  {
  }

  if (v199)
  {
  }

  if (v193)
  {
  }

  if (v224)
  {
  }

  if (v200)
  {
  }

  if (v195)
  {
  }

  if (v225)
  {
  }

  if (v202)
  {
  }

  if (v196)
  {
  }

  if (v226)
  {
  }

  if (v204)
  {
  }

  if (v198)
  {
  }

  if (v227)
  {
  }

  if (v208)
  {
  }

  if (v201)
  {
  }

  if (v228)
  {
  }

  if (v211)
  {
  }

  if (v206)
  {
  }

  if (v234)
  {
  }

  if (HIDWORD(v207))
  {
  }

  if (v207)
  {
  }

  if (v235)
  {
  }

  if (v214)
  {
  }

  if (v212)
  {
  }

  if (v236)
  {
  }

  if (v12)
  {
  }

  if (v215)
  {
  }

  if (v237)
  {
  }

  if (*v217)
  {
  }

  if (*&v217[4])
  {
  }

  if (HIDWORD(v237))
  {
  }

  if (v11)
  {
  }

  if (*&v217[8])
  {
  }

  if (v229)
  {
  }

  if (*&v217[12])
  {
  }

  if (*&v217[16])
  {
  }

  if (DWORD1(v229))
  {
  }

  if (v10)
  {
  }

  if (*&v217[20])
  {
  }

  if (DWORD2(v229))
  {
  }

  if (v218)
  {
  }

  if (v219)
  {
  }

  if (HIDWORD(v229))
  {
  }

  if (v231 != v230)
  {
  }

LABEL_145:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v50.receiver = self;
  v50.super_class = SFDetailedRowCardSection;
  v4 = [(SFCardSection *)&v50 copyWithZone:zone];
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
  type = [(SFDetailedRowCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  thumbnail = [(SFDetailedRowCardSection *)self thumbnail];
  v16 = [thumbnail copy];
  [v4 setThumbnail:v16];

  [v4 setPreventThumbnailImageScaling:{-[SFDetailedRowCardSection preventThumbnailImageScaling](self, "preventThumbnailImageScaling")}];
  title = [(SFDetailedRowCardSection *)self title];
  v18 = [title copy];
  [v4 setTitle:v18];

  secondaryTitle = [(SFDetailedRowCardSection *)self secondaryTitle];
  v20 = [secondaryTitle copy];
  [v4 setSecondaryTitle:v20];

  secondaryTitleImage = [(SFDetailedRowCardSection *)self secondaryTitleImage];
  v22 = [secondaryTitleImage copy];
  [v4 setSecondaryTitleImage:v22];

  [v4 setIsSecondaryTitleDetached:{-[SFDetailedRowCardSection isSecondaryTitleDetached](self, "isSecondaryTitleDetached")}];
  descriptions = [(SFDetailedRowCardSection *)self descriptions];
  v24 = [descriptions copy];
  [v4 setDescriptions:v24];

  footnote = [(SFDetailedRowCardSection *)self footnote];
  v26 = [footnote copy];
  [v4 setFootnote:v26];

  trailingTopText = [(SFDetailedRowCardSection *)self trailingTopText];
  v28 = [trailingTopText copy];
  [v4 setTrailingTopText:v28];

  trailingMiddleText = [(SFDetailedRowCardSection *)self trailingMiddleText];
  v30 = [trailingMiddleText copy];
  [v4 setTrailingMiddleText:v30];

  trailingBottomText = [(SFDetailedRowCardSection *)self trailingBottomText];
  v32 = [trailingBottomText copy];
  [v4 setTrailingBottomText:v32];

  action = [(SFDetailedRowCardSection *)self action];
  v34 = [action copy];
  [v4 setAction:v34];

  button = [(SFDetailedRowCardSection *)self button];
  v36 = [button copy];
  [v4 setButton:v36];

  [v4 setShouldUseCompactDisplay:{-[SFDetailedRowCardSection shouldUseCompactDisplay](self, "shouldUseCompactDisplay")}];
  buttonItems = [(SFDetailedRowCardSection *)self buttonItems];
  v38 = [buttonItems copy];
  [v4 setButtonItems:v38];

  trailingThumbnail = [(SFDetailedRowCardSection *)self trailingThumbnail];
  v40 = [trailingThumbnail copy];
  [v4 setTrailingThumbnail:v40];

  [v4 setButtonItemsAreTrailing:{-[SFDetailedRowCardSection buttonItemsAreTrailing](self, "buttonItemsAreTrailing")}];
  topText = [(SFDetailedRowCardSection *)self topText];
  v42 = [topText copy];
  [v4 setTopText:v42];

  richTrailingTopText = [(SFDetailedRowCardSection *)self richTrailingTopText];
  v44 = [richTrailingTopText copy];
  [v4 setRichTrailingTopText:v44];

  richTrailingMiddleText = [(SFDetailedRowCardSection *)self richTrailingMiddleText];
  v46 = [richTrailingMiddleText copy];
  [v4 setRichTrailingMiddleText:v46];

  richTrailingBottomText = [(SFDetailedRowCardSection *)self richTrailingBottomText];
  v48 = [richTrailingBottomText copy];
  [v4 setRichTrailingBottomText:v48];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDetailedRowCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBDetailedRowCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDetailedRowCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBDetailedRowCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFDetailedRowCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFDetailedRowCardSection)initWithCoder:(id)coder
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
    [(SFDetailedRowCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(SFDetailedRowCardSection *)v5 setThumbnail:thumbnail];

    [(SFDetailedRowCardSection *)v5 setPreventThumbnailImageScaling:[(SFCardSection *)v8 preventThumbnailImageScaling]];
    title = [(SFCardSection *)v8 title];
    [(SFDetailedRowCardSection *)v5 setTitle:title];

    secondaryTitle = [(SFCardSection *)v8 secondaryTitle];
    [(SFDetailedRowCardSection *)v5 setSecondaryTitle:secondaryTitle];

    secondaryTitleImage = [(SFCardSection *)v8 secondaryTitleImage];
    [(SFDetailedRowCardSection *)v5 setSecondaryTitleImage:secondaryTitleImage];

    [(SFDetailedRowCardSection *)v5 setIsSecondaryTitleDetached:[(SFCardSection *)v8 isSecondaryTitleDetached]];
    descriptions = [(SFCardSection *)v8 descriptions];
    [(SFDetailedRowCardSection *)v5 setDescriptions:descriptions];

    footnote = [(SFCardSection *)v8 footnote];
    [(SFDetailedRowCardSection *)v5 setFootnote:footnote];

    trailingTopText = [(SFCardSection *)v8 trailingTopText];
    [(SFDetailedRowCardSection *)v5 setTrailingTopText:trailingTopText];

    trailingMiddleText = [(SFCardSection *)v8 trailingMiddleText];
    [(SFDetailedRowCardSection *)v5 setTrailingMiddleText:trailingMiddleText];

    trailingBottomText = [(SFCardSection *)v8 trailingBottomText];
    [(SFDetailedRowCardSection *)v5 setTrailingBottomText:trailingBottomText];

    action = [(SFCardSection *)v8 action];
    [(SFDetailedRowCardSection *)v5 setAction:action];

    button = [(SFCardSection *)v8 button];
    [(SFDetailedRowCardSection *)v5 setButton:button];

    [(SFDetailedRowCardSection *)v5 setShouldUseCompactDisplay:[(SFCardSection *)v8 shouldUseCompactDisplay]];
    buttonItems = [(SFCardSection *)v8 buttonItems];
    [(SFDetailedRowCardSection *)v5 setButtonItems:buttonItems];

    trailingThumbnail = [(SFCardSection *)v8 trailingThumbnail];
    [(SFDetailedRowCardSection *)v5 setTrailingThumbnail:trailingThumbnail];

    [(SFDetailedRowCardSection *)v5 setButtonItemsAreTrailing:[(SFCardSection *)v8 buttonItemsAreTrailing]];
    topText = [(SFCardSection *)v8 topText];
    [(SFDetailedRowCardSection *)v5 setTopText:topText];

    richTrailingTopText = [(SFCardSection *)v8 richTrailingTopText];
    [(SFDetailedRowCardSection *)v5 setRichTrailingTopText:richTrailingTopText];

    richTrailingMiddleText = [(SFCardSection *)v8 richTrailingMiddleText];
    [(SFDetailedRowCardSection *)v5 setRichTrailingMiddleText:richTrailingMiddleText];

    richTrailingBottomText = [(SFCardSection *)v8 richTrailingBottomText];
    [(SFDetailedRowCardSection *)v5 setRichTrailingBottomText:richTrailingBottomText];

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

- (SFDetailedRowCardSection)initWithProtobuf:(id)protobuf
{
  v121 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v117.receiver = self;
  v117.super_class = SFDetailedRowCardSection;
  v5 = [(SFCardSection *)&v117 init];

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

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v113 objects:v120 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v114;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v114 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v113 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v113 objects:v120 count:16];
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
      [(SFDetailedRowCardSection *)v5 setType:type2];
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

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v25 = [SFImage alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v27 = [(SFImage *)v25 initWithProtobuf:thumbnail2];
      [(SFDetailedRowCardSection *)v5 setThumbnail:v27];
    }

    if ([protobufCopy preventThumbnailImageScaling])
    {
      -[SFDetailedRowCardSection setPreventThumbnailImageScaling:](v5, "setPreventThumbnailImageScaling:", [protobufCopy preventThumbnailImageScaling]);
    }

    title = [protobufCopy title];

    if (title)
    {
      v29 = [SFRichText alloc];
      title2 = [protobufCopy title];
      v31 = [(SFRichText *)v29 initWithProtobuf:title2];
      [(SFDetailedRowCardSection *)v5 setTitle:v31];
    }

    secondaryTitle = [protobufCopy secondaryTitle];

    if (secondaryTitle)
    {
      v33 = [SFFormattedText alloc];
      secondaryTitle2 = [protobufCopy secondaryTitle];
      v35 = [(SFFormattedText *)v33 initWithProtobuf:secondaryTitle2];
      [(SFDetailedRowCardSection *)v5 setSecondaryTitle:v35];
    }

    secondaryTitleImage = [protobufCopy secondaryTitleImage];

    if (secondaryTitleImage)
    {
      v37 = [SFImage alloc];
      secondaryTitleImage2 = [protobufCopy secondaryTitleImage];
      v39 = [(SFImage *)v37 initWithProtobuf:secondaryTitleImage2];
      [(SFDetailedRowCardSection *)v5 setSecondaryTitleImage:v39];
    }

    if ([protobufCopy isSecondaryTitleDetached])
    {
      -[SFDetailedRowCardSection setIsSecondaryTitleDetached:](v5, "setIsSecondaryTitleDetached:", [protobufCopy isSecondaryTitleDetached]);
    }

    descriptions = [protobufCopy descriptions];
    v104 = v5;
    if (descriptions)
    {
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v41 = 0;
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    descriptions2 = [protobufCopy descriptions];
    v43 = [descriptions2 countByEnumeratingWithState:&v109 objects:v119 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v110;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v110 != v45)
          {
            objc_enumerationMutation(descriptions2);
          }

          v47 = [[SFRichText alloc] initWithProtobuf:*(*(&v109 + 1) + 8 * j)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [descriptions2 countByEnumeratingWithState:&v109 objects:v119 count:16];
      }

      while (v44);
    }

    [(SFDetailedRowCardSection *)v104 setDescriptions:v41];
    footnote = [protobufCopy footnote];

    if (footnote)
    {
      v49 = [SFRichText alloc];
      footnote2 = [protobufCopy footnote];
      v51 = [(SFRichText *)v49 initWithProtobuf:footnote2];
      [(SFDetailedRowCardSection *)v104 setFootnote:v51];
    }

    trailingTopText = [protobufCopy trailingTopText];

    if (trailingTopText)
    {
      v53 = [SFFormattedText alloc];
      trailingTopText2 = [protobufCopy trailingTopText];
      v55 = [(SFFormattedText *)v53 initWithProtobuf:trailingTopText2];
      [(SFDetailedRowCardSection *)v104 setTrailingTopText:v55];
    }

    trailingMiddleText = [protobufCopy trailingMiddleText];

    if (trailingMiddleText)
    {
      v57 = [SFFormattedText alloc];
      trailingMiddleText2 = [protobufCopy trailingMiddleText];
      v59 = [(SFFormattedText *)v57 initWithProtobuf:trailingMiddleText2];
      [(SFDetailedRowCardSection *)v104 setTrailingMiddleText:v59];
    }

    trailingBottomText = [protobufCopy trailingBottomText];

    if (trailingBottomText)
    {
      v61 = [SFFormattedText alloc];
      trailingBottomText2 = [protobufCopy trailingBottomText];
      v63 = [(SFFormattedText *)v61 initWithProtobuf:trailingBottomText2];
      [(SFDetailedRowCardSection *)v104 setTrailingBottomText:v63];
    }

    action = [protobufCopy action];

    if (action)
    {
      v65 = [SFActionItem alloc];
      action2 = [protobufCopy action];
      v67 = [(SFActionItem *)v65 initWithProtobuf:action2];
      [(SFDetailedRowCardSection *)v104 setAction:v67];
    }

    button = [protobufCopy button];

    if (button)
    {
      v69 = [SFButton alloc];
      button2 = [protobufCopy button];
      v71 = [(SFButton *)v69 initWithProtobuf:button2];
      [(SFDetailedRowCardSection *)v104 setButton:v71];
    }

    if ([protobufCopy shouldUseCompactDisplay])
    {
      -[SFDetailedRowCardSection setShouldUseCompactDisplay:](v104, "setShouldUseCompactDisplay:", [protobufCopy shouldUseCompactDisplay]);
    }

    buttonItems = [protobufCopy buttonItems];
    if (buttonItems)
    {
      v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v73 = 0;
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = protobufCopy;
    buttonItems2 = [protobufCopy buttonItems];
    v75 = [buttonItems2 countByEnumeratingWithState:&v105 objects:v118 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v106;
      do
      {
        for (k = 0; k != v76; ++k)
        {
          if (*v106 != v77)
          {
            objc_enumerationMutation(buttonItems2);
          }

          v79 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v105 + 1) + 8 * k)];
          if (v79)
          {
            [v73 addObject:v79];
          }
        }

        v76 = [buttonItems2 countByEnumeratingWithState:&v105 objects:v118 count:16];
      }

      while (v76);
    }

    v5 = v104;
    [(SFDetailedRowCardSection *)v104 setButtonItems:v73];
    protobufCopy = v103;
    trailingThumbnail = [v103 trailingThumbnail];

    if (trailingThumbnail)
    {
      v81 = [SFImage alloc];
      trailingThumbnail2 = [v103 trailingThumbnail];
      v83 = [(SFImage *)v81 initWithProtobuf:trailingThumbnail2];
      [(SFDetailedRowCardSection *)v104 setTrailingThumbnail:v83];
    }

    if ([v103 buttonItemsAreTrailing])
    {
      -[SFDetailedRowCardSection setButtonItemsAreTrailing:](v104, "setButtonItemsAreTrailing:", [v103 buttonItemsAreTrailing]);
    }

    topText = [v103 topText];

    if (topText)
    {
      v85 = [SFRichText alloc];
      topText2 = [v103 topText];
      v87 = [(SFRichText *)v85 initWithProtobuf:topText2];
      [(SFDetailedRowCardSection *)v104 setTopText:v87];
    }

    richTrailingTopText = [v103 richTrailingTopText];

    if (richTrailingTopText)
    {
      v89 = [SFRichText alloc];
      richTrailingTopText2 = [v103 richTrailingTopText];
      v91 = [(SFRichText *)v89 initWithProtobuf:richTrailingTopText2];
      [(SFDetailedRowCardSection *)v104 setRichTrailingTopText:v91];
    }

    richTrailingMiddleText = [v103 richTrailingMiddleText];

    if (richTrailingMiddleText)
    {
      v93 = [SFRichText alloc];
      richTrailingMiddleText2 = [v103 richTrailingMiddleText];
      v95 = [(SFRichText *)v93 initWithProtobuf:richTrailingMiddleText2];
      [(SFDetailedRowCardSection *)v104 setRichTrailingMiddleText:v95];
    }

    richTrailingBottomText = [v103 richTrailingBottomText];

    if (richTrailingBottomText)
    {
      v97 = [SFRichText alloc];
      richTrailingBottomText2 = [v103 richTrailingBottomText];
      v99 = [(SFRichText *)v97 initWithProtobuf:richTrailingBottomText2];
      [(SFDetailedRowCardSection *)v104 setRichTrailingBottomText:v99];
    }

    v100 = v104;
  }

  v101 = *MEMORY[0x1E69E9840];
  return v5;
}

@end