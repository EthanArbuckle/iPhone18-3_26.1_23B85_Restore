@interface _SFPBCreateReminderCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCreateReminderCommand)initWithDictionary:(id)dictionary;
- (_SFPBCreateReminderCommand)initWithFacade:(id)facade;
- (_SFPBCreateReminderCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCreateReminderCommand

- (_SFPBCreateReminderCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCreateReminderCommand *)self init];
  if (v5)
  {
    reminder = [facadeCopy reminder];

    if (reminder)
    {
      v7 = [_SFPBReminder alloc];
      reminder2 = [facadeCopy reminder];
      v9 = [(_SFPBReminder *)v7 initWithFacade:reminder2];
      [(_SFPBCreateReminderCommand *)v5 setReminder:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBCreateReminderCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBCreateReminderCommand;
  v5 = [(_SFPBCreateReminderCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reminder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBReminder alloc] initWithDictionary:v6];
      [(_SFPBCreateReminderCommand *)v5 setReminder:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCreateReminderCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCreateReminderCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCreateReminderCommand *)self dictionaryRepresentation];
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
  if (self->_reminder)
  {
    reminder = [(_SFPBCreateReminderCommand *)self reminder];
    dictionaryRepresentation = [reminder dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"reminder"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"reminder"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    reminder = [(_SFPBCreateReminderCommand *)self reminder];
    reminder2 = [equalCopy reminder];
    v7 = reminder2;
    if ((reminder != 0) != (reminder2 == 0))
    {
      reminder3 = [(_SFPBCreateReminderCommand *)self reminder];
      if (!reminder3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = reminder3;
      reminder4 = [(_SFPBCreateReminderCommand *)self reminder];
      reminder5 = [equalCopy reminder];
      v12 = [reminder4 isEqual:reminder5];

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
  reminder = [(_SFPBCreateReminderCommand *)self reminder];
  if (reminder)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end