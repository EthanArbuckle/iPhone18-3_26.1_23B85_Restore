@interface CSDMessagingConversationActivitySession
+ (CSDMessagingConversationActivitySession)activitySessionWithCSDConversationActivitySession:(id)a3 fromConversation:(id)a4;
+ (CSDMessagingConversationActivitySession)activitySessionWithTUConversationActivitySession:(id)a3 fromConversation:(id)a4;
+ (CSDMessagingConversationActivitySession)activitySessionWithTUConversationActivitySession:(id)a3 fromConversation:(id)a4 forStorage:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (TUConversationActivitySession)tuConversationActivitySession;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createActivitySessionOnConversation:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationActivitySession

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationActivitySession;
  v3 = [(CSDMessagingConversationActivitySession *)&v7 description];
  v4 = [(CSDMessagingConversationActivitySession *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  identifierUUIDString = self->_identifierUUIDString;
  if (identifierUUIDString)
  {
    [v3 setObject:identifierUUIDString forKey:@"identifierUUIDString"];
  }

  activity = self->_activity;
  if (activity)
  {
    v7 = [(CSDMessagingConversationActivity *)activity dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"activity"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithDouble:self->_creationDateEpochTime];
    [v4 setObject:v8 forKey:@"creationDateEpochTime"];
  }

  locallyPersistedMetadata = self->_locallyPersistedMetadata;
  if (locallyPersistedMetadata)
  {
    v10 = [(CSDMessagingConversationActivitySessionLocallyPersistedMetadata *)locallyPersistedMetadata dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"locallyPersistedMetadata"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifierUUIDString)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_activity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    creationDateEpochTime = self->_creationDateEpochTime;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_locallyPersistedMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifierUUIDString)
  {
    [v4 setIdentifierUUIDString:?];
    v4 = v5;
  }

  if (self->_activity)
  {
    [v5 setActivity:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_creationDateEpochTime;
    *(v4 + 40) |= 1u;
  }

  if (self->_locallyPersistedMetadata)
  {
    [v5 setLocallyPersistedMetadata:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifierUUIDString copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(CSDMessagingConversationActivity *)self->_activity copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  if (*&self->_has)
  {
    v5[1] = *&self->_creationDateEpochTime;
    *(v5 + 40) |= 1u;
  }

  v10 = [(CSDMessagingConversationActivitySessionLocallyPersistedMetadata *)self->_locallyPersistedMetadata copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  identifierUUIDString = self->_identifierUUIDString;
  if (identifierUUIDString | *(v4 + 3))
  {
    if (![(NSString *)identifierUUIDString isEqual:?])
    {
      goto LABEL_13;
    }
  }

  activity = self->_activity;
  if (activity | *(v4 + 2))
  {
    if (![(CSDMessagingConversationActivity *)activity isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_creationDateEpochTime != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  locallyPersistedMetadata = self->_locallyPersistedMetadata;
  if (locallyPersistedMetadata | *(v4 + 4))
  {
    v9 = [(CSDMessagingConversationActivitySessionLocallyPersistedMetadata *)locallyPersistedMetadata isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifierUUIDString hash];
  v4 = [(CSDMessagingConversationActivity *)self->_activity hash];
  if (*&self->_has)
  {
    creationDateEpochTime = self->_creationDateEpochTime;
    if (creationDateEpochTime < 0.0)
    {
      creationDateEpochTime = -creationDateEpochTime;
    }

    *v5.i64 = floor(creationDateEpochTime + 0.5);
    v9 = (creationDateEpochTime - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7 ^ [(CSDMessagingConversationActivitySessionLocallyPersistedMetadata *)self->_locallyPersistedMetadata hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*(v4 + 3))
  {
    [(CSDMessagingConversationActivitySession *)self setIdentifierUUIDString:?];
    v4 = v9;
  }

  activity = self->_activity;
  v6 = *(v4 + 2);
  if (activity)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(CSDMessagingConversationActivity *)activity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(CSDMessagingConversationActivitySession *)self setActivity:?];
  }

  v4 = v9;
LABEL_9:
  if (v4[5])
  {
    self->_creationDateEpochTime = v4[1];
    *&self->_has |= 1u;
  }

  locallyPersistedMetadata = self->_locallyPersistedMetadata;
  v8 = *(v4 + 4);
  if (locallyPersistedMetadata)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(CSDMessagingConversationActivitySessionLocallyPersistedMetadata *)locallyPersistedMetadata mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(CSDMessagingConversationActivitySession *)self setLocallyPersistedMetadata:?];
  }

  v4 = v9;
LABEL_17:
}

+ (CSDMessagingConversationActivitySession)activitySessionWithTUConversationActivitySession:(id)a3 fromConversation:(id)a4 forStorage:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if (a5 || ([v7 activity], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isPlaceholderActivity"), v9, (v10 & 1) == 0))
  {
    v11 = [CSDMessagingConversationActivitySession activitySessionWithTUConversationActivitySession:v7 fromConversation:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (CSDMessagingConversationActivitySession)activitySessionWithTUConversationActivitySession:(id)a3 fromConversation:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CSDMessagingConversationActivitySession);
  v8 = [v6 UUID];
  v9 = [v8 UUIDString];
  [(CSDMessagingConversationActivitySession *)v7 setIdentifierUUIDString:v9];

  v10 = [v6 activity];
  v11 = [CSDMessagingConversationActivity activityWithCSDConversationActivity:v10 fromConversation:v5 forStorage:0];

  [(CSDMessagingConversationActivitySession *)v7 setActivity:v11];
  v12 = [v6 timestamp];

  [v12 timeIntervalSince1970];
  [(CSDMessagingConversationActivitySession *)v7 setCreationDateEpochTime:?];

  return v7;
}

- (TUConversationActivitySession)tuConversationActivitySession
{
  v3 = [NSUUID alloc];
  v4 = [(CSDMessagingConversationActivitySession *)self identifierUUIDString];
  v5 = [v3 initWithUUIDString:v4];

  v6 = [(CSDMessagingConversationActivitySession *)self activity];
  v7 = [v6 tuConversationActivity];

  v8 = [(CSDMessagingConversationActivitySession *)self locallyPersistedMetadata];
  v9 = [v8 locallyInitiated];

  v10 = [TUConversationActivitySession alloc];
  [(CSDMessagingConversationActivitySession *)self creationDateEpochTime];
  v11 = [NSDate dateWithTimeIntervalSince1970:?];
  v12 = [v10 initWithActivity:v7 uuid:v5 locallyInitiated:v9 timestamp:v11 isFirstJoin:1];

  return v12;
}

+ (CSDMessagingConversationActivitySession)activitySessionWithCSDConversationActivitySession:(id)a3 fromConversation:(id)a4
{
  v5 = a4;
  v6 = [a3 tuConversationActivitySession];
  v7 = [CSDMessagingConversationActivitySession activitySessionWithTUConversationActivitySession:v6 fromConversation:v5];

  return v7;
}

- (id)createActivitySessionOnConversation:(id)a3
{
  v4 = a3;
  v5 = [NSUUID alloc];
  v6 = [(CSDMessagingConversationActivitySession *)self identifierUUIDString];
  v7 = [v5 initWithUUIDString:v6];

  v8 = [(CSDMessagingConversationActivitySession *)self activity];
  v9 = [v8 tuConversationActivity];

  v10 = [v9 metadata];
  if ([v10 supportsContinuationOnTV])
  {

LABEL_7:
    v15 = [TUConversationActivitySession alloc];
    [(CSDMessagingConversationActivitySession *)self creationDateEpochTime];
    v16 = [NSDate dateWithTimeIntervalSince1970:?];
    v17 = [v15 initWithActivity:v9 uuid:v7 locallyInitiated:0 timestamp:v16 isFirstJoin:1];

    v14 = [v4 createActivitySession:v17];

    goto LABEL_8;
  }

  v11 = [v4 localMember];
  v12 = [v11 isLightweightMember];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = self;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not allowing creation since activitySession doesn't support aTV handoff. session: %@", &v19, 0xCu);
  }

  v14 = 0;
LABEL_8:

  return v14;
}

@end