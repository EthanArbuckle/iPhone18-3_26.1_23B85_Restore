@interface PMLTrainingMock
- (PMLTrainingMock)init;
- (id)lastTrainingFeaturizationForModelName:(id)name andLocale:(id)locale;
- (void)updateLastTrainingFeaturizationForModel:(id)model andData:(id)data;
@end

@implementation PMLTrainingMock

- (void)updateLastTrainingFeaturizationForModel:(id)model andData:(id)data
{
  lastTrainingFeaturizations = self->_lastTrainingFeaturizations;
  v6 = MEMORY[0x277D42648];
  modelCopy = model;
  v12 = [v6 tupleWithFirst:modelCopy second:data];
  v8 = MEMORY[0x277D42648];
  name = [modelCopy name];
  locale = [modelCopy locale];

  v11 = [v8 tupleWithFirst:name second:locale];
  [(NSMutableDictionary *)lastTrainingFeaturizations setObject:v12 forKey:v11];
}

- (id)lastTrainingFeaturizationForModelName:(id)name andLocale:(id)locale
{
  lastTrainingFeaturizations = self->_lastTrainingFeaturizations;
  v5 = [MEMORY[0x277D42648] tupleWithFirst:name second:locale];
  v6 = [(NSMutableDictionary *)lastTrainingFeaturizations objectForKeyedSubscript:v5];

  return v6;
}

- (PMLTrainingMock)init
{
  v8.receiver = self;
  v8.super_class = PMLTrainingMock;
  v2 = [(PMLTrainingMock *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    internalCollectedSessions = v2->_internalCollectedSessions;
    v2->_internalCollectedSessions = v3;

    objc_storeStrong(&v2->_collectedSessions, v2->_internalCollectedSessions);
    v5 = objc_opt_new();
    lastTrainingFeaturizations = v2->_lastTrainingFeaturizations;
    v2->_lastTrainingFeaturizations = v5;
  }

  return v2;
}

@end