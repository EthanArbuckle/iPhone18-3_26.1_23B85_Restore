@interface REActivityRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (REActivityRelevanceProvider)initWithActiveEnergyState:(BOOL)state exerciseTimeState:(BOOL)timeState standHourState:(BOOL)hourState;
- (REActivityRelevanceProvider)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
@end

@implementation REActivityRelevanceProvider

- (REActivityRelevanceProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"energy"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"exercise"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"stand"];

  v8 = -[REActivityRelevanceProvider initWithActiveEnergyState:exerciseTimeState:standHourState:](self, "initWithActiveEnergyState:exerciseTimeState:standHourState:", [v5 BOOLValue], objc_msgSend(v6, "BOOLValue"), objc_msgSend(v7, "BOOLValue"));
  return v8;
}

- (id)dictionaryEncoding
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_closedActiveEngergy];
  [dictionary setObject:v4 forKeyedSubscript:@"energy"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_closedExerciseTime];
  [dictionary setObject:v5 forKeyedSubscript:@"exercise"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_closedStandHour];
  [dictionary setObject:v6 forKeyedSubscript:@"stand"];

  v7 = [dictionary copy];

  return v7;
}

- (REActivityRelevanceProvider)initWithActiveEnergyState:(BOOL)state exerciseTimeState:(BOOL)timeState standHourState:(BOOL)hourState
{
  v9.receiver = self;
  v9.super_class = REActivityRelevanceProvider;
  result = [(RERelevanceProvider *)&v9 init];
  if (result)
  {
    result->_closedStandHour = hourState;
    result->_closedExerciseTime = timeState;
    result->_closedActiveEngergy = state;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  closedActiveEngergy = self->_closedActiveEngergy;
  closedExerciseTime = self->_closedExerciseTime;
  closedStandHour = self->_closedStandHour;

  return [v4 initWithActiveEnergyState:closedActiveEngergy exerciseTimeState:closedExerciseTime standHourState:closedStandHour];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = REActivityRelevanceProvider;
    if ([(RERelevanceProvider *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      v6 = self->_closedStandHour == v5[34] && self->_closedExerciseTime == v5[33] && self->_closedActiveEngergy == v5[32];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = REActivityRelevanceProvider;
  v3 = [(REActivityRelevanceProvider *)&v9 description];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_closedStandHour];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_closedExerciseTime];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_closedActiveEngergy];
  v7 = [v3 stringByAppendingFormat:@" stand=%@, exercise=%@, energy=%@", v4, v5, v6];

  return v7;
}

@end