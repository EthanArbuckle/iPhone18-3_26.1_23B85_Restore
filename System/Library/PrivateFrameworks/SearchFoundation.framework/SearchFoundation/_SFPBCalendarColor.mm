@interface _SFPBCalendarColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCalendarColor)initWithDictionary:(id)dictionary;
- (_SFPBCalendarColor)initWithFacade:(id)facade;
- (_SFPBCalendarColor)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setEventIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCalendarColor

- (_SFPBCalendarColor)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCalendarColor *)self init];
  if (v5)
  {
    eventIdentifier = [facadeCopy eventIdentifier];

    if (eventIdentifier)
    {
      eventIdentifier2 = [facadeCopy eventIdentifier];
      [(_SFPBCalendarColor *)v5 setEventIdentifier:eventIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCalendarColor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBCalendarColor;
  v5 = [(_SFPBCalendarColor *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCalendarColor *)v5 setEventIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCalendarColor)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCalendarColor *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCalendarColor *)self dictionaryRepresentation];
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
  if (self->_eventIdentifier)
  {
    eventIdentifier = [(_SFPBCalendarColor *)self eventIdentifier];
    v5 = [eventIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"eventIdentifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    eventIdentifier = [(_SFPBCalendarColor *)self eventIdentifier];
    eventIdentifier2 = [equalCopy eventIdentifier];
    v7 = eventIdentifier2;
    if ((eventIdentifier != 0) != (eventIdentifier2 == 0))
    {
      eventIdentifier3 = [(_SFPBCalendarColor *)self eventIdentifier];
      if (!eventIdentifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = eventIdentifier3;
      eventIdentifier4 = [(_SFPBCalendarColor *)self eventIdentifier];
      eventIdentifier5 = [equalCopy eventIdentifier];
      v12 = [eventIdentifier4 isEqual:eventIdentifier5];

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
  eventIdentifier = [(_SFPBCalendarColor *)self eventIdentifier];
  if (eventIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setEventIdentifier:(id)identifier
{
  v4 = [identifier copy];
  eventIdentifier = self->_eventIdentifier;
  self->_eventIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end