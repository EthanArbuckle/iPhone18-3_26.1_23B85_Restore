@interface PPSocialAttribution
- (PPSocialAttribution)initWithCoder:(id)a3;
- (PPSocialAttribution)initWithIdentifier:(id)a3 sourceAppDisplayName:(id)a4 conversationIdentifier:(id)a5 groupPhotoPath:(id)a6 groupDisplayName:(id)a7 groupId:(id)a8 relatedPeople:(id)a9 sender:(id)a10 timestamp:(id)a11 collaborationMetadata:(id)a12 starred:(BOOL)a13 fromMe:(BOOL)a14;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSocialAttribution

- (PPSocialAttribution)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69C5D78];
  v5 = objc_opt_class();
  v6 = pp_social_highlights_log_handle();
  v50 = [v4 robustDecodeObjectOfClass:v5 forKey:@"id" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v6];

  v7 = MEMORY[0x1E69C5D78];
  v8 = objc_opt_class();
  v9 = pp_social_highlights_log_handle();
  v55 = [v7 robustDecodeObjectOfClass:v8 forKey:@"sa" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v9];

  v10 = MEMORY[0x1E69C5D78];
  v11 = objc_opt_class();
  v12 = pp_social_highlights_log_handle();
  v54 = [v10 robustDecodeObjectOfClass:v11 forKey:@"ci" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v12];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_opt_class();
  v15 = pp_social_highlights_log_handle();
  v53 = [v13 robustDecodeObjectOfClass:v14 forKey:@"gp" withCoder:v3 expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v15];

  v16 = MEMORY[0x1E69C5D78];
  v17 = objc_opt_class();
  v18 = pp_social_highlights_log_handle();
  v52 = [v16 robustDecodeObjectOfClass:v17 forKey:@"gd" withCoder:v3 expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v18];

  v19 = MEMORY[0x1E69C5D78];
  v20 = objc_autoreleasePoolPush();
  v21 = objc_alloc(MEMORY[0x1E695DFD8]);
  v22 = objc_opt_class();
  v23 = [v21 initWithObjects:{v22, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v20);
  v24 = pp_social_highlights_log_handle();
  v25 = [v19 robustDecodeObjectOfClasses:v23 forKey:@"rp" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v24];

  v26 = MEMORY[0x1E69C5D78];
  v27 = objc_opt_class();
  v28 = pp_social_highlights_log_handle();
  v29 = [v26 robustDecodeObjectOfClass:v27 forKey:@"se" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v28];

  v30 = MEMORY[0x1E69C5D78];
  v31 = objc_opt_class();
  v32 = pp_social_highlights_log_handle();
  v33 = [v30 robustDecodeObjectOfClass:v31 forKey:@"ts" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v32];

  v34 = MEMORY[0x1E69C5D78];
  v35 = objc_opt_class();
  v36 = pp_social_highlights_log_handle();
  v37 = [v34 robustDecodeObjectOfClass:v35 forKey:@"cmd" withCoder:v3 expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v36];

  v38 = MEMORY[0x1E69C5D78];
  v39 = objc_opt_class();
  v40 = pp_social_highlights_log_handle();
  v41 = [v38 robustDecodeObjectOfClass:v39 forKey:@"gid" withCoder:v3 expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v40];

  v42 = [v3 decodeBoolForKey:@"st"];
  v43 = [v3 decodeBoolForKey:@"fm"];
  v44 = [v3 error];

  if (v44)
  {
    v44 = 0;
    v46 = v50;
    v45 = self;
  }

  else
  {
    v46 = v50;
    if (v50 && v55 && v54 && v25 && v29 && v33)
    {
      if (v53 && v52 || ([v3 error], v47 = objc_claimAutoreleasedReturnValue(), v47, !v47))
      {
        BYTE1(v49) = v43;
        LOBYTE(v49) = v42;
        v45 = [(PPSocialAttribution *)self initWithIdentifier:v50 sourceAppDisplayName:v55 conversationIdentifier:v54 groupPhotoPath:v53 groupDisplayName:v52 groupId:v41 relatedPeople:v25 sender:v29 timestamp:v33 collaborationMetadata:v37 starred:v49 fromMe:?];
        v44 = v45;
        goto LABEL_15;
      }

      v44 = 0;
    }

    v45 = self;
  }

LABEL_15:

  return v44;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"id"];
  [v5 encodeObject:self->_sourceAppDisplayName forKey:@"sa"];
  [v5 encodeObject:self->_conversationIdentifier forKey:@"ci"];
  [v5 encodeObject:self->_groupPhotoPath forKey:@"gp"];
  [v5 encodeObject:self->_groupDisplayName forKey:@"gd"];
  [v5 encodeObject:self->_relatedPeople forKey:@"rp"];
  [v5 encodeObject:self->_sender forKey:@"se"];
  [v5 encodeObject:self->_timestamp forKey:@"ts"];
  [v5 encodeObject:self->_collaborationMetadata forKey:@"cmd"];
  [v5 encodeBool:self->_starred forKey:@"st"];
  [v5 encodeBool:self->_fromMe forKey:@"fm"];
  [v5 encodeObject:self->_groupId forKey:@"gid"];
}

- (id)description
{
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [(PPSocialAttribution *)self identifier];
  v14 = [(PPSocialAttribution *)self sourceAppDisplayName];
  v3 = [(PPSocialAttribution *)self conversationIdentifier];
  v4 = [(PPSocialAttribution *)self groupPhotoPath];
  v5 = [(PPSocialAttribution *)self groupDisplayName];
  v6 = [(PPSocialAttribution *)self relatedPeople];
  v7 = [(PPSocialAttribution *)self sender];
  v8 = [(PPSocialAttribution *)self timestamp];
  v9 = @"YES";
  if ([(PPSocialAttribution *)self isStarred])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (![(PPSocialAttribution *)self isFromMe])
  {
    v9 = @"NO";
  }

  v11 = [(PPSocialAttribution *)self groupId];
  v12 = [v16 initWithFormat:@"<PPSocialAttribution id:'%@' sa:'%@' ci:'%@' gp:'%@' gd:'%@' rp:'%@' se:'%@' ts:'%@' st:'%@' fm:'%@' gid:'%@'>", v15, v14, v3, v4, v5, v6, v7, v8, v10, v9, v11];

  return v12;
}

- (PPSocialAttribution)initWithIdentifier:(id)a3 sourceAppDisplayName:(id)a4 conversationIdentifier:(id)a5 groupPhotoPath:(id)a6 groupDisplayName:(id)a7 groupId:(id)a8 relatedPeople:(id)a9 sender:(id)a10 timestamp:(id)a11 collaborationMetadata:(id)a12 starred:(BOOL)a13 fromMe:(BOOL)a14
{
  v37 = a3;
  obj = a4;
  v36 = a4;
  v29 = a5;
  v35 = a5;
  v34 = a6;
  v30 = a7;
  v33 = a7;
  v31 = a8;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v38.receiver = self;
  v38.super_class = PPSocialAttribution;
  v25 = [(PPSocialAttribution *)&v38 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_identifier, a3);
    objc_storeStrong(&v26->_sourceAppDisplayName, obj);
    objc_storeStrong(&v26->_conversationIdentifier, v29);
    objc_storeStrong(&v26->_groupPhotoPath, a6);
    objc_storeStrong(&v26->_groupDisplayName, v30);
    objc_storeStrong(&v26->_groupId, v31);
    objc_storeStrong(&v26->_relatedPeople, a9);
    objc_storeStrong(&v26->_sender, a10);
    objc_storeStrong(&v26->_timestamp, a11);
    objc_storeStrong(&v26->_collaborationMetadata, a12);
    v26->_starred = a13;
    v26->_fromMe = a14;
  }

  return v26;
}

@end