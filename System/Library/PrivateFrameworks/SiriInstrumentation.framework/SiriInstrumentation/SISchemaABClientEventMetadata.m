@interface SISchemaABClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaABClientEventMetadata)initWithDictionary:(id)a3;
- (SISchemaABClientEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaABClientEventMetadata

- (SISchemaABClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaABClientEventMetadata;
  v5 = [(SISchemaABClientEventMetadata *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriDeviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaABClientEventMetadata *)v5 setSiriDeviceId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"speechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SISchemaABClientEventMetadata *)v5 setSpeechId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"timeIntervalSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(SISchemaABClientEventMetadata *)v5 setTimeIntervalSince1970:?];
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaABClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaABClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaABClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_siriDeviceId)
  {
    v4 = [(SISchemaABClientEventMetadata *)self siriDeviceId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"siriDeviceId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"siriDeviceId"];
    }
  }

  if (self->_speechId)
  {
    v7 = [(SISchemaABClientEventMetadata *)self speechId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"speechId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"speechId"];
    }
  }

  if (*&self->_has)
  {
    v10 = MEMORY[0x1E696AD98];
    [(SISchemaABClientEventMetadata *)self timeIntervalSince1970];
    v11 = [v10 numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"timeIntervalSince1970"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_siriDeviceId hash];
  v4 = [(SISchemaUUID *)self->_speechId hash];
  if (*&self->_has)
  {
    timeIntervalSince1970 = self->_timeIntervalSince1970;
    if (timeIntervalSince1970 < 0.0)
    {
      timeIntervalSince1970 = -timeIntervalSince1970;
    }

    *v5.i64 = floor(timeIntervalSince1970 + 0.5);
    v9 = (timeIntervalSince1970 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SISchemaABClientEventMetadata *)self siriDeviceId];
  v6 = [v4 siriDeviceId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(SISchemaABClientEventMetadata *)self siriDeviceId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaABClientEventMetadata *)self siriDeviceId];
    v10 = [v4 siriDeviceId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(SISchemaABClientEventMetadata *)self speechId];
  v6 = [v4 speechId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(SISchemaABClientEventMetadata *)self speechId];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaABClientEventMetadata *)self speechId];
    v15 = [v4 speechId];
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
    if ((*&self->_has & 1) == 0 || (timeIntervalSince1970 = self->_timeIntervalSince1970, [v4 timeIntervalSince1970], timeIntervalSince1970 == v20))
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
  v4 = [(SISchemaABClientEventMetadata *)self siriDeviceId];

  if (v4)
  {
    v5 = [(SISchemaABClientEventMetadata *)self siriDeviceId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaABClientEventMetadata *)self speechId];

  if (v6)
  {
    v7 = [(SISchemaABClientEventMetadata *)self speechId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaABClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(SISchemaABClientEventMetadata *)self deleteSiriDeviceId];
    [(SISchemaABClientEventMetadata *)self deleteSpeechId];
  }

  v6 = [(SISchemaABClientEventMetadata *)self siriDeviceId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaABClientEventMetadata *)self deleteSiriDeviceId];
  }

  v9 = [(SISchemaABClientEventMetadata *)self speechId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaABClientEventMetadata *)self deleteSpeechId];
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