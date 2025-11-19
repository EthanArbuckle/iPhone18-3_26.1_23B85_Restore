@interface RBCompoundNoneDomainRestriction
+ (id)domainRestrictionForDictionary:(id)a3 withError:(id *)a4;
- (BOOL)allowsContext:(id)a3 withError:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithRestrictions:(id)a3;
- (id)allEntitlements;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBCompoundNoneDomainRestriction

- (id)_initWithRestrictions:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RBCompoundNoneDomainRestriction;
  v5 = [(RBDomainRestriction *)&v10 _init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v5[1];
    v5[1] = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)domainRestrictionForDictionary:(id)a3 withError:(id *)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKey:@"Restrictions"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [RBDomainRestriction domainRestrictionForDictionary:*(*(&v22 + 1) + 8 * i) withError:a4];
          if (!v13)
          {

            v15 = 0;
            goto LABEL_16;
          }

          v14 = v13;
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = [[RBCompoundNoneDomainRestriction alloc] _initWithRestrictions:v7];
  }

  else
  {
    if (!a4)
    {
      v15 = 0;
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA470];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBCompoundNoneDomainRestriction doesn't specify restrictions: %@", v5];
    v28[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v7 = [v16 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v18];

    v19 = v7;
    v15 = 0;
    *a4 = v7;
  }

LABEL_16:

LABEL_17:
  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_restrictions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v17[0] = @"Class";
  v17[1] = @"Restrictions";
  v18[0] = @"CompoundNone";
  v18[1] = v3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)allowsContext:(id)a3 withError:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_restrictions;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  v10 = v9 == 0;
  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = v9;
  v24 = v9 == 0;
  v12 = *v26;
  v10 = 1;
  v13 = 1;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v25 + 1) + 8 * i);
      v16 = [v15 allowsContext:v6 withError:0];
      v10 &= v16 ^ 1;
      if (a4 && v16)
      {
        if ((v13 & 1) == 0)
        {
          [v7 appendString:@" AND "];
        }

        v17 = [v15 description];
        [v7 appendString:v17];

        v10 = 0;
        v13 = 0;
      }
    }

    v11 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  }

  while (v11);

  if (a4)
  {
    v18 = v10;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    [v7 appendString:@""]);
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D47098];
    v29 = *MEMORY[0x277CCA470];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not allowed because it has %@", v7];
    v30 = v8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    *a4 = [v19 errorWithDomain:v20 code:1 userInfo:v21];

    v10 = v24;
LABEL_18:
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)allEntitlements
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_restrictions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) allEntitlements];
        [v3 unionSet:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  restrictions = self->_restrictions;
  v8 = v4->_restrictions;
  if (restrictions == v8)
  {
LABEL_10:
    v6 = 1;
    goto LABEL_11;
  }

  if (restrictions)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v6 = [(NSArray *)restrictions isEqual:?];
    goto LABEL_11;
  }

LABEL_3:
  v6 = 0;
LABEL_11:

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| %@>", v4, self->_restrictions];

  return v5;
}

@end