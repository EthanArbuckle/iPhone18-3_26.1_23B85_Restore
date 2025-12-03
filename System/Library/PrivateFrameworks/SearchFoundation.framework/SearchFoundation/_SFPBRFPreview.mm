@interface _SFPBRFPreview
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFPreview)initWithDictionary:(id)dictionary;
- (_SFPBRFPreview)initWithFacade:(id)facade;
- (_SFPBRFPreview)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setText:(id)text;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFPreview

- (_SFPBRFPreview)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFPreview *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      text2 = [facadeCopy text];
      [(_SFPBRFPreview *)v5 setText:text2];
    }

    command_reference = [facadeCopy command_reference];

    if (command_reference)
    {
      v9 = [_SFPBCommandReference alloc];
      command_reference2 = [facadeCopy command_reference];
      v11 = [(_SFPBCommandReference *)v9 initWithFacade:command_reference2];
      [(_SFPBRFPreview *)v5 setCommand_reference:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFPreview)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRFPreview;
  v5 = [(_SFPBRFPreview *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFPreview *)v5 setText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"commandReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBCommandReference alloc] initWithDictionary:v8];
      [(_SFPBRFPreview *)v5 setCommand_reference:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFPreview)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFPreview *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFPreview *)self dictionaryRepresentation];
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
  if (self->_command_reference)
  {
    command_reference = [(_SFPBRFPreview *)self command_reference];
    dictionaryRepresentation = [command_reference dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"commandReference"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"commandReference"];
    }
  }

  if (self->_text)
  {
    text = [(_SFPBRFPreview *)self text];
    v8 = [text copy];
    [dictionary setObject:v8 forKeyedSubscript:@"text"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  text = [(_SFPBRFPreview *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_11;
  }

  text3 = [(_SFPBRFPreview *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFPreview *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  text = [(_SFPBRFPreview *)self command_reference];
  text2 = [equalCopy command_reference];
  if ((text != 0) != (text2 == 0))
  {
    command_reference = [(_SFPBRFPreview *)self command_reference];
    if (!command_reference)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = command_reference;
    command_reference2 = [(_SFPBRFPreview *)self command_reference];
    command_reference3 = [equalCopy command_reference];
    v16 = [command_reference2 isEqual:command_reference3];

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
  text = [(_SFPBRFPreview *)self text];
  if (text)
  {
    PBDataWriterWriteStringField();
  }

  command_reference = [(_SFPBRFPreview *)self command_reference];
  if (command_reference)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setText:(id)text
{
  v4 = [text copy];
  text = self->_text;
  self->_text = v4;

  MEMORY[0x1EEE66BB8]();
}

@end