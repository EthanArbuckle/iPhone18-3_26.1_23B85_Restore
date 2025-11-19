@interface TPPBDictionaryMatchingRule
- (BOOL)invertMatch:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)matches:(id)a3 error:(id *)a4;
- (BOOL)performAndMatch:(id)a3 error:(id *)a4;
- (BOOL)performOrMatch:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)addAnd:(id)a3;
- (void)addOr:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBDictionaryMatchingRule

- (void)mergeFrom:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 52))
  {
    self->_type = *(v4 + 12);
    *&self->_has |= 1u;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = *(v4 + 1);
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(TPPBDictionaryMatchingRule *)self addAnd:*(*(&v27 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v5[5];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(TPPBDictionaryMatchingRule *)self addOr:*(*(&v23 + 1) + 8 * j), v23];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v13);
  }

  not = self->_not;
  v17 = v5[4];
  if (not)
  {
    if (v17)
    {
      [(TPPBDictionaryMatchingRule *)not mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(TPPBDictionaryMatchingRule *)self setNot:?];
  }

  match = self->_match;
  v19 = v5[3];
  if (match)
  {
    if (v19)
    {
      [(TPPBDictionaryMatchingRuleFieldRegexMatch *)match mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(TPPBDictionaryMatchingRule *)self setMatch:?];
  }

  exists = self->_exists;
  v21 = v5[2];
  if (exists)
  {
    if (v21)
    {
      [(TPPBDictionaryMatchingRuleFieldExists *)exists mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(TPPBDictionaryMatchingRule *)self setExists:?];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_ands hash]^ v3;
  v5 = [(NSMutableArray *)self->_ors hash];
  v6 = v4 ^ v5 ^ [(TPPBDictionaryMatchingRule *)self->_not hash];
  v7 = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self->_match hash];
  return v6 ^ v7 ^ [(TPPBDictionaryMatchingRuleFieldExists *)self->_exists hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_type != *(v4 + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 52))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  ands = self->_ands;
  if (ands | *(v4 + 1) && ![(NSMutableArray *)ands isEqual:?])
  {
    goto LABEL_17;
  }

  ors = self->_ors;
  if (ors | *(v4 + 5))
  {
    if (![(NSMutableArray *)ors isEqual:?])
    {
      goto LABEL_17;
    }
  }

  not = self->_not;
  if (not | *(v4 + 4))
  {
    if (![(TPPBDictionaryMatchingRule *)not isEqual:?])
    {
      goto LABEL_17;
    }
  }

  match = self->_match;
  if (match | *(v4 + 3))
  {
    if (![(TPPBDictionaryMatchingRuleFieldRegexMatch *)match isEqual:?])
    {
      goto LABEL_17;
    }
  }

  exists = self->_exists;
  if (exists | *(v4 + 2))
  {
    v11 = [(TPPBDictionaryMatchingRuleFieldExists *)exists isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_type;
    *(v5 + 52) |= 1u;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_ands;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v31 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addAnd:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = self->_ors;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v27 + 1) + 8 * v17) copyWithZone:{a3, v27}];
        [v6 addOr:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v15);
  }

  v19 = [(TPPBDictionaryMatchingRule *)self->_not copyWithZone:a3];
  v20 = v6[4];
  v6[4] = v19;

  v21 = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self->_match copyWithZone:a3];
  v22 = v6[3];
  v6[3] = v21;

  v23 = [(TPPBDictionaryMatchingRuleFieldExists *)self->_exists copyWithZone:a3];
  v24 = v6[2];
  v6[2] = v23;

  v25 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[12] = self->_type;
    *(v4 + 52) |= 1u;
  }

  v14 = v4;
  if ([(TPPBDictionaryMatchingRule *)self andsCount])
  {
    [v14 clearAnds];
    v5 = [(TPPBDictionaryMatchingRule *)self andsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(TPPBDictionaryMatchingRule *)self andAtIndex:i];
        [v14 addAnd:v8];
      }
    }
  }

  if ([(TPPBDictionaryMatchingRule *)self orsCount])
  {
    [v14 clearOrs];
    v9 = [(TPPBDictionaryMatchingRule *)self orsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(TPPBDictionaryMatchingRule *)self orAtIndex:j];
        [v14 addOr:v12];
      }
    }
  }

  if (self->_not)
  {
    [v14 setNot:?];
  }

  v13 = v14;
  if (self->_match)
  {
    [v14 setMatch:?];
    v13 = v14;
  }

  if (self->_exists)
  {
    [v14 setExists:?];
    v13 = v14;
  }
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_ands;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_ors;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  if (self->_not)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_match)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_exists)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 8)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_279DEDCC0[type];
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  if ([(NSMutableArray *)self->_ands count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_ands, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = self->_ands;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v32 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"and"];
  }

  if ([(NSMutableArray *)self->_ors count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_ors, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = self->_ors;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v28 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"or"];
  }

  not = self->_not;
  if (not)
  {
    v21 = [(TPPBDictionaryMatchingRule *)not dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"not"];
  }

  match = self->_match;
  if (match)
  {
    v23 = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)match dictionaryRepresentation];
    [v3 setObject:v23 forKey:@"match"];
  }

  exists = self->_exists;
  if (exists)
  {
    v25 = [(TPPBDictionaryMatchingRuleFieldExists *)exists dictionaryRepresentation];
    [v3 setObject:v25 forKey:@"exists"];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBDictionaryMatchingRule;
  v4 = [(TPPBDictionaryMatchingRule *)&v8 description];
  v5 = [(TPPBDictionaryMatchingRule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addOr:(id)a3
{
  v4 = a3;
  ors = self->_ors;
  v8 = v4;
  if (!ors)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ors;
    self->_ors = v6;

    v4 = v8;
    ors = self->_ors;
  }

  [(NSMutableArray *)ors addObject:v4];
}

- (void)addAnd:(id)a3
{
  v4 = a3;
  ands = self->_ands;
  v8 = v4;
  if (!ands)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ands;
    self->_ands = v6;

    v4 = v8;
    ands = self->_ands;
  }

  [(NSMutableArray *)ands addObject:v4];
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AND_RULE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OR_RULE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NOT_RULE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MATCH_RULE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"FIELD_EXISTS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TRUE_RULE"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"FALSE_RULE"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (BOOL)invertMatch:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TPPBDictionaryMatchingRule *)self not];

  if (v7)
  {
    v8 = [(TPPBDictionaryMatchingRule *)self not];
    v14 = 0;
    v9 = [v8 matches:v6 error:&v14];
    v10 = v14;

    if (v10)
    {
      if (a4)
      {
        v11 = v10;
        v12 = 0;
        *a4 = v10;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = v9 ^ 1;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"CKKSMatcherError" code:2 description:@"No 'not' subrule present"];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)performOrMatch:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(TPPBDictionaryMatchingRule *)self ors];
  if (v7)
  {
    v8 = v7;
    v9 = [(TPPBDictionaryMatchingRule *)self ors];
    v10 = [v9 count];

    if (v10)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = [(TPPBDictionaryMatchingRule *)self ors];
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            v22 = 0;
            v17 = [v16 matches:v6 error:&v22];
            v18 = v22;
            v19 = v18 == 0;
            if (v18)
            {
              if (a4)
              {
                v18 = v18;
                *a4 = v18;
              }

LABEL_19:
              goto LABEL_20;
            }

            if (v17)
            {
              goto LABEL_19;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_15;
    }
  }

  if (!a4)
  {
LABEL_15:
    v19 = 0;
    goto LABEL_20;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:@"CKKSMatcherError" code:2 description:@"No 'or' subrules present"];
  *a4 = v19 = 0;
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)performAndMatch:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(TPPBDictionaryMatchingRule *)self ands];
  if (v7 && (v8 = v7, -[TPPBDictionaryMatchingRule ands](self, "ands"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v8, v10))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [(TPPBDictionaryMatchingRule *)self ands];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v21 = 0;
          v17 = [v16 matches:v6 error:&v21];
          v18 = v21;
          if (v18)
          {
            if (a4)
            {
              v18 = v18;
              *a4 = v18;
            }

            LOBYTE(v17) = 0;
            goto LABEL_20;
          }

          if (!v17)
          {
            goto LABEL_20;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        LOBYTE(v17) = 1;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v17) = 1;
    }

LABEL_20:
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"CKKSMatcherError" code:2 description:@"No 'and' subrules present"];
    *a4 = LOBYTE(v17) = 0;
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)matches:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(TPPBDictionaryMatchingRule *)self hasType])
  {
    v7 = [(TPPBDictionaryMatchingRule *)self type];
    if (v7 > 3)
    {
      if (v7 <= 5)
      {
        if (v7 == 4)
        {
          v15 = [(TPPBDictionaryMatchingRule *)self match];

          if (v15)
          {
            v9 = [(TPPBDictionaryMatchingRule *)self match];
            goto LABEL_22;
          }

          if (a4)
          {
            v10 = MEMORY[0x277CCA9B8];
            v11 = @"No 'match' subrule present";
LABEL_30:
            v12 = 2;
            goto LABEL_10;
          }
        }

        else
        {
          v8 = [(TPPBDictionaryMatchingRule *)self exists];

          if (v8)
          {
            v9 = [(TPPBDictionaryMatchingRule *)self exists];
LABEL_22:
            v16 = v9;
            v13 = [v9 matches:v6 error:a4];

            goto LABEL_32;
          }

          if (a4)
          {
            v10 = MEMORY[0x277CCA9B8];
            v11 = @"No 'exists' subrule present";
            goto LABEL_30;
          }
        }

LABEL_31:
        v13 = 0;
        goto LABEL_32;
      }

      if (v7 == 6)
      {
        v13 = 1;
        goto LABEL_32;
      }

      if (v7 == 7)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    switch(v7)
    {
      case 1:
        v14 = [(TPPBDictionaryMatchingRule *)self performAndMatch:v6 error:a4];
        break;
      case 2:
        v14 = [(TPPBDictionaryMatchingRule *)self performOrMatch:v6 error:a4];
        break;
      case 3:
        v14 = [(TPPBDictionaryMatchingRule *)self invertMatch:v6 error:a4];
        break;
      default:
LABEL_17:
        if (!a4)
        {
          goto LABEL_31;
        }

        v10 = MEMORY[0x277CCA9B8];
        v11 = @"Rule type is unknown";
        goto LABEL_9;
    }

    v13 = v14;
    goto LABEL_32;
  }

  if (!a4)
  {
    goto LABEL_31;
  }

  v10 = MEMORY[0x277CCA9B8];
  v11 = @"Rule has no type";
LABEL_9:
  v12 = 0;
LABEL_10:
  [v10 errorWithDomain:@"CKKSMatcherError" code:v12 description:v11];
  *a4 = v13 = 0;
LABEL_32:

  return v13;
}

@end