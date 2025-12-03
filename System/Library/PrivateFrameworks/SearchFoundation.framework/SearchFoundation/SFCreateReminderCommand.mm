@interface SFCreateReminderCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCreateReminderCommand)initWithCoder:(id)coder;
- (SFCreateReminderCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCreateReminderCommand

- (SFCreateReminderCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFCreateReminderCommand;
  v5 = [(SFCreateReminderCommand *)&v12 init];
  if (v5)
  {
    reminder = [protobufCopy reminder];

    if (reminder)
    {
      v7 = [SFReminder alloc];
      reminder2 = [protobufCopy reminder];
      v9 = [(SFReminder *)v7 initWithProtobuf:reminder2];
      [(SFCreateReminderCommand *)v5 setReminder:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFCreateReminderCommand;
  v3 = [(SFCommand *)&v7 hash];
  reminder = [(SFCreateReminderCommand *)self reminder];
  v5 = [reminder hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFCreateReminderCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFCreateReminderCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    reminder = [(SFCreateReminderCommand *)self reminder];
    reminder2 = [(SFCreateReminderCommand *)v5 reminder];
    if ((reminder != 0) == (reminder2 == 0))
    {
      v11 = 0;
    }

    else
    {
      reminder3 = [(SFCreateReminderCommand *)self reminder];
      if (reminder3)
      {
        reminder4 = [(SFCreateReminderCommand *)self reminder];
        reminder5 = [(SFCreateReminderCommand *)v5 reminder];
        v11 = [reminder4 isEqual:reminder5];
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
  v8.super_class = SFCreateReminderCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  reminder = [(SFCreateReminderCommand *)self reminder];
  v6 = [reminder copy];
  [v4 setReminder:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCreateReminderCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBCreateReminderCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCreateReminderCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCreateReminderCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFCreateReminderCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFCreateReminderCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCreateReminderCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    reminder = [(SFCommand *)v8 reminder];
    [(SFCreateReminderCommand *)v5 setReminder:reminder];

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