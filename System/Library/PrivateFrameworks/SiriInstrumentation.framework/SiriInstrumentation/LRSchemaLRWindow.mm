@interface LRSchemaLRWindow
- (BOOL)isEqual:(id)equal;
- (LRSchemaLRWindow)initWithDictionary:(id)dictionary;
- (LRSchemaLRWindow)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)activeRedactionPoliciesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addActiveRedactionPolicies:(int)policies;
- (void)setHasEndTimeInNs:(BOOL)ns;
- (void)writeTo:(id)to;
@end

@implementation LRSchemaLRWindow

- (LRSchemaLRWindow)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = LRSchemaLRWindow;
  v5 = [(LRSchemaLRWindow *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRWindow setStartTimeInNs:](v5, "setStartTimeInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"endTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRWindow setEndTimeInNs:](v5, "setEndTimeInNs:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"activeRedactionPolicies"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v6;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          v13 = 0;
          do
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[LRSchemaLRWindow addActiveRedactionPolicies:](v5, "addActiveRedactionPolicies:", [v14 intValue]);
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v11);
      }

      v6 = v17;
    }

    v15 = v5;
  }

  return v5;
}

- (LRSchemaLRWindow)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LRSchemaLRWindow *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LRSchemaLRWindow *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_activeRedactionPolicies count])
  {
    activeRedactionPolicies = [(LRSchemaLRWindow *)self activeRedactionPolicies];
    v5 = [activeRedactionPolicies copy];
    [dictionary setObject:v5 forKeyedSubscript:@"activeRedactionPolicies"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[LRSchemaLRWindow endTimeInNs](self, "endTimeInNs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"endTimeInNs"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[LRSchemaLRWindow startTimeInNs](self, "startTimeInNs")}];
    [dictionary setObject:v8 forKeyedSubscript:@"startTimeInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_startTimeInNs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSArray *)self->_activeRedactionPolicies hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761u * self->_endTimeInNs;
  return v7 ^ v6 ^ [(NSArray *)self->_activeRedactionPolicies hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    startTimeInNs = self->_startTimeInNs;
    if (startTimeInNs != [equalCopy startTimeInNs])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (endTimeInNs = self->_endTimeInNs, endTimeInNs == [equalCopy endTimeInNs]))
    {
      activeRedactionPolicies = [(LRSchemaLRWindow *)self activeRedactionPolicies];
      activeRedactionPolicies2 = [equalCopy activeRedactionPolicies];
      v12 = activeRedactionPolicies2;
      if ((activeRedactionPolicies != 0) != (activeRedactionPolicies2 == 0))
      {
        activeRedactionPolicies3 = [(LRSchemaLRWindow *)self activeRedactionPolicies];
        if (!activeRedactionPolicies3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = activeRedactionPolicies3;
        activeRedactionPolicies4 = [(LRSchemaLRWindow *)self activeRedactionPolicies];
        activeRedactionPolicies5 = [equalCopy activeRedactionPolicies];
        v17 = [activeRedactionPolicies4 isEqual:activeRedactionPolicies5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_activeRedactionPolicies;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (int)activeRedactionPoliciesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_activeRedactionPolicies objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addActiveRedactionPolicies:(int)policies
{
  v3 = *&policies;
  activeRedactionPolicies = self->_activeRedactionPolicies;
  if (!activeRedactionPolicies)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_activeRedactionPolicies;
    self->_activeRedactionPolicies = array;

    activeRedactionPolicies = self->_activeRedactionPolicies;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)activeRedactionPolicies addObject:v8];
}

- (void)setHasEndTimeInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end