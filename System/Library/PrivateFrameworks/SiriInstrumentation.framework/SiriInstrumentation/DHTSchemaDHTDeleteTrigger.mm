@interface DHTSchemaDHTDeleteTrigger
- (BOOL)isEqual:(id)a3;
- (DHTSchemaDHTDeleteTrigger)initWithDictionary:(id)a3;
- (DHTSchemaDHTDeleteTrigger)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDeletionTriggerEvent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DHTSchemaDHTDeleteTrigger

- (DHTSchemaDHTDeleteTrigger)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DHTSchemaDHTDeleteTrigger;
  v5 = [(DHTSchemaDHTDeleteTrigger *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DHTSchemaDHTDeleteTrigger *)v5 setId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"speechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(DHTSchemaDHTDeleteTrigger *)v5 setSpeechId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"siriDeviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(DHTSchemaDHTDeleteTrigger *)v5 setSiriDeviceId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"deleteTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DHTSchemaDHTDeleteTrigger setDeleteTimestampMs:](v5, "setDeleteTimestampMs:", [v12 unsignedLongLongValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"deletionTriggerEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DHTSchemaDHTDeleteTrigger setDeletionTriggerEvent:](v5, "setDeletionTriggerEvent:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (DHTSchemaDHTDeleteTrigger)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DHTSchemaDHTDeleteTrigger *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DHTSchemaDHTDeleteTrigger *)self dictionaryRepresentation];
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
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DHTSchemaDHTDeleteTrigger deleteTimestampMs](self, "deleteTimestampMs")}];
    [v3 setObject:v5 forKeyedSubscript:@"deleteTimestampMs"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [(DHTSchemaDHTDeleteTrigger *)self deletionTriggerEvent];
    v7 = @"DHTTRIGGEREVENT_UNKNOWN";
    if (v6 == 1)
    {
      v7 = @"DHTTRIGGEREVENT_DESTROY_ASSISTANT";
    }

    if (v6 == 2)
    {
      v8 = @"DHTTRIGGEREVENT_DELETE_ASSISTANT_HISTORY";
    }

    else
    {
      v8 = v7;
    }

    [v3 setObject:v8 forKeyedSubscript:@"deletionTriggerEvent"];
  }

  if (self->_id)
  {
    v9 = [(DHTSchemaDHTDeleteTrigger *)self id];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"id"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"id"];
    }
  }

  if (self->_siriDeviceId)
  {
    v12 = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"siriDeviceId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"siriDeviceId"];
    }
  }

  if (self->_speechId)
  {
    v15 = [(DHTSchemaDHTDeleteTrigger *)self speechId];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"speechId"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"speechId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_id hash];
  v4 = [(SISchemaUUID *)self->_speechId hash];
  v5 = [(SISchemaUUID *)self->_siriDeviceId hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_deleteTimestampMs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_deletionTriggerEvent;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(DHTSchemaDHTDeleteTrigger *)self id];
  v6 = [v4 id];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(DHTSchemaDHTDeleteTrigger *)self id];
  if (v7)
  {
    v8 = v7;
    v9 = [(DHTSchemaDHTDeleteTrigger *)self id];
    v10 = [v4 id];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(DHTSchemaDHTDeleteTrigger *)self speechId];
  v6 = [v4 speechId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(DHTSchemaDHTDeleteTrigger *)self speechId];
  if (v12)
  {
    v13 = v12;
    v14 = [(DHTSchemaDHTDeleteTrigger *)self speechId];
    v15 = [v4 speechId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
  v6 = [v4 siriDeviceId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
  if (v17)
  {
    v18 = v17;
    v19 = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
    v20 = [v4 siriDeviceId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  has = self->_has;
  v25 = v4[44];
  if ((*&has & 1) == (v25 & 1))
  {
    if (*&has)
    {
      deleteTimestampMs = self->_deleteTimestampMs;
      if (deleteTimestampMs != [v4 deleteTimestampMs])
      {
        goto LABEL_17;
      }

      has = self->_has;
      v25 = v4[44];
    }

    v27 = (*&has >> 1) & 1;
    if (v27 == ((v25 >> 1) & 1))
    {
      if (!v27 || (deletionTriggerEvent = self->_deletionTriggerEvent, deletionTriggerEvent == [v4 deletionTriggerEvent]))
      {
        v22 = 1;
        goto LABEL_18;
      }
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(DHTSchemaDHTDeleteTrigger *)self id];

  if (v4)
  {
    v5 = [(DHTSchemaDHTDeleteTrigger *)self id];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(DHTSchemaDHTDeleteTrigger *)self speechId];

  if (v6)
  {
    v7 = [(DHTSchemaDHTDeleteTrigger *)self speechId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];

  if (v8)
  {
    v9 = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  v11 = v12;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v11 = v12;
  }
}

- (void)setHasDeletionTriggerEvent:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DHTSchemaDHTDeleteTrigger;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
    [(DHTSchemaDHTDeleteTrigger *)self deleteSiriDeviceId];
  }

  if ([v4 isConditionSet:4])
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
    [(DHTSchemaDHTDeleteTrigger *)self deleteSiriDeviceId];
  }

  if ([v4 isConditionSet:5])
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
    [(DHTSchemaDHTDeleteTrigger *)self deleteSiriDeviceId];
  }

  if ([v4 isConditionSet:6])
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
    [(DHTSchemaDHTDeleteTrigger *)self deleteSiriDeviceId];
  }

  if ([v4 isConditionSet:7])
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
    [(DHTSchemaDHTDeleteTrigger *)self deleteSiriDeviceId];
  }

  v6 = [(DHTSchemaDHTDeleteTrigger *)self id];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteId];
  }

  v9 = [(DHTSchemaDHTDeleteTrigger *)self speechId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
  }

  v12 = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSiriDeviceId];
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