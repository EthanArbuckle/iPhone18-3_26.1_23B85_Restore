@interface CSDMessagingReceptionistSession
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingReceptionistSession

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingReceptionistSession;
  v3 = [(CSDMessagingReceptionistSession *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingReceptionistSession *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  summary = self->_summary;
  if (summary)
  {
    [v3 setObject:summary forKey:@"summary"];
  }

  predictedName = self->_predictedName;
  if (predictedName)
  {
    [v4 setObject:predictedName forKey:@"predictedName"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_summary)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_predictedName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_summary)
  {
    [toCopy setSummary:?];
    toCopy = v5;
  }

  if (self->_predictedName)
  {
    [v5 setPredictedName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_summary copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_predictedName copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((summary = self->_summary, !(summary | equalCopy[2])) || -[NSString isEqual:](summary, "isEqual:")))
  {
    predictedName = self->_predictedName;
    if (predictedName | equalCopy[1])
    {
      v7 = [(NSString *)predictedName isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(CSDMessagingReceptionistSession *)self setSummary:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(CSDMessagingReceptionistSession *)self setPredictedName:?];
    fromCopy = v5;
  }
}

@end