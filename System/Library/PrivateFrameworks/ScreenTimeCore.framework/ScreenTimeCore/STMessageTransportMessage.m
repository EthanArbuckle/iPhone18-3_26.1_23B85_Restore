@interface STMessageTransportMessage
+ (Class)_contentClassForContentType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessage:(id)a3;
- (STMessageTransportMessage)initWithCoder:(id)a3;
- (STMessageTransportMessage)initWithIdentifier:(id)a3 content:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMessageTransportMessage

- (STMessageTransportMessage)initWithIdentifier:(id)a3 content:(id)a4
{
  v14.receiver = self;
  v14.super_class = STMessageTransportMessage;
  v5 = a4;
  v6 = a3;
  v7 = [(STMessageTransportMessage *)&v14 init];
  v8 = [v6 copy];

  identifier = v7->_identifier;
  v7->_identifier = v8;

  v10 = [v5 copy];
  content = v7->_content;
  v7->_content = v10;

  v12 = objc_opt_class();
  v7->_contentType = [v12 contentType];
  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STMessageTransportMessage *)self identifier];
  v5 = [(STMessageTransportMessage *)self contentType]- 1;
  if (v5 > 4)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1001A4718[v5];
  }

  v7 = [(STMessageTransportMessage *)self content];
  v8 = [NSString stringWithFormat:@"<%@: { Identifier: %@, ContentType: %@, Content: %@ }>", v3, v4, v6, v7];

  return v8;
}

- (STMessageTransportMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = +[STMessageTransportMessage _contentClassForContentType:](STMessageTransportMessage, "_contentClassForContentType:", [v4 decodeIntegerForKey:@"contentType"]);
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"content"];
    self = [(STMessageTransportMessage *)self initWithIdentifier:v5 content:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_contentType forKey:@"contentType"];
  [v5 encodeObject:self->_content forKey:@"content"];
}

+ (Class)_contentClassForContentType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_1001A4740[a3 - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;
  content = self->_content;

  return [v4 initWithIdentifier:identifier content:content];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STMessageTransportMessage *)self isEqualToMessage:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMessage:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(STMessageTransportMessage *)self contentType];
    if (v5 == [(STMessageTransportMessage *)v4 contentType])
    {
      v6 = [(STMessageTransportMessage *)self identifier];
      v7 = [(STMessageTransportMessage *)v4 identifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(STMessageTransportMessage *)self content];
        v9 = [(STMessageTransportMessage *)v4 content];
        v10 = [v8 isEqual:v9];
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
  v2 = [(STMessageTransportMessage *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end