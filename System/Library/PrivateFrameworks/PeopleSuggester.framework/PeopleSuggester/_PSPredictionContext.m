@interface _PSPredictionContext
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsZKWSuggestions;
- (NSDate)suggestionDate;
- (_PSPredictionContext)init;
- (_PSPredictionContext)initWithCoder:(id)a3;
- (unint64_t)hash;
- (unint64_t)totalHashOfElementsFromArray:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)sync:(id)a3;
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
  v4 = [(_PSPredictionContext *)self bundleID];
  LOBYTE(v3) = [v3 containsObject:v4];

  return v3;
}

- (NSDate)suggestionDate
{
  suggestionDate = self->_suggestionDate;
  if (!suggestionDate)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = self->_suggestionDate;
    self->_suggestionDate = v4;

    suggestionDate = self->_suggestionDate;
  }

  return suggestionDate;
}

- (_PSPredictionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v130.receiver = self;
  v130.super_class = _PSPredictionContext;
  v5 = [(_PSPredictionContext *)&v130 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionDate"];
    suggestionDate = v5->_suggestionDate;
    v5->_suggestionDate = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationUUID"];
    locationUUID = v5->_locationUUID;
    v5->_locationUUID = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"locationUUIDs"];
    locationUUIDs = v5->_locationUUIDs;
    v5->_locationUUIDs = v16;

    v5->_locationType = [v4 decodeIntegerForKey:@"locationType"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"seedRecipients"];
    seedRecipients = v5->_seedRecipients;
    v5->_seedRecipients = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"priorityContacts"];
    priorityContacts = v5->_priorityContacts;
    v5->_priorityContacts = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = [v37 setWithObjects:{v38, v39, objc_opt_class(), 0}];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"appBundleIdsToShareExtensionBundleIdsMapping"];
    appBundleIdsToShareExtensionBundleIdsMapping = v5->_appBundleIdsToShareExtensionBundleIdsMapping;
    v5->_appBundleIdsToShareExtensionBundleIdsMapping = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v43 setWithObjects:{v44, v45, v46, objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"photoSuggestedPeople"];
    photoSuggestedPeople = v5->_photoSuggestedPeople;
    v5->_photoSuggestedPeople = v48;

    v5->_showPotentialFamilyMembers = [v4 decodeBoolForKey:@"showPotentialFamilyMembers"];
    v5->_isSharePlayAvailable = [v4 decodeBoolForKey:@"isSharePlayAvailable"];
    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchPrefix"];
    searchPrefix = v5->_searchPrefix;
    v5->_searchPrefix = v50;

    v5->_suggestionPurpose = [v4 decodeInt64ForKey:@"suggestionPurpose"];
    v52 = MEMORY[0x1E695DFD8];
    v53 = objc_opt_class();
    v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
    v55 = [v4 decodeObjectOfClasses:v54 forKey:@"suggestionsFilteredByBundleIds"];
    suggestionsFilteredByBundleIds = v5->_suggestionsFilteredByBundleIds;
    v5->_suggestionsFilteredByBundleIds = v55;

    v57 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
    v60 = [v4 decodeObjectOfClasses:v59 forKey:@"seedContactIdentifiers"];
    seedContactIdentifiers = v5->_seedContactIdentifiers;
    v5->_seedContactIdentifiers = v60;

    v5->_isCollaborationAvailable = [v4 decodeBoolForKey:@"isCollaborationAvailable"];
    if ([v4 containsValueForKey:@"linkMetadataFromClient"])
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
      v67 = [v4 decodeObjectOfClasses:v66 forKey:@"linkMetadataFromClient"];
      linkMetadataFromClient = v5->_linkMetadataFromClient;
      v5->_linkMetadataFromClient = v67;
    }

    v69 = MEMORY[0x1E695DFD8];
    v70 = objc_opt_class();
    v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
    v72 = [v4 decodeObjectOfClasses:v71 forKey:@"peopleInPhotoIdentifiers"];
    peopleInPhotoIdentifiers = v5->_peopleInPhotoIdentifiers;
    v5->_peopleInPhotoIdentifiers = v72;

    v74 = MEMORY[0x1E695DFD8];
    v75 = objc_opt_class();
    v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
    v77 = [v4 decodeObjectOfClasses:v76 forKey:@"sceneTagsInPhotoIdentifiers"];
    sceneTagsInPhotoIdentifiers = v5->_sceneTagsInPhotoIdentifiers;
    v5->_sceneTagsInPhotoIdentifiers = v77;

    v5->_isFallbackFetch = [v4 decodeBoolForKey:@"isFallbackFetch"];
    v5->_isCoreMLValidationFetch = [v4 decodeBoolForKey:@"isCoreMLValidationFetch"];
    v79 = MEMORY[0x1E695DFD8];
    v80 = objc_opt_class();
    v81 = objc_opt_class();
    v82 = objc_opt_class();
    v83 = [v79 setWithObjects:{v80, v81, v82, objc_opt_class(), 0}];
    v84 = [v4 decodeObjectOfClasses:v83 forKey:@"scoredCoreMLCandidates"];
    scoredCoreMLCandidates = v5->_scoredCoreMLCandidates;
    v5->_scoredCoreMLCandidates = v84;

    if ([v4 containsValueForKey:@"coreMLInputFeatureTensor"])
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
      v90 = [v4 decodeObjectOfClasses:v89 forKey:@"coreMLInputFeatureTensor"];
      coreMLInputFeatureTensor = v5->_coreMLInputFeatureTensor;
      v5->_coreMLInputFeatureTensor = v90;
    }

    v92 = MEMORY[0x1E695DFD8];
    v93 = objc_opt_class();
    v94 = [v92 setWithObjects:{v93, objc_opt_class(), 0}];
    v95 = [v4 decodeObjectOfClasses:v94 forKey:@"coreMLModelFeatureOrder"];
    coreMLModelFeatureOrder = v5->_coreMLModelFeatureOrder;
    v5->_coreMLModelFeatureOrder = v95;

    v97 = MEMORY[0x1E695DFD8];
    v98 = objc_opt_class();
    v99 = objc_opt_class();
    v100 = [v97 setWithObjects:{v98, v99, objc_opt_class(), 0}];
    v101 = [v4 decodeObjectOfClasses:v100 forKey:@"coreMLTensorIndexToCandidate"];
    coreMLTensorIndexToCandidate = v5->_coreMLTensorIndexToCandidate;
    v5->_coreMLTensorIndexToCandidate = v101;

    v103 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coreMLNumberOfCandidates"];
    coreMLNumberOfCandidates = v5->_coreMLNumberOfCandidates;
    v5->_coreMLNumberOfCandidates = v103;

    v105 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trialExperimentId"];
    trialExperimentId = v5->_trialExperimentId;
    v5->_trialExperimentId = v105;

    v107 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trialTreatmentId"];
    trialTreatmentId = v5->_trialTreatmentId;
    v5->_trialTreatmentId = v107;

    v109 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trialDeploymentId"];
    trialDeploymentId = v5->_trialDeploymentId;
    v5->_trialDeploymentId = v109;

    v111 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentSpanId"];
    currentSpanId = v5->_currentSpanId;
    v5->_currentSpanId = v111;

    v113 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reasonType"];
    reasonType = v5->_reasonType;
    v5->_reasonType = v113;

    v5->_timedOut = [v4 decodeBoolForKey:@"timedOut"];
    v115 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionCompletionDate"];
    suggestionCompletionDate = v5->_suggestionCompletionDate;
    v5->_suggestionCompletionDate = v115;

    v117 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionPath"];
    suggestionPath = v5->_suggestionPath;
    v5->_suggestionPath = v117;

    v5->_isPSRActive = [v4 decodeBoolForKey:@"isPSRActive"];
    v119 = MEMORY[0x1E695DFD8];
    v120 = objc_opt_class();
    v121 = [v119 setWithObjects:{v120, objc_opt_class(), 0}];
    v122 = [v4 decodeObjectOfClasses:v121 forKey:@"supportedBundleIds"];
    supportedBundleIds = v5->_supportedBundleIds;
    v5->_supportedBundleIds = v122;

    v124 = objc_autoreleasePoolPush();
    v125 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v124);
    v126 = [v4 decodeObjectOfClasses:v125 forKey:@"queryStartDate"];
    queryStartDate = v5->_queryStartDate;
    v5->_queryStartDate = v126;

    v5->_feedBack = [v4 decodeIntegerForKey:@"feedBack"];
    v5->_bypassIDSFilter = [v4 decodeBoolForKey:@"bypassIDSFilter"];
    v128 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionID = self->_sessionID;
  v5 = a3;
  [v5 encodeObject:sessionID forKey:@"sessionID"];
  [v5 encodeObject:self->_suggestionDate forKey:@"suggestionDate"];
  [v5 encodeObject:self->_locationUUID forKey:@"locationUUID"];
  [v5 encodeObject:self->_locationUUIDs forKey:@"locationUUIDs"];
  [v5 encodeInteger:self->_locationType forKey:@"locationType"];
  [v5 encodeObject:self->_bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [v5 encodeObject:self->_seedRecipients forKey:@"seedRecipients"];
  [v5 encodeObject:self->_attachments forKey:@"attachments"];
  [v5 encodeObject:self->_priorityContacts forKey:@"priorityContacts"];
  [v5 encodeObject:self->_appBundleIdsToShareExtensionBundleIdsMapping forKey:@"appBundleIdsToShareExtensionBundleIdsMapping"];
  [v5 encodeObject:self->_photoSuggestedPeople forKey:@"photoSuggestedPeople"];
  [v5 encodeBool:self->_showPotentialFamilyMembers forKey:@"showPotentialFamilyMembers"];
  [v5 encodeBool:self->_isSharePlayAvailable forKey:@"isSharePlayAvailable"];
  [v5 encodeObject:self->_searchPrefix forKey:@"searchPrefix"];
  [v5 encodeInt64:self->_suggestionPurpose forKey:@"suggestionPurpose"];
  [v5 encodeObject:self->_suggestionsFilteredByBundleIds forKey:@"suggestionsFilteredByBundleIds"];
  [v5 encodeObject:self->_seedContactIdentifiers forKey:@"seedContactIdentifiers"];
  [v5 encodeBool:self->_isCollaborationAvailable forKey:@"isCollaborationAvailable"];
  [v5 encodeObject:self->_linkMetadataFromClient forKey:@"linkMetadataFromClient"];
  [v5 encodeObject:self->_peopleInPhotoIdentifiers forKey:@"peopleInPhotoIdentifiers"];
  [v5 encodeObject:self->_sceneTagsInPhotoIdentifiers forKey:@"sceneTagsInPhotoIdentifiers"];
  [v5 encodeBool:self->_isFallbackFetch forKey:@"isFallbackFetch"];
  [v5 encodeBool:self->_isCoreMLValidationFetch forKey:@"isCoreMLValidationFetch"];
  [v5 encodeObject:self->_scoredCoreMLCandidates forKey:@"scoredCoreMLCandidates"];
  [v5 encodeObject:self->_coreMLInputFeatureTensor forKey:@"coreMLInputFeatureTensor"];
  [v5 encodeObject:self->_coreMLModelFeatureOrder forKey:@"coreMLModelFeatureOrder"];
  [v5 encodeObject:self->_coreMLTensorIndexToCandidate forKey:@"coreMLTensorIndexToCandidate"];
  [v5 encodeObject:self->_coreMLNumberOfCandidates forKey:@"coreMLNumberOfCandidates"];
  [v5 encodeObject:self->_trialExperimentId forKey:@"trialExperimentId"];
  [v5 encodeObject:self->_trialTreatmentId forKey:@"trialTreatmentId"];
  [v5 encodeObject:self->_trialDeploymentId forKey:@"trialDeploymentId"];
  [v5 encodeObject:self->_currentSpanId forKey:@"currentSpanId"];
  [v5 encodeObject:self->_reasonType forKey:@"reasonType"];
  [v5 encodeBool:self->_timedOut forKey:@"timedOut"];
  [v5 encodeObject:self->_suggestionCompletionDate forKey:@"suggestionCompletionDate"];
  [v5 encodeObject:self->_suggestionPath forKey:@"suggestionPath"];
  [v5 encodeBool:self->_isPSRActive forKey:@"isPSRActive"];
  [v5 encodeObject:self->_supportedBundleIds forKey:@"supportedBundleIds"];
  [v5 encodeObject:self->_queryStartDate forKey:@"queryStartDate"];
  [v5 encodeInteger:self->_feedBack forKey:@"feedBack"];
  [v5 encodeBool:self->_bypassIDSFilter forKey:@"bypassIDSFilter"];
}

- (unint64_t)totalHashOfElementsFromArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, (v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16]) != 0))
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
  v3 = [(_PSPredictionContext *)self seedRecipients];
  v37 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:v3];

  v4 = [(_PSPredictionContext *)self locationUUIDs];
  v36 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:v4];

  v5 = [(_PSPredictionContext *)self attachments];
  v35 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:v5];

  v6 = [(_PSPredictionContext *)self suggestionsFilteredByBundleIds];
  v34 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:v6];

  v7 = [(_PSPredictionContext *)self seedContactIdentifiers];
  v33 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:v7];

  v8 = [(_PSPredictionContext *)self linkMetadataFromClient];
  v32 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:v8];

  v9 = [(_PSPredictionContext *)self peopleInPhotoIdentifiers];
  v10 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:v9];

  v11 = [(_PSPredictionContext *)self sceneTagsInPhotoIdentifiers];
  v12 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:v11];

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

- (BOOL)isEqual:(id)a3
{
  v134 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v29) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(_PSPredictionContext *)self sessionID];
    if (v7)
    {
      v8 = v7;
      v9 = [(_PSPredictionContext *)v6 sessionID];

      if (v9)
      {
        v10 = [(_PSPredictionContext *)self sessionID];
        v11 = [(_PSPredictionContext *)v6 sessionID];
        v12 = [v10 isEqualToString:v11];

        if (!v12)
        {
          goto LABEL_17;
        }
      }
    }

    v13 = [(_PSPredictionContext *)self bundleID];
    if (v13)
    {
      v14 = v13;
      v15 = [(_PSPredictionContext *)v6 bundleID];

      if (v15)
      {
        v16 = [(_PSPredictionContext *)self bundleID];
        v17 = [(_PSPredictionContext *)v6 bundleID];
        v18 = [v16 isEqualToString:v17];

        if (!v18)
        {
          goto LABEL_17;
        }
      }
    }

    v19 = [(_PSPredictionContext *)self accountIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = [(_PSPredictionContext *)v6 accountIdentifier];

      if (v21)
      {
        v22 = [(_PSPredictionContext *)self accountIdentifier];
        v23 = [(_PSPredictionContext *)v6 accountIdentifier];
        v24 = [v22 isEqualToString:v23];

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
      v35 = [(_PSPredictionContext *)self seedRecipients];
      v36 = [v34 initWithArray:v35];

      v37 = objc_alloc(MEMORY[0x1E695DFA8]);
      v38 = [(_PSPredictionContext *)v6 seedRecipients];
      v39 = [v37 initWithArray:v38];

      v40 = [v36 count];
      if (v40 == [v39 count] && objc_msgSend(v36, "isEqualToSet:", v39))
      {
        [v36 count];
        v41 = objc_alloc(MEMORY[0x1E695DFA8]);
        v42 = [(_PSPredictionContext *)self locationUUIDs];
        v43 = [v41 initWithArray:v42];

        v44 = objc_alloc(MEMORY[0x1E695DFA8]);
        v45 = [(_PSPredictionContext *)v6 locationUUIDs];
        v46 = [v44 initWithArray:v45];

        v47 = [v43 count];
        if (v47 == [v46 count] && objc_msgSend(v43, "isEqualToSet:", v46))
        {
          [v43 count];
          v48 = objc_alloc(MEMORY[0x1E695DFA8]);
          v49 = [(_PSPredictionContext *)self attachments];
          v50 = [v48 initWithArray:v49];

          v51 = objc_alloc(MEMORY[0x1E695DFA8]);
          v52 = [(_PSPredictionContext *)v6 attachments];
          v53 = [v51 initWithArray:v52];

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
            v57 = [(_PSPredictionContext *)self photoSuggestedPeople];
            v58 = [v57 count];

            if (v58)
            {
              v59 = 0;
              do
              {
                v60 = [(_PSPredictionContext *)self photoSuggestedPeople];
                v61 = [v60 objectAtIndexedSubscript:v59];
                v62 = [v61 objectForKeyedSubscript:@"contactIdentifier"];

                [v56 addObject:v62];
                ++v59;
                v63 = [(_PSPredictionContext *)self photoSuggestedPeople];
                v64 = [v63 count];
              }

              while (v64 > v59);
            }

            v123 = v56;
            v65 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v66 = [(_PSPredictionContext *)v6 photoSuggestedPeople];
            v67 = [v66 count];

            if (v67)
            {
              v68 = 0;
              do
              {
                v69 = [(_PSPredictionContext *)v6 photoSuggestedPeople];
                v70 = [v69 objectAtIndexedSubscript:v68];
                v71 = [v70 objectForKeyedSubscript:@"contactIdentifier"];

                [v65 addObject:v71];
                ++v68;
                v72 = [(_PSPredictionContext *)v6 photoSuggestedPeople];
                v73 = [v72 count];
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
              v76 = [(_PSPredictionContext *)self appBundleIdsToShareExtensionBundleIdsMapping];
              v77 = [v76 countByEnumeratingWithState:&v128 objects:v133 count:16];
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
                      objc_enumerationMutation(v76);
                    }

                    [v75 addObject:*(*(&v128 + 1) + 8 * i)];
                  }

                  v78 = [v76 countByEnumeratingWithState:&v128 objects:v133 count:16];
                }

                while (v78);
              }

              v81 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              v127 = 0u;
              v82 = [(_PSPredictionContext *)v6 appBundleIdsToShareExtensionBundleIdsMapping];
              v83 = [v82 countByEnumeratingWithState:&v124 objects:v132 count:16];
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
                      objc_enumerationMutation(v82);
                    }

                    [v81 addObject:*(*(&v124 + 1) + 8 * j)];
                  }

                  v84 = [v82 countByEnumeratingWithState:&v124 objects:v132 count:16];
                }

                while (v84);
              }

              v87 = [v75 count];
              if (v87 == [v81 count] && objc_msgSend(v75, "isEqualToSet:", v81))
              {
                [v75 count];
                v88 = objc_alloc(MEMORY[0x1E695DFD8]);
                v89 = [(_PSPredictionContext *)self suggestionsFilteredByBundleIds];
                v90 = [v88 initWithArray:v89];

                v91 = objc_alloc(MEMORY[0x1E695DFD8]);
                v92 = [(_PSPredictionContext *)v6 suggestionsFilteredByBundleIds];
                v93 = [v91 initWithArray:v92];

                v115 = v93;
                v116 = v90;
                if ([v90 isEqualToSet:v93])
                {
                  [v90 count];
                  v94 = objc_alloc(MEMORY[0x1E695DFD8]);
                  v95 = [(_PSPredictionContext *)self seedContactIdentifiers];
                  v96 = [v94 initWithArray:v95];

                  v97 = objc_alloc(MEMORY[0x1E695DFD8]);
                  v98 = [(_PSPredictionContext *)v6 seedContactIdentifiers];
                  v99 = [v97 initWithArray:v98];

                  v113 = v99;
                  v114 = v96;
                  if ([v96 isEqualToSet:v99])
                  {
                    [v96 count];
                    v100 = objc_alloc(MEMORY[0x1E695DFD8]);
                    v101 = [(_PSPredictionContext *)self linkMetadataFromClient];
                    v102 = [v100 initWithArray:v101];

                    v103 = objc_alloc(MEMORY[0x1E695DFD8]);
                    v104 = [(_PSPredictionContext *)v6 linkMetadataFromClient];
                    v105 = [v103 initWithArray:v104];

                    v112 = v102;
                    if ([v102 isEqualToSet:v105])
                    {
                      [v102 count];
                      v106 = objc_alloc(MEMORY[0x1E695DFD8]);
                      v107 = [(_PSPredictionContext *)self peopleInPhotoIdentifiers];
                      v108 = [v106 initWithArray:v107];

                      v109 = objc_alloc(MEMORY[0x1E695DFD8]);
                      v110 = [(_PSPredictionContext *)v6 peopleInPhotoIdentifiers];
                      v111 = [v109 initWithArray:v110];

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

- (void)sync:(id)a3
{
  v4 = a3;
  v5 = [v4 attachments];
  [(_PSPredictionContext *)self setAttachments:v5];

  v6 = [v4 priorityContacts];
  [(_PSPredictionContext *)self setPriorityContacts:v6];

  v7 = [v4 photoSuggestedPeople];
  [(_PSPredictionContext *)self setPhotoSuggestedPeople:v7];

  v8 = [v4 trialExperimentId];
  [(_PSPredictionContext *)self setTrialExperimentId:v8];

  v9 = [v4 trialTreatmentId];
  [(_PSPredictionContext *)self setTrialTreatmentId:v9];

  v10 = [v4 trialDeploymentId];
  [(_PSPredictionContext *)self setTrialDeploymentId:v10];

  -[_PSPredictionContext setIsPSRActive:](self, "setIsPSRActive:", [v4 isPSRActive]);
  v11 = [v4 reasonType];
  [(_PSPredictionContext *)self setReasonType:v11];

  v12 = [v4 supportedBundleIds];

  [(_PSPredictionContext *)self setSupportedBundleIds:v12];
}

@end