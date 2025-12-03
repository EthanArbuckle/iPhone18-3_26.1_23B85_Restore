@interface RGSiriSchemaRGCatalogStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RGSiriSchemaRGCatalogStarted)initWithDictionary:(id)dictionary;
- (RGSiriSchemaRGCatalogStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RGSiriSchemaRGCatalogStarted

- (RGSiriSchemaRGCatalogStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = RGSiriSchemaRGCatalogStarted;
  v5 = [(RGSiriSchemaRGCatalogStarted *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGCatalogStarted setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"responseCatalogMobileAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(RGSiriSchemaRGCatalogStarted *)v5 setResponseCatalogMobileAssetVersion:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGCatalogStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGCatalogStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RGSiriSchemaRGCatalogStarted *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[RGSiriSchemaRGCatalogStarted exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_responseCatalogMobileAssetVersion)
  {
    responseCatalogMobileAssetVersion = [(RGSiriSchemaRGCatalogStarted *)self responseCatalogMobileAssetVersion];
    v6 = [responseCatalogMobileAssetVersion copy];
    [dictionary setObject:v6 forKeyedSubscript:@"responseCatalogMobileAssetVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_exists;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_responseCatalogMobileAssetVersion hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (exists = self->_exists, exists == [equalCopy exists]))
      {
        responseCatalogMobileAssetVersion = [(RGSiriSchemaRGCatalogStarted *)self responseCatalogMobileAssetVersion];
        responseCatalogMobileAssetVersion2 = [equalCopy responseCatalogMobileAssetVersion];
        v8 = responseCatalogMobileAssetVersion2;
        if ((responseCatalogMobileAssetVersion != 0) != (responseCatalogMobileAssetVersion2 == 0))
        {
          responseCatalogMobileAssetVersion3 = [(RGSiriSchemaRGCatalogStarted *)self responseCatalogMobileAssetVersion];
          if (!responseCatalogMobileAssetVersion3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = responseCatalogMobileAssetVersion3;
          responseCatalogMobileAssetVersion4 = [(RGSiriSchemaRGCatalogStarted *)self responseCatalogMobileAssetVersion];
          responseCatalogMobileAssetVersion5 = [equalCopy responseCatalogMobileAssetVersion];
          v13 = [responseCatalogMobileAssetVersion4 isEqual:responseCatalogMobileAssetVersion5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  responseCatalogMobileAssetVersion = [(RGSiriSchemaRGCatalogStarted *)self responseCatalogMobileAssetVersion];

  v5 = toCopy;
  if (responseCatalogMobileAssetVersion)
  {
    PBDataWriterWriteStringField();
    v5 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end