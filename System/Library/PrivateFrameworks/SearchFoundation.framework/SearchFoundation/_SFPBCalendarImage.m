@interface _SFPBCalendarImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCalendarImage)initWithDictionary:(id)a3;
- (_SFPBCalendarImage)initWithFacade:(id)a3;
- (_SFPBCalendarImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCalendarImage

- (_SFPBCalendarImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCalendarImage *)self init];
  if (v5)
  {
    v6 = [v4 date];

    if (v6)
    {
      v7 = [_SFPBDate alloc];
      v8 = [v4 date];
      v9 = [(_SFPBDate *)v7 initWithNSDate:v8];
      [(_SFPBCalendarImage *)v5 setDate:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBCalendarImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBCalendarImage;
  v5 = [(_SFPBCalendarImage *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"date"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBDate alloc] initWithDictionary:v6];
      [(_SFPBCalendarImage *)v5 setDate:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCalendarImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCalendarImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCalendarImage *)self dictionaryRepresentation];
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
  if (self->_date)
  {
    v4 = [(_SFPBCalendarImage *)self date];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"date"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"date"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBCalendarImage *)self date];
    v6 = [v4 date];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBCalendarImage *)self date];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBCalendarImage *)self date];
      v11 = [v4 date];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(_SFPBCalendarImage *)self date];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end