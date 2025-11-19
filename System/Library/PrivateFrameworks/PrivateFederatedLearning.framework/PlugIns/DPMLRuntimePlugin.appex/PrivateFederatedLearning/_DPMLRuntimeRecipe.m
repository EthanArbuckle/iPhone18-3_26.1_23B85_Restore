@interface _DPMLRuntimeRecipe
+ (id)recipeWithTrialClient:(id)a3 error:(id *)a4;
+ (int64_t)dataRecorderTypeEnumFromString:(id)a3;
- (_DPMLRuntimeRecipe)initWithTrialClient:(id)a3 recipeIdentifier:(id)a4 clientIdentifier:(id)a5 recordMetadata:(id)a6 dataRecorderType:(int64_t)a7 dataTypeContent:(id)a8 recordParameters:(id)a9 cohortNameList:(id)a10;
- (_DPMLRuntimeRecipe)initWithTrialClient:(id)a3 recipeIdentifier:(id)a4 clientIdentifier:(id)a5 recordMetadata:(id)a6 dataTypeContent:(id)a7 sqlQuery:(id)a8 sqlAccessTable:(id)a9 cohortNameList:(id)a10 isUnknownDictionaryCase:(BOOL)a11;
- (id)recordDataArray:(id)a3 error:(id *)a4;
- (id)recordDataArray:(id)a3 metadata:(id)a4 error:(id *)a5;
- (id)runRecipeWithError:(id *)a3;
- (void)setRecipeType:(unint64_t)a3;
@end

@implementation _DPMLRuntimeRecipe

- (void)setRecipeType:(unint64_t)a3
{
  self->_recipeType = a3;
  recordParameters = self->_recordParameters;
  self->_recordParameters = 0;

  dataTypeContent = self->_dataTypeContent;
  self->_dataTypeContent = 0;

  sqlQuery = self->_sqlQuery;
  self->_sqlQuery = 0;

  sqlAccessTable = self->_sqlAccessTable;
  self->_sqlAccessTable = 0;

  cohortNameList = self->_cohortNameList;
  self->_cohortNameList = 0;
}

- (_DPMLRuntimeRecipe)initWithTrialClient:(id)a3 recipeIdentifier:(id)a4 clientIdentifier:(id)a5 recordMetadata:(id)a6 dataRecorderType:(int64_t)a7 dataTypeContent:(id)a8 recordParameters:(id)a9 cohortNameList:(id)a10
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v29.receiver = self;
  v29.super_class = _DPMLRuntimeRecipe;
  v19 = [(_DPMLRuntimeRecipe *)&v29 init];
  v20 = v19;
  if (v19)
  {
    [(_DPMLRuntimeRecipe *)v19 setRecipeType:1];
    objc_storeStrong(&v20->_recipeIdentifier, a4);
    objc_storeStrong(&v20->_clientIdentifier, a5);
    objc_storeStrong(&v20->_recordMetadata, a6);
    objc_storeStrong(&v20->_trialClient, a3);
    v20->_dataRecorderType = a7;
    objc_storeStrong(&v20->_cohortNameList, a10);
    if ([(_DPMLRuntimeRecipe *)v20 dataRecorderType]== 6)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    dataTypeContent = v20->_dataTypeContent;
    v20->_dataTypeContent = v21;

    objc_storeStrong(&v20->_recordParameters, a9);
  }

  return v20;
}

- (_DPMLRuntimeRecipe)initWithTrialClient:(id)a3 recipeIdentifier:(id)a4 clientIdentifier:(id)a5 recordMetadata:(id)a6 dataTypeContent:(id)a7 sqlQuery:(id)a8 sqlAccessTable:(id)a9 cohortNameList:(id)a10 isUnknownDictionaryCase:(BOOL)a11
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v23 = a8;
  v22 = a9;
  v18 = a10;
  v29.receiver = self;
  v29.super_class = _DPMLRuntimeRecipe;
  v19 = [(_DPMLRuntimeRecipe *)&v29 init];
  v20 = v19;
  if (v19)
  {
    [(_DPMLRuntimeRecipe *)v19 setRecipeType:2];
    objc_storeStrong(&v20->_recipeIdentifier, a4);
    objc_storeStrong(&v20->_clientIdentifier, a5);
    objc_storeStrong(&v20->_recordMetadata, a6);
    objc_storeStrong(&v20->_dataTypeContent, a7);
    objc_storeStrong(&v20->_sqlQuery, a8);
    objc_storeStrong(&v20->_trialClient, a3);
    objc_storeStrong(&v20->_sqlAccessTable, a9);
    objc_storeStrong(&v20->_cohortNameList, a10);
    v20->_isUnknownDictionaryCase = a11;
  }

  return v20;
}

+ (id)recipeWithTrialClient:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 recipeDictionary];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"useCaseEncoding"];
    if ([v8 length])
    {
      v9 = 1;
    }

    else
    {
      v11 = [v7 objectForKey:@"unknownDictionary"];
      v9 = v11 != 0;
    }

    v12 = [v7 objectForKey:@"version"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (a4)
      {
        [_DPMLRuntimeError errorWithCode:100 description:@"Recipe is missing version string"];
        *a4 = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_120;
    }

    v13 = [v7 objectForKey:@"recipeIdentifier"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (a4)
      {
        [_DPMLRuntimeError errorWithCode:100 description:@"Recipe is missing recipe identifier string"];
        *a4 = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_119;
    }

    v14 = [v7 objectForKey:@"clientIdentifier"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (a4)
      {
        [_DPMLRuntimeError errorWithCode:100 description:@"Recipe is missing client identifier string"];
        *a4 = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_118;
    }

    v78 = v13;
    v79 = v14;
    v15 = [v5 namespaceIdentifier];
    v89 = 0;
    v16 = [_DPMLRecipeIDValidator checkClientIdentifier:v14 againstNamespaceIdentifier:v15 error:&v89];
    v77 = v89;

    v17 = v16;
    if (v16)
    {
      v76 = v16;
      if ([v16 BOOLValue])
      {
        v18 = [v7 objectForKey:@"dataRecorderType"];
        v75 = v18;
        if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v20 = [_DPMLRuntimeRecipe dataRecorderTypeEnumFromString:v19];
          v21 = 0;
          if (v20 > 4)
          {
            if (v20 != 5)
            {
              v22 = 0;
              if (v20 != 6)
              {
                goto LABEL_46;
              }

              v26 = [v7 objectForKey:@"dataTypeContent"];
              if (v26)
              {
                v22 = v26;
                v27 = [v5 namespaceIdentifier];
                v28 = sub_100014578(v27, v22);

                if (v28)
                {
                  v68 = 0;
LABEL_45:
                  v14 = v79;

                  v21 = v68;
                  goto LABEL_46;
                }

                if (a4)
                {
                  *a4 = [_DPMLRuntimeError errorWithCode:100 description:@"Data type content contains factor field(s) that are not allowed"];
                }
              }

              else if (a4)
              {
                v43 = [NSString stringWithFormat:@"key %@ missing from recipe", @"dataTypeContent"];
                *a4 = [_DPMLRuntimeError errorWithCode:100 description:v43];
              }

              goto LABEL_113;
            }

LABEL_59:
            v28 = [v7 objectForKey:@"numBucket"];
            if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v74 = [v7 objectForKey:@"minValue"];
              if (v74 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v39 = [v7 objectForKey:@"maxValue"];
                if (v39)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v68 = [[_DPMLRuntimeLegacyRecordParameters alloc] initWithNumBucket:v28 minValue:v74 maxValue:v39];

                    v22 = 0;
                    goto LABEL_45;
                  }
                }

                if (a4)
                {
                  v51 = [NSString stringWithFormat:@"key %@ missing from recipe", @"maxValue"];
                  *a4 = [_DPMLRuntimeError errorWithCode:100 description:v51];
                }
              }

              else if (a4)
              {
                v42 = [NSString stringWithFormat:@"key %@ missing from recipe", @"minValue"];
                *a4 = [_DPMLRuntimeError errorWithCode:100 description:v42];
              }
            }

            else if (a4)
            {
              v40 = [NSString stringWithFormat:@"key %@ missing from recipe", @"numBucket"];
              *a4 = [_DPMLRuntimeError errorWithCode:100 description:v40];
            }

LABEL_113:
            v10 = 0;
            v14 = v79;
            goto LABEL_114;
          }

          if (v20 != -1)
          {
            v22 = 0;
            if (v20)
            {
LABEL_46:
              v69 = v21;
              v29 = [v7 objectForKey:@"cohorts"];
              v67 = v22;
              if (v29)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (a4)
                  {
                    [_DPMLRuntimeError errorWithCode:100 description:@"Cohorts must be a list of strings."];
                    *a4 = v10 = 0;
                  }

                  else
                  {
                    v10 = 0;
                  }

                  v23 = v77;
                  goto LABEL_167;
                }

                v87 = 0u;
                v88 = 0u;
                v85 = 0u;
                v86 = 0u;
                v65 = v29;
                obj = v29;
                v30 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
                if (v30)
                {
                  v31 = v30;
                  v72 = *v86;
                  while (2)
                  {
                    for (i = 0; i != v31; i = i + 1)
                    {
                      if (*v86 != v72)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v33 = *(*(&v85 + 1) + 8 * i);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (a4)
                        {
                          *a4 = [_DPMLRuntimeError errorWithCode:100 description:@"Cohorts must be a list of strings."];
                        }

                        v10 = 0;
                        v14 = v79;
                        v23 = v77;
                        v29 = v65;
                        goto LABEL_167;
                      }
                    }

                    v31 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
                    if (v31)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v29 = v65;
              }

              v66 = v29;
              v34 = kDPMetadataVersionHash;
              v93 = kDPMetadataVersionHash;
              v94 = &stru_10002D560;
              v35 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
              v36 = kDPMetadataDediscoTaskConfig;
              v37 = [v7 objectForKey:kDPMetadataDediscoTaskConfig];
              v73 = v37;
              if (v37)
              {
                v91[0] = v34;
                v91[1] = v36;
                v92[0] = &stru_10002D560;
                v92[1] = v37;
                v38 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:2];

                obja = v38;
              }

              else
              {
                obja = v35;
              }

              v14 = v79;
              if ([v12 isEqualToString:@"legacy"])
              {
                if (a4)
                {
                  v44 = @"DSL is not supported.";
LABEL_104:
                  [_DPMLRuntimeError errorWithCode:100 description:v44];
                  *a4 = v10 = 0;
LABEL_166:
                  v23 = v77;
                  v29 = v66;

LABEL_167:
                  goto LABEL_115;
                }

                goto LABEL_105;
              }

              if (([v12 isEqualToString:@"sql+dtc"] & 1) == 0)
              {
                if (a4)
                {
                  v44 = @"Recipe version not supported";
                  goto LABEL_104;
                }

LABEL_105:
                v10 = 0;
                goto LABEL_166;
              }

              if (!v67)
              {
                if (a4)
                {
                  v53 = [NSString stringWithFormat:@"key %@ is required for SQL queries", @"dataTypeContent"];
                  *a4 = [_DPMLRuntimeError errorWithCode:100 description:v53];
                }

                v10 = 0;
                goto LABEL_165;
              }

              v45 = [v7 objectForKey:@"sqlParameters"];
              if (!v45 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                if (a4)
                {
                  [_DPMLRuntimeError errorWithCode:100 description:@"SQL parameters dictionary are missing"];
                  *a4 = v10 = 0;
                }

                else
                {
                  v10 = 0;
                }

                goto LABEL_164;
              }

              v64 = [v45 objectForKey:@"accessControl"];
              if (!v64 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                if (a4)
                {
                  [_DPMLRuntimeError errorWithCode:100 description:@"SQL parameters dictionary is missing access controls"];
                  *a4 = v10 = 0;
                }

                else
                {
                  v10 = 0;
                }

                goto LABEL_163;
              }

              v63 = [v45 objectForKey:@"query"];
              if (v63)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v46 = v63;
                  goto LABEL_93;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v83 = 0u;
                  v84 = 0u;
                  v81 = 0u;
                  v82 = 0u;
                  v60 = v63;
                  v62 = [v60 countByEnumeratingWithState:&v81 objects:v90 count:16];
                  if (v62)
                  {
                    v61 = *v82;
                    while (2)
                    {
                      for (j = 0; j != v62; j = j + 1)
                      {
                        if (*v82 != v61)
                        {
                          objc_enumerationMutation(v60);
                        }

                        v56 = *(*(&v81 + 1) + 8 * j);
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (a4)
                          {
                            *a4 = [_DPMLRuntimeError errorWithCode:100 description:@"If SQL query is an array, all entries must be strings"];
                          }

                          goto LABEL_155;
                        }
                      }

                      v62 = [v60 countByEnumeratingWithState:&v81 objects:v90 count:16];
                      if (v62)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v46 = [v60 componentsJoinedByString:@" "];
LABEL_93:
                  v47 = v46;
                  v48 = +[_PFLLog extension];
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                  {
                    sub_10001CFBC();
                  }

                  v80 = 0;
                  v49 = [v5 namespaceIdentifier];
                  v50 = [_DPMLSQLQueryValidator isValidSQLQuery:v47 forNamespaceID:v49 possibleError:&v80];

                  if (v50)
                  {
                    if ([v50 BOOLValue])
                    {
                      if (sub_1000147B8(v47, v79, v73))
                      {
                        LOBYTE(v59) = v9;
                        v10 = [[_DPMLRuntimeRecipe alloc] initWithTrialClient:v5 recipeIdentifier:v78 clientIdentifier:v79 recordMetadata:obja dataTypeContent:v67 sqlQuery:v47 sqlAccessTable:v64 cohortNameList:v66 isUnknownDictionaryCase:v59];
LABEL_161:

                        goto LABEL_162;
                      }

                      if (a4)
                      {
                        v58 = @"Cannot validate recipe for Private Relay usage";
                        goto LABEL_158;
                      }
                    }

                    else if (a4)
                    {
                      v58 = @"SQL query not valid";
LABEL_158:
                      v57 = [_DPMLRuntimeError errorWithCode:100 description:v58];
                      goto LABEL_159;
                    }
                  }

                  else if (a4)
                  {
                    v57 = [_DPMLRuntimeError errorWithCode:100 underlyingError:v80 description:@"Cannot validate SQL query"];
LABEL_159:
                    v10 = 0;
                    *a4 = v57;
                    goto LABEL_161;
                  }

                  v10 = 0;
                  goto LABEL_161;
                }

                if (a4)
                {
                  v54 = @"SQL query should either be an array of strings or a single string";
                  goto LABEL_147;
                }
              }

              else if (a4)
              {
                v54 = @"SQL parameters dictionary is missing SQL query";
LABEL_147:
                [_DPMLRuntimeError errorWithCode:100 description:v54];
                *a4 = v10 = 0;
LABEL_162:

LABEL_163:
LABEL_164:

LABEL_165:
                v14 = v79;
                goto LABEL_166;
              }

LABEL_155:
              v10 = 0;
              goto LABEL_162;
            }

            goto LABEL_59;
          }

          if (a4)
          {
            v41 = [NSString stringWithFormat:@"The data recorder type %@ is not supported", v19];
            *a4 = [_DPMLRuntimeError errorWithCode:100 description:v41];
          }
        }

        else if (a4)
        {
          [_DPMLRuntimeError errorWithCode:100 description:@"Recipe is missing data recorder type string"];
          *a4 = v10 = 0;
LABEL_114:
          v23 = v77;
LABEL_115:

          v17 = v76;
          goto LABEL_116;
        }

        v10 = 0;
        goto LABEL_114;
      }

      if (a4)
      {
        v24 = [v5 namespaceIdentifier];
        v25 = [NSString stringWithFormat:@"The client identifier %@ is not allowed for the Trial namespace %@", v79, v24];
        *a4 = [_DPMLRuntimeError errorWithCode:100 description:v25];

        v14 = v79;
      }

      v10 = 0;
      v17 = v16;
    }

    else
    {
      if (a4)
      {
        v23 = v77;
        [_DPMLRuntimeError errorWithCode:100 underlyingError:v77 description:@"Cannot perform recipe ID check"];
        *a4 = v10 = 0;
        v17 = 0;
LABEL_116:
        v13 = v78;
        goto LABEL_117;
      }

      v10 = 0;
    }

    v23 = v77;
    v13 = v78;
LABEL_117:

LABEL_118:
LABEL_119:

LABEL_120:
    goto LABEL_121;
  }

  if (a4)
  {
    [_DPMLRuntimeError errorWithCode:100 description:@"Trial client cannot provide the recipe"];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_121:

  return v10;
}

- (id)runRecipeWithError:(id *)a3
{
  v5 = [(_DPMLRuntimeRecipe *)self recipeType];
  if (v5 == 2)
  {
    v8 = [_DPMLRuntimeSQL alloc];
    v9 = [(_DPMLRuntimeRecipe *)self sqlAccessTable];
    v10 = [(_DPMLRuntimeRecipe *)self recipeIdentifier];
    v30 = 0;
    v11 = [(_DPMLRuntimeSQL *)v8 initWithSQLAccessTable:v9 forRecipeIdentifier:v10 withError:&v30];
    v12 = v30;

    if (!v11)
    {
      if (a3)
      {
        [_DPMLRuntimeError errorWithCode:400 underlyingError:v12 description:@"SQL Constructor Error"];
        *a3 = v18 = 0;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_30;
    }

    v13 = [(_DPMLRuntimeRecipe *)self sqlQuery];
    v29 = v12;
    v14 = [(_DPMLRuntimeSQL *)v11 runQuery:v13 withError:&v29];
    v15 = v29;

    if (v14)
    {
      if (![v14 count])
      {
        v19 = +[_PFLLog extension];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_10001D294();
        }

        v18 = &off_100030520;
        goto LABEL_28;
      }

      if ([(_DPMLRuntimeRecipe *)self isUnknownDictionaryCase])
      {
        v16 = [UnknownDictionary runWithRecipe:self data:v14 error:a3];
        if ((v16 & 0x80000000) == 0)
        {
          v17 = v16;
LABEL_26:
          v18 = [NSNumber numberWithInt:v17];
          goto LABEL_28;
        }
      }

      else
      {
        v20 = [(_DPMLRuntimeRecipe *)self trialClient];
        v21 = [v20 namespaceIdentifier];
        v22 = [&off_1000303D0 containsObject:v21];

        if (!v22)
        {
          v28 = v15;
          v18 = [(_DPMLRuntimeRecipe *)self recordDataArray:v14 error:&v28];
          v12 = v28;

          if (v18)
          {
            if (v12)
            {
              v26 = +[_PFLLog extension];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                sub_10001D224();
              }
            }

            v27 = v18;
          }

          else if (a3)
          {
            *a3 = [_DPMLRuntimeError errorWithCode:400 underlyingError:v12 description:@"SQL Query Recording Error"];
          }

          goto LABEL_29;
        }

        v23 = [(_DPMLRuntimeRecipe *)self trialClient];
        v24 = [DPMLRuntimeKeyboard runWithTrialClient:v23 error:a3];

        if ((v24 & 0x80000000) == 0)
        {
          v17 = v24;
          goto LABEL_26;
        }
      }
    }

    else if (a3)
    {
      [_DPMLRuntimeError errorWithCode:400 underlyingError:v15 description:@"SQL Query Running Error"];
      *a3 = v18 = 0;
LABEL_28:
      v12 = v15;
LABEL_29:

LABEL_30:
      goto LABEL_31;
    }

    v18 = 0;
    goto LABEL_28;
  }

  if (v5 == 1)
  {
    if (a3)
    {
      v6 = @"DSL is not supported";
      v7 = 200;
LABEL_13:
      [_DPMLRuntimeError errorWithCode:v7 description:v6];
      *a3 = v18 = 0;
      goto LABEL_31;
    }
  }

  else if (a3)
  {
    v6 = @"Recipe version not supported";
    v7 = 100;
    goto LABEL_13;
  }

  v18 = 0;
LABEL_31:

  return v18;
}

- (id)recordDataArray:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_DPMLRuntimeRecipe *)self recordMetadata];
  v8 = [(_DPMLRuntimeRecipe *)self recordDataArray:v6 metadata:v7 error:a4];

  return v8;
}

- (id)recordDataArray:(id)a3 metadata:(id)a4 error:(id *)a5
{
  v8 = a3;
  v207 = a4;
  v205 = v8;
  if (!v8)
  {
    if (a5)
    {
      [_DPMLRuntimeError errorWithCode:400 description:@"Received nil data array"];
      *a5 = v72 = 0;
    }

    else
    {
      v72 = 0;
    }

    goto LABEL_202;
  }

  if (![v8 count])
  {
    v72 = &off_100030520;
    goto LABEL_202;
  }

  v9 = [(_DPMLRuntimeRecipe *)self clientIdentifier];
  v281[0] = v9;
  v10 = [(_DPMLRuntimeRecipe *)self recipeIdentifier];
  v281[1] = v10;
  v11 = [NSArray arrayWithObjects:v281 count:2];

  v204 = v11;
  v210 = [v11 componentsJoinedByString:@":"];
  v12 = [(_DPMLRuntimeRecipe *)self dataTypeContent];

  if (!v12)
  {
    v73 = [v205 firstObject];
    v74 = &INSupportedMediaCategories_ptr;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v76 = [(_DPMLRuntimeRecipe *)self recordParameters];
      v77 = [v76 minValue];
      v78 = [v77 intValue];
      v79 = [(_DPMLRuntimeRecipe *)self recordParameters];
      v80 = [v79 maxValue];
      v81 = [v80 intValue];
      v82 = [(_DPMLRuntimeRecipe *)self recordParameters];
      v83 = [v82 numBucket];
      v84 = +[_DPMLRuntimeResultRecorderNumber recordData:forKey:minValue:maxValue:numBucket:metadata:error:](_DPMLRuntimeResultRecorderNumber, "recordData:forKey:minValue:maxValue:numBucket:metadata:error:", v205, v210, v78, v81, [v83 unsignedIntValue], v207, a5);

      v74 = &INSupportedMediaCategories_ptr;
LABEL_70:

LABEL_195:
      v184 = +[_PFLLog extension];
      if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
      {
        sub_10001D488(v84, v210, v184);
      }

      v185 = v74[134];
      v186 = [v205 count];
      if (v84)
      {
        v187 = v186;
      }

      else
      {
        v187 = 0;
      }

      v72 = [v185 numberWithUnsignedInteger:v187];
      goto LABEL_201;
    }

    v167 = [v205 firstObject];
    objc_opt_class();
    v168 = objc_opt_isKindOfClass();

    if (v168)
    {
      v169 = _DPMLRuntimeResultRecorderString;
    }

    else
    {
      v182 = [v205 firstObject];
      objc_opt_class();
      v183 = objc_opt_isKindOfClass();

      if ((v183 & 1) == 0)
      {
        v189 = [v205 firstObject];
        objc_opt_class();
        v190 = objc_opt_isKindOfClass();

        if ((v190 & 1) == 0)
        {
          if (a5)
          {
            [_DPMLRuntimeError errorWithCode:400 description:@"Unsupported data type"];
            *a5 = v72 = 0;
          }

          else
          {
            v72 = 0;
          }

          goto LABEL_201;
        }

        v191 = [v205 firstObject];
        v76 = [v191 objectEnumerator];

        v77 = [v76 nextObject];
        if (v77 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v243 = [(_DPMLRuntimeRecipe *)self recordParameters];
          v192 = [v243 minValue];
          v193 = [v192 intValue];
          v194 = [(_DPMLRuntimeRecipe *)self recordParameters];
          v195 = [v194 maxValue];
          v196 = [v195 intValue];
          v197 = [(_DPMLRuntimeRecipe *)self recordParameters];
          v198 = [v197 numBucket];
          v84 = +[_DPMLRuntimeResultRecorderNumber recordMultipleKeysData:forBaseKey:minValue:maxValue:numBucket:metadata:error:](_DPMLRuntimeResultRecorderNumber, "recordMultipleKeysData:forBaseKey:minValue:maxValue:numBucket:metadata:error:", v205, v210, v193, v196, [v198 unsignedIntValue], v207, a5);

          v74 = &INSupportedMediaCategories_ptr;
        }

        else
        {
          v84 = [_DPMLRuntimeResultRecorderBitVector recordMultipleKeysData:v205 forBaseKey:v210 metadata:v207 error:a5];
        }

        goto LABEL_70;
      }

      v169 = _DPMLRuntimeResultRecorderBitVector;
    }

    v84 = [(__objc2_class *)v169 recordData:v205 forKey:v210 metadata:v207 error:a5];
    goto LABEL_195;
  }

  v13 = [(_DPMLRuntimeRecipe *)self trialClient];
  v14 = [v13 namespaceIdentifier];

  v15 = [(_DPMLRuntimeRecipe *)self dataTypeContent];
  v16 = sub_100014578(v14, v15);

  if (!v16)
  {
    if (a5)
    {
      [_DPMLRuntimeError errorWithCode:300 description:@"Cannot generate factor names. Check the logs for details"];
      *a5 = v72 = 0;
    }

    else
    {
      v72 = 0;
    }

    goto LABEL_191;
  }

  v17 = [(_DPMLRuntimeRecipe *)self cohortNameList];
  v18 = v205;
  v203 = v14;
  v19 = v14;
  v20 = v17;
  v202 = v16;
  v238 = v16;
  v21 = +[NSMutableDictionary dictionary];
  v295 = 0u;
  v296 = 0u;
  v297 = 0u;
  v298 = 0u;
  obj = v18;
  v242 = self;
  v218 = v21;
  v228 = [obj countByEnumeratingWithState:&v295 objects:v299 count:16];
  if (!v228)
  {
    goto LABEL_46;
  }

  v22 = &selRef_typesInCombination;
  v226 = *v296;
  v215 = v20;
  v213 = v19;
  do
  {
    for (i = 0; i != v228; i = i + 1)
    {
      if (*v296 != v226)
      {
        objc_enumerationMutation(obj);
      }

      v24 = [*(*(&v295 + 1) + 8 * i) mutableCopy];
      v272 = 0;
      v25 = [v22 + 499 keysForCohorts:v20 namespaceID:v19 parameters:v24 possibleError:&v272];
      v26 = v25;
      if (v25)
      {
        v235 = i;
        v232 = v25;
        if ([v25 count])
        {
          v27 = [v26 componentsJoinedByString:@"|"];
          [v24 removeObjectsForKeys:v20];
        }

        else
        {
          v28 = +[_PFLLog extension];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            sub_10001D2D0(&v270, v271, v28);
          }

          v27 = @"N/A";
        }

        v29 = [v238 allKeys];
        v30 = [NSMutableSet setWithArray:v29];

        v31 = [v24 allKeys];
        v32 = [NSSet setWithArray:v31];
        [v30 intersectSet:v32];

        v33 = +[_PFLLog extension];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_10001D310(v284, v30);
        }

        v230 = v30;
        if ([v30 count])
        {
          v34 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v30 count]);
          v291 = 0u;
          v292 = 0u;
          v293 = 0u;
          v294 = 0u;
          v35 = v30;
          v36 = [v35 countByEnumeratingWithState:&v291 objects:&v287 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v292;
            v223 = v27;
            while (2)
            {
              for (j = 0; j != v37; j = j + 1)
              {
                if (*v292 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v291 + 1) + 8 * j);
                v41 = [v238 objectForKey:v40];
                v42 = [v24 objectForKey:v41];
                if (!v42)
                {
                  v46 = +[_PFLLog extension];
                  v27 = v223;
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v286 = v41;
                    _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "This data point is missing a value for '%@' required for factor level. Skipping", buf, 0xCu);
                  }

                  goto LABEL_33;
                }

                v43 = v42;
                *&v283 = v40;
                *(&v283 + 1) = v42;
                v44 = [NSArray arrayWithObjects:&v283 count:2];
                v45 = [v44 componentsJoinedByString:@"+"];
                [v34 addObject:v45];

                [v24 removeObjectForKey:v41];
              }

              v37 = [v35 countByEnumeratingWithState:&v291 objects:&v287 count:16];
              v27 = v223;
              if (v37)
              {
                continue;
              }

              break;
            }
          }

LABEL_33:

          v47 = [v34 count];
          if (v47 == [v35 count])
          {
            v48 = [v34 componentsJoinedByString:@"|"];

            v20 = v215;
            v21 = v218;
            v19 = v213;
            v22 = &selRef_typesInCombination;
            goto LABEL_36;
          }

          v48 = @"N/A";
          v20 = v215;
          v21 = v218;
          v19 = v213;
          v22 = &selRef_typesInCombination;
        }

        else
        {
          v48 = @"N/A";
LABEL_36:
          v282[0] = v27;
          v282[1] = v48;
          v49 = [NSArray arrayWithObjects:v282 count:2];
          v34 = [v49 componentsJoinedByString:@":"];

          v50 = +[_PFLLog extension];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v286 = v34;
            _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "collectionKey = %@", buf, 0xCu);
          }

          v51 = [v21 objectForKey:v34];
          v52 = v51;
          if (v51)
          {
            [v51 addObject:v24];
          }

          else
          {
            [NSMutableArray arrayWithObject:v24];
            v54 = v53 = v27;
            [v21 setObject:v54 forKey:v34];

            v27 = v53;
          }
        }

        i = v235;

        v26 = v232;
        goto LABEL_44;
      }

      v27 = +[_PFLLog extension];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v286 = v272;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Cannot create cohort keys, using placeholder. Error: %@", buf, 0xCu);
      }

LABEL_44:
    }

    v228 = [obj countByEnumeratingWithState:&v295 objects:v299 count:16];
  }

  while (v228);
LABEL_46:

  v55 = [v21 allKeys];
  v56 = +[NSMutableSet set];
  v295 = 0u;
  v296 = 0u;
  v297 = 0u;
  v298 = 0u;
  v236 = v55;
  v57 = [v236 countByEnumeratingWithState:&v295 objects:v299 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v296;
    do
    {
      for (k = 0; k != v58; k = k + 1)
      {
        if (*v296 != v59)
        {
          objc_enumerationMutation(v236);
        }

        v61 = [*(*(&v295 + 1) + 8 * k) componentsSeparatedByString:@":"];
        v62 = [v61 lastObject];

        v294 = 0u;
        v293 = 0u;
        v292 = 0u;
        v291 = 0u;
        v63 = [v62 componentsSeparatedByString:@"|"];
        v64 = [v63 countByEnumeratingWithState:&v291 objects:&v287 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v292;
          do
          {
            for (m = 0; m != v65; m = m + 1)
            {
              if (*v292 != v66)
              {
                objc_enumerationMutation(v63);
              }

              [v56 addObject:*(*(&v291 + 1) + 8 * m)];
            }

            v65 = [v63 countByEnumeratingWithState:&v291 objects:&v287 count:16];
          }

          while (v65);
        }
      }

      v58 = [v236 countByEnumeratingWithState:&v295 objects:v299 count:16];
    }

    while (v58);
  }

  if ([v56 count] != 1 || (objc_msgSend(v56, "allObjects"), v68 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v68, "firstObject"), v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v69, "isEqualToString:", @"N/A"), v69, v68, !v70))
  {
    v85 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v56 count]);
    v266 = 0u;
    v267 = 0u;
    v268 = 0u;
    v269 = 0u;
    v71 = v56;
    v227 = v85;
    obja = [v71 countByEnumeratingWithState:&v266 objects:v280 count:16];
    if (!obja)
    {
      goto LABEL_103;
    }

    v86 = *v267;
    v216 = *v267;
    v214 = v71;
    while (1)
    {
      for (n = 0; n != obja; n = n + 1)
      {
        if (*v267 != v86)
        {
          objc_enumerationMutation(v71);
        }

        v88 = [*(*(&v266 + 1) + 8 * n) componentsSeparatedByString:@"+"];
        v89 = [v88 firstObject];
        v90 = [v238 objectForKey:v89];

        if (v90)
        {
          v229 = v88;
          v91 = [v88 lastObject];
          v92 = [(_DPMLRuntimeRecipe *)v242 trialClient];
          v265 = 0;
          v93 = [v92 downloadFactor:v91 error:&v265];
          v231 = v265;

          v233 = v93;
          v224 = v89;
          if (v93)
          {
            v94 = v71;
            v95 = [v85 objectForKey:v89];
            v96 = v85;
            v97 = v89;
            v98 = v95;
            if (v95)
            {
              v99 = [v95 objectForKey:v91];

              if (v99)
              {
                v85 = v96;
                goto LABEL_99;
              }

              v107 = [NSURL fileURLWithPath:v233];
              [v98 setObject:v107 forKey:v91];
            }

            else
            {
              v107 = [NSURL fileURLWithPath:v233];
              v108 = [NSMutableDictionary dictionaryWithObject:v107 forKey:v91];
              [v96 setObject:v108 forKey:v97];

              v86 = v216;
            }

            v85 = v96;

LABEL_99:
            v71 = v94;
          }

          else
          {
            v100 = +[_PFLLog extension];
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              *v299 = 138412290;
              v300 = v91;
              _os_log_error_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "Cannot download Trial factor %@. Error: ", v299, 0xCu);
            }

            v263 = 0u;
            v264 = 0u;
            v261 = 0u;
            v262 = 0u;
            v98 = [v231 describe];
            v101 = [v98 countByEnumeratingWithState:&v261 objects:v279 count:16];
            if (v101)
            {
              v102 = v101;
              v103 = *v262;
              do
              {
                for (ii = 0; ii != v102; ii = ii + 1)
                {
                  if (*v262 != v103)
                  {
                    objc_enumerationMutation(v98);
                  }

                  v105 = *(*(&v261 + 1) + 8 * ii);
                  v106 = +[_PFLLog extension];
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
                  {
                    *v299 = 138412290;
                    v300 = v105;
                    _os_log_debug_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEBUG, "%@", v299, 0xCu);
                  }
                }

                v102 = [v98 countByEnumeratingWithState:&v261 objects:v279 count:16];
              }

              while (v102);
              v85 = v227;
              v71 = v214;
              v86 = v216;
            }
          }

          v88 = v229;
          v89 = v224;
          goto LABEL_101;
        }

        v91 = +[_PFLLog extension];
        if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
        {
          *v299 = 138412290;
          v300 = v89;
          _os_log_fault_impl(&_mh_execute_header, v91, OS_LOG_TYPE_FAULT, "Categorical type '%@' is not using a factor.", v299, 0xCu);
        }

LABEL_101:
      }

      obja = [v71 countByEnumeratingWithState:&v266 objects:v280 count:16];
      if (!obja)
      {
        goto LABEL_103;
      }
    }
  }

  v71 = +[_PFLLog extension];
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D38C();
  }

  v227 = 0;
LABEL_103:

  v109 = +[_PFLLog extension];
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D3C8();
  }

  v110 = [(_DPMLRuntimeRecipe *)v242 trialClient];
  v111 = [v110 experimentIdentifier];

  if (v111)
  {
    v112 = v111;
  }

  else
  {
    v112 = @"NoTrialExperimentIdentifier";
  }

  v113 = [(_DPMLRuntimeRecipe *)v242 trialClient];
  v114 = [v113 deploymentIdentifier];

  if (v114)
  {
    v115 = v114;
  }

  else
  {
    v115 = @"NoTrialDeploymentIdentifier";
  }

  v116 = [(_DPMLRuntimeRecipe *)v242 trialClient];
  v117 = [v116 treatmentIdentifier];

  if (!v117)
  {
    v117 = @"NoTrialTreatmentIdentifier";
  }

  v278[0] = v112;
  v278[1] = v115;
  v278[2] = v117;
  v118 = [NSArray arrayWithObjects:v278 count:3];
  v209 = [v118 componentsJoinedByString:@":"];

  v259 = 0u;
  v260 = 0u;
  v257 = 0u;
  v258 = 0u;
  v212 = v218;
  v211 = [v212 countByEnumeratingWithState:&v257 objects:v277 count:16];
  v200 = v115;
  v201 = v112;
  v199 = v117;
  if (v211)
  {
    v206 = 0;
    v208 = *v258;
    do
    {
      v119 = 0;
      do
      {
        if (*v258 != v208)
        {
          objc_enumerationMutation(v212);
        }

        objb = v119;
        v120 = *(*(&v257 + 1) + 8 * v119);
        v219 = [v212 objectForKey:v120];
        v276[0] = v210;
        v276[1] = v120;
        v276[2] = v209;
        v121 = [NSArray arrayWithObjects:v276 count:3];
        v217 = [v121 componentsJoinedByString:@":"];

        v122 = [v120 componentsSeparatedByString:@":"];
        v123 = [v122 lastObject];
        v124 = [v123 componentsSeparatedByString:@"|"];

        v125 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v124 count]);
        v253 = 0u;
        v254 = 0u;
        v255 = 0u;
        v256 = 0u;
        v225 = v124;
        v126 = [v225 countByEnumeratingWithState:&v253 objects:v275 count:16];
        if (v126)
        {
          v127 = v126;
          v128 = *v254;
          while (2)
          {
            v129 = 0;
            v239 = v127;
            do
            {
              if (*v254 != v128)
              {
                objc_enumerationMutation(v225);
              }

              v130 = *(*(&v253 + 1) + 8 * v129);
              v131 = +[_PFLLog extension];
              if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
              {
                *v299 = 138412290;
                v300 = v130;
                _os_log_debug_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEBUG, "Attempting to process %@", v299, 0xCu);
              }

              v132 = [v130 componentsSeparatedByString:@"+"];
              v133 = [v132 firstObject];
              v134 = [v227 objectForKey:v133];
              if (!v134)
              {
                v141 = +[_PFLLog extension];
                if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                {
                  *v299 = 138412290;
                  v300 = v133;
                  _os_log_error_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "No level URLs found for data type %@", v299, 0xCu);
                }

                goto LABEL_138;
              }

              v135 = v134;
              v136 = [v132 lastObject];
              v137 = [v135 objectForKey:v136];
              if (v137)
              {
                [v125 setObject:v137 forKey:v133];
              }

              else
              {
                v138 = v128;
                v139 = v125;
                v140 = +[_PFLLog extension];
                if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                {
                  *v299 = 138412546;
                  v300 = v133;
                  v301 = 2112;
                  v302 = v136;
                  _os_log_error_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "No level URL found for data type %@ and level %@", v299, 0x16u);
                }

                v125 = v139;
                v128 = v138;
                v127 = v239;
              }

              if (!v137)
              {
                goto LABEL_138;
              }

              v129 = v129 + 1;
            }

            while (v127 != v129);
            v127 = [v225 countByEnumeratingWithState:&v253 objects:v275 count:16];
            if (v127)
            {
              continue;
            }

            break;
          }
        }

LABEL_138:

        v142 = [(_DPMLRuntimeRecipe *)v242 dataTypeContent];
        v237 = v125;
        v234 = [v142 mutableCopy];
        v287 = 0u;
        v288 = 0u;
        v289 = 0u;
        v290 = 0u;
        v143 = v142;
        v144 = [v143 countByEnumeratingWithState:&v287 objects:v299 count:16];
        if (v144)
        {
          v145 = v144;
          v240 = *v288;
          while (2)
          {
            for (jj = 0; jj != v145; jj = jj + 1)
            {
              if (*v288 != v240)
              {
                objc_enumerationMutation(v143);
              }

              v147 = *(*(&v287 + 1) + 8 * jj);
              v148 = [v143 objectForKey:v147];
              v149 = [v148 objectForKey:@"dataType"];
              v150 = [FedStatsDataTypeFactory dataTypeFromString:v149];

              if (v150 == 3)
              {
                v151 = [v148 objectForKey:@"categoryFile"];
                if (v151)
                {
                  v152 = +[_PFLLog extension];
                  if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(v283) = 138412290;
                    *(&v283 + 4) = v147;
                    _os_log_debug_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEBUG, "categoryFileDesc = %@", &v283, 0xCu);
                  }

                  v153 = [v237 objectForKey:v147];
                  if (!v153)
                  {
                    v160 = +[_PFLLog extension];
                    if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v283) = 138412290;
                      *(&v283 + 4) = v147;
                      _os_log_error_impl(&_mh_execute_header, v160, OS_LOG_TYPE_ERROR, "No URL for '%@'", &v283, 0xCu);
                    }

                    v158 = 0;
                    v159 = v217;
                    v157 = v234;
                    goto LABEL_156;
                  }

                  v154 = v153;
                  *&v291 = @"dataType";
                  v155 = [FedStatsDataTypeFactory stringFromDataType:3];
                  *(&v291 + 1) = @"categoryFile";
                  *&v295 = v155;
                  *(&v295 + 1) = v154;
                  v156 = [NSDictionary dictionaryWithObjects:&v295 forKeys:&v291 count:2];
                  [v234 setObject:v156 forKey:v147];
                }
              }
            }

            v145 = [v143 countByEnumeratingWithState:&v287 objects:v299 count:16];
            if (v145)
            {
              continue;
            }

            break;
          }
        }

        v157 = v234;
        v158 = v234;
        v159 = v217;
LABEL_156:

        v161 = +[_PFLLog extension];
        v162 = os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG);
        if (v158)
        {
          v163 = v219;
          if (v162)
          {
            *v299 = 138412290;
            v300 = v158;
            _os_log_debug_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEBUG, "dataTypeContent = %@", v299, 0xCu);
          }

          v252 = 0;
          v164 = [FedStatsDataEncoder encodeDataArrayAndRecord:v219 dataTypeContent:v158 metadata:v207 baseKey:v159 errorOut:&v252];
          v161 = v252;
          v165 = +[_PFLLog extension];
          v166 = v165;
          if (v164)
          {
            if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
            {
              sub_10001D438(v282, v219);
            }

            v206 += [v219 count];
          }

          else
          {
            if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
            {
              *v299 = 138412290;
              v300 = v161;
              _os_log_error_impl(&_mh_execute_header, v166, OS_LOG_TYPE_ERROR, "Cannot decode and record some data: %@", v299, 0xCu);
            }
          }
        }

        else
        {
          v163 = v219;
          if (v162)
          {
            *v299 = 138412290;
            v300 = v159;
            _os_log_debug_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEBUG, "Skipping the base key '%@' since the factor level is invalid", v299, 0xCu);
          }
        }

        v119 = objb + 1;
      }

      while (objb + 1 != v211);
      v211 = [v212 countByEnumeratingWithState:&v257 objects:v277 count:16];
    }

    while (v211);
  }

  else
  {
    v206 = 0;
  }

  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v241 = [v227 allValues];
  v170 = [v241 countByEnumeratingWithState:&v248 objects:v274 count:16];
  if (v170)
  {
    v171 = v170;
    v172 = *v249;
    do
    {
      for (kk = 0; kk != v171; kk = kk + 1)
      {
        if (*v249 != v172)
        {
          objc_enumerationMutation(v241);
        }

        v174 = *(*(&v248 + 1) + 8 * kk);
        v244 = 0u;
        v245 = 0u;
        v246 = 0u;
        v247 = 0u;
        v175 = [v174 allKeys];
        v176 = [v175 countByEnumeratingWithState:&v244 objects:v273 count:16];
        if (v176)
        {
          v177 = v176;
          v178 = *v245;
          do
          {
            for (mm = 0; mm != v177; mm = mm + 1)
            {
              if (*v245 != v178)
              {
                objc_enumerationMutation(v175);
              }

              v180 = *(*(&v244 + 1) + 8 * mm);
              v181 = [(_DPMLRuntimeRecipe *)v242 trialClient];
              [v181 removeFactor:v180];
            }

            v177 = [v175 countByEnumeratingWithState:&v244 objects:v273 count:16];
          }

          while (v177);
        }
      }

      v171 = [v241 countByEnumeratingWithState:&v248 objects:v274 count:16];
    }

    while (v171);
  }

  v72 = [NSNumber numberWithUnsignedInteger:v206];

  v16 = v202;
  v14 = v203;
LABEL_191:

LABEL_201:
LABEL_202:

  return v72;
}

+ (int64_t)dataRecorderTypeEnumFromString:(id)a3
{
  v8[0] = @"numericType";
  v8[1] = @"bitVectorType";
  v9[0] = &off_100030538;
  v9[1] = &off_100030550;
  v8[2] = @"stringType";
  v8[3] = @"wordType";
  v9[2] = &off_100030568;
  v9[3] = &off_100030580;
  v8[4] = @"multipleKeysBitVectorType";
  v8[5] = @"multipleKeysNumberType";
  v9[4] = &off_100030598;
  v9[5] = &off_1000305B0;
  v8[6] = @"dataContentType";
  v9[6] = &off_1000305C8;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:7];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

@end