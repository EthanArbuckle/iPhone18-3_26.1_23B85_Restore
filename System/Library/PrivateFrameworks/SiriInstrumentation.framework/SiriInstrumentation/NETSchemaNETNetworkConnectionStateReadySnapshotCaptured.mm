@interface NETSchemaNETNetworkConnectionStateReadySnapshotCaptured
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETNetworkConnectionStateReadySnapshotCaptured)initWithDictionary:(id)dictionary;
- (NETSchemaNETNetworkConnectionStateReadySnapshotCaptured)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConnectionEstablishmentAttemptDelay:(BOOL)delay;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETNetworkConnectionStateReadySnapshotCaptured

- (NETSchemaNETNetworkConnectionStateReadySnapshotCaptured)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NETSchemaNETNetworkConnectionStateReadySnapshotCaptured;
  v5 = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"connectionInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)v5 setConnectionInfo:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"connectionEstablishmentPreviousAttemptCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETNetworkConnectionStateReadySnapshotCaptured setConnectionEstablishmentPreviousAttemptCount:](v5, "setConnectionEstablishmentPreviousAttemptCount:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"connectionEstablishmentAttemptDelay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETNetworkConnectionStateReadySnapshotCaptured setConnectionEstablishmentAttemptDelay:](v5, "setConnectionEstablishmentAttemptDelay:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NETSchemaNETNetworkConnectionStateReadySnapshotCaptured)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETNetworkConnectionStateReadySnapshotCaptured connectionEstablishmentAttemptDelay](self, "connectionEstablishmentAttemptDelay")}];
    [dictionary setObject:v5 forKeyedSubscript:@"connectionEstablishmentAttemptDelay"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETNetworkConnectionStateReadySnapshotCaptured connectionEstablishmentPreviousAttemptCount](self, "connectionEstablishmentPreviousAttemptCount")}];
    [dictionary setObject:v6 forKeyedSubscript:@"connectionEstablishmentPreviousAttemptCount"];
  }

  if (self->_connectionInfo)
  {
    connectionInfo = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self connectionInfo];
    v8 = [connectionInfo copy];
    [dictionary setObject:v8 forKeyedSubscript:@"connectionInfo"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_connectionInfo hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_connectionEstablishmentPreviousAttemptCount;
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
  v5 = 2654435761 * self->_connectionEstablishmentAttemptDelay;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  connectionInfo = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self connectionInfo];
  connectionInfo2 = [equalCopy connectionInfo];
  v7 = connectionInfo2;
  if ((connectionInfo != 0) == (connectionInfo2 == 0))
  {

    goto LABEL_16;
  }

  connectionInfo3 = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self connectionInfo];
  if (connectionInfo3)
  {
    v9 = connectionInfo3;
    connectionInfo4 = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self connectionInfo];
    connectionInfo5 = [equalCopy connectionInfo];
    v12 = [connectionInfo4 isEqual:connectionInfo5];

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
    connectionEstablishmentPreviousAttemptCount = self->_connectionEstablishmentPreviousAttemptCount;
    if (connectionEstablishmentPreviousAttemptCount == [equalCopy connectionEstablishmentPreviousAttemptCount])
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
    connectionEstablishmentAttemptDelay = self->_connectionEstablishmentAttemptDelay;
    if (connectionEstablishmentAttemptDelay != [equalCopy connectionEstablishmentAttemptDelay])
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
  connectionInfo = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self connectionInfo];

  if (connectionInfo)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = toCopy;
  }
}

- (void)setHasConnectionEstablishmentAttemptDelay:(BOOL)delay
{
  if (delay)
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