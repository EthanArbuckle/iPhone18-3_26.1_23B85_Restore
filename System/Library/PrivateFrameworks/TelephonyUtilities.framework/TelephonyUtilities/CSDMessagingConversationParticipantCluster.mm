@interface CSDMessagingConversationParticipantCluster
+ (CSDMessagingConversationParticipantCluster)participantClusterWithTUConversationParticipantCluster:(id)cluster;
- (BOOL)isEqual:(id)equal;
- (TUConversationParticipantCluster)tuConversationParticipantCluster;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationParticipantCluster

+ (CSDMessagingConversationParticipantCluster)participantClusterWithTUConversationParticipantCluster:(id)cluster
{
  if (cluster)
  {
    clusterCopy = cluster;
    v4 = objc_alloc_init(CSDMessagingConversationParticipantCluster);
    uUID = [clusterCopy UUID];
    uUIDString = [uUID UUIDString];
    [(CSDMessagingConversationParticipantCluster *)v4 setUuidString:uUIDString];

    type = [clusterCopy type];
    if (type)
    {
      if (type != 1)
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

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"Nearby"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationParticipantCluster;
  v3 = [(CSDMessagingConversationParticipantCluster *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingConversationParticipantCluster *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_uuidString)
  {
    v5 = toCopy;
    [toCopy setUuidString:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_type;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_type;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(equalCopy + 2))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_type == *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(CSDMessagingConversationParticipantCluster *)self setUuidString:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_type = fromCopy[2];
    *&self->_has |= 1u;
  }
}

@end