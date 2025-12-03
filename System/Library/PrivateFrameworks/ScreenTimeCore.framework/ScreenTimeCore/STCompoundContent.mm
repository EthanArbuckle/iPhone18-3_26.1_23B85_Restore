@interface STCompoundContent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCompoundContent:(id)content;
- (NSString)description;
- (STCompoundContent)initWithCoder:(id)coder;
- (STCompoundContent)initWithMessageContentTypes:(id)types messageContents:(id)contents;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STCompoundContent

- (STCompoundContent)initWithMessageContentTypes:(id)types messageContents:(id)contents
{
  v13.receiver = self;
  v13.super_class = STCompoundContent;
  contentsCopy = contents;
  typesCopy = types;
  v7 = [(STCompoundContent *)&v13 init];
  v8 = [typesCopy copy];

  messageContentTypes = v7->_messageContentTypes;
  v7->_messageContentTypes = v8;

  v10 = [contentsCopy copy];
  messageContents = v7->_messageContents;
  v7->_messageContents = v10;

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  messageContents = [(STCompoundContent *)self messageContents];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { Message Contents: %@, Type: %ld }>", v3, messageContents, [objc_opt_class() contentType]);

  return v5;
}

- (STCompoundContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v14 count:2];
  v6 = [NSSet setWithArray:v5];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"messageContentTypes"];

  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v13[4] = objc_opt_class();
  v13[5] = objc_opt_class();
  v8 = [NSArray arrayWithObjects:v13 count:6];
  v9 = [NSSet setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"messageContents"];

  v11 = [(STCompoundContent *)self initWithMessageContentTypes:v7 messageContents:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  messageContentTypes = [(STCompoundContent *)self messageContentTypes];
  [coderCopy encodeObject:messageContentTypes forKey:@"messageContentTypes"];

  messageContents = [(STCompoundContent *)self messageContents];
  [coderCopy encodeObject:messageContents forKey:@"messageContents"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  messageContentTypes = self->_messageContentTypes;
  messageContents = self->_messageContents;

  return [v4 initWithMessageContentTypes:messageContentTypes messageContents:messageContents];
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
      v5 = [(STCompoundContent *)self isEqualToCompoundContent:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCompoundContent:(id)content
{
  contentCopy = content;
  if (contentCopy == self)
  {
    v9 = 1;
  }

  else
  {
    messageContentTypes = [(STCompoundContent *)self messageContentTypes];
    messageContentTypes2 = [(STCompoundContent *)contentCopy messageContentTypes];
    if ([messageContentTypes isEqualToArray:messageContentTypes2])
    {
      messageContents = [(STCompoundContent *)self messageContents];
      messageContents2 = [(STCompoundContent *)contentCopy messageContents];
      v9 = [messageContents isEqualToArray:messageContents2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  messageContentTypes = [(STCompoundContent *)self messageContentTypes];
  messageContents = [(STCompoundContent *)self messageContents];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = [messageContentTypes hash];
  v13 = &v5[[messageContents hash]];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000129D0;
  v9[3] = &unk_1001A2FA8;
  v9[4] = &v10;
  [messageContentTypes enumerateObjectsUsingBlock:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012A0C;
  v8[3] = &unk_1001A2FD0;
  v8[4] = &v10;
  [messageContents enumerateObjectsUsingBlock:v8];
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v6;
}

@end