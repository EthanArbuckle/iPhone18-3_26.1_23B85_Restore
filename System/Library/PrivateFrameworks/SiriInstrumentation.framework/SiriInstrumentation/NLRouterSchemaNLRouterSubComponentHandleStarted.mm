@interface NLRouterSchemaNLRouterSubComponentHandleStarted
- (BOOL)isEqual:(id)a3;
- (NLRouterSchemaNLRouterSubComponentHandleStarted)initWithDictionary:(id)a3;
- (NLRouterSchemaNLRouterSubComponentHandleStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NLRouterSchemaNLRouterSubComponentHandleStarted

- (NLRouterSchemaNLRouterSubComponentHandleStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NLRouterSchemaNLRouterSubComponentHandleStarted;
  v5 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"nlRouterSubComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterSubComponentHandleStarted setNlRouterSubComponent:](v5, "setNlRouterSubComponent:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"assetVersion"];
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

- (NLRouterSchemaNLRouterSubComponentHandleStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self dictionaryRepresentation];
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
  if (self->_assetVersion)
  {
    v4 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self assetVersion];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"assetVersion"];
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

    [v3 setObject:v7 forKeyedSubscript:@"nlRouterSubComponent"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (nlRouterSubComponent = self->_nlRouterSubComponent, nlRouterSubComponent == [v4 nlRouterSubComponent]))
      {
        v6 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self assetVersion];
        v7 = [v4 assetVersion];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self assetVersion];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self assetVersion];
          v12 = [v4 assetVersion];
          v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self assetVersion];

  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end