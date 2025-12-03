@interface PEGASUSSchemaPEGASUSAudioUnderstanding
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioUnderstanding)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSAudioUnderstanding)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)audioAttributesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addAudioAttributes:(int)attributes;
- (void)setHasAudioDecade:(BOOL)decade;
- (void)setHasRequestedMediaType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSAudioUnderstanding

- (PEGASUSSchemaPEGASUSAudioUnderstanding)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = PEGASUSSchemaPEGASUSAudioUnderstanding;
  v5 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioVerb"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioUnderstanding setAudioVerb:](v5, "setAudioVerb:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"requestedMediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioUnderstanding setRequestedMediaType:](v5, "setRequestedMediaType:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"audioAttributes"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:@"audioDecade"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioUnderstanding setAudioDecade:](v5, "setAudioDecade:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioUnderstanding)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_audioAttributes count])
  {
    audioAttributes = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self audioAttributes];
    v5 = [audioAttributes copy];
    [dictionary setObject:v5 forKeyedSubscript:@"audioAttributes"];
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

    [dictionary setObject:v10 forKeyedSubscript:@"audioVerb"];
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

  [dictionary setObject:v8 forKeyedSubscript:@"audioDecade"];
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

    [dictionary setObject:v12 forKeyedSubscript:@"requestedMediaType"];
  }

LABEL_19:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = equalCopy[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    audioVerb = self->_audioVerb;
    if (audioVerb != [equalCopy audioVerb])
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    requestedMediaType = self->_requestedMediaType;
    if (requestedMediaType != [equalCopy requestedMediaType])
    {
      goto LABEL_19;
    }
  }

  audioAttributes = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self audioAttributes];
  audioAttributes2 = [equalCopy audioAttributes];
  v12 = audioAttributes2;
  if ((audioAttributes != 0) == (audioAttributes2 == 0))
  {

    goto LABEL_19;
  }

  audioAttributes3 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self audioAttributes];
  if (audioAttributes3)
  {
    v14 = audioAttributes3;
    audioAttributes4 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self audioAttributes];
    audioAttributes5 = [equalCopy audioAttributes];
    v17 = [audioAttributes4 isEqual:audioAttributes5];

    if (!v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v18 = (*&self->_has >> 2) & 1;
  if (v18 != ((equalCopy[28] >> 2) & 1))
  {
    goto LABEL_19;
  }

  if (v18)
  {
    audioDecade = self->_audioDecade;
    if (audioDecade != [equalCopy audioDecade])
    {
      goto LABEL_19;
    }
  }

  v20 = 1;
LABEL_20:

  return v20;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)setHasAudioDecade:(BOOL)decade
{
  if (decade)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)audioAttributesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_audioAttributes objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addAudioAttributes:(int)attributes
{
  v3 = *&attributes;
  audioAttributes = self->_audioAttributes;
  if (!audioAttributes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioAttributes;
    self->_audioAttributes = array;

    audioAttributes = self->_audioAttributes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)audioAttributes addObject:v8];
}

- (void)setHasRequestedMediaType:(BOOL)type
{
  if (type)
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