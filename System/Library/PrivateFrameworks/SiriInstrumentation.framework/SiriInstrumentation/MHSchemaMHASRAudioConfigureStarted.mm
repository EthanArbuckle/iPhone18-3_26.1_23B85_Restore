@interface MHSchemaMHASRAudioConfigureStarted
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHASRAudioConfigureStarted)initWithDictionary:(id)dictionary;
- (MHSchemaMHASRAudioConfigureStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioSkippedNumSamples:(BOOL)samples;
- (void)setHasAudioSkippedTimeInNs:(BOOL)ns;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHASRAudioConfigureStarted

- (MHSchemaMHASRAudioConfigureStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MHSchemaMHASRAudioConfigureStarted;
  v5 = [(MHSchemaMHASRAudioConfigureStarted *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioCodec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHASRAudioConfigureStarted setAudioCodec:](v5, "setAudioCodec:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"audioSkippedTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHASRAudioConfigureStarted setAudioSkippedTimeInNs:](v5, "setAudioSkippedTimeInNs:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"audioSkippedNumSamples"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHASRAudioConfigureStarted setAudioSkippedNumSamples:](v5, "setAudioSkippedNumSamples:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (MHSchemaMHASRAudioConfigureStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHASRAudioConfigureStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHASRAudioConfigureStarted *)self dictionaryRepresentation];
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
  if (has)
  {
    v5 = [(MHSchemaMHASRAudioConfigureStarted *)self audioCodec]- 1;
    if (v5 > 0xA)
    {
      v6 = @"MHASRAUDIOCODEC_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D8E18[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"audioCodec"];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHASRAudioConfigureStarted audioSkippedNumSamples](self, "audioSkippedNumSamples")}];
    [dictionary setObject:v7 forKeyedSubscript:@"audioSkippedNumSamples"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHASRAudioConfigureStarted audioSkippedTimeInNs](self, "audioSkippedTimeInNs")}];
    [dictionary setObject:v8 forKeyedSubscript:@"audioSkippedTimeInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_audioCodec;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761u * self->_audioSkippedTimeInNs;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761u * self->_audioSkippedNumSamples;
  return v3 ^ v2 ^ v4;
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
    audioCodec = self->_audioCodec;
    if (audioCodec != [equalCopy audioCodec])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    audioSkippedTimeInNs = self->_audioSkippedTimeInNs;
    if (audioSkippedTimeInNs == [equalCopy audioSkippedTimeInNs])
    {
      has = self->_has;
      v6 = equalCopy[32];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    audioSkippedNumSamples = self->_audioSkippedNumSamples;
    if (audioSkippedNumSamples != [equalCopy audioSkippedNumSamples])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasAudioSkippedNumSamples:(BOOL)samples
{
  if (samples)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAudioSkippedTimeInNs:(BOOL)ns
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