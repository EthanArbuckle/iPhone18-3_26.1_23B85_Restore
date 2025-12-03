@interface ConfigurationHandler
+ (id)classRepresentativeForName:(id)name;
+ (id)objectForName:(id)name;
+ (id)sharedInstance;
+ (int)configureItems:(id)items;
+ (int)read:(id)read returnedValues:(id)values;
+ (void)dumpAll;
+ (void)initialize;
+ (void)setConfigurationObject:(id)object forName:(id)name;
- (BOOL)noteSymptom:(id)symptom;
- (ConfigurationHandler)init;
- (id)_configureBuildDetails:(id)details;
- (id)_configureHandlerClass:(id)class;
- (int)configure:(id)configure;
- (int)read:(id)read returnedValues:(id)values;
- (void)_dumpState;
- (void)_setAnnotation:(id)annotation;
- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)setAnnotation:(id)annotation;
@end

@implementation ConfigurationHandler

- (void)_setAnnotation:(id)annotation
{
  v14 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  v4 = [buildInfo objectForKeyedSubscript:@"ANNOTATION"];
  if (v4)
  {
    [buildInfo setObject:v4 forKey:@"PREVIOUS_ANNOTATION"];
  }

  [buildInfo setObject:annotationCopy forKey:@"ANNOTATION"];
  v5 = buildInfo;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v8 = dateStringMillisecondsFromTimeInterval(v7);
  [v5 setObject:v8 forKey:@"ANNOTATION_TIMESTAMP"];

  v9 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = buildInfo;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Set buildInfo to %@", &v12, 0xCu);
  }

  v10 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = annotationCopy;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Annotate Symptoms Daemon with: %@", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setAnnotation:(id)annotation
{
  v16 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  v5 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = annotationCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "ConfigurationHandler Call to configure with annotation %@", buf, 0xCu);
  }

  if (annotationCopy)
  {
    v6 = [buildInfo objectForKeyedSubscript:@"ANNOTATION"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && v6 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v7 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "ConfigurationHandler redundant call to reset annotation", buf, 2u);
      }
    }

    else
    {
      v8 = ++annotationSeqno;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = +[FlowAnalyticsEngine queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __38__ConfigurationHandler_setAnnotation___block_invoke;
        block[3] = &unk_27898A7A8;
        v13 = v8;
        block[4] = self;
        v12 = annotationCopy;
        dispatch_async(v9, block);
      }

      else
      {
        [(ConfigurationHandler *)self _setAnnotation:annotationCopy];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __38__ConfigurationHandler_setAnnotation___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ConfigurationHandler_setAnnotation___block_invoke_2;
  block[3] = &unk_27898A7A8;
  v4 = *(a1 + 48);
  v1 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __38__ConfigurationHandler_setAnnotation___block_invoke_2(uint64_t result)
{
  if (*(result + 48) == annotationSeqno)
  {
    return [*(result + 32) _setAnnotation:*(result + 40)];
  }

  return result;
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[ConfigurationHandler initialize];
  }
}

uint64_t __34__ConfigurationHandler_initialize__block_invoke()
{
  configuration_object_lock = 0;
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = knownItems;
  knownItems = v0;

  buildInfo = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"unknown", @"BUILD_DATE", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ConfigurationHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_4 != -1)
  {
    dispatch_once(&sharedInstance_pred_4, block);
  }

  v2 = sharedInstance_sharedInstance_4;

  return v2;
}

void __38__ConfigurationHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(*(a1 + 32));
  v3 = sharedInstance_sharedInstance_4;
  sharedInstance_sharedInstance_4 = v2;

  [ManagedEventTransport setInfoProvider:sharedInstance_sharedInstance_4 forId:2];
  v4 = NSStringFromClass(*(a1 + 32));
  if (v4)
  {
    [knownItems setObject:sharedInstance_sharedInstance_4 forKey:v4];
  }

  else
  {
    v5 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = sharedInstance_sharedInstance_4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unable to set configuration object when class name is nil! {object:%@}", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_dumpState
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = buildInfo;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Symptoms daemon build and annotation details: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (ConfigurationHandler)init
{
  v11.receiver = self;
  v11.super_class = ConfigurationHandler;
  v2 = [(ConfigurationHandler *)&v11 init];
  if (v2)
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, MEMORY[0x277D85CD0]);
    v4 = init_siginfo;
    init_siginfo = v3;

    v5 = init_siginfo;
    if (init_siginfo)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __28__ConfigurationHandler_init__block_invoke;
      handler[3] = &unk_27898A0C8;
      v10 = v2;
      dispatch_source_set_event_handler(v5, handler);
      dispatch_resume(init_siginfo);
    }

    v8 = v2;
    v6 = MEMORY[0x277D85CD0];
    os_state_add_handler();
  }

  return v2;
}

+ (id)objectForName:(id)name
{
  nameCopy = name;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ConfigurationHandler_objectForName___block_invoke;
  v7[3] = &unk_27898A848;
  v9 = &v10;
  v4 = nameCopy;
  v8 = v4;
  sf_synchronize(&configuration_object_lock, v7);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

uint64_t __38__ConfigurationHandler_objectForName___block_invoke(uint64_t a1)
{
  v2 = [knownItems objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (id)classRepresentativeForName:(id)name
{
  v11[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = [self objectForName:nameCopy];
  if (!v5)
  {
    v10[0] = @"HANDLER_CLASS";
    v10[1] = @"HANDLER_CONFIG";
    v11[0] = nameCopy;
    v11[1] = MEMORY[0x277CBEC10];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v7 = +[ConfigurationHandler sharedInstance];
    v5 = [v7 _configureHandlerClass:v6];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)setConfigurationObject:(id)object forName:(id)name
{
  objectCopy = object;
  nameCopy = name;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ConfigurationHandler_setConfigurationObject_forName___block_invoke;
  v9[3] = &unk_27898A7D0;
  v10 = nameCopy;
  v11 = objectCopy;
  v7 = objectCopy;
  v8 = nameCopy;
  sf_synchronize(&configuration_object_lock, v9);
}

void __55__ConfigurationHandler_setConfigurationObject_forName___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = knownItems;
    v3 = *(a1 + 40);
    v4 = *MEMORY[0x277D85DE8];

    [v2 setObject:v3 forKey:?];
  }

  else
  {
    v5 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unable to set configuration object when class name is nil! {object:%@}", &v8, 0xCu);
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

+ (void)dumpAll
{
  v2 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "DUMP ALL", v3, 2u);
  }

  sf_synchronize(&configuration_object_lock, &__block_literal_global_16);
}

void __31__ConfigurationHandler_dumpAll__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = a3;
    v8 = [a2 description];
    v9 = [v8 UTF8String];
    v10 = [v7 description];

    v12 = 136315394;
    v13 = v9;
    v14 = 2080;
    v15 = [v10 UTF8String];
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Key %s  object %s", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (int)configureItems:(id)items
{
  itemsCopy = items;
  v4 = +[ConfigurationHandler sharedInstance];
  v5 = [v4 configure:itemsCopy];

  return v5;
}

+ (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  readCopy = read;
  v7 = +[ConfigurationHandler sharedInstance];
  v8 = [v7 read:readCopy returnedValues:valuesCopy];

  return v8;
}

- (id)_configureHandlerClass:(id)class
{
  v20 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v4 = [classCopy objectForKey:@"HANDLER_CLASS"];
  v5 = NSClassFromString(v4);
  if (v5)
  {
    v6 = [classCopy objectForKey:@"HANDLER_CONFIG"];
    v7 = v6;
    if (v6)
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [v5 configureClass:v7];
        v6 = [ConfigurationHandler objectForName:v4];
      }

      else
      {
        v13 = configurationLogHandle;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
        {
          v14 = v4;
          v15 = v13;
          v18 = 136315138;
          uTF8String = [(NSString *)v4 UTF8String];
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Class %s has config but no configure method", &v18, 0xCu);
        }

        v6 = 0;
      }
    }

    v12 = v6;
  }

  else
  {
    v9 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v4;
      v11 = v9;
      v18 = 136315138;
      uTF8String = [(NSString *)v4 UTF8String];
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Class %s from configuration unknown", &v18, 0xCu);
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_configureBuildDetails:(id)details
{
  [buildInfo addEntriesFromDictionary:details];
  v3 = buildInfo;

  return v3;
}

- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  v7 = block + 16;
  v8 = MEMORY[0x277CBEAA8];
  blockCopy = block;
  date = [v8 date];
  v11 = date;
  if (id == 2)
  {
    (*v7)(blockCopy, 0, "Build details", date, "collected on demand", 0, buildInfo);
  }

  else
  {
    (*v7)(blockCopy, 0, "Unknown request", date, "collected on demand", 0, MEMORY[0x277CBEC10]);
  }
}

- (BOOL)noteSymptom:(id)symptom
{
  v4 = [symptom eventQualifierStringForKey:@"1"];
  if (v4)
  {
    [(ConfigurationHandler *)self setAnnotation:v4];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [(ConfigurationHandler *)self setAnnotation:null];
  }

  return 1;
}

- (int)configure:(id)configure
{
  v57 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = configureCopy;
    v6 = [v5 objectForKey:@"GENERIC_CONFIG_TARGET"];
    v7 = v6;
    if (!v6)
    {
      v17 = [v5 objectForKey:@"TRIGGER_EVENT"];

      if (v17)
      {
        v18 = [SimpleSymptomEvaluator configureClass:v5];
      }

      else
      {
        v25 = [v5 objectForKey:@"SIGNATURE_NAME"];

        if (v25)
        {
          v18 = [SimpleRuleEvaluator configureClass:v5];
        }

        else
        {
          v26 = [v5 objectForKey:@"CONDITION_NAME"];

          if (v26)
          {
            v18 = [SimpleRuleCondition configureClass:v5];
          }

          else
          {
            v27 = [v5 objectForKey:@"SYNDROME_NAME"];

            if (v27)
            {
              v18 = [SimpleSyndromeHandler configureClass:v5];
            }

            else
            {
              v28 = [v5 objectForKey:@"HANDLER_CLASS"];

              if (v28)
              {
                v18 = [(ConfigurationHandler *)self _configureHandlerClass:v5];
              }

              else
              {
                v29 = [v5 objectForKey:@"BUILD_DATE"];

                if (!v29)
                {
                  [MEMORY[0x277CBEA60] arrayWithObjects:{@"ADDITONAL_HANDLER_ARRAY", @"SIMPLE_SYNDROME_DETECTION_ARRAY", @"BUILD_DETAILS_ARRAY", 0}];
                  v43 = 0u;
                  v44 = 0u;
                  v41 = 0u;
                  v32 = v42 = 0u;
                  v33 = [v32 countByEnumeratingWithState:&v41 objects:v49 count:16];
                  if (v33)
                  {
                    v34 = *v42;
                    v8 = -1;
                    while (2)
                    {
                      for (i = 0; i != v33; ++i)
                      {
                        if (*v42 != v34)
                        {
                          objc_enumerationMutation(v32);
                        }

                        v36 = [v5 objectForKey:*(*(&v41 + 1) + 8 * i)];
                        if (v36)
                        {
                          v8 = [(ConfigurationHandler *)self configure:v36];
                          if (v8)
                          {

                            goto LABEL_58;
                          }
                        }
                      }

                      v33 = [v32 countByEnumeratingWithState:&v41 objects:v49 count:16];
                      if (v33)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  else
                  {
                    v8 = -1;
                  }

LABEL_58:

                  goto LABEL_28;
                }

                v18 = [(ConfigurationHandler *)self _configureBuildDetails:v5];
              }
            }
          }
        }
      }

      v24 = v18;

      v8 = -1;
      goto LABEL_42;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy_;
    v55 = __Block_byref_object_dispose_;
    v56 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __34__ConfigurationHandler_configure___block_invoke;
    v45[3] = &unk_27898A848;
    p_buf = &buf;
    v46 = v6;
    sf_synchronize(&configuration_object_lock, v45);
    if (*(*(&buf + 1) + 40))
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [*(*(&buf + 1) + 40) configureInstance:v5];
LABEL_27:

        _Block_object_dispose(&buf, 8);
LABEL_28:
        v24 = 0;
LABEL_42:
        if (v24)
        {
          v8 = 0;
        }

        goto LABEL_45;
      }

      v20 = configurationLogHandle;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [*(*(&buf + 1) + 40) description];
        v22 = v21;
        uTF8String = [v21 UTF8String];
        *v50 = 136315138;
        v51 = uTF8String;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Found %s, but not configurable", v50, 0xCu);
      }
    }

    v8 = -1;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = configureCopy;
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v10)
    {
      v11 = *v38;
      while (2)
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v37 + 1) + 8 * j);
          v8 = [(ConfigurationHandler *)self configure:v13];
          if (v8)
          {
            v19 = configurationLogHandle;
            if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v13;
              _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Failure while iterating configuration array, config is %{public}@", &buf, 0xCu);
            }

            goto LABEL_30;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v37 objects:v48 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

LABEL_30:
  }

  else
  {
    v14 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [configureCopy description];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = [v16 UTF8String];
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Unknown class for newValues %s", &buf, 0xCu);
    }

    v8 = -1;
  }

LABEL_45:

  v30 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __34__ConfigurationHandler_configure___block_invoke(uint64_t a1)
{
  v2 = [knownItems objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (int)read:(id)read returnedValues:(id)values
{
  v39 = *MEMORY[0x277D85DE8];
  readCopy = read;
  valuesCopy = values;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = readCopy;
    v8 = [v7 objectForKey:@"GENERIC_CONFIG_TARGET"];
    v9 = v8;
    if (!v8)
    {
      v17 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Read request does not have a target component specified", &buf, 2u);
      }

      v11 = -1;
      goto LABEL_21;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy_;
    v37 = __Block_byref_object_dispose_;
    v38 = 0;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __44__ConfigurationHandler_read_returnedValues___block_invoke;
    v29 = &unk_27898A848;
    p_buf = &buf;
    v10 = v8;
    v30 = v10;
    sf_synchronize(&configuration_object_lock, &v26);
    if (*(*(&buf + 1) + 40))
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [*(*(&buf + 1) + 40) read:v7 returnedValues:{valuesCopy, v26, v27, v28, v29}];
LABEL_20:

        _Block_object_dispose(&buf, 8);
LABEL_21:

        goto LABEL_22;
      }

      v18 = configurationLogHandle;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = [*(*(&buf + 1) + 40) description];
        v22 = v21;
        uTF8String = [v21 UTF8String];
        *v32 = 136315138;
        v33 = uTF8String;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "Found %s, but not readable", v32, 0xCu);
      }
    }

    else
    {
      v18 = configurationLogHandle;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = v10;
        uTF8String2 = [v10 UTF8String];
        *v32 = 136315138;
        v33 = uTF8String2;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "Target %s not found", v32, 0xCu);
      }
    }

    v11 = -1;
    goto LABEL_20;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = configurationLogHandle;
  v14 = os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR);
  if (isKindOfClass)
  {
    if (v14)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Read of array not supported", &buf, 2u);
    }
  }

  else if (v14)
  {
    v15 = v13;
    v16 = [readCopy description];
    LODWORD(buf) = 136315138;
    *(&buf + 4) = [v16 UTF8String];
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Unknown class for requiredValues %s", &buf, 0xCu);
  }

  v11 = -1;
LABEL_22:

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __44__ConfigurationHandler_read_returnedValues___block_invoke(uint64_t a1)
{
  v2 = [knownItems objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

@end