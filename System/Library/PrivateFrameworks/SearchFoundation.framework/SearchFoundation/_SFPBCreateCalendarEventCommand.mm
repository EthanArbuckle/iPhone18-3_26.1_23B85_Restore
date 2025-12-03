@interface _SFPBCreateCalendarEventCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCreateCalendarEventCommand)initWithDictionary:(id)dictionary;
- (_SFPBCreateCalendarEventCommand)initWithFacade:(id)facade;
- (_SFPBCreateCalendarEventCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCreateCalendarEventCommand

- (_SFPBCreateCalendarEventCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCreateCalendarEventCommand *)self init];
  if (v5)
  {
    event = [facadeCopy event];

    if (event)
    {
      v7 = [_SFPBCalendarEvent alloc];
      event2 = [facadeCopy event];
      v9 = [(_SFPBCalendarEvent *)v7 initWithFacade:event2];
      [(_SFPBCreateCalendarEventCommand *)v5 setEvent:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBCreateCalendarEventCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBCreateCalendarEventCommand;
  v5 = [(_SFPBCreateCalendarEventCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"event"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCalendarEvent alloc] initWithDictionary:v6];
      [(_SFPBCreateCalendarEventCommand *)v5 setEvent:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCreateCalendarEventCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCreateCalendarEventCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCreateCalendarEventCommand *)self dictionaryRepresentation];
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
  if (self->_event)
  {
    event = [(_SFPBCreateCalendarEventCommand *)self event];
    dictionaryRepresentation = [event dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"event"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"event"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    event = [(_SFPBCreateCalendarEventCommand *)self event];
    event2 = [equalCopy event];
    v7 = event2;
    if ((event != 0) != (event2 == 0))
    {
      event3 = [(_SFPBCreateCalendarEventCommand *)self event];
      if (!event3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = event3;
      event4 = [(_SFPBCreateCalendarEventCommand *)self event];
      event5 = [equalCopy event];
      v12 = [event4 isEqual:event5];

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
  event = [(_SFPBCreateCalendarEventCommand *)self event];
  if (event)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end