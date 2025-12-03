@interface _SFPBExecuteToolCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBExecuteToolCommand)initWithDictionary:(id)dictionary;
- (_SFPBExecuteToolCommand)initWithFacade:(id)facade;
- (_SFPBExecuteToolCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setToolIdentifier:(id)identifier;
- (void)setToolInvocationData:(id)data;
- (void)writeTo:(id)to;
@end

@implementation _SFPBExecuteToolCommand

- (_SFPBExecuteToolCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBExecuteToolCommand *)self init];
  if (v5)
  {
    toolIdentifier = [facadeCopy toolIdentifier];

    if (toolIdentifier)
    {
      toolIdentifier2 = [facadeCopy toolIdentifier];
      [(_SFPBExecuteToolCommand *)v5 setToolIdentifier:toolIdentifier2];
    }

    toolInvocationData = [facadeCopy toolInvocationData];

    if (toolInvocationData)
    {
      toolInvocationData2 = [facadeCopy toolInvocationData];
      [(_SFPBExecuteToolCommand *)v5 setToolInvocationData:toolInvocationData2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBExecuteToolCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBExecuteToolCommand;
  v5 = [(_SFPBExecuteToolCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"toolIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBExecuteToolCommand *)v5 setToolIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"toolInvocationData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      [(_SFPBExecuteToolCommand *)v5 setToolInvocationData:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBExecuteToolCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBExecuteToolCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBExecuteToolCommand *)self dictionaryRepresentation];
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
  if (self->_toolIdentifier)
  {
    toolIdentifier = [(_SFPBExecuteToolCommand *)self toolIdentifier];
    v5 = [toolIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"toolIdentifier"];
  }

  if (self->_toolInvocationData)
  {
    toolInvocationData = [(_SFPBExecuteToolCommand *)self toolInvocationData];
    v7 = [toolInvocationData base64EncodedStringWithOptions:0];
    if (v7)
    {
      [dictionary setObject:v7 forKeyedSubscript:@"toolInvocationData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"toolInvocationData"];
    }
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

  toolIdentifier = [(_SFPBExecuteToolCommand *)self toolIdentifier];
  toolIdentifier2 = [equalCopy toolIdentifier];
  if ((toolIdentifier != 0) == (toolIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  toolIdentifier3 = [(_SFPBExecuteToolCommand *)self toolIdentifier];
  if (toolIdentifier3)
  {
    v8 = toolIdentifier3;
    toolIdentifier4 = [(_SFPBExecuteToolCommand *)self toolIdentifier];
    toolIdentifier5 = [equalCopy toolIdentifier];
    v11 = [toolIdentifier4 isEqual:toolIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  toolIdentifier = [(_SFPBExecuteToolCommand *)self toolInvocationData];
  toolIdentifier2 = [equalCopy toolInvocationData];
  if ((toolIdentifier != 0) != (toolIdentifier2 == 0))
  {
    toolInvocationData = [(_SFPBExecuteToolCommand *)self toolInvocationData];
    if (!toolInvocationData)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = toolInvocationData;
    toolInvocationData2 = [(_SFPBExecuteToolCommand *)self toolInvocationData];
    toolInvocationData3 = [equalCopy toolInvocationData];
    v16 = [toolInvocationData2 isEqual:toolInvocationData3];

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
  toolIdentifier = [(_SFPBExecuteToolCommand *)self toolIdentifier];
  if (toolIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  toolInvocationData = [(_SFPBExecuteToolCommand *)self toolInvocationData];
  if (toolInvocationData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)setToolInvocationData:(id)data
{
  v4 = [data copy];
  toolInvocationData = self->_toolInvocationData;
  self->_toolInvocationData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setToolIdentifier:(id)identifier
{
  v4 = [identifier copy];
  toolIdentifier = self->_toolIdentifier;
  self->_toolIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end