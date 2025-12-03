@interface TaggedInfoTestHandler
+ (id)_sharedInstance;
+ (id)configureClass:(id)class;
- (BOOL)noteSymptom:(id)symptom;
- (int)read:(id)read returnedValues:(id)values;
- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
@end

@implementation TaggedInfoTestHandler

- (BOOL)noteSymptom:(id)symptom
{
  v34 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  eventQualifiers = [symptomCopy eventQualifiers];
  v6 = [eventQualifiers objectForKeyedSubscript:@"1"];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  setApparentTime(v7);
  if (!self->_informer)
  {
    v8 = +[BasebandFlowInformer sharedInstance];
    informer = self->_informer;
    self->_informer = v8;

    v10 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_informer;
      *buf = 134217984;
      v33 = v11;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "TaggedInfoTestHandler gets informer at %p", buf, 0xCu);
    }
  }

  if (v6)
  {
    v31 = 0;
    v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v31];
    v13 = v31;
    v14 = v13;
    v15 = @"Can't create jsonObject";
    if (v12 && !v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v12;
        v16 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v33 = v12;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "BasebandFlowInformerTestAccess supplied with %{public}@", buf, 0xCu);
        }

        v17 = [v12 objectForKeyedSubscript:@"immediate"];
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[BasebandFlowInformer setInformImmediate:](self->_informer, "setInformImmediate:", [v17 intValue] != 0);

            v18 = @"Set informImmediate";
LABEL_49:
            v28 = flowLogHandle;
            if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v33 = v18;
              _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "TaggedInfoTestHandler symptom processing: %@", buf, 0xCu);
            }

            v14 = 0;
            goto LABEL_48;
          }

          v14 = 0;
          v15 = @"immediate key doesn't supply a number";
        }

        else
        {
          v19 = [v12 objectForKeyedSubscript:@"enabled"];
          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[BasebandFlowInformer setEnableForcedViaSymptom:](self->_informer, "setEnableForcedViaSymptom:", [v19 intValue] != 0);
              v15 = 0;
              v18 = @"Set enableForcedViaSymptom";
            }

            else
            {
              v18 = 0;
              v15 = @"enable key doesn't supply a number";
            }
          }

          else
          {
            v20 = [v12 objectForKeyedSubscript:@"reset"];
            if (v20)
            {
              [(BasebandFlowInformer *)self->_informer reset];
              v15 = 0;
              v18 = @"Performed reset";
            }

            else
            {
              v21 = [v12 objectForKeyedSubscript:@"reference"];
              if (v21)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v30 = [v12 objectForKeyedSubscript:@"start"];
                  if (v30)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if ([v30 BOOLValue])
                      {
                        v29 = [v12 objectForKeyedSubscript:@"digest"];
                        if (v29)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v22 = [[BasebandFlowDigest alloc] initWithDictionary:v29];
                            if (v22)
                            {
                              v23 = self->_informer;
                              v24 = v22;
                              [(BasebandFlowInformer *)v23 flowStart:v21 digest:v22];
                              v22 = v24;
                              v15 = 0;
                              v18 = @"Flow start";
                            }

                            else
                            {
                              v18 = 0;
                              v15 = @"Can't initialize with supplied digest";
                            }
                          }

                          else
                          {
                            v18 = 0;
                            v15 = @"digest key doesn't supply a dictionary";
                          }
                        }

                        else
                        {
                          v18 = 0;
                          v15 = @"No digest for flow start";
                        }
                      }

                      else
                      {
                        [(BasebandFlowInformer *)self->_informer flowStop:v21];
                        v15 = 0;
                        v18 = @"Flow stop";
                      }
                    }

                    else
                    {
                      v18 = 0;
                      v15 = @"start key doesn't supply a number";
                    }
                  }

                  else
                  {
                    v18 = 0;
                    v15 = @"No start/stop supplied";
                  }
                }

                else
                {
                  v18 = 0;
                  v15 = @"reference key doesn't supply a number";
                }
              }

              else
              {
                v18 = 0;
                v15 = @"No reference supplied";
              }
            }
          }

          if (!v15)
          {
            goto LABEL_49;
          }

          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
        v15 = @"jsonObject not dictionary";
      }
    }
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v15 = @"No payload at eventQualifiers[@1]";
  }

  v25 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v33 = v15;
    _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "TaggedInfoTestHandler symptom processing: %@", buf, 0xCu);
  }

LABEL_48:

  v26 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  v16[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  informer = self->_informer;
  if (!informer)
  {
    v9 = +[BasebandFlowInformer sharedInstance];
    v10 = self->_informer;
    self->_informer = v9;

    informer = self->_informer;
  }

  v15 = @"state";
  getState = [(BasebandFlowInformer *)informer getState];
  v16[0] = getState;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  date = [MEMORY[0x277CBEAA8] date];
  (*(blockCopy + 2))(blockCopy, 0, "Status", date, 0, 0, v12);

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)_sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__TaggedInfoTestHandler__sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_sharedInstance_pred != -1)
  {
    dispatch_once(&_sharedInstance_pred, block);
  }

  v2 = _sharedInstance_sharedInstance;

  return v2;
}

void __40__TaggedInfoTestHandler__sharedInstance__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _sharedInstance_sharedInstance;
  _sharedInstance_sharedInstance = v1;

  v3 = _sharedInstance_sharedInstance;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];

  [ManagedEventTransport setInfoProvider:_sharedInstance_sharedInstance forId:17];
  v6 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109120;
    v8[1] = 17;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "TaggedInfoTestHandler set self for symptomstool -m %d", v8, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[TaggedInfoTestHandler _sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

- (void)noteSymptom:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = objc_begin_catch(a1);
  v2 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Exception trying to create JSON object %@", &v4, 0xCu);
  }

  objc_end_catch();
  v3 = *MEMORY[0x277D85DE8];
}

@end