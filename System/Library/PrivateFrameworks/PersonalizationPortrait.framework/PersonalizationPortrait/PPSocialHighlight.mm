@interface PPSocialHighlight
- (PPSocialHighlight)initWithCoder:(id)coder;
- (PPSocialHighlight)initWithIdentifier:(id)identifier resourceURL:(id)l timestamp:(id)timestamp attributionIdentifiers:(id)identifiers supplementaryData:(id)data score:(id)score;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSocialHighlight

- (PPSocialHighlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = MEMORY[0x1E69C5D78];
  v5 = objc_opt_class();
  v6 = pp_social_highlights_log_handle();
  v38 = [v4 robustDecodeObjectOfClass:v5 forKey:@"id" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v6];

  v7 = MEMORY[0x1E69C5D78];
  v8 = objc_opt_class();
  v9 = pp_social_highlights_log_handle();
  v37 = [v7 robustDecodeObjectOfClass:v8 forKey:@"ru" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v9];

  v10 = MEMORY[0x1E69C5D78];
  v11 = objc_opt_class();
  v12 = pp_social_highlights_log_handle();
  v13 = [v10 robustDecodeObjectOfClass:v11 forKey:@"ts" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v12];

  v14 = MEMORY[0x1E69C5D78];
  v15 = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x1E695DFD8]);
  v17 = objc_opt_class();
  v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v15);
  v19 = pp_social_highlights_log_handle();
  v20 = [v14 robustDecodeObjectOfClasses:v18 forKey:@"at" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v19];

  v21 = MEMORY[0x1E69C5D78];
  v22 = objc_autoreleasePoolPush();
  v23 = objc_alloc(MEMORY[0x1E695DFD8]);
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [v23 initWithObjects:{v24, v25, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v22);
  v27 = pp_social_highlights_log_handle();
  v28 = [v21 robustDecodeObjectOfClasses:v26 forKey:@"sd" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v27];

  v29 = MEMORY[0x1E69C5D78];
  v30 = objc_opt_class();
  v31 = pp_social_highlights_log_handle();
  v32 = [v29 robustDecodeObjectOfClass:v30 forKey:@"sc" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v31];

  v33 = 0;
  if (v38)
  {
    selfCopy2 = self;
    v35 = v37;
    if (v37 && v13 && v20 && v28)
    {
      selfCopy2 = [(PPSocialHighlight *)self initWithIdentifier:v38 resourceURL:v37 timestamp:v13 attributionIdentifiers:v20 supplementaryData:v28 score:v32];
      v33 = selfCopy2;
    }
  }

  else
  {
    selfCopy2 = self;
    v35 = v37;
  }

  return v33;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"id"];
  [coderCopy encodeObject:self->_resourceURL forKey:@"ru"];
  [coderCopy encodeObject:self->_timestamp forKey:@"ts"];
  [coderCopy encodeObject:self->_attributionIdentifiers forKey:@"at"];
  [coderCopy encodeObject:self->_supplementaryData forKey:@"sd"];
  score = [(PPSocialHighlight *)self score];
  [coderCopy encodeObject:score forKey:@"sc"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(PPSocialHighlight *)self identifier];
  resourceURL = [(PPSocialHighlight *)self resourceURL];
  timestamp = [(PPSocialHighlight *)self timestamp];
  attributionIdentifiers = [(PPSocialHighlight *)self attributionIdentifiers];
  supplementaryData = [(PPSocialHighlight *)self supplementaryData];
  score = [(PPSocialHighlight *)self score];
  v10 = [v3 initWithFormat:@"<PPSocialHighlight id:'%@' ru:'%@' ts:'%@' at:'%@' sd:'%@' sc:'%@'>", identifier, resourceURL, timestamp, attributionIdentifiers, supplementaryData, score];

  return v10;
}

- (PPSocialHighlight)initWithIdentifier:(id)identifier resourceURL:(id)l timestamp:(id)timestamp attributionIdentifiers:(id)identifiers supplementaryData:(id)data score:(id)score
{
  identifierCopy = identifier;
  lCopy = l;
  timestampCopy = timestamp;
  identifiersCopy = identifiers;
  dataCopy = data;
  scoreCopy = score;
  v24.receiver = self;
  v24.super_class = PPSocialHighlight;
  v18 = [(PPSocialHighlight *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_resourceURL, l);
    objc_storeStrong(&v19->_timestamp, timestamp);
    objc_storeStrong(&v19->_attributionIdentifiers, identifiers);
    objc_storeStrong(&v19->_supplementaryData, data);
    objc_storeStrong(&v19->_score, score);
  }

  return v19;
}

@end