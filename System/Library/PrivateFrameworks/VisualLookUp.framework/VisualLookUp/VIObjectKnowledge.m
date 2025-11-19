@interface VIObjectKnowledge
- (BOOL)isEqual:(id)a3;
- (VIObjectKnowledge)initWithCoder:(id)a3;
- (VIObjectKnowledge)initWithKnowledgeGraphID:(id)a3 title:(id)a4 thumbnailURL:(id)a5 thumbnailAspectRatio:(float)a6 shortDescription:(id)a7 detailedDescription:(id)a8 webURL:(id)a9 knowledgeProperties:(id)a10 serializedDomainType:(int64_t)a11 serializedDomainResponse:(id)a12;
- (VIObjectKnowledge)initWithKnowledgeGraphID:(id)a3 title:(id)a4 thumbnailURL:(id)a5 thumbnailAspectRatio:(float)a6 shortDescription:(id)a7 detailedDescription:(id)a8 webURL:(id)a9 knowledgeProperties:(id)a10 serializedDomainType:(int64_t)a11 serializedDomainResponse:(id)a12 csuQid:(unint64_t)a13 csuIdType:(signed __int16)a14 csuLocalizedLabel:(id)a15 csuLocalizedLabelDictionary:(id)a16 csuConfidence:(double)a17 csuSensitiveLocation:(BOOL)a18 csuCategory:(id)a19 csuVertical:(id)a20 csuLocalizedSynonyms:(id)a21 csuLongitute:(double)a22 csuLatitute:(double)a23 csuVersion:(int)a24;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VIObjectKnowledge

- (VIObjectKnowledge)initWithKnowledgeGraphID:(id)a3 title:(id)a4 thumbnailURL:(id)a5 thumbnailAspectRatio:(float)a6 shortDescription:(id)a7 detailedDescription:(id)a8 webURL:(id)a9 knowledgeProperties:(id)a10 serializedDomainType:(int64_t)a11 serializedDomainResponse:(id)a12 csuQid:(unint64_t)a13 csuIdType:(signed __int16)a14 csuLocalizedLabel:(id)a15 csuLocalizedLabelDictionary:(id)a16 csuConfidence:(double)a17 csuSensitiveLocation:(BOOL)a18 csuCategory:(id)a19 csuVertical:(id)a20 csuLocalizedSynonyms:(id)a21 csuLongitute:(double)a22 csuLatitute:(double)a23 csuVersion:(int)a24
{
  v69 = a3;
  v74 = a4;
  v73 = a5;
  v72 = a7;
  v71 = a8;
  v70 = a9;
  v33 = a10;
  v34 = a12;
  v35 = a15;
  v36 = a16;
  v37 = a19;
  v38 = a20;
  v39 = a21;
  v75.receiver = self;
  v75.super_class = VIObjectKnowledge;
  v40 = [(VIObjectKnowledge *)&v75 init];
  if (v40)
  {
    v41 = [v69 copy];
    knowledgeGraphID = v40->_knowledgeGraphID;
    v40->_knowledgeGraphID = v41;

    v43 = [v74 copy];
    title = v40->_title;
    v40->_title = v43;

    v45 = [v73 copy];
    thumbnailURL = v40->_thumbnailURL;
    v40->_thumbnailURL = v45;

    v40->_thumbnailAspectRatio = a6;
    v47 = [v72 copy];
    shortDescription = v40->_shortDescription;
    v40->_shortDescription = v47;

    v49 = [v71 copy];
    detailedDescription = v40->_detailedDescription;
    v40->_detailedDescription = v49;

    v51 = [v70 copy];
    webURL = v40->_webURL;
    v40->_webURL = v51;

    v53 = [v33 copy];
    knowledgeProperties = v40->_knowledgeProperties;
    v40->_knowledgeProperties = v53;

    v40->_serializedDomainType = a11;
    v55 = [v34 copy];
    serializedDomainResponse = v40->_serializedDomainResponse;
    v40->_serializedDomainResponse = v55;

    v40->_csuQid = a13;
    v40->_csuIdType = a14;
    v57 = [v35 copy];
    csuLocalizedLabel = v40->_csuLocalizedLabel;
    v40->_csuLocalizedLabel = v57;

    v59 = [v36 copy];
    csuLocalizedLabelDictionary = v40->_csuLocalizedLabelDictionary;
    v40->_csuLocalizedLabelDictionary = v59;

    v40->_csuConfidence = a17;
    v40->_csuSensitiveLocation = a18;
    v61 = [v37 copy];
    csuCategory = v40->_csuCategory;
    v40->_csuCategory = v61;

    v63 = [v38 copy];
    csuVertical = v40->_csuVertical;
    v40->_csuVertical = v63;

    v65 = [v39 copy];
    csuLocalizedSynonymsDictionary = v40->_csuLocalizedSynonymsDictionary;
    v40->_csuLocalizedSynonymsDictionary = v65;

    v40->_csuLongitute = a22;
    v40->_csuLatitute = a23;
    v40->_csuVersion = a24;
  }

  return v40;
}

- (VIObjectKnowledge)initWithKnowledgeGraphID:(id)a3 title:(id)a4 thumbnailURL:(id)a5 thumbnailAspectRatio:(float)a6 shortDescription:(id)a7 detailedDescription:(id)a8 webURL:(id)a9 knowledgeProperties:(id)a10 serializedDomainType:(int64_t)a11 serializedDomainResponse:(id)a12
{
  v43[1] = *MEMORY[0x1E69E9840];
  v19 = MEMORY[0x1E695DF58];
  v36 = a12;
  v20 = a10;
  v35 = a9;
  v34 = a8;
  v21 = a7;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v39 = [v19 currentLocale];
  v42 = v39;
  v43[0] = v23;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v33 = [MEMORY[0x1E695DF58] currentLocale];
  v40 = v33;
  v25 = objc_opt_new();
  v41 = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  LODWORD(v31) = 0;
  LOBYTE(v30) = 0;
  LOWORD(v29) = 0;
  *&v27 = a6;
  v38 = [(VIObjectKnowledge *)self initWithKnowledgeGraphID:v24 title:v23 thumbnailURL:v22 thumbnailAspectRatio:v21 shortDescription:v34 detailedDescription:v35 webURL:v27 knowledgeProperties:1.0 serializedDomainType:0.0 serializedDomainResponse:0.0 csuQid:v20 csuIdType:a11 csuLocalizedLabel:v36 csuLocalizedLabelDictionary:0 csuConfidence:v29 csuSensitiveLocation:v23 csuCategory:v32 csuVertical:v30 csuLocalizedSynonyms:&stru_1F553A170 csuLongitute:&stru_1F553A170 csuLatitute:v26 csuVersion:v31];

  return v38;
}

- (VIObjectKnowledge)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VIObjectKnowledge *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"knowledgeGraphID"];
    knowledgeGraphID = v5->_knowledgeGraphID;
    v5->_knowledgeGraphID = v6;

    v8 = [v4 decodeObjectForKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectForKey:@"thumbnailURL"];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v10;

    v12 = [v4 decodeObjectForKey:@"thumbnailAspectRatio"];
    [v12 floatValue];
    v5->_thumbnailAspectRatio = v13;

    v14 = [v4 decodeObjectForKey:@"shortDecription"];
    shortDescription = v5->_shortDescription;
    v5->_shortDescription = v14;

    v16 = [v4 decodeObjectForKey:@"detailedDescription"];
    detailedDescription = v5->_detailedDescription;
    v5->_detailedDescription = v16;

    v18 = [v4 decodeObjectForKey:@"webURL"];
    webURL = v5->_webURL;
    v5->_webURL = v18;

    v20 = [v4 decodeObjectForKey:@"knowledgeProperties"];
    knowledgeProperties = v5->_knowledgeProperties;
    v5->_knowledgeProperties = v20;

    v22 = [v4 decodeObjectForKey:@"serializedDomainType"];
    v5->_serializedDomainType = [v22 integerValue];

    v23 = [v4 decodeObjectForKey:@"serializedDomainResponse"];
    serializedDomainResponse = v5->_serializedDomainResponse;
    v5->_serializedDomainResponse = v23;

    v25 = [v4 decodeObjectForKey:@"csuQid"];
    v5->_csuQid = [v25 unsignedLongLongValue];

    v26 = [v4 decodeObjectForKey:@"csuQid"];
    v5->_csuIdType = [v26 shortValue];

    v27 = [v4 decodeObjectForKey:@"csuLocalizedLabel"];
    csuLocalizedLabel = v5->_csuLocalizedLabel;
    v5->_csuLocalizedLabel = v27;

    v29 = [v4 decodeObjectForKey:@"csuLocalizedLabelDictionary"];
    csuLocalizedLabelDictionary = v5->_csuLocalizedLabelDictionary;
    v5->_csuLocalizedLabelDictionary = v29;

    v31 = [v4 decodeObjectForKey:@"csuConfidence"];
    [v31 doubleValue];
    v5->_csuConfidence = v32;

    v33 = [v4 decodeObjectForKey:@"csuSensitiveLocation"];
    v5->_csuSensitiveLocation = [v33 BOOLValue];

    v34 = [v4 decodeObjectForKey:@"csuCategory"];
    csuCategory = v5->_csuCategory;
    v5->_csuCategory = v34;

    v36 = [v4 decodeObjectForKey:@"csuVertical"];
    csuVertical = v5->_csuVertical;
    v5->_csuVertical = v36;

    v38 = [v4 decodeObjectForKey:@"csuLocalizedSynonymsDictionary"];
    csuLocalizedSynonymsDictionary = v5->_csuLocalizedSynonymsDictionary;
    v5->_csuLocalizedSynonymsDictionary = v38;

    v40 = [v4 decodeObjectForKey:@"csuLongitute"];
    [v40 doubleValue];
    v5->_csuLongitute = v41;

    v42 = [v4 decodeObjectForKey:@"csuLatitute"];
    [v42 doubleValue];
    v5->_csuLatitute = v43;

    v44 = [v4 decodeObjectForKey:@"csuVersion"];
    v5->_csuVersion = [v44 intValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  knowledgeGraphID = self->_knowledgeGraphID;
  v5 = a3;
  [v5 encodeObject:knowledgeGraphID forKey:@"knowledgeGraphID"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_thumbnailURL forKey:@"thumbnailURL"];
  *&v6 = self->_thumbnailAspectRatio;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v5 encodeObject:v7 forKey:@"thumbnailAspectRatio"];

  [v5 encodeObject:self->_shortDescription forKey:@"shortDecription"];
  [v5 encodeObject:self->_detailedDescription forKey:@"detailedDescription"];
  [v5 encodeObject:self->_webURL forKey:@"webURL"];
  [v5 encodeObject:self->_knowledgeProperties forKey:@"knowledgeProperties"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_serializedDomainType];
  [v5 encodeObject:v8 forKey:@"serializedDomainType"];

  [v5 encodeObject:self->_serializedDomainResponse forKey:@"serializedDomainResponse"];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_csuQid];
  [v5 encodeObject:v9 forKey:@"csuQid"];

  v10 = [MEMORY[0x1E696AD98] numberWithShort:self->_csuIdType];
  [v5 encodeObject:v10 forKey:@"csuIdType"];

  [v5 encodeObject:self->_csuLocalizedLabel forKey:@"csuLocalizedLabel"];
  [v5 encodeObject:self->_csuLocalizedLabelDictionary forKey:@"csuLocalizedLabelDictionary"];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_csuConfidence];
  [v5 encodeObject:v11 forKey:@"csuConfidence"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_csuSensitiveLocation];
  [v5 encodeObject:v12 forKey:@"csuSensitiveLocation"];

  [v5 encodeObject:self->_csuCategory forKey:@"csuCategory"];
  [v5 encodeObject:self->_csuVertical forKey:@"csuVertical"];
  [v5 encodeObject:self->_csuLocalizedSynonymsDictionary forKey:@"csuLocalizedSynonymsDictionary"];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_csuLongitute];
  [v5 encodeObject:v13 forKey:@"csuLongitute"];

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_csuLatitute];
  [v5 encodeObject:v14 forKey:@"csuLatitute"];

  v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_csuVersion];
  [v5 encodeObject:v15 forKey:@"csuVersion"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [(VIObjectKnowledge *)v6 knowledgeGraphID];
    if (VIObjectIsEqual(v7, self->_knowledgeGraphID))
    {
      v8 = [(VIObjectKnowledge *)v6 title];
      if (VIObjectIsEqual(v8, self->_title))
      {
        v9 = [(VIObjectKnowledge *)v6 thumbnailURL];
        if (VIObjectIsEqual(v9, self->_thumbnailURL) && ([(VIObjectKnowledge *)v6 thumbnailAspectRatio], VICompareFloat(v10, self->_thumbnailAspectRatio)))
        {
          v11 = [(VIObjectKnowledge *)v6 shortDescription];
          if (VIObjectIsEqual(v11, self->_shortDescription))
          {
            v12 = [(VIObjectKnowledge *)v6 detailedDescription];
            if (VIObjectIsEqual(v12, self->_detailedDescription))
            {
              v13 = [(VIObjectKnowledge *)v6 webURL];
              if (VIObjectIsEqual(v13, self->_webURL))
              {
                v14 = [(VIObjectKnowledge *)v6 knowledgeProperties];
                if (VIObjectIsEqual(v14, self->_knowledgeProperties))
                {
                  v20 = [(VIObjectKnowledge *)v6 csuLocalizedLabel];
                  if (VIObjectIsEqual(v20, self->_csuLocalizedLabel) && ([(VIObjectKnowledge *)v6 csuConfidence], VICompareDouble(v15, self->_csuConfidence)))
                  {
                    v19 = [(VIObjectKnowledge *)v6 csuCategory];
                    if (VIObjectIsEqual(v19, self->_csuCategory))
                    {
                      v18 = [(VIObjectKnowledge *)v6 csuVertical];
                      v16 = VIObjectIsEqual(v18, self->_csuVertical) && VICompareUInt64([(VIObjectKnowledge *)v6 csuQid], self->_csuQid) && self->_csuSensitiveLocation == [(VIObjectKnowledge *)v6 csuSensitiveLocation]&& [(VIObjectKnowledge *)v6 csuVersion]== self->_csuVersion;
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