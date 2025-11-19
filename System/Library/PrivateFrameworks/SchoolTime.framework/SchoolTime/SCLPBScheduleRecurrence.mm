@interface SCLPBScheduleRecurrence
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDay:(id)a3;
- (int)day;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SCLPBScheduleRecurrence

- (int)day
{
  if (*&self->_has)
  {
    return self->_day;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsDay:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUNDAY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MONDAY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TUESDAY"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"WEDNESDAY"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"THURSDAY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"FRIDAY"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SATURDAY"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SCLPBScheduleRecurrence;
  v4 = [(SCLPBScheduleRecurrence *)&v8 description];
  v5 = [(SCLPBScheduleRecurrence *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  timeInterval = self->_timeInterval;
  if (timeInterval)
  {
    v5 = [(SCLPBTimeInterval *)timeInterval dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"timeInterval"];
  }

  if (*&self->_has)
  {
    v6 = self->_day - 1;
    if (v6 >= 7)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_day];
    }

    else
    {
      v7 = off_279B6C780[v6];
    }

    [v3 setObject:v7 forKey:@"day"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_timeInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    day = self->_day;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_timeInterval)
  {
    v5 = v4;
    [v4 setTimeInterval:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_day;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SCLPBTimeInterval *)self->_timeInterval copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_day;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  timeInterval = self->_timeInterval;
  if (timeInterval | *(v4 + 2))
  {
    if (![(SCLPBTimeInterval *)timeInterval isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_day == *(v4 + 2))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(SCLPBTimeInterval *)self->_timeInterval hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_day;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timeInterval = self->_timeInterval;
  v6 = *(v4 + 2);
  if (timeInterval)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(SCLPBTimeInterval *)timeInterval mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(SCLPBScheduleRecurrence *)self setTimeInterval:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 24))
  {
    self->_day = *(v4 + 2);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end