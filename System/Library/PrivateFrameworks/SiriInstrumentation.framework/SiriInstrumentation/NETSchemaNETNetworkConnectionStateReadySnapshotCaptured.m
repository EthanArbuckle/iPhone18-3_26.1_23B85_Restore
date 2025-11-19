@interface NETSchemaNETNetworkConnectionStateReadySnapshotCaptured
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETNetworkConnectionStateReadySnapshotCaptured)initWithDictionary:(id)a3;
- (NETSchemaNETNetworkConnectionStateReadySnapshotCaptured)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConnectionEstablishmentAttemptDelay:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETNetworkConnectionStateReadySnapshotCaptured

- (NETSchemaNETNetworkConnectionStateReadySnapshotCaptured)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NETSchemaNETNetworkConnectionStateReadySnapshotCaptured;
  v5 = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"connectionInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)v5 setConnectionInfo:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"connectionEstablishmentPreviousAttemptCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETNetworkConnectionStateReadySnapshotCaptured setConnectionEstablishmentPreviousAttemptCount:](v5, "setConnectionEstablishmentPreviousAttemptCount:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"connectionEstablishmentAttemptDelay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETNetworkConnectionStateReadySnapshotCaptured setConnectionEstablishmentAttemptDelay:](v5, "setConnectionEstablishmentAttemptDelay:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NETSchemaNETNetworkConnectionStateReadySnapshotCaptured)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETNetworkConnectionStateReadySnapshotCaptured connectionEstablishmentAttemptDelay](self, "connectionEstablishmentAttemptDelay")}];
    [v3 setObject:v5 forKeyedSubscript:@"connectionEstablishmentAttemptDelay"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETNetworkConnectionStateReadySnapshotCaptured connectionEstablishmentPreviousAttemptCount](self, "connectionEstablishmentPreviousAttemptCount")}];
    [v3 setObject:v6 forKeyedSubscript:@"connectionEstablishmentPreviousAttemptCount"];
  }

  if (self->_connectionInfo)
  {
    v7 = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self connectionInfo];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"connectionInfo"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self connectionInfo];
  v6 = [v4 connectionInfo];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self connectionInfo];
  if (v8)
  {
    v9 = v8;
    v10 = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self connectionInfo];
    v11 = [v4 connectionInfo];
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
    connectionEstablishmentPreviousAttemptCount = self->_connectionEstablishmentPreviousAttemptCount;
    if (connectionEstablishmentPreviousAttemptCount == [v4 connectionEstablishmentPreviousAttemptCount])
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
    connectionEstablishmentAttemptDelay = self->_connectionEstablishmentAttemptDelay;
    if (connectionEstablishmentAttemptDelay != [v4 connectionEstablishmentAttemptDelay])
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
  v7 = a3;
  v4 = [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self connectionInfo];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v6 = v7;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = v7;
  }
}

- (void)setHasConnectionEstablishmentAttemptDelay:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end