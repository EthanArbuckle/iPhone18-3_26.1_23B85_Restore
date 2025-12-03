@interface PFAIngestionExtensionStreamStatistics
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFAIngestionExtensionStreamStatistics)initWithDictionary:(id)dictionary;
- (PFAIngestionExtensionStreamStatistics)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPostProcessingCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation PFAIngestionExtensionStreamStatistics

- (PFAIngestionExtensionStreamStatistics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PFAIngestionExtensionStreamStatistics;
  v5 = [(PFAIngestionExtensionStreamStatistics *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"streamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PFAIngestionExtensionStreamStatistics *)v5 setStreamId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"preProcessingCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAIngestionExtensionStreamStatistics setPreProcessingCount:](v5, "setPreProcessingCount:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"postProcessingCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAIngestionExtensionStreamStatistics setPostProcessingCount:](v5, "setPostProcessingCount:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PFAIngestionExtensionStreamStatistics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFAIngestionExtensionStreamStatistics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFAIngestionExtensionStreamStatistics *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAIngestionExtensionStreamStatistics postProcessingCount](self, "postProcessingCount")}];
    [dictionary setObject:v5 forKeyedSubscript:@"postProcessingCount"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAIngestionExtensionStreamStatistics preProcessingCount](self, "preProcessingCount")}];
    [dictionary setObject:v6 forKeyedSubscript:@"preProcessingCount"];
  }

  if (self->_streamId)
  {
    streamId = [(PFAIngestionExtensionStreamStatistics *)self streamId];
    dictionaryRepresentation = [streamId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"streamId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"streamId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_streamId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_preProcessingCount;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_postProcessingCount;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  streamId = [(PFAIngestionExtensionStreamStatistics *)self streamId];
  streamId2 = [equalCopy streamId];
  v7 = streamId2;
  if ((streamId != 0) == (streamId2 == 0))
  {

    goto LABEL_16;
  }

  streamId3 = [(PFAIngestionExtensionStreamStatistics *)self streamId];
  if (streamId3)
  {
    v9 = streamId3;
    streamId4 = [(PFAIngestionExtensionStreamStatistics *)self streamId];
    streamId5 = [equalCopy streamId];
    v12 = [streamId4 isEqual:streamId5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    preProcessingCount = self->_preProcessingCount;
    if (preProcessingCount == [equalCopy preProcessingCount])
    {
      has = self->_has;
      v14 = equalCopy[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    postProcessingCount = self->_postProcessingCount;
    if (postProcessingCount != [equalCopy postProcessingCount])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  streamId = [(PFAIngestionExtensionStreamStatistics *)self streamId];

  if (streamId)
  {
    streamId2 = [(PFAIngestionExtensionStreamStatistics *)self streamId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }
}

- (void)setHasPostProcessingCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PFAIngestionExtensionStreamStatistics;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PFAIngestionExtensionStreamStatistics *)self streamId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PFAIngestionExtensionStreamStatistics *)self deleteStreamId];
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