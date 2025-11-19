@interface SIRINLUEXTERNALUsoNode
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)usoElementId;
- (void)addNormalizedStringPayloads:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALUsoNode

- (void)mergeFrom:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4[16])
  {
    self->_usoElementId = v4[10];
    *&self->_has |= 1u;
  }

  stringPayload = self->_stringPayload;
  v7 = *(v5 + 4);
  if (stringPayload)
  {
    if (v7)
    {
      [(SIRICOMMONStringValue *)stringPayload mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUEXTERNALUsoNode *)self setStringPayload:?];
  }

  integerPayload = self->_integerPayload;
  v9 = *(v5 + 2);
  if (integerPayload)
  {
    if (v9)
    {
      [(SIRICOMMONInt64Value *)integerPayload mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(SIRINLUEXTERNALUsoNode *)self setIntegerPayload:?];
  }

  usoVerbElementId = self->_usoVerbElementId;
  v11 = *(v5 + 6);
  if (usoVerbElementId)
  {
    if (v11)
    {
      [(SIRICOMMONUInt32Value *)usoVerbElementId mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(SIRINLUEXTERNALUsoNode *)self setUsoVerbElementId:?];
  }

  if (*(v5 + 1))
  {
    [(SIRINLUEXTERNALUsoNode *)self setEntityLabel:?];
  }

  if (*(v5 + 7))
  {
    [(SIRINLUEXTERNALUsoNode *)self setVerbLabel:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v5 + 3);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUEXTERNALUsoNode *)self addNormalizedStringPayloads:*(*(&v18 + 1) + 8 * i), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_usoElementId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SIRICOMMONStringValue *)self->_stringPayload hash]^ v3;
  v5 = [(SIRICOMMONInt64Value *)self->_integerPayload hash];
  v6 = v4 ^ v5 ^ [(SIRICOMMONUInt32Value *)self->_usoVerbElementId hash];
  v7 = [(NSString *)self->_entityLabel hash];
  v8 = v7 ^ [(NSString *)self->_verbLabel hash];
  return v6 ^ v8 ^ [(NSMutableArray *)self->_normalizedStringPayloads hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_usoElementId != *(v4 + 10))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  stringPayload = self->_stringPayload;
  if (stringPayload | *(v4 + 4) && ![(SIRICOMMONStringValue *)stringPayload isEqual:?])
  {
    goto LABEL_19;
  }

  integerPayload = self->_integerPayload;
  if (integerPayload | *(v4 + 2))
  {
    if (![(SIRICOMMONInt64Value *)integerPayload isEqual:?])
    {
      goto LABEL_19;
    }
  }

  usoVerbElementId = self->_usoVerbElementId;
  if (usoVerbElementId | *(v4 + 6))
  {
    if (![(SIRICOMMONUInt32Value *)usoVerbElementId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  entityLabel = self->_entityLabel;
  if (entityLabel | *(v4 + 1))
  {
    if (![(NSString *)entityLabel isEqual:?])
    {
      goto LABEL_19;
    }
  }

  verbLabel = self->_verbLabel;
  if (verbLabel | *(v4 + 7))
  {
    if (![(NSString *)verbLabel isEqual:?])
    {
      goto LABEL_19;
    }
  }

  normalizedStringPayloads = self->_normalizedStringPayloads;
  if (normalizedStringPayloads | *(v4 + 3))
  {
    v12 = [(NSMutableArray *)normalizedStringPayloads isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_usoElementId;
    *(v5 + 64) |= 1u;
  }

  v7 = [(SIRICOMMONStringValue *)self->_stringPayload copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(SIRICOMMONInt64Value *)self->_integerPayload copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(SIRICOMMONUInt32Value *)self->_usoVerbElementId copyWithZone:a3];
  v12 = v6[6];
  v6[6] = v11;

  v13 = [(NSString *)self->_entityLabel copyWithZone:a3];
  v14 = v6[1];
  v6[1] = v13;

  v15 = [(NSString *)self->_verbLabel copyWithZone:a3];
  v16 = v6[7];
  v6[7] = v15;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = self->_normalizedStringPayloads;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v25 + 1) + 8 * v21) copyWithZone:{a3, v25}];
        [v6 addNormalizedStringPayloads:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[10] = self->_usoElementId;
    *(v4 + 64) |= 1u;
  }

  v9 = v4;
  if (self->_stringPayload)
  {
    [v4 setStringPayload:?];
  }

  if (self->_integerPayload)
  {
    [v9 setIntegerPayload:?];
  }

  if (self->_usoVerbElementId)
  {
    [v9 setUsoVerbElementId:?];
  }

  if (self->_entityLabel)
  {
    [v9 setEntityLabel:?];
  }

  if (self->_verbLabel)
  {
    [v9 setVerbLabel:?];
  }

  if ([(SIRINLUEXTERNALUsoNode *)self normalizedStringPayloadsCount])
  {
    [v9 clearNormalizedStringPayloads];
    v5 = [(SIRINLUEXTERNALUsoNode *)self normalizedStringPayloadsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUEXTERNALUsoNode *)self normalizedStringPayloadsAtIndex:i];
        [v9 addNormalizedStringPayloads:v8];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    usoElementId = self->_usoElementId;
    PBDataWriterWriteUint32Field();
  }

  if (self->_stringPayload)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_integerPayload)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_usoVerbElementId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_entityLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_verbLabel)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_normalizedStringPayloads;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_usoElementId];
    [v3 setObject:v4 forKey:@"uso_element_id"];
  }

  stringPayload = self->_stringPayload;
  if (stringPayload)
  {
    v6 = [(SIRICOMMONStringValue *)stringPayload dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"string_payload"];
  }

  integerPayload = self->_integerPayload;
  if (integerPayload)
  {
    v8 = [(SIRICOMMONInt64Value *)integerPayload dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"integer_payload"];
  }

  usoVerbElementId = self->_usoVerbElementId;
  if (usoVerbElementId)
  {
    v10 = [(SIRICOMMONUInt32Value *)usoVerbElementId dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"uso_verb_element_id"];
  }

  entityLabel = self->_entityLabel;
  if (entityLabel)
  {
    [v3 setObject:entityLabel forKey:@"entity_label"];
  }

  verbLabel = self->_verbLabel;
  if (verbLabel)
  {
    [v3 setObject:verbLabel forKey:@"verb_label"];
  }

  normalizedStringPayloads = self->_normalizedStringPayloads;
  if (normalizedStringPayloads)
  {
    [v3 setObject:normalizedStringPayloads forKey:@"normalized_string_payloads"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUsoNode;
  v4 = [(SIRINLUEXTERNALUsoNode *)&v8 description];
  v5 = [(SIRINLUEXTERNALUsoNode *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addNormalizedStringPayloads:(id)a3
{
  v4 = a3;
  normalizedStringPayloads = self->_normalizedStringPayloads;
  v8 = v4;
  if (!normalizedStringPayloads)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_normalizedStringPayloads;
    self->_normalizedStringPayloads = v6;

    v4 = v8;
    normalizedStringPayloads = self->_normalizedStringPayloads;
  }

  [(NSMutableArray *)normalizedStringPayloads addObject:v4];
}

- (unsigned)usoElementId
{
  if (*&self->_has)
  {
    return self->_usoElementId;
  }

  else
  {
    return 0;
  }
}

@end