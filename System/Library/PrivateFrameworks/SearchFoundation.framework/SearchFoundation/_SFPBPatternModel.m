@interface _SFPBPatternModel
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPatternModel)initWithDictionary:(id)a3;
- (_SFPBPatternModel)initWithFacade:(id)a3;
- (_SFPBPatternModel)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setPattern_bundle_id:(id)a3;
- (void)setPattern_id:(id)a3;
- (void)setPattern_parameters:(id)a3;
- (void)setPattern_template_directory:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPatternModel

- (_SFPBPatternModel)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPatternModel *)self init];
  if (v5)
  {
    v6 = [v4 pattern_id];

    if (v6)
    {
      v7 = [v4 pattern_id];
      [(_SFPBPatternModel *)v5 setPattern_id:v7];
    }

    v8 = [v4 pattern_parameters];

    if (v8)
    {
      v9 = [v4 pattern_parameters];
      [(_SFPBPatternModel *)v5 setPattern_parameters:v9];
    }

    v10 = [v4 pattern_bundle_id];

    if (v10)
    {
      v11 = [v4 pattern_bundle_id];
      [(_SFPBPatternModel *)v5 setPattern_bundle_id:v11];
    }

    v12 = [v4 pattern_template_directory];

    if (v12)
    {
      v13 = [v4 pattern_template_directory];
      [(_SFPBPatternModel *)v5 setPattern_template_directory:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBPatternModel)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _SFPBPatternModel;
  v5 = [(_SFPBPatternModel *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"patternId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPatternModel *)v5 setPattern_id:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"patternParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      [(_SFPBPatternModel *)v5 setPattern_parameters:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"patternBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBPatternModel *)v5 setPattern_bundle_id:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"patternTemplateDirectory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBPatternModel *)v5 setPattern_template_directory:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBPatternModel)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPatternModel *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPatternModel *)self dictionaryRepresentation];
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
  if (self->_pattern_bundle_id)
  {
    v4 = [(_SFPBPatternModel *)self pattern_bundle_id];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"patternBundleId"];
  }

  if (self->_pattern_id)
  {
    v6 = [(_SFPBPatternModel *)self pattern_id];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"patternId"];
  }

  if (self->_pattern_parameters)
  {
    v8 = [(_SFPBPatternModel *)self pattern_parameters];
    v9 = [v8 base64EncodedStringWithOptions:0];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"patternParameters"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"patternParameters"];
    }
  }

  if (self->_pattern_template_directory)
  {
    v11 = [(_SFPBPatternModel *)self pattern_template_directory];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"patternTemplateDirectory"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_pattern_id hash];
  v4 = [(NSData *)self->_pattern_parameters hash]^ v3;
  v5 = [(NSString *)self->_pattern_bundle_id hash];
  return v4 ^ v5 ^ [(NSString *)self->_pattern_template_directory hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_SFPBPatternModel *)self pattern_id];
  v6 = [v4 pattern_id];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_SFPBPatternModel *)self pattern_id];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPatternModel *)self pattern_id];
    v10 = [v4 pattern_id];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPatternModel *)self pattern_parameters];
  v6 = [v4 pattern_parameters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_SFPBPatternModel *)self pattern_parameters];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBPatternModel *)self pattern_parameters];
    v15 = [v4 pattern_parameters];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPatternModel *)self pattern_bundle_id];
  v6 = [v4 pattern_bundle_id];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_SFPBPatternModel *)self pattern_bundle_id];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBPatternModel *)self pattern_bundle_id];
    v20 = [v4 pattern_bundle_id];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPatternModel *)self pattern_template_directory];
  v6 = [v4 pattern_template_directory];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_SFPBPatternModel *)self pattern_template_directory];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_SFPBPatternModel *)self pattern_template_directory];
    v25 = [v4 pattern_template_directory];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBPatternModel *)self pattern_id];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBPatternModel *)self pattern_parameters];
  if (v5)
  {
    PBDataWriterWriteDataField();
  }

  v6 = [(_SFPBPatternModel *)self pattern_bundle_id];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBPatternModel *)self pattern_template_directory];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setPattern_template_directory:(id)a3
{
  v4 = [a3 copy];
  pattern_template_directory = self->_pattern_template_directory;
  self->_pattern_template_directory = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPattern_bundle_id:(id)a3
{
  v4 = [a3 copy];
  pattern_bundle_id = self->_pattern_bundle_id;
  self->_pattern_bundle_id = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPattern_parameters:(id)a3
{
  v4 = [a3 copy];
  pattern_parameters = self->_pattern_parameters;
  self->_pattern_parameters = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPattern_id:(id)a3
{
  v4 = [a3 copy];
  pattern_id = self->_pattern_id;
  self->_pattern_id = v4;

  MEMORY[0x1EEE66BB8]();
}

@end