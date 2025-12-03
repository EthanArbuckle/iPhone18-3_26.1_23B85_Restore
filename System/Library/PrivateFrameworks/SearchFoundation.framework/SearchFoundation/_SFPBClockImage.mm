@interface _SFPBClockImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBClockImage)initWithDictionary:(id)dictionary;
- (_SFPBClockImage)initWithFacade:(id)facade;
- (_SFPBClockImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBClockImage

- (_SFPBClockImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBClockImage *)self init];
  if (v5)
  {
    hour = [facadeCopy hour];

    if (hour)
    {
      hour2 = [facadeCopy hour];
      -[_SFPBClockImage setHour:](v5, "setHour:", [hour2 intValue]);
    }

    minute = [facadeCopy minute];

    if (minute)
    {
      minute2 = [facadeCopy minute];
      -[_SFPBClockImage setMinute:](v5, "setMinute:", [minute2 intValue]);
    }

    second = [facadeCopy second];

    if (second)
    {
      second2 = [facadeCopy second];
      -[_SFPBClockImage setSecond:](v5, "setSecond:", [second2 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBClockImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBClockImage;
  v5 = [(_SFPBClockImage *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hour"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBClockImage setHour:](v5, "setHour:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"minute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBClockImage setMinute:](v5, "setMinute:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"second"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBClockImage setSecond:](v5, "setSecond:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBClockImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBClockImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBClockImage *)self dictionaryRepresentation];
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
  if (self->_hour)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBClockImage hour](self, "hour")}];
    [dictionary setObject:v4 forKeyedSubscript:@"hour"];
  }

  if (self->_minute)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBClockImage minute](self, "minute")}];
    [dictionary setObject:v5 forKeyedSubscript:@"minute"];
  }

  if (self->_second)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBClockImage second](self, "second")}];
    [dictionary setObject:v6 forKeyedSubscript:@"second"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (hour = self->_hour, hour == objc_msgSend(equalCopy, "hour")) && (minute = self->_minute, minute == objc_msgSend(equalCopy, "minute")))
  {
    second = self->_second;
    v8 = second == [equalCopy second];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBClockImage *)self hour])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBClockImage *)self minute])
  {
    PBDataWriterWriteInt32Field();
  }

  second = [(_SFPBClockImage *)self second];
  v5 = toCopy;
  if (second)
  {
    PBDataWriterWriteInt32Field();
    v5 = toCopy;
  }
}

@end