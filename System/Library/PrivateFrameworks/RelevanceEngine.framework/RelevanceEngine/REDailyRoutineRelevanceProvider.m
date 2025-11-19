@interface REDailyRoutineRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (REDailyRoutineRelevanceProvider)initWithDailyRoutineType:(unint64_t)a3;
- (REDailyRoutineRelevanceProvider)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation REDailyRoutineRelevanceProvider

- (REDailyRoutineRelevanceProvider)initWithDailyRoutineType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = REDailyRoutineRelevanceProvider;
  result = [(RERelevanceProvider *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (REDailyRoutineRelevanceProvider)initWithDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"routine_type"];
  if ([v4 compare:@"morning" options:1])
  {
    if ([v4 compare:@"evening" options:1])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [(REDailyRoutineRelevanceProvider *)self initWithDailyRoutineType:v5];

  return v6;
}

- (id)dictionaryEncoding
{
  v8[1] = *MEMORY[0x277D85DE8];
  type = self->_type;
  if (type > 2)
  {
    v3 = &stru_283B97458;
  }

  else
  {
    v3 = off_2785FB7D0[type];
  }

  v7 = @"routine_type";
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = REDailyRoutineRelevanceProvider;
  result = [(RERelevanceProvider *)&v5 copyWithZone:a3];
  *(result + 4) = self->_type;
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
    v7.super_class = REDailyRoutineRelevanceProvider;
    v5 = [(RERelevanceProvider *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_type == v4->_type;
  }

  return v5;
}

- (unint64_t)_hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  type = self->_type;
  if (type > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_2785FB7D0[type];
  }

  v7.receiver = self;
  v7.super_class = REDailyRoutineRelevanceProvider;
  v4 = [(REDailyRoutineRelevanceProvider *)&v7 description];
  v5 = [v4 stringByAppendingFormat:@" type=%@", v3];

  return v5;
}

@end