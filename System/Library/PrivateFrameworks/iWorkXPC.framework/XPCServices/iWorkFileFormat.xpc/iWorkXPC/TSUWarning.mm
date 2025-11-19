@interface TSUWarning
+ (id)fontWarningWithMessage:(id)a3 fontNames:(id)a4;
+ (id)missingMediaWarningWithMessage:(id)a3 data:(id)a4;
+ (id)warningWithKind:(int64_t)a3 message:(id)a4;
+ (id)warningWithMessage:(id)a3;
+ (id)warningWithMessage:(id)a3 affectedObject:(id)a4;
+ (id)warningWithMessage:(id)a3 affectedObjects:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUploaderWarning;
- (TSUWarning)initWithKind:(int64_t)a3 message:(id)a4;
- (id)affectedObjects;
- (void)addAffectedObjects:(id)a3;
- (void)setAffectedObjects:(id)a3;
@end

@implementation TSUWarning

+ (id)warningWithMessage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithKind:0 message:v4];

  return v5;
}

+ (id)warningWithMessage:(id)a3 affectedObject:(id)a4
{
  v6 = a3;
  if (a4)
  {
    a4 = [NSSet setWithObject:a4];
  }

  v7 = [a1 warningWithMessage:v6 affectedObjects:a4];

  return v7;
}

+ (id)warningWithMessage:(id)a3 affectedObjects:(id)a4
{
  v6 = a4;
  v7 = [a1 warningWithMessage:a3];
  if ([v6 count])
  {
    [v7 setAffectedObjects:v6];
  }

  return v7;
}

+ (id)warningWithKind:(int64_t)a3 message:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithKind:a3 message:v6];

  return v7;
}

- (TSUWarning)initWithKind:(int64_t)a3 message:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = TSUWarning;
  v7 = [(TSUWarning *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_kind = a3;
    v9 = [v6 copy];
    message = v8->_message;
    v8->_message = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = TSUDynamicCast(v7, v6);

  if (v8)
  {
    kind = self->_kind;
    if (kind == [v8 kind])
    {
      message = self->_message;
      v11 = [v8 message];
      if (message != v11)
      {
        v12 = self->_message;
        v3 = [v8 message];
        if (![(NSString *)v12 isEqualToString:v3])
        {
          v13 = 0;
          goto LABEL_16;
        }
      }

      detailMessage = self->_detailMessage;
      v15 = [v8 detailMessage];
      if (detailMessage == v15 || (v16 = self->_detailMessage, [v8 detailMessage], v4 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v16, "isEqualToString:", v4)))
      {
        userInfo = self->_userInfo;
        v18 = [v8 userInfo];
        v19 = v18;
        if (userInfo == v18)
        {

          v13 = 1;
        }

        else
        {
          v20 = self->_userInfo;
          v21 = [v8 userInfo];
          v13 = [(NSDictionary *)v20 isEqualToDictionary:v21];
        }

        if (detailMessage == v15)
        {
LABEL_15:

          if (message == v11)
          {
LABEL_17:

            goto LABEL_18;
          }

LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_15;
    }
  }

  v13 = 0;
LABEL_18:

  return v13;
}

- (id)affectedObjects
{
  v2 = [(NSDictionary *)self->_userInfo objectForKeyedSubscript:@"TSUWarningUserInfoAffectedObjectsKey"];
  v3 = [v2 copy];

  return v3;
}

- (void)setAffectedObjects:(id)a3
{
  userInfo = self->_userInfo;
  v6 = a3;
  if (userInfo)
  {
    v7 = [(NSDictionary *)userInfo mutableCopy];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  v8 = v7;
  [v7 setObject:a3 forKeyedSubscript:@"TSUWarningUserInfoAffectedObjectsKey"];

  [(TSUWarning *)self setUserInfo:v8];
}

- (void)addAffectedObjects:(id)a3
{
  v4 = a3;
  v5 = [(TSUWarning *)self affectedObjects];
  v7 = v5;
  if (v5)
  {
    v6 = [v5 setByAddingObjectsFromSet:v4];

    v4 = v6;
  }

  [(TSUWarning *)self setAffectedObjects:v4];
}

+ (id)fontWarningWithMessage:(id)a3 fontNames:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithKind:1 message:v7];

  if ([v6 count])
  {
    [v8 setAffectedObjects:v6];
  }

  return v8;
}

+ (id)missingMediaWarningWithMessage:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithKind:2 message:v7];

  if (v6)
  {
    v9 = [NSSet setWithObject:v6];
    [v8 setAffectedObjects:v9];
  }

  return v8;
}

- (BOOL)isUploaderWarning
{
  v3 = objc_opt_class();
  v4 = TSUDynamicCast(v3, self);
  v5 = [v4 isFromUploader];

  return v5;
}

@end