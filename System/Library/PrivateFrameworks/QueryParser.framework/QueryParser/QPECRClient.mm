@interface QPECRClient
- (id)generateEntityRequest:(id)request entityFilterType:(int64_t)type mode:(int64_t)mode enableBackupSearch:(BOOL)search;
- (id)visualIdentifiersWithText:(id)text allowPrefixSearch:(BOOL)search entityFilterType:(int64_t)type includeInferredNames:(BOOL)names allowGroundingToNamesAndEmails:(BOOL)emails useNamesAndEmailsForNonRelations:(BOOL)relations enableBackupSearch:(BOOL)backupSearch error:(id *)self0;
- (void)cooldownAsync;
- (void)cooldownSync;
- (void)warmUpAsync;
- (void)warmUpSync;
@end

@implementation QPECRClient

- (void)warmUpSync
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C6584000, v4, v5, "Unable to warmup %@: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)warmUpAsync
{
  v3 = qos_class_self();
  v4 = dispatch_get_global_queue(v3, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__QPECRClient_warmUpAsync__block_invoke;
  block[3] = &unk_1E82667C0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (id)generateEntityRequest:(id)request entityFilterType:(int64_t)type mode:(int64_t)mode enableBackupSearch:(BOOL)search
{
  searchCopy = search;
  v9 = MEMORY[0x1E69A9E88];
  requestCopy = request;
  v11 = [v9 alloc];
  v12 = &unk_1F45F8C30;
  if (type == 2)
  {
    v12 = &unk_1F45F8C48;
  }

  if (type == 1)
  {
    v13 = &unk_1F45F8C60;
  }

  else
  {
    v13 = v12;
  }

  if (searchCopy)
  {
    BYTE2(v17) = 1;
    LOWORD(v17) = 256;
    v14 = [v11 initWithText:requestCopy entityClassFilter:v13 spans:0 mode:0 constraint:0 sourceIDs:0 kgq:0 includeFeatures:v17 includeInferredNames:? enableBackupSearch:?];
  }

  else
  {
    v14 = [v11 initWithText:requestCopy entityClassFilter:v13 spans:0 mode:mode constraint:0 includeInferredNames:1];
  }

  v15 = v14;

  return v15;
}

- (id)visualIdentifiersWithText:(id)text allowPrefixSearch:(BOOL)search entityFilterType:(int64_t)type includeInferredNames:(BOOL)names allowGroundingToNamesAndEmails:(BOOL)emails useNamesAndEmailsForNonRelations:(BOOL)relations enableBackupSearch:(BOOL)backupSearch error:(id *)self0
{
  relationsCopy = relations;
  emailsCopy = emails;
  v137 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v14 = textCopy;
  if (!search)
  {
    v15 = textCopy;
    v16 = [textCopy stringByAppendingString:@" "];

    v14 = v16;
  }

  v87 = v14;
  v17 = [(QPECRClient *)self generateEntityRequest:v14 entityFilterType:type mode:3 enableBackupSearch:backupSearch];
  v125 = 0;
  v18 = [(QPECRClient *)self resolveEntitiesWithRequest:v17 error:&v125];
  v19 = v125;
  v20 = v19;
  v82 = v18;
  if (v19)
  {
    v21 = v19;
    v22 = 0;
    *error = v20;
  }

  else
  {
    [v18 rankedResults];
    v24 = v23 = v18;
    v25 = [v24 count];

    if (v25)
    {
      v81 = v17;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      array3 = [MEMORY[0x1E695DF70] array];
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      obj = [v23 rankedResults];
      v85 = [obj countByEnumeratingWithState:&v121 objects:v136 count:16];
      if (v85)
      {
        v84 = *v122;
        v91 = array2;
        v92 = array;
        v90 = array3;
        do
        {
          v29 = 0;
          do
          {
            if (*v122 != v84)
            {
              objc_enumerationMutation(obj);
            }

            v86 = v29;
            v30 = *(*(&v121 + 1) + 8 * v29);
            v117 = 0u;
            v118 = 0u;
            v119 = 0u;
            v120 = 0u;
            rankedItems = [v30 rankedItems];
            v95 = [rankedItems countByEnumeratingWithState:&v117 objects:v135 count:16];
            if (v95)
            {
              v94 = *v118;
              do
              {
                v31 = 0;
                do
                {
                  if (*v118 != v94)
                  {
                    objc_enumerationMutation(rankedItems);
                  }

                  v98 = v31;
                  v32 = *(*(&v117 + 1) + 8 * v31);
                  isRelationshipMatch = [v32 isRelationshipMatch];
                  identifierInformation = [v32 identifierInformation];
                  v113 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v97 = identifierInformation;
                  visualIdentifiers = [identifierInformation visualIdentifiers];
                  v34 = [visualIdentifiers countByEnumeratingWithState:&v113 objects:v134 count:16];
                  if (v34)
                  {
                    v35 = v34;
                    v36 = *v114;
                    do
                    {
                      for (i = 0; i != v35; ++i)
                      {
                        if (*v114 != v36)
                        {
                          objc_enumerationMutation(visualIdentifiers);
                        }

                        v38 = [*(*(&v113 + 1) + 8 * i) componentsSeparatedByString:@"/"];
                        firstObject = [v38 firstObject];
                        v40 = [firstObject length];

                        if (v40)
                        {
                          firstObject2 = [v38 firstObject];
                          v42 = [dictionary objectForKeyedSubscript:firstObject2];

                          firstObject3 = [v42 firstObject];
                          [firstObject3 doubleValue];
                          v45 = v44;

                          lastObject = [v42 lastObject];
                          [lastObject doubleValue];
                          v48 = v47;

                          [v32 nameScore];
                          if (v49 > v45)
                          {
                            [v32 nameScore];
                            v45 = v50;
                          }

                          [v32 confirmationConfidence];
                          if (v51 > v48)
                          {
                            [v32 confirmationConfidence];
                            v48 = v52;
                          }

                          v53 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
                          v133[0] = v53;
                          v54 = [MEMORY[0x1E696AD98] numberWithDouble:v48];
                          v133[1] = v54;
                          v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:2];
                          firstObject4 = [v38 firstObject];
                          [dictionary setObject:v55 forKeyedSubscript:firstObject4];
                        }
                      }

                      v35 = [visualIdentifiers countByEnumeratingWithState:&v113 objects:v134 count:16];
                    }

                    while (v35);
                  }

                  if (emailsCopy && isRelationshipMatch | relationsCopy)
                  {
                    v111 = 0u;
                    v112 = 0u;
                    v109 = 0u;
                    v110 = 0u;
                    v57 = v97;
                    names = [v97 names];
                    v59 = [names countByEnumeratingWithState:&v109 objects:v132 count:16];
                    array2 = v91;
                    array = v92;
                    array3 = v90;
                    if (v59)
                    {
                      v60 = v59;
                      v61 = *v110;
                      do
                      {
                        for (j = 0; j != v60; ++j)
                        {
                          if (*v110 != v61)
                          {
                            objc_enumerationMutation(names);
                          }

                          [v92 addObject:*(*(&v109 + 1) + 8 * j)];
                        }

                        v60 = [names countByEnumeratingWithState:&v109 objects:v132 count:16];
                      }

                      while (v60);
                    }

                    v107 = 0u;
                    v108 = 0u;
                    v105 = 0u;
                    v106 = 0u;
                    emails = [v97 emails];
                    v64 = [emails countByEnumeratingWithState:&v105 objects:v131 count:16];
                    if (v64)
                    {
                      v65 = v64;
                      v66 = *v106;
                      do
                      {
                        for (k = 0; k != v65; ++k)
                        {
                          if (*v106 != v66)
                          {
                            objc_enumerationMutation(emails);
                          }

                          [v91 addObject:*(*(&v105 + 1) + 8 * k)];
                        }

                        v65 = [emails countByEnumeratingWithState:&v105 objects:v131 count:16];
                      }

                      while (v65);
                    }

                    v103 = 0u;
                    v104 = 0u;
                    v101 = 0u;
                    v102 = 0u;
                    contactIdentifiers = [v97 contactIdentifiers];
                    v69 = [contactIdentifiers countByEnumeratingWithState:&v101 objects:v130 count:16];
                    if (v69)
                    {
                      v70 = v69;
                      v71 = *v102;
                      do
                      {
                        for (m = 0; m != v70; ++m)
                        {
                          if (*v102 != v71)
                          {
                            objc_enumerationMutation(contactIdentifiers);
                          }

                          [v90 addObject:*(*(&v101 + 1) + 8 * m)];
                        }

                        v70 = [contactIdentifiers countByEnumeratingWithState:&v101 objects:v130 count:16];
                      }

                      while (v70);
                    }

                    v73 = v98;
                  }

                  else
                  {
                    array2 = v91;
                    array = v92;
                    array3 = v90;
                    v57 = v97;
                    if (ecrClientLogger_token != -1)
                    {
                      [QPECRClient warmUpSync];
                    }

                    v73 = v98;
                    v74 = ecrClientLogger_log;
                    if (os_log_type_enabled(ecrClientLogger_log, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v129 = v87;
                      _os_log_impl(&dword_1C6584000, v74, OS_LOG_TYPE_DEFAULT, "Not using ECR output names, emails and phone number for text:%@", buf, 0xCu);
                    }
                  }

                  v31 = v73 + 1;
                }

                while (v31 != v95);
                v95 = [rankedItems countByEnumeratingWithState:&v117 objects:v135 count:16];
              }

              while (v95);
            }

            v29 = v86 + 1;
          }

          while (v86 + 1 != v85);
          v85 = [obj countByEnumeratingWithState:&v121 objects:v136 count:16];
        }

        while (v85);
      }

      v126[0] = @"visualIdentifier";
      v75 = [dictionary copy];
      v127[0] = v75;
      v126[1] = @"personNames";
      v76 = [array copy];
      v127[1] = v76;
      v126[2] = @"personEmails";
      v77 = [array2 copy];
      v127[2] = v77;
      v126[3] = @"personContactIdentifiers";
      v78 = [array3 copy];
      v127[3] = v78;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:4];

      v20 = 0;
      v17 = v81;
    }

    else
    {
      v22 = MEMORY[0x1E695E0F8];
    }
  }

  v79 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)cooldownSync
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1C6584000, selfCopy, OS_LOG_TYPE_DEBUG, "Cooled down %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)cooldownAsync
{
  v3 = qos_class_self();
  v4 = dispatch_get_global_queue(v3, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__QPECRClient_cooldownAsync__block_invoke;
  block[3] = &unk_1E82667C0;
  block[4] = self;
  dispatch_async(v4, block);
}

@end