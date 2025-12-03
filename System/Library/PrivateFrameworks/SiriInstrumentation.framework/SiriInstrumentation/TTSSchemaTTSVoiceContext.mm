@interface TTSSchemaTTSVoiceContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTSSchemaTTSVoiceContext)initWithDictionary:(id)dictionary;
- (TTSSchemaTTSVoiceContext)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasResourceVersion:(BOOL)version;
- (void)setHasVoiceFootprint:(BOOL)footprint;
- (void)setHasVoiceName:(BOOL)name;
- (void)setHasVoiceVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation TTSSchemaTTSVoiceContext

- (TTSSchemaTTSVoiceContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = TTSSchemaTTSVoiceContext;
  v5 = [(TTSSchemaTTSVoiceContext *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSVoiceContext setVoiceType:](v5, "setVoiceType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"voiceFootprint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSVoiceContext setVoiceFootprint:](v5, "setVoiceFootprint:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"voiceVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSVoiceContext setVoiceVersion:](v5, "setVoiceVersion:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"resourceVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSVoiceContext setResourceVersion:](v5, "setResourceVersion:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"voiceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSVoiceContext setVoiceName:](v5, "setVoiceName:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (TTSSchemaTTSVoiceContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTSSchemaTTSVoiceContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTSSchemaTTSVoiceContext *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[TTSSchemaTTSVoiceContext resourceVersion](self, "resourceVersion")}];
    [dictionary setObject:v7 forKeyedSubscript:@"resourceVersion"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [(TTSSchemaTTSVoiceContext *)self voiceFootprint]- 1;
  if (v8 > 3)
  {
    v9 = @"UNKNOWN";
  }

  else
  {
    v9 = off_1E78E8260[v8];
  }

  [dictionary setObject:v9 forKeyedSubscript:@"voiceFootprint"];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_15:
  v10 = [(TTSSchemaTTSVoiceContext *)self voiceName]- 1;
  if (v10 > 0x68)
  {
    v11 = @"VOICENAME_UNKNOWN";
  }

  else
  {
    v11 = off_1E78E8280[v10];
  }

  [dictionary setObject:v11 forKeyedSubscript:@"voiceName"];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  v12 = [(TTSSchemaTTSVoiceContext *)self voiceType]- 1;
  if (v12 > 4)
  {
    v13 = @"UNKNOWN";
  }

  else
  {
    v13 = off_1E78E85C8[v12];
  }

  [dictionary setObject:v13 forKeyedSubscript:@"voiceType"];
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[TTSSchemaTTSVoiceContext voiceVersion](self, "voiceVersion")}];
  [dictionary setObject:v5 forKeyedSubscript:@"voiceVersion"];

LABEL_7:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_voiceType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_voiceFootprint;
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
    v4 = 2654435761 * self->_voiceVersion;
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
  v5 = 2654435761 * self->_resourceVersion;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_voiceName;
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
  v6 = equalCopy[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    voiceType = self->_voiceType;
    if (voiceType != [equalCopy voiceType])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    voiceFootprint = self->_voiceFootprint;
    if (voiceFootprint != [equalCopy voiceFootprint])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    voiceVersion = self->_voiceVersion;
    if (voiceVersion != [equalCopy voiceVersion])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    resourceVersion = self->_resourceVersion;
    if (resourceVersion == [equalCopy resourceVersion])
    {
      has = self->_has;
      v6 = equalCopy[28];
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
    voiceName = self->_voiceName;
    if (voiceName != [equalCopy voiceName])
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
    PBDataWriterWriteInt32Field();
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

  PBDataWriterWriteInt32Field();
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
  PBDataWriterWriteUint32Field();
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
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
}

- (void)setHasVoiceName:(BOOL)name
{
  if (name)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasResourceVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasVoiceVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasVoiceFootprint:(BOOL)footprint
{
  if (footprint)
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