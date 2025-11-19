@interface _SFPBClockImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBClockImage)initWithDictionary:(id)a3;
- (_SFPBClockImage)initWithFacade:(id)a3;
- (_SFPBClockImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBClockImage

- (_SFPBClockImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBClockImage *)self init];
  if (v5)
  {
    v6 = [v4 hour];

    if (v6)
    {
      v7 = [v4 hour];
      -[_SFPBClockImage setHour:](v5, "setHour:", [v7 intValue]);
    }

    v8 = [v4 minute];

    if (v8)
    {
      v9 = [v4 minute];
      -[_SFPBClockImage setMinute:](v5, "setMinute:", [v9 intValue]);
    }

    v10 = [v4 second];

    if (v10)
    {
      v11 = [v4 second];
      -[_SFPBClockImage setSecond:](v5, "setSecond:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBClockImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBClockImage;
  v5 = [(_SFPBClockImage *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"hour"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBClockImage setHour:](v5, "setHour:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"minute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBClockImage setMinute:](v5, "setMinute:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"second"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBClockImage setSecond:](v5, "setSecond:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBClockImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBClockImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBClockImage *)self dictionaryRepresentation];
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
  if (self->_hour)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBClockImage hour](self, "hour")}];
    [v3 setObject:v4 forKeyedSubscript:@"hour"];
  }

  if (self->_minute)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBClockImage minute](self, "minute")}];
    [v3 setObject:v5 forKeyedSubscript:@"minute"];
  }

  if (self->_second)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBClockImage second](self, "second")}];
    [v3 setObject:v6 forKeyedSubscript:@"second"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (hour = self->_hour, hour == objc_msgSend(v4, "hour")) && (minute = self->_minute, minute == objc_msgSend(v4, "minute")))
  {
    second = self->_second;
    v8 = second == [v4 second];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_SFPBClockImage *)self hour])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBClockImage *)self minute])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBClockImage *)self second];
  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteInt32Field();
    v5 = v6;
  }
}

@end