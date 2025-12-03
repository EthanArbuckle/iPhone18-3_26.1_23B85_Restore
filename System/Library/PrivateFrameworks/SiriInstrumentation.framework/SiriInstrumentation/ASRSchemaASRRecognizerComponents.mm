@interface ASRSchemaASRRecognizerComponents
- (ASRSchemaASRRecognizerComponents)initWithDictionary:(id)dictionary;
- (ASRSchemaASRRecognizerComponents)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRRecognizerComponents

- (ASRSchemaASRRecognizerComponents)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ASRSchemaASRRecognizerComponents;
  v5 = [(ASRSchemaASRRecognizerComponents *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"frontend"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ASRSchemaASRRecognizerComponents *)v5 setFrontend:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"decodable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRRecognizerComponents *)v5 setDecodable:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"decoder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ASRSchemaASRRecognizerComponents *)v5 setDecoder:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ASRSchemaASRRecognizerComponents)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRRecognizerComponents *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRRecognizerComponents *)self dictionaryRepresentation];
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
  if (self->_decodable)
  {
    decodable = [(ASRSchemaASRRecognizerComponents *)self decodable];
    v5 = [decodable copy];
    [dictionary setObject:v5 forKeyedSubscript:@"decodable"];
  }

  if (self->_decoder)
  {
    decoder = [(ASRSchemaASRRecognizerComponents *)self decoder];
    v7 = [decoder copy];
    [dictionary setObject:v7 forKeyedSubscript:@"decoder"];
  }

  if (self->_frontend)
  {
    frontend = [(ASRSchemaASRRecognizerComponents *)self frontend];
    v9 = [frontend copy];
    [dictionary setObject:v9 forKeyedSubscript:@"frontend"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_frontend hash];
  v4 = [(NSString *)self->_decodable hash]^ v3;
  return v4 ^ [(NSString *)self->_decoder hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  frontend = [(ASRSchemaASRRecognizerComponents *)self frontend];
  frontend2 = [equalCopy frontend];
  if ((frontend != 0) == (frontend2 == 0))
  {
    goto LABEL_16;
  }

  frontend3 = [(ASRSchemaASRRecognizerComponents *)self frontend];
  if (frontend3)
  {
    v8 = frontend3;
    frontend4 = [(ASRSchemaASRRecognizerComponents *)self frontend];
    frontend5 = [equalCopy frontend];
    v11 = [frontend4 isEqual:frontend5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  frontend = [(ASRSchemaASRRecognizerComponents *)self decodable];
  frontend2 = [equalCopy decodable];
  if ((frontend != 0) == (frontend2 == 0))
  {
    goto LABEL_16;
  }

  decodable = [(ASRSchemaASRRecognizerComponents *)self decodable];
  if (decodable)
  {
    v13 = decodable;
    decodable2 = [(ASRSchemaASRRecognizerComponents *)self decodable];
    decodable3 = [equalCopy decodable];
    v16 = [decodable2 isEqual:decodable3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  frontend = [(ASRSchemaASRRecognizerComponents *)self decoder];
  frontend2 = [equalCopy decoder];
  if ((frontend != 0) != (frontend2 == 0))
  {
    decoder = [(ASRSchemaASRRecognizerComponents *)self decoder];
    if (!decoder)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = decoder;
    decoder2 = [(ASRSchemaASRRecognizerComponents *)self decoder];
    decoder3 = [equalCopy decoder];
    v21 = [decoder2 isEqual:decoder3];

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
  frontend = [(ASRSchemaASRRecognizerComponents *)self frontend];

  if (frontend)
  {
    PBDataWriterWriteStringField();
  }

  decodable = [(ASRSchemaASRRecognizerComponents *)self decodable];

  if (decodable)
  {
    PBDataWriterWriteStringField();
  }

  decoder = [(ASRSchemaASRRecognizerComponents *)self decoder];

  v7 = toCopy;
  if (decoder)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end