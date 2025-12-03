@interface PPSocialCollaboration
- (PPSocialCollaboration)initWithCoder:(id)coder;
- (PPSocialCollaboration)initWithIdentifier:(id)identifier resourceURL:(id)l timestamp:(id)timestamp attributionIdentifiers:(id)identifiers supplementaryData:(id)data collaborationIdentifier:(id)collaborationIdentifier contentDisplayName:(id)name contentCreationDate:(id)self0 contentUTIType:(id)self1 fileProviderId:(id)self2 earliestAttributionIdentifiers:(id)self3 localIdentity:(id)self4 localIdentityProof:(id)self5 handleToIdentityMap:(id)self6 score:(id)self7;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSocialCollaboration

- (PPSocialCollaboration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v54.receiver = self;
  v54.super_class = PPSocialCollaboration;
  v5 = [(PPSocialHighlight *)&v54 initWithCoder:coderCopy];
  v6 = MEMORY[0x1E69C5D78];
  v7 = objc_opt_class();
  v8 = pp_social_highlights_log_handle();
  v51 = [v6 robustDecodeObjectOfClass:v7 forKey:@"cid" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v8];

  v9 = MEMORY[0x1E69C5D78];
  v10 = objc_opt_class();
  v11 = pp_social_highlights_log_handle();
  v53 = [v9 robustDecodeObjectOfClass:v10 forKey:@"cdn" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v11];

  v12 = MEMORY[0x1E69C5D78];
  v13 = objc_opt_class();
  v14 = pp_social_highlights_log_handle();
  v52 = [v12 robustDecodeObjectOfClass:v13 forKey:@"cd" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v14];

  v15 = MEMORY[0x1E69C5D78];
  v16 = objc_opt_class();
  v17 = pp_social_highlights_log_handle();
  v50 = [v15 robustDecodeObjectOfClass:v16 forKey:@"ct" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v17];

  v18 = MEMORY[0x1E69C5D78];
  v19 = objc_opt_class();
  v20 = pp_social_highlights_log_handle();
  v49 = [v18 robustDecodeObjectOfClass:v19 forKey:@"fpid" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v20];

  v21 = MEMORY[0x1E69C5D78];
  v22 = objc_autoreleasePoolPush();
  v23 = objc_alloc(MEMORY[0x1E695DFD8]);
  v24 = objc_opt_class();
  v25 = [v23 initWithObjects:{v24, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v22);
  v26 = pp_social_highlights_log_handle();
  v48 = [v21 robustDecodeObjectOfClasses:v25 forKey:@"eaid" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v26];

  v27 = MEMORY[0x1E69C5D78];
  v28 = objc_opt_class();
  v29 = pp_social_highlights_log_handle();
  v46 = [v27 robustDecodeObjectOfClass:v28 forKey:@"locid" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v29];

  v30 = MEMORY[0x1E69C5D78];
  v31 = objc_opt_class();
  v32 = pp_social_highlights_log_handle();
  v45 = [v30 robustDecodeObjectOfClass:v31 forKey:@"locidp" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v32];

  v33 = MEMORY[0x1E69C5D78];
  v34 = objc_opt_class();
  v35 = pp_social_highlights_log_handle();
  v44 = [v33 robustDecodeObjectOfClass:v34 forKey:@"hidmap" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v35];

  v36 = v5;
  identifier = [(PPSocialHighlight *)v5 identifier];
  resourceURL = [(PPSocialHighlight *)v5 resourceURL];
  timestamp = [(PPSocialHighlight *)v5 timestamp];
  attributionIdentifiers = [(PPSocialHighlight *)v5 attributionIdentifiers];
  supplementaryData = [(PPSocialHighlight *)v36 supplementaryData];
  score = [(PPSocialHighlight *)v36 score];
  v47 = [(PPSocialCollaboration *)v36 initWithIdentifier:identifier resourceURL:resourceURL timestamp:timestamp attributionIdentifiers:attributionIdentifiers supplementaryData:supplementaryData collaborationIdentifier:v51 contentDisplayName:v53 contentCreationDate:v52 contentUTIType:v50 fileProviderId:v49 earliestAttributionIdentifiers:v48 localIdentity:v46 localIdentityProof:v45 handleToIdentityMap:v44 score:score];

  return v47;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PPSocialCollaboration;
  coderCopy = coder;
  [(PPSocialHighlight *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_collaborationIdentifier forKey:{@"cid", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_contentDisplayName forKey:@"cdn"];
  [coderCopy encodeObject:self->_creationDate forKey:@"cd"];
  [coderCopy encodeObject:self->_contentType forKey:@"ct"];
  [coderCopy encodeObject:self->_fileProviderId forKey:@"fpid"];
  [coderCopy encodeObject:self->_earliestAttributionIdentifiers forKey:@"eaid"];
  [coderCopy encodeObject:self->_localIdentity forKey:@"locid"];
  [coderCopy encodeObject:self->_localIdentityProof forKey:@"locidp"];
  [coderCopy encodeObject:self->_handleToIdentityMap forKey:@"hidmap"];
}

- (id)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(PPSocialHighlight *)self identifier];
  resourceURL = [(PPSocialHighlight *)self resourceURL];
  timestamp = [(PPSocialHighlight *)self timestamp];
  attributionIdentifiers = [(PPSocialHighlight *)self attributionIdentifiers];
  supplementaryData = [(PPSocialHighlight *)self supplementaryData];
  score = [(PPSocialHighlight *)self score];
  collaborationIdentifier = [(PPSocialCollaboration *)self collaborationIdentifier];
  contentDisplayName = [(PPSocialCollaboration *)self contentDisplayName];
  creationDate = [(PPSocialCollaboration *)self creationDate];
  contentType = [(PPSocialCollaboration *)self contentType];
  fileProviderId = [(PPSocialCollaboration *)self fileProviderId];
  earliestAttributionIdentifiers = [(PPSocialCollaboration *)self earliestAttributionIdentifiers];
  v15 = [v14 initWithFormat:@"<PPSocialCollaboration id:'%@' ru:'%@' ts:'%@' at:'%@' sd:'%@' sc:'%@' cid:'%@' cdn:'%@' cd:'%@' ct:'%@' fpid: '%@' eaid:'%@'>", identifier, resourceURL, timestamp, attributionIdentifiers, supplementaryData, score, collaborationIdentifier, contentDisplayName, creationDate, contentType, fileProviderId, earliestAttributionIdentifiers];

  return v15;
}

- (PPSocialCollaboration)initWithIdentifier:(id)identifier resourceURL:(id)l timestamp:(id)timestamp attributionIdentifiers:(id)identifiers supplementaryData:(id)data collaborationIdentifier:(id)collaborationIdentifier contentDisplayName:(id)name contentCreationDate:(id)self0 contentUTIType:(id)self1 fileProviderId:(id)self2 earliestAttributionIdentifiers:(id)self3 localIdentity:(id)self4 localIdentityProof:(id)self5 handleToIdentityMap:(id)self6 score:(id)self7
{
  identifierCopy = identifier;
  collaborationIdentifierCopy = collaborationIdentifier;
  nameCopy = name;
  dateCopy = date;
  typeCopy = type;
  idCopy = id;
  attributionIdentifiersCopy = attributionIdentifiers;
  identityCopy = identity;
  proofCopy = proof;
  mapCopy = map;
  v52.receiver = self;
  v52.super_class = PPSocialCollaboration;
  v51 = identifierCopy;
  v26 = [(PPSocialHighlight *)&v52 initWithIdentifier:identifierCopy resourceURL:l timestamp:timestamp attributionIdentifiers:identifiers supplementaryData:data score:score];
  objc_storeStrong(&v26->_collaborationIdentifier, collaborationIdentifier);
  if (!v26->_collaborationIdentifier)
  {
    objc_storeStrong(&v26->_collaborationIdentifier, identifier);
  }

  contentDisplayName = v26->_contentDisplayName;
  v26->_contentDisplayName = nameCopy;
  v28 = nameCopy;

  creationDate = v26->_creationDate;
  v26->_creationDate = dateCopy;
  v30 = dateCopy;

  contentType = v26->_contentType;
  v26->_contentType = typeCopy;
  v32 = typeCopy;

  fileProviderId = v26->_fileProviderId;
  v26->_fileProviderId = idCopy;
  v34 = idCopy;

  earliestAttributionIdentifiers = v26->_earliestAttributionIdentifiers;
  v26->_earliestAttributionIdentifiers = attributionIdentifiersCopy;
  v36 = attributionIdentifiersCopy;

  localIdentity = v26->_localIdentity;
  v26->_localIdentity = identityCopy;
  v38 = identityCopy;

  localIdentityProof = v26->_localIdentityProof;
  v26->_localIdentityProof = proofCopy;
  v40 = proofCopy;

  handleToIdentityMap = v26->_handleToIdentityMap;
  v26->_handleToIdentityMap = mapCopy;

  return v26;
}

@end