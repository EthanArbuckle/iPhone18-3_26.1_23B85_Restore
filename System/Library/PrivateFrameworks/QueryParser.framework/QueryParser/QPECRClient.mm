@interface QPECRClient
- (id)generateEntityRequest:(id)a3 entityFilterType:(int64_t)a4 mode:(int64_t)a5 enableBackupSearch:(BOOL)a6;
- (id)visualIdentifiersWithText:(id)a3 allowPrefixSearch:(BOOL)a4 entityFilterType:(int64_t)a5 includeInferredNames:(BOOL)a6 allowGroundingToNamesAndEmails:(BOOL)a7 useNamesAndEmailsForNonRelations:(BOOL)a8 enableBackupSearch:(BOOL)a9 error:(id *)a10;
- (void)cooldownAsync;
- (void)cooldownSync;
- (void)warmUpAsync;
- (void)warmUpSync;
@end

@implementation QPECRClient

- (void)warmUpSync
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
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

- (id)generateEntityRequest:(id)a3 entityFilterType:(int64_t)a4 mode:(int64_t)a5 enableBackupSearch:(BOOL)a6
{
  v6 = a6;
  v9 = MEMORY[0x1E69A9E88];
  v10 = a3;
  v11 = [v9 alloc];
  v12 = &unk_1F45F8C30;
  if (a4 == 2)
  {
    v12 = &unk_1F45F8C48;
  }

  if (a4 == 1)
  {
    v13 = &unk_1F45F8C60;
  }

  else
  {
    v13 = v12;
  }

  if (v6)
  {
    BYTE2(v17) = 1;
    LOWORD(v17) = 256;
    v14 = [v11 initWithText:v10 entityClassFilter:v13 spans:0 mode:0 constraint:0 sourceIDs:0 kgq:0 includeFeatures:v17 includeInferredNames:? enableBackupSearch:?];
  }

  else
  {
    v14 = [v11 initWithText:v10 entityClassFilter:v13 spans:0 mode:a5 constraint:0 includeInferredNames:1];
  }

  v15 = v14;

  return v15;
}

- (id)visualIdentifiersWithText:(id)a3 allowPrefixSearch:(BOOL)a4 entityFilterType:(int64_t)a5 includeInferredNames:(BOOL)a6 allowGroundingToNamesAndEmails:(BOOL)a7 useNamesAndEmailsForNonRelations:(BOOL)a8 enableBackupSearch:(BOOL)a9 error:(id *)a10
{
  v89 = a8;
  v93 = a7;
  v137 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = v13;
  if (!a4)
  {
    v15 = v13;
    v16 = [v13 stringByAppendingString:@" "];

    v14 = v16;
  }

  v87 = v14;
  v17 = [(QPECRClient *)self generateEntityRequest:v14 entityFilterType:a5 mode:3 enableBackupSearch:a9];
  v125 = 0;
  v18 = [(QPECRClient *)self resolveEntitiesWithRequest:v17 error:&v125];
  v19 = v125;
  v20 = v19;
  v82 = v18;
  if (v19)
  {
    v21 = v19;
    v22 = 0;
    *a10 = v20;
  }

  else
  {
    [v18 rankedResults];
    v24 = v23 = v18;
    v25 = [v24 count];

    if (v25)
    {
      v81 = v17;
      v100 = [MEMORY[0x1E695DF90] dictionary];
      v26 = [MEMORY[0x1E695DF70] array];
      v27 = [MEMORY[0x1E695DF70] array];
      v28 = [MEMORY[0x1E695DF70] array];
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      obj = [v23 rankedResults];
      v85 = [obj countByEnumeratingWithState:&v121 objects:v136 count:16];
      if (v85)
      {
        v84 = *v122;
        v91 = v27;
        v92 = v26;
        v90 = v28;
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
            v88 = [v30 rankedItems];
            v95 = [v88 countByEnumeratingWithState:&v117 objects:v135 count:16];
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
                    objc_enumerationMutation(v88);
                  }

                  v98 = v31;
                  v32 = *(*(&v117 + 1) + 8 * v31);
                  v96 = [v32 isRelationshipMatch];
                  v33 = [v32 identifierInformation];
                  v113 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v97 = v33;
                  v99 = [v33 visualIdentifiers];
                  v34 = [v99 countByEnumeratingWithState:&v113 objects:v134 count:16];
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
                          objc_enumerationMutation(v99);
                        }

                        v38 = [*(*(&v113 + 1) + 8 * i) componentsSeparatedByString:@"/"];
                        v39 = [v38 firstObject];
                        v40 = [v39 length];

                        if (v40)
                        {
                          v41 = [v38 firstObject];
                          v42 = [v100 objectForKeyedSubscript:v41];

                          v43 = [v42 firstObject];
                          [v43 doubleValue];
                          v45 = v44;

                          v46 = [v42 lastObject];
                          [v46 doubleValue];
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
                          v56 = [v38 firstObject];
                          [v100 setObject:v55 forKeyedSubscript:v56];
                        }
                      }

                      v35 = [v99 countByEnumeratingWithState:&v113 objects:v134 count:16];
                    }

                    while (v35);
                  }

                  if (v93 && v96 | v89)
                  {
                    v111 = 0u;
                    v112 = 0u;
                    v109 = 0u;
                    v110 = 0u;
                    v57 = v97;
                    v58 = [v97 names];
                    v59 = [v58 countByEnumeratingWithState:&v109 objects:v132 count:16];
                    v27 = v91;
                    v26 = v92;
                    v28 = v90;
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
                            objc_enumerationMutation(v58);
                          }

                          [v92 addObject:*(*(&v109 + 1) + 8 * j)];
                        }

                        v60 = [v58 countByEnumeratingWithState:&v109 objects:v132 count:16];
                      }

                      while (v60);
                    }

                    v107 = 0u;
                    v108 = 0u;
                    v105 = 0u;
                    v106 = 0u;
                    v63 = [v97 emails];
                    v64 = [v63 countByEnumeratingWithState:&v105 objects:v131 count:16];
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
                            objc_enumerationMutation(v63);
                          }

                          [v91 addObject:*(*(&v105 + 1) + 8 * k)];
                        }

                        v65 = [v63 countByEnumeratingWithState:&v105 objects:v131 count:16];
                      }

                      while (v65);
                    }

                    v103 = 0u;
                    v104 = 0u;
                    v101 = 0u;
                    v102 = 0u;
                    v68 = [v97 contactIdentifiers];
                    v69 = [v68 countByEnumeratingWithState:&v101 objects:v130 count:16];
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
                            objc_enumerationMutation(v68);
                          }

                          [v90 addObject:*(*(&v101 + 1) + 8 * m)];
                        }

                        v70 = [v68 countByEnumeratingWithState:&v101 objects:v130 count:16];
                      }

                      while (v70);
                    }

                    v73 = v98;
                  }

                  else
                  {
                    v27 = v91;
                    v26 = v92;
                    v28 = v90;
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
                v95 = [v88 countByEnumeratingWithState:&v117 objects:v135 count:16];
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
      v75 = [v100 copy];
      v127[0] = v75;
      v126[1] = @"personNames";
      v76 = [v26 copy];
      v127[1] = v76;
      v126[2] = @"personEmails";
      v77 = [v27 copy];
      v127[2] = v77;
      v126[3] = @"personContactIdentifiers";
      v78 = [v28 copy];
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
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1C6584000, v1, OS_LOG_TYPE_DEBUG, "Cooled down %@", &v5, 0xCu);

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