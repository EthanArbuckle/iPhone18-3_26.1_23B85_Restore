@interface IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata)initWithDictionary:(id)dictionary;
- (IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata

- (IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata;
  v5 = [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ifRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)v5 setIfRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"postingSpanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata setPostingSpanId:](v5, "setPostingSpanId:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)self dictionaryRepresentation];
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
    ifRequestId = [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)self ifRequestId];
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
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata postingSpanId](self, "postingSpanId")}];
    [dictionary setObject:v7 forKeyedSubscript:@"postingSpanId"];
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

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  ifRequestId = [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)self ifRequestId];
  ifRequestId2 = [equalCopy ifRequestId];
  v7 = ifRequestId2;
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  ifRequestId3 = [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)self ifRequestId];
  if (ifRequestId3)
  {
    v9 = ifRequestId3;
    ifRequestId4 = [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)self ifRequestId];
    ifRequestId5 = [equalCopy ifRequestId];
    v12 = [ifRequestId4 isEqual:ifRequestId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    postingSpanId = self->_postingSpanId;
    if (postingSpanId != [equalCopy postingSpanId])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  ifRequestId = [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)self ifRequestId];

  if (ifRequestId)
  {
    ifRequestId2 = [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)self ifRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)self ifRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)self deleteIfRequestId];
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