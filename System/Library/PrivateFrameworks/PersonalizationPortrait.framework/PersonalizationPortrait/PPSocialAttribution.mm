@interface PPSocialAttribution
- (PPSocialAttribution)initWithCoder:(id)coder;
- (PPSocialAttribution)initWithIdentifier:(id)identifier sourceAppDisplayName:(id)name conversationIdentifier:(id)conversationIdentifier groupPhotoPath:(id)path groupDisplayName:(id)displayName groupId:(id)id relatedPeople:(id)people sender:(id)self0 timestamp:(id)self1 collaborationMetadata:(id)self2 starred:(BOOL)self3 fromMe:(BOOL)self4;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSocialAttribution

- (PPSocialAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = MEMORY[0x1E69C5D78];
  v5 = objc_opt_class();
  v6 = pp_social_highlights_log_handle();
  v50 = [v4 robustDecodeObjectOfClass:v5 forKey:@"id" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v6];

  v7 = MEMORY[0x1E69C5D78];
  v8 = objc_opt_class();
  v9 = pp_social_highlights_log_handle();
  v55 = [v7 robustDecodeObjectOfClass:v8 forKey:@"sa" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v9];

  v10 = MEMORY[0x1E69C5D78];
  v11 = objc_opt_class();
  v12 = pp_social_highlights_log_handle();
  v54 = [v10 robustDecodeObjectOfClass:v11 forKey:@"ci" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v12];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_opt_class();
  v15 = pp_social_highlights_log_handle();
  v53 = [v13 robustDecodeObjectOfClass:v14 forKey:@"gp" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v15];

  v16 = MEMORY[0x1E69C5D78];
  v17 = objc_opt_class();
  v18 = pp_social_highlights_log_handle();
  v52 = [v16 robustDecodeObjectOfClass:v17 forKey:@"gd" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v18];

  v19 = MEMORY[0x1E69C5D78];
  v20 = objc_autoreleasePoolPush();
  v21 = objc_alloc(MEMORY[0x1E695DFD8]);
  v22 = objc_opt_class();
  v23 = [v21 initWithObjects:{v22, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v20);
  v24 = pp_social_highlights_log_handle();
  v25 = [v19 robustDecodeObjectOfClasses:v23 forKey:@"rp" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v24];

  v26 = MEMORY[0x1E69C5D78];
  v27 = objc_opt_class();
  v28 = pp_social_highlights_log_handle();
  v29 = [v26 robustDecodeObjectOfClass:v27 forKey:@"se" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v28];

  v30 = MEMORY[0x1E69C5D78];
  v31 = objc_opt_class();
  v32 = pp_social_highlights_log_handle();
  v33 = [v30 robustDecodeObjectOfClass:v31 forKey:@"ts" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v32];

  v34 = MEMORY[0x1E69C5D78];
  v35 = objc_opt_class();
  v36 = pp_social_highlights_log_handle();
  v37 = [v34 robustDecodeObjectOfClass:v35 forKey:@"cmd" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v36];

  v38 = MEMORY[0x1E69C5D78];
  v39 = objc_opt_class();
  v40 = pp_social_highlights_log_handle();
  v41 = [v38 robustDecodeObjectOfClass:v39 forKey:@"gid" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v40];

  v42 = [coderCopy decodeBoolForKey:@"st"];
  v43 = [coderCopy decodeBoolForKey:@"fm"];
  error = [coderCopy error];

  if (error)
  {
    error = 0;
    v46 = v50;
    selfCopy2 = self;
  }

  else
  {
    v46 = v50;
    if (v50 && v55 && v54 && v25 && v29 && v33)
    {
      if (v53 && v52 || ([coderCopy error], v47 = objc_claimAutoreleasedReturnValue(), v47, !v47))
      {
        BYTE1(v49) = v43;
        LOBYTE(v49) = v42;
        selfCopy2 = [(PPSocialAttribution *)self initWithIdentifier:v50 sourceAppDisplayName:v55 conversationIdentifier:v54 groupPhotoPath:v53 groupDisplayName:v52 groupId:v41 relatedPeople:v25 sender:v29 timestamp:v33 collaborationMetadata:v37 starred:v49 fromMe:?];
        error = selfCopy2;
        goto LABEL_15;
      }

      error = 0;
    }

    selfCopy2 = self;
  }

LABEL_15:

  return error;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"id"];
  [coderCopy encodeObject:self->_sourceAppDisplayName forKey:@"sa"];
  [coderCopy encodeObject:self->_conversationIdentifier forKey:@"ci"];
  [coderCopy encodeObject:self->_groupPhotoPath forKey:@"gp"];
  [coderCopy encodeObject:self->_groupDisplayName forKey:@"gd"];
  [coderCopy encodeObject:self->_relatedPeople forKey:@"rp"];
  [coderCopy encodeObject:self->_sender forKey:@"se"];
  [coderCopy encodeObject:self->_timestamp forKey:@"ts"];
  [coderCopy encodeObject:self->_collaborationMetadata forKey:@"cmd"];
  [coderCopy encodeBool:self->_starred forKey:@"st"];
  [coderCopy encodeBool:self->_fromMe forKey:@"fm"];
  [coderCopy encodeObject:self->_groupId forKey:@"gid"];
}

- (id)description
{
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(PPSocialAttribution *)self identifier];
  sourceAppDisplayName = [(PPSocialAttribution *)self sourceAppDisplayName];
  conversationIdentifier = [(PPSocialAttribution *)self conversationIdentifier];
  groupPhotoPath = [(PPSocialAttribution *)self groupPhotoPath];
  groupDisplayName = [(PPSocialAttribution *)self groupDisplayName];
  relatedPeople = [(PPSocialAttribution *)self relatedPeople];
  sender = [(PPSocialAttribution *)self sender];
  timestamp = [(PPSocialAttribution *)self timestamp];
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

  groupId = [(PPSocialAttribution *)self groupId];
  v12 = [v16 initWithFormat:@"<PPSocialAttribution id:'%@' sa:'%@' ci:'%@' gp:'%@' gd:'%@' rp:'%@' se:'%@' ts:'%@' st:'%@' fm:'%@' gid:'%@'>", identifier, sourceAppDisplayName, conversationIdentifier, groupPhotoPath, groupDisplayName, relatedPeople, sender, timestamp, v10, v9, groupId];

  return v12;
}

- (PPSocialAttribution)initWithIdentifier:(id)identifier sourceAppDisplayName:(id)name conversationIdentifier:(id)conversationIdentifier groupPhotoPath:(id)path groupDisplayName:(id)displayName groupId:(id)id relatedPeople:(id)people sender:(id)self0 timestamp:(id)self1 collaborationMetadata:(id)self2 starred:(BOOL)self3 fromMe:(BOOL)self4
{
  identifierCopy = identifier;
  obj = name;
  nameCopy = name;
  conversationIdentifierCopy = conversationIdentifier;
  conversationIdentifierCopy2 = conversationIdentifier;
  pathCopy = path;
  displayNameCopy = displayName;
  displayNameCopy2 = displayName;
  idCopy = id;
  idCopy2 = id;
  peopleCopy = people;
  senderCopy = sender;
  timestampCopy = timestamp;
  metadataCopy = metadata;
  v38.receiver = self;
  v38.super_class = PPSocialAttribution;
  v25 = [(PPSocialAttribution *)&v38 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_identifier, identifier);
    objc_storeStrong(&v26->_sourceAppDisplayName, obj);
    objc_storeStrong(&v26->_conversationIdentifier, conversationIdentifierCopy);
    objc_storeStrong(&v26->_groupPhotoPath, path);
    objc_storeStrong(&v26->_groupDisplayName, displayNameCopy);
    objc_storeStrong(&v26->_groupId, idCopy);
    objc_storeStrong(&v26->_relatedPeople, people);
    objc_storeStrong(&v26->_sender, sender);
    objc_storeStrong(&v26->_timestamp, timestamp);
    objc_storeStrong(&v26->_collaborationMetadata, metadata);
    v26->_starred = starred;
    v26->_fromMe = me;
  }

  return v26;
}

@end