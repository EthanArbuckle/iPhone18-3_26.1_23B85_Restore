@interface SCLPBScheduleRequestResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SCLPBScheduleRequestResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SCLPBScheduleRequestResponse;
  v4 = [(SCLPBScheduleRequestResponse *)&v8 description];
  v5 = [(SCLPBScheduleRequestResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  scheduleSettings = self->_scheduleSettings;
  if (scheduleSettings)
  {
    v5 = [(SCLPBScheduleSettings *)scheduleSettings dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"scheduleSettings"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_scheduleSettings)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  scheduleSettings = self->_scheduleSettings;
  if (scheduleSettings)
  {
    [a3 setScheduleSettings:scheduleSettings];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SCLPBScheduleSettings *)self->_scheduleSettings copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    scheduleSettings = self->_scheduleSettings;
    if (scheduleSettings | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  scheduleSettings = self->_scheduleSettings;
  v6 = v4[1];
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