@interface HALSchemaHALCompanionDeviceCommunicationEnded
- (BOOL)isEqual:(id)a3;
- (HALSchemaHALCompanionDeviceCommunicationEnded)initWithDictionary:(id)a3;
- (HALSchemaHALCompanionDeviceCommunicationEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDidConnectionTimeOut:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HALSchemaHALCompanionDeviceCommunicationEnded

- (HALSchemaHALCompanionDeviceCommunicationEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HALSchemaHALCompanionDeviceCommunicationEnded;
  v5 = [(HALSchemaHALCompanionDeviceCommunicationEnded *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"connectionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCompanionDeviceCommunicationEnded setConnectionType:](v5, "setConnectionType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"didConnectionTimeOut"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCompanionDeviceCommunicationEnded setDidConnectionTimeOut:](v5, "setDidConnectionTimeOut:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (HALSchemaHALCompanionDeviceCommunicationEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(HALSchemaHALCompanionDeviceCommunicationEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(HALSchemaHALCompanionDeviceCommunicationEnded *)self dictionaryRepresentation];
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
  v4 = *(&self->_didConnectionTimeOut + 1);
  if (v4)
  {
    v5 = [(HALSchemaHALCompanionDeviceCommunicationEnded *)self connectionType];
    v6 = @"HALCONNECTIONTYPE_UNKNOWN";
    if (v5 == 1)
    {
      v6 = @"HALCONNECTIONTYPE_INFRAWIFI";
    }

    if (v5 == 2)
    {
      v7 = @"HALCONNECTIONTYPE_AWDL";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"connectionType"];
    v4 = *(&self->_didConnectionTimeOut + 1);
  }

  if ((v4 & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HALSchemaHALCompanionDeviceCommunicationEnded didConnectionTimeOut](self, "didConnectionTimeOut")}];
    [v3 setObject:v8 forKeyedSubscript:@"didConnectionTimeOut"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_didConnectionTimeOut + 1))
  {
    v2 = 2654435761 * self->_connectionType;
    if ((*(&self->_didConnectionTimeOut + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*(&self->_didConnectionTimeOut + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_didConnectionTimeOut;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(&self->_didConnectionTimeOut + 1);
  v6 = v4[13];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    connectionType = self->_connectionType;
    if (connectionType != [v4 connectionType])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v5 = *(&self->_didConnectionTimeOut + 1);
    v6 = v4[13];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    didConnectionTimeOut = self->_didConnectionTimeOut;
    if (didConnectionTimeOut != [v4 didConnectionTimeOut])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = *(&self->_didConnectionTimeOut + 1);
  v6 = v4;
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    v5 = *(&self->_didConnectionTimeOut + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)setHasDidConnectionTimeOut:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didConnectionTimeOut + 1) = *(&self->_didConnectionTimeOut + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end