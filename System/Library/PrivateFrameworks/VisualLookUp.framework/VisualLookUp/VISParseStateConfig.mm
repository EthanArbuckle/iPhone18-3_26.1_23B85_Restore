@interface VISParseStateConfig
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (VISParseStateConfig)initWithDictionary:(id)dictionary;
- (VISParseStateConfig)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation VISParseStateConfig

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(VISParseStateConfig *)self frame_count])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(VISParseStateConfig *)self debug_option_always_parse])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (frame_count = self->_frame_count, frame_count == objc_msgSend(equalCopy, "frame_count")))
  {
    debug_option_always_parse = self->_debug_option_always_parse;
    v7 = debug_option_always_parse == [equalCopy debug_option_always_parse];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_debug_option_always_parse)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISParseStateConfig debug_option_always_parse](self, "debug_option_always_parse")}];
    [dictionary setObject:v4 forKeyedSubscript:@"debugOptionAlwaysParse"];
  }

  if (self->_frame_count)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[VISParseStateConfig frame_count](self, "frame_count")}];
    [dictionary setObject:v5 forKeyedSubscript:@"frameCount"];
  }

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(VISParseStateConfig *)self dictionaryRepresentation];
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

- (VISParseStateConfig)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(VISParseStateConfig *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (VISParseStateConfig)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = VISParseStateConfig;
  v5 = [(VISParseStateConfig *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"frameCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISParseStateConfig setFrame_count:](v5, "setFrame_count:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"debugOptionAlwaysParse"];
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