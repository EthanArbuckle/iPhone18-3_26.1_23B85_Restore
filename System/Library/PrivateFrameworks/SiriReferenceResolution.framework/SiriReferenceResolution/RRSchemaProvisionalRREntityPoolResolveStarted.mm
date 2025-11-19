@interface RRSchemaProvisionalRREntityPoolResolveStarted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RRSchemaProvisionalRREntityPoolResolveStarted)initWithDictionary:(id)a3;
- (RRSchemaProvisionalRREntityPoolResolveStarted)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation RRSchemaProvisionalRREntityPoolResolveStarted

- (RRSchemaProvisionalRREntityPoolResolveStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RRSchemaProvisionalRREntityPoolResolveStarted;
  v5 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"usoQuery"];
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

- (RRSchemaProvisionalRREntityPoolResolveStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self dictionaryRepresentation];
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
  if (self->_usoQuery)
  {
    v4 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"usoQuery"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"usoQuery"];
    }
  }

  [(RRSchemaProvisionalRREntityPoolResolveStarted *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];
    v6 = [v4 usoQuery];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];
      v11 = [v4 usoQuery];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];

  if (v4)
  {
    v5 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self usoQuery];
    PBDataWriterWriteSubmessage();
  }
}

@end