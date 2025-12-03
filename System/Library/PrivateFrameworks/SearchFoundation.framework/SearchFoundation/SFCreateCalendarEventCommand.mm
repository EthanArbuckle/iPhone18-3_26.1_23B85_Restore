@interface SFCreateCalendarEventCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCreateCalendarEventCommand)initWithCoder:(id)coder;
- (SFCreateCalendarEventCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCreateCalendarEventCommand

- (SFCreateCalendarEventCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFCreateCalendarEventCommand;
  v5 = [(SFCreateCalendarEventCommand *)&v12 init];
  if (v5)
  {
    event = [protobufCopy event];

    if (event)
    {
      v7 = [SFCalendarEvent alloc];
      event2 = [protobufCopy event];
      v9 = [(SFCalendarEvent *)v7 initWithProtobuf:event2];
      [(SFCreateCalendarEventCommand *)v5 setEvent:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFCreateCalendarEventCommand;
  v3 = [(SFCommand *)&v7 hash];
  event = [(SFCreateCalendarEventCommand *)self event];
  v5 = [event hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFCreateCalendarEventCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFCreateCalendarEventCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    event = [(SFCreateCalendarEventCommand *)self event];
    event2 = [(SFCreateCalendarEventCommand *)v5 event];
    if ((event != 0) == (event2 == 0))
    {
      v11 = 0;
    }

    else
    {
      event3 = [(SFCreateCalendarEventCommand *)self event];
      if (event3)
      {
        event4 = [(SFCreateCalendarEventCommand *)self event];
        event5 = [(SFCreateCalendarEventCommand *)v5 event];
        v11 = [event4 isEqual:event5];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFCreateCalendarEventCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  event = [(SFCreateCalendarEventCommand *)self event];
  v6 = [event copy];
  [v4 setEvent:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCreateCalendarEventCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBCreateCalendarEventCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCreateCalendarEventCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCreateCalendarEventCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFCreateCalendarEventCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFCreateCalendarEventCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCreateCalendarEventCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    event = [(SFCommand *)v8 event];
    [(SFCreateCalendarEventCommand *)v5 setEvent:event];

    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

@end