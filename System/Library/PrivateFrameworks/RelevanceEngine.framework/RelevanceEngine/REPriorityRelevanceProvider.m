@interface REPriorityRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (REPriorityRelevanceProvider)initWithDictionary:(id)a3;
- (REPriorityRelevanceProvider)initWithPriority:(float)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation REPriorityRelevanceProvider

- (REPriorityRelevanceProvider)initWithPriority:(float)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The priority must be in the range 0.0 to 1.0"];
  }

  v7.receiver = self;
  v7.super_class = REPriorityRelevanceProvider;
  result = [(RERelevanceProvider *)&v7 init];
  if (result)
  {
    result->_priority = a3;
  }

  return result;
}

- (REPriorityRelevanceProvider)initWithDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"priority"];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    self = [(REPriorityRelevanceProvider *)self initWithPriority:?];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryEncoding
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"priority";
  *&v2 = self->_priority;
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = REPriorityRelevanceProvider;
  result = [(RERelevanceProvider *)&v5 copyWithZone:a3];
  *(result + 8) = LODWORD(self->_priority);
  return result;
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
    v7.super_class = REPriorityRelevanceProvider;
    v5 = [(RERelevanceProvider *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_priority == v4->_priority;
  }

  return v5;
}

- (unint64_t)_hash
{
  *&v2 = self->_priority;
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = REPriorityRelevanceProvider;
  v3 = [(REPriorityRelevanceProvider *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" priority=%f", self->_priority];

  return v4;
}

@end