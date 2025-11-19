@interface ocfHk3pjIqg7tBvb
+ (id)sharedInstance;
- (int64_t)dOcbonNWKg7PJwsF:(int64_t)a3 QlGRpofDrDPpBRod:(int64_t)a4 mfJ8r89KwA6nfqNY:(sqlite3 *)a5;
- (ocfHk3pjIqg7tBvb)init;
- (unsigned)hi5ump20ke7n4x6o:(id)a3 hikv315wqxcu0dpl:(id)a4;
- (void)zjSRqCgYhfa1wFgr:(id)a3 gqhuZKS8Xs6ugnFL:(id)a4 wRPFKB7h3xbveJFz:(_e97N3ZJrnSwhQeNK *)a5 efc6f2da04fb733f:(int64_t)a6 x1IqrF8Flbgd3Jhk:(id)a7;
@end

@implementation ocfHk3pjIqg7tBvb

- (ocfHk3pjIqg7tBvb)init
{
  v6.receiver = self;
  v6.super_class = ocfHk3pjIqg7tBvb;
  v2 = [(ocfHk3pjIqg7tBvb *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SqliteQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (int64_t)dOcbonNWKg7PJwsF:(int64_t)a3 QlGRpofDrDPpBRod:(int64_t)a4 mfJ8r89KwA6nfqNY:(sqlite3 *)a5
{
  result = a3;
  if (a3 > 16)
  {
    if (a3 <= 22)
    {
      if (a3 == 17)
      {
        return 13711;
      }

      if (a3 == 18)
      {
        return 13712;
      }
    }

    else
    {
      switch(a3)
      {
        case 513:
          return 13714;
        case 257:
          return 13713;
        case 23:
          return 13702;
      }
    }
  }

  else if (a3 <= 8)
  {
    if (!a3)
    {
      return result;
    }

    if (a3 == 7)
    {
      return 13715;
    }
  }

  else
  {
    switch(a3)
    {
      case 9:
        return 13709;
      case 10:
        return 13716;
      case 13:
        return 13717;
    }
  }

  v6 = 13799;
  if (a4 == 1)
  {
    v6 = 13710;
  }

  if (a4)
  {
    return v6;
  }

  else
  {
    return 13700;
  }
}

- (unsigned)hi5ump20ke7n4x6o:(id)a3 hikv315wqxcu0dpl:(id)a4
{
  v5 = a4;
  if (![a3 isEqualToString:@"/var/mobile/Library/Accounts/Accounts3.sqlite"])
  {
    goto LABEL_4;
  }

  v6 = [NSString stringWithFormat:@"%@\\s*%@\\s*%@", @"zusername", @"(IS|IS NOT|LIKE|GLOB|=|<|>)", @"[A-Z0-9a-z\\._%+-]+"];
  v11 = 0;
  v7 = [NSRegularExpression regularExpressionWithPattern:v6 options:1 error:&v11];
  v8 = [v7 numberOfMatchesInString:v5 options:8 range:{0, objc_msgSend(v5, "length")}];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
LABEL_4:
    v9 = 1;
  }

  return v9;
}

+ (id)sharedInstance
{
  if (qword_1006D7CA8 != -1)
  {
    sub_10059363C();
  }

  v3 = qword_1006D7CA0;

  return v3;
}

- (void)zjSRqCgYhfa1wFgr:(id)a3 gqhuZKS8Xs6ugnFL:(id)a4 wRPFKB7h3xbveJFz:(_e97N3ZJrnSwhQeNK *)a5 efc6f2da04fb733f:(int64_t)a6 x1IqrF8Flbgd3Jhk:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(ocfHk3pjIqg7tBvb *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000E698;
  v19[3] = &unk_10068F3D0;
  v23 = a5;
  v24 = a6;
  v19[4] = self;
  v20 = v13;
  v21 = v12;
  v22 = v14;
  v16 = v14;
  v17 = v12;
  v18 = v13;
  dispatch_async(v15, v19);
}

@end