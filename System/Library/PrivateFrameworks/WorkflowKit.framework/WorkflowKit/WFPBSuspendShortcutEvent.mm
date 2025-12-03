@interface WFPBSuspendShortcutEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFPBSuspendShortcutEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(WFPBSuspendShortcutEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(WFPBSuspendShortcutEvent *)self setPresentationStyle:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(WFPBSuspendShortcutEvent *)self setDismissalType:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_presentationStyle hash]^ v3;
  return v4 ^ [(NSString *)self->_dismissalType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[2])) || -[NSString isEqual:](key, "isEqual:")) && ((presentationStyle = self->_presentationStyle, !(presentationStyle | equalCopy[3])) || -[NSString isEqual:](presentationStyle, "isEqual:")))
  {
    dismissalType = self->_dismissalType;
    if (dismissalType | equalCopy[1])
    {
      v8 = [(NSString *)dismissalType isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_presentationStyle copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_dismissalType copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_presentationStyle)
  {
    [v5 setPresentationStyle:?];
    toCopy = v5;
  }

  if (self->_dismissalType)
  {
    [v5 setDismissalType:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_presentationStyle)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_dismissalType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  presentationStyle = self->_presentationStyle;
  if (presentationStyle)
  {
    [v4 setObject:presentationStyle forKey:@"presentationStyle"];
  }

  dismissalType = self->_dismissalType;
  if (dismissalType)
  {
    [v4 setObject:dismissalType forKey:@"dismissalType"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBSuspendShortcutEvent;
  v4 = [(WFPBSuspendShortcutEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBSuspendShortcutEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"SuspendShortcutEvent";
  }
}

@end