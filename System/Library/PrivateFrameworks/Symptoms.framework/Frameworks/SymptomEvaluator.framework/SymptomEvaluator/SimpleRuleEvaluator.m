@interface SimpleRuleEvaluator
+ (id)configureClass:(id)a3;
+ (id)objectWithName:(id)a3;
- (NSString)description;
- (int)configureInstance:(id)a3;
- (void)evaluateSignatureForEvent:(id)a3;
@end

@implementation SimpleRuleEvaluator

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  signatureName = self->_signatureName;
  v5 = [(SimpleSyndromeHandler *)self->_syndromeToCall syndromeName];
  v6 = [v3 stringWithFormat:@"signature handler %@ for syndrome %@ with conditions %@", signatureName, v5, self->_conditionsToCheck];

  return v6;
}

+ (id)objectWithName:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [ConfigurationHandler objectForName:v3];
  if (!v4)
  {
    v9 = objc_alloc_init(SimpleRuleEvaluator);
    v4 = v9;
    if (v9)
    {
      [(SimpleRuleEvaluator *)v9 setSignatureName:v3];
      [ConfigurationHandler setConfigurationObject:v4 forName:v3];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_8:
    v4 = v4;
    v8 = v4;
    goto LABEL_9;
  }

  v5 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
  {
    v6 = v3;
    v7 = v5;
    v12 = 136315138;
    v13 = [v3 UTF8String];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Attempted reuse of name %s", &v12, 0xCu);
  }

  v8 = 0;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)configureClass:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"SIGNATURE_NAME"];
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
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"SYNDROME_NAME"];
  if (v5)
  {
    v6 = [SimpleSyndromeHandler objectWithName:v5];
    syndromeToCall = self->_syndromeToCall;
    self->_syndromeToCall = v6;

    if ([(SimpleSyndromeHandler *)self->_syndromeToCall configureInstance:v4])
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = -1;
      goto LABEL_26;
    }
  }

  v13 = [v4 objectForKey:@"RULE_AWD_CODE"];
  v9 = v13;
  if (v13)
  {
    self->_awd_code = [v13 unsignedLongLongValue];
  }

  v14 = [v4 objectForKey:@"SIGNATURE_DESCRIPTION"];
  if (v14)
  {
    v15 = v14;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s triggered by %@", -[SimpleSyndromeHandler syndromeUTF8Name](self->_syndromeToCall, "syndromeUTF8Name"), v14];

    stringToLog = self->_stringToLog;
    if (stringToLog)
    {
      free(stringToLog);
      self->_stringToLog = 0;
    }

    v17 = [v10 UTF8String];
    if (!v17)
    {
      [ManagedEventHandler initWithName:buf];
    }

    v18 = strdup(v17);
    if (!v18)
    {
      [EventDescription initWithType:buf length:? data:? fromPid:? named:? bundleId:?];
    }
  }

  else
  {
    if (self->_stringToLog)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v38 = [(SimpleSyndromeHandler *)self->_syndromeToCall syndromeUTF8Name];
    if (!v38)
    {
      [ManagedEventHandler initWithName:buf];
    }

    v18 = strdup(v38);
    if (!v18)
    {
      [EventDescription initWithType:buf length:? data:? fromPid:? named:? bundleId:?];
    }

    v10 = 0;
  }

  self->_stringToLog = v18;
LABEL_14:
  v8 = [v4 objectForKey:@"ADDITIONAL_INFO_GENERATOR"];
  if (v8)
  {
    v19 = [ConfigurationHandler classRepresentativeForName:v8];
    additionalInfoGenerator = self->_additionalInfoGenerator;
    self->_additionalInfoGenerator = v19;

    if (self->_additionalInfoGenerator)
    {
      v21 = v8;
      v22 = [v4 objectForKey:@"ADDITIONAL_INFO_SELECTOR"];
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = @"generateAdditionalInfo:";
      }

      v24 = NSSelectorFromString(&v23->isa);
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      self->_additionalInfoSelector = v25;

      v8 = v21;
    }
  }

  if (self->_conditionsToCheck)
  {
    v11 = 0;
LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  conditionsToCheck = self->_conditionsToCheck;
  self->_conditionsToCheck = v28;

  v30 = [v4 objectForKey:@"REQUIRED_ITEMS"];
  v11 = v30;
  if (!v30 || ![v30 count])
  {
    goto LABEL_25;
  }

  v39 = v8;
  v40 = v9;
  v41 = v5;
  v31 = 0;
  v12 = 0;
  do
  {
    v32 = [v11 objectAtIndex:v31];
    v33 = [SimpleRuleCondition configureClass:v32];
    if (v33)
    {
      [(NSMutableArray *)self->_conditionsToCheck addObject:v33];
    }

    else
    {
      v34 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        v35 = v34;
        v36 = [v32 description];
        v37 = [v36 UTF8String];
        *buf = 136315138;
        v43 = v37;
        _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, "Configuration failure to configure condition %s", buf, 0xCu);
      }

      v12 = -1;
    }

    ++v31;
  }

  while ([v11 count] > v31);
  v9 = v40;
  v5 = v41;
  v8 = v39;
LABEL_26:

  v26 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)evaluateSignatureForEvent:(id)a3
{
  *&v28[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = [v4 description];
    v27 = 136315138;
    *v28 = [v8 UTF8String];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "evaluateSignatureForEvent: Entry, event %s", &v27, 0xCu);
  }

  if (![(NSMutableArray *)self->_conditionsToCheck count])
  {
    v12 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "evaluateSignatureForEvent: no conditions to satisfy", &v27, 2u);
    }

    v13 = [DecisionDetails alloc];
    stringToLog = self->_stringToLog;
    awd_code = self->_awd_code;
    v16 = 0;
    goto LABEL_16;
  }

  if ([(NSMutableArray *)self->_conditionsToCheck count])
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [(NSMutableArray *)self->_conditionsToCheck objectAtIndex:v9];
      v10 += [v11 evaluate:v4 showingWorkAt:v5];

      ++v9;
    }

    while ([(NSMutableArray *)self->_conditionsToCheck count]> v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = [(NSMutableArray *)self->_conditionsToCheck count];
  v18 = evaluationLogHandle;
  v19 = os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG);
  if (v17 == v10)
  {
    if (v19)
    {
      v27 = 67109120;
      v28[0] = v10;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "evaluateSignatureForEvent: satisfied %d conditions", &v27, 8u);
    }

    v13 = [DecisionDetails alloc];
    stringToLog = self->_stringToLog;
    awd_code = self->_awd_code;
    v16 = v5;
LABEL_16:
    v20 = [(DecisionDetails *)v13 initWithReason:stringToLog code:awd_code evaluations:v16];
    additionalInfoGenerator = self->_additionalInfoGenerator;
    if (additionalInfoGenerator)
    {
      if (self->_additionalInfoSelector)
      {
        additionalInfoSelector = self->_additionalInfoSelector;
      }

      else
      {
        additionalInfoSelector = 0;
      }

      v25 = [(AdditionalInfoProtocol *)additionalInfoGenerator performSelector:additionalInfoSelector withObject:v4];
      if (v25)
      {
        [v20 setAdditionalInfo:v25];
      }
    }

    [(SimpleSyndromeHandler *)self->_syndromeToCall didReceiveSyndrome:v20];
    goto LABEL_26;
  }

  if (v19)
  {
    conditionsToCheck = self->_conditionsToCheck;
    v20 = v18;
    v24 = [(NSMutableArray *)conditionsToCheck count];
    v27 = 67109376;
    v28[0] = v10;
    LOWORD(v28[1]) = 2048;
    *(&v28[1] + 2) = v24;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "evaluateSignatureForEvent: only satisfied %d conditions, needed %ld", &v27, 0x12u);
LABEL_26:
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end