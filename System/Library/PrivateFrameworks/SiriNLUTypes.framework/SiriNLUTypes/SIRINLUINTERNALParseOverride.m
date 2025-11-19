@interface SIRINLUINTERNALParseOverride
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsParserIdentifier:(id)a3;
- (int)parserIdentifier;
- (unint64_t)hash;
- (void)addNluRequestRules:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEnabled:(BOOL)a3;
- (void)setHasParserIdentifier:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALParseOverride

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(SIRINLUINTERNALParseOverride *)self setIdA:?];
  }

  v5 = *(v4 + 60);
  if ((v5 & 4) != 0)
  {
    self->_enabled = *(v4 + 56);
    *&self->_has |= 4u;
    v5 = *(v4 + 60);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 60) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_creationTimestampMsSinceUnixEpoch = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 60) & 2) != 0)
  {
LABEL_6:
    self->_parserIdentifier = *(v4 + 10);
    *&self->_has |= 2u;
  }

LABEL_7:
  parse = self->_parse;
  v7 = *(v4 + 4);
  if (parse)
  {
    if (v7)
    {
      [(SIRINLUEXTERNALUserParse *)parse mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUINTERNALParseOverride *)self setParse:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(v4 + 3);
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

        [(SIRINLUINTERNALParseOverride *)self addNluRequestRules:*(*(&v14 + 1) + 8 * i), v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  if (*(v4 + 6))
  {
    [(SIRINLUINTERNALParseOverride *)self setSerializedParse:?];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_idA hash];
  if ((*&self->_has & 4) == 0)
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = 2654435761 * self->_enabled;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761u * self->_creationTimestampMsSinceUnixEpoch;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_parserIdentifier;
LABEL_8:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(SIRINLUEXTERNALUserParse *)self->_parse hash];
  v8 = [(NSMutableArray *)self->_nluRequestRules hash];
  return v7 ^ v8 ^ [(NSData *)self->_serializedParse hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  idA = self->_idA;
  if (idA | *(v4 + 2))
  {
    if (![(NSString *)idA isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v6 = *(v4 + 60);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 60) & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_28:
    v11 = 0;
    goto LABEL_29;
  }

  if ((*(v4 + 60) & 4) == 0)
  {
    goto LABEL_28;
  }

  v7 = *(v4 + 56);
  if (self->_enabled)
  {
    if ((*(v4 + 56) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_28;
  }

LABEL_6:
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_creationTimestampMsSinceUnixEpoch != *(v4 + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_parserIdentifier != *(v4 + 10))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_28;
  }

  parse = self->_parse;
  if (parse | *(v4 + 4) && ![(SIRINLUEXTERNALUserParse *)parse isEqual:?])
  {
    goto LABEL_28;
  }

  nluRequestRules = self->_nluRequestRules;
  if (nluRequestRules | *(v4 + 3))
  {
    if (![(NSMutableArray *)nluRequestRules isEqual:?])
    {
      goto LABEL_28;
    }
  }

  serializedParse = self->_serializedParse;
  if (serializedParse | *(v4 + 6))
  {
    v11 = [(NSData *)serializedParse isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_29:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_idA copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 56) = self->_enabled;
    *(v5 + 60) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_creationTimestampMsSinceUnixEpoch;
  *(v5 + 60) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 40) = self->_parserIdentifier;
    *(v5 + 60) |= 2u;
  }

LABEL_5:
  v9 = [(SIRINLUEXTERNALUserParse *)self->_parse copyWithZone:a3];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

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

        v16 = [*(*(&v21 + 1) + 8 * i) copyWithZone:{a3, v21}];
        [v5 addNluRequestRules:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v17 = [(NSData *)self->_serializedParse copyWithZone:a3];
  v18 = *(v5 + 48);
  *(v5 + 48) = v17;

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_idA)
  {
    [v4 setIdA:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 56) = self->_enabled;
    *(v4 + 60) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 1) = self->_creationTimestampMsSinceUnixEpoch;
  *(v4 + 60) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(v4 + 10) = self->_parserIdentifier;
    *(v4 + 60) |= 2u;
  }

LABEL_7:
  if (self->_parse)
  {
    [v10 setParse:?];
  }

  if ([(SIRINLUINTERNALParseOverride *)self nluRequestRulesCount])
  {
    [v10 clearNluRequestRules];
    v6 = [(SIRINLUINTERNALParseOverride *)self nluRequestRulesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SIRINLUINTERNALParseOverride *)self nluRequestRulesAtIndex:i];
        [v10 addNluRequestRules:v9];
      }
    }
  }

  if (self->_serializedParse)
  {
    [v10 setSerializedParse:?];
  }
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_idA)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    enabled = self->_enabled;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  creationTimestampMsSinceUnixEpoch = self->_creationTimestampMsSinceUnixEpoch;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    parserIdentifier = self->_parserIdentifier;
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
  if (self->_parse)
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

  if (self->_serializedParse)
  {
    PBDataWriterWriteDataField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  idA = self->_idA;
  if (idA)
  {
    [v3 setObject:idA forKey:@"id_a"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
    [v4 setObject:v7 forKey:@"enabled"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_creationTimestampMsSinceUnixEpoch];
  [v4 setObject:v8 forKey:@"creation_timestamp_ms_since_unix_epoch"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  parserIdentifier = self->_parserIdentifier;
  if (parserIdentifier >= 0xA)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_parserIdentifier];
  }

  else
  {
    v10 = off_1E83282B0[parserIdentifier];
  }

  [v4 setObject:v10 forKey:@"parser_identifier"];

LABEL_13:
  parse = self->_parse;
  if (parse)
  {
    v12 = [(SIRINLUEXTERNALUserParse *)parse dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"parse"];
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

          v19 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"nlu_request_rules"];
  }

  serializedParse = self->_serializedParse;
  if (serializedParse)
  {
    [v4 setObject:serializedParse forKey:@"serialized_parse"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALParseOverride;
  v4 = [(SIRINLUINTERNALParseOverride *)&v8 description];
  v5 = [(SIRINLUINTERNALParseOverride *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addNluRequestRules:(id)a3
{
  v4 = a3;
  nluRequestRules = self->_nluRequestRules;
  v8 = v4;
  if (!nluRequestRules)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nluRequestRules;
    self->_nluRequestRules = v6;

    v4 = v8;
    nluRequestRules = self->_nluRequestRules;
  }

  [(NSMutableArray *)nluRequestRules addObject:v4];
}

- (int)StringAsParserIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PARSER_IDENTIFIER_UNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PARSER_IDENTIFIER_OVERRIDES"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PARSER_IDENTIFIER_SNLC"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PARSER_IDENTIFIER_NLV4"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PARSER_IDENTIFIER_CATI"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PARSER_IDENTIFIER_SHORTCUTS_EXACT"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PARSER_IDENTIFIER_UAAP"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"PARSER_IDENTIFIER_PSC"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"PARSER_IDENTIFIER_LVC"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PARSER_IDENTIFIER_SSU"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasParserIdentifier:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)parserIdentifier
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_parserIdentifier;
  }

  else
  {
    return 1;
  }
}

- (void)setHasEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end