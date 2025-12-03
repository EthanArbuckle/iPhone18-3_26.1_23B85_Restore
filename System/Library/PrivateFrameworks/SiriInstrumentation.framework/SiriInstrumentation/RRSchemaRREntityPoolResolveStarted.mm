@interface RRSchemaRREntityPoolResolveStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaRREntityPoolResolveStarted)initWithDictionary:(id)dictionary;
- (RRSchemaRREntityPoolResolveStarted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaRREntityPoolResolveStarted

- (RRSchemaRREntityPoolResolveStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RRSchemaRREntityPoolResolveStarted;
  v5 = [(RRSchemaRREntityPoolResolveStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usoQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[USOSchemaUSOGraph alloc] initWithDictionary:v6];
      [(RRSchemaRREntityPoolResolveStarted *)v5 setUsoQuery:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (RRSchemaRREntityPoolResolveStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaRREntityPoolResolveStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaRREntityPoolResolveStarted *)self dictionaryRepresentation];
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
  if (self->_usoQuery)
  {
    usoQuery = [(RRSchemaRREntityPoolResolveStarted *)self usoQuery];
    dictionaryRepresentation = [usoQuery dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"usoQuery"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"usoQuery"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    usoQuery = [(RRSchemaRREntityPoolResolveStarted *)self usoQuery];
    usoQuery2 = [equalCopy usoQuery];
    v7 = usoQuery2;
    if ((usoQuery != 0) != (usoQuery2 == 0))
    {
      usoQuery3 = [(RRSchemaRREntityPoolResolveStarted *)self usoQuery];
      if (!usoQuery3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = usoQuery3;
      usoQuery4 = [(RRSchemaRREntityPoolResolveStarted *)self usoQuery];
      usoQuery5 = [equalCopy usoQuery];
      v12 = [usoQuery4 isEqual:usoQuery5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  usoQuery = [(RRSchemaRREntityPoolResolveStarted *)self usoQuery];

  if (usoQuery)
  {
    usoQuery2 = [(RRSchemaRREntityPoolResolveStarted *)self usoQuery];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = RRSchemaRREntityPoolResolveStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(RRSchemaRREntityPoolResolveStarted *)self usoQuery:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(RRSchemaRREntityPoolResolveStarted *)self deleteUsoQuery];
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