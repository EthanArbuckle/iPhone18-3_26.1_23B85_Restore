@interface DHTSchemaDHTDeleteTrigger
- (BOOL)isEqual:(id)equal;
- (DHTSchemaDHTDeleteTrigger)initWithDictionary:(id)dictionary;
- (DHTSchemaDHTDeleteTrigger)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDeletionTriggerEvent:(BOOL)event;
- (void)writeTo:(id)to;
@end

@implementation DHTSchemaDHTDeleteTrigger

- (DHTSchemaDHTDeleteTrigger)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = DHTSchemaDHTDeleteTrigger;
  v5 = [(DHTSchemaDHTDeleteTrigger *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DHTSchemaDHTDeleteTrigger *)v5 setId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"speechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(DHTSchemaDHTDeleteTrigger *)v5 setSpeechId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"siriDeviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(DHTSchemaDHTDeleteTrigger *)v5 setSiriDeviceId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"deleteTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DHTSchemaDHTDeleteTrigger setDeleteTimestampMs:](v5, "setDeleteTimestampMs:", [v12 unsignedLongLongValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"deletionTriggerEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DHTSchemaDHTDeleteTrigger setDeletionTriggerEvent:](v5, "setDeletionTriggerEvent:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (DHTSchemaDHTDeleteTrigger)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DHTSchemaDHTDeleteTrigger *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DHTSchemaDHTDeleteTrigger *)self dictionaryRepresentation];
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
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DHTSchemaDHTDeleteTrigger deleteTimestampMs](self, "deleteTimestampMs")}];
    [dictionary setObject:v5 forKeyedSubscript:@"deleteTimestampMs"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    deletionTriggerEvent = [(DHTSchemaDHTDeleteTrigger *)self deletionTriggerEvent];
    v7 = @"DHTTRIGGEREVENT_UNKNOWN";
    if (deletionTriggerEvent == 1)
    {
      v7 = @"DHTTRIGGEREVENT_DESTROY_ASSISTANT";
    }

    if (deletionTriggerEvent == 2)
    {
      v8 = @"DHTTRIGGEREVENT_DELETE_ASSISTANT_HISTORY";
    }

    else
    {
      v8 = v7;
    }

    [dictionary setObject:v8 forKeyedSubscript:@"deletionTriggerEvent"];
  }

  if (self->_id)
  {
    v9 = [(DHTSchemaDHTDeleteTrigger *)self id];
    dictionaryRepresentation = [v9 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"id"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"id"];
    }
  }

  if (self->_siriDeviceId)
  {
    siriDeviceId = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
    dictionaryRepresentation2 = [siriDeviceId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"siriDeviceId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"siriDeviceId"];
    }
  }

  if (self->_speechId)
  {
    speechId = [(DHTSchemaDHTDeleteTrigger *)self speechId];
    dictionaryRepresentation3 = [speechId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"speechId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"speechId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  speechId = [(DHTSchemaDHTDeleteTrigger *)self id];
  speechId2 = [equalCopy id];
  if ((speechId != 0) == (speechId2 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(DHTSchemaDHTDeleteTrigger *)self id];
  if (v7)
  {
    v8 = v7;
    v9 = [(DHTSchemaDHTDeleteTrigger *)self id];
    v10 = [equalCopy id];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  speechId = [(DHTSchemaDHTDeleteTrigger *)self speechId];
  speechId2 = [equalCopy speechId];
  if ((speechId != 0) == (speechId2 == 0))
  {
    goto LABEL_16;
  }

  speechId3 = [(DHTSchemaDHTDeleteTrigger *)self speechId];
  if (speechId3)
  {
    v13 = speechId3;
    speechId4 = [(DHTSchemaDHTDeleteTrigger *)self speechId];
    speechId5 = [equalCopy speechId];
    v16 = [speechId4 isEqual:speechId5];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  speechId = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
  speechId2 = [equalCopy siriDeviceId];
  if ((speechId != 0) == (speechId2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  siriDeviceId = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
  if (siriDeviceId)
  {
    v18 = siriDeviceId;
    siriDeviceId2 = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
    siriDeviceId3 = [equalCopy siriDeviceId];
    v21 = [siriDeviceId2 isEqual:siriDeviceId3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  has = self->_has;
  v25 = equalCopy[44];
  if ((*&has & 1) == (v25 & 1))
  {
    if (*&has)
    {
      deleteTimestampMs = self->_deleteTimestampMs;
      if (deleteTimestampMs != [equalCopy deleteTimestampMs])
      {
        goto LABEL_17;
      }

      has = self->_has;
      v25 = equalCopy[44];
    }

    v27 = (*&has >> 1) & 1;
    if (v27 == ((v25 >> 1) & 1))
    {
      if (!v27 || (deletionTriggerEvent = self->_deletionTriggerEvent, deletionTriggerEvent == [equalCopy deletionTriggerEvent]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = [(DHTSchemaDHTDeleteTrigger *)self id];

  if (v4)
  {
    v5 = [(DHTSchemaDHTDeleteTrigger *)self id];
    PBDataWriterWriteSubmessage();
  }

  speechId = [(DHTSchemaDHTDeleteTrigger *)self speechId];

  if (speechId)
  {
    speechId2 = [(DHTSchemaDHTDeleteTrigger *)self speechId];
    PBDataWriterWriteSubmessage();
  }

  siriDeviceId = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];

  if (siriDeviceId)
  {
    siriDeviceId2 = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  v11 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v11 = toCopy;
  }
}

- (void)setHasDeletionTriggerEvent:(BOOL)event
{
  if (event)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = DHTSchemaDHTDeleteTrigger;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
    [(DHTSchemaDHTDeleteTrigger *)self deleteSiriDeviceId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
    [(DHTSchemaDHTDeleteTrigger *)self deleteSiriDeviceId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
    [(DHTSchemaDHTDeleteTrigger *)self deleteSiriDeviceId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
    [(DHTSchemaDHTDeleteTrigger *)self deleteSiriDeviceId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
    [(DHTSchemaDHTDeleteTrigger *)self deleteSiriDeviceId];
  }

  v6 = [(DHTSchemaDHTDeleteTrigger *)self id];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteId];
  }

  speechId = [(DHTSchemaDHTDeleteTrigger *)self speechId];
  v10 = [speechId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DHTSchemaDHTDeleteTrigger *)self deleteSpeechId];
  }

  siriDeviceId = [(DHTSchemaDHTDeleteTrigger *)self siriDeviceId];
  v13 = [siriDeviceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
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