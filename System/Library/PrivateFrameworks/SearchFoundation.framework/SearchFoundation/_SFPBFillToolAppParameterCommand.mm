@interface _SFPBFillToolAppParameterCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFillToolAppParameterCommand)initWithDictionary:(id)dictionary;
- (_SFPBFillToolAppParameterCommand)initWithFacade:(id)facade;
- (_SFPBFillToolAppParameterCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setApplicationPath:(id)path;
- (void)setBundleIdentifier:(id)identifier;
- (void)setEncodedTypedValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _SFPBFillToolAppParameterCommand

- (_SFPBFillToolAppParameterCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBFillToolAppParameterCommand *)self init];
  if (v5)
  {
    encodedTypedValue = [facadeCopy encodedTypedValue];

    if (encodedTypedValue)
    {
      encodedTypedValue2 = [facadeCopy encodedTypedValue];
      [(_SFPBFillToolAppParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue2];
    }

    bundleIdentifier = [facadeCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [facadeCopy bundleIdentifier];
      [(_SFPBFillToolAppParameterCommand *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    applicationPath = [facadeCopy applicationPath];

    if (applicationPath)
    {
      applicationPath2 = [facadeCopy applicationPath];
      [(_SFPBFillToolAppParameterCommand *)v5 setApplicationPath:applicationPath2];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBFillToolAppParameterCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBFillToolAppParameterCommand;
  v5 = [(_SFPBFillToolAppParameterCommand *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"encodedTypedValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBFillToolAppParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBFillToolAppParameterCommand *)v5 setBundleIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"applicationPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBFillToolAppParameterCommand *)v5 setApplicationPath:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBFillToolAppParameterCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBFillToolAppParameterCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBFillToolAppParameterCommand *)self dictionaryRepresentation];
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
  if (self->_applicationPath)
  {
    applicationPath = [(_SFPBFillToolAppParameterCommand *)self applicationPath];
    v5 = [applicationPath copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationPath"];
  }

  if (self->_bundleIdentifier)
  {
    bundleIdentifier = [(_SFPBFillToolAppParameterCommand *)self bundleIdentifier];
    v7 = [bundleIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_encodedTypedValue)
  {
    encodedTypedValue = [(_SFPBFillToolAppParameterCommand *)self encodedTypedValue];
    v9 = [encodedTypedValue base64EncodedStringWithOptions:0];
    if (v9)
    {
      [dictionary setObject:v9 forKeyedSubscript:@"encodedTypedValue"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"encodedTypedValue"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_encodedTypedValue hash];
  v4 = [(NSString *)self->_bundleIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_applicationPath hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  encodedTypedValue = [(_SFPBFillToolAppParameterCommand *)self encodedTypedValue];
  encodedTypedValue2 = [equalCopy encodedTypedValue];
  if ((encodedTypedValue != 0) == (encodedTypedValue2 == 0))
  {
    goto LABEL_16;
  }

  encodedTypedValue3 = [(_SFPBFillToolAppParameterCommand *)self encodedTypedValue];
  if (encodedTypedValue3)
  {
    v8 = encodedTypedValue3;
    encodedTypedValue4 = [(_SFPBFillToolAppParameterCommand *)self encodedTypedValue];
    encodedTypedValue5 = [equalCopy encodedTypedValue];
    v11 = [encodedTypedValue4 isEqual:encodedTypedValue5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  encodedTypedValue = [(_SFPBFillToolAppParameterCommand *)self bundleIdentifier];
  encodedTypedValue2 = [equalCopy bundleIdentifier];
  if ((encodedTypedValue != 0) == (encodedTypedValue2 == 0))
  {
    goto LABEL_16;
  }

  bundleIdentifier = [(_SFPBFillToolAppParameterCommand *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    v13 = bundleIdentifier;
    bundleIdentifier2 = [(_SFPBFillToolAppParameterCommand *)self bundleIdentifier];
    bundleIdentifier3 = [equalCopy bundleIdentifier];
    v16 = [bundleIdentifier2 isEqual:bundleIdentifier3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  encodedTypedValue = [(_SFPBFillToolAppParameterCommand *)self applicationPath];
  encodedTypedValue2 = [equalCopy applicationPath];
  if ((encodedTypedValue != 0) != (encodedTypedValue2 == 0))
  {
    applicationPath = [(_SFPBFillToolAppParameterCommand *)self applicationPath];
    if (!applicationPath)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = applicationPath;
    applicationPath2 = [(_SFPBFillToolAppParameterCommand *)self applicationPath];
    applicationPath3 = [equalCopy applicationPath];
    v21 = [applicationPath2 isEqual:applicationPath3];

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
  encodedTypedValue = [(_SFPBFillToolAppParameterCommand *)self encodedTypedValue];
  if (encodedTypedValue)
  {
    PBDataWriterWriteDataField();
  }

  bundleIdentifier = [(_SFPBFillToolAppParameterCommand *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  applicationPath = [(_SFPBFillToolAppParameterCommand *)self applicationPath];
  if (applicationPath)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setApplicationPath:(id)path
{
  v4 = [path copy];
  applicationPath = self->_applicationPath;
  self->_applicationPath = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEncodedTypedValue:(id)value
{
  v4 = [value copy];
  encodedTypedValue = self->_encodedTypedValue;
  self->_encodedTypedValue = v4;

  MEMORY[0x1EEE66BB8]();
}

@end