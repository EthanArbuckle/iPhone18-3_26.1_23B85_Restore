@interface _SFPBPatternModel
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPatternModel)initWithDictionary:(id)dictionary;
- (_SFPBPatternModel)initWithFacade:(id)facade;
- (_SFPBPatternModel)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setPattern_bundle_id:(id)pattern_bundle_id;
- (void)setPattern_id:(id)pattern_id;
- (void)setPattern_parameters:(id)pattern_parameters;
- (void)setPattern_template_directory:(id)pattern_template_directory;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPatternModel

- (_SFPBPatternModel)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPatternModel *)self init];
  if (v5)
  {
    pattern_id = [facadeCopy pattern_id];

    if (pattern_id)
    {
      pattern_id2 = [facadeCopy pattern_id];
      [(_SFPBPatternModel *)v5 setPattern_id:pattern_id2];
    }

    pattern_parameters = [facadeCopy pattern_parameters];

    if (pattern_parameters)
    {
      pattern_parameters2 = [facadeCopy pattern_parameters];
      [(_SFPBPatternModel *)v5 setPattern_parameters:pattern_parameters2];
    }

    pattern_bundle_id = [facadeCopy pattern_bundle_id];

    if (pattern_bundle_id)
    {
      pattern_bundle_id2 = [facadeCopy pattern_bundle_id];
      [(_SFPBPatternModel *)v5 setPattern_bundle_id:pattern_bundle_id2];
    }

    pattern_template_directory = [facadeCopy pattern_template_directory];

    if (pattern_template_directory)
    {
      pattern_template_directory2 = [facadeCopy pattern_template_directory];
      [(_SFPBPatternModel *)v5 setPattern_template_directory:pattern_template_directory2];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBPatternModel)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = _SFPBPatternModel;
  v5 = [(_SFPBPatternModel *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"patternId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPatternModel *)v5 setPattern_id:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"patternParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      [(_SFPBPatternModel *)v5 setPattern_parameters:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"patternBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBPatternModel *)v5 setPattern_bundle_id:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"patternTemplateDirectory"];
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

- (_SFPBPatternModel)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPatternModel *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPatternModel *)self dictionaryRepresentation];
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
  if (self->_pattern_bundle_id)
  {
    pattern_bundle_id = [(_SFPBPatternModel *)self pattern_bundle_id];
    v5 = [pattern_bundle_id copy];
    [dictionary setObject:v5 forKeyedSubscript:@"patternBundleId"];
  }

  if (self->_pattern_id)
  {
    pattern_id = [(_SFPBPatternModel *)self pattern_id];
    v7 = [pattern_id copy];
    [dictionary setObject:v7 forKeyedSubscript:@"patternId"];
  }

  if (self->_pattern_parameters)
  {
    pattern_parameters = [(_SFPBPatternModel *)self pattern_parameters];
    v9 = [pattern_parameters base64EncodedStringWithOptions:0];
    if (v9)
    {
      [dictionary setObject:v9 forKeyedSubscript:@"patternParameters"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"patternParameters"];
    }
  }

  if (self->_pattern_template_directory)
  {
    pattern_template_directory = [(_SFPBPatternModel *)self pattern_template_directory];
    v12 = [pattern_template_directory copy];
    [dictionary setObject:v12 forKeyedSubscript:@"patternTemplateDirectory"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_pattern_id hash];
  v4 = [(NSData *)self->_pattern_parameters hash]^ v3;
  v5 = [(NSString *)self->_pattern_bundle_id hash];
  return v4 ^ v5 ^ [(NSString *)self->_pattern_template_directory hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  pattern_id = [(_SFPBPatternModel *)self pattern_id];
  pattern_id2 = [equalCopy pattern_id];
  if ((pattern_id != 0) == (pattern_id2 == 0))
  {
    goto LABEL_21;
  }

  pattern_id3 = [(_SFPBPatternModel *)self pattern_id];
  if (pattern_id3)
  {
    v8 = pattern_id3;
    pattern_id4 = [(_SFPBPatternModel *)self pattern_id];
    pattern_id5 = [equalCopy pattern_id];
    v11 = [pattern_id4 isEqual:pattern_id5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  pattern_id = [(_SFPBPatternModel *)self pattern_parameters];
  pattern_id2 = [equalCopy pattern_parameters];
  if ((pattern_id != 0) == (pattern_id2 == 0))
  {
    goto LABEL_21;
  }

  pattern_parameters = [(_SFPBPatternModel *)self pattern_parameters];
  if (pattern_parameters)
  {
    v13 = pattern_parameters;
    pattern_parameters2 = [(_SFPBPatternModel *)self pattern_parameters];
    pattern_parameters3 = [equalCopy pattern_parameters];
    v16 = [pattern_parameters2 isEqual:pattern_parameters3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  pattern_id = [(_SFPBPatternModel *)self pattern_bundle_id];
  pattern_id2 = [equalCopy pattern_bundle_id];
  if ((pattern_id != 0) == (pattern_id2 == 0))
  {
    goto LABEL_21;
  }

  pattern_bundle_id = [(_SFPBPatternModel *)self pattern_bundle_id];
  if (pattern_bundle_id)
  {
    v18 = pattern_bundle_id;
    pattern_bundle_id2 = [(_SFPBPatternModel *)self pattern_bundle_id];
    pattern_bundle_id3 = [equalCopy pattern_bundle_id];
    v21 = [pattern_bundle_id2 isEqual:pattern_bundle_id3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  pattern_id = [(_SFPBPatternModel *)self pattern_template_directory];
  pattern_id2 = [equalCopy pattern_template_directory];
  if ((pattern_id != 0) != (pattern_id2 == 0))
  {
    pattern_template_directory = [(_SFPBPatternModel *)self pattern_template_directory];
    if (!pattern_template_directory)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = pattern_template_directory;
    pattern_template_directory2 = [(_SFPBPatternModel *)self pattern_template_directory];
    pattern_template_directory3 = [equalCopy pattern_template_directory];
    v26 = [pattern_template_directory2 isEqual:pattern_template_directory3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  pattern_id = [(_SFPBPatternModel *)self pattern_id];
  if (pattern_id)
  {
    PBDataWriterWriteStringField();
  }

  pattern_parameters = [(_SFPBPatternModel *)self pattern_parameters];
  if (pattern_parameters)
  {
    PBDataWriterWriteDataField();
  }

  pattern_bundle_id = [(_SFPBPatternModel *)self pattern_bundle_id];
  if (pattern_bundle_id)
  {
    PBDataWriterWriteStringField();
  }

  pattern_template_directory = [(_SFPBPatternModel *)self pattern_template_directory];
  if (pattern_template_directory)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setPattern_template_directory:(id)pattern_template_directory
{
  v4 = [pattern_template_directory copy];
  pattern_template_directory = self->_pattern_template_directory;
  self->_pattern_template_directory = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPattern_bundle_id:(id)pattern_bundle_id
{
  v4 = [pattern_bundle_id copy];
  pattern_bundle_id = self->_pattern_bundle_id;
  self->_pattern_bundle_id = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPattern_parameters:(id)pattern_parameters
{
  v4 = [pattern_parameters copy];
  pattern_parameters = self->_pattern_parameters;
  self->_pattern_parameters = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPattern_id:(id)pattern_id
{
  v4 = [pattern_id copy];
  pattern_id = self->_pattern_id;
  self->_pattern_id = v4;

  MEMORY[0x1EEE66BB8]();
}

@end