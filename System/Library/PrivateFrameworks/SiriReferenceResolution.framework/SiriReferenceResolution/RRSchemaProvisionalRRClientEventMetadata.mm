@interface RRSchemaProvisionalRRClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalRRClientEventMetadata)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalRRClientEventMetadata)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalRRClientEventMetadata

- (RRSchemaProvisionalRRClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = RRSchemaProvisionalRRClientEventMetadata;
  v5 = [(RRSchemaProvisionalRRClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rrID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E69CF640]) initWithDictionary:v6];
      [(RRSchemaProvisionalRRClientEventMetadata *)v5 setRrID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
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

- (RRSchemaProvisionalRRClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRRClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalRRClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_requestId)
  {
    requestId = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];
    dictionaryRepresentation = [requestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"requestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_rrID)
  {
    rrID = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];
    dictionaryRepresentation2 = [rrID dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"rrID"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"rrID"];
    }
  }

  [(RRSchemaProvisionalRRClientEventMetadata *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  rrID = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];
  rrID2 = [equalCopy rrID];
  if ((rrID != 0) == (rrID2 == 0))
  {
    goto LABEL_11;
  }

  rrID3 = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];
  if (rrID3)
  {
    v8 = rrID3;
    rrID4 = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];
    rrID5 = [equalCopy rrID];
    v11 = [rrID4 isEqual:rrID5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  rrID = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];
  rrID2 = [equalCopy requestId];
  if ((rrID != 0) != (rrID2 == 0))
  {
    requestId = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];
    if (!requestId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = requestId;
    requestId2 = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v16 = [requestId2 isEqual:requestId3];

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
  rrID = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];

  if (rrID)
  {
    rrID2 = [(RRSchemaProvisionalRRClientEventMetadata *)self rrID];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(RRSchemaProvisionalRRClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }
}

@end