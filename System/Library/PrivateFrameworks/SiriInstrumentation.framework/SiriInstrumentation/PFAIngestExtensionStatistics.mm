@interface PFAIngestExtensionStatistics
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFAIngestExtensionStatistics)initWithDictionary:(id)dictionary;
- (PFAIngestExtensionStatistics)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMessageCount:(BOOL)count;
- (void)setHasMissingTimestampCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation PFAIngestExtensionStatistics

- (PFAIngestExtensionStatistics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PFAIngestExtensionStatistics;
  v5 = [(PFAIngestExtensionStatistics *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PFAIngestExtensionStatistics *)v5 setBundleId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAIngestExtensionStatistics setResult:](v5, "setResult:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"messageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAIngestExtensionStatistics setMessageCount:](v5, "setMessageCount:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"missingTimestampCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAIngestExtensionStatistics setMissingTimestampCount:](v5, "setMissingTimestampCount:", [v10 unsignedIntValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (PFAIngestExtensionStatistics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFAIngestExtensionStatistics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFAIngestExtensionStatistics *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    bundleId = [(PFAIngestExtensionStatistics *)self bundleId];
    v5 = [bundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAIngestExtensionStatistics missingTimestampCount](self, "missingTimestampCount")}];
    [dictionary setObject:v8 forKeyedSubscript:@"missingTimestampCount"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_9:
    v9 = [(PFAIngestExtensionStatistics *)self result]- 1;
    if (v9 > 3)
    {
      v10 = @"EXTENSIONRESULT_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E01F8[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"result"];
    goto LABEL_13;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAIngestExtensionStatistics messageCount](self, "messageCount")}];
  [dictionary setObject:v7 forKeyedSubscript:@"messageCount"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (has)
  {
    goto LABEL_9;
  }

LABEL_13:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_result;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_messageCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_missingTimestampCount;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  bundleId = [(PFAIngestExtensionStatistics *)self bundleId];
  bundleId2 = [equalCopy bundleId];
  v7 = bundleId2;
  if ((bundleId != 0) == (bundleId2 == 0))
  {

    goto LABEL_20;
  }

  bundleId3 = [(PFAIngestExtensionStatistics *)self bundleId];
  if (bundleId3)
  {
    v9 = bundleId3;
    bundleId4 = [(PFAIngestExtensionStatistics *)self bundleId];
    bundleId5 = [equalCopy bundleId];
    v12 = [bundleId4 isEqual:bundleId5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (*&has)
  {
    v15 = self->_result;
    if (v15 != [equalCopy result])
    {
      goto LABEL_20;
    }

    has = self->_has;
    v14 = equalCopy[28];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    messageCount = self->_messageCount;
    if (messageCount == [equalCopy messageCount])
    {
      has = self->_has;
      v14 = equalCopy[28];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    missingTimestampCount = self->_missingTimestampCount;
    if (missingTimestampCount != [equalCopy missingTimestampCount])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  bundleId = [(PFAIngestExtensionStatistics *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = toCopy;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = toCopy;
  }
}

- (void)setHasMissingTimestampCount:(BOOL)count
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

- (void)setHasMessageCount:(BOOL)count
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