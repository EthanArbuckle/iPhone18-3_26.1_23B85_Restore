@interface RGSiriSchemaRGClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RGSiriSchemaRGClientEventMetadata)initWithDictionary:(id)dictionary;
- (RGSiriSchemaRGClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RGSiriSchemaRGClientEventMetadata

- (RGSiriSchemaRGClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = RGSiriSchemaRGClientEventMetadata;
  v5 = [(RGSiriSchemaRGClientEventMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ifRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RGSiriSchemaRGClientEventMetadata *)v5 setIfRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"postingSpanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGClientEventMetadata setPostingSpanId:](v5, "setPostingSpanId:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"rgId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(RGSiriSchemaRGClientEventMetadata *)v5 setRgId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RGSiriSchemaRGClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_ifRequestId)
  {
    ifRequestId = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
    dictionaryRepresentation = [ifRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ifRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ifRequestId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RGSiriSchemaRGClientEventMetadata postingSpanId](self, "postingSpanId")}];
    [dictionary setObject:v7 forKeyedSubscript:@"postingSpanId"];
  }

  if (self->_rgId)
  {
    rgId = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
    dictionaryRepresentation2 = [rgId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"rgId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"rgId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_ifRequestId hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_postingSpanId;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(SISchemaUUID *)self->_rgId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  ifRequestId = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
  ifRequestId2 = [equalCopy ifRequestId];
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {
    goto LABEL_14;
  }

  ifRequestId3 = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
  if (ifRequestId3)
  {
    v8 = ifRequestId3;
    ifRequestId4 = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
    ifRequestId5 = [equalCopy ifRequestId];
    v11 = [ifRequestId4 isEqual:ifRequestId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    postingSpanId = self->_postingSpanId;
    if (postingSpanId != [equalCopy postingSpanId])
    {
      goto LABEL_15;
    }
  }

  ifRequestId = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
  ifRequestId2 = [equalCopy rgId];
  if ((ifRequestId != 0) != (ifRequestId2 == 0))
  {
    rgId = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
    if (!rgId)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = rgId;
    rgId2 = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
    rgId3 = [equalCopy rgId];
    v17 = [rgId2 isEqual:rgId3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  ifRequestId = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];

  if (ifRequestId)
  {
    ifRequestId2 = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  rgId = [(RGSiriSchemaRGClientEventMetadata *)self rgId];

  v7 = toCopy;
  if (rgId)
  {
    rgId2 = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = RGSiriSchemaRGClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  ifRequestId = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
  v7 = [ifRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RGSiriSchemaRGClientEventMetadata *)self deleteIfRequestId];
  }

  rgId = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
  v10 = [rgId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RGSiriSchemaRGClientEventMetadata *)self deleteRgId];
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