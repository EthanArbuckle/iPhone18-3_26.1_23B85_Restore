@interface CSDMessagingConversationActivityContext
+ (id)activityContextWithTUActivityContext:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TUConversationActivityContext)tuConversationActivityContext;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationActivityContext

+ (id)activityContextWithTUActivityContext:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(CSDMessagingConversationActivityContext);
    v5 = [v3 identifier];
    [(CSDMessagingConversationActivityContext *)v4 setContextIdentifier:v5];

    v6 = [v3 actionDescription];
    [(CSDMessagingConversationActivityContext *)v4 setActionDescription:v6];

    v7 = [v3 ongoingDescription];
    [(CSDMessagingConversationActivityContext *)v4 setOngoingDescription:v7];

    v8 = [v3 completedDescription];

    [(CSDMessagingConversationActivityContext *)v4 setCompletedDescription:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TUConversationActivityContext)tuConversationActivityContext
{
  if (![(CSDMessagingConversationActivityContext *)self hasContextIdentifier]|| ([(CSDMessagingConversationActivityContext *)self contextIdentifier], v3 = objc_claimAutoreleasedReturnValue(), [CPGroupActivityDescription activityContextWithDescriptionIdentifier:v3], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    if ([(CSDMessagingConversationActivityContext *)self hasContextIdentifier]&& [(CSDMessagingConversationActivityContext *)self hasActionDescription]&& [(CSDMessagingConversationActivityContext *)self hasOngoingDescription]&& [(CSDMessagingConversationActivityContext *)self hasCompletedDescription])
    {
      v5 = [TUConversationActivityContext alloc];
      v6 = [(CSDMessagingConversationActivityContext *)self contextIdentifier];
      v7 = [(CSDMessagingConversationActivityContext *)self actionDescription];
      v8 = [(CSDMessagingConversationActivityContext *)self ongoingDescription];
      v9 = [(CSDMessagingConversationActivityContext *)self completedDescription];
      v4 = [v5 initWithContextIdentifier:v6 actionDescription:v7 ongoingDescription:v8 completedDescription:v9];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationActivityContext;
  v3 = [(CSDMessagingConversationActivityContext *)&v7 description];
  v4 = [(CSDMessagingConversationActivityContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  contextIdentifier = self->_contextIdentifier;
  if (contextIdentifier)
  {
    [v3 setObject:contextIdentifier forKey:@"contextIdentifier"];
  }

  actionDescription = self->_actionDescription;
  if (actionDescription)
  {
    [v4 setObject:actionDescription forKey:@"actionDescription"];
  }

  ongoingDescription = self->_ongoingDescription;
  if (ongoingDescription)
  {
    [v4 setObject:ongoingDescription forKey:@"ongoingDescription"];
  }

  completedDescription = self->_completedDescription;
  if (completedDescription)
  {
    [v4 setObject:completedDescription forKey:@"completedDescription"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_contextIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_actionDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_ongoingDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_completedDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_contextIdentifier)
  {
    [v4 setContextIdentifier:?];
    v4 = v5;
  }

  if (self->_actionDescription)
  {
    [v5 setActionDescription:?];
    v4 = v5;
  }

  if (self->_ongoingDescription)
  {
    [v5 setOngoingDescription:?];
    v4 = v5;
  }

  if (self->_completedDescription)
  {
    [v5 setCompletedDescription:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_contextIdentifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_actionDescription copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_ongoingDescription copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_completedDescription copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((contextIdentifier = self->_contextIdentifier, !(contextIdentifier | v4[3])) || -[NSString isEqual:](contextIdentifier, "isEqual:")) && ((actionDescription = self->_actionDescription, !(actionDescription | v4[1])) || -[NSString isEqual:](actionDescription, "isEqual:")) && ((ongoingDescription = self->_ongoingDescription, !(ongoingDescription | v4[4])) || -[NSString isEqual:](ongoingDescription, "isEqual:")))
  {
    completedDescription = self->_completedDescription;
    if (completedDescription | v4[2])
    {
      v9 = [(NSString *)completedDescription isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contextIdentifier hash];
  v4 = [(NSString *)self->_actionDescription hash]^ v3;
  v5 = [(NSString *)self->_ongoingDescription hash];
  return v4 ^ v5 ^ [(NSString *)self->_completedDescription hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    [(CSDMessagingConversationActivityContext *)self setContextIdentifier:?];
  }

  if (v4[1])
  {
    [(CSDMessagingConversationActivityContext *)self setActionDescription:?];
  }

  if (v4[4])
  {
    [(CSDMessagingConversationActivityContext *)self setOngoingDescription:?];
  }

  if (v4[2])
  {
    [(CSDMessagingConversationActivityContext *)self setCompletedDescription:?];
  }
}

@end