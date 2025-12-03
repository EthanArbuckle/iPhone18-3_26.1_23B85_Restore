@interface NLRouterSchemaNLRouterSubComponentHandleStarted
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterSubComponentHandleStarted)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterSubComponentHandleStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLRouterSchemaNLRouterSubComponentHandleStarted

- (NLRouterSchemaNLRouterSubComponentHandleStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = NLRouterSchemaNLRouterSubComponentHandleStarted;
  v5 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterSubComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterSubComponentHandleStarted setNlRouterSubComponent:](v5, "setNlRouterSubComponent:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(NLRouterSchemaNLRouterSubComponentHandleStarted *)v5 setAssetVersion:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterSubComponentHandleStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self dictionaryRepresentation];
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
  if (self->_assetVersion)
  {
    assetVersion = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self assetVersion];
    v5 = [assetVersion copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assetVersion"];
  }

  if (*&self->_has)
  {
    v6 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self nlRouterSubComponent]- 1;
    if (v6 > 5)
    {
      v7 = @"NLROUTERSUBCOMPONENT_UNKNOWN";
    }

    else
    {
      v7 = off_1E78DB720[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"nlRouterSubComponent"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_nlRouterSubComponent;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_assetVersion hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (nlRouterSubComponent = self->_nlRouterSubComponent, nlRouterSubComponent == [equalCopy nlRouterSubComponent]))
      {
        assetVersion = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self assetVersion];
        assetVersion2 = [equalCopy assetVersion];
        v8 = assetVersion2;
        if ((assetVersion != 0) != (assetVersion2 == 0))
        {
          assetVersion3 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self assetVersion];
          if (!assetVersion3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = assetVersion3;
          assetVersion4 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self assetVersion];
          assetVersion5 = [equalCopy assetVersion];
          v13 = [assetVersion4 isEqual:assetVersion5];

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
    PBDataWriterWriteInt32Field();
  }

  assetVersion = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self assetVersion];

  v5 = toCopy;
  if (assetVersion)
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