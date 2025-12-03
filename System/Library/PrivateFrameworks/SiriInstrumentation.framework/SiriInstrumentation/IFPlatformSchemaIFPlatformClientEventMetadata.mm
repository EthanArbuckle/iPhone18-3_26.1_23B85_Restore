@interface IFPlatformSchemaIFPlatformClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (IFPlatformSchemaIFPlatformClientEventMetadata)initWithDictionary:(id)dictionary;
- (IFPlatformSchemaIFPlatformClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFPlatformSchemaIFPlatformClientEventMetadata

- (IFPlatformSchemaIFPlatformClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFPlatformSchemaIFPlatformClientEventMetadata;
  v5 = [(IFPlatformSchemaIFPlatformClientEventMetadata *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ifSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IFPlatformSchemaIFPlatformClientEventMetadata *)v5 setIfSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"postingSpanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFPlatformSchemaIFPlatformClientEventMetadata setPostingSpanId:](v5, "setPostingSpanId:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFPlatformSchemaIFPlatformClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFPlatformSchemaIFPlatformClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFPlatformSchemaIFPlatformClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_ifSessionId)
  {
    ifSessionId = [(IFPlatformSchemaIFPlatformClientEventMetadata *)self ifSessionId];
    dictionaryRepresentation = [ifSessionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ifSessionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ifSessionId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IFPlatformSchemaIFPlatformClientEventMetadata postingSpanId](self, "postingSpanId")}];
    [dictionary setObject:v7 forKeyedSubscript:@"postingSpanId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_ifSessionId hash];
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

  ifSessionId = [(IFPlatformSchemaIFPlatformClientEventMetadata *)self ifSessionId];
  ifSessionId2 = [equalCopy ifSessionId];
  v7 = ifSessionId2;
  if ((ifSessionId != 0) == (ifSessionId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  ifSessionId3 = [(IFPlatformSchemaIFPlatformClientEventMetadata *)self ifSessionId];
  if (ifSessionId3)
  {
    v9 = ifSessionId3;
    ifSessionId4 = [(IFPlatformSchemaIFPlatformClientEventMetadata *)self ifSessionId];
    ifSessionId5 = [equalCopy ifSessionId];
    v12 = [ifSessionId4 isEqual:ifSessionId5];

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
  ifSessionId = [(IFPlatformSchemaIFPlatformClientEventMetadata *)self ifSessionId];

  if (ifSessionId)
  {
    ifSessionId2 = [(IFPlatformSchemaIFPlatformClientEventMetadata *)self ifSessionId];
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
  v9.super_class = IFPlatformSchemaIFPlatformClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFPlatformSchemaIFPlatformClientEventMetadata *)self ifSessionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFPlatformSchemaIFPlatformClientEventMetadata *)self deleteIfSessionId];
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