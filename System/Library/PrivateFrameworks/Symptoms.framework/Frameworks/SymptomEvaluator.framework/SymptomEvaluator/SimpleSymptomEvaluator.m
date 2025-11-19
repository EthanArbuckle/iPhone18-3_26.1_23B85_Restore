@interface SimpleSymptomEvaluator
+ (id)_defaultEvaluator;
+ (id)configureClass:(id)a3;
+ (id)objectWithName:(id)a3;
+ (void)initialize;
+ (void)postIncomingEvent:(id)a3;
- (SimpleSymptomEvaluator)initWithName:(id)a3;
- (int)configureInstance:(id)a3;
- (void)evaluateIncomingEvent:(id)a3;
@end

@implementation SimpleSymptomEvaluator

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = evaluatorDictionary;
  evaluatorDictionary = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

- (SimpleSymptomEvaluator)initWithName:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SimpleSymptomEvaluator;
  v6 = [(SimpleSymptomEvaluator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->symptomName, a3);
    v8 = [SymptomStore keyFromSymptomName:v5];
    symptomKey = v7->symptomKey;
    v7->symptomKey = v8;

    v7->symptomSaveFlags = 0;
    v7->symptomMaxRetainTime = 0;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    symptomRules = v7->symptomRules;
    v7->symptomRules = v10;

    [evaluatorDictionary setObject:v7 forKey:v7->symptomKey];
    [ConfigurationHandler setConfigurationObject:v7 forName:v5];
  }

  return v7;
}

+ (id)objectWithName:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [ConfigurationHandler objectForName:v3];
  if (!v4)
  {
    v4 = [[SimpleSymptomEvaluator alloc] initWithName:v3];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_7:
    v4 = v4;
    v8 = v4;
    goto LABEL_8;
  }

  v5 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
  {
    v6 = v3;
    v7 = v5;
    v11 = 136315138;
    v12 = [v3 UTF8String];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Attempted reuse of name %s", &v11, 0xCu);
  }

  v8 = 0;
LABEL_8:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)configureClass:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"TRIGGER_EVENT"];
  if (v5)
  {
    v6 = [a1 objectWithName:v5];
    v7 = v6;
    if (v6 && ![v6 configureInstance:v4])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [v4 description];
      v14 = 136315138;
      v15 = [v11 UTF8String];
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Can't find name in configuration directory %s", &v14, 0xCu);
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (int)configureInstance:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"TRIGGERED_SIGNATURES"];
  if (!v5)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "Malformed rules array\n", buf, 2u);
    }

LABEL_60:
    v33 = -1;
    goto LABEL_61;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v5;
  v49 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (!v49)
  {
    goto LABEL_24;
  }

  v50 = *v60;
  v44 = v4;
  v45 = v5;
  v47 = self;
  while (2)
  {
    for (i = 0; i != v49; ++i)
    {
      if (*v60 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v59 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v39 = configurationLogHandle;
        v4 = v44;
        v5 = v45;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_ERROR, "Malformed signature array, entry not a dictionary\n", buf, 2u);
        }

        goto LABEL_59;
      }

      v8 = [v7 objectForKey:@"SIGNATURE_NAME"];
      if (!v8)
      {
        v40 = configurationLogHandle;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v41 = "Malformed signature details, no name\n";
LABEL_57:
          _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_ERROR, v41, buf, 2u);
        }

LABEL_58:

        v4 = v44;
        v5 = v45;
LABEL_59:

        goto LABEL_60;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v40 = configurationLogHandle;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v41 = "Malformed signature name, not a string\n";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v9 = self->symptomRules;
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v55 objects:v66 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v56;
        while (2)
        {
          v14 = 0;
          v15 = v12;
          do
          {
            if (*v56 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v12 = *(*(&v55 + 1) + 8 * v14);

            v16 = [v12 signatureName];
            v17 = [v16 isEqualToString:v8];

            if (v17)
            {

              self = v47;
              goto LABEL_22;
            }

            ++v14;
            v15 = v12;
          }

          while (v11 != v14);
          v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v55 objects:v66 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

        self = v47;
      }

      v12 = [SimpleRuleEvaluator objectWithName:v8];
      [(NSMutableArray *)self->symptomRules addObject:v12];
LABEL_22:
      [v12 configureInstance:v7];
    }

    v4 = v44;
    v5 = v45;
    v49 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v49)
    {
      continue;
    }

    break;
  }

LABEL_24:

LABEL_25:
  v18 = [v4 objectForKey:@"HANDLER_PREFLIGHT"];
  v19 = v18;
  if (v18)
  {
    v20 = self;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v22)
    {
      v23 = v22;
      v46 = v5;
      v24 = v4;
      v25 = *v52;
      symptomAdditionalHandlers = v20->symptomAdditionalHandlers;
      while (2)
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v52 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v51 + 1) + 8 * j);
          v29 = [ConfigurationHandler classRepresentativeForName:v28];
          if (!v29)
          {
            v35 = configurationLogHandle;
            if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
            {
              v36 = v28;
              v37 = v35;
              v38 = [v28 UTF8String];
              *buf = 136315138;
              v64 = v38;
              _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_ERROR, "Cant find preconfigured instance for %s", buf, 0xCu);
            }

            v33 = -1;
            goto LABEL_46;
          }

          v30 = v29;
          v31 = 4;
          v32 = symptomAdditionalHandlers;
          while (*v32 != v30)
          {
            if (!*v32)
            {
              objc_storeStrong(v32, v30);
              break;
            }

            ++v32;
            if (!--v31)
            {
              break;
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v51 objects:v65 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      v33 = 0;
LABEL_46:
      v4 = v24;
      v5 = v46;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_61:
  v42 = *MEMORY[0x277D85DE8];
  return v33;
}

+ (id)_defaultEvaluator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SimpleSymptomEvaluator__defaultEvaluator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_defaultEvaluator_pred != -1)
  {
    dispatch_once(&_defaultEvaluator_pred, block);
  }

  v2 = _defaultEvaluator_defaultInstance;

  return v2;
}

uint64_t __43__SimpleSymptomEvaluator__defaultEvaluator__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) objectWithName:@"_com.apple.default.symptom.handler"];
  v2 = _defaultEvaluator_defaultInstance;
  _defaultEvaluator_defaultInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (void)postIncomingEvent:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 eventKey];
  v5 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = v4;
    v7 = v5;
    v18 = 136315138;
    v19 = [v4 UTF8String];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Simple Processing, postIncomingEvent key %s", &v18, 0xCu);
  }

  v8 = [evaluatorDictionary objectForKey:v4];
  if (v8)
  {
    v9 = v8;
    [v8 evaluateIncomingEvent:v3];
    v10 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "Simple Processing, postSymptom exit\n", &v18, 2u);
    }
  }

  else
  {
    v11 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = v4;
      v13 = v11;
      v14 = [v4 UTF8String];
      v15 = [v3 processId];
      v16 = [v3 processName];
      v18 = 136315650;
      v19 = v14;
      v20 = 2048;
      v21 = v15;
      v22 = 2080;
      v23 = v16;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "No Evaluator for incoming symptom %s from pid %lld %s", &v18, 0x20u);
    }

    v9 = +[SimpleSymptomEvaluator _defaultEvaluator];
    [evaluatorDictionary setObject:v9 forKey:v4];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)evaluateIncomingEvent:(id)a3
{
  *&v24[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->symptomSaveFlags)
  {
    [SymptomStore noteReceivedSymptom:v4];
  }

  v6 = 0;
  symptomAdditionalHandlers = self->symptomAdditionalHandlers;
  v8 = 1;
  *&v5 = 136315138;
  v22 = v5;
  do
  {
    if (!symptomAdditionalHandlers[v6])
    {
      break;
    }

    v9 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = symptomAdditionalHandlers[v6];
      v11 = v9;
      v12 = [(SymptomAdditionalProtocol *)v10 description];
      v13 = [v12 UTF8String];
      *buf = 67109378;
      v24[0] = v6;
      LOWORD(v24[1]) = 2080;
      *(&v24[1] + 2) = v13;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Call handler %d, %s", buf, 0x12u);
    }

    if (([(SymptomAdditionalProtocol *)symptomAdditionalHandlers[v6] noteSymptom:v4, v22]& 1) == 0)
    {
      v14 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v15 = v14;
        v16 = [v4 description];
        v17 = [v16 UTF8String];
        *buf = v22;
        *v24 = v17;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "note symptom stage requests skip of evaluate for event %s", buf, 0xCu);
      }

      v8 = 0;
    }

    ++v6;
  }

  while (v6 != 4);
  if ((v8 & 1) != 0 && [(NSMutableArray *)self->symptomRules count])
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = v19;
      v19 = [(NSMutableArray *)self->symptomRules objectAtIndex:v18, v22];

      [v19 evaluateSignatureForEvent:v4];
      ++v18;
    }

    while ([(NSMutableArray *)self->symptomRules count]> v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end