@interface SISchemaServerEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaServerEventMetadata)initWithDictionary:(id)dictionary;
- (SISchemaServerEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaServerEventMetadata

- (SISchemaServerEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SISchemaServerEventMetadata;
  v5 = [(SISchemaServerEventMetadata *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SISchemaServerEventMetadata *)v5 setTurnID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"timestampNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaServerEventMetadata setTimestampNs:](v5, "setTimestampNs:", [v8 longLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"siriDeviceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      [(SISchemaServerEventMetadata *)v5 setSiriDeviceID:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"serverPod"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(SISchemaServerEventMetadata *)v5 setServerPod:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (SISchemaServerEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaServerEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaServerEventMetadata *)self dictionaryRepresentation];
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
  if (self->_serverPod)
  {
    serverPod = [(SISchemaServerEventMetadata *)self serverPod];
    v5 = [serverPod copy];
    [dictionary setObject:v5 forKeyedSubscript:@"serverPod"];
  }

  if (self->_siriDeviceID)
  {
    siriDeviceID = [(SISchemaServerEventMetadata *)self siriDeviceID];
    v7 = [siriDeviceID base64EncodedStringWithOptions:0];
    if (v7)
    {
      [dictionary setObject:v7 forKeyedSubscript:@"siriDeviceID"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriDeviceID"];
    }
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaServerEventMetadata timestampNs](self, "timestampNs")}];
    [dictionary setObject:v9 forKeyedSubscript:@"timestampNs"];
  }

  if (self->_turnID)
  {
    turnID = [(SISchemaServerEventMetadata *)self turnID];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_turnID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_timestampNs;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSData *)self->_siriDeviceID hash];
  return v5 ^ v6 ^ [(NSString *)self->_serverPod hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  turnID = [(SISchemaServerEventMetadata *)self turnID];
  turnID2 = [equalCopy turnID];
  if ((turnID != 0) == (turnID2 == 0))
  {
    goto LABEL_19;
  }

  turnID3 = [(SISchemaServerEventMetadata *)self turnID];
  if (turnID3)
  {
    v8 = turnID3;
    turnID4 = [(SISchemaServerEventMetadata *)self turnID];
    turnID5 = [equalCopy turnID];
    v11 = [turnID4 isEqual:turnID5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    timestampNs = self->_timestampNs;
    if (timestampNs != [equalCopy timestampNs])
    {
      goto LABEL_20;
    }
  }

  turnID = [(SISchemaServerEventMetadata *)self siriDeviceID];
  turnID2 = [equalCopy siriDeviceID];
  if ((turnID != 0) == (turnID2 == 0))
  {
    goto LABEL_19;
  }

  siriDeviceID = [(SISchemaServerEventMetadata *)self siriDeviceID];
  if (siriDeviceID)
  {
    v14 = siriDeviceID;
    siriDeviceID2 = [(SISchemaServerEventMetadata *)self siriDeviceID];
    siriDeviceID3 = [equalCopy siriDeviceID];
    v17 = [siriDeviceID2 isEqual:siriDeviceID3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  turnID = [(SISchemaServerEventMetadata *)self serverPod];
  turnID2 = [equalCopy serverPod];
  if ((turnID != 0) != (turnID2 == 0))
  {
    serverPod = [(SISchemaServerEventMetadata *)self serverPod];
    if (!serverPod)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = serverPod;
    serverPod2 = [(SISchemaServerEventMetadata *)self serverPod];
    serverPod3 = [equalCopy serverPod];
    v22 = [serverPod2 isEqual:serverPod3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  turnID = [(SISchemaServerEventMetadata *)self turnID];

  if (turnID)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  siriDeviceID = [(SISchemaServerEventMetadata *)self siriDeviceID];

  if (siriDeviceID)
  {
    PBDataWriterWriteDataField();
  }

  serverPod = [(SISchemaServerEventMetadata *)self serverPod];

  v7 = toCopy;
  if (serverPod)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = SISchemaServerEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{8, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(SISchemaServerEventMetadata *)self deleteSiriDeviceID];
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