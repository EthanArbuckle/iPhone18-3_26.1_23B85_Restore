@interface SISchemaClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaClientEventMetadata)initWithDictionary:(id)dictionary;
- (SISchemaClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)willProduceDictionaryRepresentation:(id)representation;
- (void)writeTo:(id)to;
@end

@implementation SISchemaClientEventMetadata

- (void)willProduceDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  turnID = [(SISchemaClientEventMetadata *)self turnID];
  v5 = turnID;
  if (turnID && [turnID length] == 16)
  {
    si_asNSUUID = [v5 si_asNSUUID];
    uUIDString = [si_asNSUUID UUIDString];
    [representationCopy setObject:uUIDString forKeyedSubscript:@"turnID"];
  }
}

- (SISchemaClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SISchemaClientEventMetadata;
  v5 = [(SISchemaClientEventMetadata *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SISchemaClientEventMetadata *)v5 setTurnID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"siriDeviceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      [(SISchemaClientEventMetadata *)v5 setSiriDeviceID:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"eventGeneratedTimestampRefId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaClientEventMetadata *)v5 setEventGeneratedTimestampRefId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"eventGeneratedRelativeToBootTimeTimestampNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaClientEventMetadata setEventGeneratedRelativeToBootTimeTimestampNs:](v5, "setEventGeneratedRelativeToBootTimeTimestampNs:", [v12 longLongValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (SISchemaClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaClientEventMetadata *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaClientEventMetadata eventGeneratedRelativeToBootTimeTimestampNs](self, "eventGeneratedRelativeToBootTimeTimestampNs")}];
    [dictionary setObject:v4 forKeyedSubscript:@"eventGeneratedRelativeToBootTimeTimestampNs"];
  }

  if (self->_eventGeneratedTimestampRefId)
  {
    eventGeneratedTimestampRefId = [(SISchemaClientEventMetadata *)self eventGeneratedTimestampRefId];
    v6 = [eventGeneratedTimestampRefId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"eventGeneratedTimestampRefId"];
  }

  if (self->_siriDeviceID)
  {
    siriDeviceID = [(SISchemaClientEventMetadata *)self siriDeviceID];
    v8 = [siriDeviceID base64EncodedStringWithOptions:0];
    if (v8)
    {
      [dictionary setObject:v8 forKeyedSubscript:@"siriDeviceID"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriDeviceID"];
    }
  }

  if (self->_turnID)
  {
    turnID = [(SISchemaClientEventMetadata *)self turnID];
    v11 = [turnID base64EncodedStringWithOptions:0];
    if (v11)
    {
      [dictionary setObject:v11 forKeyedSubscript:@"turnID"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"turnID"];
    }
  }

  [(SISchemaClientEventMetadata *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_turnID hash];
  v4 = [(NSData *)self->_siriDeviceID hash];
  v5 = [(NSString *)self->_eventGeneratedTimestampRefId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_eventGeneratedRelativeToBootTimeTimestampNs;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  turnID = [(SISchemaClientEventMetadata *)self turnID];
  turnID2 = [equalCopy turnID];
  if ((turnID != 0) == (turnID2 == 0))
  {
    goto LABEL_16;
  }

  turnID3 = [(SISchemaClientEventMetadata *)self turnID];
  if (turnID3)
  {
    v8 = turnID3;
    turnID4 = [(SISchemaClientEventMetadata *)self turnID];
    turnID5 = [equalCopy turnID];
    v11 = [turnID4 isEqual:turnID5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  turnID = [(SISchemaClientEventMetadata *)self siriDeviceID];
  turnID2 = [equalCopy siriDeviceID];
  if ((turnID != 0) == (turnID2 == 0))
  {
    goto LABEL_16;
  }

  siriDeviceID = [(SISchemaClientEventMetadata *)self siriDeviceID];
  if (siriDeviceID)
  {
    v13 = siriDeviceID;
    siriDeviceID2 = [(SISchemaClientEventMetadata *)self siriDeviceID];
    siriDeviceID3 = [equalCopy siriDeviceID];
    v16 = [siriDeviceID2 isEqual:siriDeviceID3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  turnID = [(SISchemaClientEventMetadata *)self eventGeneratedTimestampRefId];
  turnID2 = [equalCopy eventGeneratedTimestampRefId];
  if ((turnID != 0) == (turnID2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  eventGeneratedTimestampRefId = [(SISchemaClientEventMetadata *)self eventGeneratedTimestampRefId];
  if (eventGeneratedTimestampRefId)
  {
    v18 = eventGeneratedTimestampRefId;
    eventGeneratedTimestampRefId2 = [(SISchemaClientEventMetadata *)self eventGeneratedTimestampRefId];
    eventGeneratedTimestampRefId3 = [equalCopy eventGeneratedTimestampRefId];
    v21 = [eventGeneratedTimestampRefId2 isEqual:eventGeneratedTimestampRefId3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[40] & 1))
  {
    if ((*&self->_has & 1) == 0 || (eventGeneratedRelativeToBootTimeTimestampNs = self->_eventGeneratedRelativeToBootTimeTimestampNs, eventGeneratedRelativeToBootTimeTimestampNs == [equalCopy eventGeneratedRelativeToBootTimeTimestampNs]))
    {
      v22 = 1;
      goto LABEL_18;
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
  turnID = [(SISchemaClientEventMetadata *)self turnID];

  if (turnID)
  {
    PBDataWriterWriteDataField();
  }

  siriDeviceID = [(SISchemaClientEventMetadata *)self siriDeviceID];

  if (siriDeviceID)
  {
    PBDataWriterWriteDataField();
  }

  eventGeneratedTimestampRefId = [(SISchemaClientEventMetadata *)self eventGeneratedTimestampRefId];

  if (eventGeneratedTimestampRefId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = SISchemaClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{8, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(SISchemaClientEventMetadata *)self deleteSiriDeviceID];
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