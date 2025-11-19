@interface VISParseSessionConfig
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (VISParseSessionConfig)initWithDictionary:(id)a3;
- (VISParseSessionConfig)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation VISParseSessionConfig

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (enable_object_detection = self->_enable_object_detection, enable_object_detection == objc_msgSend(v4, "enable_object_detection")) && (enable_object_tracking = self->_enable_object_tracking, enable_object_tracking == objc_msgSend(v4, "enable_object_tracking")) && (enable_text_detection = self->_enable_text_detection, enable_text_detection == objc_msgSend(v4, "enable_text_detection")))
  {
    use_vi_detector = self->_use_vi_detector;
    v9 = use_vi_detector == [v4 use_vi_detector];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_enable_object_detection)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISParseSessionConfig enable_object_detection](self, "enable_object_detection")}];
    [v3 setObject:v4 forKeyedSubscript:@"enableObjectDetection"];
  }

  if (self->_enable_object_tracking)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISParseSessionConfig enable_object_tracking](self, "enable_object_tracking")}];
    [v3 setObject:v5 forKeyedSubscript:@"enableObjectTracking"];
  }

  if (self->_enable_text_detection)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISParseSessionConfig enable_text_detection](self, "enable_text_detection")}];
    [v3 setObject:v6 forKeyedSubscript:@"enableTextDetection"];
  }

  if (self->_use_vi_detector)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISParseSessionConfig use_vi_detector](self, "use_vi_detector")}];
    [v3 setObject:v7 forKeyedSubscript:@"useViDetector"];
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(VISParseSessionConfig *)self dictionaryRepresentation];
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

- (VISParseSessionConfig)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(VISParseSessionConfig *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (VISParseSessionConfig)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VISParseSessionConfig;
  v5 = [(VISParseSessionConfig *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"enableObjectDetection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISParseSessionConfig setEnable_object_detection:](v5, "setEnable_object_detection:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"enableObjectTracking"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISParseSessionConfig setEnable_object_tracking:](v5, "setEnable_object_tracking:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"enableTextDetection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISParseSessionConfig setEnable_text_detection:](v5, "setEnable_text_detection:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"useViDetector"];
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