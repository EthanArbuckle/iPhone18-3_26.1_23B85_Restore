@interface CSDMessagingConversationParticipantCluster
+ (CSDMessagingConversationParticipantCluster)participantClusterWithTUConversationParticipantCluster:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TUConversationParticipantCluster)tuConversationParticipantCluster;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationParticipantCluster

+ (CSDMessagingConversationParticipantCluster)participantClusterWithTUConversationParticipantCluster:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(CSDMessagingConversationParticipantCluster);
    v5 = [v3 UUID];
    v6 = [v5 UUIDString];
    [(CSDMessagingConversationParticipantCluster *)v4 setUuidString:v6];

    v7 = [v3 type];
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_8;
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    [(CSDMessagingConversationParticipantCluster *)v4 setType:v8];
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v4;
}

- (TUConversationParticipantCluster)tuConversationParticipantCluster
{
  if (-[CSDMessagingConversationParticipantCluster hasUuidString](self, "hasUuidString") && (v3 = [NSUUID alloc], -[CSDMessagingConversationParticipantCluster uuidString](self, "uuidString"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v3 initWithUUIDString:v4], v4, v5))
  {
    v6 = [[TUConversationParticipantCluster alloc] initWithUUID:v5 type:{-[CSDMessagingConversationParticipantCluster type](self, "type") == 1}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Nearby"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationParticipantCluster;
  v3 = [(CSDMessagingConversationParticipantCluster *)&v7 description];
  v4 = [(CSDMessagingConversationParticipantCluster *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [v3 setObject:uuidString forKey:@"uuidString"];
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type)
    {
      if (type == 1)
      {
        v7 = @"Nearby";
      }

      else
      {
        v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
      }
    }

    else
    {
      v7 = @"Unknown";
    }

    [v4 setObject:v7 forKey:@"type"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_uuidString)
  {
    v5 = v4;
    [v4 setUuidString:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_type;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_type;
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

  uuidString = self->_uuidString;
  if (uuidString | *(v4 + 2))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_type == *(v4 + 2))
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
  v3 = [(NSString *)self->_uuidString hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_type;
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
  if (*(v4 + 2))
  {
    v5 = v4;
    [(CSDMessagingConversationParticipantCluster *)self setUuidString:?];
    v4 = v5;
  }

  if (v4[6])
  {
    self->_type = v4[2];
    *&self->_has |= 1u;
  }
}

@end