@interface STMessageTransportMessage
+ (Class)_contentClassForContentType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessage:(id)message;
- (STMessageTransportMessage)initWithCoder:(id)coder;
- (STMessageTransportMessage)initWithIdentifier:(id)identifier content:(id)content;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMessageTransportMessage

- (STMessageTransportMessage)initWithIdentifier:(id)identifier content:(id)content
{
  v14.receiver = self;
  v14.super_class = STMessageTransportMessage;
  contentCopy = content;
  identifierCopy = identifier;
  v7 = [(STMessageTransportMessage *)&v14 init];
  v8 = [identifierCopy copy];

  identifier = v7->_identifier;
  v7->_identifier = v8;

  v10 = [contentCopy copy];
  content = v7->_content;
  v7->_content = v10;

  v12 = objc_opt_class();
  v7->_contentType = [v12 contentType];
  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  identifier = [(STMessageTransportMessage *)self identifier];
  v5 = [(STMessageTransportMessage *)self contentType]- 1;
  if (v5 > 4)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1001A4718[v5];
  }

  content = [(STMessageTransportMessage *)self content];
  v8 = [NSString stringWithFormat:@"<%@: { Identifier: %@, ContentType: %@, Content: %@ }>", v3, identifier, v6, content];

  return v8;
}

- (STMessageTransportMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = +[STMessageTransportMessage _contentClassForContentType:](STMessageTransportMessage, "_contentClassForContentType:", [coderCopy decodeIntegerForKey:@"contentType"]);
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"content"];
    self = [(STMessageTransportMessage *)self initWithIdentifier:v5 content:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_contentType forKey:@"contentType"];
  [coderCopy encodeObject:self->_content forKey:@"content"];
}

+ (Class)_contentClassForContentType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_1001A4740[type - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  content = self->_content;

  return [v4 initWithIdentifier:identifier content:content];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STMessageTransportMessage *)self isEqualToMessage:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMessage:(id)message
{
  messageCopy = message;
  if (messageCopy == self)
  {
    v10 = 1;
  }

  else
  {
    contentType = [(STMessageTransportMessage *)self contentType];
    if (contentType == [(STMessageTransportMessage *)messageCopy contentType])
    {
      identifier = [(STMessageTransportMessage *)self identifier];
      identifier2 = [(STMessageTransportMessage *)messageCopy identifier];
      if ([identifier isEqual:identifier2])
      {
        content = [(STMessageTransportMessage *)self content];
        content2 = [(STMessageTransportMessage *)messageCopy content];
        v10 = [content isEqual:content2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  identifier = [(STMessageTransportMessage *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end