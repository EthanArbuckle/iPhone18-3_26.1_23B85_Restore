@interface REHistoricSectionDescriptor
- (BOOL)isEqual:(id)a3;
- (NSSet)rules;
- (NSString)name;
- (REHistoricSectionDescriptor)init;
- (RESectionDescriptor)parentDescriptor;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setOrderedRules:(id)a3;
- (void)setRules:(id)a3;
@end

@implementation REHistoricSectionDescriptor

- (REHistoricSectionDescriptor)init
{
  v7.receiver = self;
  v7.super_class = REHistoricSectionDescriptor;
  v2 = [(REHistoricSectionDescriptor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_invertsRanking = 1;
    v2->_maxElementCount = -1;
    v4 = [MEMORY[0x277CBEB70] orderedSet];
    rules = v3->_rules;
    v3->_rules = v4;
  }

  return v3;
}

- (NSString)name
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDescriptor);
  v3 = [WeakRetained name];

  if (v3)
  {
    v4 = [v3 stringByAppendingString:@"_historic"];
  }

  else
  {
    v4 = &stru_283B97458;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (self->_maxElementCount == v5->_maxElementCount && self->_invertsRanking == v5->_invertsRanking)
      {
        rules = self->_rules;
        v8 = v5->_rules;
        v9 = rules;
        v10 = v9;
        if (v9 == v8)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSOrderedSet *)v9 isEqual:v8];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (NSSet)rules
{
  v2 = [(NSOrderedSet *)self->_rules set];
  v3 = [v2 copy];

  return v3;
}

- (void)setRules:(id)a3
{
  v4 = [MEMORY[0x277CBEB70] orderedSetWithSet:a3];
  rules = self->_rules;
  self->_rules = v4;

  MEMORY[0x2821F96F8](v4, rules);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setInvertsRanking:self->_invertsRanking];
  [v4 setMaxElementCount:self->_maxElementCount];
  objc_storeStrong(v4 + 1, self->_rules);
  return v4;
}

- (RESectionDescriptor)parentDescriptor
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDescriptor);

  return WeakRetained;
}

- (void)setOrderedRules:(id)a3
{
  v4 = [MEMORY[0x277CBEB70] orderedSetWithArray:a3];
  rules = self->_rules;
  self->_rules = v4;

  MEMORY[0x2821F96F8](v4, rules);
}

@end