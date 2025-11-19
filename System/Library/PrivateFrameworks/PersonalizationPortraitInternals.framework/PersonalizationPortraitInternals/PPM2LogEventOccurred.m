@interface PPM2LogEventOccurred
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)event;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2LogEventOccurred

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_event = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_event;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_event == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_event;
    *(result + 12) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_event;
    *(a3 + 12) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    event = self->_event;
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    if (self->_event)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_event];
    }

    else
    {
      v4 = @"MaxFeedbackRowsHit";
    }

    [v3 setObject:v4 forKey:@"event"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2LogEventOccurred;
  v4 = [(PPM2LogEventOccurred *)&v8 description];
  v5 = [(PPM2LogEventOccurred *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)event
{
  if (*&self->_has)
  {
    return self->_event;
  }

  else
  {
    return 0;
  }
}

@end