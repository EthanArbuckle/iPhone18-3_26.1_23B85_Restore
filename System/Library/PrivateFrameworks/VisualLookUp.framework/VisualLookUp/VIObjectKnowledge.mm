@interface VIObjectKnowledge
- (BOOL)isEqual:(id)equal;
- (VIObjectKnowledge)initWithCoder:(id)coder;
- (VIObjectKnowledge)initWithKnowledgeGraphID:(id)d title:(id)title thumbnailURL:(id)l thumbnailAspectRatio:(float)ratio shortDescription:(id)description detailedDescription:(id)detailedDescription webURL:(id)rL knowledgeProperties:(id)self0 serializedDomainType:(int64_t)self1 serializedDomainResponse:(id)self2;
- (VIObjectKnowledge)initWithKnowledgeGraphID:(id)d title:(id)title thumbnailURL:(id)l thumbnailAspectRatio:(float)ratio shortDescription:(id)description detailedDescription:(id)detailedDescription webURL:(id)rL knowledgeProperties:(id)self0 serializedDomainType:(int64_t)self1 serializedDomainResponse:(id)self2 csuQid:(unint64_t)self3 csuIdType:(signed __int16)self4 csuLocalizedLabel:(id)self5 csuLocalizedLabelDictionary:(id)self6 csuConfidence:(double)self7 csuSensitiveLocation:(BOOL)self8 csuCategory:(id)self9 csuVertical:(id)vertical csuLocalizedSynonyms:(id)synonyms csuLongitute:(double)longitute csuLatitute:(double)latitute csuVersion:(int)version;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VIObjectKnowledge

- (VIObjectKnowledge)initWithKnowledgeGraphID:(id)d title:(id)title thumbnailURL:(id)l thumbnailAspectRatio:(float)ratio shortDescription:(id)description detailedDescription:(id)detailedDescription webURL:(id)rL knowledgeProperties:(id)self0 serializedDomainType:(int64_t)self1 serializedDomainResponse:(id)self2 csuQid:(unint64_t)self3 csuIdType:(signed __int16)self4 csuLocalizedLabel:(id)self5 csuLocalizedLabelDictionary:(id)self6 csuConfidence:(double)self7 csuSensitiveLocation:(BOOL)self8 csuCategory:(id)self9 csuVertical:(id)vertical csuLocalizedSynonyms:(id)synonyms csuLongitute:(double)longitute csuLatitute:(double)latitute csuVersion:(int)version
{
  dCopy = d;
  titleCopy = title;
  lCopy = l;
  descriptionCopy = description;
  detailedDescriptionCopy = detailedDescription;
  rLCopy = rL;
  propertiesCopy = properties;
  responseCopy = response;
  labelCopy = label;
  dictionaryCopy = dictionary;
  categoryCopy = category;
  verticalCopy = vertical;
  synonymsCopy = synonyms;
  v75.receiver = self;
  v75.super_class = VIObjectKnowledge;
  v40 = [(VIObjectKnowledge *)&v75 init];
  if (v40)
  {
    v41 = [dCopy copy];
    knowledgeGraphID = v40->_knowledgeGraphID;
    v40->_knowledgeGraphID = v41;

    v43 = [titleCopy copy];
    title = v40->_title;
    v40->_title = v43;

    v45 = [lCopy copy];
    thumbnailURL = v40->_thumbnailURL;
    v40->_thumbnailURL = v45;

    v40->_thumbnailAspectRatio = ratio;
    v47 = [descriptionCopy copy];
    shortDescription = v40->_shortDescription;
    v40->_shortDescription = v47;

    v49 = [detailedDescriptionCopy copy];
    detailedDescription = v40->_detailedDescription;
    v40->_detailedDescription = v49;

    v51 = [rLCopy copy];
    webURL = v40->_webURL;
    v40->_webURL = v51;

    v53 = [propertiesCopy copy];
    knowledgeProperties = v40->_knowledgeProperties;
    v40->_knowledgeProperties = v53;

    v40->_serializedDomainType = type;
    v55 = [responseCopy copy];
    serializedDomainResponse = v40->_serializedDomainResponse;
    v40->_serializedDomainResponse = v55;

    v40->_csuQid = qid;
    v40->_csuIdType = idType;
    v57 = [labelCopy copy];
    csuLocalizedLabel = v40->_csuLocalizedLabel;
    v40->_csuLocalizedLabel = v57;

    v59 = [dictionaryCopy copy];
    csuLocalizedLabelDictionary = v40->_csuLocalizedLabelDictionary;
    v40->_csuLocalizedLabelDictionary = v59;

    v40->_csuConfidence = confidence;
    v40->_csuSensitiveLocation = location;
    v61 = [categoryCopy copy];
    csuCategory = v40->_csuCategory;
    v40->_csuCategory = v61;

    v63 = [verticalCopy copy];
    csuVertical = v40->_csuVertical;
    v40->_csuVertical = v63;

    v65 = [synonymsCopy copy];
    csuLocalizedSynonymsDictionary = v40->_csuLocalizedSynonymsDictionary;
    v40->_csuLocalizedSynonymsDictionary = v65;

    v40->_csuLongitute = longitute;
    v40->_csuLatitute = latitute;
    v40->_csuVersion = version;
  }

  return v40;
}

- (VIObjectKnowledge)initWithKnowledgeGraphID:(id)d title:(id)title thumbnailURL:(id)l thumbnailAspectRatio:(float)ratio shortDescription:(id)description detailedDescription:(id)detailedDescription webURL:(id)rL knowledgeProperties:(id)self0 serializedDomainType:(int64_t)self1 serializedDomainResponse:(id)self2
{
  v43[1] = *MEMORY[0x1E69E9840];
  v19 = MEMORY[0x1E695DF58];
  responseCopy = response;
  propertiesCopy = properties;
  rLCopy = rL;
  detailedDescriptionCopy = detailedDescription;
  descriptionCopy = description;
  lCopy = l;
  titleCopy = title;
  dCopy = d;
  currentLocale = [v19 currentLocale];
  v42 = currentLocale;
  v43[0] = titleCopy;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
  v40 = currentLocale2;
  v25 = objc_opt_new();
  v41 = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  LODWORD(v31) = 0;
  LOBYTE(v30) = 0;
  LOWORD(v29) = 0;
  *&v27 = ratio;
  v38 = [(VIObjectKnowledge *)self initWithKnowledgeGraphID:dCopy title:titleCopy thumbnailURL:lCopy thumbnailAspectRatio:descriptionCopy shortDescription:detailedDescriptionCopy detailedDescription:rLCopy webURL:v27 knowledgeProperties:1.0 serializedDomainType:0.0 serializedDomainResponse:0.0 csuQid:propertiesCopy csuIdType:type csuLocalizedLabel:responseCopy csuLocalizedLabelDictionary:0 csuConfidence:v29 csuSensitiveLocation:titleCopy csuCategory:v32 csuVertical:v30 csuLocalizedSynonyms:&stru_1F553A170 csuLongitute:&stru_1F553A170 csuLatitute:v26 csuVersion:v31];

  return v38;
}

- (VIObjectKnowledge)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VIObjectKnowledge *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"knowledgeGraphID"];
    knowledgeGraphID = v5->_knowledgeGraphID;
    v5->_knowledgeGraphID = v6;

    v8 = [coderCopy decodeObjectForKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectForKey:@"thumbnailURL"];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v10;

    v12 = [coderCopy decodeObjectForKey:@"thumbnailAspectRatio"];
    [v12 floatValue];
    v5->_thumbnailAspectRatio = v13;

    v14 = [coderCopy decodeObjectForKey:@"shortDecription"];
    shortDescription = v5->_shortDescription;
    v5->_shortDescription = v14;

    v16 = [coderCopy decodeObjectForKey:@"detailedDescription"];
    detailedDescription = v5->_detailedDescription;
    v5->_detailedDescription = v16;

    v18 = [coderCopy decodeObjectForKey:@"webURL"];
    webURL = v5->_webURL;
    v5->_webURL = v18;

    v20 = [coderCopy decodeObjectForKey:@"knowledgeProperties"];
    knowledgeProperties = v5->_knowledgeProperties;
    v5->_knowledgeProperties = v20;

    v22 = [coderCopy decodeObjectForKey:@"serializedDomainType"];
    v5->_serializedDomainType = [v22 integerValue];

    v23 = [coderCopy decodeObjectForKey:@"serializedDomainResponse"];
    serializedDomainResponse = v5->_serializedDomainResponse;
    v5->_serializedDomainResponse = v23;

    v25 = [coderCopy decodeObjectForKey:@"csuQid"];
    v5->_csuQid = [v25 unsignedLongLongValue];

    v26 = [coderCopy decodeObjectForKey:@"csuQid"];
    v5->_csuIdType = [v26 shortValue];

    v27 = [coderCopy decodeObjectForKey:@"csuLocalizedLabel"];
    csuLocalizedLabel = v5->_csuLocalizedLabel;
    v5->_csuLocalizedLabel = v27;

    v29 = [coderCopy decodeObjectForKey:@"csuLocalizedLabelDictionary"];
    csuLocalizedLabelDictionary = v5->_csuLocalizedLabelDictionary;
    v5->_csuLocalizedLabelDictionary = v29;

    v31 = [coderCopy decodeObjectForKey:@"csuConfidence"];
    [v31 doubleValue];
    v5->_csuConfidence = v32;

    v33 = [coderCopy decodeObjectForKey:@"csuSensitiveLocation"];
    v5->_csuSensitiveLocation = [v33 BOOLValue];

    v34 = [coderCopy decodeObjectForKey:@"csuCategory"];
    csuCategory = v5->_csuCategory;
    v5->_csuCategory = v34;

    v36 = [coderCopy decodeObjectForKey:@"csuVertical"];
    csuVertical = v5->_csuVertical;
    v5->_csuVertical = v36;

    v38 = [coderCopy decodeObjectForKey:@"csuLocalizedSynonymsDictionary"];
    csuLocalizedSynonymsDictionary = v5->_csuLocalizedSynonymsDictionary;
    v5->_csuLocalizedSynonymsDictionary = v38;

    v40 = [coderCopy decodeObjectForKey:@"csuLongitute"];
    [v40 doubleValue];
    v5->_csuLongitute = v41;

    v42 = [coderCopy decodeObjectForKey:@"csuLatitute"];
    [v42 doubleValue];
    v5->_csuLatitute = v43;

    v44 = [coderCopy decodeObjectForKey:@"csuVersion"];
    v5->_csuVersion = [v44 intValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  knowledgeGraphID = self->_knowledgeGraphID;
  coderCopy = coder;
  [coderCopy encodeObject:knowledgeGraphID forKey:@"knowledgeGraphID"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_thumbnailURL forKey:@"thumbnailURL"];
  *&v6 = self->_thumbnailAspectRatio;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [coderCopy encodeObject:v7 forKey:@"thumbnailAspectRatio"];

  [coderCopy encodeObject:self->_shortDescription forKey:@"shortDecription"];
  [coderCopy encodeObject:self->_detailedDescription forKey:@"detailedDescription"];
  [coderCopy encodeObject:self->_webURL forKey:@"webURL"];
  [coderCopy encodeObject:self->_knowledgeProperties forKey:@"knowledgeProperties"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_serializedDomainType];
  [coderCopy encodeObject:v8 forKey:@"serializedDomainType"];

  [coderCopy encodeObject:self->_serializedDomainResponse forKey:@"serializedDomainResponse"];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_csuQid];
  [coderCopy encodeObject:v9 forKey:@"csuQid"];

  v10 = [MEMORY[0x1E696AD98] numberWithShort:self->_csuIdType];
  [coderCopy encodeObject:v10 forKey:@"csuIdType"];

  [coderCopy encodeObject:self->_csuLocalizedLabel forKey:@"csuLocalizedLabel"];
  [coderCopy encodeObject:self->_csuLocalizedLabelDictionary forKey:@"csuLocalizedLabelDictionary"];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_csuConfidence];
  [coderCopy encodeObject:v11 forKey:@"csuConfidence"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_csuSensitiveLocation];
  [coderCopy encodeObject:v12 forKey:@"csuSensitiveLocation"];

  [coderCopy encodeObject:self->_csuCategory forKey:@"csuCategory"];
  [coderCopy encodeObject:self->_csuVertical forKey:@"csuVertical"];
  [coderCopy encodeObject:self->_csuLocalizedSynonymsDictionary forKey:@"csuLocalizedSynonymsDictionary"];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_csuLongitute];
  [coderCopy encodeObject:v13 forKey:@"csuLongitute"];

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_csuLatitute];
  [coderCopy encodeObject:v14 forKey:@"csuLatitute"];

  v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_csuVersion];
  [coderCopy encodeObject:v15 forKey:@"csuVersion"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    knowledgeGraphID = [(VIObjectKnowledge *)v6 knowledgeGraphID];
    if (VIObjectIsEqual(knowledgeGraphID, self->_knowledgeGraphID))
    {
      title = [(VIObjectKnowledge *)v6 title];
      if (VIObjectIsEqual(title, self->_title))
      {
        thumbnailURL = [(VIObjectKnowledge *)v6 thumbnailURL];
        if (VIObjectIsEqual(thumbnailURL, self->_thumbnailURL) && ([(VIObjectKnowledge *)v6 thumbnailAspectRatio], VICompareFloat(v10, self->_thumbnailAspectRatio)))
        {
          shortDescription = [(VIObjectKnowledge *)v6 shortDescription];
          if (VIObjectIsEqual(shortDescription, self->_shortDescription))
          {
            detailedDescription = [(VIObjectKnowledge *)v6 detailedDescription];
            if (VIObjectIsEqual(detailedDescription, self->_detailedDescription))
            {
              webURL = [(VIObjectKnowledge *)v6 webURL];
              if (VIObjectIsEqual(webURL, self->_webURL))
              {
                knowledgeProperties = [(VIObjectKnowledge *)v6 knowledgeProperties];
                if (VIObjectIsEqual(knowledgeProperties, self->_knowledgeProperties))
                {
                  csuLocalizedLabel = [(VIObjectKnowledge *)v6 csuLocalizedLabel];
                  if (VIObjectIsEqual(csuLocalizedLabel, self->_csuLocalizedLabel) && ([(VIObjectKnowledge *)v6 csuConfidence], VICompareDouble(v15, self->_csuConfidence)))
                  {
                    csuCategory = [(VIObjectKnowledge *)v6 csuCategory];
                    if (VIObjectIsEqual(csuCategory, self->_csuCategory))
                    {
                      csuVertical = [(VIObjectKnowledge *)v6 csuVertical];
                      v16 = VIObjectIsEqual(csuVertical, self->_csuVertical) && VICompareUInt64([(VIObjectKnowledge *)v6 csuQid], self->_csuQid) && self->_csuSensitiveLocation == [(VIObjectKnowledge *)v6 csuSensitiveLocation]&& [(VIObjectKnowledge *)v6 csuVersion]== self->_csuVersion;
                    }

                    else
                    {
                      v16 = 0;
                    }
                  }

                  else
                  {
                    v16 = 0;
                  }
                }

                else
                {
                  v16 = 0;
                }
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_knowledgeGraphID hash];
  v4 = [(NSString *)self->_title hash];
  v5 = [(NSURL *)self->_thumbnailURL hash];
  thumbnailAspectRatio = self->_thumbnailAspectRatio;
  if (thumbnailAspectRatio < 0.0)
  {
    thumbnailAspectRatio = -thumbnailAspectRatio;
  }

  *v6.i32 = floorf(thumbnailAspectRatio + 0.5);
  v9 = (thumbnailAspectRatio - *v6.i32) * 1.8447e19;
  *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v6.i32[0] = vbslq_s8(v10, v7, v6).i32[0];
  v11 = 2654435761u * *v6.i32;
  v12 = v11 + v9;
  if (v9 <= 0.0)
  {
    v12 = 2654435761u * *v6.i32;
  }

  v13 = v11 - fabsf(v9);
  if (v9 < 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = [(NSString *)self->_shortDescription hash];
  v16 = [(NSString *)self->_detailedDescription hash];
  v17 = [(NSURL *)self->_webURL hash];
  v18 = [(NSArray *)self->_knowledgeProperties hash];
  v19 = [(NSString *)self->_csuLocalizedLabel hash];
  csuConfidence = self->_csuConfidence;
  if (csuConfidence < 0.0)
  {
    csuConfidence = -csuConfidence;
  }

  *v20.i64 = floor(csuConfidence + 0.5);
  v23 = (csuConfidence - *v20.i64) * 1.84467441e19;
  *v21.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  v20.i64[0] = vbslq_s8(vnegq_f64(v24), v21, v20).i64[0];
  v25 = 2654435761u * *v20.i64;
  v26 = v25 + v23;
  if (v23 <= 0.0)
  {
    v26 = 2654435761u * *v20.i64;
  }

  v27 = v25 - fabs(v23);
  if (v23 < 0.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  v29 = v4 ^ v3 ^ v5 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v14 ^ [(NSString *)self->_csuCategory hash];
  v30 = v29 ^ [(NSString *)self->_csuVertical hash];
  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", self->_csuQid];
  v32 = v30 ^ [v31 hash];

  return v32 ^ v28;
}

@end