@interface CSDMessagingConversationActivitySceneAssociationBehavior
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationActivitySceneAssociationBehavior

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationActivitySceneAssociationBehavior;
  v3 = [(CSDMessagingConversationActivitySceneAssociationBehavior *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingConversationActivitySceneAssociationBehavior *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  targetContentIdentifier = self->_targetContentIdentifier;
  if (targetContentIdentifier)
  {
    [v3 setObject:targetContentIdentifier forKey:@"targetContentIdentifier"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithBool:self->_shouldAssociateScene];
    [v4 setObject:v6 forKey:@"shouldAssociateScene"];
  }

  preferredSceneSessionRole = self->_preferredSceneSessionRole;
  if (preferredSceneSessionRole)
  {
    [v4 setObject:preferredSceneSessionRole forKey:@"preferredSceneSessionRole"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_targetContentIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    shouldAssociateScene = self->_shouldAssociateScene;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_preferredSceneSessionRole)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_targetContentIdentifier)
  {
    [toCopy setTargetContentIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_shouldAssociateScene;
    toCopy[28] |= 1u;
  }

  if (self->_preferredSceneSessionRole)
  {
    [v5 setPreferredSceneSessionRole:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_targetContentIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_shouldAssociateScene;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSString *)self->_preferredSceneSessionRole copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  targetContentIdentifier = self->_targetContentIdentifier;
  if (targetContentIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)targetContentIdentifier isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(equalCopy + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(equalCopy + 24);
  if (!self->_shouldAssociateScene)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if ((*(equalCopy + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  preferredSceneSessionRole = self->_preferredSceneSessionRole;
  if (preferredSceneSessionRole | *(equalCopy + 1))
  {
    v8 = [(NSString *)preferredSceneSessionRole isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_targetContentIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_shouldAssociateScene;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_preferredSceneSessionRole hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(CSDMessagingConversationActivitySceneAssociationBehavior *)self setTargetContentIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_shouldAssociateScene = fromCopy[24];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(CSDMessagingConversationActivitySceneAssociationBehavior *)self setPreferredSceneSessionRole:?];
    fromCopy = v5;
  }
}

@end