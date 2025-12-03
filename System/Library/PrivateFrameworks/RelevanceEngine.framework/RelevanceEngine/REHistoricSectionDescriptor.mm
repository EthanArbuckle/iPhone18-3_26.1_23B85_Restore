@interface REHistoricSectionDescriptor
- (BOOL)isEqual:(id)equal;
- (NSSet)rules;
- (NSString)name;
- (REHistoricSectionDescriptor)init;
- (RESectionDescriptor)parentDescriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setOrderedRules:(id)rules;
- (void)setRules:(id)rules;
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
    orderedSet = [MEMORY[0x277CBEB70] orderedSet];
    rules = v3->_rules;
    v3->_rules = orderedSet;
  }

  return v3;
}

- (NSString)name
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDescriptor);
  name = [WeakRetained name];

  if (name)
  {
    v4 = [name stringByAppendingString:@"_historic"];
  }

  else
  {
    v4 = &stru_283B97458;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)setRules:(id)rules
{
  v4 = [MEMORY[0x277CBEB70] orderedSetWithSet:rules];
  rules = self->_rules;
  self->_rules = v4;

  MEMORY[0x2821F96F8](v4, rules);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)setOrderedRules:(id)rules
{
  v4 = [MEMORY[0x277CBEB70] orderedSetWithArray:rules];
  rules = self->_rules;
  self->_rules = v4;

  MEMORY[0x2821F96F8](v4, rules);
}

@end