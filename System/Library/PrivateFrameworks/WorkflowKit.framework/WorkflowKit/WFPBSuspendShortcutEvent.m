@interface WFPBSuspendShortcutEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBSuspendShortcutEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(WFPBSuspendShortcutEvent *)self setKey:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(WFPBSuspendShortcutEvent *)self setPresentationStyle:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(WFPBSuspendShortcutEvent *)self setDismissalType:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_presentationStyle hash]^ v3;
  return v4 ^ [(NSString *)self->_dismissalType hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[2])) || -[NSString isEqual:](key, "isEqual:")) && ((presentationStyle = self->_presentationStyle, !(presentationStyle | v4[3])) || -[NSString isEqual:](presentationStyle, "isEqual:")))
  {
    dismissalType = self->_dismissalType;
    if (dismissalType | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_presentationStyle copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_dismissalType copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v5;
  }

  if (self->_presentationStyle)
  {
    [v5 setPresentationStyle:?];
    v4 = v5;
  }

  if (self->_dismissalType)
  {
    [v5 setDismissalType:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_presentationStyle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_dismissalType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
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
  v5 = [(WFPBSuspendShortcutEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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