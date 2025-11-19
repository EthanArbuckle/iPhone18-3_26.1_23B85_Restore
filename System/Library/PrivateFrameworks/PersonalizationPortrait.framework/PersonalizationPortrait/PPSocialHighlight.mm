@interface PPSocialHighlight
- (PPSocialHighlight)initWithCoder:(id)a3;
- (PPSocialHighlight)initWithIdentifier:(id)a3 resourceURL:(id)a4 timestamp:(id)a5 attributionIdentifiers:(id)a6 supplementaryData:(id)a7 score:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSocialHighlight

- (PPSocialHighlight)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69C5D78];
  v5 = objc_opt_class();
  v6 = pp_social_highlights_log_handle();
  v38 = [v4 robustDecodeObjectOfClass:v5 forKey:@"id" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v6];

  v7 = MEMORY[0x1E69C5D78];
  v8 = objc_opt_class();
  v9 = pp_social_highlights_log_handle();
  v37 = [v7 robustDecodeObjectOfClass:v8 forKey:@"ru" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v9];

  v10 = MEMORY[0x1E69C5D78];
  v11 = objc_opt_class();
  v12 = pp_social_highlights_log_handle();
  v13 = [v10 robustDecodeObjectOfClass:v11 forKey:@"ts" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v12];

  v14 = MEMORY[0x1E69C5D78];
  v15 = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x1E695DFD8]);
  v17 = objc_opt_class();
  v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v15);
  v19 = pp_social_highlights_log_handle();
  v20 = [v14 robustDecodeObjectOfClasses:v18 forKey:@"at" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v19];

  v21 = MEMORY[0x1E69C5D78];
  v22 = objc_autoreleasePoolPush();
  v23 = objc_alloc(MEMORY[0x1E695DFD8]);
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [v23 initWithObjects:{v24, v25, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v22);
  v27 = pp_social_highlights_log_handle();
  v28 = [v21 robustDecodeObjectOfClasses:v26 forKey:@"sd" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v27];

  v29 = MEMORY[0x1E69C5D78];
  v30 = objc_opt_class();
  v31 = pp_social_highlights_log_handle();
  v32 = [v29 robustDecodeObjectOfClass:v30 forKey:@"sc" withCoder:v3 expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v31];

  v33 = 0;
  if (v38)
  {
    v34 = self;
    v35 = v37;
    if (v37 && v13 && v20 && v28)
    {
      v34 = [(PPSocialHighlight *)self initWithIdentifier:v38 resourceURL:v37 timestamp:v13 attributionIdentifiers:v20 supplementaryData:v28 score:v32];
      v33 = v34;
    }
  }

  else
  {
    v34 = self;
    v35 = v37;
  }

  return v33;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"id"];
  [v5 encodeObject:self->_resourceURL forKey:@"ru"];
  [v5 encodeObject:self->_timestamp forKey:@"ts"];
  [v5 encodeObject:self->_attributionIdentifiers forKey:@"at"];
  [v5 encodeObject:self->_supplementaryData forKey:@"sd"];
  v6 = [(PPSocialHighlight *)self score];
  [v5 encodeObject:v6 forKey:@"sc"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PPSocialHighlight *)self identifier];
  v5 = [(PPSocialHighlight *)self resourceURL];
  v6 = [(PPSocialHighlight *)self timestamp];
  v7 = [(PPSocialHighlight *)self attributionIdentifiers];
  v8 = [(PPSocialHighlight *)self supplementaryData];
  v9 = [(PPSocialHighlight *)self score];
  v10 = [v3 initWithFormat:@"<PPSocialHighlight id:'%@' ru:'%@' ts:'%@' at:'%@' sd:'%@' sc:'%@'>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (PPSocialHighlight)initWithIdentifier:(id)a3 resourceURL:(id)a4 timestamp:(id)a5 attributionIdentifiers:(id)a6 supplementaryData:(id)a7 score:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = PPSocialHighlight;
  v18 = [(PPSocialHighlight *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(&v19->_resourceURL, a4);
    objc_storeStrong(&v19->_timestamp, a5);
    objc_storeStrong(&v19->_attributionIdentifiers, a6);
    objc_storeStrong(&v19->_supplementaryData, a7);
    objc_storeStrong(&v19->_score, a8);
  }

  return v19;
}

@end