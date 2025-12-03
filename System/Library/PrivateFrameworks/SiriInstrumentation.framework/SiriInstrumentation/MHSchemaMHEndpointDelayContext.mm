@interface MHSchemaMHEndpointDelayContext
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHEndpointDelayContext)initWithDictionary:(id)dictionary;
- (MHSchemaMHEndpointDelayContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEndpointDelayInNs:(BOOL)ns;
- (void)setHasEndpointDelayInNsV2:(BOOL)v2;
- (void)setHasEndpointModelDelayInNs:(BOOL)ns;
- (void)setHasSpeakingEndInNs:(BOOL)ns;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHEndpointDelayContext

- (MHSchemaMHEndpointDelayContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MHSchemaMHEndpointDelayContext;
  v5 = [(MHSchemaMHEndpointDelayContext *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"speakingStartInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDelayContext setSpeakingStartInNs:](v5, "setSpeakingStartInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"speakingEndInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDelayContext setSpeakingEndInNs:](v5, "setSpeakingEndInNs:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"endpointDelayInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDelayContext setEndpointDelayInNs:](v5, "setEndpointDelayInNs:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"endpointModelDelayInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDelayContext setEndpointModelDelayInNs:](v5, "setEndpointModelDelayInNs:", [v9 unsignedLongLongValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"endpointDelayInNsV2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDelayContext setEndpointDelayInNsV2:](v5, "setEndpointDelayInNsV2:", [v10 unsignedLongLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (MHSchemaMHEndpointDelayContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHEndpointDelayContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHEndpointDelayContext *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDelayContext endpointDelayInNs](self, "endpointDelayInNs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"endpointDelayInNs"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDelayContext endpointDelayInNsV2](self, "endpointDelayInNsV2")}];
  [dictionary setObject:v8 forKeyedSubscript:@"endpointDelayInNsV2"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDelayContext endpointModelDelayInNs](self, "endpointModelDelayInNs")}];
  [dictionary setObject:v9 forKeyedSubscript:@"endpointModelDelayInNs"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDelayContext speakingEndInNs](self, "speakingEndInNs")}];
  [dictionary setObject:v10 forKeyedSubscript:@"speakingEndInNs"];

  if (*&self->_has)
  {
LABEL_6:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDelayContext speakingStartInNs](self, "speakingStartInNs")}];
    [dictionary setObject:v5 forKeyedSubscript:@"speakingStartInNs"];
  }

LABEL_7:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_speakingStartInNs;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_speakingEndInNs;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_endpointDelayInNs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761u * self->_endpointModelDelayInNs;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761u * self->_endpointDelayInNsV2;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = equalCopy[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    speakingStartInNs = self->_speakingStartInNs;
    if (speakingStartInNs != [equalCopy speakingStartInNs])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    speakingEndInNs = self->_speakingEndInNs;
    if (speakingEndInNs != [equalCopy speakingEndInNs])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[48];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    endpointDelayInNs = self->_endpointDelayInNs;
    if (endpointDelayInNs != [equalCopy endpointDelayInNs])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[48];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    endpointModelDelayInNs = self->_endpointModelDelayInNs;
    if (endpointModelDelayInNs == [equalCopy endpointModelDelayInNs])
    {
      has = self->_has;
      v6 = equalCopy[48];
      goto LABEL_18;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    endpointDelayInNsV2 = self->_endpointDelayInNsV2;
    if (endpointDelayInNsV2 != [equalCopy endpointDelayInNsV2])
    {
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteUint64Field();
  }

LABEL_7:
}

- (void)setHasEndpointDelayInNsV2:(BOOL)v2
{
  if (v2)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasEndpointModelDelayInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEndpointDelayInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSpeakingEndInNs:(BOOL)ns
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