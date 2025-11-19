@interface _PSSuggestion
+ (id)suggestionForBundleID:(id)a3 derivedIntentIdentifier:(id)a4 knowledgeStore:(id)a5 contactResolver:(id)a6 reason:(id)a7 reasonType:(id)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isReturnToSender;
- (NSString)description;
- (_PSSuggestion)initWithBundleID:(id)a3 conversationIdentifier:(id)a4 groupName:(id)a5 recipients:(id)a6 derivedIntentIdentifier:(id)a7 image:(id)a8 reason:(id)a9 reasonType:(id)a10 score:(id)a11 familySuggestion:(BOOL)a12;
- (_PSSuggestion)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSSuggestion

- (NSString)description
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v3 = [(_PSSuggestion *)self conversationIdentifier];
  v4 = [(_PSSuggestion *)self groupName];
  v5 = [(_PSSuggestion *)self bundleID];
  v6 = [(_PSSuggestion *)self reason];
  v7 = [(_PSSuggestion *)self reasonType];
  v8 = [(_PSSuggestion *)self recipients];
  v9 = [(_PSSuggestion *)self image];
  v10 = [(_PSSuggestion *)self derivedIntentIdentifier];
  v11 = [(_PSSuggestion *)self trialID];
  v12 = [v15 stringWithFormat:@"<%@ %p> conversationIdentifier: %@, groupName: %@, bundleID: %@, reason: %@, reasonType: %@, recipients: %@, image: %@, derivedIntentIdentifier: %@, trialID: %@", v14, self, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (_PSSuggestion)initWithBundleID:(id)a3 conversationIdentifier:(id)a4 groupName:(id)a5 recipients:(id)a6 derivedIntentIdentifier:(id)a7 image:(id)a8 reason:(id)a9 reasonType:(id)a10 score:(id)a11 familySuggestion:(BOOL)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v45 = a8;
  v23 = a9;
  v24 = a10;
  v44 = a11;
  v46.receiver = self;
  v46.super_class = _PSSuggestion;
  v25 = [(_PSSuggestion *)&v46 init];
  if (v25)
  {
    v26 = [v19 copy];
    v27 = *(v25 + 2);
    *(v25 + 2) = v26;

    v28 = [v20 copy];
    v29 = *(v25 + 3);
    *(v25 + 3) = v28;

    v30 = [v21 copy];
    v31 = *(v25 + 4);
    *(v25 + 4) = v30;

    v32 = [v18 copy];
    v33 = *(v25 + 5);
    *(v25 + 5) = v32;

    v34 = [v22 copy];
    v35 = *(v25 + 8);
    *(v25 + 8) = v34;

    objc_storeStrong(v25 + 6, a8);
    v36 = [v23 copy];
    v37 = *(v25 + 15);
    *(v25 + 15) = v36;

    v38 = [v24 copy];
    v39 = *(v25 + 16);
    *(v25 + 16) = v38;

    v40 = *(v25 + 17);
    *(v25 + 17) = @"null";

    objc_storeStrong(v25 + 10, a11);
    v25[8] = a12;
    *(v25 + 9) = 0;
    v41 = *(v25 + 11);
    *(v25 + 11) = 0;

    if ([v21 count] < 2)
    {
      if ([v21 count] != 1)
      {
        *(v25 + 7) = 0;
        goto LABEL_8;
      }

      v42 = 1;
    }

    else
    {
      v42 = 2;
    }

    *(v25 + 7) = v42;
  }

LABEL_8:

  return v25;
}

+ (id)suggestionForBundleID:(id)a3 derivedIntentIdentifier:(id)a4 knowledgeStore:(id)a5 contactResolver:(id)a6 reason:(id)a7 reasonType:(id)a8
{
  v89[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v74 = a7;
  v76 = a8;
  v17 = MEMORY[0x1E69979D0];
  v18 = [MEMORY[0x1E6997990] derivedIntentIdentifier];
  v75 = v14;
  v19 = [v17 predicateForObjectsWithMetadataKey:v18 andStringValue:v14];

  v20 = MEMORY[0x1E69979D0];
  v21 = [MEMORY[0x1E69979E0] intentsSourceID];
  v22 = v13;
  v23 = [v20 predicateForEventsWithSourceID:v21 bundleID:v13];

  v24 = MEMORY[0x1E696AB28];
  v73 = v19;
  v89[0] = v19;
  v89[1] = v23;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
  v26 = [v24 andPredicateWithSubpredicates:v25];

  v27 = [MEMORY[0x1E69979D0] startDateSortDescriptorAscending:0];
  v28 = MEMORY[0x1E6997968];
  v29 = [MEMORY[0x1E69979E8] appIntentsStream];
  v88 = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  v70 = v27;
  v87 = v27;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
  v71 = v26;
  v32 = [v28 eventQueryWithPredicate:v26 eventStreams:v30 offset:0 limit:1 sortDescriptors:v31];

  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PSSuggestion.m"];
  v34 = [v33 stringByAppendingFormat:@":%d", 837];
  [v32 setClientName:v34];

  [v32 setTracker:&__block_literal_global_267];
  v81 = 0;
  v35 = [v15 executeQuery:v32 error:&v81];
  v72 = v23;
  v68 = v81;
  v69 = v35;
  if (v68)
  {
    v36 = +[_PSLogging knnChannel];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      +[_PSSuggestion suggestionForBundleID:derivedIntentIdentifier:knowledgeStore:contactResolver:reason:reasonType:];
    }

    v37 = 0;
    v38 = v73;
    v39 = v74;
    v40 = v22;
    v41 = v75;
  }

  else
  {
    v42 = [v35 firstObject];
    v36 = v42;
    v67 = v15;
    if (v42)
    {
      v66 = [v42 interaction];
      [v66 intent];
      v43 = v40 = v22;
      if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v63 = v43;
        v64 = v40;
        v44 = v43;
        v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v65 = v44;
        v46 = [v44 recipients];
        v47 = [v46 countByEnumeratingWithState:&v77 objects:v82 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v78;
          do
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v78 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = [_PSRecipient recipientForINPerson:*(*(&v77 + 1) + 8 * i) contactResolver:v16];
              if (v51)
              {
                [v45 addObject:v51];
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v77 objects:v82 count:16];
          }

          while (v48);
        }

        v52 = [_PSSuggestion alloc];
        v62 = [v65 speakableGroupName];
        v61 = [v62 spokenPhrase];
        v53 = [v45 copy];
        v54 = [v65 keyImage];
        v41 = v75;
        v39 = v74;
        v55 = v52;
        v40 = v64;
        v37 = [(_PSSuggestion *)v55 initWithBundleID:v64 conversationIdentifier:0 groupName:v61 recipients:v53 derivedIntentIdentifier:v75 image:v54 reason:v74 reasonType:v76 score:0];

        v56 = v65;
        v57 = v66;
        v38 = v73;
        v43 = v63;
      }

      else
      {
        v58 = +[_PSLogging knnChannel];
        v41 = v75;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v84 = v36;
          _os_log_impl(&dword_1B5ED1000, v58, OS_LOG_TYPE_INFO, "Could not retrieve send message intent from _DKEvent: %@", buf, 0xCu);
        }

        v37 = 0;
        v56 = v58;
        v38 = v73;
        v39 = v74;
        v57 = v66;
      }
    }

    else
    {
      v57 = +[_PSLogging knnChannel];
      v40 = v22;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v84 = v22;
        v85 = 2112;
        v41 = v75;
        v86 = v75;
        _os_log_impl(&dword_1B5ED1000, v57, OS_LOG_TYPE_INFO, "No intent with bundleID: %@, derived identifier: %@", buf, 0x16u);
        v37 = 0;
        v38 = v73;
        v39 = v74;
      }

      else
      {
        v37 = 0;
        v38 = v73;
        v39 = v74;
        v41 = v75;
      }
    }

    v15 = v67;
  }

  v59 = *MEMORY[0x1E69E9840];

  return v37;
}

- (_PSSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = _PSSuggestion;
  v5 = [(_PSSuggestion *)&v46 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conversationIdentifier"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    groupName = v5->_groupName;
    v5->_groupName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"derivedIntentIdentifier"];
    derivedIntentIdentifier = v5->_derivedIntentIdentifier;
    v5->_derivedIntentIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reasonType"];
    reasonType = v5->_reasonType;
    v5->_reasonType = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trialID"];
    trialID = v5->_trialID;
    v5->_trialID = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"score"];
    score = v5->_score;
    v5->_score = v27;

    v5->_isAdaptedModelCreated = [v4 decodeBoolForKey:@"isAdaptedModelCreated"];
    v5->_isAdaptedModelUsed = [v4 decodeBoolForKey:@"isAdaptedModelUsed"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adaptedModelRecipeID"];
    adaptedModelRecipeID = v5->_adaptedModelRecipeID;
    v5->_adaptedModelRecipeID = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportedBundleIDs"];
    supportedBundleIDs = v5->_supportedBundleIDs;
    v5->_supportedBundleIDs = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = [v33 setWithObjects:{v34, v35, v36, objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"modelSuggestionProxies"];
    modelSuggestionProxies = v5->_modelSuggestionProxies;
    v5->_modelSuggestionProxies = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"utiList"];
    utiList = v5->_utiList;
    v5->_utiList = v40;

    v5->_familySuggestion = [v4 decodeBoolForKey:@"familySuggestion"];
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messagesGroupIdentifier"];
    messagesGroupIdentifier = v5->_messagesGroupIdentifier;
    v5->_messagesGroupIdentifier = v42;

    v44 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  conversationIdentifier = self->_conversationIdentifier;
  v5 = a3;
  [v5 encodeObject:conversationIdentifier forKey:@"conversationIdentifier"];
  [v5 encodeObject:self->_groupName forKey:@"groupName"];
  [v5 encodeObject:self->_bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_derivedIntentIdentifier forKey:@"derivedIntentIdentifier"];
  [v5 encodeObject:self->_image forKey:@"image"];
  [v5 encodeObject:self->_reason forKey:@"reason"];
  [v5 encodeObject:self->_reasonType forKey:@"reasonType"];
  [v5 encodeObject:self->_recipients forKey:@"recipients"];
  [v5 encodeObject:self->_trialID forKey:@"trialID"];
  [v5 encodeObject:self->_score forKey:@"score"];
  [v5 encodeBool:self->_isAdaptedModelCreated forKey:@"isAdaptedModelCreated"];
  [v5 encodeBool:self->_isAdaptedModelUsed forKey:@"isAdaptedModelUsed"];
  [v5 encodeObject:self->_adaptedModelRecipeID forKey:@"adaptedModelRecipeID"];
  [v5 encodeObject:self->_supportedBundleIDs forKey:@"supportedBundleIDs"];
  [v5 encodeObject:self->_modelSuggestionProxies forKey:@"modelSuggestionProxies"];
  [v5 encodeObject:self->_utiList forKey:@"utiList"];
  [v5 encodeBool:self->_familySuggestion forKey:@"familySuggestion"];
  [v5 encodeObject:self->_messagesGroupIdentifier forKey:@"messagesGroupIdentifier"];
}

- (unint64_t)hash
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(_PSSuggestion *)self recipients];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) identifier];
        v6 ^= [v9 hash];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = [(NSString *)self->_conversationIdentifier hash];
  v11 = [(NSString *)self->_groupName hash];
  v12 = *MEMORY[0x1E69E9840];
  return v10 ^ v6 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v54 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(_PSSuggestion *)self conversationIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = [(_PSSuggestion *)v6 conversationIdentifier];

      if (v9)
      {
        v10 = [(_PSSuggestion *)self conversationIdentifier];
        v11 = [(_PSSuggestion *)v6 conversationIdentifier];
        v12 = [v10 isEqualToString:v11];

        if (!v12)
        {
          goto LABEL_28;
        }
      }
    }

    v13 = [(_PSSuggestion *)self groupName];
    if (v13)
    {
      v14 = v13;
      v15 = [(_PSSuggestion *)v6 groupName];

      if (v15)
      {
        v16 = [(_PSSuggestion *)self groupName];
        v17 = [(_PSSuggestion *)v6 groupName];
        v18 = [v16 isEqualToString:v17];

        if (!v18)
        {
          goto LABEL_28;
        }
      }
    }

    v19 = [(_PSSuggestion *)self bundleID];
    if (v19)
    {
      v20 = v19;
      v21 = [(_PSSuggestion *)v6 bundleID];

      if (v21)
      {
        v22 = [(_PSSuggestion *)self bundleID];
        v23 = [(_PSSuggestion *)v6 bundleID];
        v24 = [v22 isEqualToString:v23];

        if (!v24)
        {
          goto LABEL_28;
        }
      }
    }

    v25 = [(_PSSuggestion *)v6 recipients];
    v26 = [v25 count];
    v27 = [(_PSSuggestion *)self recipients];
    v28 = [v27 count];

    if (v26 != v28)
    {
LABEL_28:
      v54 = 0;
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v30 = [(_PSSuggestion *)self recipients];
      v31 = [v30 count];

      if (v31)
      {
        v32 = 0;
        do
        {
          v33 = [(_PSSuggestion *)self recipients];
          v34 = [v33 objectAtIndexedSubscript:v32];
          v35 = [v34 handle];

          if (v35)
          {
            v36 = [(_PSSuggestion *)self recipients];
            v37 = [v36 objectAtIndexedSubscript:v32];
            v38 = [v37 handle];
            [v29 addObject:v38];
          }

          ++v32;
          v39 = [(_PSSuggestion *)self recipients];
          v40 = [v39 count];
        }

        while (v40 > v32);
      }

      v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v42 = [(_PSSuggestion *)v6 recipients];
      v43 = [v42 count];

      if (v43)
      {
        v44 = 0;
        do
        {
          v45 = [(_PSSuggestion *)v6 recipients];
          v46 = [v45 objectAtIndexedSubscript:v44];
          v47 = [v46 handle];

          if (v47)
          {
            v48 = [(_PSSuggestion *)v6 recipients];
            v49 = [v48 objectAtIndexedSubscript:v44];
            v50 = [v49 handle];
            [v41 addObject:v50];
          }

          ++v44;
          v51 = [(_PSSuggestion *)v6 recipients];
          v52 = [v51 count];
        }

        while (v52 > v44);
      }

      v53 = [v41 count];
      if (v53 == [v29 count])
      {
        v54 = [v29 isEqualToSet:v41];
      }

      else
      {
        v54 = 0;
      }
    }
  }

  else
  {
    v54 = 0;
  }

  return v54;
}

- (BOOL)isReturnToSender
{
  v3 = +[_PSConstants returnToSenderReason];
  v4 = [(_PSSuggestion *)self reason];
  v5 = [v3 isEqual:v4];

  return v5;
}

+ (void)suggestionForBundleID:derivedIntentIdentifier:knowledgeStore:contactResolver:reason:reasonType:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Error retrieving intent: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end