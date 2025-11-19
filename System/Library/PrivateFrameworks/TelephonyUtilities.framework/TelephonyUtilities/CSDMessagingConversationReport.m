@interface CSDMessagingConversationReport
- (BOOL)isEqual:(id)a3;
- (CSDMessagingConversationReport)initWithTUConversationReport:(id)a3;
- (TUConversationReport)tuConversationReport;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationReport

- (CSDMessagingConversationReport)initWithTUConversationReport:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CSDMessagingConversationReport;
  v5 = [(CSDMessagingConversationReport *)&v12 init];
  if (v5)
  {
    v6 = [v4 conversationID];
    v7 = [v6 UUIDString];
    [(CSDMessagingConversationReport *)v5 setConversationID:v7];

    v8 = [v4 paddingForHashedValue];
    v9 = [v8 UUIDString];
    [(CSDMessagingConversationReport *)v5 setPaddingForHashedValue:v9];

    v10 = [v4 timebase];
    [v10 timeIntervalSinceReferenceDate];
    [(CSDMessagingConversationReport *)v5 setTimebase:?];
  }

  return v5;
}

- (TUConversationReport)tuConversationReport
{
  if ([(CSDMessagingConversationReport *)self hasConversationID])
  {
    v3 = [NSUUID alloc];
    v4 = [(CSDMessagingConversationReport *)self conversationID];
    v5 = [v3 initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  if ([(CSDMessagingConversationReport *)self hasPaddingForHashedValue])
  {
    v6 = [NSUUID alloc];
    v7 = [(CSDMessagingConversationReport *)self paddingForHashedValue];
    v8 = [v6 initWithUUIDString:v7];
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
  v4 = [(CSDMessagingConversationReport *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_conversationID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    timebase = self->_timebase;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_paddingForHashedValue)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_conversationID)
  {
    [v4 setConversationID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_timebase;
    *(v4 + 32) |= 1u;
  }

  if (self->_paddingForHashedValue)
  {
    [v5 setPaddingForHashedValue:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_conversationID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = *&self->_timebase;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_paddingForHashedValue copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  conversationID = self->_conversationID;
  if (conversationID | *(v4 + 2))
  {
    if (![(NSString *)conversationID isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_timebase != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  paddingForHashedValue = self->_paddingForHashedValue;
  if (paddingForHashedValue | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(CSDMessagingConversationReport *)self setConversationID:?];
    v4 = v5;
  }

  if (v4[4])
  {
    self->_timebase = v4[1];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(CSDMessagingConversationReport *)self setPaddingForHashedValue:?];
    v4 = v5;
  }
}

@end