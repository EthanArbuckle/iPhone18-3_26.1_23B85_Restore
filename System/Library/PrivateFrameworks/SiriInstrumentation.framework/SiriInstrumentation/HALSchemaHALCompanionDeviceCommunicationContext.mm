@interface HALSchemaHALCompanionDeviceCommunicationContext
- (BOOL)isEqual:(id)a3;
- (HALSchemaHALCompanionDeviceCommunicationContext)initWithDictionary:(id)a3;
- (HALSchemaHALCompanionDeviceCommunicationContext)initWithJSON:(id)a3;
- (HALSchemaHALCompanionDeviceCommunicationEnded)ended;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteEnded;
- (void)writeTo:(id)a3;
@end

@implementation HALSchemaHALCompanionDeviceCommunicationContext

- (HALSchemaHALCompanionDeviceCommunicationContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HALSchemaHALCompanionDeviceCommunicationContext;
  v5 = [(HALSchemaHALCompanionDeviceCommunicationContext *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[HALSchemaHALCompanionDeviceCommunicationEnded alloc] initWithDictionary:v6];
      [(HALSchemaHALCompanionDeviceCommunicationContext *)v5 setEnded:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (HALSchemaHALCompanionDeviceCommunicationContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(HALSchemaHALCompanionDeviceCommunicationContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self dictionaryRepresentation];
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
  if (self->_ended)
  {
    v4 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"ended"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"ended"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichContextevent = self->_whichContextevent;
    if (whichContextevent == [v4 whichContextevent])
    {
      v6 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];
      v7 = [v4 ended];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];
        v12 = [v4 ended];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];

  if (v4)
  {
    v5 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HALSchemaHALCompanionDeviceCommunicationEnded)ended
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = HALSchemaHALCompanionDeviceCommunicationContext;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(HALSchemaHALCompanionDeviceCommunicationContext *)self deleteEnded];
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