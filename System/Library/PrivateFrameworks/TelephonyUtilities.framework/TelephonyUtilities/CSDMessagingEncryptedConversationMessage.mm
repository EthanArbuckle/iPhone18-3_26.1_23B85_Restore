@interface CSDMessagingEncryptedConversationMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingEncryptedConversationMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingEncryptedConversationMessage;
  v3 = [(CSDMessagingEncryptedConversationMessage *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingEncryptedConversationMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  publicKey = self->_publicKey;
  if (publicKey)
  {
    [v3 setObject:publicKey forKey:@"publicKey"];
  }

  conversationMessageBytes = self->_conversationMessageBytes;
  if (conversationMessageBytes)
  {
    [v4 setObject:conversationMessageBytes forKey:@"conversationMessageBytes"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_publicKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_conversationMessageBytes)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_publicKey)
  {
    [toCopy setPublicKey:?];
    toCopy = v5;
  }

  if (self->_conversationMessageBytes)
  {
    [v5 setConversationMessageBytes:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_publicKey copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_conversationMessageBytes copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((publicKey = self->_publicKey, !(publicKey | equalCopy[2])) || -[NSData isEqual:](publicKey, "isEqual:")))
  {
    conversationMessageBytes = self->_conversationMessageBytes;
    if (conversationMessageBytes | equalCopy[1])
    {
      v7 = [(NSData *)conversationMessageBytes isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(CSDMessagingEncryptedConversationMessage *)self setPublicKey:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(CSDMessagingEncryptedConversationMessage *)self setConversationMessageBytes:?];
    fromCopy = v5;
  }
}

@end