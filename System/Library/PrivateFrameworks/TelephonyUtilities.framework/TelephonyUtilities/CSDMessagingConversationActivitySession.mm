@interface CSDMessagingConversationActivitySession
+ (CSDMessagingConversationActivitySession)activitySessionWithCSDConversationActivitySession:(id)session fromConversation:(id)conversation;
+ (CSDMessagingConversationActivitySession)activitySessionWithTUConversationActivitySession:(id)session fromConversation:(id)conversation;
+ (CSDMessagingConversationActivitySession)activitySessionWithTUConversationActivitySession:(id)session fromConversation:(id)conversation forStorage:(BOOL)storage;
- (BOOL)isEqual:(id)equal;
- (TUConversationActivitySession)tuConversationActivitySession;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createActivitySessionOnConversation:(id)conversation;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationActivitySession

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationActivitySession;
  v3 = [(CSDMessagingConversationActivitySession *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingConversationActivitySession *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(CSDMessagingConversationActivity *)activity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"activity"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithDouble:self->_creationDateEpochTime];
    [v4 setObject:v8 forKey:@"creationDateEpochTime"];
  }

  locallyPersistedMetadata = self->_locallyPersistedMetadata;
  if (locallyPersistedMetadata)
  {
    dictionaryRepresentation2 = [(CSDMessagingConversationActivitySessionLocallyPersistedMetadata *)locallyPersistedMetadata dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"locallyPersistedMetadata"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifierUUIDString)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_activity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    creationDateEpochTime = self->_creationDateEpochTime;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_locallyPersistedMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifierUUIDString)
  {
    [toCopy setIdentifierUUIDString:?];
    toCopy = v5;
  }

  if (self->_activity)
  {
    [v5 setActivity:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_creationDateEpochTime;
    *(toCopy + 40) |= 1u;
  }

  if (self->_locallyPersistedMetadata)
  {
    [v5 setLocallyPersistedMetadata:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifierUUIDString copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(CSDMessagingConversationActivity *)self->_activity copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  if (*&self->_has)
  {
    v5[1] = *&self->_creationDateEpochTime;
    *(v5 + 40) |= 1u;
  }

  v10 = [(CSDMessagingConversationActivitySessionLocallyPersistedMetadata *)self->_locallyPersistedMetadata copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  identifierUUIDString = self->_identifierUUIDString;
  if (identifierUUIDString | *(equalCopy + 3))
  {
    if (![(NSString *)identifierUUIDString isEqual:?])
    {
      goto LABEL_13;
    }
  }

  activity = self->_activity;
  if (activity | *(equalCopy + 2))
  {
    if (![(CSDMessagingConversationActivity *)activity isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_creationDateEpochTime != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  locallyPersistedMetadata = self->_locallyPersistedMetadata;
  if (locallyPersistedMetadata | *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(CSDMessagingConversationActivitySession *)self setIdentifierUUIDString:?];
    fromCopy = v9;
  }

  activity = self->_activity;
  v6 = *(fromCopy + 2);
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

  fromCopy = v9;
LABEL_9:
  if (fromCopy[5])
  {
    self->_creationDateEpochTime = fromCopy[1];
    *&self->_has |= 1u;
  }

  locallyPersistedMetadata = self->_locallyPersistedMetadata;
  v8 = *(fromCopy + 4);
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

  fromCopy = v9;
LABEL_17:
}

+ (CSDMessagingConversationActivitySession)activitySessionWithTUConversationActivitySession:(id)session fromConversation:(id)conversation forStorage:(BOOL)storage
{
  sessionCopy = session;
  conversationCopy = conversation;
  if (storage || ([sessionCopy activity], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isPlaceholderActivity"), v9, (v10 & 1) == 0))
  {
    v11 = [CSDMessagingConversationActivitySession activitySessionWithTUConversationActivitySession:sessionCopy fromConversation:conversationCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (CSDMessagingConversationActivitySession)activitySessionWithTUConversationActivitySession:(id)session fromConversation:(id)conversation
{
  conversationCopy = conversation;
  sessionCopy = session;
  v7 = objc_alloc_init(CSDMessagingConversationActivitySession);
  uUID = [sessionCopy UUID];
  uUIDString = [uUID UUIDString];
  [(CSDMessagingConversationActivitySession *)v7 setIdentifierUUIDString:uUIDString];

  activity = [sessionCopy activity];
  v11 = [CSDMessagingConversationActivity activityWithCSDConversationActivity:activity fromConversation:conversationCopy forStorage:0];

  [(CSDMessagingConversationActivitySession *)v7 setActivity:v11];
  timestamp = [sessionCopy timestamp];

  [timestamp timeIntervalSince1970];
  [(CSDMessagingConversationActivitySession *)v7 setCreationDateEpochTime:?];

  return v7;
}

- (TUConversationActivitySession)tuConversationActivitySession
{
  v3 = [NSUUID alloc];
  identifierUUIDString = [(CSDMessagingConversationActivitySession *)self identifierUUIDString];
  v5 = [v3 initWithUUIDString:identifierUUIDString];

  activity = [(CSDMessagingConversationActivitySession *)self activity];
  tuConversationActivity = [activity tuConversationActivity];

  locallyPersistedMetadata = [(CSDMessagingConversationActivitySession *)self locallyPersistedMetadata];
  locallyInitiated = [locallyPersistedMetadata locallyInitiated];

  v10 = [TUConversationActivitySession alloc];
  [(CSDMessagingConversationActivitySession *)self creationDateEpochTime];
  v11 = [NSDate dateWithTimeIntervalSince1970:?];
  v12 = [v10 initWithActivity:tuConversationActivity uuid:v5 locallyInitiated:locallyInitiated timestamp:v11 isFirstJoin:1];

  return v12;
}

+ (CSDMessagingConversationActivitySession)activitySessionWithCSDConversationActivitySession:(id)session fromConversation:(id)conversation
{
  conversationCopy = conversation;
  tuConversationActivitySession = [session tuConversationActivitySession];
  v7 = [CSDMessagingConversationActivitySession activitySessionWithTUConversationActivitySession:tuConversationActivitySession fromConversation:conversationCopy];

  return v7;
}

- (id)createActivitySessionOnConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = [NSUUID alloc];
  identifierUUIDString = [(CSDMessagingConversationActivitySession *)self identifierUUIDString];
  v7 = [v5 initWithUUIDString:identifierUUIDString];

  activity = [(CSDMessagingConversationActivitySession *)self activity];
  tuConversationActivity = [activity tuConversationActivity];

  metadata = [tuConversationActivity metadata];
  if ([metadata supportsContinuationOnTV])
  {

LABEL_7:
    v15 = [TUConversationActivitySession alloc];
    [(CSDMessagingConversationActivitySession *)self creationDateEpochTime];
    v16 = [NSDate dateWithTimeIntervalSince1970:?];
    v17 = [v15 initWithActivity:tuConversationActivity uuid:v7 locallyInitiated:0 timestamp:v16 isFirstJoin:1];

    v14 = [conversationCopy createActivitySession:v17];

    goto LABEL_8;
  }

  localMember = [conversationCopy localMember];
  isLightweightMember = [localMember isLightweightMember];

  if (!isLightweightMember)
  {
    goto LABEL_7;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not allowing creation since activitySession doesn't support aTV handoff. session: %@", &v19, 0xCu);
  }

  v14 = 0;
LABEL_8:

  return v14;
}

@end