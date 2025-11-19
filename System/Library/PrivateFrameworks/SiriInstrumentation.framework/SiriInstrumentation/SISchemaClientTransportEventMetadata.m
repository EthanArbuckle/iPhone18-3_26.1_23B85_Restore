@interface SISchemaClientTransportEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaClientTransportEventMetadata)initWithDictionary:(id)a3;
- (SISchemaClientTransportEventMetadata)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasServerArrivedTimestampNs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaClientTransportEventMetadata

- (SISchemaClientTransportEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SISchemaClientTransportEventMetadata;
  v5 = [(SISchemaClientTransportEventMetadata *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventTransmittedTimestampRefId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaClientTransportEventMetadata *)v5 setEventTransmittedTimestampRefId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"eventTransmittedRelativeToBootTimeTimestampNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaClientTransportEventMetadata setEventTransmittedRelativeToBootTimeTimestampNs:](v5, "setEventTransmittedRelativeToBootTimeTimestampNs:", [v8 longLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"serverArrivedTimestampNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaClientTransportEventMetadata setServerArrivedTimestampNs:](v5, "setServerArrivedTimestampNs:", [v9 longLongValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"arrivedServerPod"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaClientTransportEventMetadata *)v5 setArrivedServerPod:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SISchemaClientTransportEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaClientTransportEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaClientTransportEventMetadata *)self dictionaryRepresentation];
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
  if (self->_arrivedServerPod)
  {
    v4 = [(SISchemaClientTransportEventMetadata *)self arrivedServerPod];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"arrivedServerPod"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaClientTransportEventMetadata eventTransmittedRelativeToBootTimeTimestampNs](self, "eventTransmittedRelativeToBootTimeTimestampNs")}];
    [v3 setObject:v6 forKeyedSubscript:@"eventTransmittedRelativeToBootTimeTimestampNs"];
  }

  if (self->_eventTransmittedTimestampRefId)
  {
    v7 = [(SISchemaClientTransportEventMetadata *)self eventTransmittedTimestampRefId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"eventTransmittedTimestampRefId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaClientTransportEventMetadata serverArrivedTimestampNs](self, "serverArrivedTimestampNs")}];
    [v3 setObject:v9 forKeyedSubscript:@"serverArrivedTimestampNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_eventTransmittedTimestampRefId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_eventTransmittedRelativeToBootTimeTimestampNs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSString *)self->_arrivedServerPod hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_serverArrivedTimestampNs;
  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_arrivedServerPod hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(SISchemaClientTransportEventMetadata *)self eventTransmittedTimestampRefId];
  v6 = [v4 eventTransmittedTimestampRefId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v7 = [(SISchemaClientTransportEventMetadata *)self eventTransmittedTimestampRefId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaClientTransportEventMetadata *)self eventTransmittedTimestampRefId];
    v10 = [v4 eventTransmittedTimestampRefId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    eventTransmittedRelativeToBootTimeTimestampNs = self->_eventTransmittedRelativeToBootTimeTimestampNs;
    if (eventTransmittedRelativeToBootTimeTimestampNs != [v4 eventTransmittedRelativeToBootTimeTimestampNs])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    serverArrivedTimestampNs = self->_serverArrivedTimestampNs;
    if (serverArrivedTimestampNs != [v4 serverArrivedTimestampNs])
    {
      goto LABEL_19;
    }
  }

  v5 = [(SISchemaClientTransportEventMetadata *)self arrivedServerPod];
  v6 = [v4 arrivedServerPod];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v17 = [(SISchemaClientTransportEventMetadata *)self arrivedServerPod];
  if (!v17)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [(SISchemaClientTransportEventMetadata *)self arrivedServerPod];
  v20 = [v4 arrivedServerPod];
  v21 = [v19 isEqual:v20];

  if (v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaClientTransportEventMetadata *)self eventTransmittedTimestampRefId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  v6 = [(SISchemaClientTransportEventMetadata *)self arrivedServerPod];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (void)setHasServerArrivedTimestampNs:(BOOL)a3
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