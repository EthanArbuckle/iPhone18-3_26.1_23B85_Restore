@interface RBLessThanConditionDomainRestriction
+ (id)domainRestrictionForDictionary:(id)a3 withError:(id *)a4;
- (BOOL)allowsContext:(id)a3 withError:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithCondition:(id)a3 value:(int64_t)a4;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBLessThanConditionDomainRestriction

- (id)_initWithCondition:(id)a3 value:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = RBLessThanConditionDomainRestriction;
  v7 = [(RBDomainRestriction *)&v12 _init];
  if (v7)
  {
    v8 = [v6 copy];
    v9 = v7[1];
    v7[1] = v8;

    v7[2] = a4;
    v10 = v7;
  }

  return v7;
}

+ (id)domainRestrictionForDictionary:(id)a3 withError:(id *)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v6 = [v5 objectForKey:@"Condition"];
    v7 = [v5 objectForKey:@"Value"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          a4 = -[RBLessThanConditionDomainRestriction _initWithCondition:value:]([RBLessThanConditionDomainRestriction alloc], "_initWithCondition:value:", v6, [v7 integerValue]);
LABEL_15:

          goto LABEL_16;
        }
      }

      if (!a4)
      {
        goto LABEL_15;
      }

      v8 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBLessThanConditionDomainRestriction doesn't specify value: %@", v5, *MEMORY[0x277CCA470]];
      v19 = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v19;
      v12 = &v18;
    }

    else
    {
      if (!a4)
      {
        goto LABEL_15;
      }

      v8 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA470];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBLessThanConditionDomainRestriction doesn't specify condition: %@", v5];
      v21[0] = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = v21;
      v12 = &v20;
    }

    v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    v14 = [v8 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v13];

    v15 = v14;
    *a4 = v14;

    a4 = 0;
    goto LABEL_15;
  }

  if (domainRestrictionForDictionary_withError__onceToken_315 != -1)
  {
    +[RBLessThanConditionDomainRestriction domainRestrictionForDictionary:withError:];
  }

  a4 = domainRestrictionForDictionary_withError__singleton_316;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];

  return a4;
}

uint64_t __81__RBLessThanConditionDomainRestriction_domainRestrictionForDictionary_withError___block_invoke()
{
  domainRestrictionForDictionary_withError__singleton_316 = [[RBLessThanConditionDomainRestriction alloc] _initWithCondition:@"FFDisabled" value:0];

  return MEMORY[0x2821F96F8]();
}

- (id)dictionaryRepresentation
{
  v8[3] = *MEMORY[0x277D85DE8];
  condition = self->_condition;
  v7[0] = @"Class";
  v7[1] = @"Condition";
  v8[0] = @"LessThanCondition";
  v8[1] = condition;
  v7[2] = @"Value";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_value];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)allowsContext:(id)a3 withError:(id *)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    v7 = [v6 systemState];
    v8 = [v7 conditions];
    v9 = [v8 objectForKey:self->_condition];

    if (v9 && [v9 integerValue] >= self->_value)
    {
      if (a4)
      {
        v10 = MEMORY[0x277CCA9B8];
        v11 = *MEMORY[0x277D47098];
        v16 = *MEMORY[0x277CCA470];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"System condition %@ has value %lld, which is not less than %lld", self->_condition, objc_msgSend(v9, "integerValue"), self->_value];
        v17[0] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        *a4 = [v10 errorWithDomain:v11 code:1 userInfo:v13];

        LOBYTE(a4) = 0;
      }
    }

    else
    {
      LOBYTE(a4) = 1;
    }
  }

  else
  {
    LOBYTE(a4) = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && ((condition = self->_condition, v8 = v4->_condition, condition == v8) || (condition ? (v9 = v8 == 0) : (v9 = 1), !v9 && [(NSString *)condition isEqual:?])) && self->_value == v4->_value;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  condition = self->_condition;
  v6 = [v3 initWithFormat:@"<%@| %@:%lld>", v4, condition, self->_value];

  return v6;
}

@end