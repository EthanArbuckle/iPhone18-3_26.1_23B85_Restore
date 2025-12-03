@interface ocfHk3pjIqg7tBvb
+ (id)sharedInstance;
- (int64_t)dOcbonNWKg7PJwsF:(int64_t)f QlGRpofDrDPpBRod:(int64_t)rod mfJ8r89KwA6nfqNY:(sqlite3 *)y;
- (ocfHk3pjIqg7tBvb)init;
- (unsigned)hi5ump20ke7n4x6o:(id)hi5ump20ke7n4x6o hikv315wqxcu0dpl:(id)hikv315wqxcu0dpl;
- (void)zjSRqCgYhfa1wFgr:(id)fgr gqhuZKS8Xs6ugnFL:(id)l wRPFKB7h3xbveJFz:(_e97N3ZJrnSwhQeNK *)fz efc6f2da04fb733f:(int64_t)efc6f2da04fb733f x1IqrF8Flbgd3Jhk:(id)jhk;
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

- (int64_t)dOcbonNWKg7PJwsF:(int64_t)f QlGRpofDrDPpBRod:(int64_t)rod mfJ8r89KwA6nfqNY:(sqlite3 *)y
{
  result = f;
  if (f > 16)
  {
    if (f <= 22)
    {
      if (f == 17)
      {
        return 13711;
      }

      if (f == 18)
      {
        return 13712;
      }
    }

    else
    {
      switch(f)
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

  else if (f <= 8)
  {
    if (!f)
    {
      return result;
    }

    if (f == 7)
    {
      return 13715;
    }
  }

  else
  {
    switch(f)
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
  if (rod == 1)
  {
    v6 = 13710;
  }

  if (rod)
  {
    return v6;
  }

  else
  {
    return 13700;
  }
}

- (unsigned)hi5ump20ke7n4x6o:(id)hi5ump20ke7n4x6o hikv315wqxcu0dpl:(id)hikv315wqxcu0dpl
{
  hikv315wqxcu0dplCopy = hikv315wqxcu0dpl;
  if (![hi5ump20ke7n4x6o isEqualToString:@"/var/mobile/Library/Accounts/Accounts3.sqlite"])
  {
    goto LABEL_4;
  }

  v6 = [NSString stringWithFormat:@"%@\\s*%@\\s*%@", @"zusername", @"(IS|IS NOT|LIKE|GLOB|=|<|>)", @"[A-Z0-9a-z\\._%+-]+"];
  v11 = 0;
  v7 = [NSRegularExpression regularExpressionWithPattern:v6 options:1 error:&v11];
  v8 = [v7 numberOfMatchesInString:hikv315wqxcu0dplCopy options:8 range:{0, objc_msgSend(hikv315wqxcu0dplCopy, "length")}];

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

- (void)zjSRqCgYhfa1wFgr:(id)fgr gqhuZKS8Xs6ugnFL:(id)l wRPFKB7h3xbveJFz:(_e97N3ZJrnSwhQeNK *)fz efc6f2da04fb733f:(int64_t)efc6f2da04fb733f x1IqrF8Flbgd3Jhk:(id)jhk
{
  fgrCopy = fgr;
  lCopy = l;
  jhkCopy = jhk;
  queue = [(ocfHk3pjIqg7tBvb *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000E698;
  v19[3] = &unk_10068F3D0;
  fzCopy = fz;
  efc6f2da04fb733fCopy = efc6f2da04fb733f;
  v19[4] = self;
  v20 = lCopy;
  v21 = fgrCopy;
  v22 = jhkCopy;
  v16 = jhkCopy;
  v17 = fgrCopy;
  v18 = lCopy;
  dispatch_async(queue, v19);
}

@end