@interface PEGASUSSchemaPEGASUSAudioUnderstandingTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioUnderstandingTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSAudioUnderstandingTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSAudioUnderstandingTier1

- (PEGASUSSchemaPEGASUSAudioUnderstandingTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PEGASUSSchemaPEGASUSAudioUnderstandingTier1;
  v5 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioArtist"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)v5 setAudioArtist:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"audioAppName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)v5 setAudioAppName:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioEntity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)v5 setAudioEntity:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"audioEntityOriginalValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)v5 setAudioEntityOriginalValue:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioUnderstandingTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self dictionaryRepresentation];
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
  if (self->_audioAppName)
  {
    audioAppName = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioAppName];
    v5 = [audioAppName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"audioAppName"];
  }

  if (self->_audioArtist)
  {
    audioArtist = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioArtist];
    v7 = [audioArtist copy];
    [dictionary setObject:v7 forKeyedSubscript:@"audioArtist"];
  }

  if (self->_audioEntity)
  {
    audioEntity = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntity];
    v9 = [audioEntity copy];
    [dictionary setObject:v9 forKeyedSubscript:@"audioEntity"];
  }

  if (self->_audioEntityOriginalValue)
  {
    audioEntityOriginalValue = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntityOriginalValue];
    v11 = [audioEntityOriginalValue copy];
    [dictionary setObject:v11 forKeyedSubscript:@"audioEntityOriginalValue"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_audioArtist hash];
  v4 = [(NSString *)self->_audioAppName hash]^ v3;
  v5 = [(NSString *)self->_audioEntity hash];
  return v4 ^ v5 ^ [(NSString *)self->_audioEntityOriginalValue hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  audioArtist = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioArtist];
  audioArtist2 = [equalCopy audioArtist];
  if ((audioArtist != 0) == (audioArtist2 == 0))
  {
    goto LABEL_21;
  }

  audioArtist3 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioArtist];
  if (audioArtist3)
  {
    v8 = audioArtist3;
    audioArtist4 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioArtist];
    audioArtist5 = [equalCopy audioArtist];
    v11 = [audioArtist4 isEqual:audioArtist5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  audioArtist = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioAppName];
  audioArtist2 = [equalCopy audioAppName];
  if ((audioArtist != 0) == (audioArtist2 == 0))
  {
    goto LABEL_21;
  }

  audioAppName = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioAppName];
  if (audioAppName)
  {
    v13 = audioAppName;
    audioAppName2 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioAppName];
    audioAppName3 = [equalCopy audioAppName];
    v16 = [audioAppName2 isEqual:audioAppName3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  audioArtist = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntity];
  audioArtist2 = [equalCopy audioEntity];
  if ((audioArtist != 0) == (audioArtist2 == 0))
  {
    goto LABEL_21;
  }

  audioEntity = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntity];
  if (audioEntity)
  {
    v18 = audioEntity;
    audioEntity2 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntity];
    audioEntity3 = [equalCopy audioEntity];
    v21 = [audioEntity2 isEqual:audioEntity3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  audioArtist = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntityOriginalValue];
  audioArtist2 = [equalCopy audioEntityOriginalValue];
  if ((audioArtist != 0) != (audioArtist2 == 0))
  {
    audioEntityOriginalValue = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntityOriginalValue];
    if (!audioEntityOriginalValue)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = audioEntityOriginalValue;
    audioEntityOriginalValue2 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntityOriginalValue];
    audioEntityOriginalValue3 = [equalCopy audioEntityOriginalValue];
    v26 = [audioEntityOriginalValue2 isEqual:audioEntityOriginalValue3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  audioArtist = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioArtist];

  if (audioArtist)
  {
    PBDataWriterWriteStringField();
  }

  audioAppName = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioAppName];

  if (audioAppName)
  {
    PBDataWriterWriteStringField();
  }

  audioEntity = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntity];

  if (audioEntity)
  {
    PBDataWriterWriteStringField();
  }

  audioEntityOriginalValue = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntityOriginalValue];

  v8 = toCopy;
  if (audioEntityOriginalValue)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSAudioUnderstandingTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioAppName];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntity];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntityOriginalValue];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioAppName];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntity];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntityOriginalValue];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioAppName];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntity];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntityOriginalValue];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioAppName];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntity];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntityOriginalValue];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioAppName];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntity];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntityOriginalValue];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end