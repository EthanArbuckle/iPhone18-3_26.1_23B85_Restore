@interface PFAIngestionExtensionStreamStatistics
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PFAIngestionExtensionStreamStatistics)initWithDictionary:(id)a3;
- (PFAIngestionExtensionStreamStatistics)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPostProcessingCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PFAIngestionExtensionStreamStatistics

- (PFAIngestionExtensionStreamStatistics)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PFAIngestionExtensionStreamStatistics;
  v5 = [(PFAIngestionExtensionStreamStatistics *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"streamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PFAIngestionExtensionStreamStatistics *)v5 setStreamId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"preProcessingCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAIngestionExtensionStreamStatistics setPreProcessingCount:](v5, "setPreProcessingCount:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"postProcessingCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAIngestionExtensionStreamStatistics setPostProcessingCount:](v5, "setPostProcessingCount:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PFAIngestionExtensionStreamStatistics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PFAIngestionExtensionStreamStatistics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PFAIngestionExtensionStreamStatistics *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAIngestionExtensionStreamStatistics postProcessingCount](self, "postProcessingCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"postProcessingCount"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAIngestionExtensionStreamStatistics preProcessingCount](self, "preProcessingCount")}];
    [v3 setObject:v6 forKeyedSubscript:@"preProcessingCount"];
  }

  if (self->_streamId)
  {
    v7 = [(PFAIngestionExtensionStreamStatistics *)self streamId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"streamId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"streamId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(PFAIngestionExtensionStreamStatistics *)self streamId];
  v6 = [v4 streamId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(PFAIngestionExtensionStreamStatistics *)self streamId];
  if (v8)
  {
    v9 = v8;
    v10 = [(PFAIngestionExtensionStreamStatistics *)self streamId];
    v11 = [v4 streamId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    preProcessingCount = self->_preProcessingCount;
    if (preProcessingCount == [v4 preProcessingCount])
    {
      has = self->_has;
      v14 = v4[24];
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
    if (postProcessingCount != [v4 postProcessingCount])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(PFAIngestionExtensionStreamStatistics *)self streamId];

  if (v4)
  {
    v5 = [(PFAIngestionExtensionStreamStatistics *)self streamId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = v8;
  }
}

- (void)setHasPostProcessingCount:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = PFAIngestionExtensionStreamStatistics;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PFAIngestionExtensionStreamStatistics *)self streamId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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