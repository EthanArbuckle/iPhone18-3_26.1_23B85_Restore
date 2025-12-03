@interface CSDMessagingConversationActivityContext
+ (id)activityContextWithTUActivityContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (TUConversationActivityContext)tuConversationActivityContext;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationActivityContext

+ (id)activityContextWithTUActivityContext:(id)context
{
  if (context)
  {
    contextCopy = context;
    v4 = objc_alloc_init(CSDMessagingConversationActivityContext);
    identifier = [contextCopy identifier];
    [(CSDMessagingConversationActivityContext *)v4 setContextIdentifier:identifier];

    actionDescription = [contextCopy actionDescription];
    [(CSDMessagingConversationActivityContext *)v4 setActionDescription:actionDescription];

    ongoingDescription = [contextCopy ongoingDescription];
    [(CSDMessagingConversationActivityContext *)v4 setOngoingDescription:ongoingDescription];

    completedDescription = [contextCopy completedDescription];

    [(CSDMessagingConversationActivityContext *)v4 setCompletedDescription:completedDescription];
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
      contextIdentifier = [(CSDMessagingConversationActivityContext *)self contextIdentifier];
      actionDescription = [(CSDMessagingConversationActivityContext *)self actionDescription];
      ongoingDescription = [(CSDMessagingConversationActivityContext *)self ongoingDescription];
      completedDescription = [(CSDMessagingConversationActivityContext *)self completedDescription];
      v4 = [v5 initWithContextIdentifier:contextIdentifier actionDescription:actionDescription ongoingDescription:ongoingDescription completedDescription:completedDescription];
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
  dictionaryRepresentation = [(CSDMessagingConversationActivityContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_contextIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_actionDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_ongoingDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_completedDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_contextIdentifier)
  {
    [toCopy setContextIdentifier:?];
    toCopy = v5;
  }

  if (self->_actionDescription)
  {
    [v5 setActionDescription:?];
    toCopy = v5;
  }

  if (self->_ongoingDescription)
  {
    [v5 setOngoingDescription:?];
    toCopy = v5;
  }

  if (self->_completedDescription)
  {
    [v5 setCompletedDescription:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_contextIdentifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_actionDescription copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_ongoingDescription copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_completedDescription copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((contextIdentifier = self->_contextIdentifier, !(contextIdentifier | equalCopy[3])) || -[NSString isEqual:](contextIdentifier, "isEqual:")) && ((actionDescription = self->_actionDescription, !(actionDescription | equalCopy[1])) || -[NSString isEqual:](actionDescription, "isEqual:")) && ((ongoingDescription = self->_ongoingDescription, !(ongoingDescription | equalCopy[4])) || -[NSString isEqual:](ongoingDescription, "isEqual:")))
  {
    completedDescription = self->_completedDescription;
    if (completedDescription | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(CSDMessagingConversationActivityContext *)self setContextIdentifier:?];
  }

  if (fromCopy[1])
  {
    [(CSDMessagingConversationActivityContext *)self setActionDescription:?];
  }

  if (fromCopy[4])
  {
    [(CSDMessagingConversationActivityContext *)self setOngoingDescription:?];
  }

  if (fromCopy[2])
  {
    [(CSDMessagingConversationActivityContext *)self setCompletedDescription:?];
  }
}

@end