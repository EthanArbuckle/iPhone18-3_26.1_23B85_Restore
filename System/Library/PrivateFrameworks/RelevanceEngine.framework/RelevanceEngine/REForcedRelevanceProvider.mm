@interface REForcedRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (REForcedRelevanceProvider)initWithDictionary:(id)dictionary;
- (REForcedRelevanceProvider)initWithForcedRelevance:(float)relevance isHistoric:(BOOL)historic;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation REForcedRelevanceProvider

- (REForcedRelevanceProvider)initWithForcedRelevance:(float)relevance isHistoric:(BOOL)historic
{
  v7.receiver = self;
  v7.super_class = REForcedRelevanceProvider;
  result = [(RERelevanceProvider *)&v7 init];
  if (result)
  {
    result->_relevance = relevance;
    result->_isHistoric = historic;
  }

  return result;
}

- (REForcedRelevanceProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"relevance"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"historic"];

  [v5 floatValue];
  v8 = v7;
  bOOLValue = [v6 BOOLValue];
  LODWORD(v10) = v8;
  v11 = [(REForcedRelevanceProvider *)self initWithForcedRelevance:bOOLValue isHistoric:v10];

  return v11;
}

- (id)dictionaryEncoding
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"relevance";
  *&v2 = self->_relevance;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v9[1] = @"historic";
  v10[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isHistoric];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = REForcedRelevanceProvider;
  result = [(RERelevanceProvider *)&v5 copyWithZone:zone];
  *(result + 9) = LODWORD(self->_relevance);
  *(result + 32) = self->_isHistoric;
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
    v7.super_class = REForcedRelevanceProvider;
    v5 = [(RERelevanceProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_relevance == equalCopy->_relevance && self->_isHistoric == equalCopy->_isHistoric;
  }

  return v5;
}

- (unint64_t)_hash
{
  *&v2 = self->_relevance;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v5 = [v4 hash];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isHistoric];
  v7 = [v6 hash];

  return v7 ^ v5;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = REForcedRelevanceProvider;
  v3 = [(REForcedRelevanceProvider *)&v8 description];
  v4 = v3;
  if (self->_isHistoric)
  {
    v5 = @" historic";
  }

  else
  {
    v5 = &stru_283B97458;
  }

  v6 = [v3 stringByAppendingFormat:@" relevance=%f%@", self->_relevance, v5];

  return v6;
}

@end