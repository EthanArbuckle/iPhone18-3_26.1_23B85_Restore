@interface MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1)initWithDictionary:(id)dictionary;
- (MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1

- (MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1;
  v5 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clockIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)v5 setClockIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)v5 setRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"approximateSessionTimeStamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 setApproximateSessionTimeStamp:](v5, "setApproximateSessionTimeStamp:", [v10 unsignedLongLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 approximateSessionTimeStamp](self, "approximateSessionTimeStamp")}];
    [dictionary setObject:v4 forKeyedSubscript:@"approximateSessionTimeStamp"];
  }

  if (self->_clockIdentifier)
  {
    clockIdentifier = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
    dictionaryRepresentation = [clockIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clockIdentifier"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clockIdentifier"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
    dictionaryRepresentation2 = [requestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"requestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"requestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_clockIdentifier hash];
  v4 = [(SISchemaUUID *)self->_requestId hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_approximateSessionTimeStamp;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  clockIdentifier = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
  clockIdentifier2 = [equalCopy clockIdentifier];
  if ((clockIdentifier != 0) == (clockIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  clockIdentifier3 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
  if (clockIdentifier3)
  {
    v8 = clockIdentifier3;
    clockIdentifier4 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
    clockIdentifier5 = [equalCopy clockIdentifier];
    v11 = [clockIdentifier4 isEqual:clockIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  clockIdentifier = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
  clockIdentifier2 = [equalCopy requestId];
  if ((clockIdentifier != 0) == (clockIdentifier2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  requestId = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
  if (requestId)
  {
    v13 = requestId;
    requestId2 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
    requestId3 = [equalCopy requestId];
    v16 = [requestId2 isEqual:requestId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (approximateSessionTimeStamp = self->_approximateSessionTimeStamp, approximateSessionTimeStamp == [equalCopy approximateSessionTimeStamp]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  clockIdentifier = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];

  if (clockIdentifier)
  {
    clockIdentifier2 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];

  if (requestId)
  {
    requestId2 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  clockIdentifier = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
  v7 = [clockIdentifier applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self deleteClockIdentifier];
  }

  requestId = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self deleteRequestId];
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