@interface PMLTrainingMock
- (PMLTrainingMock)init;
- (id)lastTrainingFeaturizationForModelName:(id)a3 andLocale:(id)a4;
- (void)updateLastTrainingFeaturizationForModel:(id)a3 andData:(id)a4;
@end

@implementation PMLTrainingMock

- (void)updateLastTrainingFeaturizationForModel:(id)a3 andData:(id)a4
{
  lastTrainingFeaturizations = self->_lastTrainingFeaturizations;
  v6 = MEMORY[0x277D42648];
  v7 = a3;
  v12 = [v6 tupleWithFirst:v7 second:a4];
  v8 = MEMORY[0x277D42648];
  v9 = [v7 name];
  v10 = [v7 locale];

  v11 = [v8 tupleWithFirst:v9 second:v10];
  [(NSMutableDictionary *)lastTrainingFeaturizations setObject:v12 forKey:v11];
}

- (id)lastTrainingFeaturizationForModelName:(id)a3 andLocale:(id)a4
{
  lastTrainingFeaturizations = self->_lastTrainingFeaturizations;
  v5 = [MEMORY[0x277D42648] tupleWithFirst:a3 second:a4];
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