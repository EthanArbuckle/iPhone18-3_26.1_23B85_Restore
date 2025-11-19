@interface PTInferenceANEConfig
- (PTInferenceANEConfig)initWithEspressoPlanPriority:(int)a3 espressoEngine:(int)a4;
- (id)MLANEExecutionPriority;
- (int)E5ExecutionPriority;
- (unint64_t)VNRequestModelExecutionPriority;
@end

@implementation PTInferenceANEConfig

- (PTInferenceANEConfig)initWithEspressoPlanPriority:(int)a3 espressoEngine:(int)a4
{
  v10.receiver = self;
  v10.super_class = PTInferenceANEConfig;
  v6 = [(PTInferenceANEConfig *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_espressoPlanPriority = a3;
    v6->_espressoEngine = a4;
    v8 = v6;
  }

  return v7;
}

- (id)MLANEExecutionPriority
{
  p_espressoPlanPriority = &self->_espressoPlanPriority;
  espressoPlanPriority = self->_espressoPlanPriority;
  if (espressoPlanPriority == 1)
  {
    v4 = MEMORY[0x277CBFE68];
  }

  else if (espressoPlanPriority == 0x2000)
  {
    v4 = MEMORY[0x277CBFE70];
  }

  else
  {
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PTInferenceANEConfig *)p_espressoPlanPriority MLANEExecutionPriority:v5];
    }

    v4 = MEMORY[0x277CBFE78];
  }

  v12 = *v4;

  return v12;
}

- (unint64_t)VNRequestModelExecutionPriority
{
  p_espressoPlanPriority = &self->_espressoPlanPriority;
  result = self->_espressoPlanPriority;
  if (result != 1)
  {
    if (result == 0x2000)
    {
      return 2;
    }

    else
    {
      v4 = _PTLogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(PTInferenceANEConfig *)p_espressoPlanPriority MLANEExecutionPriority:v4];
      }

      return 0;
    }
  }

  return result;
}

- (int)E5ExecutionPriority
{
  p_espressoPlanPriority = &self->_espressoPlanPriority;
  espressoPlanPriority = self->_espressoPlanPriority;
  if (espressoPlanPriority == 1)
  {
    return 2;
  }

  if (espressoPlanPriority == 0x2000)
  {
    return 3;
  }

  v5 = _PTLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(PTInferenceANEConfig *)p_espressoPlanPriority MLANEExecutionPriority:v5];
  }

  return 5;
}

@end