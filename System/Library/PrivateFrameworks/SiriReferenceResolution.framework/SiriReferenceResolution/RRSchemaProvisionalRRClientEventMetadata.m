@interface RRSchemaProvisionalRRClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RRSchemaProvisionalRRClientEventMetadata)initWithDictionary:(id)a3;
- (RRSchemaProvisionalRRClientEventMetadata)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation RRSchemaProvisionalRRClientEventMetadata

- (RRSchemaProvisionalRRClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RRSchemaProvisionalRRClientEventMetadata;
  v5 = [(RRSchemaProvisionalRRClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rrID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E69CF640]) initWithDictionary:v6];
      [(RRSchemaProvisionalRRClientEventMetadata *)v5 setRrID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E69CF640]) initWithDictionary:v8];
      [(RRSchemaProvisionalRRClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalRRClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRRClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RRSchemaProvisionalRRClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_requestId)
  {
    v4 = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_rrID)
  {
    v7 = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"rrID"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"rrID"];
    }
  }

  [(RRSchemaProvisionalRRClientEventMetadata *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];
  v6 = [v4 rrID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];
  if (v7)
  {
    v8 = v7;
    v9 = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];
    v10 = [v4 rrID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];
    v15 = [v4 requestId];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];

  if (v4)
  {
    v5 = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];

  if (v6)
  {
    v7 = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }
}

@end