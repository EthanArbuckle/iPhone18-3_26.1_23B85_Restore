@interface RBCompoundAnyDomainRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsContext:(id)context withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)_initWithRestrictions:(id)restrictions;
- (id)allEntitlements;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBCompoundAnyDomainRestriction

- (id)_initWithRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  v10.receiver = self;
  v10.super_class = RBCompoundAnyDomainRestriction;
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

    v15 = [[RBCompoundAnyDomainRestriction alloc] _initWithRestrictions:array];
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
    dictionaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"RBCompoundAnyDomainRestriction doesn't specify restrictions: %@", dictionaryCopy];
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
  v18[0] = @"CompoundAny";
  v18[1] = v3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = self->_restrictions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v40 + 1) + 8 * i) allowsContext:contextCopy withError:0])
        {
          v31 = 1;
          goto LABEL_24;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (error)
  {
    errorCopy = error;
    v7 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = self->_restrictions;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
    v14 = *MEMORY[0x277CCA470];
    if (v13)
    {
      v15 = v13;
      v16 = *v37;
      v17 = 1;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v36 + 1) + 8 * j);
          if ((v17 & 1) == 0)
          {
            [(NSArray *)v7 appendString:@" AND "];
          }

          v35 = 0;
          v20 = [v19 allowsContext:contextCopy withError:&v35];
          v21 = v35;
          if (v20)
          {
            [RBCompoundAnyDomainRestriction allowsContext:withError:];
          }

          v22 = v21;
          if (!v21)
          {
            [RBCompoundAnyDomainRestriction allowsContext:withError:];
          }

          userInfo = [v21 userInfo];
          v24 = [userInfo objectForKey:v14];
          if (!v24)
          {
            [RBCompoundAnyDomainRestriction allowsContext:withError:];
          }

          userInfo2 = [v22 userInfo];
          v26 = [userInfo2 objectForKey:v14];
          [(NSArray *)v7 appendString:v26];

          v17 = 0;
        }

        v15 = [(NSArray *)v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
        v17 = 0;
      }

      while (v15);
    }

    [(NSArray *)v7 appendString:@""]);
    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277D47098];
    v44 = v14;
    v29 = [(NSArray *)v7 copy];
    v45 = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    *errorCopy = [v27 errorWithDomain:v28 code:1 userInfo:v30];

    v31 = 0;
LABEL_24:
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
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