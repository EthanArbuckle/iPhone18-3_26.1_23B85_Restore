@interface MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1)initWithDictionary:(id)a3;
- (MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1

- (MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1;
  v5 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"clockIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)v5 setClockIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)v5 setRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"approximateSessionTimeStamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 setApproximateSessionTimeStamp:](v5, "setApproximateSessionTimeStamp:", [v10 unsignedLongLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 approximateSessionTimeStamp](self, "approximateSessionTimeStamp")}];
    [v3 setObject:v4 forKeyedSubscript:@"approximateSessionTimeStamp"];
  }

  if (self->_clockIdentifier)
  {
    v5 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"clockIdentifier"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"clockIdentifier"];
    }
  }

  if (self->_requestId)
  {
    v8 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"requestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
  v6 = [v4 clockIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
    v10 = [v4 clockIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
  if (v12)
  {
    v13 = v12;
    v14 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
    v15 = [v4 requestId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (approximateSessionTimeStamp = self->_approximateSessionTimeStamp, approximateSessionTimeStamp == [v4 approximateSessionTimeStamp]))
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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];

  if (v4)
  {
    v5 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];

  if (v6)
  {
    v7 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self clockIdentifier];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self deleteClockIdentifier];
  }

  v9 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self requestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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