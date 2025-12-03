@interface _SFPBCATModel
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCATModel)initWithDictionary:(id)dictionary;
- (_SFPBCATModel)initWithFacade:(id)facade;
- (_SFPBCATModel)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setBundleIdentifier:(id)identifier;
- (void)setCatIdentifier:(id)identifier;
- (void)setParams:(id)params;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCATModel

- (_SFPBCATModel)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCATModel *)self init];
  if (v5)
  {
    catIdentifier = [facadeCopy catIdentifier];

    if (catIdentifier)
    {
      catIdentifier2 = [facadeCopy catIdentifier];
      [(_SFPBCATModel *)v5 setCatIdentifier:catIdentifier2];
    }

    bundleIdentifier = [facadeCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [facadeCopy bundleIdentifier];
      [(_SFPBCATModel *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    params = [facadeCopy params];

    if (params)
    {
      params2 = [facadeCopy params];
      [(_SFPBCATModel *)v5 setParams:params2];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCATModel)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBCATModel;
  v5 = [(_SFPBCATModel *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"catIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCATModel *)v5 setCatIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBCATModel *)v5 setBundleIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"params"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];
      [(_SFPBCATModel *)v5 setParams:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCATModel)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCATModel *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCATModel *)self dictionaryRepresentation];
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
  if (self->_bundleIdentifier)
  {
    bundleIdentifier = [(_SFPBCATModel *)self bundleIdentifier];
    v5 = [bundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_catIdentifier)
  {
    catIdentifier = [(_SFPBCATModel *)self catIdentifier];
    v7 = [catIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"catIdentifier"];
  }

  if (self->_params)
  {
    params = [(_SFPBCATModel *)self params];
    v9 = [params base64EncodedStringWithOptions:0];
    if (v9)
    {
      [dictionary setObject:v9 forKeyedSubscript:@"params"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"params"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_catIdentifier hash];
  v4 = [(NSString *)self->_bundleIdentifier hash]^ v3;
  return v4 ^ [(NSData *)self->_params hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  catIdentifier = [(_SFPBCATModel *)self catIdentifier];
  catIdentifier2 = [equalCopy catIdentifier];
  if ((catIdentifier != 0) == (catIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  catIdentifier3 = [(_SFPBCATModel *)self catIdentifier];
  if (catIdentifier3)
  {
    v8 = catIdentifier3;
    catIdentifier4 = [(_SFPBCATModel *)self catIdentifier];
    catIdentifier5 = [equalCopy catIdentifier];
    v11 = [catIdentifier4 isEqual:catIdentifier5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  catIdentifier = [(_SFPBCATModel *)self bundleIdentifier];
  catIdentifier2 = [equalCopy bundleIdentifier];
  if ((catIdentifier != 0) == (catIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  bundleIdentifier = [(_SFPBCATModel *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    v13 = bundleIdentifier;
    bundleIdentifier2 = [(_SFPBCATModel *)self bundleIdentifier];
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

  catIdentifier = [(_SFPBCATModel *)self params];
  catIdentifier2 = [equalCopy params];
  if ((catIdentifier != 0) != (catIdentifier2 == 0))
  {
    params = [(_SFPBCATModel *)self params];
    if (!params)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = params;
    params2 = [(_SFPBCATModel *)self params];
    params3 = [equalCopy params];
    v21 = [params2 isEqual:params3];

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
  catIdentifier = [(_SFPBCATModel *)self catIdentifier];
  if (catIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  bundleIdentifier = [(_SFPBCATModel *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  params = [(_SFPBCATModel *)self params];
  if (params)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)setParams:(id)params
{
  v4 = [params copy];
  params = self->_params;
  self->_params = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCatIdentifier:(id)identifier
{
  v4 = [identifier copy];
  catIdentifier = self->_catIdentifier;
  self->_catIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end