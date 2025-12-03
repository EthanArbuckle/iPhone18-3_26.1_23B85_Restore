@interface SIRINLUINTERNALComponentOverride
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOverrideNamespace:(id)namespace;
- (int)overrideNamespace;
- (unint64_t)hash;
- (void)addNluRequestRules:(id)rules;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEnabled:(BOOL)enabled;
- (void)setHasOverrideNamespace:(BOOL)namespace;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALComponentOverride

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(SIRINLUINTERNALComponentOverride *)self setIdA:?];
  }

  v5 = *(fromCopy + 60);
  if ((v5 & 2) != 0)
  {
    self->_overrideNamespace = *(fromCopy + 8);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 60);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 60) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_enabled = *(fromCopy + 56);
  *&self->_has |= 4u;
  if (*(fromCopy + 60))
  {
LABEL_6:
    self->_creationTimestampMsSinceUnixEpoch = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_7:
  value = self->_value;
  v7 = *(fromCopy + 6);
  if (value)
  {
    if (v7)
    {
      [(SIRINLUINTERNALOverrideValue *)value mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUINTERNALComponentOverride *)self setValue:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(fromCopy + 3);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SIRINLUINTERNALComponentOverride *)self addNluRequestRules:*(*(&v14 + 1) + 8 * i), v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  if (*(fromCopy + 5))
  {
    [(SIRINLUINTERNALComponentOverride *)self setSerializedValue:?];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_idA hash];
  if ((*&self->_has & 2) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = 2654435761 * self->_overrideNamespace;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_enabled;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761u * self->_creationTimestampMsSinceUnixEpoch;
LABEL_8:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(SIRINLUINTERNALOverrideValue *)self->_value hash];
  v8 = [(NSMutableArray *)self->_nluRequestRules hash];
  return v7 ^ v8 ^ [(NSData *)self->_serializedValue hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  idA = self->_idA;
  if (idA | *(equalCopy + 2))
  {
    if (![(NSString *)idA isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v6 = *(equalCopy + 60);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_overrideNamespace != *(equalCopy + 8))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 60) & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  if ((*(equalCopy + 60) & 4) == 0)
  {
    goto LABEL_27;
  }

  v7 = *(equalCopy + 56);
  if (self->_enabled)
  {
    if ((*(equalCopy + 56) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_27;
  }

LABEL_11:
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_creationTimestampMsSinceUnixEpoch != *(equalCopy + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_27;
  }

  value = self->_value;
  if (value | *(equalCopy + 6) && ![(SIRINLUINTERNALOverrideValue *)value isEqual:?])
  {
    goto LABEL_27;
  }

  nluRequestRules = self->_nluRequestRules;
  if (nluRequestRules | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)nluRequestRules isEqual:?])
    {
      goto LABEL_27;
    }
  }

  serializedValue = self->_serializedValue;
  if (serializedValue | *(equalCopy + 5))
  {
    v11 = [(NSData *)serializedValue isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_28:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_idA copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_overrideNamespace;
    *(v5 + 60) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = self->_enabled;
  *(v5 + 60) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_creationTimestampMsSinceUnixEpoch;
    *(v5 + 60) |= 1u;
  }

LABEL_5:
  v9 = [(SIRINLUINTERNALOverrideValue *)self->_value copyWithZone:zone];
  v10 = *(v5 + 48);
  *(v5 + 48) = v9;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_nluRequestRules;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v21 + 1) + 8 * i) copyWithZone:{zone, v21}];
        [v5 addNluRequestRules:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v17 = [(NSData *)self->_serializedValue copyWithZone:zone];
  v18 = *(v5 + 40);
  *(v5 + 40) = v17;

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_idA)
  {
    [toCopy setIdA:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_overrideNamespace;
    *(toCopy + 60) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 56) = self->_enabled;
  *(toCopy + 60) |= 4u;
  if (*&self->_has)
  {
LABEL_6:
    *(toCopy + 1) = self->_creationTimestampMsSinceUnixEpoch;
    *(toCopy + 60) |= 1u;
  }

LABEL_7:
  if (self->_value)
  {
    [v10 setValue:?];
  }

  if ([(SIRINLUINTERNALComponentOverride *)self nluRequestRulesCount])
  {
    [v10 clearNluRequestRules];
    nluRequestRulesCount = [(SIRINLUINTERNALComponentOverride *)self nluRequestRulesCount];
    if (nluRequestRulesCount)
    {
      v7 = nluRequestRulesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SIRINLUINTERNALComponentOverride *)self nluRequestRulesAtIndex:i];
        [v10 addNluRequestRules:v9];
      }
    }
  }

  if (self->_serializedValue)
  {
    [v10 setSerializedValue:?];
  }
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_idA)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    overrideNamespace = self->_overrideNamespace;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  enabled = self->_enabled;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
LABEL_6:
    creationTimestampMsSinceUnixEpoch = self->_creationTimestampMsSinceUnixEpoch;
    PBDataWriterWriteUint64Field();
  }

LABEL_7:
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_nluRequestRules;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if (self->_serializedValue)
  {
    PBDataWriterWriteDataField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  idA = self->_idA;
  if (idA)
  {
    [dictionary setObject:idA forKey:@"id_a"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    overrideNamespace = self->_overrideNamespace;
    if (overrideNamespace >= 7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_overrideNamespace];
    }

    else
    {
      v8 = off_1E83281A0[overrideNamespace];
    }

    [v4 setObject:v8 forKey:@"override_namespace"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
    [v4 setObject:v9 forKey:@"enabled"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_creationTimestampMsSinceUnixEpoch];
    [v4 setObject:v10 forKey:@"creation_timestamp_ms_since_unix_epoch"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALOverrideValue *)value dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"value"];
  }

  if ([(NSMutableArray *)self->_nluRequestRules count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_nluRequestRules, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = self->_nluRequestRules;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"nlu_request_rules"];
  }

  serializedValue = self->_serializedValue;
  if (serializedValue)
  {
    [v4 setObject:serializedValue forKey:@"serialized_value"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALComponentOverride;
  v4 = [(SIRINLUINTERNALComponentOverride *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALComponentOverride *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addNluRequestRules:(id)rules
{
  rulesCopy = rules;
  nluRequestRules = self->_nluRequestRules;
  v8 = rulesCopy;
  if (!nluRequestRules)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nluRequestRules;
    self->_nluRequestRules = v6;

    rulesCopy = v8;
    nluRequestRules = self->_nluRequestRules;
  }

  [(NSMutableArray *)nluRequestRules addObject:rulesCopy];
}

- (void)setHasEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsOverrideNamespace:(id)namespace
{
  namespaceCopy = namespace;
  if ([namespaceCopy isEqualToString:@"OVERRIDE_NAMESPACE_UNSPECIFIED"])
  {
    v4 = 0;
  }

  else if ([namespaceCopy isEqualToString:@"OVERRIDE_NAMESPACE_NLX"])
  {
    v4 = 1;
  }

  else if ([namespaceCopy isEqualToString:@"OVERRIDE_NAMESPACE_CCQR"])
  {
    v4 = 2;
  }

  else if ([namespaceCopy isEqualToString:@"OVERRIDE_NAMESPACE_MDS_UAAP"])
  {
    v4 = 3;
  }

  else if ([namespaceCopy isEqualToString:@"OVERRIDE_NAMESPACE_LVC"])
  {
    v4 = 4;
  }

  else if ([namespaceCopy isEqualToString:@"OVERRIDE_NAMESPACE_NLv4"])
  {
    v4 = 5;
  }

  else if ([namespaceCopy isEqualToString:@"OVERRIDE_NAMESPACE_PLANNER"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasOverrideNamespace:(BOOL)namespace
{
  if (namespace)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)overrideNamespace
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_overrideNamespace;
  }

  else
  {
    return 0;
  }
}

@end