@interface DPMLRuntimeKeyboard
+ (int)runWithTrialClient:(id)client error:(id *)error;
@end

@implementation DPMLRuntimeKeyboard

+ (int)runWithTrialClient:(id)client error:(id *)error
{
  clientCopy = client;
  v5 = +[NSLocale currentLocale];
  languageCode = [v5 languageCode];
  if (!languageCode)
  {

    goto LABEL_32;
  }

  v7 = languageCode;
  v8 = +[NSLocale currentLocale];
  countryCode = [v8 countryCode];

  if (!countryCode)
  {
LABEL_32:
    v47 = +[_PFLLog extension];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_10001CBE8(v47);
    }

    if (error)
    {
      *error = [_DPMLRuntimeError errorWithCode:300 description:@"Cannot determine locale."];
    }

    v15 = -1;
    goto LABEL_48;
  }

  v10 = [BiomeKeyboardClient readDataWithCount:20];
  allKeys = [v10 allKeys];
  v63 = [clientCopy downloadDbs:allKeys suffix:0];

  if ([v10 count])
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v73;
      v56 = kDPMetadataAlgorithmParameters;
      v55 = kDPMetadataAlgoParamDimensionality;
      v57 = clientCopy;
      v53 = v10;
      v59 = v12;
      v51 = *v73;
      do
      {
        v17 = 0;
        do
        {
          if (*v73 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v54 = v17;
          v18 = *(*(&v72 + 1) + 8 * v17);
          v19 = [v63 objectForKeyedSubscript:v18];

          if (v19)
          {
            v20 = [v18 isEqualToString:@"emojis"];
            v21 = @"fedstats:com.apple.insights.keyboard.Emoji";
            if (!v20)
            {
              v21 = @"fedstats:com.apple.insights.keyboard.WordUnigram";
            }

            v62 = v21;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v65 = v18;
            obj = [v12 objectForKeyedSubscript:v18];
            v61 = [obj countByEnumeratingWithState:&v68 objects:v83 count:16];
            if (v61)
            {
              v60 = *v69;
              v52 = v14;
              while (2)
              {
                v64 = v15;
                v22 = 0;
                v23 = v63;
                do
                {
                  v24 = clientCopy;
                  v25 = v12;
                  if (*v69 != v60)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v26 = *(*(&v68 + 1) + 8 * v22);
                  v27 = [NSString stringWithFormat:@"token+%@|%@", v65, v26];
                  v82[0] = v62;
                  v82[1] = v27;
                  v66 = v27;
                  experimentIdentifier = [v24 experimentIdentifier];
                  v82[2] = experimentIdentifier;
                  deploymentIdentifier = [v24 deploymentIdentifier];
                  v82[3] = deploymentIdentifier;
                  v30 = v24;
                  treatmentIdentifier = [v24 treatmentIdentifier];
                  v82[4] = treatmentIdentifier;
                  v32 = [NSArray arrayWithObjects:v82 count:5];

                  v33 = [v32 componentsJoinedByString:@":"];
                  v34 = [v25 objectForKeyedSubscript:v65];
                  v35 = [v34 objectForKeyedSubscript:v26];
                  v36 = [v23 objectForKeyedSubscript:v65];
                  v37 = [KnownDictionary processTokens:v35 knownTokensFile:v36 unknownTokens:0 error:error];

                  if (*error)
                  {
                    goto LABEL_46;
                  }

                  if ([v37 count])
                  {
                    v38 = [SqliteClient alloc];
                    v39 = [v23 objectForKeyedSubscript:v65];
                    v40 = [(SqliteClient *)v38 initWithFile:v39 error:error];

                    if (!v40)
                    {
                      v49 = +[_PFLLog extension];
                      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                      {
                        sub_10001CB70(v65, v49);
                      }

LABEL_45:
LABEL_46:

                      v15 = -1;
                      v10 = v53;
                      clientCopy = v30;
                      allKeys2 = v59;
                      goto LABEL_47;
                    }

                    v41 = [(SqliteClient *)v40 getTotalCount:error];
                    if (*error)
                    {
                      goto LABEL_45;
                    }

                    v80 = v56;
                    v78 = v55;
                    v42 = [NSNumber numberWithInt:v41 + 1];
                    v79 = v42;
                    v43 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
                    v81 = v43;
                    v44 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
                    v45 = [v30 updateMetadataWithDPParameters:v44];

                    v46 = +[_PFLLog extension];
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v77 = v45;
                      _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Record metadata %@.", buf, 0xCu);
                    }

                    [KnownDictionary recordData:v37 baseKey:v33 metadata:v45];
                    v64 += [v37 count];

                    clientCopy = v57;
                    v23 = v63;
                  }

                  else
                  {
                    clientCopy = v30;
                  }

                  v12 = v59;

                  v22 = v22 + 1;
                }

                while (v61 != v22);
                v10 = v53;
                v15 = v64;
                v16 = v51;
                v14 = v52;
                v61 = [obj countByEnumeratingWithState:&v68 objects:v83 count:16];
                if (v61)
                {
                  continue;
                }

                break;
              }
            }
          }

          v17 = v54 + 1;
        }

        while ((v54 + 1) != v14);
        v14 = [v12 countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    allKeys2 = [v63 allKeys];
    [clientCopy removeDbs:allKeys2 suffix:0];
  }

  else
  {
    allKeys2 = +[_PFLLog extension];
    if (os_log_type_enabled(allKeys2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, allKeys2, OS_LOG_TYPE_INFO, "Biome did not return any message.", buf, 2u);
    }

    v15 = 0;
  }

LABEL_47:

LABEL_48:
  return v15;
}

@end