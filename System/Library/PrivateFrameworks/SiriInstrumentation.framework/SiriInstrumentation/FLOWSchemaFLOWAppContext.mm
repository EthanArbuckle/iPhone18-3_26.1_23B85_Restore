@interface FLOWSchemaFLOWAppContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWAppContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWAppContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppResolutionType:(BOOL)a3;
- (void)setHasProtectedAppType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWAppContext

- (FLOWSchemaFLOWAppContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FLOWSchemaFLOWAppContext;
  v5 = [(FLOWSchemaFLOWAppContext *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWSchemaFLOWAppContext *)v5 setBundleId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"appVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWAppContext *)v5 setAppVersion:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isSmartEnoughAppSelectionUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWAppContext setIsSmartEnoughAppSelectionUsed:](v5, "setIsSmartEnoughAppSelectionUsed:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"appResolutionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWAppContext setAppResolutionType:](v5, "setAppResolutionType:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"protectedAppType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWAppContext setProtectedAppType:](v5, "setProtectedAppType:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWAppContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWAppContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWAppContext *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [(FLOWSchemaFLOWAppContext *)self appResolutionType]- 1;
    if (v4 > 0xD)
    {
      v5 = @"FLOWAPPRESOLUTIONTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D4EB8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"appResolutionType"];
  }

  if (self->_appVersion)
  {
    v6 = [(FLOWSchemaFLOWAppContext *)self appVersion];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"appVersion"];
  }

  if (self->_bundleId)
  {
    v8 = [(FLOWSchemaFLOWAppContext *)self bundleId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"bundleId"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWAppContext isSmartEnoughAppSelectionUsed](self, "isSmartEnoughAppSelectionUsed")}];
    [v3 setObject:v11 forKeyedSubscript:@"isSmartEnoughAppSelectionUsed"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v12 = [(FLOWSchemaFLOWAppContext *)self protectedAppType]- 1;
    if (v12 > 2)
    {
      v13 = @"FLOWPROTECTEDAPPTYPE_UNKNOWN";
    }

    else
    {
      v13 = off_1E78D4F28[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"protectedAppType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(NSString *)self->_appVersion hash];
  if ((*&self->_has & 1) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_isSmartEnoughAppSelectionUsed;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761 * self->_appResolutionType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 2654435761 * self->_protectedAppType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(FLOWSchemaFLOWAppContext *)self bundleId];
  v6 = [v4 bundleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(FLOWSchemaFLOWAppContext *)self bundleId];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWAppContext *)self bundleId];
    v10 = [v4 bundleId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWAppContext *)self appVersion];
  v6 = [v4 appVersion];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(FLOWSchemaFLOWAppContext *)self appVersion];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLOWSchemaFLOWAppContext *)self appVersion];
    v15 = [v4 appVersion];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[36];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      isSmartEnoughAppSelectionUsed = self->_isSmartEnoughAppSelectionUsed;
      if (isSmartEnoughAppSelectionUsed != [v4 isSmartEnoughAppSelectionUsed])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[36];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        appResolutionType = self->_appResolutionType;
        if (appResolutionType != [v4 appResolutionType])
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = v4[36];
      }

      v24 = (*&has >> 2) & 1;
      if (v24 == ((v20 >> 2) & 1))
      {
        if (!v24 || (protectedAppType = self->_protectedAppType, protectedAppType == [v4 protectedAppType]))
        {
          v17 = 1;
          goto LABEL_13;
        }
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(FLOWSchemaFLOWAppContext *)self bundleId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(FLOWSchemaFLOWAppContext *)self appVersion];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = v8;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    v7 = v8;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  v7 = v8;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }

LABEL_9:
}

- (void)setHasProtectedAppType:(BOOL)a3
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

- (void)setHasAppResolutionType:(BOOL)a3
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