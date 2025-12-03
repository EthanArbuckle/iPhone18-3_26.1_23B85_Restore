@interface _PSSuggestion
+ (id)suggestionForBundleID:(id)d derivedIntentIdentifier:(id)identifier knowledgeStore:(id)store contactResolver:(id)resolver reason:(id)reason reasonType:(id)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isReturnToSender;
- (NSString)description;
- (_PSSuggestion)initWithBundleID:(id)d conversationIdentifier:(id)identifier groupName:(id)name recipients:(id)recipients derivedIntentIdentifier:(id)intentIdentifier image:(id)image reason:(id)reason reasonType:(id)self0 score:(id)self1 familySuggestion:(BOOL)self2;
- (_PSSuggestion)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSSuggestion

- (NSString)description
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  conversationIdentifier = [(_PSSuggestion *)self conversationIdentifier];
  groupName = [(_PSSuggestion *)self groupName];
  bundleID = [(_PSSuggestion *)self bundleID];
  reason = [(_PSSuggestion *)self reason];
  reasonType = [(_PSSuggestion *)self reasonType];
  recipients = [(_PSSuggestion *)self recipients];
  image = [(_PSSuggestion *)self image];
  derivedIntentIdentifier = [(_PSSuggestion *)self derivedIntentIdentifier];
  trialID = [(_PSSuggestion *)self trialID];
  v12 = [v15 stringWithFormat:@"<%@ %p> conversationIdentifier: %@, groupName: %@, bundleID: %@, reason: %@, reasonType: %@, recipients: %@, image: %@, derivedIntentIdentifier: %@, trialID: %@", v14, self, conversationIdentifier, groupName, bundleID, reason, reasonType, recipients, image, derivedIntentIdentifier, trialID];

  return v12;
}

- (_PSSuggestion)initWithBundleID:(id)d conversationIdentifier:(id)identifier groupName:(id)name recipients:(id)recipients derivedIntentIdentifier:(id)intentIdentifier image:(id)image reason:(id)reason reasonType:(id)self0 score:(id)self1 familySuggestion:(BOOL)self2
{
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  recipientsCopy = recipients;
  intentIdentifierCopy = intentIdentifier;
  imageCopy = image;
  reasonCopy = reason;
  typeCopy = type;
  scoreCopy = score;
  v46.receiver = self;
  v46.super_class = _PSSuggestion;
  v25 = [(_PSSuggestion *)&v46 init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    v27 = *(v25 + 2);
    *(v25 + 2) = v26;

    v28 = [nameCopy copy];
    v29 = *(v25 + 3);
    *(v25 + 3) = v28;

    v30 = [recipientsCopy copy];
    v31 = *(v25 + 4);
    *(v25 + 4) = v30;

    v32 = [dCopy copy];
    v33 = *(v25 + 5);
    *(v25 + 5) = v32;

    v34 = [intentIdentifierCopy copy];
    v35 = *(v25 + 8);
    *(v25 + 8) = v34;

    objc_storeStrong(v25 + 6, image);
    v36 = [reasonCopy copy];
    v37 = *(v25 + 15);
    *(v25 + 15) = v36;

    v38 = [typeCopy copy];
    v39 = *(v25 + 16);
    *(v25 + 16) = v38;

    v40 = *(v25 + 17);
    *(v25 + 17) = @"null";

    objc_storeStrong(v25 + 10, score);
    v25[8] = suggestion;
    *(v25 + 9) = 0;
    v41 = *(v25 + 11);
    *(v25 + 11) = 0;

    if ([recipientsCopy count] < 2)
    {
      if ([recipientsCopy count] != 1)
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

+ (id)suggestionForBundleID:(id)d derivedIntentIdentifier:(id)identifier knowledgeStore:(id)store contactResolver:(id)resolver reason:(id)reason reasonType:(id)type
{
  v89[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  storeCopy = store;
  resolverCopy = resolver;
  reasonCopy = reason;
  typeCopy = type;
  v17 = MEMORY[0x1E69979D0];
  derivedIntentIdentifier = [MEMORY[0x1E6997990] derivedIntentIdentifier];
  v75 = identifierCopy;
  v19 = [v17 predicateForObjectsWithMetadataKey:derivedIntentIdentifier andStringValue:identifierCopy];

  v20 = MEMORY[0x1E69979D0];
  intentsSourceID = [MEMORY[0x1E69979E0] intentsSourceID];
  v22 = dCopy;
  v23 = [v20 predicateForEventsWithSourceID:intentsSourceID bundleID:dCopy];

  v24 = MEMORY[0x1E696AB28];
  v73 = v19;
  v89[0] = v19;
  v89[1] = v23;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
  v26 = [v24 andPredicateWithSubpredicates:v25];

  v27 = [MEMORY[0x1E69979D0] startDateSortDescriptorAscending:0];
  v28 = MEMORY[0x1E6997968];
  appIntentsStream = [MEMORY[0x1E69979E8] appIntentsStream];
  v88 = appIntentsStream;
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
  v35 = [storeCopy executeQuery:v32 error:&v81];
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
    v39 = reasonCopy;
    v40 = v22;
    v41 = v75;
  }

  else
  {
    firstObject = [v35 firstObject];
    v36 = firstObject;
    v67 = storeCopy;
    if (firstObject)
    {
      interaction = [firstObject interaction];
      [interaction intent];
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
        recipients = [v44 recipients];
        v47 = [recipients countByEnumeratingWithState:&v77 objects:v82 count:16];
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
                objc_enumerationMutation(recipients);
              }

              v51 = [_PSRecipient recipientForINPerson:*(*(&v77 + 1) + 8 * i) contactResolver:resolverCopy];
              if (v51)
              {
                [v45 addObject:v51];
              }
            }

            v48 = [recipients countByEnumeratingWithState:&v77 objects:v82 count:16];
          }

          while (v48);
        }

        v52 = [_PSSuggestion alloc];
        speakableGroupName = [v65 speakableGroupName];
        spokenPhrase = [speakableGroupName spokenPhrase];
        v53 = [v45 copy];
        keyImage = [v65 keyImage];
        v41 = v75;
        v39 = reasonCopy;
        v55 = v52;
        v40 = v64;
        v37 = [(_PSSuggestion *)v55 initWithBundleID:v64 conversationIdentifier:0 groupName:spokenPhrase recipients:v53 derivedIntentIdentifier:v75 image:keyImage reason:reasonCopy reasonType:typeCopy score:0];

        v56 = v65;
        v57 = interaction;
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
        v39 = reasonCopy;
        v57 = interaction;
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
        v39 = reasonCopy;
      }

      else
      {
        v37 = 0;
        v38 = v73;
        v39 = reasonCopy;
        v41 = v75;
      }
    }

    storeCopy = v67;
  }

  v59 = *MEMORY[0x1E69E9840];

  return v37;
}

- (_PSSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v46.receiver = self;
  v46.super_class = _PSSuggestion;
  v5 = [(_PSSuggestion *)&v46 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversationIdentifier"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    groupName = v5->_groupName;
    v5->_groupName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"derivedIntentIdentifier"];
    derivedIntentIdentifier = v5->_derivedIntentIdentifier;
    v5->_derivedIntentIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reasonType"];
    reasonType = v5->_reasonType;
    v5->_reasonType = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trialID"];
    trialID = v5->_trialID;
    v5->_trialID = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"score"];
    score = v5->_score;
    v5->_score = v27;

    v5->_isAdaptedModelCreated = [coderCopy decodeBoolForKey:@"isAdaptedModelCreated"];
    v5->_isAdaptedModelUsed = [coderCopy decodeBoolForKey:@"isAdaptedModelUsed"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adaptedModelRecipeID"];
    adaptedModelRecipeID = v5->_adaptedModelRecipeID;
    v5->_adaptedModelRecipeID = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportedBundleIDs"];
    supportedBundleIDs = v5->_supportedBundleIDs;
    v5->_supportedBundleIDs = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = [v33 setWithObjects:{v34, v35, v36, objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"modelSuggestionProxies"];
    modelSuggestionProxies = v5->_modelSuggestionProxies;
    v5->_modelSuggestionProxies = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"utiList"];
    utiList = v5->_utiList;
    v5->_utiList = v40;

    v5->_familySuggestion = [coderCopy decodeBoolForKey:@"familySuggestion"];
    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messagesGroupIdentifier"];
    messagesGroupIdentifier = v5->_messagesGroupIdentifier;
    v5->_messagesGroupIdentifier = v42;

    v44 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  conversationIdentifier = self->_conversationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:conversationIdentifier forKey:@"conversationIdentifier"];
  [coderCopy encodeObject:self->_groupName forKey:@"groupName"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_derivedIntentIdentifier forKey:@"derivedIntentIdentifier"];
  [coderCopy encodeObject:self->_image forKey:@"image"];
  [coderCopy encodeObject:self->_reason forKey:@"reason"];
  [coderCopy encodeObject:self->_reasonType forKey:@"reasonType"];
  [coderCopy encodeObject:self->_recipients forKey:@"recipients"];
  [coderCopy encodeObject:self->_trialID forKey:@"trialID"];
  [coderCopy encodeObject:self->_score forKey:@"score"];
  [coderCopy encodeBool:self->_isAdaptedModelCreated forKey:@"isAdaptedModelCreated"];
  [coderCopy encodeBool:self->_isAdaptedModelUsed forKey:@"isAdaptedModelUsed"];
  [coderCopy encodeObject:self->_adaptedModelRecipeID forKey:@"adaptedModelRecipeID"];
  [coderCopy encodeObject:self->_supportedBundleIDs forKey:@"supportedBundleIDs"];
  [coderCopy encodeObject:self->_modelSuggestionProxies forKey:@"modelSuggestionProxies"];
  [coderCopy encodeObject:self->_utiList forKey:@"utiList"];
  [coderCopy encodeBool:self->_familySuggestion forKey:@"familySuggestion"];
  [coderCopy encodeObject:self->_messagesGroupIdentifier forKey:@"messagesGroupIdentifier"];
}

- (unint64_t)hash
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  recipients = [(_PSSuggestion *)self recipients];
  v4 = [recipients countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(recipients);
        }

        identifier = [*(*(&v14 + 1) + 8 * i) identifier];
        v6 ^= [identifier hash];
      }

      v5 = [recipients countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v54 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    conversationIdentifier = [(_PSSuggestion *)self conversationIdentifier];
    if (conversationIdentifier)
    {
      v8 = conversationIdentifier;
      conversationIdentifier2 = [(_PSSuggestion *)v6 conversationIdentifier];

      if (conversationIdentifier2)
      {
        conversationIdentifier3 = [(_PSSuggestion *)self conversationIdentifier];
        conversationIdentifier4 = [(_PSSuggestion *)v6 conversationIdentifier];
        v12 = [conversationIdentifier3 isEqualToString:conversationIdentifier4];

        if (!v12)
        {
          goto LABEL_28;
        }
      }
    }

    groupName = [(_PSSuggestion *)self groupName];
    if (groupName)
    {
      v14 = groupName;
      groupName2 = [(_PSSuggestion *)v6 groupName];

      if (groupName2)
      {
        groupName3 = [(_PSSuggestion *)self groupName];
        groupName4 = [(_PSSuggestion *)v6 groupName];
        v18 = [groupName3 isEqualToString:groupName4];

        if (!v18)
        {
          goto LABEL_28;
        }
      }
    }

    bundleID = [(_PSSuggestion *)self bundleID];
    if (bundleID)
    {
      v20 = bundleID;
      bundleID2 = [(_PSSuggestion *)v6 bundleID];

      if (bundleID2)
      {
        bundleID3 = [(_PSSuggestion *)self bundleID];
        bundleID4 = [(_PSSuggestion *)v6 bundleID];
        v24 = [bundleID3 isEqualToString:bundleID4];

        if (!v24)
        {
          goto LABEL_28;
        }
      }
    }

    recipients = [(_PSSuggestion *)v6 recipients];
    v26 = [recipients count];
    recipients2 = [(_PSSuggestion *)self recipients];
    v28 = [recipients2 count];

    if (v26 != v28)
    {
LABEL_28:
      v54 = 0;
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      recipients3 = [(_PSSuggestion *)self recipients];
      v31 = [recipients3 count];

      if (v31)
      {
        v32 = 0;
        do
        {
          recipients4 = [(_PSSuggestion *)self recipients];
          v34 = [recipients4 objectAtIndexedSubscript:v32];
          handle = [v34 handle];

          if (handle)
          {
            recipients5 = [(_PSSuggestion *)self recipients];
            v37 = [recipients5 objectAtIndexedSubscript:v32];
            handle2 = [v37 handle];
            [v29 addObject:handle2];
          }

          ++v32;
          recipients6 = [(_PSSuggestion *)self recipients];
          v40 = [recipients6 count];
        }

        while (v40 > v32);
      }

      v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      recipients7 = [(_PSSuggestion *)v6 recipients];
      v43 = [recipients7 count];

      if (v43)
      {
        v44 = 0;
        do
        {
          recipients8 = [(_PSSuggestion *)v6 recipients];
          v46 = [recipients8 objectAtIndexedSubscript:v44];
          handle3 = [v46 handle];

          if (handle3)
          {
            recipients9 = [(_PSSuggestion *)v6 recipients];
            v49 = [recipients9 objectAtIndexedSubscript:v44];
            handle4 = [v49 handle];
            [v41 addObject:handle4];
          }

          ++v44;
          recipients10 = [(_PSSuggestion *)v6 recipients];
          v52 = [recipients10 count];
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
  reason = [(_PSSuggestion *)self reason];
  v5 = [v3 isEqual:reason];

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