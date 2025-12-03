@interface RGSiriSchemaRGOverrideStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RGSiriSchemaRGOverrideStarted)initWithDictionary:(id)dictionary;
- (RGSiriSchemaRGOverrideStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RGSiriSchemaRGOverrideStarted

- (RGSiriSchemaRGOverrideStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = RGSiriSchemaRGOverrideStarted;
  v5 = [(RGSiriSchemaRGOverrideStarted *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGOverrideStarted setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"overridesMobileAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(RGSiriSchemaRGOverrideStarted *)v5 setOverridesMobileAssetVersion:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGOverrideStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGOverrideStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RGSiriSchemaRGOverrideStarted *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[RGSiriSchemaRGOverrideStarted exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_overridesMobileAssetVersion)
  {
    overridesMobileAssetVersion = [(RGSiriSchemaRGOverrideStarted *)self overridesMobileAssetVersion];
    v6 = [overridesMobileAssetVersion copy];
    [dictionary setObject:v6 forKeyedSubscript:@"overridesMobileAssetVersion"];
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

  return [(NSString *)self->_overridesMobileAssetVersion hash]^ v2;
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
        overridesMobileAssetVersion = [(RGSiriSchemaRGOverrideStarted *)self overridesMobileAssetVersion];
        overridesMobileAssetVersion2 = [equalCopy overridesMobileAssetVersion];
        v8 = overridesMobileAssetVersion2;
        if ((overridesMobileAssetVersion != 0) != (overridesMobileAssetVersion2 == 0))
        {
          overridesMobileAssetVersion3 = [(RGSiriSchemaRGOverrideStarted *)self overridesMobileAssetVersion];
          if (!overridesMobileAssetVersion3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = overridesMobileAssetVersion3;
          overridesMobileAssetVersion4 = [(RGSiriSchemaRGOverrideStarted *)self overridesMobileAssetVersion];
          overridesMobileAssetVersion5 = [equalCopy overridesMobileAssetVersion];
          v13 = [overridesMobileAssetVersion4 isEqual:overridesMobileAssetVersion5];

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

  overridesMobileAssetVersion = [(RGSiriSchemaRGOverrideStarted *)self overridesMobileAssetVersion];

  v5 = toCopy;
  if (overridesMobileAssetVersion)
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