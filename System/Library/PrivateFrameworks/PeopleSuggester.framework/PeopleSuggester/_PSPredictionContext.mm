@interface _PSPredictionContext
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsZKWSuggestions;
- (NSDate)suggestionDate;
- (_PSPredictionContext)init;
- (_PSPredictionContext)initWithCoder:(id)coder;
- (unint64_t)hash;
- (unint64_t)totalHashOfElementsFromArray:(id)array;
- (void)encodeWithCoder:(id)coder;
- (void)sync:(id)sync;
@end

@implementation _PSPredictionContext

- (_PSPredictionContext)init
{
  v25.receiver = self;
  v25.super_class = _PSPredictionContext;
  v2 = [(_PSPredictionContext *)&v25 init];
  v3 = v2;
  if (v2)
  {
    sessionID = v2->_sessionID;
    v2->_sessionID = 0;

    suggestionDate = v3->_suggestionDate;
    v3->_suggestionDate = 0;

    locationUUID = v3->_locationUUID;
    v3->_locationUUID = 0;

    locationUUIDs = v3->_locationUUIDs;
    v3->_locationUUIDs = 0;

    bundleID = v3->_bundleID;
    v3->_bundleID = 0;

    accountIdentifier = v3->_accountIdentifier;
    v3->_accountIdentifier = 0;

    seedRecipients = v3->_seedRecipients;
    v3->_seedRecipients = 0;

    attachments = v3->_attachments;
    v3->_attachments = 0;

    priorityContacts = v3->_priorityContacts;
    v3->_priorityContacts = 0;

    photoSuggestedPeople = v3->_photoSuggestedPeople;
    v3->_photoSuggestedPeople = 0;

    *&v3->_showPotentialFamilyMembers = 0;
    searchPrefix = v3->_searchPrefix;
    v3->_searchPrefix = 0;

    suggestionsFilteredByBundleIds = v3->_suggestionsFilteredByBundleIds;
    v3->_suggestionPurpose = 0;
    v3->_suggestionsFilteredByBundleIds = 0;

    seedContactIdentifiers = v3->_seedContactIdentifiers;
    v3->_seedContactIdentifiers = 0;

    v3->_isCollaborationAvailable = 0;
    linkMetadataFromClient = v3->_linkMetadataFromClient;
    v3->_linkMetadataFromClient = 0;

    peopleInPhotoIdentifiers = v3->_peopleInPhotoIdentifiers;
    v3->_peopleInPhotoIdentifiers = 0;

    sceneTagsInPhotoIdentifiers = v3->_sceneTagsInPhotoIdentifiers;
    v3->_sceneTagsInPhotoIdentifiers = 0;

    *&v3->_isFallbackFetch = 0;
    v3->_timedOut = 0;
    suggestionCompletionDate = v3->_suggestionCompletionDate;
    v3->_suggestionCompletionDate = 0;

    suggestionPath = v3->_suggestionPath;
    v3->_suggestionPath = 0;

    v3->_isPSRActive = 0;
    supportedBundleIds = v3->_supportedBundleIds;
    v3->_supportedBundleIds = 0;

    currentSpanId = v3->_currentSpanId;
    v3->_currentSpanId = 0;

    v3->_feedBack = -1;
    atomic_store(0, &v3->_isCancelled);
    v3->_bypassIDSFilter = 0;
  }

  return v3;
}

- (BOOL)supportsZKWSuggestions
{
  if (supportsZKWSuggestions_onceToken != -1)
  {
    [_PSPredictionContext supportsZKWSuggestions];
  }

  v3 = supportsZKWSuggestions_supportedBundleIds;
  bundleID = [(_PSPredictionContext *)self bundleID];
  LOBYTE(v3) = [v3 containsObject:bundleID];

  return v3;
}

- (NSDate)suggestionDate
{
  suggestionDate = self->_suggestionDate;
  if (!suggestionDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    v5 = self->_suggestionDate;
    self->_suggestionDate = date;

    suggestionDate = self->_suggestionDate;
  }

  return suggestionDate;
}

- (_PSPredictionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v130.receiver = self;
  v130.super_class = _PSPredictionContext;
  v5 = [(_PSPredictionContext *)&v130 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionDate"];
    suggestionDate = v5->_suggestionDate;
    v5->_suggestionDate = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationUUID"];
    locationUUID = v5->_locationUUID;
    v5->_locationUUID = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"locationUUIDs"];
    locationUUIDs = v5->_locationUUIDs;
    v5->_locationUUIDs = v16;

    v5->_locationType = [coderCopy decodeIntegerForKey:@"locationType"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"seedRecipients"];
    seedRecipients = v5->_seedRecipients;
    v5->_seedRecipients = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"priorityContacts"];
    priorityContacts = v5->_priorityContacts;
    v5->_priorityContacts = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = [v37 setWithObjects:{v38, v39, objc_opt_class(), 0}];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"appBundleIdsToShareExtensionBundleIdsMapping"];
    appBundleIdsToShareExtensionBundleIdsMapping = v5->_appBundleIdsToShareExtensionBundleIdsMapping;
    v5->_appBundleIdsToShareExtensionBundleIdsMapping = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v43 setWithObjects:{v44, v45, v46, objc_opt_class(), 0}];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"photoSuggestedPeople"];
    photoSuggestedPeople = v5->_photoSuggestedPeople;
    v5->_photoSuggestedPeople = v48;

    v5->_showPotentialFamilyMembers = [coderCopy decodeBoolForKey:@"showPotentialFamilyMembers"];
    v5->_isSharePlayAvailable = [coderCopy decodeBoolForKey:@"isSharePlayAvailable"];
    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchPrefix"];
    searchPrefix = v5->_searchPrefix;
    v5->_searchPrefix = v50;

    v5->_suggestionPurpose = [coderCopy decodeInt64ForKey:@"suggestionPurpose"];
    v52 = MEMORY[0x1E695DFD8];
    v53 = objc_opt_class();
    v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
    v55 = [coderCopy decodeObjectOfClasses:v54 forKey:@"suggestionsFilteredByBundleIds"];
    suggestionsFilteredByBundleIds = v5->_suggestionsFilteredByBundleIds;
    v5->_suggestionsFilteredByBundleIds = v55;

    v57 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
    v60 = [coderCopy decodeObjectOfClasses:v59 forKey:@"seedContactIdentifiers"];
    seedContactIdentifiers = v5->_seedContactIdentifiers;
    v5->_seedContactIdentifiers = v60;

    v5->_isCollaborationAvailable = [coderCopy decodeBoolForKey:@"isCollaborationAvailable"];
    if ([coderCopy containsValueForKey:@"linkMetadataFromClient"])
    {
      v62 = MEMORY[0x1E695DFD8];
      v63 = objc_opt_class();
      v136 = 0;
      v137 = &v136;
      v138 = 0x2050000000;
      v64 = getLPLinkMetadataClass_softClass;
      v139 = getLPLinkMetadataClass_softClass;
      if (!getLPLinkMetadataClass_softClass)
      {
        v131 = MEMORY[0x1E69E9820];
        v132 = 3221225472;
        v133 = __getLPLinkMetadataClass_block_invoke;
        v134 = &unk_1E7C23BF0;
        v135 = &v136;
        __getLPLinkMetadataClass_block_invoke(&v131);
        v64 = v137[3];
      }

      v65 = v64;
      _Block_object_dispose(&v136, 8);
      v66 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
      v67 = [coderCopy decodeObjectOfClasses:v66 forKey:@"linkMetadataFromClient"];
      linkMetadataFromClient = v5->_linkMetadataFromClient;
      v5->_linkMetadataFromClient = v67;
    }

    v69 = MEMORY[0x1E695DFD8];
    v70 = objc_opt_class();
    v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
    v72 = [coderCopy decodeObjectOfClasses:v71 forKey:@"peopleInPhotoIdentifiers"];
    peopleInPhotoIdentifiers = v5->_peopleInPhotoIdentifiers;
    v5->_peopleInPhotoIdentifiers = v72;

    v74 = MEMORY[0x1E695DFD8];
    v75 = objc_opt_class();
    v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
    v77 = [coderCopy decodeObjectOfClasses:v76 forKey:@"sceneTagsInPhotoIdentifiers"];
    sceneTagsInPhotoIdentifiers = v5->_sceneTagsInPhotoIdentifiers;
    v5->_sceneTagsInPhotoIdentifiers = v77;

    v5->_isFallbackFetch = [coderCopy decodeBoolForKey:@"isFallbackFetch"];
    v5->_isCoreMLValidationFetch = [coderCopy decodeBoolForKey:@"isCoreMLValidationFetch"];
    v79 = MEMORY[0x1E695DFD8];
    v80 = objc_opt_class();
    v81 = objc_opt_class();
    v82 = objc_opt_class();
    v83 = [v79 setWithObjects:{v80, v81, v82, objc_opt_class(), 0}];
    v84 = [coderCopy decodeObjectOfClasses:v83 forKey:@"scoredCoreMLCandidates"];
    scoredCoreMLCandidates = v5->_scoredCoreMLCandidates;
    v5->_scoredCoreMLCandidates = v84;

    if ([coderCopy containsValueForKey:@"coreMLInputFeatureTensor"])
    {
      v86 = MEMORY[0x1E695DFD8];
      v136 = 0;
      v137 = &v136;
      v138 = 0x2050000000;
      v87 = getMLMultiArrayClass_softClass_1;
      v139 = getMLMultiArrayClass_softClass_1;
      if (!getMLMultiArrayClass_softClass_1)
      {
        v131 = MEMORY[0x1E69E9820];
        v132 = 3221225472;
        v133 = __getMLMultiArrayClass_block_invoke_1;
        v134 = &unk_1E7C23BF0;
        v135 = &v136;
        __getMLMultiArrayClass_block_invoke_1(&v131);
        v87 = v137[3];
      }

      v88 = v87;
      _Block_object_dispose(&v136, 8);
      v89 = [v86 setWithObjects:{objc_opt_class(), 0}];
      v90 = [coderCopy decodeObjectOfClasses:v89 forKey:@"coreMLInputFeatureTensor"];
      coreMLInputFeatureTensor = v5->_coreMLInputFeatureTensor;
      v5->_coreMLInputFeatureTensor = v90;
    }

    v92 = MEMORY[0x1E695DFD8];
    v93 = objc_opt_class();
    v94 = [v92 setWithObjects:{v93, objc_opt_class(), 0}];
    v95 = [coderCopy decodeObjectOfClasses:v94 forKey:@"coreMLModelFeatureOrder"];
    coreMLModelFeatureOrder = v5->_coreMLModelFeatureOrder;
    v5->_coreMLModelFeatureOrder = v95;

    v97 = MEMORY[0x1E695DFD8];
    v98 = objc_opt_class();
    v99 = objc_opt_class();
    v100 = [v97 setWithObjects:{v98, v99, objc_opt_class(), 0}];
    v101 = [coderCopy decodeObjectOfClasses:v100 forKey:@"coreMLTensorIndexToCandidate"];
    coreMLTensorIndexToCandidate = v5->_coreMLTensorIndexToCandidate;
    v5->_coreMLTensorIndexToCandidate = v101;

    v103 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coreMLNumberOfCandidates"];
    coreMLNumberOfCandidates = v5->_coreMLNumberOfCandidates;
    v5->_coreMLNumberOfCandidates = v103;

    v105 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trialExperimentId"];
    trialExperimentId = v5->_trialExperimentId;
    v5->_trialExperimentId = v105;

    v107 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trialTreatmentId"];
    trialTreatmentId = v5->_trialTreatmentId;
    v5->_trialTreatmentId = v107;

    v109 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trialDeploymentId"];
    trialDeploymentId = v5->_trialDeploymentId;
    v5->_trialDeploymentId = v109;

    v111 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentSpanId"];
    currentSpanId = v5->_currentSpanId;
    v5->_currentSpanId = v111;

    v113 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reasonType"];
    reasonType = v5->_reasonType;
    v5->_reasonType = v113;

    v5->_timedOut = [coderCopy decodeBoolForKey:@"timedOut"];
    v115 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionCompletionDate"];
    suggestionCompletionDate = v5->_suggestionCompletionDate;
    v5->_suggestionCompletionDate = v115;

    v117 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionPath"];
    suggestionPath = v5->_suggestionPath;
    v5->_suggestionPath = v117;

    v5->_isPSRActive = [coderCopy decodeBoolForKey:@"isPSRActive"];
    v119 = MEMORY[0x1E695DFD8];
    v120 = objc_opt_class();
    v121 = [v119 setWithObjects:{v120, objc_opt_class(), 0}];
    v122 = [coderCopy decodeObjectOfClasses:v121 forKey:@"supportedBundleIds"];
    supportedBundleIds = v5->_supportedBundleIds;
    v5->_supportedBundleIds = v122;

    v124 = objc_autoreleasePoolPush();
    v125 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v124);
    v126 = [coderCopy decodeObjectOfClasses:v125 forKey:@"queryStartDate"];
    queryStartDate = v5->_queryStartDate;
    v5->_queryStartDate = v126;

    v5->_feedBack = [coderCopy decodeIntegerForKey:@"feedBack"];
    v5->_bypassIDSFilter = [coderCopy decodeBoolForKey:@"bypassIDSFilter"];
    v128 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionID = self->_sessionID;
  coderCopy = coder;
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];
  [coderCopy encodeObject:self->_suggestionDate forKey:@"suggestionDate"];
  [coderCopy encodeObject:self->_locationUUID forKey:@"locationUUID"];
  [coderCopy encodeObject:self->_locationUUIDs forKey:@"locationUUIDs"];
  [coderCopy encodeInteger:self->_locationType forKey:@"locationType"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_seedRecipients forKey:@"seedRecipients"];
  [coderCopy encodeObject:self->_attachments forKey:@"attachments"];
  [coderCopy encodeObject:self->_priorityContacts forKey:@"priorityContacts"];
  [coderCopy encodeObject:self->_appBundleIdsToShareExtensionBundleIdsMapping forKey:@"appBundleIdsToShareExtensionBundleIdsMapping"];
  [coderCopy encodeObject:self->_photoSuggestedPeople forKey:@"photoSuggestedPeople"];
  [coderCopy encodeBool:self->_showPotentialFamilyMembers forKey:@"showPotentialFamilyMembers"];
  [coderCopy encodeBool:self->_isSharePlayAvailable forKey:@"isSharePlayAvailable"];
  [coderCopy encodeObject:self->_searchPrefix forKey:@"searchPrefix"];
  [coderCopy encodeInt64:self->_suggestionPurpose forKey:@"suggestionPurpose"];
  [coderCopy encodeObject:self->_suggestionsFilteredByBundleIds forKey:@"suggestionsFilteredByBundleIds"];
  [coderCopy encodeObject:self->_seedContactIdentifiers forKey:@"seedContactIdentifiers"];
  [coderCopy encodeBool:self->_isCollaborationAvailable forKey:@"isCollaborationAvailable"];
  [coderCopy encodeObject:self->_linkMetadataFromClient forKey:@"linkMetadataFromClient"];
  [coderCopy encodeObject:self->_peopleInPhotoIdentifiers forKey:@"peopleInPhotoIdentifiers"];
  [coderCopy encodeObject:self->_sceneTagsInPhotoIdentifiers forKey:@"sceneTagsInPhotoIdentifiers"];
  [coderCopy encodeBool:self->_isFallbackFetch forKey:@"isFallbackFetch"];
  [coderCopy encodeBool:self->_isCoreMLValidationFetch forKey:@"isCoreMLValidationFetch"];
  [coderCopy encodeObject:self->_scoredCoreMLCandidates forKey:@"scoredCoreMLCandidates"];
  [coderCopy encodeObject:self->_coreMLInputFeatureTensor forKey:@"coreMLInputFeatureTensor"];
  [coderCopy encodeObject:self->_coreMLModelFeatureOrder forKey:@"coreMLModelFeatureOrder"];
  [coderCopy encodeObject:self->_coreMLTensorIndexToCandidate forKey:@"coreMLTensorIndexToCandidate"];
  [coderCopy encodeObject:self->_coreMLNumberOfCandidates forKey:@"coreMLNumberOfCandidates"];
  [coderCopy encodeObject:self->_trialExperimentId forKey:@"trialExperimentId"];
  [coderCopy encodeObject:self->_trialTreatmentId forKey:@"trialTreatmentId"];
  [coderCopy encodeObject:self->_trialDeploymentId forKey:@"trialDeploymentId"];
  [coderCopy encodeObject:self->_currentSpanId forKey:@"currentSpanId"];
  [coderCopy encodeObject:self->_reasonType forKey:@"reasonType"];
  [coderCopy encodeBool:self->_timedOut forKey:@"timedOut"];
  [coderCopy encodeObject:self->_suggestionCompletionDate forKey:@"suggestionCompletionDate"];
  [coderCopy encodeObject:self->_suggestionPath forKey:@"suggestionPath"];
  [coderCopy encodeBool:self->_isPSRActive forKey:@"isPSRActive"];
  [coderCopy encodeObject:self->_supportedBundleIds forKey:@"supportedBundleIds"];
  [coderCopy encodeObject:self->_queryStartDate forKey:@"queryStartDate"];
  [coderCopy encodeInteger:self->_feedBack forKey:@"feedBack"];
  [coderCopy encodeBool:self->_bypassIDSFilter forKey:@"bypassIDSFilter"];
}

- (unint64_t)totalHashOfElementsFromArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy && (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, (v5 = [arrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16]) != 0))
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 ^= [*(*(&v12 + 1) + 8 * i) hash];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (unint64_t)hash
{
  v48 = *MEMORY[0x1E69E9840];
  seedRecipients = [(_PSPredictionContext *)self seedRecipients];
  v37 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:seedRecipients];

  locationUUIDs = [(_PSPredictionContext *)self locationUUIDs];
  v36 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:locationUUIDs];

  attachments = [(_PSPredictionContext *)self attachments];
  v35 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:attachments];

  suggestionsFilteredByBundleIds = [(_PSPredictionContext *)self suggestionsFilteredByBundleIds];
  v34 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:suggestionsFilteredByBundleIds];

  seedContactIdentifiers = [(_PSPredictionContext *)self seedContactIdentifiers];
  v33 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:seedContactIdentifiers];

  linkMetadataFromClient = [(_PSPredictionContext *)self linkMetadataFromClient];
  v32 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:linkMetadataFromClient];

  peopleInPhotoIdentifiers = [(_PSPredictionContext *)self peopleInPhotoIdentifiers];
  v10 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:peopleInPhotoIdentifiers];

  sceneTagsInPhotoIdentifiers = [(_PSPredictionContext *)self sceneTagsInPhotoIdentifiers];
  v12 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:sceneTagsInPhotoIdentifiers];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = self->_photoSuggestedPeople;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v43;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [*(*(&v42 + 1) + 8 * i) objectForKeyedSubscript:{@"contactIdentifier", v32}];
        v16 ^= [v19 hash];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = self->_appBundleIdsToShareExtensionBundleIdsMapping;
  v21 = [(NSDictionary *)v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v39;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v23 ^= [*(*(&v38 + 1) + 8 * j) hash];
      }

      v22 = [(NSDictionary *)v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v22);
  }

  else
  {
    v23 = 0;
  }

  v26 = [(NSString *)self->_sessionID hash];
  v27 = [(NSDate *)self->_suggestionDate hash];
  v28 = [(NSString *)self->_bundleID hash];
  v29 = [(NSString *)self->_accountIdentifier hash];
  v30 = *MEMORY[0x1E69E9840];
  return v36 ^ v37 ^ v35 ^ v34 ^ v33 ^ v32 ^ v10 ^ v12 ^ v16 ^ v26 ^ v27 ^ v28 ^ v29 ^ self->_showPotentialFamilyMembers ^ v23 ^ self->_isSharePlayAvailable ^ self->_suggestionPurpose ^ self->_locationType ^ self->_isCollaborationAvailable ^ self->_isFallbackFetch ^ self->_bypassIDSFilter;
}

- (BOOL)isEqual:(id)equal
{
  v134 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v29) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    sessionID = [(_PSPredictionContext *)self sessionID];
    if (sessionID)
    {
      v8 = sessionID;
      sessionID2 = [(_PSPredictionContext *)v6 sessionID];

      if (sessionID2)
      {
        sessionID3 = [(_PSPredictionContext *)self sessionID];
        sessionID4 = [(_PSPredictionContext *)v6 sessionID];
        v12 = [sessionID3 isEqualToString:sessionID4];

        if (!v12)
        {
          goto LABEL_17;
        }
      }
    }

    bundleID = [(_PSPredictionContext *)self bundleID];
    if (bundleID)
    {
      v14 = bundleID;
      bundleID2 = [(_PSPredictionContext *)v6 bundleID];

      if (bundleID2)
      {
        bundleID3 = [(_PSPredictionContext *)self bundleID];
        bundleID4 = [(_PSPredictionContext *)v6 bundleID];
        v18 = [bundleID3 isEqualToString:bundleID4];

        if (!v18)
        {
          goto LABEL_17;
        }
      }
    }

    accountIdentifier = [(_PSPredictionContext *)self accountIdentifier];
    if (accountIdentifier)
    {
      v20 = accountIdentifier;
      accountIdentifier2 = [(_PSPredictionContext *)v6 accountIdentifier];

      if (accountIdentifier2)
      {
        accountIdentifier3 = [(_PSPredictionContext *)self accountIdentifier];
        accountIdentifier4 = [(_PSPredictionContext *)v6 accountIdentifier];
        v24 = [accountIdentifier3 isEqualToString:accountIdentifier4];

        if (!v24)
        {
          goto LABEL_17;
        }
      }
    }

    if ((v25 = [(_PSPredictionContext *)self showPotentialFamilyMembers], v25 != [(_PSPredictionContext *)v6 showPotentialFamilyMembers]) || (v26 = [(_PSPredictionContext *)self isSharePlayAvailable], v26 != [(_PSPredictionContext *)v6 isSharePlayAvailable]) || (v27 = [(_PSPredictionContext *)self isCollaborationAvailable], v27 != [(_PSPredictionContext *)v6 isCollaborationAvailable]) || (v28 = [(_PSPredictionContext *)self bypassIDSFilter], v28 != [(_PSPredictionContext *)v6 bypassIDSFilter]) || [(_PSPredictionContext *)self suggestionPurpose]&& [(_PSPredictionContext *)v6 suggestionPurpose]&& (v32 = [(_PSPredictionContext *)self suggestionPurpose], v32 != [(_PSPredictionContext *)v6 suggestionPurpose]) || [(_PSPredictionContext *)self locationType]&& [(_PSPredictionContext *)v6 locationType]&& (v33 = [(_PSPredictionContext *)self locationType], v33 != [(_PSPredictionContext *)v6 locationType]))
    {
LABEL_17:
      LOBYTE(v29) = 0;
    }

    else
    {
      v34 = objc_alloc(MEMORY[0x1E695DFA8]);
      seedRecipients = [(_PSPredictionContext *)self seedRecipients];
      v36 = [v34 initWithArray:seedRecipients];

      v37 = objc_alloc(MEMORY[0x1E695DFA8]);
      seedRecipients2 = [(_PSPredictionContext *)v6 seedRecipients];
      v39 = [v37 initWithArray:seedRecipients2];

      v40 = [v36 count];
      if (v40 == [v39 count] && objc_msgSend(v36, "isEqualToSet:", v39))
      {
        [v36 count];
        v41 = objc_alloc(MEMORY[0x1E695DFA8]);
        locationUUIDs = [(_PSPredictionContext *)self locationUUIDs];
        v43 = [v41 initWithArray:locationUUIDs];

        v44 = objc_alloc(MEMORY[0x1E695DFA8]);
        locationUUIDs2 = [(_PSPredictionContext *)v6 locationUUIDs];
        v46 = [v44 initWithArray:locationUUIDs2];

        v47 = [v43 count];
        if (v47 == [v46 count] && objc_msgSend(v43, "isEqualToSet:", v46))
        {
          [v43 count];
          v48 = objc_alloc(MEMORY[0x1E695DFA8]);
          attachments = [(_PSPredictionContext *)self attachments];
          v50 = [v48 initWithArray:attachments];

          v51 = objc_alloc(MEMORY[0x1E695DFA8]);
          attachments2 = [(_PSPredictionContext *)v6 attachments];
          v53 = [v51 initWithArray:attachments2];

          v54 = v53;
          v55 = [v50 count];
          if (v55 == [v54 count] && objc_msgSend(v50, "isEqualToSet:", v54))
          {
            v117 = v54;
            v118 = v50;
            v119 = v46;
            v120 = v43;
            v121 = v39;
            [v50 count];
            v56 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            photoSuggestedPeople = [(_PSPredictionContext *)self photoSuggestedPeople];
            v58 = [photoSuggestedPeople count];

            if (v58)
            {
              v59 = 0;
              do
              {
                photoSuggestedPeople2 = [(_PSPredictionContext *)self photoSuggestedPeople];
                v61 = [photoSuggestedPeople2 objectAtIndexedSubscript:v59];
                v62 = [v61 objectForKeyedSubscript:@"contactIdentifier"];

                [v56 addObject:v62];
                ++v59;
                photoSuggestedPeople3 = [(_PSPredictionContext *)self photoSuggestedPeople];
                v64 = [photoSuggestedPeople3 count];
              }

              while (v64 > v59);
            }

            v123 = v56;
            v65 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            photoSuggestedPeople4 = [(_PSPredictionContext *)v6 photoSuggestedPeople];
            v67 = [photoSuggestedPeople4 count];

            if (v67)
            {
              v68 = 0;
              do
              {
                photoSuggestedPeople5 = [(_PSPredictionContext *)v6 photoSuggestedPeople];
                v70 = [photoSuggestedPeople5 objectAtIndexedSubscript:v68];
                v71 = [v70 objectForKeyedSubscript:@"contactIdentifier"];

                [v65 addObject:v71];
                ++v68;
                photoSuggestedPeople6 = [(_PSPredictionContext *)v6 photoSuggestedPeople];
                v73 = [photoSuggestedPeople6 count];
              }

              while (v73 > v68);
            }

            v74 = [v123 count];
            v122 = v65;
            if (v74 == [v65 count] && objc_msgSend(v123, "isEqualToSet:", v65))
            {
              [v123 count];
              v75 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v128 = 0u;
              v129 = 0u;
              v130 = 0u;
              v131 = 0u;
              appBundleIdsToShareExtensionBundleIdsMapping = [(_PSPredictionContext *)self appBundleIdsToShareExtensionBundleIdsMapping];
              v77 = [appBundleIdsToShareExtensionBundleIdsMapping countByEnumeratingWithState:&v128 objects:v133 count:16];
              if (v77)
              {
                v78 = v77;
                v79 = *v129;
                do
                {
                  for (i = 0; i != v78; ++i)
                  {
                    if (*v129 != v79)
                    {
                      objc_enumerationMutation(appBundleIdsToShareExtensionBundleIdsMapping);
                    }

                    [v75 addObject:*(*(&v128 + 1) + 8 * i)];
                  }

                  v78 = [appBundleIdsToShareExtensionBundleIdsMapping countByEnumeratingWithState:&v128 objects:v133 count:16];
                }

                while (v78);
              }

              v81 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              v127 = 0u;
              appBundleIdsToShareExtensionBundleIdsMapping2 = [(_PSPredictionContext *)v6 appBundleIdsToShareExtensionBundleIdsMapping];
              v83 = [appBundleIdsToShareExtensionBundleIdsMapping2 countByEnumeratingWithState:&v124 objects:v132 count:16];
              if (v83)
              {
                v84 = v83;
                v85 = *v125;
                do
                {
                  for (j = 0; j != v84; ++j)
                  {
                    if (*v125 != v85)
                    {
                      objc_enumerationMutation(appBundleIdsToShareExtensionBundleIdsMapping2);
                    }

                    [v81 addObject:*(*(&v124 + 1) + 8 * j)];
                  }

                  v84 = [appBundleIdsToShareExtensionBundleIdsMapping2 countByEnumeratingWithState:&v124 objects:v132 count:16];
                }

                while (v84);
              }

              v87 = [v75 count];
              if (v87 == [v81 count] && objc_msgSend(v75, "isEqualToSet:", v81))
              {
                [v75 count];
                v88 = objc_alloc(MEMORY[0x1E695DFD8]);
                suggestionsFilteredByBundleIds = [(_PSPredictionContext *)self suggestionsFilteredByBundleIds];
                v90 = [v88 initWithArray:suggestionsFilteredByBundleIds];

                v91 = objc_alloc(MEMORY[0x1E695DFD8]);
                suggestionsFilteredByBundleIds2 = [(_PSPredictionContext *)v6 suggestionsFilteredByBundleIds];
                v93 = [v91 initWithArray:suggestionsFilteredByBundleIds2];

                v115 = v93;
                v116 = v90;
                if ([v90 isEqualToSet:v93])
                {
                  [v90 count];
                  v94 = objc_alloc(MEMORY[0x1E695DFD8]);
                  seedContactIdentifiers = [(_PSPredictionContext *)self seedContactIdentifiers];
                  v96 = [v94 initWithArray:seedContactIdentifiers];

                  v97 = objc_alloc(MEMORY[0x1E695DFD8]);
                  seedContactIdentifiers2 = [(_PSPredictionContext *)v6 seedContactIdentifiers];
                  v99 = [v97 initWithArray:seedContactIdentifiers2];

                  v113 = v99;
                  v114 = v96;
                  if ([v96 isEqualToSet:v99])
                  {
                    [v96 count];
                    v100 = objc_alloc(MEMORY[0x1E695DFD8]);
                    linkMetadataFromClient = [(_PSPredictionContext *)self linkMetadataFromClient];
                    v102 = [v100 initWithArray:linkMetadataFromClient];

                    v103 = objc_alloc(MEMORY[0x1E695DFD8]);
                    linkMetadataFromClient2 = [(_PSPredictionContext *)v6 linkMetadataFromClient];
                    v105 = [v103 initWithArray:linkMetadataFromClient2];

                    v112 = v102;
                    if ([v102 isEqualToSet:v105])
                    {
                      [v102 count];
                      v106 = objc_alloc(MEMORY[0x1E695DFD8]);
                      peopleInPhotoIdentifiers = [(_PSPredictionContext *)self peopleInPhotoIdentifiers];
                      v108 = [v106 initWithArray:peopleInPhotoIdentifiers];

                      v109 = objc_alloc(MEMORY[0x1E695DFD8]);
                      peopleInPhotoIdentifiers2 = [(_PSPredictionContext *)v6 peopleInPhotoIdentifiers];
                      v111 = [v109 initWithArray:peopleInPhotoIdentifiers2];

                      v29 = [v108 isEqualToSet:v111];
                      if (v29)
                      {
                        [v108 count];
                      }
                    }

                    else
                    {
                      LOBYTE(v29) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v29) = 0;
                  }
                }

                else
                {
                  LOBYTE(v29) = 0;
                }
              }

              else
              {
                LOBYTE(v29) = 0;
              }
            }

            else
            {
              LOBYTE(v29) = 0;
            }

            v43 = v120;
            v39 = v121;
            v50 = v118;
            v46 = v119;
            v54 = v117;
          }

          else
          {
            LOBYTE(v29) = 0;
          }
        }

        else
        {
          LOBYTE(v29) = 0;
        }
      }

      else
      {
        LOBYTE(v29) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v29) = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)sync:(id)sync
{
  syncCopy = sync;
  attachments = [syncCopy attachments];
  [(_PSPredictionContext *)self setAttachments:attachments];

  priorityContacts = [syncCopy priorityContacts];
  [(_PSPredictionContext *)self setPriorityContacts:priorityContacts];

  photoSuggestedPeople = [syncCopy photoSuggestedPeople];
  [(_PSPredictionContext *)self setPhotoSuggestedPeople:photoSuggestedPeople];

  trialExperimentId = [syncCopy trialExperimentId];
  [(_PSPredictionContext *)self setTrialExperimentId:trialExperimentId];

  trialTreatmentId = [syncCopy trialTreatmentId];
  [(_PSPredictionContext *)self setTrialTreatmentId:trialTreatmentId];

  trialDeploymentId = [syncCopy trialDeploymentId];
  [(_PSPredictionContext *)self setTrialDeploymentId:trialDeploymentId];

  -[_PSPredictionContext setIsPSRActive:](self, "setIsPSRActive:", [syncCopy isPSRActive]);
  reasonType = [syncCopy reasonType];
  [(_PSPredictionContext *)self setReasonType:reasonType];

  supportedBundleIds = [syncCopy supportedBundleIds];

  [(_PSPredictionContext *)self setSupportedBundleIds:supportedBundleIds];
}

@end