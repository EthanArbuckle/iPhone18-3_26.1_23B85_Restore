@interface SFDetailedRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDetailedRowCardSection)initWithCoder:(id)a3;
- (SFDetailedRowCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFDetailedRowCardSection

- (unint64_t)hash
{
  v57.receiver = self;
  v57.super_class = SFDetailedRowCardSection;
  v3 = [(SFCardSection *)&v57 hash];
  v56 = [(SFCardSection *)self punchoutOptions];
  v4 = [v56 hash];
  v55 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v55 hash];
  v54 = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [v54 hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v9 = [(SFCardSection *)self hasBottomPadding];
  v53 = [(SFDetailedRowCardSection *)self type];
  v10 = v9 ^ [v53 hash];
  v11 = v10 ^ [(SFCardSection *)self separatorStyle];
  v52 = [(SFCardSection *)self backgroundColor];
  v12 = v11 ^ [v52 hash];
  v51 = [(SFDetailedRowCardSection *)self thumbnail];
  v13 = v8 ^ v12 ^ [v51 hash];
  v14 = [(SFDetailedRowCardSection *)self preventThumbnailImageScaling];
  v50 = [(SFDetailedRowCardSection *)self title];
  v15 = v14 ^ [v50 hash];
  v49 = [(SFDetailedRowCardSection *)self secondaryTitle];
  v16 = v15 ^ [v49 hash];
  v48 = [(SFDetailedRowCardSection *)self secondaryTitleImage];
  v17 = v16 ^ [v48 hash];
  v18 = v17 ^ [(SFDetailedRowCardSection *)self isSecondaryTitleDetached];
  v47 = [(SFDetailedRowCardSection *)self descriptions];
  v19 = v13 ^ v18 ^ [v47 hash];
  v46 = [(SFDetailedRowCardSection *)self footnote];
  v20 = [v46 hash];
  v45 = [(SFDetailedRowCardSection *)self trailingTopText];
  v21 = v20 ^ [v45 hash];
  v44 = [(SFDetailedRowCardSection *)self trailingMiddleText];
  v22 = v21 ^ [v44 hash];
  v23 = [(SFDetailedRowCardSection *)self trailingBottomText];
  v24 = v22 ^ [v23 hash];
  v25 = [(SFDetailedRowCardSection *)self action];
  v26 = v24 ^ [v25 hash];
  v27 = [(SFDetailedRowCardSection *)self button];
  v28 = v26 ^ [v27 hash];
  v29 = v28 ^ [(SFDetailedRowCardSection *)self shouldUseCompactDisplay];
  v30 = [(SFDetailedRowCardSection *)self buttonItems];
  v43 = v19 ^ v29 ^ [v30 hash];
  v31 = [(SFDetailedRowCardSection *)self trailingThumbnail];
  v32 = [v31 hash];
  v33 = v32 ^ [(SFDetailedRowCardSection *)self buttonItemsAreTrailing];
  v34 = [(SFDetailedRowCardSection *)self topText];
  v35 = v33 ^ [v34 hash];
  v36 = [(SFDetailedRowCardSection *)self richTrailingTopText];
  v37 = v35 ^ [v36 hash];
  v38 = [(SFDetailedRowCardSection *)self richTrailingMiddleText];
  v39 = v37 ^ [v38 hash];
  v40 = [(SFDetailedRowCardSection *)self richTrailingBottomText];
  v41 = v39 ^ [v40 hash];

  return v43 ^ v41;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_145;
  }

  if (![(SFDetailedRowCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v238.receiver = self, v238.super_class = SFDetailedRowCardSection, ![(SFCardSection *)&v238 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_145;
  }

  v5 = v4;
  v233 = [(SFCardSection *)self punchoutOptions];
  v232 = [(SFCardSection *)v5 punchoutOptions];
  v230 = v232 == 0;
  v231 = v233 != 0;
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

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v192 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v187 = v188 = v9;
    if (![v9 isEqual:?])
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

  v190 = [(SFCardSection *)self punchoutPickerTitle];
  v189 = [(SFCardSection *)v5 punchoutPickerTitle];
  HIDWORD(v229) = v8;
  if ((v190 != 0) == (v189 == 0))
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

  v20 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = v20 != 0;
  v186 = v20;
  if (v20)
  {
    v22 = [(SFCardSection *)self punchoutPickerTitle];
    [(SFCardSection *)v5 punchoutPickerTitle];
    v182 = v183 = v22;
    if (![v22 isEqual:?])
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

  v185 = [(SFCardSection *)self punchoutPickerDismissText];
  v184 = [(SFCardSection *)v5 punchoutPickerDismissText];
  DWORD2(v229) = v21;
  if ((v185 != 0) == (v184 == 0))
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

  v35 = [(SFCardSection *)self punchoutPickerDismissText];
  v36 = v35 != 0;
  v181 = v35;
  if (v35)
  {
    v37 = [(SFCardSection *)self punchoutPickerDismissText];
    [(SFCardSection *)v5 punchoutPickerDismissText];
    v179 = v180 = v37;
    if (![v37 isEqual:?])
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

  v38 = [(SFCardSection *)self canBeHidden];
  if (v38 != [(SFCardSection *)v5 canBeHidden]|| (v39 = [(SFCardSection *)self hasTopPadding], v39 != [(SFCardSection *)v5 hasTopPadding]) || (v40 = [(SFCardSection *)self hasBottomPadding], v40 != [(SFCardSection *)v5 hasBottomPadding]))
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

  v178 = [(SFDetailedRowCardSection *)self type];
  v177 = [(SFDetailedRowCardSection *)v5 type];
  if ((v178 != 0) == (v177 == 0))
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

  v41 = [(SFDetailedRowCardSection *)self type];
  v42 = v41 != 0;
  v176 = v41;
  if (v41)
  {
    v43 = [(SFDetailedRowCardSection *)self type];
    [(SFDetailedRowCardSection *)v5 type];
    v174 = v175 = v43;
    if (![v43 isEqual:?])
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

  v44 = [(SFCardSection *)self separatorStyle];
  if (v44 == [(SFCardSection *)v5 separatorStyle])
  {
    v173 = [(SFCardSection *)self backgroundColor];
    v172 = [(SFCardSection *)v5 backgroundColor];
    if ((v173 != 0) == (v172 == 0))
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
      v45 = [(SFCardSection *)self backgroundColor];
      HIDWORD(v237) = v45 != 0;
      v171 = v45;
      if (!v45 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v168 = v46, v167 = objc_claimAutoreleasedReturnValue(), [v46 isEqual:?]))
      {
        v170 = [(SFDetailedRowCardSection *)self thumbnail];
        v169 = [(SFDetailedRowCardSection *)v5 thumbnail];
        if ((v170 != 0) == (v169 == 0))
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
          v47 = [(SFDetailedRowCardSection *)self thumbnail];
          LODWORD(v237) = v47 != 0;
          v166 = v47;
          if (!v47 || (-[SFDetailedRowCardSection thumbnail](self, "thumbnail"), v48 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection thumbnail](v5, "thumbnail"), v165 = v48, v164 = objc_claimAutoreleasedReturnValue(), [v48 isEqual:?]))
          {
            v49 = [(SFDetailedRowCardSection *)self preventThumbnailImageScaling];
            if (v49 == [(SFDetailedRowCardSection *)v5 preventThumbnailImageScaling])
            {
              v163 = [(SFDetailedRowCardSection *)self title];
              v162 = [(SFDetailedRowCardSection *)v5 title];
              if ((v163 != 0) == (v162 == 0))
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
                v50 = [(SFDetailedRowCardSection *)self title];
                v236 = v50 != 0;
                v161 = v50;
                if (!v50 || (-[SFDetailedRowCardSection title](self, "title"), v51 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection title](v5, "title"), v158 = v51, v157 = objc_claimAutoreleasedReturnValue(), [v51 isEqual:?]))
                {
                  v160 = [(SFDetailedRowCardSection *)self secondaryTitle];
                  v159 = [(SFDetailedRowCardSection *)v5 secondaryTitle];
                  if ((v160 != 0) == (v159 == 0))
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
                    v52 = [(SFDetailedRowCardSection *)self secondaryTitle];
                    v235 = v52 != 0;
                    v156 = v52;
                    if (!v52 || (-[SFDetailedRowCardSection secondaryTitle](self, "secondaryTitle"), v53 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection secondaryTitle](v5, "secondaryTitle"), v153 = v53, v152 = objc_claimAutoreleasedReturnValue(), [v53 isEqual:?]))
                    {
                      v155 = [(SFDetailedRowCardSection *)self secondaryTitleImage];
                      v154 = [(SFDetailedRowCardSection *)v5 secondaryTitleImage];
                      if ((v155 != 0) == (v154 == 0))
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
                        v54 = [(SFDetailedRowCardSection *)self secondaryTitleImage];
                        v234 = v54 != 0;
                        v151 = v54;
                        if (!v54 || (-[SFDetailedRowCardSection secondaryTitleImage](self, "secondaryTitleImage"), v55 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection secondaryTitleImage](v5, "secondaryTitleImage"), v150 = v55, v149 = objc_claimAutoreleasedReturnValue(), [v55 isEqual:?]))
                        {
                          v56 = [(SFDetailedRowCardSection *)self isSecondaryTitleDetached];
                          if (v56 == [(SFDetailedRowCardSection *)v5 isSecondaryTitleDetached])
                          {
                            v148 = [(SFDetailedRowCardSection *)self descriptions];
                            v147 = [(SFDetailedRowCardSection *)v5 descriptions];
                            if ((v148 != 0) == (v147 == 0))
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
                              v57 = [(SFDetailedRowCardSection *)self descriptions];
                              v228 = v57 != 0;
                              v146 = v57;
                              if (!v57 || (-[SFDetailedRowCardSection descriptions](self, "descriptions"), v58 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection descriptions](v5, "descriptions"), v142 = objc_claimAutoreleasedReturnValue(), v143 = v58, [v58 isEqual:?]))
                              {
                                v145 = [(SFDetailedRowCardSection *)self footnote];
                                v144 = [(SFDetailedRowCardSection *)v5 footnote];
                                if ((v145 != 0) == (v144 == 0))
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
                                  v59 = [(SFDetailedRowCardSection *)self footnote];
                                  v227 = v59 != 0;
                                  v141 = v59;
                                  if (!v59 || (-[SFDetailedRowCardSection footnote](self, "footnote"), v60 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection footnote](v5, "footnote"), v137 = objc_claimAutoreleasedReturnValue(), v138 = v60, [v60 isEqual:?]))
                                  {
                                    v140 = [(SFDetailedRowCardSection *)self trailingTopText];
                                    v139 = [(SFDetailedRowCardSection *)v5 trailingTopText];
                                    if ((v140 != 0) == (v139 == 0))
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
                                      v61 = [(SFDetailedRowCardSection *)self trailingTopText];
                                      v226 = v61 != 0;
                                      v134 = v61;
                                      if (!v61 || (-[SFDetailedRowCardSection trailingTopText](self, "trailingTopText"), v62 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection trailingTopText](v5, "trailingTopText"), v135 = objc_claimAutoreleasedReturnValue(), v136 = v62, [v62 isEqual:?]))
                                      {
                                        v133 = [(SFDetailedRowCardSection *)self trailingMiddleText];
                                        v132 = [(SFDetailedRowCardSection *)v5 trailingMiddleText];
                                        if ((v133 != 0) == (v132 == 0))
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
                                          v63 = [(SFDetailedRowCardSection *)self trailingMiddleText];
                                          v225 = v63 != 0;
                                          v127 = v63;
                                          if (!v63 || (-[SFDetailedRowCardSection trailingMiddleText](self, "trailingMiddleText"), v64 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection trailingMiddleText](v5, "trailingMiddleText"), v130 = objc_claimAutoreleasedReturnValue(), v131 = v64, [v64 isEqual:?]))
                                          {
                                            v126 = [(SFDetailedRowCardSection *)self trailingBottomText];
                                            v123 = [(SFDetailedRowCardSection *)v5 trailingBottomText];
                                            if ((v126 != 0) == (v123 == 0))
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
                                              v65 = [(SFDetailedRowCardSection *)self trailingBottomText];
                                              v224 = v65 != 0;
                                              v122 = v65;
                                              if (!v65 || (-[SFDetailedRowCardSection trailingBottomText](self, "trailingBottomText"), v66 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection trailingBottomText](v5, "trailingBottomText"), v128 = objc_claimAutoreleasedReturnValue(), v129 = v66, [v66 isEqual:?]))
                                              {
                                                v121 = [(SFDetailedRowCardSection *)self action];
                                                v118 = [(SFDetailedRowCardSection *)v5 action];
                                                if ((v121 != 0) == (v118 == 0))
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
                                                  v67 = [(SFDetailedRowCardSection *)self action];
                                                  v223 = v67 != 0;
                                                  v117 = v67;
                                                  if (!v67 || (-[SFDetailedRowCardSection action](self, "action"), v68 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection action](v5, "action"), v124 = objc_claimAutoreleasedReturnValue(), v125 = v68, [v68 isEqual:?]))
                                                  {
                                                    v116 = [(SFDetailedRowCardSection *)self button];
                                                    v115 = [(SFDetailedRowCardSection *)v5 button];
                                                    if ((v116 != 0) == (v115 == 0))
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
                                                      v69 = [(SFDetailedRowCardSection *)self button];
                                                      v222 = v69 != 0;
                                                      v112 = v69;
                                                      if (!v69 || (-[SFDetailedRowCardSection button](self, "button"), v70 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection button](v5, "button"), v119 = objc_claimAutoreleasedReturnValue(), v120 = v70, [v70 isEqual:?]))
                                                      {
                                                        v71 = [(SFDetailedRowCardSection *)self shouldUseCompactDisplay];
                                                        if (v71 == [(SFDetailedRowCardSection *)v5 shouldUseCompactDisplay])
                                                        {
                                                          v111 = [(SFDetailedRowCardSection *)self buttonItems];
                                                          v108 = [(SFDetailedRowCardSection *)v5 buttonItems];
                                                          if ((v111 != 0) == (v108 == 0))
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
                                                            v72 = [(SFDetailedRowCardSection *)self buttonItems];
                                                            v221 = v72 != 0;
                                                            v107 = v72;
                                                            if (!v72 || (-[SFDetailedRowCardSection buttonItems](self, "buttonItems"), v73 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection buttonItems](v5, "buttonItems"), v113 = objc_claimAutoreleasedReturnValue(), v114 = v73, [v73 isEqual:?]))
                                                            {
                                                              v106 = [(SFDetailedRowCardSection *)self trailingThumbnail];
                                                              v105 = [(SFDetailedRowCardSection *)v5 trailingThumbnail];
                                                              if ((v106 != 0) == (v105 == 0))
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
                                                                v74 = [(SFDetailedRowCardSection *)self trailingThumbnail];
                                                                v220 = v74 != 0;
                                                                v102 = v74;
                                                                if (!v74 || (-[SFDetailedRowCardSection trailingThumbnail](self, "trailingThumbnail"), v75 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection trailingThumbnail](v5, "trailingThumbnail"), v109 = objc_claimAutoreleasedReturnValue(), v110 = v75, [v75 isEqual:?]))
                                                                {
                                                                  v76 = [(SFDetailedRowCardSection *)self buttonItemsAreTrailing];
                                                                  if (v76 == [(SFDetailedRowCardSection *)v5 buttonItemsAreTrailing])
                                                                  {
                                                                    v101 = [(SFDetailedRowCardSection *)self topText];
                                                                    v100 = [(SFDetailedRowCardSection *)v5 topText];
                                                                    if ((v101 != 0) == (v100 == 0))
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
                                                                      v77 = [(SFDetailedRowCardSection *)self topText];
                                                                      HIDWORD(v219) = v77 != 0;
                                                                      v97 = v77;
                                                                      if (!v77 || (-[SFDetailedRowCardSection topText](self, "topText"), v78 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection topText](v5, "topText"), v103 = objc_claimAutoreleasedReturnValue(), v104 = v78, [v78 isEqual:?]))
                                                                      {
                                                                        v96 = [(SFDetailedRowCardSection *)self richTrailingTopText];
                                                                        v95 = [(SFDetailedRowCardSection *)v5 richTrailingTopText];
                                                                        if ((v96 != 0) == (v95 == 0))
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
                                                                          v79 = [(SFDetailedRowCardSection *)self richTrailingTopText];
                                                                          HIDWORD(v218) = v79 != 0;
                                                                          v92 = v79;
                                                                          if (!v79 || (-[SFDetailedRowCardSection richTrailingTopText](self, "richTrailingTopText"), v80 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection richTrailingTopText](v5, "richTrailingTopText"), v98 = objc_claimAutoreleasedReturnValue(), v99 = v80, [v80 isEqual:?]))
                                                                          {
                                                                            v91 = [(SFDetailedRowCardSection *)self richTrailingMiddleText];
                                                                            v90 = [(SFDetailedRowCardSection *)v5 richTrailingMiddleText];
                                                                            if ((v91 != 0) == (v90 == 0))
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
                                                                              v81 = [(SFDetailedRowCardSection *)self richTrailingMiddleText];
                                                                              *&v217[24] = v81 != 0;
                                                                              v88 = v81;
                                                                              if (!v81 || (-[SFDetailedRowCardSection richTrailingMiddleText](self, "richTrailingMiddleText"), v82 = objc_claimAutoreleasedReturnValue(), -[SFDetailedRowCardSection richTrailingMiddleText](v5, "richTrailingMiddleText"), v93 = objc_claimAutoreleasedReturnValue(), v94 = v82, [v82 isEqual:?]))
                                                                              {
                                                                                v86 = [(SFDetailedRowCardSection *)self richTrailingBottomText];
                                                                                v85 = [(SFDetailedRowCardSection *)v5 richTrailingBottomText];
                                                                                if ((v86 != 0) == (v85 == 0))
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
                                                                                  v89 = [(SFDetailedRowCardSection *)self richTrailingBottomText:v85];
                                                                                  if (v89)
                                                                                  {
                                                                                    v83 = [(SFDetailedRowCardSection *)self richTrailingBottomText];
                                                                                    v84 = [(SFDetailedRowCardSection *)v5 richTrailingBottomText];
                                                                                    v87 = v83;
                                                                                    v19 = [v83 isEqual:v84];
                                                                                    v6 = v84;
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
    v191 = v4;
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
    v4 = v191;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v50.receiver = self;
  v50.super_class = SFDetailedRowCardSection;
  v4 = [(SFCardSection *)&v50 copyWithZone:a3];
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
  v11 = [(SFDetailedRowCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFDetailedRowCardSection *)self thumbnail];
  v16 = [v15 copy];
  [v4 setThumbnail:v16];

  [v4 setPreventThumbnailImageScaling:{-[SFDetailedRowCardSection preventThumbnailImageScaling](self, "preventThumbnailImageScaling")}];
  v17 = [(SFDetailedRowCardSection *)self title];
  v18 = [v17 copy];
  [v4 setTitle:v18];

  v19 = [(SFDetailedRowCardSection *)self secondaryTitle];
  v20 = [v19 copy];
  [v4 setSecondaryTitle:v20];

  v21 = [(SFDetailedRowCardSection *)self secondaryTitleImage];
  v22 = [v21 copy];
  [v4 setSecondaryTitleImage:v22];

  [v4 setIsSecondaryTitleDetached:{-[SFDetailedRowCardSection isSecondaryTitleDetached](self, "isSecondaryTitleDetached")}];
  v23 = [(SFDetailedRowCardSection *)self descriptions];
  v24 = [v23 copy];
  [v4 setDescriptions:v24];

  v25 = [(SFDetailedRowCardSection *)self footnote];
  v26 = [v25 copy];
  [v4 setFootnote:v26];

  v27 = [(SFDetailedRowCardSection *)self trailingTopText];
  v28 = [v27 copy];
  [v4 setTrailingTopText:v28];

  v29 = [(SFDetailedRowCardSection *)self trailingMiddleText];
  v30 = [v29 copy];
  [v4 setTrailingMiddleText:v30];

  v31 = [(SFDetailedRowCardSection *)self trailingBottomText];
  v32 = [v31 copy];
  [v4 setTrailingBottomText:v32];

  v33 = [(SFDetailedRowCardSection *)self action];
  v34 = [v33 copy];
  [v4 setAction:v34];

  v35 = [(SFDetailedRowCardSection *)self button];
  v36 = [v35 copy];
  [v4 setButton:v36];

  [v4 setShouldUseCompactDisplay:{-[SFDetailedRowCardSection shouldUseCompactDisplay](self, "shouldUseCompactDisplay")}];
  v37 = [(SFDetailedRowCardSection *)self buttonItems];
  v38 = [v37 copy];
  [v4 setButtonItems:v38];

  v39 = [(SFDetailedRowCardSection *)self trailingThumbnail];
  v40 = [v39 copy];
  [v4 setTrailingThumbnail:v40];

  [v4 setButtonItemsAreTrailing:{-[SFDetailedRowCardSection buttonItemsAreTrailing](self, "buttonItemsAreTrailing")}];
  v41 = [(SFDetailedRowCardSection *)self topText];
  v42 = [v41 copy];
  [v4 setTopText:v42];

  v43 = [(SFDetailedRowCardSection *)self richTrailingTopText];
  v44 = [v43 copy];
  [v4 setRichTrailingTopText:v44];

  v45 = [(SFDetailedRowCardSection *)self richTrailingMiddleText];
  v46 = [v45 copy];
  [v4 setRichTrailingMiddleText:v46];

  v47 = [(SFDetailedRowCardSection *)self richTrailingBottomText];
  v48 = [v47 copy];
  [v4 setRichTrailingBottomText:v48];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDetailedRowCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBDetailedRowCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDetailedRowCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBDetailedRowCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFDetailedRowCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFDetailedRowCardSection)initWithCoder:(id)a3
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
    [(SFDetailedRowCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 thumbnail];
    [(SFDetailedRowCardSection *)v5 setThumbnail:v14];

    [(SFDetailedRowCardSection *)v5 setPreventThumbnailImageScaling:[(SFCardSection *)v8 preventThumbnailImageScaling]];
    v15 = [(SFCardSection *)v8 title];
    [(SFDetailedRowCardSection *)v5 setTitle:v15];

    v16 = [(SFCardSection *)v8 secondaryTitle];
    [(SFDetailedRowCardSection *)v5 setSecondaryTitle:v16];

    v17 = [(SFCardSection *)v8 secondaryTitleImage];
    [(SFDetailedRowCardSection *)v5 setSecondaryTitleImage:v17];

    [(SFDetailedRowCardSection *)v5 setIsSecondaryTitleDetached:[(SFCardSection *)v8 isSecondaryTitleDetached]];
    v18 = [(SFCardSection *)v8 descriptions];
    [(SFDetailedRowCardSection *)v5 setDescriptions:v18];

    v19 = [(SFCardSection *)v8 footnote];
    [(SFDetailedRowCardSection *)v5 setFootnote:v19];

    v20 = [(SFCardSection *)v8 trailingTopText];
    [(SFDetailedRowCardSection *)v5 setTrailingTopText:v20];

    v21 = [(SFCardSection *)v8 trailingMiddleText];
    [(SFDetailedRowCardSection *)v5 setTrailingMiddleText:v21];

    v22 = [(SFCardSection *)v8 trailingBottomText];
    [(SFDetailedRowCardSection *)v5 setTrailingBottomText:v22];

    v23 = [(SFCardSection *)v8 action];
    [(SFDetailedRowCardSection *)v5 setAction:v23];

    v24 = [(SFCardSection *)v8 button];
    [(SFDetailedRowCardSection *)v5 setButton:v24];

    [(SFDetailedRowCardSection *)v5 setShouldUseCompactDisplay:[(SFCardSection *)v8 shouldUseCompactDisplay]];
    v25 = [(SFCardSection *)v8 buttonItems];
    [(SFDetailedRowCardSection *)v5 setButtonItems:v25];

    v26 = [(SFCardSection *)v8 trailingThumbnail];
    [(SFDetailedRowCardSection *)v5 setTrailingThumbnail:v26];

    [(SFDetailedRowCardSection *)v5 setButtonItemsAreTrailing:[(SFCardSection *)v8 buttonItemsAreTrailing]];
    v27 = [(SFCardSection *)v8 topText];
    [(SFDetailedRowCardSection *)v5 setTopText:v27];

    v28 = [(SFCardSection *)v8 richTrailingTopText];
    [(SFDetailedRowCardSection *)v5 setRichTrailingTopText:v28];

    v29 = [(SFCardSection *)v8 richTrailingMiddleText];
    [(SFDetailedRowCardSection *)v5 setRichTrailingMiddleText:v29];

    v30 = [(SFCardSection *)v8 richTrailingBottomText];
    [(SFDetailedRowCardSection *)v5 setRichTrailingBottomText:v30];

    v31 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v31];

    v32 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v32];

    v33 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v33];

    v34 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v34];

    v35 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v35];

    v36 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v36];

    v37 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v37];

    v38 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v38];

    v39 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v39];

    v40 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v40];

    v41 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v41];

    v42 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v42];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v43 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v43];

    v44 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v44];

    v45 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v45];

    v46 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v46];

    v47 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v47];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v48 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v48];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v49 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v49];

    v50 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v50];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v51 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v51];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v52 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v52];

    v53 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v53];

    v54 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v54];

    v55 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v55];
  }

  return v5;
}

- (SFDetailedRowCardSection)initWithProtobuf:(id)a3
{
  v121 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v117.receiver = self;
  v117.super_class = SFDetailedRowCardSection;
  v5 = [(SFCardSection *)&v117 init];

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

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v113 objects:v120 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v113 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v113 objects:v120 count:16];
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
      [(SFDetailedRowCardSection *)v5 setType:v19];
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

    v24 = [v4 thumbnail];

    if (v24)
    {
      v25 = [SFImage alloc];
      v26 = [v4 thumbnail];
      v27 = [(SFImage *)v25 initWithProtobuf:v26];
      [(SFDetailedRowCardSection *)v5 setThumbnail:v27];
    }

    if ([v4 preventThumbnailImageScaling])
    {
      -[SFDetailedRowCardSection setPreventThumbnailImageScaling:](v5, "setPreventThumbnailImageScaling:", [v4 preventThumbnailImageScaling]);
    }

    v28 = [v4 title];

    if (v28)
    {
      v29 = [SFRichText alloc];
      v30 = [v4 title];
      v31 = [(SFRichText *)v29 initWithProtobuf:v30];
      [(SFDetailedRowCardSection *)v5 setTitle:v31];
    }

    v32 = [v4 secondaryTitle];

    if (v32)
    {
      v33 = [SFFormattedText alloc];
      v34 = [v4 secondaryTitle];
      v35 = [(SFFormattedText *)v33 initWithProtobuf:v34];
      [(SFDetailedRowCardSection *)v5 setSecondaryTitle:v35];
    }

    v36 = [v4 secondaryTitleImage];

    if (v36)
    {
      v37 = [SFImage alloc];
      v38 = [v4 secondaryTitleImage];
      v39 = [(SFImage *)v37 initWithProtobuf:v38];
      [(SFDetailedRowCardSection *)v5 setSecondaryTitleImage:v39];
    }

    if ([v4 isSecondaryTitleDetached])
    {
      -[SFDetailedRowCardSection setIsSecondaryTitleDetached:](v5, "setIsSecondaryTitleDetached:", [v4 isSecondaryTitleDetached]);
    }

    v40 = [v4 descriptions];
    v104 = v5;
    if (v40)
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
    v42 = [v4 descriptions];
    v43 = [v42 countByEnumeratingWithState:&v109 objects:v119 count:16];
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
            objc_enumerationMutation(v42);
          }

          v47 = [[SFRichText alloc] initWithProtobuf:*(*(&v109 + 1) + 8 * j)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v109 objects:v119 count:16];
      }

      while (v44);
    }

    [(SFDetailedRowCardSection *)v104 setDescriptions:v41];
    v48 = [v4 footnote];

    if (v48)
    {
      v49 = [SFRichText alloc];
      v50 = [v4 footnote];
      v51 = [(SFRichText *)v49 initWithProtobuf:v50];
      [(SFDetailedRowCardSection *)v104 setFootnote:v51];
    }

    v52 = [v4 trailingTopText];

    if (v52)
    {
      v53 = [SFFormattedText alloc];
      v54 = [v4 trailingTopText];
      v55 = [(SFFormattedText *)v53 initWithProtobuf:v54];
      [(SFDetailedRowCardSection *)v104 setTrailingTopText:v55];
    }

    v56 = [v4 trailingMiddleText];

    if (v56)
    {
      v57 = [SFFormattedText alloc];
      v58 = [v4 trailingMiddleText];
      v59 = [(SFFormattedText *)v57 initWithProtobuf:v58];
      [(SFDetailedRowCardSection *)v104 setTrailingMiddleText:v59];
    }

    v60 = [v4 trailingBottomText];

    if (v60)
    {
      v61 = [SFFormattedText alloc];
      v62 = [v4 trailingBottomText];
      v63 = [(SFFormattedText *)v61 initWithProtobuf:v62];
      [(SFDetailedRowCardSection *)v104 setTrailingBottomText:v63];
    }

    v64 = [v4 action];

    if (v64)
    {
      v65 = [SFActionItem alloc];
      v66 = [v4 action];
      v67 = [(SFActionItem *)v65 initWithProtobuf:v66];
      [(SFDetailedRowCardSection *)v104 setAction:v67];
    }

    v68 = [v4 button];

    if (v68)
    {
      v69 = [SFButton alloc];
      v70 = [v4 button];
      v71 = [(SFButton *)v69 initWithProtobuf:v70];
      [(SFDetailedRowCardSection *)v104 setButton:v71];
    }

    if ([v4 shouldUseCompactDisplay])
    {
      -[SFDetailedRowCardSection setShouldUseCompactDisplay:](v104, "setShouldUseCompactDisplay:", [v4 shouldUseCompactDisplay]);
    }

    v72 = [v4 buttonItems];
    if (v72)
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
    v103 = v4;
    v74 = [v4 buttonItems];
    v75 = [v74 countByEnumeratingWithState:&v105 objects:v118 count:16];
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
            objc_enumerationMutation(v74);
          }

          v79 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v105 + 1) + 8 * k)];
          if (v79)
          {
            [v73 addObject:v79];
          }
        }

        v76 = [v74 countByEnumeratingWithState:&v105 objects:v118 count:16];
      }

      while (v76);
    }

    v5 = v104;
    [(SFDetailedRowCardSection *)v104 setButtonItems:v73];
    v4 = v103;
    v80 = [v103 trailingThumbnail];

    if (v80)
    {
      v81 = [SFImage alloc];
      v82 = [v103 trailingThumbnail];
      v83 = [(SFImage *)v81 initWithProtobuf:v82];
      [(SFDetailedRowCardSection *)v104 setTrailingThumbnail:v83];
    }

    if ([v103 buttonItemsAreTrailing])
    {
      -[SFDetailedRowCardSection setButtonItemsAreTrailing:](v104, "setButtonItemsAreTrailing:", [v103 buttonItemsAreTrailing]);
    }

    v84 = [v103 topText];

    if (v84)
    {
      v85 = [SFRichText alloc];
      v86 = [v103 topText];
      v87 = [(SFRichText *)v85 initWithProtobuf:v86];
      [(SFDetailedRowCardSection *)v104 setTopText:v87];
    }

    v88 = [v103 richTrailingTopText];

    if (v88)
    {
      v89 = [SFRichText alloc];
      v90 = [v103 richTrailingTopText];
      v91 = [(SFRichText *)v89 initWithProtobuf:v90];
      [(SFDetailedRowCardSection *)v104 setRichTrailingTopText:v91];
    }

    v92 = [v103 richTrailingMiddleText];

    if (v92)
    {
      v93 = [SFRichText alloc];
      v94 = [v103 richTrailingMiddleText];
      v95 = [(SFRichText *)v93 initWithProtobuf:v94];
      [(SFDetailedRowCardSection *)v104 setRichTrailingMiddleText:v95];
    }

    v96 = [v103 richTrailingBottomText];

    if (v96)
    {
      v97 = [SFRichText alloc];
      v98 = [v103 richTrailingBottomText];
      v99 = [(SFRichText *)v97 initWithProtobuf:v98];
      [(SFDetailedRowCardSection *)v104 setRichTrailingBottomText:v99];
    }

    v100 = v104;
  }

  v101 = *MEMORY[0x1E69E9840];
  return v5;
}

@end