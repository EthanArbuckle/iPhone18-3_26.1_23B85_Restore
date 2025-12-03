@interface FLOWSchemaFLOWAppContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWAppContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWAppContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppResolutionType:(BOOL)type;
- (void)setHasProtectedAppType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWAppContext

- (FLOWSchemaFLOWAppContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = FLOWSchemaFLOWAppContext;
  v5 = [(FLOWSchemaFLOWAppContext *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWSchemaFLOWAppContext *)v5 setBundleId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWAppContext *)v5 setAppVersion:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isSmartEnoughAppSelectionUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWAppContext setIsSmartEnoughAppSelectionUsed:](v5, "setIsSmartEnoughAppSelectionUsed:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"appResolutionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWAppContext setAppResolutionType:](v5, "setAppResolutionType:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"protectedAppType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWAppContext setProtectedAppType:](v5, "setProtectedAppType:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWAppContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWAppContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWAppContext *)self dictionaryRepresentation];
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

    [dictionary setObject:v5 forKeyedSubscript:@"appResolutionType"];
  }

  if (self->_appVersion)
  {
    appVersion = [(FLOWSchemaFLOWAppContext *)self appVersion];
    v7 = [appVersion copy];
    [dictionary setObject:v7 forKeyedSubscript:@"appVersion"];
  }

  if (self->_bundleId)
  {
    bundleId = [(FLOWSchemaFLOWAppContext *)self bundleId];
    v9 = [bundleId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"bundleId"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWAppContext isSmartEnoughAppSelectionUsed](self, "isSmartEnoughAppSelectionUsed")}];
    [dictionary setObject:v11 forKeyedSubscript:@"isSmartEnoughAppSelectionUsed"];

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

    [dictionary setObject:v13 forKeyedSubscript:@"protectedAppType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  bundleId = [(FLOWSchemaFLOWAppContext *)self bundleId];
  bundleId2 = [equalCopy bundleId];
  if ((bundleId != 0) == (bundleId2 == 0))
  {
    goto LABEL_11;
  }

  bundleId3 = [(FLOWSchemaFLOWAppContext *)self bundleId];
  if (bundleId3)
  {
    v8 = bundleId3;
    bundleId4 = [(FLOWSchemaFLOWAppContext *)self bundleId];
    bundleId5 = [equalCopy bundleId];
    v11 = [bundleId4 isEqual:bundleId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  bundleId = [(FLOWSchemaFLOWAppContext *)self appVersion];
  bundleId2 = [equalCopy appVersion];
  if ((bundleId != 0) == (bundleId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  appVersion = [(FLOWSchemaFLOWAppContext *)self appVersion];
  if (appVersion)
  {
    v13 = appVersion;
    appVersion2 = [(FLOWSchemaFLOWAppContext *)self appVersion];
    appVersion3 = [equalCopy appVersion];
    v16 = [appVersion2 isEqual:appVersion3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[36];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      isSmartEnoughAppSelectionUsed = self->_isSmartEnoughAppSelectionUsed;
      if (isSmartEnoughAppSelectionUsed != [equalCopy isSmartEnoughAppSelectionUsed])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[36];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        appResolutionType = self->_appResolutionType;
        if (appResolutionType != [equalCopy appResolutionType])
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = equalCopy[36];
      }

      v24 = (*&has >> 2) & 1;
      if (v24 == ((v20 >> 2) & 1))
      {
        if (!v24 || (protectedAppType = self->_protectedAppType, protectedAppType == [equalCopy protectedAppType]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  bundleId = [(FLOWSchemaFLOWAppContext *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }

  appVersion = [(FLOWSchemaFLOWAppContext *)self appVersion];

  if (appVersion)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = toCopy;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
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
  v7 = toCopy;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }

LABEL_9:
}

- (void)setHasProtectedAppType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAppResolutionType:(BOOL)type
{
  if (type)
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