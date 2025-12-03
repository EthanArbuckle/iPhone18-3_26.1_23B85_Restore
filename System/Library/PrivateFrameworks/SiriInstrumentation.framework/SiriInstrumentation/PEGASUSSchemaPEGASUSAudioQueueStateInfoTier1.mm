@interface PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1

- (PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1;
  v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioQueueStateItemTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)v5 setAudioQueueStateItemTier1:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self dictionaryRepresentation];
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
  if (self->_audioQueueStateItemTier1)
  {
    audioQueueStateItemTier1 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self audioQueueStateItemTier1];
    dictionaryRepresentation = [audioQueueStateItemTier1 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioQueueStateItemTier1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioQueueStateItemTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    audioQueueStateItemTier1 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self audioQueueStateItemTier1];
    audioQueueStateItemTier12 = [equalCopy audioQueueStateItemTier1];
    v7 = audioQueueStateItemTier12;
    if ((audioQueueStateItemTier1 != 0) != (audioQueueStateItemTier12 == 0))
    {
      audioQueueStateItemTier13 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self audioQueueStateItemTier1];
      if (!audioQueueStateItemTier13)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = audioQueueStateItemTier13;
      audioQueueStateItemTier14 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self audioQueueStateItemTier1];
      audioQueueStateItemTier15 = [equalCopy audioQueueStateItemTier1];
      v12 = [audioQueueStateItemTier14 isEqual:audioQueueStateItemTier15];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  audioQueueStateItemTier1 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self audioQueueStateItemTier1];

  if (audioQueueStateItemTier1)
  {
    audioQueueStateItemTier12 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self audioQueueStateItemTier1];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self audioQueueStateItemTier1:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1 *)self deleteAudioQueueStateItemTier1];
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