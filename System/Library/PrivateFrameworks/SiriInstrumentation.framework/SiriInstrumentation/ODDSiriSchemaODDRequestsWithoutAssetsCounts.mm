@interface ODDSiriSchemaODDRequestsWithoutAssetsCounts
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDRequestsWithoutAssetsCounts)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDRequestsWithoutAssetsCounts)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasRequestsMissingAssetsCount:(BOOL)count;
- (void)setHasRequestsWithFailuresCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDRequestsWithoutAssetsCounts

- (ODDSiriSchemaODDRequestsWithoutAssetsCounts)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ODDSiriSchemaODDRequestsWithoutAssetsCounts;
  v5 = [(ODDSiriSchemaODDRequestsWithoutAssetsCounts *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"requestsRequiringAssetsCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDRequestsWithoutAssetsCounts setRequestsRequiringAssetsCount:](v5, "setRequestsRequiringAssetsCount:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"requestsMissingAssetsCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDRequestsWithoutAssetsCounts setRequestsMissingAssetsCount:](v5, "setRequestsMissingAssetsCount:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestsWithFailuresCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDRequestsWithoutAssetsCounts setRequestsWithFailuresCount:](v5, "setRequestsWithFailuresCount:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDRequestsWithoutAssetsCounts)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDRequestsWithoutAssetsCounts *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDRequestsWithoutAssetsCounts *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDRequestsWithoutAssetsCounts requestsMissingAssetsCount](self, "requestsMissingAssetsCount")}];
    [dictionary setObject:v7 forKeyedSubscript:@"requestsMissingAssetsCount"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDRequestsWithoutAssetsCounts requestsRequiringAssetsCount](self, "requestsRequiringAssetsCount")}];
  [dictionary setObject:v8 forKeyedSubscript:@"requestsRequiringAssetsCount"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDRequestsWithoutAssetsCounts requestsWithFailuresCount](self, "requestsWithFailuresCount")}];
    [dictionary setObject:v5 forKeyedSubscript:@"requestsWithFailuresCount"];
  }

LABEL_5:
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

  v2 = 2654435761 * self->_requestsRequiringAssetsCount;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_requestsMissingAssetsCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_requestsWithFailuresCount;
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
    requestsRequiringAssetsCount = self->_requestsRequiringAssetsCount;
    if (requestsRequiringAssetsCount != [equalCopy requestsRequiringAssetsCount])
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
    requestsMissingAssetsCount = self->_requestsMissingAssetsCount;
    if (requestsMissingAssetsCount == [equalCopy requestsMissingAssetsCount])
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
    requestsWithFailuresCount = self->_requestsWithFailuresCount;
    if (requestsWithFailuresCount != [equalCopy requestsWithFailuresCount])
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
    PBDataWriterWriteUint32Field();
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

  PBDataWriterWriteUint32Field();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasRequestsWithFailuresCount:(BOOL)count
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

- (void)setHasRequestsMissingAssetsCount:(BOOL)count
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