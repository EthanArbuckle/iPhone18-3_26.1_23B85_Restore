@interface USPSchemaUSPClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USPSchemaUSPClientEventMetadata)initWithDictionary:(id)dictionary;
- (USPSchemaUSPClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation USPSchemaUSPClientEventMetadata

- (USPSchemaUSPClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = USPSchemaUSPClientEventMetadata;
  v5 = [(USPSchemaUSPClientEventMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"uspId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(USPSchemaUSPClientEventMetadata *)v5 setUspId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USPSchemaUSPMeasurementContext alloc] initWithDictionary:v8];
      [(USPSchemaUSPClientEventMetadata *)v5 setContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"sutFingerprint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(USPSchemaUSPClientEventMetadata *)v5 setSutFingerprint:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (USPSchemaUSPClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USPSchemaUSPClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USPSchemaUSPClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_context)
  {
    context = [(USPSchemaUSPClientEventMetadata *)self context];
    dictionaryRepresentation = [context dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"context"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"context"];
    }
  }

  if (self->_sutFingerprint)
  {
    sutFingerprint = [(USPSchemaUSPClientEventMetadata *)self sutFingerprint];
    dictionaryRepresentation2 = [sutFingerprint dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"sutFingerprint"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"sutFingerprint"];
    }
  }

  if (self->_uspId)
  {
    uspId = [(USPSchemaUSPClientEventMetadata *)self uspId];
    dictionaryRepresentation3 = [uspId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"uspId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"uspId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_uspId hash];
  v4 = [(USPSchemaUSPMeasurementContext *)self->_context hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_sutFingerprint hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  uspId = [(USPSchemaUSPClientEventMetadata *)self uspId];
  uspId2 = [equalCopy uspId];
  if ((uspId != 0) == (uspId2 == 0))
  {
    goto LABEL_16;
  }

  uspId3 = [(USPSchemaUSPClientEventMetadata *)self uspId];
  if (uspId3)
  {
    v8 = uspId3;
    uspId4 = [(USPSchemaUSPClientEventMetadata *)self uspId];
    uspId5 = [equalCopy uspId];
    v11 = [uspId4 isEqual:uspId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  uspId = [(USPSchemaUSPClientEventMetadata *)self context];
  uspId2 = [equalCopy context];
  if ((uspId != 0) == (uspId2 == 0))
  {
    goto LABEL_16;
  }

  context = [(USPSchemaUSPClientEventMetadata *)self context];
  if (context)
  {
    v13 = context;
    context2 = [(USPSchemaUSPClientEventMetadata *)self context];
    context3 = [equalCopy context];
    v16 = [context2 isEqual:context3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  uspId = [(USPSchemaUSPClientEventMetadata *)self sutFingerprint];
  uspId2 = [equalCopy sutFingerprint];
  if ((uspId != 0) != (uspId2 == 0))
  {
    sutFingerprint = [(USPSchemaUSPClientEventMetadata *)self sutFingerprint];
    if (!sutFingerprint)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = sutFingerprint;
    sutFingerprint2 = [(USPSchemaUSPClientEventMetadata *)self sutFingerprint];
    sutFingerprint3 = [equalCopy sutFingerprint];
    v21 = [sutFingerprint2 isEqual:sutFingerprint3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  uspId = [(USPSchemaUSPClientEventMetadata *)self uspId];

  if (uspId)
  {
    uspId2 = [(USPSchemaUSPClientEventMetadata *)self uspId];
    PBDataWriterWriteSubmessage();
  }

  context = [(USPSchemaUSPClientEventMetadata *)self context];

  if (context)
  {
    context2 = [(USPSchemaUSPClientEventMetadata *)self context];
    PBDataWriterWriteSubmessage();
  }

  sutFingerprint = [(USPSchemaUSPClientEventMetadata *)self sutFingerprint];

  v9 = toCopy;
  if (sutFingerprint)
  {
    sutFingerprint2 = [(USPSchemaUSPClientEventMetadata *)self sutFingerprint];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = USPSchemaUSPClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  uspId = [(USPSchemaUSPClientEventMetadata *)self uspId];
  v7 = [uspId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(USPSchemaUSPClientEventMetadata *)self deleteUspId];
  }

  context = [(USPSchemaUSPClientEventMetadata *)self context];
  v10 = [context applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(USPSchemaUSPClientEventMetadata *)self deleteContext];
  }

  sutFingerprint = [(USPSchemaUSPClientEventMetadata *)self sutFingerprint];
  v13 = [sutFingerprint applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(USPSchemaUSPClientEventMetadata *)self deleteSutFingerprint];
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