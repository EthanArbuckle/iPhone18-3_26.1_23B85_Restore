@interface RRSchemaProvisionalRRUsoGraphTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalRRUsoGraphTier1)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalRRUsoGraphTier1)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalRRUsoGraphTier1

- (RRSchemaProvisionalRRUsoGraphTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RRSchemaProvisionalRRUsoGraphTier1;
  v5 = [(RRSchemaProvisionalRRUsoGraphTier1 *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E69CF850]) initWithDictionary:v6];
      [(RRSchemaProvisionalRRUsoGraphTier1 *)v5 setUsoGraphTier1:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalRRUsoGraphTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRRUsoGraphTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalRRUsoGraphTier1 *)self dictionaryRepresentation];
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
  if (self->_usoGraphTier1)
  {
    usoGraphTier1 = [(RRSchemaProvisionalRRUsoGraphTier1 *)self usoGraphTier1];
    dictionaryRepresentation = [usoGraphTier1 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"usoGraphTier1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"usoGraphTier1"];
    }
  }

  [(RRSchemaProvisionalRRUsoGraphTier1 *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    usoGraphTier1 = [(RRSchemaProvisionalRRUsoGraphTier1 *)self usoGraphTier1];
    usoGraphTier12 = [equalCopy usoGraphTier1];
    v7 = usoGraphTier12;
    if ((usoGraphTier1 != 0) != (usoGraphTier12 == 0))
    {
      usoGraphTier13 = [(RRSchemaProvisionalRRUsoGraphTier1 *)self usoGraphTier1];
      if (!usoGraphTier13)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = usoGraphTier13;
      usoGraphTier14 = [(RRSchemaProvisionalRRUsoGraphTier1 *)self usoGraphTier1];
      usoGraphTier15 = [equalCopy usoGraphTier1];
      v12 = [usoGraphTier14 isEqual:usoGraphTier15];

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
  usoGraphTier1 = [(RRSchemaProvisionalRRUsoGraphTier1 *)self usoGraphTier1];

  if (usoGraphTier1)
  {
    usoGraphTier12 = [(RRSchemaProvisionalRRUsoGraphTier1 *)self usoGraphTier1];
    PBDataWriterWriteSubmessage();
  }
}

@end