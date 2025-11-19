@interface _SFPBCATModel
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCATModel)initWithDictionary:(id)a3;
- (_SFPBCATModel)initWithFacade:(id)a3;
- (_SFPBCATModel)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setBundleIdentifier:(id)a3;
- (void)setCatIdentifier:(id)a3;
- (void)setParams:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCATModel

- (_SFPBCATModel)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCATModel *)self init];
  if (v5)
  {
    v6 = [v4 catIdentifier];

    if (v6)
    {
      v7 = [v4 catIdentifier];
      [(_SFPBCATModel *)v5 setCatIdentifier:v7];
    }

    v8 = [v4 bundleIdentifier];

    if (v8)
    {
      v9 = [v4 bundleIdentifier];
      [(_SFPBCATModel *)v5 setBundleIdentifier:v9];
    }

    v10 = [v4 params];

    if (v10)
    {
      v11 = [v4 params];
      [(_SFPBCATModel *)v5 setParams:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCATModel)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBCATModel;
  v5 = [(_SFPBCATModel *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"catIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCATModel *)v5 setCatIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBCATModel *)v5 setBundleIdentifier:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"params"];
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

- (_SFPBCATModel)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCATModel *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCATModel *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bundleIdentifier)
  {
    v4 = [(_SFPBCATModel *)self bundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_catIdentifier)
  {
    v6 = [(_SFPBCATModel *)self catIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"catIdentifier"];
  }

  if (self->_params)
  {
    v8 = [(_SFPBCATModel *)self params];
    v9 = [v8 base64EncodedStringWithOptions:0];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"params"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"params"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_catIdentifier hash];
  v4 = [(NSString *)self->_bundleIdentifier hash]^ v3;
  return v4 ^ [(NSData *)self->_params hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBCATModel *)self catIdentifier];
  v6 = [v4 catIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBCATModel *)self catIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCATModel *)self catIdentifier];
    v10 = [v4 catIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCATModel *)self bundleIdentifier];
  v6 = [v4 bundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBCATModel *)self bundleIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCATModel *)self bundleIdentifier];
    v15 = [v4 bundleIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCATModel *)self params];
  v6 = [v4 params];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBCATModel *)self params];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBCATModel *)self params];
    v20 = [v4 params];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_SFPBCATModel *)self catIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBCATModel *)self bundleIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBCATModel *)self params];
  if (v6)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)setParams:(id)a3
{
  v4 = [a3 copy];
  params = self->_params;
  self->_params = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCatIdentifier:(id)a3
{
  v4 = [a3 copy];
  catIdentifier = self->_catIdentifier;
  self->_catIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end