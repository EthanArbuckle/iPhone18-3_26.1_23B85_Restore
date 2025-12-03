@interface POMMESSchemaPOMMESResourceDownloadStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESResourceDownloadStarted)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESResourceDownloadStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESResourceDownloadStarted

- (POMMESSchemaPOMMESResourceDownloadStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESResourceDownloadStarted;
  v5 = [(POMMESSchemaPOMMESResourceDownloadStarted *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"resourceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESResourceDownloadStarted setResourceType:](v5, "setResourceType:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESResourceDownloadStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESResourceDownloadStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESResourceDownloadStarted *)self dictionaryRepresentation];
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
    if ([(POMMESSchemaPOMMESResourceDownloadStarted *)self resourceType]== 1)
    {
      v4 = @"POMMESRESOURCEDOWNLOADTYPE_KG_HERO_IMAGE";
    }

    else
    {
      v4 = @"POMMESRESOURCEDOWNLOADTYPE_UNKNOWN";
    }

    [dictionary setObject:v4 forKeyedSubscript:@"resourceType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_resourceType;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (resourceType = self->_resourceType, resourceType == [equalCopy resourceType]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end