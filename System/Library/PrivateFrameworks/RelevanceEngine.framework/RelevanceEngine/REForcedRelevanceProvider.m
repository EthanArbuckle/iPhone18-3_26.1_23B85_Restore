@interface REForcedRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (REForcedRelevanceProvider)initWithDictionary:(id)a3;
- (REForcedRelevanceProvider)initWithForcedRelevance:(float)a3 isHistoric:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation REForcedRelevanceProvider

- (REForcedRelevanceProvider)initWithForcedRelevance:(float)a3 isHistoric:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = REForcedRelevanceProvider;
  result = [(RERelevanceProvider *)&v7 init];
  if (result)
  {
    result->_relevance = a3;
    result->_isHistoric = a4;
  }

  return result;
}

- (REForcedRelevanceProvider)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"relevance"];
  v6 = [v4 objectForKeyedSubscript:@"historic"];

  [v5 floatValue];
  v8 = v7;
  v9 = [v6 BOOLValue];
  LODWORD(v10) = v8;
  v11 = [(REForcedRelevanceProvider *)self initWithForcedRelevance:v9 isHistoric:v10];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = REForcedRelevanceProvider;
  result = [(RERelevanceProvider *)&v5 copyWithZone:a3];
  *(result + 9) = LODWORD(self->_relevance);
  *(result + 32) = self->_isHistoric;
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
    v7.super_class = REForcedRelevanceProvider;
    v5 = [(RERelevanceProvider *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_relevance == v4->_relevance && self->_isHistoric == v4->_isHistoric;
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