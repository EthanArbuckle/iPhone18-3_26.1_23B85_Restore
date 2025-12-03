@interface _SFPBCalendarImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCalendarImage)initWithDictionary:(id)dictionary;
- (_SFPBCalendarImage)initWithFacade:(id)facade;
- (_SFPBCalendarImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCalendarImage

- (_SFPBCalendarImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCalendarImage *)self init];
  if (v5)
  {
    date = [facadeCopy date];

    if (date)
    {
      v7 = [_SFPBDate alloc];
      date2 = [facadeCopy date];
      v9 = [(_SFPBDate *)v7 initWithNSDate:date2];
      [(_SFPBCalendarImage *)v5 setDate:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBCalendarImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBCalendarImage;
  v5 = [(_SFPBCalendarImage *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"date"];
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

- (_SFPBCalendarImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCalendarImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCalendarImage *)self dictionaryRepresentation];
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
  if (self->_date)
  {
    date = [(_SFPBCalendarImage *)self date];
    dictionaryRepresentation = [date dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"date"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"date"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    date = [(_SFPBCalendarImage *)self date];
    date2 = [equalCopy date];
    v7 = date2;
    if ((date != 0) != (date2 == 0))
    {
      date3 = [(_SFPBCalendarImage *)self date];
      if (!date3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = date3;
      date4 = [(_SFPBCalendarImage *)self date];
      date5 = [equalCopy date];
      v12 = [date4 isEqual:date5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  date = [(_SFPBCalendarImage *)self date];
  if (date)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end