@interface CSDMessagingConversationReport
- (BOOL)isEqual:(id)equal;
- (CSDMessagingConversationReport)initWithTUConversationReport:(id)report;
- (TUConversationReport)tuConversationReport;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationReport

- (CSDMessagingConversationReport)initWithTUConversationReport:(id)report
{
  reportCopy = report;
  v12.receiver = self;
  v12.super_class = CSDMessagingConversationReport;
  v5 = [(CSDMessagingConversationReport *)&v12 init];
  if (v5)
  {
    conversationID = [reportCopy conversationID];
    uUIDString = [conversationID UUIDString];
    [(CSDMessagingConversationReport *)v5 setConversationID:uUIDString];

    paddingForHashedValue = [reportCopy paddingForHashedValue];
    uUIDString2 = [paddingForHashedValue UUIDString];
    [(CSDMessagingConversationReport *)v5 setPaddingForHashedValue:uUIDString2];

    timebase = [reportCopy timebase];
    [timebase timeIntervalSinceReferenceDate];
    [(CSDMessagingConversationReport *)v5 setTimebase:?];
  }

  return v5;
}

- (TUConversationReport)tuConversationReport
{
  if ([(CSDMessagingConversationReport *)self hasConversationID])
  {
    v3 = [NSUUID alloc];
    conversationID = [(CSDMessagingConversationReport *)self conversationID];
    v5 = [v3 initWithUUIDString:conversationID];
  }

  else
  {
    v5 = 0;
  }

  if ([(CSDMessagingConversationReport *)self hasPaddingForHashedValue])
  {
    v6 = [NSUUID alloc];
    paddingForHashedValue = [(CSDMessagingConversationReport *)self paddingForHashedValue];
    v8 = [v6 initWithUUIDString:paddingForHashedValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = +[NSDate now];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = +[NSDate now];
  [v12 timeIntervalSince1970];
  v14 = v13;

  [(CSDMessagingConversationReport *)self timebase];
  v16 = vabdd_f64(v11, v15);
  [(CSDMessagingConversationReport *)self timebase];
  v18 = vabdd_f64(v14, v17);
  v19 = [NSDate alloc];
  [(CSDMessagingConversationReport *)self timebase];
  if (v16 >= v18)
  {
    v20 = [v19 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v20 = [v19 initWithTimeIntervalSinceReferenceDate:?];
  }

  v21 = v20;
  v22 = [[TUConversationReport alloc] initWithConversationID:v5 padding:v8 timebase:v20];

  return v22;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationReport;
  v3 = [(CSDMessagingConversationReport *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingConversationReport *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  conversationID = self->_conversationID;
  if (conversationID)
  {
    [v3 setObject:conversationID forKey:@"conversationID"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithDouble:self->_timebase];
    [v4 setObject:v6 forKey:@"timebase"];
  }

  paddingForHashedValue = self->_paddingForHashedValue;
  if (paddingForHashedValue)
  {
    [v4 setObject:paddingForHashedValue forKey:@"paddingForHashedValue"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_conversationID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    timebase = self->_timebase;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_paddingForHashedValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_conversationID)
  {
    [toCopy setConversationID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_timebase;
    *(toCopy + 32) |= 1u;
  }

  if (self->_paddingForHashedValue)
  {
    [v5 setPaddingForHashedValue:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_conversationID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = *&self->_timebase;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_paddingForHashedValue copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  conversationID = self->_conversationID;
  if (conversationID | *(equalCopy + 2))
  {
    if (![(NSString *)conversationID isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_timebase != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  paddingForHashedValue = self->_paddingForHashedValue;
  if (paddingForHashedValue | *(equalCopy + 3))
  {
    v8 = [(NSString *)paddingForHashedValue isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_conversationID hash];
  if (*&self->_has)
  {
    timebase = self->_timebase;
    if (timebase < 0.0)
    {
      timebase = -timebase;
    }

    *v4.i64 = floor(timebase + 0.5);
    v8 = (timebase - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3 ^ [(NSString *)self->_paddingForHashedValue hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(CSDMessagingConversationReport *)self setConversationID:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    self->_timebase = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(CSDMessagingConversationReport *)self setPaddingForHashedValue:?];
    fromCopy = v5;
  }
}

@end