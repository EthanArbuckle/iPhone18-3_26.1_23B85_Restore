@interface SFCreateReminderCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCreateReminderCommand)initWithCoder:(id)a3;
- (SFCreateReminderCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCreateReminderCommand

- (SFCreateReminderCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFCreateReminderCommand;
  v5 = [(SFCreateReminderCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 reminder];

    if (v6)
    {
      v7 = [SFReminder alloc];
      v8 = [v4 reminder];
      v9 = [(SFReminder *)v7 initWithProtobuf:v8];
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
  v4 = [(SFCreateReminderCommand *)self reminder];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(SFCreateReminderCommand *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFCreateReminderCommand, [(SFCommand *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFCreateReminderCommand *)self reminder];
    v7 = [(SFCreateReminderCommand *)v5 reminder];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFCreateReminderCommand *)self reminder];
      if (v8)
      {
        v9 = [(SFCreateReminderCommand *)self reminder];
        v10 = [(SFCreateReminderCommand *)v5 reminder];
        v11 = [v9 isEqual:v10];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFCreateReminderCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFCreateReminderCommand *)self reminder];
  v6 = [v5 copy];
  [v4 setReminder:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCreateReminderCommand alloc] initWithFacade:self];
  v3 = [(_SFPBCreateReminderCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCreateReminderCommand alloc] initWithFacade:self];
  v3 = [(_SFPBCreateReminderCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFCreateReminderCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFCreateReminderCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCreateReminderCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 reminder];
    [(SFCreateReminderCommand *)v5 setReminder:v9];

    v10 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v10];

    v11 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v11];

    v12 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v12];

    v13 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v13];
  }

  return v5;
}

@end