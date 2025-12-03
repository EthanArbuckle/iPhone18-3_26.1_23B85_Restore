@interface SCLPBScheduleRequestResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SCLPBScheduleRequestResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SCLPBScheduleRequestResponse;
  v4 = [(SCLPBScheduleRequestResponse *)&v8 description];
  dictionaryRepresentation = [(SCLPBScheduleRequestResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  scheduleSettings = self->_scheduleSettings;
  if (scheduleSettings)
  {
    dictionaryRepresentation = [(SCLPBScheduleSettings *)scheduleSettings dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"scheduleSettings"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_scheduleSettings)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  scheduleSettings = self->_scheduleSettings;
  if (scheduleSettings)
  {
    [to setScheduleSettings:scheduleSettings];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SCLPBScheduleSettings *)self->_scheduleSettings copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    scheduleSettings = self->_scheduleSettings;
    if (scheduleSettings | equalCopy[1])
    {
      v6 = [(SCLPBScheduleSettings *)scheduleSettings isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  scheduleSettings = self->_scheduleSettings;
  v6 = fromCopy[1];
  if (scheduleSettings)
  {
    if (v6)
    {
      [(SCLPBScheduleSettings *)scheduleSettings mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SCLPBScheduleRequestResponse *)self setScheduleSettings:?];
  }

  MEMORY[0x2821F96F8]();
}

@end