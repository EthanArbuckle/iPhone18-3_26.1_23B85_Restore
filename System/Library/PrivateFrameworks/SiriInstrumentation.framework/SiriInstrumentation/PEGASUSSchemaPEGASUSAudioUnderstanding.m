@interface PEGASUSSchemaPEGASUSAudioUnderstanding
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioUnderstanding)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAudioUnderstanding)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)audioAttributesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addAudioAttributes:(int)a3;
- (void)setHasAudioDecade:(BOOL)a3;
- (void)setHasRequestedMediaType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAudioUnderstanding

- (PEGASUSSchemaPEGASUSAudioUnderstanding)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PEGASUSSchemaPEGASUSAudioUnderstanding;
  v5 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioVerb"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioUnderstanding setAudioVerb:](v5, "setAudioVerb:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"requestedMediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioUnderstanding setRequestedMediaType:](v5, "setRequestedMediaType:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"audioAttributes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[PEGASUSSchemaPEGASUSAudioUnderstanding addAudioAttributes:](v5, "addAudioAttributes:", [v14 intValue]);
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v11);
      }

      v6 = v18;
    }

    v15 = [v4 objectForKeyedSubscript:@"audioDecade"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioUnderstanding setAudioDecade:](v5, "setAudioDecade:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioUnderstanding)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_audioAttributes count])
  {
    v4 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self audioAttributes];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"audioAttributes"];
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v9 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self audioVerb]- 1;
    if (v9 > 9)
    {
      v10 = @"PEGASUSAUDIOVERB_UNKNOWN";
    }

    else
    {
      v10 = off_1E78DF760[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"audioVerb"];
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v7 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self audioDecade]- 1;
  if (v7 > 0xA)
  {
    v8 = @"PEGASUSAUDIODECADE_UNKNOWN";
  }

  else
  {
    v8 = off_1E78DF708[v7];
  }

  [v3 setObject:v8 forKeyedSubscript:@"audioDecade"];
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_15:
    v11 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self requestedMediaType]- 1;
    if (v11 > 0x17)
    {
      v12 = @"PEGASUSREQUESTEDMEDIATYPE_UNKNOWN";
    }

    else
    {
      v12 = off_1E78DF7B0[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"requestedMediaType"];
  }

LABEL_19:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_audioVerb;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_requestedMediaType;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSArray *)self->_audioAttributes hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_audioDecade;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = v4[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    audioVerb = self->_audioVerb;
    if (audioVerb != [v4 audioVerb])
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }

    has = self->_has;
    v6 = v4[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    requestedMediaType = self->_requestedMediaType;
    if (requestedMediaType != [v4 requestedMediaType])
    {
      goto LABEL_19;
    }
  }

  v10 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self audioAttributes];
  v11 = [v4 audioAttributes];
  v12 = v11;
  if ((v10 != 0) == (v11 == 0))
  {

    goto LABEL_19;
  }

  v13 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self audioAttributes];
  if (v13)
  {
    v14 = v13;
    v15 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self audioAttributes];
    v16 = [v4 audioAttributes];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v18 = (*&self->_has >> 2) & 1;
  if (v18 != ((v4[28] >> 2) & 1))
  {
    goto LABEL_19;
  }

  if (v18)
  {
    audioDecade = self->_audioDecade;
    if (audioDecade != [v4 audioDecade])
    {
      goto LABEL_19;
    }
  }

  v20 = 1;
LABEL_20:

  return v20;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_audioAttributes;
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

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasAudioDecade:(BOOL)a3
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

- (int)audioAttributesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_audioAttributes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addAudioAttributes:(int)a3
{
  v3 = *&a3;
  audioAttributes = self->_audioAttributes;
  if (!audioAttributes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioAttributes;
    self->_audioAttributes = v6;

    audioAttributes = self->_audioAttributes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)audioAttributes addObject:v8];
}

- (void)setHasRequestedMediaType:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end