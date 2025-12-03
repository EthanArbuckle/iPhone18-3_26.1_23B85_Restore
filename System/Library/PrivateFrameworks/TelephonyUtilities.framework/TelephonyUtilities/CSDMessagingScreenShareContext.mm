@interface CSDMessagingScreenShareContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)incomingScreenShareRequestFromParticipant:(id)participant handleEligibilityBlock:(id)block error:(id *)error;
- (id)initOutgoingRequestWithScreenSharingRequest:(id)request;
- (int)StringAsOriginType:(id)type;
- (int)StringAsType:(id)type;
- (int)originType;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingScreenShareContext

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ShareScreen"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ViewScreen"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Cancel"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Deny"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)originType
{
  if (*&self->_has)
  {
    return self->_originType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsOriginType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"JoinRequest"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"AskToShare"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingScreenShareContext;
  v3 = [(CSDMessagingScreenShareContext *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingScreenShareContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  screenShareUUID = self->_screenShareUUID;
  if (screenShareUUID)
  {
    [v3 setObject:screenShareUUID forKey:@"screenShareUUID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    type = self->_type;
    if (type >= 4)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v8 = *(&off_10061ACF0 + type);
    }

    [v4 setObject:v8 forKey:@"type"];

    has = self->_has;
  }

  if (has)
  {
    originType = self->_originType;
    if (originType)
    {
      if (originType == 1)
      {
        v10 = @"AskToShare";
      }

      else
      {
        v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_originType];
      }
    }

    else
    {
      v10 = @"JoinRequest";
    }

    [v4 setObject:v10 forKey:@"originType"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    dictionaryRepresentation = [(CSDMessagingScreenShareContextMetadata *)metadata dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"metadata"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_screenShareUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    originType = self->_originType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_screenShareUUID)
  {
    [toCopy setScreenShareUUID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_type;
    *(toCopy + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = self->_originType;
    *(toCopy + 36) |= 1u;
  }

  if (self->_metadata)
  {
    [v6 setMetadata:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_screenShareUUID copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 8) = self->_type;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 4) = self->_originType;
    *(v5 + 36) |= 1u;
  }

  v9 = [(CSDMessagingScreenShareContextMetadata *)self->_metadata copyWithZone:zone];
  v10 = v5[1];
  v5[1] = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  screenShareUUID = self->_screenShareUUID;
  if (screenShareUUID | *(equalCopy + 3))
  {
    if (![(NSString *)screenShareUUID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(equalCopy + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_type != *(equalCopy + 8))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_originType != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_16;
  }

  metadata = self->_metadata;
  if (metadata | *(equalCopy + 1))
  {
    v8 = [(CSDMessagingScreenShareContextMetadata *)metadata isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_screenShareUUID hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_type;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(CSDMessagingScreenShareContextMetadata *)self->_metadata hash];
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_originType;
  return v4 ^ v3 ^ v5 ^ [(CSDMessagingScreenShareContextMetadata *)self->_metadata hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(CSDMessagingScreenShareContext *)self setScreenShareUUID:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_type = fromCopy[8];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
  }

  if (v5)
  {
    self->_originType = fromCopy[4];
    *&self->_has |= 1u;
  }

  metadata = self->_metadata;
  v7 = *(fromCopy + 1);
  if (metadata)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(CSDMessagingScreenShareContextMetadata *)metadata mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(CSDMessagingScreenShareContext *)self setMetadata:?];
  }

  fromCopy = v8;
LABEL_13:
}

- (id)initOutgoingRequestWithScreenSharingRequest:(id)request
{
  requestCopy = request;
  v5 = [(CSDMessagingScreenShareContext *)self init];
  if (!v5)
  {
    goto LABEL_19;
  }

  uUID = [requestCopy UUID];
  uUIDString = [uUID UUIDString];
  [(CSDMessagingScreenShareContext *)v5 setScreenShareUUID:uUIDString];

  type = [requestCopy type];
  if (type == 4)
  {
    v9 = v5;
    v10 = 3;
    goto LABEL_8;
  }

  if (type == 2)
  {
    v9 = v5;
    v10 = 1;
    goto LABEL_8;
  }

  if (type == 1)
  {
    v9 = v5;
    v10 = 0;
LABEL_8:
    [(CSDMessagingScreenShareContext *)v9 setType:v10];
    goto LABEL_12;
  }

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100478DE4();
  }

  v5 = 0;
LABEL_12:
  originType = [requestCopy originType];
  if (originType == 1)
  {
    v13 = 0;
  }

  else
  {
    if (originType != 2)
    {
      goto LABEL_17;
    }

    v13 = 1;
  }

  [(CSDMessagingScreenShareContext *)v5 setOriginType:v13];
LABEL_17:
  metadata = [requestCopy metadata];

  if (metadata)
  {
    v15 = objc_alloc_init(CSDMessagingScreenShareContextMetadata);
    metadata2 = [requestCopy metadata];
    appName = [metadata2 appName];
    [(CSDMessagingScreenShareContextMetadata *)v15 setAppName:appName];

    metadata3 = [requestCopy metadata];
    bundleIdentifier = [metadata3 bundleIdentifier];
    [(CSDMessagingScreenShareContextMetadata *)v15 setBundleIdentifier:bundleIdentifier];

    [(CSDMessagingScreenShareContext *)v5 setMetadata:v15];
  }

LABEL_19:

  return v5;
}

- (id)incomingScreenShareRequestFromParticipant:(id)participant handleEligibilityBlock:(id)block error:(id *)error
{
  blockCopy = block;
  participantCopy = participant;
  v10 = [NSUUID alloc];
  screenShareUUID = [(CSDMessagingScreenShareContext *)self screenShareUUID];
  v12 = [v10 initWithUUIDString:screenShareUUID];

  handle = [participantCopy handle];
  identifier = [participantCopy identifier];

  type = [(CSDMessagingScreenShareContext *)self type];
  if (!type)
  {
    v16 = 4;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v16 = 3;
LABEL_5:
    originType = [(CSDMessagingScreenShareContext *)self originType];
    if (!originType)
    {
      v18 = 1;
LABEL_13:
      metadata = [(CSDMessagingScreenShareContext *)self metadata];

      if (metadata)
      {
        metadata = objc_alloc_init(TUScreenSharingRequestMetadata);
        metadata2 = [(CSDMessagingScreenShareContext *)self metadata];
        [metadata2 appName];
        v39 = identifier;
        v23 = v12;
        v24 = handle;
        errorCopy = error;
        v26 = blockCopy;
        v27 = v16;
        v29 = v28 = v18;
        [metadata setAppName:v29];

        metadata3 = [(CSDMessagingScreenShareContext *)self metadata];
        bundleIdentifier = [metadata3 bundleIdentifier];
        [metadata setBundleIdentifier:bundleIdentifier];

        v18 = v28;
        v16 = v27;
        blockCopy = v26;
        error = errorCopy;
        handle = v24;
        v12 = v23;
        identifier = v39;
      }

      if (v12)
      {
        if (blockCopy[2](blockCopy, handle))
        {
          v32 = [[TUScreenSharingRequest alloc] initWithHandle:handle type:v16 originType:v18 UUID:v12 participantIdentifier:identifier metadata:metadata];
          goto LABEL_33;
        }

        v37 = sub_100004778();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100478E4C();
        }

        if (error)
        {
          v35 = TUScreenSharingRequestErrorDomain;
          v36 = 3;
          goto LABEL_31;
        }
      }

      else
      {
        v34 = sub_100004778();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_100478EB4();
        }

        if (error)
        {
          v35 = TUScreenSharingRequestErrorDomain;
          v36 = 2;
LABEL_31:
          v20 = [NSError errorWithDomain:v35 code:v36 userInfo:0];
          goto LABEL_32;
        }
      }

LABEL_22:
      v32 = 0;
      goto LABEL_33;
    }

    if (originType == 1)
    {
      v18 = 2;
      goto LABEL_13;
    }

    v33 = sub_100004778();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100478F1C();
    }

LABEL_21:
    metadata = 0;
    goto LABEL_22;
  }

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_100478F84();
  }

  if (!error)
  {
    goto LABEL_21;
  }

  v20 = [NSError errorWithDomain:TUScreenSharingRequestErrorDomain code:1 userInfo:0];
  metadata = 0;
LABEL_32:
  v32 = 0;
  *error = v20;
LABEL_33:

  return v32;
}

@end