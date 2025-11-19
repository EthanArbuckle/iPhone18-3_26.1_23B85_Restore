@interface CSDMessagingScreenShareContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)incomingScreenShareRequestFromParticipant:(id)a3 handleEligibilityBlock:(id)a4 error:(id *)a5;
- (id)initOutgoingRequestWithScreenSharingRequest:(id)a3;
- (int)StringAsOriginType:(id)a3;
- (int)StringAsType:(id)a3;
- (int)originType;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ShareScreen"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ViewScreen"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Cancel"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Deny"])
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

- (int)StringAsOriginType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"JoinRequest"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"AskToShare"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingScreenShareContext;
  v3 = [(CSDMessagingScreenShareContext *)&v7 description];
  v4 = [(CSDMessagingScreenShareContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v12 = [(CSDMessagingScreenShareContextMetadata *)metadata dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"metadata"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_screenShareUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    originType = self->_originType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_screenShareUUID)
  {
    [v4 setScreenShareUUID:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 8) = self->_type;
    *(v4 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = self->_originType;
    *(v4 + 36) |= 1u;
  }

  if (self->_metadata)
  {
    [v6 setMetadata:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_screenShareUUID copyWithZone:a3];
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

  v9 = [(CSDMessagingScreenShareContextMetadata *)self->_metadata copyWithZone:a3];
  v10 = v5[1];
  v5[1] = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  screenShareUUID = self->_screenShareUUID;
  if (screenShareUUID | *(v4 + 3))
  {
    if (![(NSString *)screenShareUUID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(v4 + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_originType != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_16;
  }

  metadata = self->_metadata;
  if (metadata | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 3))
  {
    [(CSDMessagingScreenShareContext *)self setScreenShareUUID:?];
    v4 = v8;
  }

  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_type = v4[8];
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
  }

  if (v5)
  {
    self->_originType = v4[4];
    *&self->_has |= 1u;
  }

  metadata = self->_metadata;
  v7 = *(v4 + 1);
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

  v4 = v8;
LABEL_13:
}

- (id)initOutgoingRequestWithScreenSharingRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDMessagingScreenShareContext *)self init];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  [(CSDMessagingScreenShareContext *)v5 setScreenShareUUID:v7];

  v8 = [v4 type];
  if (v8 == 4)
  {
    v9 = v5;
    v10 = 3;
    goto LABEL_8;
  }

  if (v8 == 2)
  {
    v9 = v5;
    v10 = 1;
    goto LABEL_8;
  }

  if (v8 == 1)
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
  v12 = [v4 originType];
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_17;
    }

    v13 = 1;
  }

  [(CSDMessagingScreenShareContext *)v5 setOriginType:v13];
LABEL_17:
  v14 = [v4 metadata];

  if (v14)
  {
    v15 = objc_alloc_init(CSDMessagingScreenShareContextMetadata);
    v16 = [v4 metadata];
    v17 = [v16 appName];
    [(CSDMessagingScreenShareContextMetadata *)v15 setAppName:v17];

    v18 = [v4 metadata];
    v19 = [v18 bundleIdentifier];
    [(CSDMessagingScreenShareContextMetadata *)v15 setBundleIdentifier:v19];

    [(CSDMessagingScreenShareContext *)v5 setMetadata:v15];
  }

LABEL_19:

  return v5;
}

- (id)incomingScreenShareRequestFromParticipant:(id)a3 handleEligibilityBlock:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [NSUUID alloc];
  v11 = [(CSDMessagingScreenShareContext *)self screenShareUUID];
  v12 = [v10 initWithUUIDString:v11];

  v13 = [v9 handle];
  v14 = [v9 identifier];

  v15 = [(CSDMessagingScreenShareContext *)self type];
  if (!v15)
  {
    v16 = 4;
    goto LABEL_5;
  }

  if (v15 == 1)
  {
    v16 = 3;
LABEL_5:
    v17 = [(CSDMessagingScreenShareContext *)self originType];
    if (!v17)
    {
      v18 = 1;
LABEL_13:
      v21 = [(CSDMessagingScreenShareContext *)self metadata];

      if (v21)
      {
        v21 = objc_alloc_init(TUScreenSharingRequestMetadata);
        v22 = [(CSDMessagingScreenShareContext *)self metadata];
        [v22 appName];
        v39 = v14;
        v23 = v12;
        v24 = v13;
        v25 = a5;
        v26 = v8;
        v27 = v16;
        v29 = v28 = v18;
        [v21 setAppName:v29];

        v30 = [(CSDMessagingScreenShareContext *)self metadata];
        v31 = [v30 bundleIdentifier];
        [v21 setBundleIdentifier:v31];

        v18 = v28;
        v16 = v27;
        v8 = v26;
        a5 = v25;
        v13 = v24;
        v12 = v23;
        v14 = v39;
      }

      if (v12)
      {
        if (v8[2](v8, v13))
        {
          v32 = [[TUScreenSharingRequest alloc] initWithHandle:v13 type:v16 originType:v18 UUID:v12 participantIdentifier:v14 metadata:v21];
          goto LABEL_33;
        }

        v37 = sub_100004778();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100478E4C();
        }

        if (a5)
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

        if (a5)
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

    if (v17 == 1)
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
    v21 = 0;
    goto LABEL_22;
  }

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_100478F84();
  }

  if (!a5)
  {
    goto LABEL_21;
  }

  v20 = [NSError errorWithDomain:TUScreenSharingRequestErrorDomain code:1 userInfo:0];
  v21 = 0;
LABEL_32:
  v32 = 0;
  *a5 = v20;
LABEL_33:

  return v32;
}

@end