@interface FLOWSchemaFLOWHomeAutomationRequestMetadata
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWHomeAutomationRequestMetadata)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWHomeAutomationRequestMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTargetedEntityTypes:(id)types;
- (void)setHasConditionType:(BOOL)type;
- (void)setHasFulfilledEntityCount:(BOOL)count;
- (void)setHasIsIntentSelectionCacheHit:(BOOL)hit;
- (void)setHasIsRecurring:(BOOL)recurring;
- (void)setHasSmallestTargetedContainer:(BOOL)container;
- (void)setHasTargetedEntityCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWHomeAutomationRequestMetadata

- (FLOWSchemaFLOWHomeAutomationRequestMetadata)initWithDictionary:(id)dictionary
{
  v34 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = FLOWSchemaFLOWHomeAutomationRequestMetadata;
  v5 = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isHomeAutomationRequestAsynchronous"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequestMetadata setIsHomeAutomationRequestAsynchronous:](v5, "setIsHomeAutomationRequestAsynchronous:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"targetedEntityCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequestMetadata setTargetedEntityCount:](v5, "setTargetedEntityCount:", [v7 unsignedIntValue]);
    }

    v27 = v7;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"fulfilledEntityCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequestMetadata setFulfilledEntityCount:](v5, "setFulfilledEntityCount:", [v8 unsignedIntValue]);
    }

    v26 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"targetedEntityTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v6;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        do
        {
          v14 = 0;
          do
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v28 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v15 copy];
              [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)v5 addTargetedEntityTypes:v16];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v12);
      }

      v6 = v25;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"smallestTargetedContainer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequestMetadata setSmallestTargetedContainer:](v5, "setSmallestTargetedContainer:", [v17 intValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"targetAttribute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)v5 setTargetAttribute:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"conditionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequestMetadata setConditionType:](v5, "setConditionType:", [v20 intValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"isRecurring"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequestMetadata setIsRecurring:](v5, "setIsRecurring:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"isIntentSelectionCacheHit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequestMetadata setIsIntentSelectionCacheHit:](v5, "setIsIntentSelectionCacheHit:", [v22 BOOLValue]);
    }

    v23 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWHomeAutomationRequestMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self dictionaryRepresentation];
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
  v4 = *(&self->_isIntentSelectionCacheHit + 1);
  if ((v4 & 0x10) != 0)
  {
    v5 = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self conditionType]- 1;
    if (v5 > 4)
    {
      v6 = @"FLOWHOMEAUTOMATIONCONDITIONTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D51E8[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"conditionType"];
    v4 = *(&self->_isIntentSelectionCacheHit + 1);
  }

  if ((v4 & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWHomeAutomationRequestMetadata fulfilledEntityCount](self, "fulfilledEntityCount")}];
    [dictionary setObject:v7 forKeyedSubscript:@"fulfilledEntityCount"];

    v4 = *(&self->_isIntentSelectionCacheHit + 1);
    if ((v4 & 1) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWHomeAutomationRequestMetadata isHomeAutomationRequestAsynchronous](self, "isHomeAutomationRequestAsynchronous")}];
  [dictionary setObject:v8 forKeyedSubscript:@"isHomeAutomationRequestAsynchronous"];

  v4 = *(&self->_isIntentSelectionCacheHit + 1);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWHomeAutomationRequestMetadata isIntentSelectionCacheHit](self, "isIntentSelectionCacheHit")}];
  [dictionary setObject:v9 forKeyedSubscript:@"isIntentSelectionCacheHit"];

  v4 = *(&self->_isIntentSelectionCacheHit + 1);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWHomeAutomationRequestMetadata isRecurring](self, "isRecurring")}];
  [dictionary setObject:v10 forKeyedSubscript:@"isRecurring"];

  if ((*(&self->_isIntentSelectionCacheHit + 1) & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v11 = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self smallestTargetedContainer]- 1;
  if (v11 > 3)
  {
    v12 = @"FLOWHOMECONTAINERTYPE_UNKNOWN";
  }

  else
  {
    v12 = off_1E78D5210[v11];
  }

  [dictionary setObject:v12 forKeyedSubscript:@"smallestTargetedContainer"];
LABEL_20:
  if (self->_targetAttribute)
  {
    targetAttribute = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self targetAttribute];
    v14 = [targetAttribute copy];
    [dictionary setObject:v14 forKeyedSubscript:@"targetAttribute"];
  }

  if ((*(&self->_isIntentSelectionCacheHit + 1) & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWHomeAutomationRequestMetadata targetedEntityCount](self, "targetedEntityCount")}];
    [dictionary setObject:v15 forKeyedSubscript:@"targetedEntityCount"];
  }

  if (self->_targetedEntityTypes)
  {
    targetedEntityTypes = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self targetedEntityTypes];
    v17 = [targetedEntityTypes copy];
    [dictionary setObject:v17 forKeyedSubscript:@"targetedEntityTypes"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (!*(&self->_isIntentSelectionCacheHit + 1))
  {
    v3 = 0;
    if ((*(&self->_isIntentSelectionCacheHit + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*(&self->_isIntentSelectionCacheHit + 1) & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_isHomeAutomationRequestAsynchronous;
  if ((*(&self->_isIntentSelectionCacheHit + 1) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_targetedEntityCount;
  if ((*(&self->_isIntentSelectionCacheHit + 1) & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_fulfilledEntityCount;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSArray *)self->_targetedEntityTypes hash];
  if ((*(&self->_isIntentSelectionCacheHit + 1) & 8) != 0)
  {
    v7 = 2654435761 * self->_smallestTargetedContainer;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_targetAttribute hash];
  if ((*(&self->_isIntentSelectionCacheHit + 1) & 0x10) == 0)
  {
    v9 = 0;
    if ((*(&self->_isIntentSelectionCacheHit + 1) & 0x20) != 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v10 = 0;
    if ((*(&self->_isIntentSelectionCacheHit + 1) & 0x40) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11;
  }

  v9 = 2654435761 * self->_conditionType;
  if ((*(&self->_isIntentSelectionCacheHit + 1) & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v10 = 2654435761 * self->_isRecurring;
  if ((*(&self->_isIntentSelectionCacheHit + 1) & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v11 = 2654435761 * self->_isIntentSelectionCacheHit;
  return v4 ^ v3 ^ v5 ^ v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(&self->_isIntentSelectionCacheHit + 1);
  v6 = equalCopy[54];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (v5)
  {
    isHomeAutomationRequestAsynchronous = self->_isHomeAutomationRequestAsynchronous;
    if (isHomeAutomationRequestAsynchronous != [equalCopy isHomeAutomationRequestAsynchronous])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_isIntentSelectionCacheHit + 1);
    v6 = equalCopy[54];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      targetedEntityCount = self->_targetedEntityCount;
      if (targetedEntityCount != [equalCopy targetedEntityCount])
      {
        goto LABEL_26;
      }

      v5 = *(&self->_isIntentSelectionCacheHit + 1);
      v6 = equalCopy[54];
    }

    v10 = (v5 >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_26;
    }

    if (v10)
    {
      fulfilledEntityCount = self->_fulfilledEntityCount;
      if (fulfilledEntityCount != [equalCopy fulfilledEntityCount])
      {
        goto LABEL_26;
      }
    }

    targetedEntityTypes = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self targetedEntityTypes];
    targetedEntityTypes2 = [equalCopy targetedEntityTypes];
    if ((targetedEntityTypes != 0) == (targetedEntityTypes2 == 0))
    {
      goto LABEL_25;
    }

    targetedEntityTypes3 = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self targetedEntityTypes];
    if (targetedEntityTypes3)
    {
      v15 = targetedEntityTypes3;
      targetedEntityTypes4 = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self targetedEntityTypes];
      targetedEntityTypes5 = [equalCopy targetedEntityTypes];
      v18 = [targetedEntityTypes4 isEqual:targetedEntityTypes5];

      if (!v18)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v19 = (*(&self->_isIntentSelectionCacheHit + 1) >> 3) & 1;
    if (v19 != ((equalCopy[54] >> 3) & 1))
    {
      goto LABEL_26;
    }

    if (v19)
    {
      smallestTargetedContainer = self->_smallestTargetedContainer;
      if (smallestTargetedContainer != [equalCopy smallestTargetedContainer])
      {
        goto LABEL_26;
      }
    }

    targetedEntityTypes = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self targetAttribute];
    targetedEntityTypes2 = [equalCopy targetAttribute];
    if ((targetedEntityTypes != 0) == (targetedEntityTypes2 == 0))
    {
LABEL_25:

      goto LABEL_26;
    }

    targetAttribute = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self targetAttribute];
    if (targetAttribute)
    {
      v22 = targetAttribute;
      targetAttribute2 = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self targetAttribute];
      targetAttribute3 = [equalCopy targetAttribute];
      v25 = [targetAttribute2 isEqual:targetAttribute3];

      if (!v25)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v28 = *(&self->_isIntentSelectionCacheHit + 1);
    v29 = (v28 >> 4) & 1;
    v30 = equalCopy[54];
    if (v29 == ((v30 >> 4) & 1))
    {
      if (v29)
      {
        conditionType = self->_conditionType;
        if (conditionType != [equalCopy conditionType])
        {
          goto LABEL_26;
        }

        v28 = *(&self->_isIntentSelectionCacheHit + 1);
        v30 = equalCopy[54];
      }

      v32 = (v28 >> 5) & 1;
      if (v32 == ((v30 >> 5) & 1))
      {
        if (v32)
        {
          isRecurring = self->_isRecurring;
          if (isRecurring != [equalCopy isRecurring])
          {
            goto LABEL_26;
          }

          v28 = *(&self->_isIntentSelectionCacheHit + 1);
          v30 = equalCopy[54];
        }

        v34 = (v28 >> 6) & 1;
        if (v34 == ((v30 >> 6) & 1))
        {
          if (!v34 || (isIntentSelectionCacheHit = self->_isIntentSelectionCacheHit, isIntentSelectionCacheHit == [equalCopy isIntentSelectionCacheHit]))
          {
            v26 = 1;
            goto LABEL_27;
          }
        }
      }
    }
  }

LABEL_26:
  v26 = 0;
LABEL_27:

  return v26;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = *(&self->_isIntentSelectionCacheHit + 1);
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    v5 = *(&self->_isIntentSelectionCacheHit + 1);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_isIntentSelectionCacheHit + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  if ((*(&self->_isIntentSelectionCacheHit + 1) & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_targetedEntityTypes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ((*(&self->_isIntentSelectionCacheHit + 1) & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  targetAttribute = [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self targetAttribute];

  if (targetAttribute)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *(&self->_isIntentSelectionCacheHit + 1);
  if ((v12 & 0x10) == 0)
  {
    if ((*(&self->_isIntentSelectionCacheHit + 1) & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    PBDataWriterWriteBOOLField();
    if ((*(&self->_isIntentSelectionCacheHit + 1) & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  PBDataWriterWriteInt32Field();
  v12 = *(&self->_isIntentSelectionCacheHit + 1);
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  if ((v12 & 0x40) != 0)
  {
LABEL_19:
    PBDataWriterWriteBOOLField();
  }

LABEL_20:
}

- (void)setHasIsIntentSelectionCacheHit:(BOOL)hit
{
  if (hit)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIntentSelectionCacheHit + 1) = *(&self->_isIntentSelectionCacheHit + 1) & 0xBF | v3;
}

- (void)setHasIsRecurring:(BOOL)recurring
{
  if (recurring)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIntentSelectionCacheHit + 1) = *(&self->_isIntentSelectionCacheHit + 1) & 0xDF | v3;
}

- (void)setHasConditionType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIntentSelectionCacheHit + 1) = *(&self->_isIntentSelectionCacheHit + 1) & 0xEF | v3;
}

- (void)setHasSmallestTargetedContainer:(BOOL)container
{
  if (container)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIntentSelectionCacheHit + 1) = *(&self->_isIntentSelectionCacheHit + 1) & 0xF7 | v3;
}

- (void)addTargetedEntityTypes:(id)types
{
  typesCopy = types;
  targetedEntityTypes = self->_targetedEntityTypes;
  v8 = typesCopy;
  if (!targetedEntityTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_targetedEntityTypes;
    self->_targetedEntityTypes = array;

    typesCopy = v8;
    targetedEntityTypes = self->_targetedEntityTypes;
  }

  [(NSArray *)targetedEntityTypes addObject:typesCopy];
}

- (void)setHasFulfilledEntityCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIntentSelectionCacheHit + 1) = *(&self->_isIntentSelectionCacheHit + 1) & 0xFB | v3;
}

- (void)setHasTargetedEntityCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIntentSelectionCacheHit + 1) = *(&self->_isIntentSelectionCacheHit + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end