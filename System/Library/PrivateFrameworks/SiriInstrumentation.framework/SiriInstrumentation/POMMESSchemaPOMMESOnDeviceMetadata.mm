@interface POMMESSchemaPOMMESOnDeviceMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESOnDeviceMetadata)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESOnDeviceMetadata)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESOnDeviceMetadata

- (POMMESSchemaPOMMESOnDeviceMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESOnDeviceMetadata;
  v5 = [(POMMESSchemaPOMMESOnDeviceMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"onScreenAppBundleIdDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(POMMESSchemaPOMMESOnDeviceMetadata *)v5 setOnScreenAppBundleIdDomain:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"onScreenUriDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(POMMESSchemaPOMMESOnDeviceMetadata *)v5 setOnScreenUriDomain:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESOnDeviceMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESOnDeviceMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESOnDeviceMetadata *)self dictionaryRepresentation];
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
  if (self->_onScreenAppBundleIdDomain)
  {
    onScreenAppBundleIdDomain = [(POMMESSchemaPOMMESOnDeviceMetadata *)self onScreenAppBundleIdDomain];
    v5 = [onScreenAppBundleIdDomain copy];
    [dictionary setObject:v5 forKeyedSubscript:@"onScreenAppBundleIdDomain"];
  }

  if (self->_onScreenUriDomain)
  {
    onScreenUriDomain = [(POMMESSchemaPOMMESOnDeviceMetadata *)self onScreenUriDomain];
    v7 = [onScreenUriDomain copy];
    [dictionary setObject:v7 forKeyedSubscript:@"onScreenUriDomain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  onScreenAppBundleIdDomain = [(POMMESSchemaPOMMESOnDeviceMetadata *)self onScreenAppBundleIdDomain];
  onScreenAppBundleIdDomain2 = [equalCopy onScreenAppBundleIdDomain];
  if ((onScreenAppBundleIdDomain != 0) == (onScreenAppBundleIdDomain2 == 0))
  {
    goto LABEL_11;
  }

  onScreenAppBundleIdDomain3 = [(POMMESSchemaPOMMESOnDeviceMetadata *)self onScreenAppBundleIdDomain];
  if (onScreenAppBundleIdDomain3)
  {
    v8 = onScreenAppBundleIdDomain3;
    onScreenAppBundleIdDomain4 = [(POMMESSchemaPOMMESOnDeviceMetadata *)self onScreenAppBundleIdDomain];
    onScreenAppBundleIdDomain5 = [equalCopy onScreenAppBundleIdDomain];
    v11 = [onScreenAppBundleIdDomain4 isEqual:onScreenAppBundleIdDomain5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  onScreenAppBundleIdDomain = [(POMMESSchemaPOMMESOnDeviceMetadata *)self onScreenUriDomain];
  onScreenAppBundleIdDomain2 = [equalCopy onScreenUriDomain];
  if ((onScreenAppBundleIdDomain != 0) != (onScreenAppBundleIdDomain2 == 0))
  {
    onScreenUriDomain = [(POMMESSchemaPOMMESOnDeviceMetadata *)self onScreenUriDomain];
    if (!onScreenUriDomain)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = onScreenUriDomain;
    onScreenUriDomain2 = [(POMMESSchemaPOMMESOnDeviceMetadata *)self onScreenUriDomain];
    onScreenUriDomain3 = [equalCopy onScreenUriDomain];
    v16 = [onScreenUriDomain2 isEqual:onScreenUriDomain3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  onScreenAppBundleIdDomain = [(POMMESSchemaPOMMESOnDeviceMetadata *)self onScreenAppBundleIdDomain];

  if (onScreenAppBundleIdDomain)
  {
    PBDataWriterWriteStringField();
  }

  onScreenUriDomain = [(POMMESSchemaPOMMESOnDeviceMetadata *)self onScreenUriDomain];

  if (onScreenUriDomain)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end