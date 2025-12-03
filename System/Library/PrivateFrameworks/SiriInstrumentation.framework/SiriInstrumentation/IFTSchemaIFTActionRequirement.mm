@interface IFTSchemaIFTActionRequirement
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTActionRequirement)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTActionRequirement)initWithJSON:(id)n;
- (IFTSchemaIFTAppRequirement)appRequirement;
- (IFTSchemaIFTPermissionRequirement)permissionRequirement;
- (IFTSchemaIFTSystemRequirement)systemRequirement;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAppRequirement;
- (void)deletePermissionRequirement;
- (void)deleteSystemRequirement;
- (void)deleteUnsupported;
- (void)setAppRequirement:(id)requirement;
- (void)setPermissionRequirement:(id)requirement;
- (void)setSystemRequirement:(id)requirement;
- (void)setUnsupported:(BOOL)unsupported;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTActionRequirement

- (IFTSchemaIFTActionRequirement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTActionRequirement;
  v5 = [(IFTSchemaIFTActionRequirement *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionRequirement setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"unsupported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionRequirement setUnsupported:](v5, "setUnsupported:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appRequirement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTAppRequirement alloc] initWithDictionary:v8];
      [(IFTSchemaIFTActionRequirement *)v5 setAppRequirement:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"permissionRequirement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTPermissionRequirement alloc] initWithDictionary:v10];
      [(IFTSchemaIFTActionRequirement *)v5 setPermissionRequirement:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"systemRequirement"];
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

- (IFTSchemaIFTActionRequirement)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionRequirement *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTActionRequirement *)self dictionaryRepresentation];
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
  if (self->_appRequirement)
  {
    appRequirement = [(IFTSchemaIFTActionRequirement *)self appRequirement];
    dictionaryRepresentation = [appRequirement dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appRequirement"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appRequirement"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionRequirement exists](self, "exists")}];
    [dictionary setObject:v7 forKeyedSubscript:@"exists"];
  }

  if (self->_permissionRequirement)
  {
    permissionRequirement = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
    dictionaryRepresentation2 = [permissionRequirement dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"permissionRequirement"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"permissionRequirement"];
    }
  }

  if (self->_systemRequirement)
  {
    systemRequirement = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
    dictionaryRepresentation3 = [systemRequirement dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"systemRequirement"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"systemRequirement"];
    }
  }

  if (self->_whichOneof_Actionrequirement == 11)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionRequirement unsupported](self, "unsupported")}];
    [dictionary setObject:v14 forKeyedSubscript:@"unsupported"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  whichOneof_Actionrequirement = self->_whichOneof_Actionrequirement;
  if (whichOneof_Actionrequirement != [equalCopy whichOneof_Actionrequirement])
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_22;
    }
  }

  unsupported = self->_unsupported;
  if (unsupported != [equalCopy unsupported])
  {
    goto LABEL_22;
  }

  appRequirement = [(IFTSchemaIFTActionRequirement *)self appRequirement];
  appRequirement2 = [equalCopy appRequirement];
  if ((appRequirement != 0) == (appRequirement2 == 0))
  {
    goto LABEL_21;
  }

  appRequirement3 = [(IFTSchemaIFTActionRequirement *)self appRequirement];
  if (appRequirement3)
  {
    v11 = appRequirement3;
    appRequirement4 = [(IFTSchemaIFTActionRequirement *)self appRequirement];
    appRequirement5 = [equalCopy appRequirement];
    v14 = [appRequirement4 isEqual:appRequirement5];

    if (!v14)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  appRequirement = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
  appRequirement2 = [equalCopy permissionRequirement];
  if ((appRequirement != 0) == (appRequirement2 == 0))
  {
    goto LABEL_21;
  }

  permissionRequirement = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
  if (permissionRequirement)
  {
    v16 = permissionRequirement;
    permissionRequirement2 = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
    permissionRequirement3 = [equalCopy permissionRequirement];
    v19 = [permissionRequirement2 isEqual:permissionRequirement3];

    if (!v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  appRequirement = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
  appRequirement2 = [equalCopy systemRequirement];
  if ((appRequirement != 0) != (appRequirement2 == 0))
  {
    systemRequirement = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
    if (!systemRequirement)
    {

LABEL_25:
      v25 = 1;
      goto LABEL_23;
    }

    v21 = systemRequirement;
    systemRequirement2 = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
    systemRequirement3 = [equalCopy systemRequirement];
    v24 = [systemRequirement2 isEqual:systemRequirement3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_whichOneof_Actionrequirement == 11)
  {
    PBDataWriterWriteBOOLField();
  }

  appRequirement = [(IFTSchemaIFTActionRequirement *)self appRequirement];

  if (appRequirement)
  {
    appRequirement2 = [(IFTSchemaIFTActionRequirement *)self appRequirement];
    PBDataWriterWriteSubmessage();
  }

  permissionRequirement = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];

  if (permissionRequirement)
  {
    permissionRequirement2 = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
    PBDataWriterWriteSubmessage();
  }

  systemRequirement = [(IFTSchemaIFTActionRequirement *)self systemRequirement];

  v9 = toCopy;
  if (systemRequirement)
  {
    systemRequirement2 = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
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

- (void)setSystemRequirement:(id)requirement
{
  requirementCopy = requirement;
  self->_unsupported = 0;
  appRequirement = self->_appRequirement;
  self->_appRequirement = 0;

  permissionRequirement = self->_permissionRequirement;
  self->_permissionRequirement = 0;

  v7 = 14;
  if (!requirementCopy)
  {
    v7 = 0;
  }

  self->_whichOneof_Actionrequirement = v7;
  systemRequirement = self->_systemRequirement;
  self->_systemRequirement = requirementCopy;
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

- (void)setPermissionRequirement:(id)requirement
{
  requirementCopy = requirement;
  self->_unsupported = 0;
  appRequirement = self->_appRequirement;
  self->_appRequirement = 0;

  systemRequirement = self->_systemRequirement;
  self->_systemRequirement = 0;

  v7 = 13;
  if (!requirementCopy)
  {
    v7 = 0;
  }

  self->_whichOneof_Actionrequirement = v7;
  permissionRequirement = self->_permissionRequirement;
  self->_permissionRequirement = requirementCopy;
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

- (void)setAppRequirement:(id)requirement
{
  requirementCopy = requirement;
  self->_unsupported = 0;
  permissionRequirement = self->_permissionRequirement;
  self->_permissionRequirement = 0;

  systemRequirement = self->_systemRequirement;
  self->_systemRequirement = 0;

  v7 = 12;
  if (!requirementCopy)
  {
    v7 = 0;
  }

  self->_whichOneof_Actionrequirement = v7;
  appRequirement = self->_appRequirement;
  self->_appRequirement = requirementCopy;
}

- (void)deleteUnsupported
{
  if (self->_whichOneof_Actionrequirement == 11)
  {
    self->_whichOneof_Actionrequirement = 0;
    self->_unsupported = 0;
  }
}

- (void)setUnsupported:(BOOL)unsupported
{
  appRequirement = self->_appRequirement;
  self->_appRequirement = 0;

  permissionRequirement = self->_permissionRequirement;
  self->_permissionRequirement = 0;

  systemRequirement = self->_systemRequirement;
  self->_systemRequirement = 0;

  self->_whichOneof_Actionrequirement = 11;
  self->_unsupported = unsupported;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTActionRequirement;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  appRequirement = [(IFTSchemaIFTActionRequirement *)self appRequirement];
  v7 = [appRequirement applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTActionRequirement *)self deleteAppRequirement];
  }

  permissionRequirement = [(IFTSchemaIFTActionRequirement *)self permissionRequirement];
  v10 = [permissionRequirement applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTActionRequirement *)self deletePermissionRequirement];
  }

  systemRequirement = [(IFTSchemaIFTActionRequirement *)self systemRequirement];
  v13 = [systemRequirement applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
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