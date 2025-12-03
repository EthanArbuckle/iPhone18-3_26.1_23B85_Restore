@interface VISParseSessionConfig
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (VISParseSessionConfig)initWithDictionary:(id)dictionary;
- (VISParseSessionConfig)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation VISParseSessionConfig

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(VISParseSessionConfig *)self enable_object_detection])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(VISParseSessionConfig *)self enable_object_tracking])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(VISParseSessionConfig *)self enable_text_detection])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(VISParseSessionConfig *)self use_vi_detector])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (enable_object_detection = self->_enable_object_detection, enable_object_detection == objc_msgSend(equalCopy, "enable_object_detection")) && (enable_object_tracking = self->_enable_object_tracking, enable_object_tracking == objc_msgSend(equalCopy, "enable_object_tracking")) && (enable_text_detection = self->_enable_text_detection, enable_text_detection == objc_msgSend(equalCopy, "enable_text_detection")))
  {
    use_vi_detector = self->_use_vi_detector;
    v9 = use_vi_detector == [equalCopy use_vi_detector];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = 2654435761;
  if (self->_enable_object_detection)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  if (self->_enable_object_tracking)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  if (self->_enable_text_detection)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (!self->_use_vi_detector)
  {
    v2 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v2;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_enable_object_detection)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISParseSessionConfig enable_object_detection](self, "enable_object_detection")}];
    [dictionary setObject:v4 forKeyedSubscript:@"enableObjectDetection"];
  }

  if (self->_enable_object_tracking)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISParseSessionConfig enable_object_tracking](self, "enable_object_tracking")}];
    [dictionary setObject:v5 forKeyedSubscript:@"enableObjectTracking"];
  }

  if (self->_enable_text_detection)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISParseSessionConfig enable_text_detection](self, "enable_text_detection")}];
    [dictionary setObject:v6 forKeyedSubscript:@"enableTextDetection"];
  }

  if (self->_use_vi_detector)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISParseSessionConfig use_vi_detector](self, "use_vi_detector")}];
    [dictionary setObject:v7 forKeyedSubscript:@"useViDetector"];
  }

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(VISParseSessionConfig *)self dictionaryRepresentation];
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

- (VISParseSessionConfig)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(VISParseSessionConfig *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (VISParseSessionConfig)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = VISParseSessionConfig;
  v5 = [(VISParseSessionConfig *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"enableObjectDetection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISParseSessionConfig setEnable_object_detection:](v5, "setEnable_object_detection:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"enableObjectTracking"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISParseSessionConfig setEnable_object_tracking:](v5, "setEnable_object_tracking:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"enableTextDetection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISParseSessionConfig setEnable_text_detection:](v5, "setEnable_text_detection:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"useViDetector"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISParseSessionConfig setUse_vi_detector:](v5, "setUse_vi_detector:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

@end