@interface REWorkoutRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (REWorkoutRelevanceProvider)initWithDictionary:(id)a3;
- (REWorkoutRelevanceProvider)initWithState:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryEncoding;
@end

@implementation REWorkoutRelevanceProvider

- (REWorkoutRelevanceProvider)initWithDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"state"];
  v5 = -[REWorkoutRelevanceProvider initWithState:](self, "initWithState:", [v4 unsignedIntegerValue]);

  return v5;
}

- (id)dictionaryEncoding
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"state";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_state];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (REWorkoutRelevanceProvider)initWithState:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = REWorkoutRelevanceProvider;
  result = [(RERelevanceProvider *)&v5 init];
  if (result)
  {
    result->_state = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  state = self->_state;

  return [v4 initWithState:state];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = REWorkoutRelevanceProvider;
    v5 = [(RERelevanceProvider *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_state == v4->_state;
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = REWorkoutRelevanceProvider;
  v3 = [(REWorkoutRelevanceProvider *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" state=%lu", self->_state];

  return v4;
}

@end