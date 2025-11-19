@interface STCompoundContent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCompoundContent:(id)a3;
- (NSString)description;
- (STCompoundContent)initWithCoder:(id)a3;
- (STCompoundContent)initWithMessageContentTypes:(id)a3 messageContents:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STCompoundContent

- (STCompoundContent)initWithMessageContentTypes:(id)a3 messageContents:(id)a4
{
  v13.receiver = self;
  v13.super_class = STCompoundContent;
  v5 = a4;
  v6 = a3;
  v7 = [(STCompoundContent *)&v13 init];
  v8 = [v6 copy];

  messageContentTypes = v7->_messageContentTypes;
  v7->_messageContentTypes = v8;

  v10 = [v5 copy];
  messageContents = v7->_messageContents;
  v7->_messageContents = v10;

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(STCompoundContent *)self messageContents];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { Message Contents: %@, Type: %ld }>", v3, v4, [objc_opt_class() contentType]);

  return v5;
}

- (STCompoundContent)initWithCoder:(id)a3
{
  v4 = a3;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v14 count:2];
  v6 = [NSSet setWithArray:v5];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"messageContentTypes"];

  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v13[4] = objc_opt_class();
  v13[5] = objc_opt_class();
  v8 = [NSArray arrayWithObjects:v13 count:6];
  v9 = [NSSet setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"messageContents"];

  v11 = [(STCompoundContent *)self initWithMessageContentTypes:v7 messageContents:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STCompoundContent *)self messageContentTypes];
  [v4 encodeObject:v5 forKey:@"messageContentTypes"];

  v6 = [(STCompoundContent *)self messageContents];
  [v4 encodeObject:v6 forKey:@"messageContents"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  messageContentTypes = self->_messageContentTypes;
  messageContents = self->_messageContents;

  return [v4 initWithMessageContentTypes:messageContentTypes messageContents:messageContents];
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
      v5 = [(STCompoundContent *)self isEqualToCompoundContent:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCompoundContent:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(STCompoundContent *)self messageContentTypes];
    v6 = [(STCompoundContent *)v4 messageContentTypes];
    if ([v5 isEqualToArray:v6])
    {
      v7 = [(STCompoundContent *)self messageContents];
      v8 = [(STCompoundContent *)v4 messageContents];
      v9 = [v7 isEqualToArray:v8];
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
  v3 = [(STCompoundContent *)self messageContentTypes];
  v4 = [(STCompoundContent *)self messageContents];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = [v3 hash];
  v13 = &v5[[v4 hash]];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000129D0;
  v9[3] = &unk_1001A2FA8;
  v9[4] = &v10;
  [v3 enumerateObjectsUsingBlock:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012A0C;
  v8[3] = &unk_1001A2FD0;
  v8[4] = &v10;
  [v4 enumerateObjectsUsingBlock:v8];
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v6;
}

@end