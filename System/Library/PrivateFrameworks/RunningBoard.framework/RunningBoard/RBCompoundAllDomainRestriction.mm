@interface RBCompoundAllDomainRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsContext:(id)context withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)_initWithRestrictions:(id)restrictions;
- (id)allEntitlements;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBCompoundAllDomainRestriction

- (id)_initWithRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  v10.receiver = self;
  v10.super_class = RBCompoundAllDomainRestriction;
  _init = [(RBDomainRestriction *)&v10 _init];
  if (_init)
  {
    v6 = [restrictionsCopy copy];
    v7 = _init[1];
    _init[1] = v6;

    v8 = _init;
  }

  return _init;
}

+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:@"Restrictions"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    array = [MEMORY[0x277CBEB18] array];
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

          v13 = [RBDomainRestriction domainRestrictionForDictionary:*(*(&v22 + 1) + 8 * i) withError:error];
          if (!v13)
          {

            v15 = 0;
            goto LABEL_16;
          }

          v14 = v13;
          [array addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = [[RBCompoundAllDomainRestriction alloc] _initWithRestrictions:array];
  }

  else
  {
    if (!error)
    {
      v15 = 0;
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA470];
    dictionaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"RBCompoundAllDomainRestriction doesn't specify restrictions: %@", dictionaryCopy];
    v28[0] = dictionaryCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    array = [v16 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v18];

    v19 = array;
    v15 = 0;
    *error = array;
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

        dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v17[0] = @"Class";
  v17[1] = @"Restrictions";
  v18[0] = @"CompoundAll";
  v18[1] = v3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v27 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = self->_restrictions;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  v8 = v7 == 0;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v9 = v7;
  v25 = v7 == 0;
  v10 = 0;
  v11 = *v31;
  v26 = *MEMORY[0x277CCA470];
  v8 = 1;
  v12 = 1;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      v14 = v10;
      if (*v31 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v30 + 1) + 8 * i);
      v29 = v10;
      v16 = [v15 allowsContext:contextCopy withError:&v29];
      v10 = v29;

      v8 &= v16;
      if ((v16 & 1) == 0 && error)
      {
        if ((v12 & 1) == 0)
        {
          [v27 appendString:@" AND "];
        }

        userInfo = [v10 userInfo];
        v18 = [userInfo objectForKey:v26];
        [v27 appendString:v18];

        v8 = 0;
        v12 = 0;
      }
    }

    v9 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v9);

  if (error)
  {
    v19 = v8;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    [v27 appendString:@""]);
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D47098];
    v34 = v26;
    v6 = [v27 copy];
    v35 = v6;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    *error = [v20 errorWithDomain:v21 code:1 userInfo:v22];

    v8 = v25;
LABEL_19:
  }

  v23 = *MEMORY[0x277D85DE8];
  return v8;
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

        allEntitlements = [*(*(&v13 + 1) + 8 * i) allEntitlements];
        [v3 unionSet:allEntitlements];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  restrictions = self->_restrictions;
  v8 = equalCopy->_restrictions;
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