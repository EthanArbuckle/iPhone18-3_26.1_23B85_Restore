@interface NLRouterSchemaNLRouterSubComponentSetupStarted
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterSubComponentSetupStarted)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterSubComponentSetupStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLRouterSchemaNLRouterSubComponentSetupStarted

- (NLRouterSchemaNLRouterSubComponentSetupStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = NLRouterSchemaNLRouterSubComponentSetupStarted;
  v5 = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterSubComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterSubComponentSetupStarted setNlRouterSubComponent:](v5, "setNlRouterSubComponent:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaVersion alloc] initWithDictionary:v7];
      [(NLRouterSchemaNLRouterSubComponentSetupStarted *)v5 setAssetVersion:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterSubComponentSetupStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self dictionaryRepresentation];
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
    assetVersion = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self assetVersion];
    dictionaryRepresentation = [assetVersion dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assetVersion"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assetVersion"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self nlRouterSubComponent]- 1;
    if (v7 > 5)
    {
      v8 = @"NLROUTERSUBCOMPONENT_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DB750[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"nlRouterSubComponent"];
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

  return [(SISchemaVersion *)self->_assetVersion hash]^ v2;
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
        assetVersion = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self assetVersion];
        assetVersion2 = [equalCopy assetVersion];
        v8 = assetVersion2;
        if ((assetVersion != 0) != (assetVersion2 == 0))
        {
          assetVersion3 = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self assetVersion];
          if (!assetVersion3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = assetVersion3;
          assetVersion4 = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self assetVersion];
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

  assetVersion = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self assetVersion];

  v5 = toCopy;
  if (assetVersion)
  {
    assetVersion2 = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self assetVersion];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLRouterSchemaNLRouterSubComponentSetupStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self assetVersion:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self deleteAssetVersion];
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