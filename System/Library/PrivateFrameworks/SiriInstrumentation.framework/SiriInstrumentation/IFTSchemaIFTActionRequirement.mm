@interface IFTSchemaIFTActionRequirement
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTActionRequirement)initWithDictionary:(id)a3;
- (IFTSchemaIFTActionRequirement)initWithJSON:(id)a3;
- (IFTSchemaIFTAppRequirement)appRequirement;
- (IFTSchemaIFTPermissionRequirement)permissionRequirement;
- (IFTSchemaIFTSystemRequirement)systemRequirement;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAppRequirement;
- (void)deletePermissionRequirement;
- (void)deleteSystemRequirement;
- (void)deleteUnsupported;
- (void)setAppRequirement:(id)a3;
- (void)setPermissionRequirement:(id)a3;
- (void)setSystemRequirement:(id)a3;
- (void)setUnsupported:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTActionRequirement

- (IFTSchemaIFTActionRequirement)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTActionRequirement;
  v5 = [(IFTSchemaIFTActionRequirement *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionRequirement setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"unsupported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionRequirement setUnsupported:](v5, "setUnsupported:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"appRequirement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTAppRequirement alloc] initWithDictionary:v8];
      [(IFTSchemaIFTActionRequirement *)v5 setAppRequirement:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"permissionRequirement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTPermissionRequirement alloc] initWithDictionary:v10];
      [(IFTSchemaIFTActionRequirement *)v5 setPermissionRequirement:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"systemRequirement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTSystemRequirement alloc] initWithDictionary:v12];
      [(IFTSchemaIFTActionRequirement *)v5 setSystemRequirement:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionRequirement)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionRequirement *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTActionRequirement *)self dictionaryRepresentation];
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
  if (self->_appRequirement)
  {
    v4 = [(IFTSchemaIFTActionRequirement *)self appRequirement];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appRequirement"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appRequirement"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionRequirement exists](self, "exists")}];
    [v3 setObject:v7 forKeyedSubscript:@"exists"];
  }

  if (self->_permissionRequirement)
  {
    v8 = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"permissionRequirement"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"permissionRequirement"];
    }
  }

  if (self->_systemRequirement)
  {
    v11 = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"systemRequirement"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"systemRequirement"];
    }
  }

  if (self->_whichOneof_Actionrequirement == 11)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionRequirement unsupported](self, "unsupported")}];
    [v3 setObject:v14 forKeyedSubscript:@"unsupported"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  if (self->_whichOneof_Actionrequirement == 11)
  {
    v4 = 2654435761 * self->_unsupported;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3 ^ [(IFTSchemaIFTAppRequirement *)self->_appRequirement hash];
  v6 = [(IFTSchemaIFTPermissionRequirement *)self->_permissionRequirement hash];
  return v5 ^ v6 ^ [(IFTSchemaIFTSystemRequirement *)self->_systemRequirement hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  whichOneof_Actionrequirement = self->_whichOneof_Actionrequirement;
  if (whichOneof_Actionrequirement != [v4 whichOneof_Actionrequirement])
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_22;
    }
  }

  unsupported = self->_unsupported;
  if (unsupported != [v4 unsupported])
  {
    goto LABEL_22;
  }

  v8 = [(IFTSchemaIFTActionRequirement *)self appRequirement];
  v9 = [v4 appRequirement];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_21;
  }

  v10 = [(IFTSchemaIFTActionRequirement *)self appRequirement];
  if (v10)
  {
    v11 = v10;
    v12 = [(IFTSchemaIFTActionRequirement *)self appRequirement];
    v13 = [v4 appRequirement];
    v14 = [v12 isEqual:v13];

    if (!v14)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v8 = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
  v9 = [v4 permissionRequirement];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_21;
  }

  v15 = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
  if (v15)
  {
    v16 = v15;
    v17 = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
    v18 = [v4 permissionRequirement];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v8 = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
  v9 = [v4 systemRequirement];
  if ((v8 != 0) != (v9 == 0))
  {
    v20 = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
    if (!v20)
    {

LABEL_25:
      v25 = 1;
      goto LABEL_23;
    }

    v21 = v20;
    v22 = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
    v23 = [v4 systemRequirement];
    v24 = [v22 isEqual:v23];

    if (v24)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v25 = 0;
LABEL_23:

  return v25;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_whichOneof_Actionrequirement == 11)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaIFTActionRequirement *)self appRequirement];

  if (v4)
  {
    v5 = [(IFTSchemaIFTActionRequirement *)self appRequirement];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];

  if (v6)
  {
    v7 = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTActionRequirement *)self systemRequirement];

  v9 = v11;
  if (v8)
  {
    v10 = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteSystemRequirement
{
  if (self->_whichOneof_Actionrequirement == 14)
  {
    self->_whichOneof_Actionrequirement = 0;
    self->_systemRequirement = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSystemRequirement)systemRequirement
{
  if (self->_whichOneof_Actionrequirement == 14)
  {
    v3 = self->_systemRequirement;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSystemRequirement:(id)a3
{
  v4 = a3;
  self->_unsupported = 0;
  appRequirement = self->_appRequirement;
  self->_appRequirement = 0;

  permissionRequirement = self->_permissionRequirement;
  self->_permissionRequirement = 0;

  v7 = 14;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichOneof_Actionrequirement = v7;
  systemRequirement = self->_systemRequirement;
  self->_systemRequirement = v4;
}

- (void)deletePermissionRequirement
{
  if (self->_whichOneof_Actionrequirement == 13)
  {
    self->_whichOneof_Actionrequirement = 0;
    self->_permissionRequirement = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPermissionRequirement)permissionRequirement
{
  if (self->_whichOneof_Actionrequirement == 13)
  {
    v3 = self->_permissionRequirement;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPermissionRequirement:(id)a3
{
  v4 = a3;
  self->_unsupported = 0;
  appRequirement = self->_appRequirement;
  self->_appRequirement = 0;

  systemRequirement = self->_systemRequirement;
  self->_systemRequirement = 0;

  v7 = 13;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichOneof_Actionrequirement = v7;
  permissionRequirement = self->_permissionRequirement;
  self->_permissionRequirement = v4;
}

- (void)deleteAppRequirement
{
  if (self->_whichOneof_Actionrequirement == 12)
  {
    self->_whichOneof_Actionrequirement = 0;
    self->_appRequirement = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTAppRequirement)appRequirement
{
  if (self->_whichOneof_Actionrequirement == 12)
  {
    v3 = self->_appRequirement;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppRequirement:(id)a3
{
  v4 = a3;
  self->_unsupported = 0;
  permissionRequirement = self->_permissionRequirement;
  self->_permissionRequirement = 0;

  systemRequirement = self->_systemRequirement;
  self->_systemRequirement = 0;

  v7 = 12;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichOneof_Actionrequirement = v7;
  appRequirement = self->_appRequirement;
  self->_appRequirement = v4;
}

- (void)deleteUnsupported
{
  if (self->_whichOneof_Actionrequirement == 11)
  {
    self->_whichOneof_Actionrequirement = 0;
    self->_unsupported = 0;
  }
}

- (void)setUnsupported:(BOOL)a3
{
  appRequirement = self->_appRequirement;
  self->_appRequirement = 0;

  permissionRequirement = self->_permissionRequirement;
  self->_permissionRequirement = 0;

  systemRequirement = self->_systemRequirement;
  self->_systemRequirement = 0;

  self->_whichOneof_Actionrequirement = 11;
  self->_unsupported = a3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTActionRequirement;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTActionRequirement *)self appRequirement];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTActionRequirement *)self deleteAppRequirement];
  }

  v9 = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTActionRequirement *)self deletePermissionRequirement];
  }

  v12 = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTActionRequirement *)self deleteSystemRequirement];
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