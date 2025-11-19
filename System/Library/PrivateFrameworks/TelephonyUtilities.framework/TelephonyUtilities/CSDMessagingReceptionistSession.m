@interface CSDMessagingReceptionistSession
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingReceptionistSession

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingReceptionistSession;
  v3 = [(CSDMessagingReceptionistSession *)&v7 description];
  v4 = [(CSDMessagingReceptionistSession *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_summary)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_predictedName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_summary)
  {
    [v4 setSummary:?];
    v4 = v5;
  }

  if (self->_predictedName)
  {
    [v5 setPredictedName:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_summary copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_predictedName copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((summary = self->_summary, !(summary | v4[2])) || -[NSString isEqual:](summary, "isEqual:")))
  {
    predictedName = self->_predictedName;
    if (predictedName | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(CSDMessagingReceptionistSession *)self setSummary:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(CSDMessagingReceptionistSession *)self setPredictedName:?];
    v4 = v5;
  }
}

@end