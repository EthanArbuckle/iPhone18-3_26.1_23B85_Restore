@interface RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived)initWithDictionary:(id)dictionary;
- (RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived

- (RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived;
  v5 = [(RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"syncTokenFetchRequestTransferLatencyInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived setSyncTokenFetchRequestTransferLatencyInMs:](v5, "setSyncTokenFetchRequestTransferLatencyInMs:", [v6 unsignedLongLongValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived syncTokenFetchRequestTransferLatencyInMs](self, "syncTokenFetchRequestTransferLatencyInMs")}];
    [dictionary setObject:v4 forKeyedSubscript:@"syncTokenFetchRequestTransferLatencyInMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761u * self->_syncTokenFetchRequestTransferLatencyInMs;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[16] & 1))
    {
      if ((*&self->_has & 1) == 0 || (syncTokenFetchRequestTransferLatencyInMs = self->_syncTokenFetchRequestTransferLatencyInMs, syncTokenFetchRequestTransferLatencyInMs == [equalCopy syncTokenFetchRequestTransferLatencyInMs]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end