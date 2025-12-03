@interface IFTSchemaIFTTypeIdentifier
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTCustom)custom;
- (IFTSchemaIFTPrimitive)primitive;
- (IFTSchemaIFTTypeIdentifier)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTTypeIdentifier)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteCustom;
- (void)deletePrimitive;
- (void)setCustom:(id)custom;
- (void)setPrimitive:(id)primitive;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTTypeIdentifier

- (IFTSchemaIFTTypeIdentifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTTypeIdentifier;
  v5 = [(IFTSchemaIFTTypeIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"primitive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTPrimitive alloc] initWithDictionary:v6];
      [(IFTSchemaIFTTypeIdentifier *)v5 setPrimitive:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"custom"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTCustom alloc] initWithDictionary:v8];
      [(IFTSchemaIFTTypeIdentifier *)v5 setCustom:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTTypeIdentifier)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTTypeIdentifier *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTTypeIdentifier *)self dictionaryRepresentation];
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
  if (self->_custom)
  {
    custom = [(IFTSchemaIFTTypeIdentifier *)self custom];
    dictionaryRepresentation = [custom dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"custom"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"custom"];
    }
  }

  if (self->_primitive)
  {
    primitive = [(IFTSchemaIFTTypeIdentifier *)self primitive];
    dictionaryRepresentation2 = [primitive dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"primitive"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"primitive"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichOneof_Typeidentifier = self->_whichOneof_Typeidentifier;
  if (whichOneof_Typeidentifier != [equalCopy whichOneof_Typeidentifier])
  {
    goto LABEL_13;
  }

  primitive = [(IFTSchemaIFTTypeIdentifier *)self primitive];
  primitive2 = [equalCopy primitive];
  if ((primitive != 0) == (primitive2 == 0))
  {
    goto LABEL_12;
  }

  primitive3 = [(IFTSchemaIFTTypeIdentifier *)self primitive];
  if (primitive3)
  {
    v9 = primitive3;
    primitive4 = [(IFTSchemaIFTTypeIdentifier *)self primitive];
    primitive5 = [equalCopy primitive];
    v12 = [primitive4 isEqual:primitive5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  primitive = [(IFTSchemaIFTTypeIdentifier *)self custom];
  primitive2 = [equalCopy custom];
  if ((primitive != 0) != (primitive2 == 0))
  {
    custom = [(IFTSchemaIFTTypeIdentifier *)self custom];
    if (!custom)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = custom;
    custom2 = [(IFTSchemaIFTTypeIdentifier *)self custom];
    custom3 = [equalCopy custom];
    v17 = [custom2 isEqual:custom3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  primitive = [(IFTSchemaIFTTypeIdentifier *)self primitive];

  if (primitive)
  {
    primitive2 = [(IFTSchemaIFTTypeIdentifier *)self primitive];
    PBDataWriterWriteSubmessage();
  }

  custom = [(IFTSchemaIFTTypeIdentifier *)self custom];

  if (custom)
  {
    custom2 = [(IFTSchemaIFTTypeIdentifier *)self custom];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteCustom
{
  if (self->_whichOneof_Typeidentifier == 2)
  {
    self->_whichOneof_Typeidentifier = 0;
    self->_custom = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTCustom)custom
{
  if (self->_whichOneof_Typeidentifier == 2)
  {
    v3 = self->_custom;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCustom:(id)custom
{
  customCopy = custom;
  primitive = self->_primitive;
  self->_primitive = 0;

  self->_whichOneof_Typeidentifier = 2 * (customCopy != 0);
  custom = self->_custom;
  self->_custom = customCopy;
}

- (void)deletePrimitive
{
  if (self->_whichOneof_Typeidentifier == 1)
  {
    self->_whichOneof_Typeidentifier = 0;
    self->_primitive = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPrimitive)primitive
{
  if (self->_whichOneof_Typeidentifier == 1)
  {
    v3 = self->_primitive;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPrimitive:(id)primitive
{
  primitiveCopy = primitive;
  custom = self->_custom;
  self->_custom = 0;

  self->_whichOneof_Typeidentifier = primitiveCopy != 0;
  primitive = self->_primitive;
  self->_primitive = primitiveCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTTypeIdentifier;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  primitive = [(IFTSchemaIFTTypeIdentifier *)self primitive];
  v7 = [primitive applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTTypeIdentifier *)self deletePrimitive];
  }

  custom = [(IFTSchemaIFTTypeIdentifier *)self custom];
  v10 = [custom applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTTypeIdentifier *)self deleteCustom];
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