@interface RRSchemaProvisionalRREntityPoolResolveStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalRREntityPoolResolveStarted)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalRREntityPoolResolveStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalRREntityPoolResolveStarted

- (RRSchemaProvisionalRREntityPoolResolveStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RRSchemaProvisionalRREntityPoolResolveStarted;
  v5 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usoQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E69CF840]) initWithDictionary:v6];
      [(RRSchemaProvisionalRREntityPoolResolveStarted *)v5 setUsoQuery:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalRREntityPoolResolveStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self dictionaryRepresentation];
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
    usoQuery = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];
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

  [(RRSchemaProvisionalRREntityPoolResolveStarted *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    usoQuery = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];
    usoQuery2 = [equalCopy usoQuery];
    v7 = usoQuery2;
    if ((usoQuery != 0) != (usoQuery2 == 0))
    {
      usoQuery3 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];
      if (!usoQuery3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = usoQuery3;
      usoQuery4 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];
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
  usoQuery = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];

  if (usoQuery)
  {
    usoQuery2 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];
    PBDataWriterWriteSubmessage();
  }
}

@end