@interface AlgosScoreHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (AlgosScoreHandler)init;
- (BOOL)noteSymptom:(id)symptom;
- (int)read:(id)read returnedValues:(id)values;
- (void)processEventFor:(id)for withScore:(double)score;
@end

@implementation AlgosScoreHandler

- (AlgosScoreHandler)init
{
  v7.receiver = self;
  v7.super_class = AlgosScoreHandler;
  v2 = [(AlgosScoreHandler *)&v7 init];
  if (v2)
  {
    v3 = +[SystemProperties sharedInstance];
    v2->active = [v3 internalBuild];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v2->notificationCenter;
    v2->notificationCenter = defaultCenter;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__AlgosScoreHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_26 != -1)
  {
    dispatch_once(&sharedInstance_pred_26, block);
  }

  v2 = sharedInstance_sharedInstance_27;

  return v2;
}

void __35__AlgosScoreHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_27;
  sharedInstance_sharedInstance_27 = v1;

  v3 = sharedInstance_sharedInstance_27;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[AlgosScoreHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (void)processEventFor:(id)for withScore:(double)score
{
  v17 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v7 = appExperienceLogHandle;
  if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v14 = forCopy;
    v15 = 2048;
    scoreCopy = score;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Bundle: %@ score: %f", buf, 0x16u);
  }

  if (score > 0.0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:{score, @"AlgosScoreBundleName", @"AlgosScoreValue", forCopy}];
    v12[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:2];

    [(NSNotificationCenter *)self->notificationCenter postNotificationName:@"AlgosScore" object:self userInfo:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)noteSymptom:(id)symptom
{
  v57 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  v5 = symptomCopy;
  if (self->active)
  {
    eventKey = [symptomCopy eventKey];
    v7 = [SymptomStore keyFromSymptomName:@"SYMPTOM_ALGOS_SCORE"];
    v8 = [(__CFString *)eventKey isEqualToString:v7];

    if (v8)
    {
      eventData = [v5 eventData];
      v10 = [v5 eventQualifierStringForKey:@"0"];
      if (v10 && (*(eventData + 4) & 1) != 0)
      {
        [(AlgosScoreHandler *)self processEventFor:v10 withScore:*(eventData + 24)];
      }

      else
      {
        v11 = appExperienceLogHandle;
        if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v52 = v10;
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Either no bundleName (%@) or no score set", buf, 0xCu);
        }
      }

      goto LABEL_52;
    }

    v12 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBTRACE_OS_LOG"];
    v13 = [(__CFString *)eventKey isEqualToString:v12];

    if (!v13)
    {
      v26 = appExperienceLogHandle;
      if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = eventKey;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "Unrecognized symptom: %@", buf, 0xCu);
      }

      goto LABEL_52;
    }

    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v14 = extractLibtraceSymptomElements(v5, &v50, &v49, &v48, &v47);
    v15 = v50;
    v16 = v49;
    v17 = v48;
    v18 = v47;
    if (v14)
    {
      if (([(__CFString *)v15 isEqualToString:@"MEDIA_PLAYBACK_ALGOS"]& 1) != 0 || [(__CFString *)v15 isEqualToString:@"AVConference_AlgosScore"])
      {
        v19 = appExperienceLogHandle;
        if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v52 = v15;
          v53 = 2112;
          v54 = v16;
          v55 = 2112;
          v56 = v18;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Symptom %@ by %@, with %@", buf, 0x20u);
        }

        eventQualifiers = [v5 eventQualifiers];
        v21 = [eventQualifiers objectForKeyedSubscript:@"4"];

        v46 = 0;
        v22 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v21 options:0 error:&v46];
        v23 = v46;
        v24 = v23;
        if (!v22 || v23)
        {
          v36 = appExperienceLogHandle;
          if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v52 = v15;
            _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "Unable to read into symptom: %@", buf, 0xCu);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v42 = [v22 objectForKeyedSubscript:v15];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [v42 objectForKeyedSubscript:@"score"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v41 = [v22 objectForKeyedSubscript:@"BundleID"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v25 doubleValue];
                  [(AlgosScoreHandler *)self processEventFor:v41 withScore:?];
                }

                else
                {
                  v40 = [v22 objectForKeyedSubscript:@"uuid"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v40];
                    v39 = v32;
                    if (v32)
                    {
                      v43[0] = MEMORY[0x277D85DD0];
                      v43[1] = 3221225472;
                      v43[2] = __33__AlgosScoreHandler_noteSymptom___block_invoke;
                      v43[3] = &unk_27898DFC8;
                      v43[4] = self;
                      v33 = v32;
                      v44 = v25;
                      v45 = v15;
                      [FlowAnalyticsEngine identifierForUUID:v33 replyQueue:MEMORY[0x277D85CD0] reply:v43];
                    }

                    else
                    {
                      v35 = appExperienceLogHandle;
                      if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v52 = v40;
                        v53 = 2112;
                        v54 = v15;
                        _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, "Malformed attribution string (%@) for score in: %@", buf, 0x16u);
                      }
                    }
                  }

                  else
                  {
                    v34 = appExperienceLogHandle;
                    if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v52 = v15;
                      _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "No attribution string for score in: %@", buf, 0xCu);
                    }
                  }
                }
              }

              else
              {
                v31 = appExperienceLogHandle;
                if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v52 = v15;
                  _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_ERROR, "Unexpected score type in: %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v30 = appExperienceLogHandle;
              if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v52 = v15;
                _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Unexpected body type in: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v29 = appExperienceLogHandle;
            if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v52 = v15;
              _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_ERROR, "Unexpected json object type in: %@", buf, 0xCu);
            }
          }

          v24 = 0;
        }

        goto LABEL_51;
      }

      v27 = appExperienceLogHandle;
      if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = v15;
        v28 = "Not a playback score, no need to process symptom: %@";
        goto LABEL_26;
      }
    }

    else
    {
      v27 = appExperienceLogHandle;
      if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = v15;
        v28 = "Failed to process symptom: %@";
LABEL_26:
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
      }
    }

LABEL_51:

LABEL_52:
  }

  v37 = *MEMORY[0x277D85DE8];
  return 0;
}

void __33__AlgosScoreHandler_noteSymptom___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && !v9 && [v8 isEqualToString:@"bundleIdentifier"])
  {
    v11 = *(a1 + 32);
    [*(a1 + 40) doubleValue];
    [v11 processEventFor:v7 withScore:?];
  }

  else
  {
    v12 = appExperienceLogHandle;
    if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      v15 = 138413058;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Inactionable attribution (%@) of kind (%@) for score in: %@, error: %@", &v15, 0x2Au);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end