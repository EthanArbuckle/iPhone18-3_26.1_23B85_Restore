@interface CloudKitSchemaCKClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CloudKitSchemaCKChangeReported)cloudKitChangeReported;
- (CloudKitSchemaCKClientEvent)initWithDictionary:(id)a3;
- (CloudKitSchemaCKClientEvent)initWithJSON:(id)a3;
- (CloudKitSchemaCKErrorReported)cloudKitErrorReported;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCloudKitChangeReported;
- (void)deleteCloudKitErrorReported;
- (void)setCloudKitChangeReported:(id)a3;
- (void)setCloudKitErrorReported:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CloudKitSchemaCKClientEvent

- (CloudKitSchemaCKClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CloudKitSchemaCKClientEvent;
  v5 = [(CloudKitSchemaCKClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CloudKitSchemaCloudKitEventMetadata alloc] initWithDictionary:v6];
      [(CloudKitSchemaCKClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"cloudKitErrorReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CloudKitSchemaCKErrorReported alloc] initWithDictionary:v8];
      [(CloudKitSchemaCKClientEvent *)v5 setCloudKitErrorReported:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"cloudKitChangeReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CloudKitSchemaCKChangeReported alloc] initWithDictionary:v10];
      [(CloudKitSchemaCKClientEvent *)v5 setCloudKitChangeReported:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (CloudKitSchemaCKClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CloudKitSchemaCKClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CloudKitSchemaCKClientEvent *)self dictionaryRepresentation];
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
  if (self->_cloudKitChangeReported)
  {
    v4 = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"cloudKitChangeReported"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"cloudKitChangeReported"];
    }
  }

  if (self->_cloudKitErrorReported)
  {
    v7 = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"cloudKitErrorReported"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"cloudKitErrorReported"];
    }
  }

  if (self->_eventMetadata)
  {
    v10 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"eventMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(CloudKitSchemaCloudKitEventMetadata *)self->_eventMetadata hash];
  v4 = [(CloudKitSchemaCKErrorReported *)self->_cloudKitErrorReported hash]^ v3;
  return v4 ^ [(CloudKitSchemaCKChangeReported *)self->_cloudKitChangeReported hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_18;
  }

  v6 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
  v7 = [v4 cloudKitErrorReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
  if (v13)
  {
    v14 = v13;
    v15 = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
    v16 = [v4 cloudKitErrorReported];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
  v7 = [v4 cloudKitChangeReported];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
    v21 = [v4 cloudKitChangeReported];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];

  if (v6)
  {
    v7 = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];

  v9 = v11;
  if (v8)
  {
    v10 = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteCloudKitChangeReported
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_cloudKitChangeReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CloudKitSchemaCKChangeReported)cloudKitChangeReported
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_cloudKitChangeReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCloudKitChangeReported:(id)a3
{
  v4 = a3;
  cloudKitErrorReported = self->_cloudKitErrorReported;
  self->_cloudKitErrorReported = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  cloudKitChangeReported = self->_cloudKitChangeReported;
  self->_cloudKitChangeReported = v4;
}

- (void)deleteCloudKitErrorReported
{
  if (self->_whichEvent_Type == 100)
  {
    self->_whichEvent_Type = 0;
    self->_cloudKitErrorReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CloudKitSchemaCKErrorReported)cloudKitErrorReported
{
  if (self->_whichEvent_Type == 100)
  {
    v3 = self->_cloudKitErrorReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCloudKitErrorReported:(id)a3
{
  v4 = a3;
  cloudKitChangeReported = self->_cloudKitChangeReported;
  self->_cloudKitChangeReported = 0;

  v6 = 100;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  cloudKitErrorReported = self->_cloudKitErrorReported;
  self->_cloudKitErrorReported = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(CloudKitSchemaCKClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.cloudkit.CKClientEvent";
  if (v2 == 101)
  {
    v3 = @"com.apple.aiml.siri.cloudkit.CKClientEvent.CKChangeReported";
  }

  if (v2 == 100)
  {
    return @"com.apple.aiml.siri.cloudkit.CKClientEvent.CKErrorReported";
  }

  else
  {
    return v3;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CloudKitSchemaCKClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CloudKitSchemaCKClientEvent *)self deleteEventMetadata];
  }

  v9 = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CloudKitSchemaCKClientEvent *)self deleteCloudKitErrorReported];
  }

  v12 = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CloudKitSchemaCKClientEvent *)self deleteCloudKitChangeReported];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  v2 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
  v3 = [v2 ckId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 63;
      }

      else
      {
        LODWORD(v4) = 0;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (id)getComponentId
{
  v2 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
  v3 = [v2 ckId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(CloudKitSchemaCKClientEvent *)self whichEvent_Type];
  if (v3 == 100)
  {
    v4 = &OBJC_IVAR___CloudKitSchemaCKClientEvent__cloudKitErrorReported;
    goto LABEL_5;
  }

  if (v3 == 101)
  {
    v4 = &OBJC_IVAR___CloudKitSchemaCKClientEvent__cloudKitChangeReported;
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  v3 = @"cloudKitChangeReported";
  if (a3 != 101)
  {
    v3 = 0;
  }

  if (a3 == 100)
  {
    return @"cloudKitErrorReported";
  }

  else
  {
    return v3;
  }
}

@end