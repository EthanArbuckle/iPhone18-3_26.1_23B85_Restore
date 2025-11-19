@interface SISchemaCarPlayInvocationContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaCarPlayInvocationContext)initWithDictionary:(id)a3;
- (SISchemaCarPlayInvocationContext)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCarPlayConnection:(BOOL)a3;
- (void)setHasEnhancedVoiceTriggerMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaCarPlayInvocationContext

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bundleID)
  {
    v4 = [(SISchemaCarPlayInvocationContext *)self bundleID];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleID"];
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v9 = [(SISchemaCarPlayInvocationContext *)self directAction]- 1;
    if (v9 > 9)
    {
      v10 = @"SIRIDIRECTACTION_UNKNOWN_DIRECT_ACTION";
    }

    else
    {
      v10 = off_1E78E3730[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"directAction"];
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v7 = [(SISchemaCarPlayInvocationContext *)self carPlayConnection]- 1;
  if (v7 > 2)
  {
    v8 = @"CARPLAYCONNECTION_UNKNOWN";
  }

  else
  {
    v8 = off_1E78E3718[v7];
  }

  [v3 setObject:v8 forKeyedSubscript:@"carPlayConnection"];
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_15:
    v11 = [(SISchemaCarPlayInvocationContext *)self enhancedVoiceTriggerMode]- 1;
    if (v11 > 3)
    {
      v12 = @"ENHANCEDVOICETRIGGERMODE_UNKNOWN";
    }

    else
    {
      v12 = off_1E78E3780[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"enhancedVoiceTriggerMode"];
  }

LABEL_19:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (SISchemaCarPlayInvocationContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaCarPlayInvocationContext;
  v5 = [(SISchemaCarPlayInvocationContext *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundleID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaCarPlayInvocationContext *)v5 setBundleID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"directAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaCarPlayInvocationContext setDirectAction:](v5, "setDirectAction:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"enhancedVoiceTriggerMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaCarPlayInvocationContext setEnhancedVoiceTriggerMode:](v5, "setEnhancedVoiceTriggerMode:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"carPlayConnection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaCarPlayInvocationContext setCarPlayConnection:](v5, "setCarPlayConnection:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaCarPlayInvocationContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaCarPlayInvocationContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaCarPlayInvocationContext *)self dictionaryRepresentation];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_directAction;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_enhancedVoiceTriggerMode;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_carPlayConnection;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(SISchemaCarPlayInvocationContext *)self bundleID];
  v6 = [v4 bundleID];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_20;
  }

  v8 = [(SISchemaCarPlayInvocationContext *)self bundleID];
  if (v8)
  {
    v9 = v8;
    v10 = [(SISchemaCarPlayInvocationContext *)self bundleID];
    v11 = [v4 bundleID];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (*&has)
  {
    directAction = self->_directAction;
    if (directAction != [v4 directAction])
    {
      goto LABEL_20;
    }

    has = self->_has;
    v14 = v4[28];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    enhancedVoiceTriggerMode = self->_enhancedVoiceTriggerMode;
    if (enhancedVoiceTriggerMode == [v4 enhancedVoiceTriggerMode])
    {
      has = self->_has;
      v14 = v4[28];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    carPlayConnection = self->_carPlayConnection;
    if (carPlayConnection != [v4 carPlayConnection])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(SISchemaCarPlayInvocationContext *)self bundleID];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v6 = v7;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = v7;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = v7;
  }
}

- (void)setHasCarPlayConnection:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEnhancedVoiceTriggerMode:(BOOL)a3
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