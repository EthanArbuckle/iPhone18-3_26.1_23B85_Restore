@interface VISParseStateConfig
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (VISParseStateConfig)initWithDictionary:(id)a3;
- (VISParseStateConfig)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation VISParseStateConfig

- (void)writeTo:(id)a3
{
  v4 = a3;
  if ([(VISParseStateConfig *)self frame_count])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(VISParseStateConfig *)self debug_option_always_parse])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (frame_count = self->_frame_count, frame_count == objc_msgSend(v4, "frame_count")))
  {
    debug_option_always_parse = self->_debug_option_always_parse;
    v7 = debug_option_always_parse == [v4 debug_option_always_parse];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = 2654435761;
  if (!self->_debug_option_always_parse)
  {
    v2 = 0;
  }

  return v2 ^ (2654435761 * self->_frame_count);
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_debug_option_always_parse)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISParseStateConfig debug_option_always_parse](self, "debug_option_always_parse")}];
    [v3 setObject:v4 forKeyedSubscript:@"debugOptionAlwaysParse"];
  }

  if (self->_frame_count)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[VISParseStateConfig frame_count](self, "frame_count")}];
    [v3 setObject:v5 forKeyedSubscript:@"frameCount"];
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(VISParseStateConfig *)self dictionaryRepresentation];
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

- (VISParseStateConfig)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(VISParseStateConfig *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (VISParseStateConfig)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VISParseStateConfig;
  v5 = [(VISParseStateConfig *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"frameCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISParseStateConfig setFrame_count:](v5, "setFrame_count:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"debugOptionAlwaysParse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISParseStateConfig setDebug_option_always_parse:](v5, "setDebug_option_always_parse:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

@end