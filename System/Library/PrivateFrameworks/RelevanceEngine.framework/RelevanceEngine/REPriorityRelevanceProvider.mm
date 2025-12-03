@interface REPriorityRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (REPriorityRelevanceProvider)initWithDictionary:(id)dictionary;
- (REPriorityRelevanceProvider)initWithPriority:(float)priority;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation REPriorityRelevanceProvider

- (REPriorityRelevanceProvider)initWithPriority:(float)priority
{
  if (priority < 0.0 || priority > 1.0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The priority must be in the range 0.0 to 1.0"];
  }

  v7.receiver = self;
  v7.super_class = REPriorityRelevanceProvider;
  result = [(RERelevanceProvider *)&v7 init];
  if (result)
  {
    result->_priority = priority;
  }

  return result;
}

- (REPriorityRelevanceProvider)initWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"priority"];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    self = [(REPriorityRelevanceProvider *)self initWithPriority:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = REPriorityRelevanceProvider;
  result = [(RERelevanceProvider *)&v5 copyWithZone:zone];
  *(result + 8) = LODWORD(self->_priority);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = REPriorityRelevanceProvider;
    v5 = [(RERelevanceProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_priority == equalCopy->_priority;
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