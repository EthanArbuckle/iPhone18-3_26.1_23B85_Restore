@interface CSDMessagingConversationActivitySceneAssociationBehavior
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationActivitySceneAssociationBehavior

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationActivitySceneAssociationBehavior;
  v3 = [(CSDMessagingConversationActivitySceneAssociationBehavior *)&v7 description];
  v4 = [(CSDMessagingConversationActivitySceneAssociationBehavior *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_targetContentIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    shouldAssociateScene = self->_shouldAssociateScene;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_preferredSceneSessionRole)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_targetContentIdentifier)
  {
    [v4 setTargetContentIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_shouldAssociateScene;
    v4[28] |= 1u;
  }

  if (self->_preferredSceneSessionRole)
  {
    [v5 setPreferredSceneSessionRole:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_targetContentIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_shouldAssociateScene;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSString *)self->_preferredSceneSessionRole copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  targetContentIdentifier = self->_targetContentIdentifier;
  if (targetContentIdentifier | *(v4 + 2))
  {
    if (![(NSString *)targetContentIdentifier isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(v4 + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v4 + 24);
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

  if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  preferredSceneSessionRole = self->_preferredSceneSessionRole;
  if (preferredSceneSessionRole | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(CSDMessagingConversationActivitySceneAssociationBehavior *)self setTargetContentIdentifier:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_shouldAssociateScene = v4[24];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(CSDMessagingConversationActivitySceneAssociationBehavior *)self setPreferredSceneSessionRole:?];
    v4 = v5;
  }
}

@end