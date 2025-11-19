@interface REActivityRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (REActivityRelevanceProvider)initWithActiveEnergyState:(BOOL)a3 exerciseTimeState:(BOOL)a4 standHourState:(BOOL)a5;
- (REActivityRelevanceProvider)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryEncoding;
@end

@implementation REActivityRelevanceProvider

- (REActivityRelevanceProvider)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"energy"];
  v6 = [v4 objectForKeyedSubscript:@"exercise"];
  v7 = [v4 objectForKeyedSubscript:@"stand"];

  v8 = -[REActivityRelevanceProvider initWithActiveEnergyState:exerciseTimeState:standHourState:](self, "initWithActiveEnergyState:exerciseTimeState:standHourState:", [v5 BOOLValue], objc_msgSend(v6, "BOOLValue"), objc_msgSend(v7, "BOOLValue"));
  return v8;
}

- (id)dictionaryEncoding
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_closedActiveEngergy];
  [v3 setObject:v4 forKeyedSubscript:@"energy"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_closedExerciseTime];
  [v3 setObject:v5 forKeyedSubscript:@"exercise"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_closedStandHour];
  [v3 setObject:v6 forKeyedSubscript:@"stand"];

  v7 = [v3 copy];

  return v7;
}

- (REActivityRelevanceProvider)initWithActiveEnergyState:(BOOL)a3 exerciseTimeState:(BOOL)a4 standHourState:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = REActivityRelevanceProvider;
  result = [(RERelevanceProvider *)&v9 init];
  if (result)
  {
    result->_closedStandHour = a5;
    result->_closedExerciseTime = a4;
    result->_closedActiveEngergy = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  closedActiveEngergy = self->_closedActiveEngergy;
  closedExerciseTime = self->_closedExerciseTime;
  closedStandHour = self->_closedStandHour;

  return [v4 initWithActiveEnergyState:closedActiveEngergy exerciseTimeState:closedExerciseTime standHourState:closedStandHour];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = REActivityRelevanceProvider;
    if ([(RERelevanceProvider *)&v8 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
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