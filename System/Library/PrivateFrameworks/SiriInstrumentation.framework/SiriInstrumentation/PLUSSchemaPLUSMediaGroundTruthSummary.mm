@interface PLUSSchemaPLUSMediaGroundTruthSummary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaGroundTruthSummary)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSMediaGroundTruthSummary)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasGroundTruthCount:(BOOL)count;
- (void)setHasMediaEntityCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSMediaGroundTruthSummary

- (PLUSSchemaPLUSMediaGroundTruthSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PLUSSchemaPLUSMediaGroundTruthSummary;
  v5 = [(PLUSSchemaPLUSMediaGroundTruthSummary *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaGroundTruthSummary setSource:](v5, "setSource:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"groundTruthCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaGroundTruthSummary setGroundTruthCount:](v5, "setGroundTruthCount:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"mediaEntityCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaGroundTruthSummary setMediaEntityCount:](v5, "setMediaEntityCount:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSMediaGroundTruthSummary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaGroundTruthSummary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSMediaGroundTruthSummary *)self dictionaryRepresentation];
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
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLUSSchemaPLUSMediaGroundTruthSummary mediaEntityCount](self, "mediaEntityCount")}];
    [dictionary setObject:v6 forKeyedSubscript:@"mediaEntityCount"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v7 = [(PLUSSchemaPLUSMediaGroundTruthSummary *)self source]- 1;
    if (v7 > 8)
    {
      v8 = @"PLUSMEDIAGROUNDTRUTHSOURCE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E0828[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"source"];
    goto LABEL_11;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLUSSchemaPLUSMediaGroundTruthSummary groundTruthCount](self, "groundTruthCount")}];
  [dictionary setObject:v5 forKeyedSubscript:@"groundTruthCount"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (has)
  {
    goto LABEL_7;
  }

LABEL_11:
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

  v2 = 2654435761 * self->_source;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_groundTruthCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_mediaEntityCount;
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
  v6 = equalCopy[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    source = self->_source;
    if (source != [equalCopy source])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    groundTruthCount = self->_groundTruthCount;
    if (groundTruthCount == [equalCopy groundTruthCount])
    {
      has = self->_has;
      v6 = equalCopy[20];
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
    mediaEntityCount = self->_mediaEntityCount;
    if (mediaEntityCount != [equalCopy mediaEntityCount])
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

  PBDataWriterWriteInt32Field();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasMediaEntityCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasGroundTruthCount:(BOOL)count
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end