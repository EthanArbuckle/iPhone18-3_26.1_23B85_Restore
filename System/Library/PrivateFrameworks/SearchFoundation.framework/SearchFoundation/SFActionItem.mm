@interface SFActionItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFActionItem)initWithCoder:(id)a3;
- (SFActionItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFActionItem

- (unint64_t)hash
{
  v65 = [(SFActionItem *)self label];
  v3 = [v65 hash];
  v64 = [(SFActionItem *)self labelForLocalMedia];
  v4 = [v64 hash] ^ v3;
  v5 = v4 ^ [(SFActionItem *)self isOverlay];
  v63 = [(SFActionItem *)self storeIdentifiers];
  v6 = [v63 hash];
  v7 = v5 ^ v6 ^ [(SFActionItem *)self requiresLocalMedia];
  v62 = [(SFActionItem *)self localMediaIdentifier];
  v8 = [v62 hash];
  v61 = [(SFActionItem *)self punchout];
  v9 = v8 ^ [v61 hash];
  v60 = [(SFActionItem *)self applicationBundleIdentifier];
  v10 = v9 ^ [v60 hash];
  v59 = [(SFActionItem *)self contactIdentifier];
  v55 = v7 ^ v10 ^ [v59 hash];
  v58 = [(SFActionItem *)self phoneNumber];
  v11 = [v58 hash];
  v57 = [(SFActionItem *)self email];
  v12 = v11 ^ [v57 hash];
  v56 = [(SFActionItem *)self mapsData];
  v52 = v12 ^ [v56 hash];
  [(SFActionItem *)self latitude];
  if (v13 < 0.0)
  {
    v13 = -v13;
  }

  *v14.i64 = round(v13);
  *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v53 = vnegq_f64(v16);
  v49 = (*vbslq_s8(v53, v15, v14).i64 * 2654435760.0) + vcvtd_n_u64_f64(v13 - *v14.i64, 0x40uLL);
  [(SFActionItem *)self longitude];
  if (v17 < 0.0)
  {
    v17 = -v17;
  }

  *v18.i64 = round(v17);
  *v19.i64 = *v18.i64 - trunc(*v18.i64 * 5.42101086e-20) * 1.84467441e19;
  v47 = (*vbslq_s8(v53, v19, v18).i64 * 2654435760.0) + vcvtd_n_u64_f64(v17 - *v18.i64, 0x40uLL);
  v54 = [(SFActionItem *)self provider];
  v45 = [v54 hash];
  v51 = [(SFActionItem *)self offerType];
  v43 = [v51 hash];
  v50 = [(SFActionItem *)self type];
  v42 = [v50 hash];
  v48 = [(SFActionItem *)self labelITunes];
  v40 = [v48 hash];
  v39 = [(SFActionItem *)self isITunes];
  v46 = [(SFActionItem *)self icon];
  v37 = [v46 hash];
  v44 = [(SFActionItem *)self baseIcon];
  v35 = [v44 hash];
  v41 = [(SFActionItem *)self location];
  v34 = [v41 hash];
  v38 = [(SFActionItem *)self messageIdentifier];
  v33 = [v38 hash];
  v36 = [(SFActionItem *)self messageURL];
  v32 = [v36 hash];
  v20 = [(SFActionItem *)self persistentID];
  v31 = [v20 hash];
  v21 = [(SFActionItem *)self mediaEntityType];
  v22 = [(SFActionItem *)self universalLibraryID];
  v23 = [v22 hash];
  v24 = [(SFActionItem *)self interactionContentType];
  v25 = [v24 hash];
  v26 = [(SFActionItem *)self customDirectionsPunchout];
  v27 = [v26 hash];
  v28 = [(SFActionItem *)self shouldSearchDirectionsAlongCurrentRoute];
  v29 = v40 ^ v39 ^ v37 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ [(SFActionItem *)self directionsMode];

  return v55 ^ v52 ^ v45 ^ v43 ^ v49 ^ v47 ^ v42 ^ v29;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v17 = 1;
    goto LABEL_150;
  }

  if (![(SFActionItem *)v6 isMemberOfClass:objc_opt_class()])
  {
    v17 = 0;
    goto LABEL_150;
  }

  v7 = v6;
  v242 = [(SFActionItem *)self label];
  v241 = [(SFActionItem *)v7 label];
  v239 = v241 == 0;
  v240 = v242 != 0;
  if (v240 == v239)
  {
    v229 = 0;
    memset(v227, 0, sizeof(v227));
    v11 = 0;
    memset(v238, 0, sizeof(v238));
    v225 = 0;
    v12 = 0;
    v249 = 0;
    v222 = 0;
    v224 = 0;
    v248 = 0;
    v218 = 0;
    v221 = 0;
    v247 = 0;
    v207 = 0;
    v216 = 0;
    v246 = 0;
    v200 = 0;
    v196 = 0;
    v245 = 0;
    v206 = 0;
    v215 = 0;
    v244 = 0;
    v201 = 0;
    v209 = 0;
    v243 = 0;
    v198 = 0;
    v205 = 0;
    v237 = 0;
    v197 = 0;
    v199 = 0;
    v236 = 0;
    v202 = 0;
    v210 = 0;
    v235 = 0;
    v203 = 0;
    v211 = 0;
    v234 = 0;
    v204 = 0;
    v213 = 0;
    v233 = 0;
    v208 = 0;
    v214 = 0;
    v232 = 0;
    v212 = 0;
    v219 = 0;
    v231 = 0;
    v217 = 0;
    v220 = 0;
    v230 = 0;
    v223 = 0;
    v226 = 0;
    v228 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  v9 = [(SFActionItem *)self label];
  v3 = v9 != 0;
  v195 = v9;
  if (v9)
  {
    v10 = [(SFActionItem *)self label];
    [(SFActionItem *)v7 label];
    v191 = v192 = v10;
    if (![v10 isEqual:?])
    {
      v229 = 0;
      memset(v227, 0, sizeof(v227));
      *v238 = 0uLL;
      v11 = 0;
      v225 = 0;
      v12 = 0;
      v249 = 0;
      v222 = 0;
      v224 = 0;
      v248 = 0;
      v218 = 0;
      v221 = 0;
      v247 = 0;
      v207 = 0;
      v216 = 0;
      v246 = 0;
      v200 = 0;
      v196 = 0;
      v245 = 0;
      v206 = 0;
      v215 = 0;
      v244 = 0;
      v201 = 0;
      v209 = 0;
      v243 = 0;
      v198 = 0;
      v205 = 0;
      v237 = 0;
      v197 = 0;
      v199 = 0;
      v236 = 0;
      v202 = 0;
      v210 = 0;
      v235 = 0;
      v203 = 0;
      v211 = 0;
      v234 = 0;
      v204 = 0;
      v213 = 0;
      v233 = 0;
      v208 = 0;
      v214 = 0;
      v232 = 0;
      v212 = 0;
      v219 = 0;
      v231 = 0;
      v217 = 0;
      v220 = 0;
      v230 = 0;
      v223 = 0;
      v226 = 0;
      v228 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v238[16] = 1;
      goto LABEL_15;
    }
  }

  v194 = [(SFActionItem *)self labelForLocalMedia];
  v193 = [(SFActionItem *)v7 labelForLocalMedia];
  *&v238[16] = v3;
  if ((v194 != 0) == (v193 == 0))
  {
    *&v238[8] = 0;
    memset(v227, 0, sizeof(v227));
    *v238 = 0;
    v11 = 0;
    v225 = 0;
    v12 = 0;
    v249 = 0;
    v222 = 0;
    v224 = 0;
    v248 = 0;
    v218 = 0;
    v221 = 0;
    v247 = 0;
    v207 = 0;
    v216 = 0;
    v246 = 0;
    v200 = 0;
    v196 = 0;
    v245 = 0;
    v206 = 0;
    v215 = 0;
    v244 = 0;
    v201 = 0;
    v209 = 0;
    v243 = 0;
    v198 = 0;
    v205 = 0;
    v237 = 0;
    v197 = 0;
    v199 = 0;
    v236 = 0;
    v202 = 0;
    v210 = 0;
    v235 = 0;
    v203 = 0;
    v211 = 0;
    v234 = 0;
    v204 = 0;
    v213 = 0;
    v233 = 0;
    v208 = 0;
    v214 = 0;
    v232 = 0;
    v212 = 0;
    v219 = 0;
    v231 = 0;
    v217 = 0;
    v220 = 0;
    v230 = 0;
    v223 = 0;
    v226 = 0;
    v228 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v229 = 1;
    goto LABEL_15;
  }

  v18 = [(SFActionItem *)self labelForLocalMedia];
  v4 = v18 != 0;
  v190 = v18;
  if (v18)
  {
    v19 = [(SFActionItem *)self labelForLocalMedia];
    [(SFActionItem *)v7 labelForLocalMedia];
    v188 = v189 = v19;
    if (![v19 isEqual:?])
    {
      *&v238[4] = 0;
      v11 = 0;
      memset(v227, 0, 20);
      *v238 = 0;
      v225 = 0;
      v12 = 0;
      v249 = 0;
      v222 = 0;
      v224 = 0;
      v248 = 0;
      v218 = 0;
      v221 = 0;
      v247 = 0;
      v207 = 0;
      v216 = 0;
      v246 = 0;
      v200 = 0;
      v196 = 0;
      v245 = 0;
      v206 = 0;
      v215 = 0;
      v244 = 0;
      v201 = 0;
      v209 = 0;
      v243 = 0;
      v198 = 0;
      v205 = 0;
      v237 = 0;
      v197 = 0;
      v199 = 0;
      v236 = 0;
      v202 = 0;
      v210 = 0;
      v235 = 0;
      v203 = 0;
      v211 = 0;
      v234 = 0;
      v204 = 0;
      v213 = 0;
      v233 = 0;
      v208 = 0;
      v214 = 0;
      v232 = 0;
      v212 = 0;
      v219 = 0;
      v231 = 0;
      v217 = 0;
      v220 = 0;
      v230 = 0;
      v223 = 0;
      v226 = 0;
      v228 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v229 = 1;
      HIDWORD(v227[2]) = 1;
      *&v238[12] = 1;
      goto LABEL_15;
    }
  }

  v28 = [(SFActionItem *)self isOverlay];
  *&v238[12] = v4;
  if (v28 != [(SFActionItem *)v7 isOverlay])
  {
    *&v238[4] = 0;
    v11 = 0;
    memset(v227, 0, 20);
    *v238 = 0;
    v225 = 0;
    v12 = 0;
    v249 = 0;
    v222 = 0;
    v224 = 0;
    v248 = 0;
    v218 = 0;
    v221 = 0;
    v247 = 0;
    v207 = 0;
    v216 = 0;
    v246 = 0;
    v200 = 0;
    v196 = 0;
    v245 = 0;
    v206 = 0;
    v215 = 0;
    v244 = 0;
    v201 = 0;
    v209 = 0;
    v243 = 0;
    v198 = 0;
    v205 = 0;
    v237 = 0;
    v197 = 0;
    v199 = 0;
    v236 = 0;
    v202 = 0;
    v210 = 0;
    v235 = 0;
    v203 = 0;
    v211 = 0;
    v234 = 0;
    v204 = 0;
    v213 = 0;
    v233 = 0;
    v208 = 0;
    v214 = 0;
    v232 = 0;
    v212 = 0;
    v219 = 0;
    v231 = 0;
    v217 = 0;
    v220 = 0;
    v230 = 0;
    v223 = 0;
    v226 = 0;
    v228 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v229 = 1;
    HIDWORD(v227[2]) = 1;
    goto LABEL_15;
  }

  v187 = [(SFActionItem *)self storeIdentifiers];
  v186 = [(SFActionItem *)v7 storeIdentifiers];
  if ((v187 != 0) == (v186 == 0))
  {
    v227[0] = 0;
    v227[1] = 0;
    *&v238[4] = 0;
    v11 = 0;
    *v238 = 0;
    v225 = 0;
    v12 = 0;
    v249 = 0;
    v222 = 0;
    v224 = 0;
    v248 = 0;
    v218 = 0;
    v221 = 0;
    v247 = 0;
    v207 = 0;
    v216 = 0;
    v246 = 0;
    v200 = 0;
    v196 = 0;
    v245 = 0;
    v206 = 0;
    v215 = 0;
    v244 = 0;
    v201 = 0;
    v209 = 0;
    v243 = 0;
    v198 = 0;
    v205 = 0;
    v237 = 0;
    v197 = 0;
    v199 = 0;
    v236 = 0;
    v202 = 0;
    v210 = 0;
    v235 = 0;
    v203 = 0;
    v211 = 0;
    v234 = 0;
    v204 = 0;
    v213 = 0;
    v233 = 0;
    v208 = 0;
    v214 = 0;
    v232 = 0;
    v212 = 0;
    v219 = 0;
    v231 = 0;
    v217 = 0;
    v220 = 0;
    v230 = 0;
    v223 = 0;
    v226 = 0;
    v228 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v229 = 1;
    v227[2] = 0x100000001;
    goto LABEL_15;
  }

  v29 = [(SFActionItem *)self storeIdentifiers];
  v30 = v29 != 0;
  v185 = v29;
  if (v29)
  {
    v31 = [(SFActionItem *)self storeIdentifiers];
    [(SFActionItem *)v7 storeIdentifiers];
    v183 = v184 = v31;
    if (![v31 isEqual:?])
    {
      *(v227 + 4) = 0;
      *v238 = 0;
      v11 = 0;
      LODWORD(v227[0]) = 0;
      v225 = 0;
      v12 = 0;
      v249 = 0;
      v222 = 0;
      v224 = 0;
      v248 = 0;
      v218 = 0;
      v221 = 0;
      v247 = 0;
      v207 = 0;
      v216 = 0;
      v246 = 0;
      v200 = 0;
      v196 = 0;
      v245 = 0;
      v206 = 0;
      v215 = 0;
      v244 = 0;
      v201 = 0;
      v209 = 0;
      v243 = 0;
      v198 = 0;
      v205 = 0;
      v237 = 0;
      v197 = 0;
      v199 = 0;
      v236 = 0;
      v202 = 0;
      v210 = 0;
      v235 = 0;
      v203 = 0;
      v211 = 0;
      v234 = 0;
      v204 = 0;
      v213 = 0;
      v233 = 0;
      v208 = 0;
      v214 = 0;
      v232 = 0;
      v212 = 0;
      v219 = 0;
      v231 = 0;
      v217 = 0;
      v220 = 0;
      v230 = 0;
      v223 = 0;
      v226 = 0;
      v228 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v229 = 1;
      v227[2] = 0x100000001;
      HIDWORD(v227[1]) = 1;
      *&v238[8] = 1;
      goto LABEL_15;
    }

    *&v238[8] = v30;
  }

  else
  {
    *&v238[8] = 0;
  }

  v32 = [(SFActionItem *)self requiresLocalMedia];
  if (v32 != [(SFActionItem *)v7 requiresLocalMedia])
  {
    *(v227 + 4) = 0;
    *v238 = 0;
    v11 = 0;
    LODWORD(v227[0]) = 0;
    v225 = 0;
    v12 = 0;
    v249 = 0;
    v222 = 0;
    v224 = 0;
    v248 = 0;
    v218 = 0;
    v221 = 0;
    v247 = 0;
    v207 = 0;
    v216 = 0;
    v246 = 0;
    v200 = 0;
    v196 = 0;
    v245 = 0;
    v206 = 0;
    v215 = 0;
    v244 = 0;
    v201 = 0;
    v209 = 0;
    v243 = 0;
    v198 = 0;
    v205 = 0;
    v237 = 0;
    v197 = 0;
    v199 = 0;
    v236 = 0;
    v202 = 0;
    v210 = 0;
    v235 = 0;
    v203 = 0;
    v211 = 0;
    v234 = 0;
    v204 = 0;
    v213 = 0;
    v233 = 0;
    v208 = 0;
    v214 = 0;
    v232 = 0;
    v212 = 0;
    v219 = 0;
    v231 = 0;
    v217 = 0;
    v220 = 0;
    v230 = 0;
    v223 = 0;
    v226 = 0;
    v228 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v229 = 1;
    v227[2] = 0x100000001;
    HIDWORD(v227[1]) = 1;
    goto LABEL_15;
  }

  v182 = [(SFActionItem *)self localMediaIdentifier];
  v181 = [(SFActionItem *)v7 localMediaIdentifier];
  if ((v182 != 0) == (v181 == 0))
  {
    v227[1] = 0x100000000;
    *v238 = 0;
    v11 = 0;
    v227[0] = 0x100000000;
    v225 = 0;
    v12 = 0;
    v249 = 0;
    v222 = 0;
    v224 = 0;
    v248 = 0;
    v218 = 0;
    v221 = 0;
    v247 = 0;
    v207 = 0;
    v216 = 0;
    v246 = 0;
    v200 = 0;
    v196 = 0;
    v245 = 0;
    v206 = 0;
    v215 = 0;
    v244 = 0;
    v201 = 0;
    v209 = 0;
    v243 = 0;
    v198 = 0;
    v205 = 0;
    v237 = 0;
    v197 = 0;
    v199 = 0;
    v236 = 0;
    v202 = 0;
    v210 = 0;
    v235 = 0;
    v203 = 0;
    v211 = 0;
    v234 = 0;
    v204 = 0;
    v213 = 0;
    v233 = 0;
    v208 = 0;
    v214 = 0;
    v232 = 0;
    v212 = 0;
    v219 = 0;
    v231 = 0;
    v217 = 0;
    v220 = 0;
    v230 = 0;
    v223 = 0;
    v226 = 0;
    v228 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v229 = 1;
    v227[2] = 0x100000001;
    goto LABEL_15;
  }

  v33 = [(SFActionItem *)self localMediaIdentifier];
  v34 = v33 != 0;
  v180 = v33;
  if (v33)
  {
    v35 = [(SFActionItem *)self localMediaIdentifier];
    [(SFActionItem *)v7 localMediaIdentifier];
    v176 = v177 = v35;
    if (![v35 isEqual:?])
    {
      v11 = 0;
      v227[0] = 0x100000000;
      *v238 = 0x100000000;
      v225 = 0;
      v12 = 0;
      v249 = 0;
      v222 = 0;
      v224 = 0;
      v248 = 0;
      v218 = 0;
      v221 = 0;
      v247 = 0;
      v207 = 0;
      v216 = 0;
      v246 = 0;
      v200 = 0;
      v196 = 0;
      v245 = 0;
      v206 = 0;
      v215 = 0;
      v244 = 0;
      v201 = 0;
      v209 = 0;
      v243 = 0;
      v198 = 0;
      v205 = 0;
      v237 = 0;
      v197 = 0;
      v199 = 0;
      v236 = 0;
      v202 = 0;
      v210 = 0;
      v235 = 0;
      v203 = 0;
      v211 = 0;
      v234 = 0;
      v204 = 0;
      v213 = 0;
      v233 = 0;
      v208 = 0;
      v214 = 0;
      v232 = 0;
      v212 = 0;
      v219 = 0;
      v231 = 0;
      v217 = 0;
      v220 = 0;
      v230 = 0;
      v223 = 0;
      v226 = 0;
      v228 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v229 = 1;
      v227[2] = 0x100000001;
      v227[1] = 0x100000001;
      goto LABEL_15;
    }

    *&v238[4] = v34;
  }

  else
  {
    *&v238[4] = 0;
  }

  v179 = [(SFActionItem *)self punchout];
  v178 = [(SFActionItem *)v7 punchout];
  if ((v179 != 0) == (v178 == 0))
  {
    v227[0] = 0x100000000;
    *v238 = 0;
    v225 = 0;
    v12 = 0;
    v249 = 0;
    v222 = 0;
    v224 = 0;
    v248 = 0;
    v218 = 0;
    v221 = 0;
    v247 = 0;
    v207 = 0;
    v216 = 0;
    v246 = 0;
    v200 = 0;
    v196 = 0;
    v245 = 0;
    v206 = 0;
    v215 = 0;
    v244 = 0;
    v201 = 0;
    v209 = 0;
    v243 = 0;
    v198 = 0;
    v205 = 0;
    v237 = 0;
    v197 = 0;
    v199 = 0;
    v236 = 0;
    v202 = 0;
    v210 = 0;
    v235 = 0;
    v203 = 0;
    v211 = 0;
    v234 = 0;
    v204 = 0;
    v213 = 0;
    v233 = 0;
    v208 = 0;
    v214 = 0;
    v232 = 0;
    v212 = 0;
    v219 = 0;
    v231 = 0;
    v217 = 0;
    v220 = 0;
    v230 = 0;
    v223 = 0;
    v226 = 0;
    v228 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v229 = 1;
    v227[2] = 0x100000001;
    v227[1] = 0x100000001;
    v11 = 1;
    goto LABEL_15;
  }

  v36 = [(SFActionItem *)self punchout];
  v37 = v36 != 0;
  v175 = v36;
  if (v36)
  {
    v38 = [(SFActionItem *)self punchout];
    [(SFActionItem *)v7 punchout];
    v171 = v172 = v38;
    if (![v38 isEqual:?])
    {
      v225 = 0;
      v12 = 0;
      v249 = 0;
      v222 = 0;
      v224 = 0;
      v248 = 0;
      v218 = 0;
      v221 = 0;
      v247 = 0;
      v207 = 0;
      v216 = 0;
      v246 = 0;
      v200 = 0;
      v196 = 0;
      v245 = 0;
      v206 = 0;
      v215 = 0;
      v244 = 0;
      v201 = 0;
      v209 = 0;
      v243 = 0;
      v198 = 0;
      v205 = 0;
      v237 = 0;
      v197 = 0;
      v199 = 0;
      v236 = 0;
      v202 = 0;
      v210 = 0;
      v235 = 0;
      v203 = 0;
      v211 = 0;
      v234 = 0;
      v204 = 0;
      v213 = 0;
      v233 = 0;
      v208 = 0;
      v214 = 0;
      v232 = 0;
      v212 = 0;
      v219 = 0;
      v231 = 0;
      v217 = 0;
      v220 = 0;
      v230 = 0;
      v223 = 0;
      v226 = 0;
      v228 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v229 = 1;
      v227[2] = 0x100000001;
      v227[1] = 0x100000001;
      v227[0] = 0x100000001;
      v11 = 1;
      *v238 = 1;
      goto LABEL_15;
    }

    *v238 = v37;
  }

  else
  {
    *v238 = 0;
  }

  v174 = [(SFActionItem *)self applicationBundleIdentifier];
  v173 = [(SFActionItem *)v7 applicationBundleIdentifier];
  if ((v174 != 0) == (v173 == 0))
  {
    v12 = 0;
    v249 = 0;
    v222 = 0;
    v224 = 0;
    v248 = 0;
    v218 = 0;
    v221 = 0;
    v247 = 0;
    v207 = 0;
    v216 = 0;
    v246 = 0;
    v200 = 0;
    v196 = 0;
    v245 = 0;
    v206 = 0;
    v215 = 0;
    v244 = 0;
    v201 = 0;
    v209 = 0;
    v243 = 0;
    v198 = 0;
    v205 = 0;
    v237 = 0;
    v197 = 0;
    v199 = 0;
    v236 = 0;
    v202 = 0;
    v210 = 0;
    v235 = 0;
    v203 = 0;
    v211 = 0;
    v234 = 0;
    v204 = 0;
    v213 = 0;
    v233 = 0;
    v208 = 0;
    v214 = 0;
    v232 = 0;
    v212 = 0;
    v219 = 0;
    v231 = 0;
    v217 = 0;
    v220 = 0;
    v230 = 0;
    v223 = 0;
    v226 = 0;
    v228 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v229 = 1;
    v227[2] = 0x100000001;
    v227[1] = 0x100000001;
    v227[0] = 0x100000001;
    v11 = 1;
    v225 = 1;
  }

  else
  {
    v39 = [(SFActionItem *)self applicationBundleIdentifier];
    v249 = v39 != 0;
    v170 = v39;
    if (!v39 || (-[SFActionItem applicationBundleIdentifier](self, "applicationBundleIdentifier"), v40 = objc_claimAutoreleasedReturnValue(), -[SFActionItem applicationBundleIdentifier](v7, "applicationBundleIdentifier"), v167 = v40, v166 = objc_claimAutoreleasedReturnValue(), [v40 isEqual:?]))
    {
      v169 = [(SFActionItem *)self contactIdentifier];
      v168 = [(SFActionItem *)v7 contactIdentifier];
      if ((v169 != 0) == (v168 == 0))
      {
        v224 = 0;
        v248 = 0;
        v218 = 0;
        v221 = 0;
        v247 = 0;
        v207 = 0;
        v216 = 0;
        v246 = 0;
        v200 = 0;
        v196 = 0;
        v245 = 0;
        v206 = 0;
        v215 = 0;
        v244 = 0;
        v201 = 0;
        v209 = 0;
        v243 = 0;
        v198 = 0;
        v205 = 0;
        v237 = 0;
        v197 = 0;
        v199 = 0;
        v236 = 0;
        v202 = 0;
        v210 = 0;
        v235 = 0;
        v203 = 0;
        v211 = 0;
        v234 = 0;
        v204 = 0;
        v213 = 0;
        v233 = 0;
        v208 = 0;
        v214 = 0;
        v232 = 0;
        v212 = 0;
        v219 = 0;
        v231 = 0;
        v217 = 0;
        v220 = 0;
        v230 = 0;
        v223 = 0;
        v226 = 0;
        v228 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v229 = 1;
        v227[2] = 0x100000001;
        v227[1] = 0x100000001;
        v227[0] = 0x100000001;
        v11 = 1;
        v225 = 1;
        v12 = 1;
        v222 = 1;
      }

      else
      {
        v41 = [(SFActionItem *)self contactIdentifier];
        v248 = v41 != 0;
        v165 = v41;
        if (!v41 || (-[SFActionItem contactIdentifier](self, "contactIdentifier"), v42 = objc_claimAutoreleasedReturnValue(), -[SFActionItem contactIdentifier](v7, "contactIdentifier"), v162 = v42, v161 = objc_claimAutoreleasedReturnValue(), [v42 isEqual:?]))
        {
          v164 = [(SFActionItem *)self phoneNumber];
          v163 = [(SFActionItem *)v7 phoneNumber];
          if ((v164 != 0) == (v163 == 0))
          {
            v221 = 0;
            v247 = 0;
            v207 = 0;
            v216 = 0;
            v246 = 0;
            v200 = 0;
            v196 = 0;
            v245 = 0;
            v206 = 0;
            v215 = 0;
            v244 = 0;
            v201 = 0;
            v209 = 0;
            v243 = 0;
            v198 = 0;
            v205 = 0;
            v237 = 0;
            v197 = 0;
            v199 = 0;
            v236 = 0;
            v202 = 0;
            v210 = 0;
            v235 = 0;
            v203 = 0;
            v211 = 0;
            v234 = 0;
            v204 = 0;
            v213 = 0;
            v233 = 0;
            v208 = 0;
            v214 = 0;
            v232 = 0;
            v212 = 0;
            v219 = 0;
            v231 = 0;
            v217 = 0;
            v220 = 0;
            v230 = 0;
            v223 = 0;
            v226 = 0;
            v228 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v229 = 1;
            v227[2] = 0x100000001;
            v227[1] = 0x100000001;
            v227[0] = 0x100000001;
            v11 = 1;
            v225 = 1;
            v12 = 1;
            v222 = 1;
            v224 = 1;
            v218 = 1;
          }

          else
          {
            v43 = [(SFActionItem *)self phoneNumber];
            v247 = v43 != 0;
            v160 = v43;
            if (!v43 || (-[SFActionItem phoneNumber](self, "phoneNumber"), v44 = objc_claimAutoreleasedReturnValue(), -[SFActionItem phoneNumber](v7, "phoneNumber"), v157 = v44, v156 = objc_claimAutoreleasedReturnValue(), [v44 isEqual:?]))
            {
              v159 = [(SFActionItem *)self email];
              v158 = [(SFActionItem *)v7 email];
              if ((v159 != 0) == (v158 == 0))
              {
                v216 = 0;
                v246 = 0;
                v200 = 0;
                v196 = 0;
                v245 = 0;
                v206 = 0;
                v215 = 0;
                v244 = 0;
                v201 = 0;
                v209 = 0;
                v243 = 0;
                v198 = 0;
                v205 = 0;
                v237 = 0;
                v197 = 0;
                v199 = 0;
                v236 = 0;
                v202 = 0;
                v210 = 0;
                v235 = 0;
                v203 = 0;
                v211 = 0;
                v234 = 0;
                v204 = 0;
                v213 = 0;
                v233 = 0;
                v208 = 0;
                v214 = 0;
                v232 = 0;
                v212 = 0;
                v219 = 0;
                v231 = 0;
                v217 = 0;
                v220 = 0;
                v230 = 0;
                v223 = 0;
                v226 = 0;
                v228 = 0;
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v229 = 1;
                v227[2] = 0x100000001;
                v227[1] = 0x100000001;
                v227[0] = 0x100000001;
                v11 = 1;
                v225 = 1;
                v12 = 1;
                v222 = 1;
                v224 = 1;
                v218 = 1;
                v221 = 1;
                v207 = 1;
              }

              else
              {
                v45 = [(SFActionItem *)self email];
                v246 = v45 != 0;
                v155 = v45;
                if (!v45 || (-[SFActionItem email](self, "email"), v46 = objc_claimAutoreleasedReturnValue(), -[SFActionItem email](v7, "email"), v152 = v46, v151 = objc_claimAutoreleasedReturnValue(), [v46 isEqual:?]))
                {
                  v154 = [(SFActionItem *)self mapsData];
                  v153 = [(SFActionItem *)v7 mapsData];
                  if ((v154 != 0) == (v153 == 0))
                  {
                    v196 = 0;
                    v245 = 0;
                    v206 = 0;
                    v215 = 0;
                    v244 = 0;
                    v201 = 0;
                    v209 = 0;
                    v243 = 0;
                    v198 = 0;
                    v205 = 0;
                    v237 = 0;
                    v197 = 0;
                    v199 = 0;
                    v236 = 0;
                    v202 = 0;
                    v210 = 0;
                    v235 = 0;
                    v203 = 0;
                    v211 = 0;
                    v234 = 0;
                    v204 = 0;
                    v213 = 0;
                    v233 = 0;
                    v208 = 0;
                    v214 = 0;
                    v232 = 0;
                    v212 = 0;
                    v219 = 0;
                    v231 = 0;
                    v217 = 0;
                    v220 = 0;
                    v230 = 0;
                    v223 = 0;
                    v226 = 0;
                    v228 = 0;
                    v13 = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v229 = 1;
                    v227[2] = 0x100000001;
                    v227[1] = 0x100000001;
                    v227[0] = 0x100000001;
                    v11 = 1;
                    v225 = 1;
                    v12 = 1;
                    v222 = 1;
                    v224 = 1;
                    v218 = 1;
                    v221 = 1;
                    v207 = 1;
                    v216 = 1;
                    v200 = 1;
                  }

                  else
                  {
                    v47 = [(SFActionItem *)self mapsData];
                    v245 = v47 != 0;
                    v150 = v47;
                    if (!v47 || (-[SFActionItem mapsData](self, "mapsData"), v48 = objc_claimAutoreleasedReturnValue(), -[SFActionItem mapsData](v7, "mapsData"), v148 = objc_claimAutoreleasedReturnValue(), v149 = v48, [v48 isEqual:?]))
                    {
                      [(SFActionItem *)self latitude];
                      v50 = v49;
                      [(SFActionItem *)v7 latitude];
                      if (vabdd_f64(v50, v51) >= 2.22044605e-16 || ([(SFActionItem *)self longitude], v53 = v52, [(SFActionItem *)v7 longitude], vabdd_f64(v53, v54) >= 2.22044605e-16))
                      {
                        v206 = 0;
                        v215 = 0;
                        v244 = 0;
                        v201 = 0;
                        v209 = 0;
                        v243 = 0;
                        v198 = 0;
                        v205 = 0;
                        v237 = 0;
                        v197 = 0;
                        v199 = 0;
                        v236 = 0;
                        v202 = 0;
                        v210 = 0;
                        v235 = 0;
                        v203 = 0;
                        v211 = 0;
                        v234 = 0;
                        v204 = 0;
                        v213 = 0;
                        v233 = 0;
                        v208 = 0;
                        v214 = 0;
                        v232 = 0;
                        v212 = 0;
                        v219 = 0;
                        v231 = 0;
                        v217 = 0;
                        v220 = 0;
                        v230 = 0;
                        v223 = 0;
                        v226 = 0;
                        v228 = 0;
                        v13 = 0;
                        v14 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v229 = 1;
                        v227[2] = 0x100000001;
                        v227[1] = 0x100000001;
                        v227[0] = 0x100000001;
                        v11 = 1;
                        v225 = 1;
                        v12 = 1;
                        v222 = 1;
                        v224 = 1;
                        v218 = 1;
                        v221 = 1;
                        v207 = 1;
                        v216 = 1;
                        v200 = 1;
                        v196 = 1;
                      }

                      else
                      {
                        v147 = [(SFActionItem *)self provider];
                        v146 = [(SFActionItem *)v7 provider];
                        if ((v147 != 0) == (v146 == 0))
                        {
                          v215 = 0;
                          v244 = 0;
                          v201 = 0;
                          v209 = 0;
                          v243 = 0;
                          v198 = 0;
                          v205 = 0;
                          v237 = 0;
                          v197 = 0;
                          v199 = 0;
                          v236 = 0;
                          v202 = 0;
                          v210 = 0;
                          v235 = 0;
                          v203 = 0;
                          v211 = 0;
                          v234 = 0;
                          v204 = 0;
                          v213 = 0;
                          v233 = 0;
                          v208 = 0;
                          v214 = 0;
                          v232 = 0;
                          v212 = 0;
                          v219 = 0;
                          v231 = 0;
                          v217 = 0;
                          v220 = 0;
                          v230 = 0;
                          v223 = 0;
                          v226 = 0;
                          v228 = 0;
                          v13 = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v229 = 1;
                          v227[2] = 0x100000001;
                          v227[1] = 0x100000001;
                          v227[0] = 0x100000001;
                          v11 = 1;
                          v225 = 1;
                          v12 = 1;
                          v222 = 1;
                          v224 = 1;
                          v218 = 1;
                          v221 = 1;
                          v207 = 1;
                          v216 = 1;
                          v200 = 1;
                          v196 = 1;
                          v206 = 1;
                        }

                        else
                        {
                          v55 = [(SFActionItem *)self provider];
                          v244 = v55 != 0;
                          v145 = v55;
                          if (!v55 || (-[SFActionItem provider](self, "provider"), v56 = objc_claimAutoreleasedReturnValue(), -[SFActionItem provider](v7, "provider"), v141 = objc_claimAutoreleasedReturnValue(), v142 = v56, [v56 isEqual:?]))
                          {
                            v144 = [(SFActionItem *)self offerType];
                            v143 = [(SFActionItem *)v7 offerType];
                            if ((v144 != 0) == (v143 == 0))
                            {
                              v209 = 0;
                              v243 = 0;
                              v198 = 0;
                              v205 = 0;
                              v237 = 0;
                              v197 = 0;
                              v199 = 0;
                              v236 = 0;
                              v202 = 0;
                              v210 = 0;
                              v235 = 0;
                              v203 = 0;
                              v211 = 0;
                              v234 = 0;
                              v204 = 0;
                              v213 = 0;
                              v233 = 0;
                              v208 = 0;
                              v214 = 0;
                              v232 = 0;
                              v212 = 0;
                              v219 = 0;
                              v231 = 0;
                              v217 = 0;
                              v220 = 0;
                              v230 = 0;
                              v223 = 0;
                              v226 = 0;
                              v228 = 0;
                              v13 = 0;
                              v14 = 0;
                              v15 = 0;
                              v16 = 0;
                              v17 = 0;
                              v229 = 1;
                              v227[2] = 0x100000001;
                              v227[1] = 0x100000001;
                              v227[0] = 0x100000001;
                              v11 = 1;
                              v225 = 1;
                              v12 = 1;
                              v222 = 1;
                              v224 = 1;
                              v218 = 1;
                              v221 = 1;
                              v207 = 1;
                              v216 = 1;
                              v200 = 1;
                              v196 = 1;
                              v206 = 1;
                              v215 = 1;
                              v201 = 1;
                            }

                            else
                            {
                              v57 = [(SFActionItem *)self offerType];
                              v243 = v57 != 0;
                              v140 = v57;
                              if (!v57 || (-[SFActionItem offerType](self, "offerType"), v58 = objc_claimAutoreleasedReturnValue(), -[SFActionItem offerType](v7, "offerType"), v136 = objc_claimAutoreleasedReturnValue(), v137 = v58, [v58 isEqual:?]))
                              {
                                v139 = [(SFActionItem *)self type];
                                v138 = [(SFActionItem *)v7 type];
                                if ((v139 != 0) == (v138 == 0))
                                {
                                  v205 = 0;
                                  v237 = 0;
                                  v197 = 0;
                                  v199 = 0;
                                  v236 = 0;
                                  v202 = 0;
                                  v210 = 0;
                                  v235 = 0;
                                  v203 = 0;
                                  v211 = 0;
                                  v234 = 0;
                                  v204 = 0;
                                  v213 = 0;
                                  v233 = 0;
                                  v208 = 0;
                                  v214 = 0;
                                  v232 = 0;
                                  v212 = 0;
                                  v219 = 0;
                                  v231 = 0;
                                  v217 = 0;
                                  v220 = 0;
                                  v230 = 0;
                                  v223 = 0;
                                  v226 = 0;
                                  v228 = 0;
                                  v13 = 0;
                                  v14 = 0;
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v229 = 1;
                                  v227[2] = 0x100000001;
                                  v227[1] = 0x100000001;
                                  v227[0] = 0x100000001;
                                  v11 = 1;
                                  v225 = 1;
                                  v12 = 1;
                                  v222 = 1;
                                  v224 = 1;
                                  v218 = 1;
                                  v221 = 1;
                                  v207 = 1;
                                  v216 = 1;
                                  v200 = 1;
                                  v196 = 1;
                                  v206 = 1;
                                  v215 = 1;
                                  v201 = 1;
                                  v209 = 1;
                                  v198 = 1;
                                }

                                else
                                {
                                  v59 = [(SFActionItem *)self type];
                                  v237 = v59 != 0;
                                  v135 = v59;
                                  if (!v59 || (-[SFActionItem type](self, "type"), v60 = objc_claimAutoreleasedReturnValue(), -[SFActionItem type](v7, "type"), v133 = objc_claimAutoreleasedReturnValue(), v134 = v60, [v60 isEqual:?]))
                                  {
                                    v132 = [(SFActionItem *)self labelITunes];
                                    v131 = [(SFActionItem *)v7 labelITunes];
                                    if ((v132 != 0) == (v131 == 0))
                                    {
                                      v199 = 0;
                                      v236 = 0;
                                      v202 = 0;
                                      v210 = 0;
                                      v235 = 0;
                                      v203 = 0;
                                      v211 = 0;
                                      v234 = 0;
                                      v204 = 0;
                                      v213 = 0;
                                      v233 = 0;
                                      v208 = 0;
                                      v214 = 0;
                                      v232 = 0;
                                      v212 = 0;
                                      v219 = 0;
                                      v231 = 0;
                                      v217 = 0;
                                      v220 = 0;
                                      v230 = 0;
                                      v223 = 0;
                                      v226 = 0;
                                      v228 = 0;
                                      v13 = 0;
                                      v14 = 0;
                                      v15 = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v229 = 1;
                                      v227[2] = 0x100000001;
                                      v227[1] = 0x100000001;
                                      v227[0] = 0x100000001;
                                      v11 = 1;
                                      v225 = 1;
                                      v12 = 1;
                                      v222 = 1;
                                      v224 = 1;
                                      v218 = 1;
                                      v221 = 1;
                                      v207 = 1;
                                      v216 = 1;
                                      v200 = 1;
                                      v196 = 1;
                                      v206 = 1;
                                      v215 = 1;
                                      v201 = 1;
                                      v209 = 1;
                                      v198 = 1;
                                      v205 = 1;
                                      v197 = 1;
                                    }

                                    else
                                    {
                                      v61 = [(SFActionItem *)self labelITunes];
                                      v236 = v61 != 0;
                                      v130 = v61;
                                      if (!v61 || (-[SFActionItem labelITunes](self, "labelITunes"), v62 = objc_claimAutoreleasedReturnValue(), -[SFActionItem labelITunes](v7, "labelITunes"), v128 = objc_claimAutoreleasedReturnValue(), v129 = v62, [v62 isEqual:?]))
                                      {
                                        v63 = [(SFActionItem *)self isITunes];
                                        if (v63 == [(SFActionItem *)v7 isITunes])
                                        {
                                          v125 = [(SFActionItem *)self icon];
                                          v123 = [(SFActionItem *)v7 icon];
                                          if ((v125 != 0) == (v123 == 0))
                                          {
                                            v210 = 0;
                                            v235 = 0;
                                            v203 = 0;
                                            v211 = 0;
                                            v234 = 0;
                                            v204 = 0;
                                            v213 = 0;
                                            v233 = 0;
                                            v208 = 0;
                                            v214 = 0;
                                            v232 = 0;
                                            v212 = 0;
                                            v219 = 0;
                                            v231 = 0;
                                            v217 = 0;
                                            v220 = 0;
                                            v230 = 0;
                                            v223 = 0;
                                            v226 = 0;
                                            v228 = 0;
                                            v13 = 0;
                                            v14 = 0;
                                            v15 = 0;
                                            v16 = 0;
                                            v17 = 0;
                                            v229 = 1;
                                            v227[2] = 0x100000001;
                                            v227[1] = 0x100000001;
                                            v227[0] = 0x100000001;
                                            v11 = 1;
                                            v225 = 1;
                                            v12 = 1;
                                            v222 = 1;
                                            v224 = 1;
                                            v218 = 1;
                                            v221 = 1;
                                            v207 = 1;
                                            v216 = 1;
                                            v200 = 1;
                                            v196 = 1;
                                            v206 = 1;
                                            v215 = 1;
                                            v201 = 1;
                                            v209 = 1;
                                            v198 = 1;
                                            v205 = 1;
                                            v197 = 1;
                                            v199 = 1;
                                            v202 = 1;
                                          }

                                          else
                                          {
                                            v64 = [(SFActionItem *)self icon];
                                            v235 = v64 != 0;
                                            v121 = v64;
                                            if (!v64 || (-[SFActionItem icon](self, "icon"), v65 = objc_claimAutoreleasedReturnValue(), -[SFActionItem icon](v7, "icon"), v126 = objc_claimAutoreleasedReturnValue(), v127 = v65, [v65 isEqual:?]))
                                            {
                                              v120 = [(SFActionItem *)self baseIcon];
                                              v117 = [(SFActionItem *)v7 baseIcon];
                                              if ((v120 != 0) == (v117 == 0))
                                              {
                                                v211 = 0;
                                                v234 = 0;
                                                v204 = 0;
                                                v213 = 0;
                                                v233 = 0;
                                                v208 = 0;
                                                v214 = 0;
                                                v232 = 0;
                                                v212 = 0;
                                                v219 = 0;
                                                v231 = 0;
                                                v217 = 0;
                                                v220 = 0;
                                                v230 = 0;
                                                v223 = 0;
                                                v226 = 0;
                                                v228 = 0;
                                                v13 = 0;
                                                v14 = 0;
                                                v15 = 0;
                                                v16 = 0;
                                                v17 = 0;
                                                v229 = 1;
                                                v227[2] = 0x100000001;
                                                v227[1] = 0x100000001;
                                                v227[0] = 0x100000001;
                                                v11 = 1;
                                                v225 = 1;
                                                v12 = 1;
                                                v222 = 1;
                                                v224 = 1;
                                                v218 = 1;
                                                v221 = 1;
                                                v207 = 1;
                                                v216 = 1;
                                                v200 = 1;
                                                v196 = 1;
                                                v206 = 1;
                                                v215 = 1;
                                                v201 = 1;
                                                v209 = 1;
                                                v198 = 1;
                                                v205 = 1;
                                                v197 = 1;
                                                v199 = 1;
                                                v202 = 1;
                                                v210 = 1;
                                                v203 = 1;
                                              }

                                              else
                                              {
                                                v66 = [(SFActionItem *)self baseIcon];
                                                v234 = v66 != 0;
                                                v116 = v66;
                                                if (!v66 || (-[SFActionItem baseIcon](self, "baseIcon"), v67 = objc_claimAutoreleasedReturnValue(), -[SFActionItem baseIcon](v7, "baseIcon"), v124 = v67, v122 = objc_claimAutoreleasedReturnValue(), [v67 isEqual:?]))
                                                {
                                                  v115 = [(SFActionItem *)self location];
                                                  v112 = [(SFActionItem *)v7 location];
                                                  if ((v115 != 0) == (v112 == 0))
                                                  {
                                                    v213 = 0;
                                                    v233 = 0;
                                                    v208 = 0;
                                                    v214 = 0;
                                                    v232 = 0;
                                                    v212 = 0;
                                                    v219 = 0;
                                                    v231 = 0;
                                                    v217 = 0;
                                                    v220 = 0;
                                                    v230 = 0;
                                                    v223 = 0;
                                                    v226 = 0;
                                                    v228 = 0;
                                                    v13 = 0;
                                                    v14 = 0;
                                                    v15 = 0;
                                                    v16 = 0;
                                                    v17 = 0;
                                                    v229 = 1;
                                                    v227[2] = 0x100000001;
                                                    v227[1] = 0x100000001;
                                                    v227[0] = 0x100000001;
                                                    v11 = 1;
                                                    v225 = 1;
                                                    v12 = 1;
                                                    v222 = 1;
                                                    v224 = 1;
                                                    v218 = 1;
                                                    v221 = 1;
                                                    v207 = 1;
                                                    v216 = 1;
                                                    v200 = 1;
                                                    v196 = 1;
                                                    v206 = 1;
                                                    v215 = 1;
                                                    v201 = 1;
                                                    v209 = 1;
                                                    v198 = 1;
                                                    v205 = 1;
                                                    v197 = 1;
                                                    v199 = 1;
                                                    v202 = 1;
                                                    v210 = 1;
                                                    v203 = 1;
                                                    v211 = 1;
                                                    v204 = 1;
                                                  }

                                                  else
                                                  {
                                                    v68 = [(SFActionItem *)self location];
                                                    v233 = v68 != 0;
                                                    v111 = v68;
                                                    if (!v68 || (-[SFActionItem location](self, "location"), v69 = objc_claimAutoreleasedReturnValue(), -[SFActionItem location](v7, "location"), v118 = objc_claimAutoreleasedReturnValue(), v119 = v69, [v69 isEqual:?]))
                                                    {
                                                      v110 = [(SFActionItem *)self messageIdentifier];
                                                      v108 = [(SFActionItem *)v7 messageIdentifier];
                                                      if ((v110 != 0) == (v108 == 0))
                                                      {
                                                        v214 = 0;
                                                        v232 = 0;
                                                        v212 = 0;
                                                        v219 = 0;
                                                        v231 = 0;
                                                        v217 = 0;
                                                        v220 = 0;
                                                        v230 = 0;
                                                        v223 = 0;
                                                        v226 = 0;
                                                        v228 = 0;
                                                        v13 = 0;
                                                        v14 = 0;
                                                        v15 = 0;
                                                        v16 = 0;
                                                        v17 = 0;
                                                        v229 = 1;
                                                        v227[2] = 0x100000001;
                                                        v227[1] = 0x100000001;
                                                        v227[0] = 0x100000001;
                                                        v11 = 1;
                                                        v225 = 1;
                                                        v12 = 1;
                                                        v222 = 1;
                                                        v224 = 1;
                                                        v218 = 1;
                                                        v221 = 1;
                                                        v207 = 1;
                                                        v216 = 1;
                                                        v200 = 1;
                                                        v196 = 1;
                                                        v206 = 1;
                                                        v215 = 1;
                                                        v201 = 1;
                                                        v209 = 1;
                                                        v198 = 1;
                                                        v205 = 1;
                                                        v197 = 1;
                                                        v199 = 1;
                                                        v202 = 1;
                                                        v210 = 1;
                                                        v203 = 1;
                                                        v211 = 1;
                                                        v204 = 1;
                                                        v213 = 1;
                                                        v208 = 1;
                                                      }

                                                      else
                                                      {
                                                        v70 = [(SFActionItem *)self messageIdentifier];
                                                        v232 = v70 != 0;
                                                        v106 = v70;
                                                        if (!v70 || (-[SFActionItem messageIdentifier](self, "messageIdentifier"), v71 = objc_claimAutoreleasedReturnValue(), -[SFActionItem messageIdentifier](v7, "messageIdentifier"), v113 = objc_claimAutoreleasedReturnValue(), v114 = v71, [v71 isEqual:?]))
                                                        {
                                                          v105 = [(SFActionItem *)self messageURL];
                                                          v104 = [(SFActionItem *)v7 messageURL];
                                                          if ((v105 != 0) == (v104 == 0))
                                                          {
                                                            v219 = 0;
                                                            v231 = 0;
                                                            v217 = 0;
                                                            v220 = 0;
                                                            v230 = 0;
                                                            v223 = 0;
                                                            v226 = 0;
                                                            v228 = 0;
                                                            v13 = 0;
                                                            v14 = 0;
                                                            v15 = 0;
                                                            v16 = 0;
                                                            v17 = 0;
                                                            v229 = 1;
                                                            v227[2] = 0x100000001;
                                                            v227[1] = 0x100000001;
                                                            v227[0] = 0x100000001;
                                                            v11 = 1;
                                                            v225 = 1;
                                                            v12 = 1;
                                                            v222 = 1;
                                                            v224 = 1;
                                                            v218 = 1;
                                                            v221 = 1;
                                                            v207 = 1;
                                                            v216 = 1;
                                                            v200 = 1;
                                                            v196 = 1;
                                                            v206 = 1;
                                                            v215 = 1;
                                                            v201 = 1;
                                                            v209 = 1;
                                                            v198 = 1;
                                                            v205 = 1;
                                                            v197 = 1;
                                                            v199 = 1;
                                                            v202 = 1;
                                                            v210 = 1;
                                                            v203 = 1;
                                                            v211 = 1;
                                                            v204 = 1;
                                                            v213 = 1;
                                                            v208 = 1;
                                                            v214 = 1;
                                                            v212 = 1;
                                                          }

                                                          else
                                                          {
                                                            v72 = [(SFActionItem *)self messageURL];
                                                            v231 = v72 != 0;
                                                            v101 = v72;
                                                            if (!v72 || (-[SFActionItem messageURL](self, "messageURL"), v73 = objc_claimAutoreleasedReturnValue(), -[SFActionItem messageURL](v7, "messageURL"), v109 = v73, v107 = objc_claimAutoreleasedReturnValue(), [v73 isEqual:?]))
                                                            {
                                                              v100 = [(SFActionItem *)self persistentID];
                                                              v99 = [(SFActionItem *)v7 persistentID];
                                                              if ((v100 != 0) == (v99 == 0))
                                                              {
                                                                v220 = 0;
                                                                v230 = 0;
                                                                v223 = 0;
                                                                v226 = 0;
                                                                v228 = 0;
                                                                v13 = 0;
                                                                v14 = 0;
                                                                v15 = 0;
                                                                v16 = 0;
                                                                v17 = 0;
                                                                v229 = 1;
                                                                v227[2] = 0x100000001;
                                                                v227[1] = 0x100000001;
                                                                v227[0] = 0x100000001;
                                                                v11 = 1;
                                                                v225 = 1;
                                                                v12 = 1;
                                                                v222 = 1;
                                                                v224 = 1;
                                                                v218 = 1;
                                                                v221 = 1;
                                                                v207 = 1;
                                                                v216 = 1;
                                                                v200 = 1;
                                                                v196 = 1;
                                                                v206 = 1;
                                                                v215 = 1;
                                                                v201 = 1;
                                                                v209 = 1;
                                                                v198 = 1;
                                                                v205 = 1;
                                                                v197 = 1;
                                                                v199 = 1;
                                                                v202 = 1;
                                                                v210 = 1;
                                                                v203 = 1;
                                                                v211 = 1;
                                                                v204 = 1;
                                                                v213 = 1;
                                                                v208 = 1;
                                                                v214 = 1;
                                                                v212 = 1;
                                                                v219 = 1;
                                                                v217 = 1;
                                                              }

                                                              else
                                                              {
                                                                v74 = [(SFActionItem *)self persistentID];
                                                                v230 = v74 != 0;
                                                                v96 = v74;
                                                                if (!v74 || (-[SFActionItem persistentID](self, "persistentID"), v75 = objc_claimAutoreleasedReturnValue(), -[SFActionItem persistentID](v7, "persistentID"), v102 = objc_claimAutoreleasedReturnValue(), v103 = v75, [v75 isEqual:?]))
                                                                {
                                                                  v76 = [(SFActionItem *)self mediaEntityType];
                                                                  if (v76 == [(SFActionItem *)v7 mediaEntityType])
                                                                  {
                                                                    v95 = [(SFActionItem *)self universalLibraryID];
                                                                    v94 = [(SFActionItem *)v7 universalLibraryID];
                                                                    if ((v95 != 0) == (v94 == 0))
                                                                    {
                                                                      v226 = 0;
                                                                      v228 = 0;
                                                                      v13 = 0;
                                                                      v14 = 0;
                                                                      v15 = 0;
                                                                      v16 = 0;
                                                                      v17 = 0;
                                                                      v229 = 1;
                                                                      v227[2] = 0x100000001;
                                                                      v227[1] = 0x100000001;
                                                                      v227[0] = 0x100000001;
                                                                      v11 = 1;
                                                                      v225 = 1;
                                                                      v12 = 1;
                                                                      v222 = 1;
                                                                      v224 = 1;
                                                                      v218 = 1;
                                                                      v221 = 1;
                                                                      v207 = 1;
                                                                      v216 = 1;
                                                                      v200 = 1;
                                                                      v196 = 1;
                                                                      v206 = 1;
                                                                      v215 = 1;
                                                                      v201 = 1;
                                                                      v209 = 1;
                                                                      v198 = 1;
                                                                      v205 = 1;
                                                                      v197 = 1;
                                                                      v199 = 1;
                                                                      v202 = 1;
                                                                      v210 = 1;
                                                                      v203 = 1;
                                                                      v211 = 1;
                                                                      v204 = 1;
                                                                      v213 = 1;
                                                                      v208 = 1;
                                                                      v214 = 1;
                                                                      v212 = 1;
                                                                      v219 = 1;
                                                                      v217 = 1;
                                                                      v220 = 1;
                                                                      v223 = 1;
                                                                    }

                                                                    else
                                                                    {
                                                                      v77 = [(SFActionItem *)self universalLibraryID];
                                                                      HIDWORD(v228) = v77 != 0;
                                                                      v91 = v77;
                                                                      if (!v77 || (-[SFActionItem universalLibraryID](self, "universalLibraryID"), v78 = objc_claimAutoreleasedReturnValue(), -[SFActionItem universalLibraryID](v7, "universalLibraryID"), v97 = objc_claimAutoreleasedReturnValue(), v98 = v78, [v78 isEqual:?]))
                                                                      {
                                                                        v90 = [(SFActionItem *)self interactionContentType];
                                                                        v79 = v90 != 0;
                                                                        v89 = [(SFActionItem *)v7 interactionContentType];
                                                                        if (v79 == (v89 == 0))
                                                                        {
                                                                          v13 = 0;
                                                                          v14 = 0;
                                                                          v15 = 0;
                                                                          v16 = 0;
                                                                          v17 = 0;
                                                                          v229 = 1;
                                                                          LODWORD(v228) = 0;
                                                                          v227[2] = 0x100000001;
                                                                          v227[1] = 0x100000001;
                                                                          v11 = 1;
                                                                          v227[0] = 0x100000001;
                                                                          v225 = 1;
                                                                          v12 = 1;
                                                                          v222 = 1;
                                                                          v224 = 1;
                                                                          v218 = 1;
                                                                          v221 = 1;
                                                                          v207 = 1;
                                                                          v216 = 1;
                                                                          v200 = 1;
                                                                          v196 = 1;
                                                                          v206 = 1;
                                                                          v215 = 1;
                                                                          v201 = 1;
                                                                          v209 = 1;
                                                                          v198 = 1;
                                                                          v205 = 1;
                                                                          v197 = 1;
                                                                          v199 = 1;
                                                                          v202 = 1;
                                                                          v210 = 1;
                                                                          v203 = 1;
                                                                          v211 = 1;
                                                                          v204 = 1;
                                                                          v213 = 1;
                                                                          v208 = 1;
                                                                          v214 = 1;
                                                                          v212 = 1;
                                                                          v219 = 1;
                                                                          v217 = 1;
                                                                          v220 = 1;
                                                                          v223 = 1;
                                                                          v226 = 0x100000001;
                                                                        }

                                                                        else
                                                                        {
                                                                          v80 = [(SFActionItem *)self interactionContentType];
                                                                          LODWORD(v228) = v80 != 0;
                                                                          v88 = v80;
                                                                          if (!v80 || (-[SFActionItem interactionContentType](self, "interactionContentType"), v79 = objc_claimAutoreleasedReturnValue(), -[SFActionItem interactionContentType](v7, "interactionContentType"), v92 = objc_claimAutoreleasedReturnValue(), v93 = v79, [v79 isEqual:?]))
                                                                          {
                                                                            v86 = [(SFActionItem *)self customDirectionsPunchout];
                                                                            v4 = v86 != 0;
                                                                            v3 = [(SFActionItem *)v7 customDirectionsPunchout];
                                                                            if (v4 == (v3 == 0))
                                                                            {
                                                                              v15 = 0;
                                                                              v16 = 0;
                                                                              v17 = 0;
                                                                              v229 = 1;
                                                                              v227[2] = 0x100000001;
                                                                              v227[1] = 0x100000001;
                                                                              v227[0] = 0x100000001;
                                                                              v11 = 1;
                                                                              v225 = 1;
                                                                              v12 = 1;
                                                                              v222 = 1;
                                                                              v224 = 1;
                                                                              v218 = 1;
                                                                              v221 = 1;
                                                                              v207 = 1;
                                                                              v216 = 1;
                                                                              v200 = 1;
                                                                              v196 = 1;
                                                                              v206 = 1;
                                                                              v215 = 1;
                                                                              v201 = 1;
                                                                              v209 = 1;
                                                                              v198 = 1;
                                                                              v205 = 1;
                                                                              v197 = 1;
                                                                              v199 = 1;
                                                                              v202 = 1;
                                                                              v210 = 1;
                                                                              v203 = 1;
                                                                              v211 = 1;
                                                                              v204 = 1;
                                                                              v213 = 1;
                                                                              v208 = 1;
                                                                              v214 = 1;
                                                                              v212 = 1;
                                                                              v219 = 1;
                                                                              v217 = 1;
                                                                              v220 = 1;
                                                                              v223 = 1;
                                                                              v226 = 0x100000001;
                                                                              v13 = 1;
                                                                              v14 = 1;
                                                                            }

                                                                            else
                                                                            {
                                                                              v4 = [(SFActionItem *)self customDirectionsPunchout];
                                                                              if (!v4 || (-[SFActionItem customDirectionsPunchout](self, "customDirectionsPunchout"), v81 = objc_claimAutoreleasedReturnValue(), -[SFActionItem customDirectionsPunchout](v7, "customDirectionsPunchout"), v82 = objc_claimAutoreleasedReturnValue(), v87 = v81, v83 = v81, v79 = v82, [v83 isEqual:?]))
                                                                              {
                                                                                v84 = [(SFActionItem *)self shouldSearchDirectionsAlongCurrentRoute];
                                                                                if (v84 == [(SFActionItem *)v7 shouldSearchDirectionsAlongCurrentRoute])
                                                                                {
                                                                                  v85 = [(SFActionItem *)self directionsMode];
                                                                                  v17 = v85 == [(SFActionItem *)v7 directionsMode];
                                                                                }

                                                                                else
                                                                                {
                                                                                  v17 = 0;
                                                                                }

                                                                                v229 = 1;
                                                                                v227[2] = 0x100000001;
                                                                                v227[1] = 0x100000001;
                                                                                v227[0] = 0x100000001;
                                                                                v11 = 1;
                                                                                v225 = 1;
                                                                                v12 = 1;
                                                                                v222 = 1;
                                                                                v224 = 1;
                                                                                v218 = 1;
                                                                                v221 = 1;
                                                                                v207 = 1;
                                                                                v216 = 1;
                                                                                v200 = 1;
                                                                                v196 = 1;
                                                                                v206 = 1;
                                                                                v215 = 1;
                                                                                v201 = 1;
                                                                                v209 = 1;
                                                                                v198 = 1;
                                                                                v205 = 1;
                                                                                v197 = 1;
                                                                                v199 = 1;
                                                                                v202 = 1;
                                                                                v210 = 1;
                                                                                v203 = 1;
                                                                                v211 = 1;
                                                                                v204 = 1;
                                                                                v213 = 1;
                                                                                v208 = 1;
                                                                                v214 = 1;
                                                                                v212 = 1;
                                                                                v219 = 1;
                                                                                v217 = 1;
                                                                                v220 = 1;
                                                                                v223 = 1;
                                                                                v226 = 0x100000001;
                                                                                v13 = 1;
                                                                                v14 = 1;
                                                                                v15 = 1;
                                                                                v16 = v4 != 0;
                                                                              }

                                                                              else
                                                                              {
                                                                                v17 = 0;
                                                                                v229 = 1;
                                                                                v227[2] = 0x100000001;
                                                                                v227[1] = 0x100000001;
                                                                                v227[0] = 0x100000001;
                                                                                v11 = 1;
                                                                                v225 = 1;
                                                                                v12 = 1;
                                                                                v222 = 1;
                                                                                v224 = 1;
                                                                                v218 = 1;
                                                                                v221 = 1;
                                                                                v207 = 1;
                                                                                v216 = 1;
                                                                                v200 = 1;
                                                                                v196 = 1;
                                                                                v206 = 1;
                                                                                v215 = 1;
                                                                                v201 = 1;
                                                                                v209 = 1;
                                                                                v198 = 1;
                                                                                v205 = 1;
                                                                                v197 = 1;
                                                                                v199 = 1;
                                                                                v202 = 1;
                                                                                v210 = 1;
                                                                                v203 = 1;
                                                                                v211 = 1;
                                                                                v204 = 1;
                                                                                v213 = 1;
                                                                                v208 = 1;
                                                                                v214 = 1;
                                                                                v212 = 1;
                                                                                v219 = 1;
                                                                                v217 = 1;
                                                                                v220 = 1;
                                                                                v223 = 1;
                                                                                v226 = 0x100000001;
                                                                                v13 = 1;
                                                                                v14 = 1;
                                                                                v15 = 1;
                                                                                v16 = 1;
                                                                              }

                                                                              v8 = v79;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v14 = 0;
                                                                            v15 = 0;
                                                                            v16 = 0;
                                                                            v17 = 0;
                                                                            v229 = 1;
                                                                            v227[2] = 0x100000001;
                                                                            v227[1] = 0x100000001;
                                                                            v227[0] = 0x100000001;
                                                                            v11 = 1;
                                                                            v225 = 1;
                                                                            v12 = 1;
                                                                            v222 = 1;
                                                                            v224 = 1;
                                                                            v218 = 1;
                                                                            v221 = 1;
                                                                            v207 = 1;
                                                                            v216 = 1;
                                                                            v200 = 1;
                                                                            v196 = 1;
                                                                            v206 = 1;
                                                                            v215 = 1;
                                                                            v201 = 1;
                                                                            v209 = 1;
                                                                            v198 = 1;
                                                                            v205 = 1;
                                                                            v197 = 1;
                                                                            v199 = 1;
                                                                            v202 = 1;
                                                                            v210 = 1;
                                                                            v203 = 1;
                                                                            v211 = 1;
                                                                            v204 = 1;
                                                                            v213 = 1;
                                                                            v208 = 1;
                                                                            v214 = 1;
                                                                            v212 = 1;
                                                                            v219 = 1;
                                                                            v217 = 1;
                                                                            v220 = 1;
                                                                            v223 = 1;
                                                                            v226 = 0x100000001;
                                                                            v13 = 1;
                                                                            LODWORD(v228) = 1;
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
                                                                        v229 = 1;
                                                                        v228 = 0x100000000;
                                                                        v227[2] = 0x100000001;
                                                                        v227[1] = 0x100000001;
                                                                        v11 = 1;
                                                                        v227[0] = 0x100000001;
                                                                        v225 = 1;
                                                                        v12 = 1;
                                                                        v222 = 1;
                                                                        v224 = 1;
                                                                        v218 = 1;
                                                                        v221 = 1;
                                                                        v207 = 1;
                                                                        v216 = 1;
                                                                        v200 = 1;
                                                                        v196 = 1;
                                                                        v206 = 1;
                                                                        v215 = 1;
                                                                        v201 = 1;
                                                                        v209 = 1;
                                                                        v198 = 1;
                                                                        v205 = 1;
                                                                        v197 = 1;
                                                                        v199 = 1;
                                                                        v202 = 1;
                                                                        v210 = 1;
                                                                        v203 = 1;
                                                                        v211 = 1;
                                                                        v204 = 1;
                                                                        v213 = 1;
                                                                        v208 = 1;
                                                                        v214 = 1;
                                                                        v212 = 1;
                                                                        v219 = 1;
                                                                        v217 = 1;
                                                                        v220 = 1;
                                                                        v223 = 1;
                                                                        v226 = 1;
                                                                      }
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v223 = 0;
                                                                    v226 = 0;
                                                                    v228 = 0;
                                                                    v13 = 0;
                                                                    v14 = 0;
                                                                    v15 = 0;
                                                                    v16 = 0;
                                                                    v17 = 0;
                                                                    v229 = 1;
                                                                    v227[2] = 0x100000001;
                                                                    v227[1] = 0x100000001;
                                                                    v227[0] = 0x100000001;
                                                                    v11 = 1;
                                                                    v225 = 1;
                                                                    v12 = 1;
                                                                    v222 = 1;
                                                                    v224 = 1;
                                                                    v218 = 1;
                                                                    v221 = 1;
                                                                    v207 = 1;
                                                                    v216 = 1;
                                                                    v200 = 1;
                                                                    v196 = 1;
                                                                    v206 = 1;
                                                                    v215 = 1;
                                                                    v201 = 1;
                                                                    v209 = 1;
                                                                    v198 = 1;
                                                                    v205 = 1;
                                                                    v197 = 1;
                                                                    v199 = 1;
                                                                    v202 = 1;
                                                                    v210 = 1;
                                                                    v203 = 1;
                                                                    v211 = 1;
                                                                    v204 = 1;
                                                                    v213 = 1;
                                                                    v208 = 1;
                                                                    v214 = 1;
                                                                    v212 = 1;
                                                                    v219 = 1;
                                                                    v217 = 1;
                                                                    v220 = 1;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v223 = 0;
                                                                  v226 = 0;
                                                                  v228 = 0;
                                                                  v13 = 0;
                                                                  v14 = 0;
                                                                  v15 = 0;
                                                                  v16 = 0;
                                                                  v17 = 0;
                                                                  v229 = 1;
                                                                  v227[2] = 0x100000001;
                                                                  v227[1] = 0x100000001;
                                                                  v227[0] = 0x100000001;
                                                                  v11 = 1;
                                                                  v225 = 1;
                                                                  v12 = 1;
                                                                  v222 = 1;
                                                                  v224 = 1;
                                                                  v218 = 1;
                                                                  v221 = 1;
                                                                  v207 = 1;
                                                                  v216 = 1;
                                                                  v200 = 1;
                                                                  v196 = 1;
                                                                  v206 = 1;
                                                                  v215 = 1;
                                                                  v201 = 1;
                                                                  v209 = 1;
                                                                  v198 = 1;
                                                                  v205 = 1;
                                                                  v197 = 1;
                                                                  v199 = 1;
                                                                  v202 = 1;
                                                                  v210 = 1;
                                                                  v203 = 1;
                                                                  v211 = 1;
                                                                  v204 = 1;
                                                                  v213 = 1;
                                                                  v208 = 1;
                                                                  v214 = 1;
                                                                  v212 = 1;
                                                                  v219 = 1;
                                                                  v217 = 1;
                                                                  v220 = 1;
                                                                  v230 = 1;
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v217 = 0;
                                                              v220 = 0;
                                                              v230 = 0;
                                                              v223 = 0;
                                                              v226 = 0;
                                                              v228 = 0;
                                                              v13 = 0;
                                                              v14 = 0;
                                                              v15 = 0;
                                                              v16 = 0;
                                                              v17 = 0;
                                                              v229 = 1;
                                                              v227[2] = 0x100000001;
                                                              v227[1] = 0x100000001;
                                                              v227[0] = 0x100000001;
                                                              v11 = 1;
                                                              v225 = 1;
                                                              v12 = 1;
                                                              v222 = 1;
                                                              v224 = 1;
                                                              v218 = 1;
                                                              v221 = 1;
                                                              v207 = 1;
                                                              v216 = 1;
                                                              v200 = 1;
                                                              v196 = 1;
                                                              v206 = 1;
                                                              v215 = 1;
                                                              v201 = 1;
                                                              v209 = 1;
                                                              v198 = 1;
                                                              v205 = 1;
                                                              v197 = 1;
                                                              v199 = 1;
                                                              v202 = 1;
                                                              v210 = 1;
                                                              v203 = 1;
                                                              v211 = 1;
                                                              v204 = 1;
                                                              v213 = 1;
                                                              v208 = 1;
                                                              v214 = 1;
                                                              v212 = 1;
                                                              v219 = 1;
                                                              v231 = 1;
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v212 = 0;
                                                          v219 = 0;
                                                          v231 = 0;
                                                          v217 = 0;
                                                          v220 = 0;
                                                          v230 = 0;
                                                          v223 = 0;
                                                          v226 = 0;
                                                          v228 = 0;
                                                          v13 = 0;
                                                          v14 = 0;
                                                          v15 = 0;
                                                          v16 = 0;
                                                          v17 = 0;
                                                          v229 = 1;
                                                          v227[2] = 0x100000001;
                                                          v227[1] = 0x100000001;
                                                          v227[0] = 0x100000001;
                                                          v11 = 1;
                                                          v225 = 1;
                                                          v12 = 1;
                                                          v222 = 1;
                                                          v224 = 1;
                                                          v218 = 1;
                                                          v221 = 1;
                                                          v207 = 1;
                                                          v216 = 1;
                                                          v200 = 1;
                                                          v196 = 1;
                                                          v206 = 1;
                                                          v215 = 1;
                                                          v201 = 1;
                                                          v209 = 1;
                                                          v198 = 1;
                                                          v205 = 1;
                                                          v197 = 1;
                                                          v199 = 1;
                                                          v202 = 1;
                                                          v210 = 1;
                                                          v203 = 1;
                                                          v211 = 1;
                                                          v204 = 1;
                                                          v213 = 1;
                                                          v208 = 1;
                                                          v214 = 1;
                                                          v232 = 1;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v208 = 0;
                                                      v214 = 0;
                                                      v232 = 0;
                                                      v212 = 0;
                                                      v219 = 0;
                                                      v231 = 0;
                                                      v217 = 0;
                                                      v220 = 0;
                                                      v230 = 0;
                                                      v223 = 0;
                                                      v226 = 0;
                                                      v228 = 0;
                                                      v13 = 0;
                                                      v14 = 0;
                                                      v15 = 0;
                                                      v16 = 0;
                                                      v17 = 0;
                                                      v229 = 1;
                                                      v227[2] = 0x100000001;
                                                      v227[1] = 0x100000001;
                                                      v227[0] = 0x100000001;
                                                      v11 = 1;
                                                      v225 = 1;
                                                      v12 = 1;
                                                      v222 = 1;
                                                      v224 = 1;
                                                      v218 = 1;
                                                      v221 = 1;
                                                      v207 = 1;
                                                      v216 = 1;
                                                      v200 = 1;
                                                      v196 = 1;
                                                      v206 = 1;
                                                      v215 = 1;
                                                      v201 = 1;
                                                      v209 = 1;
                                                      v198 = 1;
                                                      v205 = 1;
                                                      v197 = 1;
                                                      v199 = 1;
                                                      v202 = 1;
                                                      v210 = 1;
                                                      v203 = 1;
                                                      v211 = 1;
                                                      v204 = 1;
                                                      v213 = 1;
                                                      v233 = 1;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  v204 = 0;
                                                  v213 = 0;
                                                  v233 = 0;
                                                  v208 = 0;
                                                  v214 = 0;
                                                  v232 = 0;
                                                  v212 = 0;
                                                  v219 = 0;
                                                  v231 = 0;
                                                  v217 = 0;
                                                  v220 = 0;
                                                  v230 = 0;
                                                  v223 = 0;
                                                  v226 = 0;
                                                  v228 = 0;
                                                  v13 = 0;
                                                  v14 = 0;
                                                  v15 = 0;
                                                  v16 = 0;
                                                  v17 = 0;
                                                  v229 = 1;
                                                  v227[2] = 0x100000001;
                                                  v227[1] = 0x100000001;
                                                  v227[0] = 0x100000001;
                                                  v11 = 1;
                                                  v225 = 1;
                                                  v12 = 1;
                                                  v222 = 1;
                                                  v224 = 1;
                                                  v218 = 1;
                                                  v221 = 1;
                                                  v207 = 1;
                                                  v216 = 1;
                                                  v200 = 1;
                                                  v196 = 1;
                                                  v206 = 1;
                                                  v215 = 1;
                                                  v201 = 1;
                                                  v209 = 1;
                                                  v198 = 1;
                                                  v205 = 1;
                                                  v197 = 1;
                                                  v199 = 1;
                                                  v202 = 1;
                                                  v210 = 1;
                                                  v203 = 1;
                                                  v211 = 1;
                                                  v234 = 1;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              v203 = 0;
                                              v211 = 0;
                                              v234 = 0;
                                              v204 = 0;
                                              v213 = 0;
                                              v233 = 0;
                                              v208 = 0;
                                              v214 = 0;
                                              v232 = 0;
                                              v212 = 0;
                                              v219 = 0;
                                              v231 = 0;
                                              v217 = 0;
                                              v220 = 0;
                                              v230 = 0;
                                              v223 = 0;
                                              v226 = 0;
                                              v228 = 0;
                                              v13 = 0;
                                              v14 = 0;
                                              v15 = 0;
                                              v16 = 0;
                                              v17 = 0;
                                              v229 = 1;
                                              v227[2] = 0x100000001;
                                              v227[1] = 0x100000001;
                                              v227[0] = 0x100000001;
                                              v11 = 1;
                                              v225 = 1;
                                              v12 = 1;
                                              v222 = 1;
                                              v224 = 1;
                                              v218 = 1;
                                              v221 = 1;
                                              v207 = 1;
                                              v216 = 1;
                                              v200 = 1;
                                              v196 = 1;
                                              v206 = 1;
                                              v215 = 1;
                                              v201 = 1;
                                              v209 = 1;
                                              v198 = 1;
                                              v205 = 1;
                                              v197 = 1;
                                              v199 = 1;
                                              v202 = 1;
                                              v210 = 1;
                                              v235 = 1;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v202 = 0;
                                          v210 = 0;
                                          v235 = 0;
                                          v203 = 0;
                                          v211 = 0;
                                          v234 = 0;
                                          v204 = 0;
                                          v213 = 0;
                                          v233 = 0;
                                          v208 = 0;
                                          v214 = 0;
                                          v232 = 0;
                                          v212 = 0;
                                          v219 = 0;
                                          v231 = 0;
                                          v217 = 0;
                                          v220 = 0;
                                          v230 = 0;
                                          v223 = 0;
                                          v226 = 0;
                                          v228 = 0;
                                          v13 = 0;
                                          v14 = 0;
                                          v15 = 0;
                                          v16 = 0;
                                          v17 = 0;
                                          v229 = 1;
                                          v227[2] = 0x100000001;
                                          v227[1] = 0x100000001;
                                          v227[0] = 0x100000001;
                                          v11 = 1;
                                          v225 = 1;
                                          v12 = 1;
                                          v222 = 1;
                                          v224 = 1;
                                          v218 = 1;
                                          v221 = 1;
                                          v207 = 1;
                                          v216 = 1;
                                          v200 = 1;
                                          v196 = 1;
                                          v206 = 1;
                                          v215 = 1;
                                          v201 = 1;
                                          v209 = 1;
                                          v198 = 1;
                                          v205 = 1;
                                          v197 = 1;
                                          v199 = 1;
                                        }
                                      }

                                      else
                                      {
                                        v202 = 0;
                                        v210 = 0;
                                        v235 = 0;
                                        v203 = 0;
                                        v211 = 0;
                                        v234 = 0;
                                        v204 = 0;
                                        v213 = 0;
                                        v233 = 0;
                                        v208 = 0;
                                        v214 = 0;
                                        v232 = 0;
                                        v212 = 0;
                                        v219 = 0;
                                        v231 = 0;
                                        v217 = 0;
                                        v220 = 0;
                                        v230 = 0;
                                        v223 = 0;
                                        v226 = 0;
                                        v228 = 0;
                                        v13 = 0;
                                        v14 = 0;
                                        v15 = 0;
                                        v16 = 0;
                                        v17 = 0;
                                        v229 = 1;
                                        v227[2] = 0x100000001;
                                        v227[1] = 0x100000001;
                                        v227[0] = 0x100000001;
                                        v11 = 1;
                                        v225 = 1;
                                        v12 = 1;
                                        v222 = 1;
                                        v224 = 1;
                                        v218 = 1;
                                        v221 = 1;
                                        v207 = 1;
                                        v216 = 1;
                                        v200 = 1;
                                        v196 = 1;
                                        v206 = 1;
                                        v215 = 1;
                                        v201 = 1;
                                        v209 = 1;
                                        v198 = 1;
                                        v205 = 1;
                                        v197 = 1;
                                        v199 = 1;
                                        v236 = 1;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v197 = 0;
                                    v199 = 0;
                                    v236 = 0;
                                    v202 = 0;
                                    v210 = 0;
                                    v235 = 0;
                                    v203 = 0;
                                    v211 = 0;
                                    v234 = 0;
                                    v204 = 0;
                                    v213 = 0;
                                    v233 = 0;
                                    v208 = 0;
                                    v214 = 0;
                                    v232 = 0;
                                    v212 = 0;
                                    v219 = 0;
                                    v231 = 0;
                                    v217 = 0;
                                    v220 = 0;
                                    v230 = 0;
                                    v223 = 0;
                                    v226 = 0;
                                    v228 = 0;
                                    v13 = 0;
                                    v14 = 0;
                                    v15 = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v229 = 1;
                                    v227[2] = 0x100000001;
                                    v227[1] = 0x100000001;
                                    v227[0] = 0x100000001;
                                    v11 = 1;
                                    v225 = 1;
                                    v12 = 1;
                                    v222 = 1;
                                    v224 = 1;
                                    v218 = 1;
                                    v221 = 1;
                                    v207 = 1;
                                    v216 = 1;
                                    v200 = 1;
                                    v196 = 1;
                                    v206 = 1;
                                    v215 = 1;
                                    v201 = 1;
                                    v209 = 1;
                                    v198 = 1;
                                    v205 = 1;
                                    v237 = 1;
                                  }
                                }
                              }

                              else
                              {
                                v198 = 0;
                                v205 = 0;
                                v237 = 0;
                                v197 = 0;
                                v199 = 0;
                                v236 = 0;
                                v202 = 0;
                                v210 = 0;
                                v235 = 0;
                                v203 = 0;
                                v211 = 0;
                                v234 = 0;
                                v204 = 0;
                                v213 = 0;
                                v233 = 0;
                                v208 = 0;
                                v214 = 0;
                                v232 = 0;
                                v212 = 0;
                                v219 = 0;
                                v231 = 0;
                                v217 = 0;
                                v220 = 0;
                                v230 = 0;
                                v223 = 0;
                                v226 = 0;
                                v228 = 0;
                                v13 = 0;
                                v14 = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v229 = 1;
                                v227[2] = 0x100000001;
                                v227[1] = 0x100000001;
                                v227[0] = 0x100000001;
                                v11 = 1;
                                v225 = 1;
                                v12 = 1;
                                v222 = 1;
                                v224 = 1;
                                v218 = 1;
                                v221 = 1;
                                v207 = 1;
                                v216 = 1;
                                v200 = 1;
                                v196 = 1;
                                v206 = 1;
                                v215 = 1;
                                v201 = 1;
                                v209 = 1;
                                v243 = 1;
                              }
                            }
                          }

                          else
                          {
                            v201 = 0;
                            v209 = 0;
                            v243 = 0;
                            v198 = 0;
                            v205 = 0;
                            v237 = 0;
                            v197 = 0;
                            v199 = 0;
                            v236 = 0;
                            v202 = 0;
                            v210 = 0;
                            v235 = 0;
                            v203 = 0;
                            v211 = 0;
                            v234 = 0;
                            v204 = 0;
                            v213 = 0;
                            v233 = 0;
                            v208 = 0;
                            v214 = 0;
                            v232 = 0;
                            v212 = 0;
                            v219 = 0;
                            v231 = 0;
                            v217 = 0;
                            v220 = 0;
                            v230 = 0;
                            v223 = 0;
                            v226 = 0;
                            v228 = 0;
                            v13 = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v229 = 1;
                            v227[2] = 0x100000001;
                            v227[1] = 0x100000001;
                            v227[0] = 0x100000001;
                            v11 = 1;
                            v225 = 1;
                            v12 = 1;
                            v222 = 1;
                            v224 = 1;
                            v218 = 1;
                            v221 = 1;
                            v207 = 1;
                            v216 = 1;
                            v200 = 1;
                            v196 = 1;
                            v206 = 1;
                            v215 = 1;
                            v244 = 1;
                          }
                        }
                      }
                    }

                    else
                    {
                      v206 = 0;
                      v215 = 0;
                      v244 = 0;
                      v201 = 0;
                      v209 = 0;
                      v243 = 0;
                      v198 = 0;
                      v205 = 0;
                      v237 = 0;
                      v197 = 0;
                      v199 = 0;
                      v236 = 0;
                      v202 = 0;
                      v210 = 0;
                      v235 = 0;
                      v203 = 0;
                      v211 = 0;
                      v234 = 0;
                      v204 = 0;
                      v213 = 0;
                      v233 = 0;
                      v208 = 0;
                      v214 = 0;
                      v232 = 0;
                      v212 = 0;
                      v219 = 0;
                      v231 = 0;
                      v217 = 0;
                      v220 = 0;
                      v230 = 0;
                      v223 = 0;
                      v226 = 0;
                      v228 = 0;
                      v13 = 0;
                      v14 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v229 = 1;
                      v227[2] = 0x100000001;
                      v227[1] = 0x100000001;
                      v227[0] = 0x100000001;
                      v11 = 1;
                      v225 = 1;
                      v12 = 1;
                      v222 = 1;
                      v224 = 1;
                      v218 = 1;
                      v221 = 1;
                      v207 = 1;
                      v216 = 1;
                      v200 = 1;
                      v196 = 1;
                      v245 = 1;
                    }
                  }
                }

                else
                {
                  v200 = 0;
                  v196 = 0;
                  v245 = 0;
                  v206 = 0;
                  v215 = 0;
                  v244 = 0;
                  v201 = 0;
                  v209 = 0;
                  v243 = 0;
                  v198 = 0;
                  v205 = 0;
                  v237 = 0;
                  v197 = 0;
                  v199 = 0;
                  v236 = 0;
                  v202 = 0;
                  v210 = 0;
                  v235 = 0;
                  v203 = 0;
                  v211 = 0;
                  v234 = 0;
                  v204 = 0;
                  v213 = 0;
                  v233 = 0;
                  v208 = 0;
                  v214 = 0;
                  v232 = 0;
                  v212 = 0;
                  v219 = 0;
                  v231 = 0;
                  v217 = 0;
                  v220 = 0;
                  v230 = 0;
                  v223 = 0;
                  v226 = 0;
                  v228 = 0;
                  v13 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v229 = 1;
                  v227[2] = 0x100000001;
                  v227[1] = 0x100000001;
                  v227[0] = 0x100000001;
                  v11 = 1;
                  v225 = 1;
                  v12 = 1;
                  v222 = 1;
                  v224 = 1;
                  v218 = 1;
                  v221 = 1;
                  v207 = 1;
                  v216 = 1;
                  v246 = 1;
                }
              }
            }

            else
            {
              v207 = 0;
              v216 = 0;
              v246 = 0;
              v200 = 0;
              v196 = 0;
              v245 = 0;
              v206 = 0;
              v215 = 0;
              v244 = 0;
              v201 = 0;
              v209 = 0;
              v243 = 0;
              v198 = 0;
              v205 = 0;
              v237 = 0;
              v197 = 0;
              v199 = 0;
              v236 = 0;
              v202 = 0;
              v210 = 0;
              v235 = 0;
              v203 = 0;
              v211 = 0;
              v234 = 0;
              v204 = 0;
              v213 = 0;
              v233 = 0;
              v208 = 0;
              v214 = 0;
              v232 = 0;
              v212 = 0;
              v219 = 0;
              v231 = 0;
              v217 = 0;
              v220 = 0;
              v230 = 0;
              v223 = 0;
              v226 = 0;
              v228 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v229 = 1;
              v227[2] = 0x100000001;
              v227[1] = 0x100000001;
              v227[0] = 0x100000001;
              v11 = 1;
              v225 = 1;
              v12 = 1;
              v222 = 1;
              v224 = 1;
              v218 = 1;
              v221 = 1;
              v247 = 1;
            }
          }
        }

        else
        {
          v218 = 0;
          v221 = 0;
          v247 = 0;
          v207 = 0;
          v216 = 0;
          v246 = 0;
          v200 = 0;
          v196 = 0;
          v245 = 0;
          v206 = 0;
          v215 = 0;
          v244 = 0;
          v201 = 0;
          v209 = 0;
          v243 = 0;
          v198 = 0;
          v205 = 0;
          v237 = 0;
          v197 = 0;
          v199 = 0;
          v236 = 0;
          v202 = 0;
          v210 = 0;
          v235 = 0;
          v203 = 0;
          v211 = 0;
          v234 = 0;
          v204 = 0;
          v213 = 0;
          v233 = 0;
          v208 = 0;
          v214 = 0;
          v232 = 0;
          v212 = 0;
          v219 = 0;
          v231 = 0;
          v217 = 0;
          v220 = 0;
          v230 = 0;
          v223 = 0;
          v226 = 0;
          v228 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v229 = 1;
          v227[2] = 0x100000001;
          v227[1] = 0x100000001;
          v227[0] = 0x100000001;
          v11 = 1;
          v225 = 1;
          v12 = 1;
          v222 = 1;
          v224 = 1;
          v248 = 1;
        }
      }
    }

    else
    {
      v222 = 0;
      v224 = 0;
      v248 = 0;
      v218 = 0;
      v221 = 0;
      v247 = 0;
      v207 = 0;
      v216 = 0;
      v246 = 0;
      v200 = 0;
      v196 = 0;
      v245 = 0;
      v206 = 0;
      v215 = 0;
      v244 = 0;
      v201 = 0;
      v209 = 0;
      v243 = 0;
      v198 = 0;
      v205 = 0;
      v237 = 0;
      v197 = 0;
      v199 = 0;
      v236 = 0;
      v202 = 0;
      v210 = 0;
      v235 = 0;
      v203 = 0;
      v211 = 0;
      v234 = 0;
      v204 = 0;
      v213 = 0;
      v233 = 0;
      v208 = 0;
      v214 = 0;
      v232 = 0;
      v212 = 0;
      v219 = 0;
      v231 = 0;
      v217 = 0;
      v220 = 0;
      v230 = 0;
      v223 = 0;
      v226 = 0;
      v228 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v229 = 1;
      v227[2] = 0x100000001;
      v227[1] = 0x100000001;
      v227[0] = 0x100000001;
      v11 = 1;
      v225 = 1;
      v12 = 1;
      v249 = 1;
    }
  }

LABEL_15:
  if (v16)
  {
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v7;
    v24 = v11;
    v25 = v15;

    v26 = v25;
    v11 = v24;
    v7 = v23;
    v14 = v22;
    v13 = v21;
    v12 = v20;
    if (!v26)
    {
      goto LABEL_17;
    }

LABEL_152:

    if (!v14)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v15)
  {
    goto LABEL_152;
  }

LABEL_17:
  if (v14)
  {
LABEL_18:
  }

LABEL_19:
  if (v228)
  {
  }

  if (v13)
  {
  }

  if (HIDWORD(v226))
  {
  }

  if (HIDWORD(v228))
  {
  }

  if (v226)
  {
  }

  if (v223)
  {
  }

  if (v230)
  {
  }

  if (v220)
  {
  }

  if (v217)
  {
  }

  if (v231)
  {
  }

  if (v219)
  {
  }

  if (v212)
  {
  }

  if (v232)
  {
  }

  if (v214)
  {
  }

  if (v208)
  {
  }

  if (v233)
  {
  }

  if (v213)
  {
  }

  if (v204)
  {
  }

  if (v234)
  {
  }

  if (v211)
  {
  }

  if (v203)
  {
  }

  if (v235)
  {
  }

  if (v210)
  {
  }

  if (v202)
  {
  }

  if (v236)
  {
  }

  if (v199)
  {
  }

  if (v197)
  {
  }

  if (v237)
  {
  }

  if (v205)
  {
  }

  if (v198)
  {
  }

  if (v243)
  {
  }

  if (v209)
  {
  }

  if (v201)
  {
  }

  if (v244)
  {
  }

  if (v215)
  {
  }

  if (v206)
  {
  }

  if (v245)
  {
  }

  if (v196)
  {
  }

  if (v200)
  {
  }

  if (v246)
  {
  }

  if (v216)
  {
  }

  if (v207)
  {
  }

  if (v247)
  {
  }

  if (v221)
  {
  }

  if (v218)
  {
  }

  if (v248)
  {
  }

  if (v224)
  {
  }

  if (v222)
  {
  }

  if (v249)
  {
  }

  if (v12)
  {
  }

  if (v225)
  {
  }

  if (*v238)
  {
  }

  if (LODWORD(v227[0]))
  {
  }

  if (v11)
  {
  }

  if (*&v238[4])
  {
  }

  if (LODWORD(v227[1]))
  {
  }

  if (HIDWORD(v227[0]))
  {
  }

  if (*&v238[8])
  {
  }

  if (HIDWORD(v227[1]))
  {
  }

  if (LODWORD(v227[2]))
  {
  }

  if (*&v238[12])
  {
  }

  if (HIDWORD(v227[2]))
  {
  }

  if (v229)
  {
  }

  if (*&v238[16])
  {
  }

  if (v240 != v239)
  {
  }

LABEL_150:
  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFActionItem *)self label];
  v6 = [v5 copy];
  [v4 setLabel:v6];

  v7 = [(SFActionItem *)self labelForLocalMedia];
  v8 = [v7 copy];
  [v4 setLabelForLocalMedia:v8];

  [v4 setIsOverlay:{-[SFActionItem isOverlay](self, "isOverlay")}];
  v9 = [(SFActionItem *)self storeIdentifiers];
  v10 = [v9 copy];
  [v4 setStoreIdentifiers:v10];

  [v4 setRequiresLocalMedia:{-[SFActionItem requiresLocalMedia](self, "requiresLocalMedia")}];
  v11 = [(SFActionItem *)self localMediaIdentifier];
  v12 = [v11 copy];
  [v4 setLocalMediaIdentifier:v12];

  v13 = [(SFActionItem *)self punchout];
  v14 = [v13 copy];
  [v4 setPunchout:v14];

  v15 = [(SFActionItem *)self applicationBundleIdentifier];
  v16 = [v15 copy];
  [v4 setApplicationBundleIdentifier:v16];

  v17 = [(SFActionItem *)self contactIdentifier];
  v18 = [v17 copy];
  [v4 setContactIdentifier:v18];

  v19 = [(SFActionItem *)self phoneNumber];
  v20 = [v19 copy];
  [v4 setPhoneNumber:v20];

  v21 = [(SFActionItem *)self email];
  v22 = [v21 copy];
  [v4 setEmail:v22];

  v23 = [(SFActionItem *)self mapsData];
  v24 = [v23 copy];
  [v4 setMapsData:v24];

  [(SFActionItem *)self latitude];
  [v4 setLatitude:?];
  [(SFActionItem *)self longitude];
  [v4 setLongitude:?];
  v25 = [(SFActionItem *)self provider];
  v26 = [v25 copy];
  [v4 setProvider:v26];

  v27 = [(SFActionItem *)self offerType];
  v28 = [v27 copy];
  [v4 setOfferType:v28];

  v29 = [(SFActionItem *)self type];
  v30 = [v29 copy];
  [v4 setType:v30];

  v31 = [(SFActionItem *)self labelITunes];
  v32 = [v31 copy];
  [v4 setLabelITunes:v32];

  [v4 setIsITunes:{-[SFActionItem isITunes](self, "isITunes")}];
  v33 = [(SFActionItem *)self icon];
  v34 = [v33 copy];
  [v4 setIcon:v34];

  v35 = [(SFActionItem *)self baseIcon];
  v36 = [v35 copy];
  [v4 setBaseIcon:v36];

  v37 = [(SFActionItem *)self location];
  v38 = [v37 copy];
  [v4 setLocation:v38];

  v39 = [(SFActionItem *)self messageIdentifier];
  v40 = [v39 copy];
  [v4 setMessageIdentifier:v40];

  v41 = [(SFActionItem *)self messageURL];
  v42 = [v41 copy];
  [v4 setMessageURL:v42];

  v43 = [(SFActionItem *)self persistentID];
  v44 = [v43 copy];
  [v4 setPersistentID:v44];

  [v4 setMediaEntityType:{-[SFActionItem mediaEntityType](self, "mediaEntityType")}];
  v45 = [(SFActionItem *)self universalLibraryID];
  v46 = [v45 copy];
  [v4 setUniversalLibraryID:v46];

  v47 = [(SFActionItem *)self interactionContentType];
  v48 = [v47 copy];
  [v4 setInteractionContentType:v48];

  v49 = [(SFActionItem *)self customDirectionsPunchout];
  v50 = [v49 copy];
  [v4 setCustomDirectionsPunchout:v50];

  [v4 setShouldSearchDirectionsAlongCurrentRoute:{-[SFActionItem shouldSearchDirectionsAlongCurrentRoute](self, "shouldSearchDirectionsAlongCurrentRoute")}];
  [v4 setDirectionsMode:{-[SFActionItem directionsMode](self, "directionsMode")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBActionItem alloc] initWithFacade:self];
  v3 = [(_SFPBActionItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBActionItem alloc] initWithFacade:self];
  v3 = [(_SFPBActionItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBActionItem alloc] initWithFacade:self];
  v5 = [(_SFPBActionItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFActionItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBActionItem alloc] initWithData:v5];
  v7 = [(SFActionItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFActionItem)initWithProtobuf:(id)a3
{
  v82 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v80.receiver = self;
  v80.super_class = SFActionItem;
  v5 = [(SFActionItem *)&v80 init];

  if (v5)
  {
    v6 = [v4 label];

    if (v6)
    {
      v7 = [v4 label];
      [(SFActionItem *)v5 setLabel:v7];
    }

    v8 = [v4 labelForLocalMedia];

    if (v8)
    {
      v9 = [v4 labelForLocalMedia];
      [(SFActionItem *)v5 setLabelForLocalMedia:v9];
    }

    if ([v4 isOverlay])
    {
      -[SFActionItem setIsOverlay:](v5, "setIsOverlay:", [v4 isOverlay]);
    }

    v10 = [v4 storeIdentifiers];
    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v12 = [v4 storeIdentifiers];
    v13 = [v12 countByEnumeratingWithState:&v76 objects:v81 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v77;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v77 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v76 + 1) + 8 * i);
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v76 objects:v81 count:16];
      }

      while (v14);
    }

    [(SFActionItem *)v5 setStoreIdentifiers:v11];
    if ([v4 requiresLocalMedia])
    {
      -[SFActionItem setRequiresLocalMedia:](v5, "setRequiresLocalMedia:", [v4 requiresLocalMedia]);
    }

    v18 = [v4 localMediaIdentifier];

    if (v18)
    {
      v19 = [v4 localMediaIdentifier];
      [(SFActionItem *)v5 setLocalMediaIdentifier:v19];
    }

    v20 = [v4 punchout];

    if (v20)
    {
      v21 = [SFPunchout alloc];
      v22 = [v4 punchout];
      v23 = [(SFPunchout *)v21 initWithProtobuf:v22];
      [(SFActionItem *)v5 setPunchout:v23];
    }

    v24 = [v4 applicationBundleIdentifier];

    if (v24)
    {
      v25 = [v4 applicationBundleIdentifier];
      [(SFActionItem *)v5 setApplicationBundleIdentifier:v25];
    }

    v26 = [v4 contactIdentifier];

    if (v26)
    {
      v27 = [v4 contactIdentifier];
      [(SFActionItem *)v5 setContactIdentifier:v27];
    }

    v28 = [v4 phoneNumber];

    if (v28)
    {
      v29 = [v4 phoneNumber];
      [(SFActionItem *)v5 setPhoneNumber:v29];
    }

    v30 = [v4 email];

    if (v30)
    {
      v31 = [v4 email];
      [(SFActionItem *)v5 setEmail:v31];
    }

    v32 = [v4 mapsData];

    if (v32)
    {
      v33 = [v4 mapsData];
      [(SFActionItem *)v5 setMapsData:v33];
    }

    v34 = [v4 latitude];

    if (v34)
    {
      v35 = [v4 latitude];
      [v35 doubleValue];
      [(SFActionItem *)v5 setLatitude:?];
    }

    v36 = [v4 longitude];

    if (v36)
    {
      v37 = [v4 longitude];
      [v37 doubleValue];
      [(SFActionItem *)v5 setLongitude:?];
    }

    v38 = [v4 provider];

    if (v38)
    {
      v39 = [v4 provider];
      [(SFActionItem *)v5 setProvider:v39];
    }

    v40 = [v4 offerType];

    if (v40)
    {
      v41 = [v4 offerType];
      [(SFActionItem *)v5 setOfferType:v41];
    }

    v42 = [v4 type];

    if (v42)
    {
      v43 = [v4 type];
      [(SFActionItem *)v5 setType:v43];
    }

    v44 = [v4 labelITunes];

    if (v44)
    {
      v45 = [v4 labelITunes];
      [(SFActionItem *)v5 setLabelITunes:v45];
    }

    if ([v4 isITunes])
    {
      -[SFActionItem setIsITunes:](v5, "setIsITunes:", [v4 isITunes]);
    }

    v46 = [v4 icon];

    if (v46)
    {
      v47 = [SFImage alloc];
      v48 = [v4 icon];
      v49 = [(SFImage *)v47 initWithProtobuf:v48];
      [(SFActionItem *)v5 setIcon:v49];
    }

    v50 = [v4 baseIcon];

    if (v50)
    {
      v51 = [SFImage alloc];
      v52 = [v4 baseIcon];
      v53 = [(SFImage *)v51 initWithProtobuf:v52];
      [(SFActionItem *)v5 setBaseIcon:v53];
    }

    v54 = [v4 location];

    if (v54)
    {
      v55 = [SFLatLng alloc];
      v56 = [v4 location];
      v57 = [(SFLatLng *)v55 initWithProtobuf:v56];
      [(SFActionItem *)v5 setLocation:v57];
    }

    v58 = [v4 messageIdentifier];

    if (v58)
    {
      v59 = [v4 messageIdentifier];
      [(SFActionItem *)v5 setMessageIdentifier:v59];
    }

    v60 = [v4 messageURL];

    if (v60)
    {
      v61 = [v4 messageURL];
      v62 = _SFPBURLHandwrittenTranslator(v61);
      [(SFActionItem *)v5 setMessageURL:v62];
    }

    v63 = [v4 persistentID];

    if (v63)
    {
      v64 = [v4 persistentID];
      [(SFActionItem *)v5 setPersistentID:v64];
    }

    if ([v4 mediaEntityType])
    {
      -[SFActionItem setMediaEntityType:](v5, "setMediaEntityType:", [v4 mediaEntityType]);
    }

    v65 = [v4 universalLibraryID];

    if (v65)
    {
      v66 = [v4 universalLibraryID];
      [(SFActionItem *)v5 setUniversalLibraryID:v66];
    }

    v67 = [v4 interactionContentType];

    if (v67)
    {
      v68 = [v4 interactionContentType];
      [(SFActionItem *)v5 setInteractionContentType:v68];
    }

    v69 = [v4 customDirectionsPunchout];

    if (v69)
    {
      v70 = [SFPunchout alloc];
      v71 = [v4 customDirectionsPunchout];
      v72 = [(SFPunchout *)v70 initWithProtobuf:v71];
      [(SFActionItem *)v5 setCustomDirectionsPunchout:v72];
    }

    if ([v4 shouldSearchDirectionsAlongCurrentRoute])
    {
      -[SFActionItem setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [v4 shouldSearchDirectionsAlongCurrentRoute]);
    }

    if ([v4 directionsMode])
    {
      -[SFActionItem setDirectionsMode:](v5, "setDirectionsMode:", [v4 directionsMode]);
    }

    v73 = v5;
  }

  v74 = *MEMORY[0x1E69E9840];
  return v5;
}

@end