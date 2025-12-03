@interface SFActionItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFActionItem)initWithCoder:(id)coder;
- (SFActionItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFActionItem

- (unint64_t)hash
{
  label = [(SFActionItem *)self label];
  v3 = [label hash];
  labelForLocalMedia = [(SFActionItem *)self labelForLocalMedia];
  v4 = [labelForLocalMedia hash] ^ v3;
  v5 = v4 ^ [(SFActionItem *)self isOverlay];
  storeIdentifiers = [(SFActionItem *)self storeIdentifiers];
  v6 = [storeIdentifiers hash];
  v7 = v5 ^ v6 ^ [(SFActionItem *)self requiresLocalMedia];
  localMediaIdentifier = [(SFActionItem *)self localMediaIdentifier];
  v8 = [localMediaIdentifier hash];
  punchout = [(SFActionItem *)self punchout];
  v9 = v8 ^ [punchout hash];
  applicationBundleIdentifier = [(SFActionItem *)self applicationBundleIdentifier];
  v10 = v9 ^ [applicationBundleIdentifier hash];
  contactIdentifier = [(SFActionItem *)self contactIdentifier];
  v55 = v7 ^ v10 ^ [contactIdentifier hash];
  phoneNumber = [(SFActionItem *)self phoneNumber];
  v11 = [phoneNumber hash];
  email = [(SFActionItem *)self email];
  v12 = v11 ^ [email hash];
  mapsData = [(SFActionItem *)self mapsData];
  v52 = v12 ^ [mapsData hash];
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
  provider = [(SFActionItem *)self provider];
  v45 = [provider hash];
  offerType = [(SFActionItem *)self offerType];
  v43 = [offerType hash];
  type = [(SFActionItem *)self type];
  v42 = [type hash];
  labelITunes = [(SFActionItem *)self labelITunes];
  v40 = [labelITunes hash];
  isITunes = [(SFActionItem *)self isITunes];
  icon = [(SFActionItem *)self icon];
  v37 = [icon hash];
  baseIcon = [(SFActionItem *)self baseIcon];
  v35 = [baseIcon hash];
  location = [(SFActionItem *)self location];
  v34 = [location hash];
  messageIdentifier = [(SFActionItem *)self messageIdentifier];
  v33 = [messageIdentifier hash];
  messageURL = [(SFActionItem *)self messageURL];
  v32 = [messageURL hash];
  persistentID = [(SFActionItem *)self persistentID];
  v31 = [persistentID hash];
  mediaEntityType = [(SFActionItem *)self mediaEntityType];
  universalLibraryID = [(SFActionItem *)self universalLibraryID];
  v23 = [universalLibraryID hash];
  interactionContentType = [(SFActionItem *)self interactionContentType];
  v25 = [interactionContentType hash];
  customDirectionsPunchout = [(SFActionItem *)self customDirectionsPunchout];
  v27 = [customDirectionsPunchout hash];
  shouldSearchDirectionsAlongCurrentRoute = [(SFActionItem *)self shouldSearchDirectionsAlongCurrentRoute];
  v29 = v40 ^ isITunes ^ v37 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ mediaEntityType ^ v23 ^ v25 ^ v27 ^ shouldSearchDirectionsAlongCurrentRoute ^ [(SFActionItem *)self directionsMode];

  return v55 ^ v52 ^ v45 ^ v43 ^ v49 ^ v47 ^ v42 ^ v29;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
    goto LABEL_150;
  }

  if (![(SFActionItem *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v17 = 0;
    goto LABEL_150;
  }

  v7 = equalCopy;
  label = [(SFActionItem *)self label];
  label2 = [(SFActionItem *)v7 label];
  v239 = label2 == 0;
  v240 = label != 0;
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

  label3 = [(SFActionItem *)self label];
  customDirectionsPunchout2 = label3 != 0;
  v195 = label3;
  if (label3)
  {
    label4 = [(SFActionItem *)self label];
    [(SFActionItem *)v7 label];
    v191 = v192 = label4;
    if (![label4 isEqual:?])
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

  labelForLocalMedia = [(SFActionItem *)self labelForLocalMedia];
  labelForLocalMedia2 = [(SFActionItem *)v7 labelForLocalMedia];
  *&v238[16] = customDirectionsPunchout2;
  if ((labelForLocalMedia != 0) == (labelForLocalMedia2 == 0))
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

  labelForLocalMedia3 = [(SFActionItem *)self labelForLocalMedia];
  customDirectionsPunchout3 = labelForLocalMedia3 != 0;
  v190 = labelForLocalMedia3;
  if (labelForLocalMedia3)
  {
    labelForLocalMedia4 = [(SFActionItem *)self labelForLocalMedia];
    [(SFActionItem *)v7 labelForLocalMedia];
    v188 = v189 = labelForLocalMedia4;
    if (![labelForLocalMedia4 isEqual:?])
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

  isOverlay = [(SFActionItem *)self isOverlay];
  *&v238[12] = customDirectionsPunchout3;
  if (isOverlay != [(SFActionItem *)v7 isOverlay])
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

  storeIdentifiers = [(SFActionItem *)self storeIdentifiers];
  storeIdentifiers2 = [(SFActionItem *)v7 storeIdentifiers];
  if ((storeIdentifiers != 0) == (storeIdentifiers2 == 0))
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

  storeIdentifiers3 = [(SFActionItem *)self storeIdentifiers];
  v30 = storeIdentifiers3 != 0;
  v185 = storeIdentifiers3;
  if (storeIdentifiers3)
  {
    storeIdentifiers4 = [(SFActionItem *)self storeIdentifiers];
    [(SFActionItem *)v7 storeIdentifiers];
    v183 = v184 = storeIdentifiers4;
    if (![storeIdentifiers4 isEqual:?])
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

  requiresLocalMedia = [(SFActionItem *)self requiresLocalMedia];
  if (requiresLocalMedia != [(SFActionItem *)v7 requiresLocalMedia])
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

  localMediaIdentifier = [(SFActionItem *)self localMediaIdentifier];
  localMediaIdentifier2 = [(SFActionItem *)v7 localMediaIdentifier];
  if ((localMediaIdentifier != 0) == (localMediaIdentifier2 == 0))
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

  localMediaIdentifier3 = [(SFActionItem *)self localMediaIdentifier];
  v34 = localMediaIdentifier3 != 0;
  v180 = localMediaIdentifier3;
  if (localMediaIdentifier3)
  {
    localMediaIdentifier4 = [(SFActionItem *)self localMediaIdentifier];
    [(SFActionItem *)v7 localMediaIdentifier];
    v176 = v177 = localMediaIdentifier4;
    if (![localMediaIdentifier4 isEqual:?])
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

  punchout = [(SFActionItem *)self punchout];
  punchout2 = [(SFActionItem *)v7 punchout];
  if ((punchout != 0) == (punchout2 == 0))
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

  punchout3 = [(SFActionItem *)self punchout];
  v37 = punchout3 != 0;
  v175 = punchout3;
  if (punchout3)
  {
    punchout4 = [(SFActionItem *)self punchout];
    [(SFActionItem *)v7 punchout];
    v171 = v172 = punchout4;
    if (![punchout4 isEqual:?])
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

  applicationBundleIdentifier = [(SFActionItem *)self applicationBundleIdentifier];
  applicationBundleIdentifier2 = [(SFActionItem *)v7 applicationBundleIdentifier];
  if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
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
    applicationBundleIdentifier3 = [(SFActionItem *)self applicationBundleIdentifier];
    v249 = applicationBundleIdentifier3 != 0;
    v170 = applicationBundleIdentifier3;
    if (!applicationBundleIdentifier3 || (-[SFActionItem applicationBundleIdentifier](self, "applicationBundleIdentifier"), v40 = objc_claimAutoreleasedReturnValue(), -[SFActionItem applicationBundleIdentifier](v7, "applicationBundleIdentifier"), v167 = v40, v166 = objc_claimAutoreleasedReturnValue(), [v40 isEqual:?]))
    {
      contactIdentifier = [(SFActionItem *)self contactIdentifier];
      contactIdentifier2 = [(SFActionItem *)v7 contactIdentifier];
      if ((contactIdentifier != 0) == (contactIdentifier2 == 0))
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
        contactIdentifier3 = [(SFActionItem *)self contactIdentifier];
        v248 = contactIdentifier3 != 0;
        v165 = contactIdentifier3;
        if (!contactIdentifier3 || (-[SFActionItem contactIdentifier](self, "contactIdentifier"), v42 = objc_claimAutoreleasedReturnValue(), -[SFActionItem contactIdentifier](v7, "contactIdentifier"), v162 = v42, v161 = objc_claimAutoreleasedReturnValue(), [v42 isEqual:?]))
        {
          phoneNumber = [(SFActionItem *)self phoneNumber];
          phoneNumber2 = [(SFActionItem *)v7 phoneNumber];
          if ((phoneNumber != 0) == (phoneNumber2 == 0))
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
            phoneNumber3 = [(SFActionItem *)self phoneNumber];
            v247 = phoneNumber3 != 0;
            v160 = phoneNumber3;
            if (!phoneNumber3 || (-[SFActionItem phoneNumber](self, "phoneNumber"), v44 = objc_claimAutoreleasedReturnValue(), -[SFActionItem phoneNumber](v7, "phoneNumber"), v157 = v44, v156 = objc_claimAutoreleasedReturnValue(), [v44 isEqual:?]))
            {
              email = [(SFActionItem *)self email];
              email2 = [(SFActionItem *)v7 email];
              if ((email != 0) == (email2 == 0))
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
                email3 = [(SFActionItem *)self email];
                v246 = email3 != 0;
                v155 = email3;
                if (!email3 || (-[SFActionItem email](self, "email"), v46 = objc_claimAutoreleasedReturnValue(), -[SFActionItem email](v7, "email"), v152 = v46, v151 = objc_claimAutoreleasedReturnValue(), [v46 isEqual:?]))
                {
                  mapsData = [(SFActionItem *)self mapsData];
                  mapsData2 = [(SFActionItem *)v7 mapsData];
                  if ((mapsData != 0) == (mapsData2 == 0))
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
                    mapsData3 = [(SFActionItem *)self mapsData];
                    v245 = mapsData3 != 0;
                    v150 = mapsData3;
                    if (!mapsData3 || (-[SFActionItem mapsData](self, "mapsData"), v48 = objc_claimAutoreleasedReturnValue(), -[SFActionItem mapsData](v7, "mapsData"), v148 = objc_claimAutoreleasedReturnValue(), v149 = v48, [v48 isEqual:?]))
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
                        provider = [(SFActionItem *)self provider];
                        provider2 = [(SFActionItem *)v7 provider];
                        if ((provider != 0) == (provider2 == 0))
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
                          provider3 = [(SFActionItem *)self provider];
                          v244 = provider3 != 0;
                          v145 = provider3;
                          if (!provider3 || (-[SFActionItem provider](self, "provider"), v56 = objc_claimAutoreleasedReturnValue(), -[SFActionItem provider](v7, "provider"), v141 = objc_claimAutoreleasedReturnValue(), v142 = v56, [v56 isEqual:?]))
                          {
                            offerType = [(SFActionItem *)self offerType];
                            offerType2 = [(SFActionItem *)v7 offerType];
                            if ((offerType != 0) == (offerType2 == 0))
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
                              offerType3 = [(SFActionItem *)self offerType];
                              v243 = offerType3 != 0;
                              v140 = offerType3;
                              if (!offerType3 || (-[SFActionItem offerType](self, "offerType"), v58 = objc_claimAutoreleasedReturnValue(), -[SFActionItem offerType](v7, "offerType"), v136 = objc_claimAutoreleasedReturnValue(), v137 = v58, [v58 isEqual:?]))
                              {
                                type = [(SFActionItem *)self type];
                                type2 = [(SFActionItem *)v7 type];
                                if ((type != 0) == (type2 == 0))
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
                                  type3 = [(SFActionItem *)self type];
                                  v237 = type3 != 0;
                                  v135 = type3;
                                  if (!type3 || (-[SFActionItem type](self, "type"), v60 = objc_claimAutoreleasedReturnValue(), -[SFActionItem type](v7, "type"), v133 = objc_claimAutoreleasedReturnValue(), v134 = v60, [v60 isEqual:?]))
                                  {
                                    labelITunes = [(SFActionItem *)self labelITunes];
                                    labelITunes2 = [(SFActionItem *)v7 labelITunes];
                                    if ((labelITunes != 0) == (labelITunes2 == 0))
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
                                      labelITunes3 = [(SFActionItem *)self labelITunes];
                                      v236 = labelITunes3 != 0;
                                      v130 = labelITunes3;
                                      if (!labelITunes3 || (-[SFActionItem labelITunes](self, "labelITunes"), v62 = objc_claimAutoreleasedReturnValue(), -[SFActionItem labelITunes](v7, "labelITunes"), v128 = objc_claimAutoreleasedReturnValue(), v129 = v62, [v62 isEqual:?]))
                                      {
                                        isITunes = [(SFActionItem *)self isITunes];
                                        if (isITunes == [(SFActionItem *)v7 isITunes])
                                        {
                                          icon = [(SFActionItem *)self icon];
                                          icon2 = [(SFActionItem *)v7 icon];
                                          if ((icon != 0) == (icon2 == 0))
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
                                            icon3 = [(SFActionItem *)self icon];
                                            v235 = icon3 != 0;
                                            v121 = icon3;
                                            if (!icon3 || (-[SFActionItem icon](self, "icon"), v65 = objc_claimAutoreleasedReturnValue(), -[SFActionItem icon](v7, "icon"), v126 = objc_claimAutoreleasedReturnValue(), v127 = v65, [v65 isEqual:?]))
                                            {
                                              baseIcon = [(SFActionItem *)self baseIcon];
                                              baseIcon2 = [(SFActionItem *)v7 baseIcon];
                                              if ((baseIcon != 0) == (baseIcon2 == 0))
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
                                                baseIcon3 = [(SFActionItem *)self baseIcon];
                                                v234 = baseIcon3 != 0;
                                                v116 = baseIcon3;
                                                if (!baseIcon3 || (-[SFActionItem baseIcon](self, "baseIcon"), v67 = objc_claimAutoreleasedReturnValue(), -[SFActionItem baseIcon](v7, "baseIcon"), v124 = v67, v122 = objc_claimAutoreleasedReturnValue(), [v67 isEqual:?]))
                                                {
                                                  location = [(SFActionItem *)self location];
                                                  location2 = [(SFActionItem *)v7 location];
                                                  if ((location != 0) == (location2 == 0))
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
                                                    location3 = [(SFActionItem *)self location];
                                                    v233 = location3 != 0;
                                                    v111 = location3;
                                                    if (!location3 || (-[SFActionItem location](self, "location"), v69 = objc_claimAutoreleasedReturnValue(), -[SFActionItem location](v7, "location"), v118 = objc_claimAutoreleasedReturnValue(), v119 = v69, [v69 isEqual:?]))
                                                    {
                                                      messageIdentifier = [(SFActionItem *)self messageIdentifier];
                                                      messageIdentifier2 = [(SFActionItem *)v7 messageIdentifier];
                                                      if ((messageIdentifier != 0) == (messageIdentifier2 == 0))
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
                                                        messageIdentifier3 = [(SFActionItem *)self messageIdentifier];
                                                        v232 = messageIdentifier3 != 0;
                                                        v106 = messageIdentifier3;
                                                        if (!messageIdentifier3 || (-[SFActionItem messageIdentifier](self, "messageIdentifier"), v71 = objc_claimAutoreleasedReturnValue(), -[SFActionItem messageIdentifier](v7, "messageIdentifier"), v113 = objc_claimAutoreleasedReturnValue(), v114 = v71, [v71 isEqual:?]))
                                                        {
                                                          messageURL = [(SFActionItem *)self messageURL];
                                                          messageURL2 = [(SFActionItem *)v7 messageURL];
                                                          if ((messageURL != 0) == (messageURL2 == 0))
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
                                                            messageURL3 = [(SFActionItem *)self messageURL];
                                                            v231 = messageURL3 != 0;
                                                            v101 = messageURL3;
                                                            if (!messageURL3 || (-[SFActionItem messageURL](self, "messageURL"), v73 = objc_claimAutoreleasedReturnValue(), -[SFActionItem messageURL](v7, "messageURL"), v109 = v73, v107 = objc_claimAutoreleasedReturnValue(), [v73 isEqual:?]))
                                                            {
                                                              persistentID = [(SFActionItem *)self persistentID];
                                                              persistentID2 = [(SFActionItem *)v7 persistentID];
                                                              if ((persistentID != 0) == (persistentID2 == 0))
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
                                                                persistentID3 = [(SFActionItem *)self persistentID];
                                                                v230 = persistentID3 != 0;
                                                                v96 = persistentID3;
                                                                if (!persistentID3 || (-[SFActionItem persistentID](self, "persistentID"), v75 = objc_claimAutoreleasedReturnValue(), -[SFActionItem persistentID](v7, "persistentID"), v102 = objc_claimAutoreleasedReturnValue(), v103 = v75, [v75 isEqual:?]))
                                                                {
                                                                  mediaEntityType = [(SFActionItem *)self mediaEntityType];
                                                                  if (mediaEntityType == [(SFActionItem *)v7 mediaEntityType])
                                                                  {
                                                                    universalLibraryID = [(SFActionItem *)self universalLibraryID];
                                                                    universalLibraryID2 = [(SFActionItem *)v7 universalLibraryID];
                                                                    if ((universalLibraryID != 0) == (universalLibraryID2 == 0))
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
                                                                      universalLibraryID3 = [(SFActionItem *)self universalLibraryID];
                                                                      HIDWORD(v228) = universalLibraryID3 != 0;
                                                                      v91 = universalLibraryID3;
                                                                      if (!universalLibraryID3 || (-[SFActionItem universalLibraryID](self, "universalLibraryID"), v78 = objc_claimAutoreleasedReturnValue(), -[SFActionItem universalLibraryID](v7, "universalLibraryID"), v97 = objc_claimAutoreleasedReturnValue(), v98 = v78, [v78 isEqual:?]))
                                                                      {
                                                                        interactionContentType = [(SFActionItem *)self interactionContentType];
                                                                        v79 = interactionContentType != 0;
                                                                        interactionContentType2 = [(SFActionItem *)v7 interactionContentType];
                                                                        if (v79 == (interactionContentType2 == 0))
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
                                                                          interactionContentType3 = [(SFActionItem *)self interactionContentType];
                                                                          LODWORD(v228) = interactionContentType3 != 0;
                                                                          v88 = interactionContentType3;
                                                                          if (!interactionContentType3 || (-[SFActionItem interactionContentType](self, "interactionContentType"), v79 = objc_claimAutoreleasedReturnValue(), -[SFActionItem interactionContentType](v7, "interactionContentType"), v92 = objc_claimAutoreleasedReturnValue(), v93 = v79, [v79 isEqual:?]))
                                                                          {
                                                                            customDirectionsPunchout = [(SFActionItem *)self customDirectionsPunchout];
                                                                            customDirectionsPunchout3 = customDirectionsPunchout != 0;
                                                                            customDirectionsPunchout2 = [(SFActionItem *)v7 customDirectionsPunchout];
                                                                            if (customDirectionsPunchout3 == (customDirectionsPunchout2 == 0))
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
                                                                              customDirectionsPunchout3 = [(SFActionItem *)self customDirectionsPunchout];
                                                                              if (!customDirectionsPunchout3 || (-[SFActionItem customDirectionsPunchout](self, "customDirectionsPunchout"), v81 = objc_claimAutoreleasedReturnValue(), -[SFActionItem customDirectionsPunchout](v7, "customDirectionsPunchout"), v82 = objc_claimAutoreleasedReturnValue(), v87 = v81, v83 = v81, v79 = v82, [v83 isEqual:?]))
                                                                              {
                                                                                shouldSearchDirectionsAlongCurrentRoute = [(SFActionItem *)self shouldSearchDirectionsAlongCurrentRoute];
                                                                                if (shouldSearchDirectionsAlongCurrentRoute == [(SFActionItem *)v7 shouldSearchDirectionsAlongCurrentRoute])
                                                                                {
                                                                                  directionsMode = [(SFActionItem *)self directionsMode];
                                                                                  v17 = directionsMode == [(SFActionItem *)v7 directionsMode];
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
                                                                                v16 = customDirectionsPunchout3 != 0;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  label = [(SFActionItem *)self label];
  v6 = [label copy];
  [v4 setLabel:v6];

  labelForLocalMedia = [(SFActionItem *)self labelForLocalMedia];
  v8 = [labelForLocalMedia copy];
  [v4 setLabelForLocalMedia:v8];

  [v4 setIsOverlay:{-[SFActionItem isOverlay](self, "isOverlay")}];
  storeIdentifiers = [(SFActionItem *)self storeIdentifiers];
  v10 = [storeIdentifiers copy];
  [v4 setStoreIdentifiers:v10];

  [v4 setRequiresLocalMedia:{-[SFActionItem requiresLocalMedia](self, "requiresLocalMedia")}];
  localMediaIdentifier = [(SFActionItem *)self localMediaIdentifier];
  v12 = [localMediaIdentifier copy];
  [v4 setLocalMediaIdentifier:v12];

  punchout = [(SFActionItem *)self punchout];
  v14 = [punchout copy];
  [v4 setPunchout:v14];

  applicationBundleIdentifier = [(SFActionItem *)self applicationBundleIdentifier];
  v16 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v16];

  contactIdentifier = [(SFActionItem *)self contactIdentifier];
  v18 = [contactIdentifier copy];
  [v4 setContactIdentifier:v18];

  phoneNumber = [(SFActionItem *)self phoneNumber];
  v20 = [phoneNumber copy];
  [v4 setPhoneNumber:v20];

  email = [(SFActionItem *)self email];
  v22 = [email copy];
  [v4 setEmail:v22];

  mapsData = [(SFActionItem *)self mapsData];
  v24 = [mapsData copy];
  [v4 setMapsData:v24];

  [(SFActionItem *)self latitude];
  [v4 setLatitude:?];
  [(SFActionItem *)self longitude];
  [v4 setLongitude:?];
  provider = [(SFActionItem *)self provider];
  v26 = [provider copy];
  [v4 setProvider:v26];

  offerType = [(SFActionItem *)self offerType];
  v28 = [offerType copy];
  [v4 setOfferType:v28];

  type = [(SFActionItem *)self type];
  v30 = [type copy];
  [v4 setType:v30];

  labelITunes = [(SFActionItem *)self labelITunes];
  v32 = [labelITunes copy];
  [v4 setLabelITunes:v32];

  [v4 setIsITunes:{-[SFActionItem isITunes](self, "isITunes")}];
  icon = [(SFActionItem *)self icon];
  v34 = [icon copy];
  [v4 setIcon:v34];

  baseIcon = [(SFActionItem *)self baseIcon];
  v36 = [baseIcon copy];
  [v4 setBaseIcon:v36];

  location = [(SFActionItem *)self location];
  v38 = [location copy];
  [v4 setLocation:v38];

  messageIdentifier = [(SFActionItem *)self messageIdentifier];
  v40 = [messageIdentifier copy];
  [v4 setMessageIdentifier:v40];

  messageURL = [(SFActionItem *)self messageURL];
  v42 = [messageURL copy];
  [v4 setMessageURL:v42];

  persistentID = [(SFActionItem *)self persistentID];
  v44 = [persistentID copy];
  [v4 setPersistentID:v44];

  [v4 setMediaEntityType:{-[SFActionItem mediaEntityType](self, "mediaEntityType")}];
  universalLibraryID = [(SFActionItem *)self universalLibraryID];
  v46 = [universalLibraryID copy];
  [v4 setUniversalLibraryID:v46];

  interactionContentType = [(SFActionItem *)self interactionContentType];
  v48 = [interactionContentType copy];
  [v4 setInteractionContentType:v48];

  customDirectionsPunchout = [(SFActionItem *)self customDirectionsPunchout];
  v50 = [customDirectionsPunchout copy];
  [v4 setCustomDirectionsPunchout:v50];

  [v4 setShouldSearchDirectionsAlongCurrentRoute:{-[SFActionItem shouldSearchDirectionsAlongCurrentRoute](self, "shouldSearchDirectionsAlongCurrentRoute")}];
  [v4 setDirectionsMode:{-[SFActionItem directionsMode](self, "directionsMode")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBActionItem alloc] initWithFacade:self];
  jsonData = [(_SFPBActionItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBActionItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBActionItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBActionItem alloc] initWithFacade:self];
  data = [(_SFPBActionItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFActionItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBActionItem alloc] initWithData:v5];
  v7 = [(SFActionItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFActionItem)initWithProtobuf:(id)protobuf
{
  v82 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v80.receiver = self;
  v80.super_class = SFActionItem;
  v5 = [(SFActionItem *)&v80 init];

  if (v5)
  {
    label = [protobufCopy label];

    if (label)
    {
      label2 = [protobufCopy label];
      [(SFActionItem *)v5 setLabel:label2];
    }

    labelForLocalMedia = [protobufCopy labelForLocalMedia];

    if (labelForLocalMedia)
    {
      labelForLocalMedia2 = [protobufCopy labelForLocalMedia];
      [(SFActionItem *)v5 setLabelForLocalMedia:labelForLocalMedia2];
    }

    if ([protobufCopy isOverlay])
    {
      -[SFActionItem setIsOverlay:](v5, "setIsOverlay:", [protobufCopy isOverlay]);
    }

    storeIdentifiers = [protobufCopy storeIdentifiers];
    if (storeIdentifiers)
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
    storeIdentifiers2 = [protobufCopy storeIdentifiers];
    v13 = [storeIdentifiers2 countByEnumeratingWithState:&v76 objects:v81 count:16];
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
            objc_enumerationMutation(storeIdentifiers2);
          }

          v17 = *(*(&v76 + 1) + 8 * i);
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [storeIdentifiers2 countByEnumeratingWithState:&v76 objects:v81 count:16];
      }

      while (v14);
    }

    [(SFActionItem *)v5 setStoreIdentifiers:v11];
    if ([protobufCopy requiresLocalMedia])
    {
      -[SFActionItem setRequiresLocalMedia:](v5, "setRequiresLocalMedia:", [protobufCopy requiresLocalMedia]);
    }

    localMediaIdentifier = [protobufCopy localMediaIdentifier];

    if (localMediaIdentifier)
    {
      localMediaIdentifier2 = [protobufCopy localMediaIdentifier];
      [(SFActionItem *)v5 setLocalMediaIdentifier:localMediaIdentifier2];
    }

    punchout = [protobufCopy punchout];

    if (punchout)
    {
      v21 = [SFPunchout alloc];
      punchout2 = [protobufCopy punchout];
      v23 = [(SFPunchout *)v21 initWithProtobuf:punchout2];
      [(SFActionItem *)v5 setPunchout:v23];
    }

    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFActionItem *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    contactIdentifier = [protobufCopy contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [protobufCopy contactIdentifier];
      [(SFActionItem *)v5 setContactIdentifier:contactIdentifier2];
    }

    phoneNumber = [protobufCopy phoneNumber];

    if (phoneNumber)
    {
      phoneNumber2 = [protobufCopy phoneNumber];
      [(SFActionItem *)v5 setPhoneNumber:phoneNumber2];
    }

    email = [protobufCopy email];

    if (email)
    {
      email2 = [protobufCopy email];
      [(SFActionItem *)v5 setEmail:email2];
    }

    mapsData = [protobufCopy mapsData];

    if (mapsData)
    {
      mapsData2 = [protobufCopy mapsData];
      [(SFActionItem *)v5 setMapsData:mapsData2];
    }

    latitude = [protobufCopy latitude];

    if (latitude)
    {
      latitude2 = [protobufCopy latitude];
      [latitude2 doubleValue];
      [(SFActionItem *)v5 setLatitude:?];
    }

    longitude = [protobufCopy longitude];

    if (longitude)
    {
      longitude2 = [protobufCopy longitude];
      [longitude2 doubleValue];
      [(SFActionItem *)v5 setLongitude:?];
    }

    provider = [protobufCopy provider];

    if (provider)
    {
      provider2 = [protobufCopy provider];
      [(SFActionItem *)v5 setProvider:provider2];
    }

    offerType = [protobufCopy offerType];

    if (offerType)
    {
      offerType2 = [protobufCopy offerType];
      [(SFActionItem *)v5 setOfferType:offerType2];
    }

    type = [protobufCopy type];

    if (type)
    {
      type2 = [protobufCopy type];
      [(SFActionItem *)v5 setType:type2];
    }

    labelITunes = [protobufCopy labelITunes];

    if (labelITunes)
    {
      labelITunes2 = [protobufCopy labelITunes];
      [(SFActionItem *)v5 setLabelITunes:labelITunes2];
    }

    if ([protobufCopy isITunes])
    {
      -[SFActionItem setIsITunes:](v5, "setIsITunes:", [protobufCopy isITunes]);
    }

    icon = [protobufCopy icon];

    if (icon)
    {
      v47 = [SFImage alloc];
      icon2 = [protobufCopy icon];
      v49 = [(SFImage *)v47 initWithProtobuf:icon2];
      [(SFActionItem *)v5 setIcon:v49];
    }

    baseIcon = [protobufCopy baseIcon];

    if (baseIcon)
    {
      v51 = [SFImage alloc];
      baseIcon2 = [protobufCopy baseIcon];
      v53 = [(SFImage *)v51 initWithProtobuf:baseIcon2];
      [(SFActionItem *)v5 setBaseIcon:v53];
    }

    location = [protobufCopy location];

    if (location)
    {
      v55 = [SFLatLng alloc];
      location2 = [protobufCopy location];
      v57 = [(SFLatLng *)v55 initWithProtobuf:location2];
      [(SFActionItem *)v5 setLocation:v57];
    }

    messageIdentifier = [protobufCopy messageIdentifier];

    if (messageIdentifier)
    {
      messageIdentifier2 = [protobufCopy messageIdentifier];
      [(SFActionItem *)v5 setMessageIdentifier:messageIdentifier2];
    }

    messageURL = [protobufCopy messageURL];

    if (messageURL)
    {
      messageURL2 = [protobufCopy messageURL];
      v62 = _SFPBURLHandwrittenTranslator(messageURL2);
      [(SFActionItem *)v5 setMessageURL:v62];
    }

    persistentID = [protobufCopy persistentID];

    if (persistentID)
    {
      persistentID2 = [protobufCopy persistentID];
      [(SFActionItem *)v5 setPersistentID:persistentID2];
    }

    if ([protobufCopy mediaEntityType])
    {
      -[SFActionItem setMediaEntityType:](v5, "setMediaEntityType:", [protobufCopy mediaEntityType]);
    }

    universalLibraryID = [protobufCopy universalLibraryID];

    if (universalLibraryID)
    {
      universalLibraryID2 = [protobufCopy universalLibraryID];
      [(SFActionItem *)v5 setUniversalLibraryID:universalLibraryID2];
    }

    interactionContentType = [protobufCopy interactionContentType];

    if (interactionContentType)
    {
      interactionContentType2 = [protobufCopy interactionContentType];
      [(SFActionItem *)v5 setInteractionContentType:interactionContentType2];
    }

    customDirectionsPunchout = [protobufCopy customDirectionsPunchout];

    if (customDirectionsPunchout)
    {
      v70 = [SFPunchout alloc];
      customDirectionsPunchout2 = [protobufCopy customDirectionsPunchout];
      v72 = [(SFPunchout *)v70 initWithProtobuf:customDirectionsPunchout2];
      [(SFActionItem *)v5 setCustomDirectionsPunchout:v72];
    }

    if ([protobufCopy shouldSearchDirectionsAlongCurrentRoute])
    {
      -[SFActionItem setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [protobufCopy shouldSearchDirectionsAlongCurrentRoute]);
    }

    if ([protobufCopy directionsMode])
    {
      -[SFActionItem setDirectionsMode:](v5, "setDirectionsMode:", [protobufCopy directionsMode]);
    }

    v73 = v5;
  }

  v74 = *MEMORY[0x1E69E9840];
  return v5;
}

@end