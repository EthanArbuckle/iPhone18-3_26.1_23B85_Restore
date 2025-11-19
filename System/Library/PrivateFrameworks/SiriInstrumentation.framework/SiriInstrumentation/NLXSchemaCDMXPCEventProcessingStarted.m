@interface NLXSchemaCDMXPCEventProcessingStarted
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMXPCEventProcessingStarted)initWithDictionary:(id)a3;
- (NLXSchemaCDMXPCEventProcessingStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasServiceName:(BOOL)a3;
- (void)setHasXpcSystemEventType:(BOOL)a3;
- (void)setHasXpcType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMXPCEventProcessingStarted

- (NLXSchemaCDMXPCEventProcessingStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMXPCEventProcessingStarted;
  v5 = [(NLXSchemaCDMXPCEventProcessingStarted *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"processingType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMXPCEventProcessingStarted setProcessingType:](v5, "setProcessingType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"xpcType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMXPCEventProcessingStarted setXpcType:](v5, "setXpcType:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"xpcSystemEventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMXPCEventProcessingStarted setXpcSystemEventType:](v5, "setXpcSystemEventType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"serviceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMXPCEventProcessingStarted setServiceName:](v5, "setServiceName:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaCDMXPCEventProcessingStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMXPCEventProcessingStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMXPCEventProcessingStarted *)self dictionaryRepresentation];
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
    if ([(NLXSchemaCDMXPCEventProcessingStarted *)self processingType]== 1)
    {
      v9 = @"CDMXPCEVENTPROCESSINGTYPE_OVERRIDES_SETUP";
    }

    else
    {
      v9 = @"CDMXPCEVENTPROCESSINGTYPE_UNKNOWN";
    }

    [v3 setObject:v9 forKeyedSubscript:@"processingType"];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v10 = [(NLXSchemaCDMXPCEventProcessingStarted *)self serviceName]- 1;
  if (v10 > 0x29)
  {
    v11 = @"CDMSERVICENAME_UNKNOWN";
  }

  else
  {
    v11 = off_1E78DC398[v10];
  }

  [v3 setObject:v11 forKeyedSubscript:@"serviceName"];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

LABEL_22:
  v12 = [(NLXSchemaCDMXPCEventProcessingStarted *)self xpcSystemEventType]- 1;
  if (v12 > 5)
  {
    v13 = @"CDMXPCSYSTEMEVENTTYPE_UNKNOWN";
  }

  else
  {
    v13 = off_1E78DC4E8[v12];
  }

  [v3 setObject:v13 forKeyedSubscript:@"xpcSystemEventType"];
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v5 = [(NLXSchemaCDMXPCEventProcessingStarted *)self xpcType];
  v6 = @"CDMXPCTYPE_UNKNOWN";
  if (v5 == 1)
  {
    v6 = @"CDMXPCTYPE_EVENT";
  }

  if (v5 == 2)
  {
    v7 = @"CDMXPCTYPE_ACTIVITY";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"xpcType"];
LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_processingType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_xpcType;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_xpcSystemEventType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_serviceName;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    processingType = self->_processingType;
    if (processingType != [v4 processingType])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    xpcType = self->_xpcType;
    if (xpcType != [v4 xpcType])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    xpcSystemEventType = self->_xpcSystemEventType;
    if (xpcSystemEventType == [v4 xpcSystemEventType])
    {
      has = self->_has;
      v6 = v4[24];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    serviceName = self->_serviceName;
    if (serviceName != [v4 serviceName])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)setHasServiceName:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasXpcSystemEventType:(BOOL)a3
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

- (void)setHasXpcType:(BOOL)a3
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