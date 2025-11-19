@interface RXs9KixbxmL4RM2Z
+ (id)sharedInstance;
- (RXs9KixbxmL4RM2Z)init;
- (id)KvXBZ2Y159GbeEgH:(id)a3;
- (id)OtYQBavMHoCfV2sk:(int64_t)a3;
- (void)f5FVXJrOBjzaLi8u:(id)a3;
- (void)qY1DoQqvimc9pbAA:(id)a3;
@end

@implementation RXs9KixbxmL4RM2Z

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000070BC;
  block[3] = &unk_10068EEE8;
  block[4] = a1;
  if (qword_1006D7C40 != -1)
  {
    dispatch_once(&qword_1006D7C40, block);
  }

  v2 = qword_1006D7C38;

  return v2;
}

- (RXs9KixbxmL4RM2Z)init
{
  v10.receiver = self;
  v10.super_class = RXs9KixbxmL4RM2Z;
  v2 = [(RXs9KixbxmL4RM2Z *)&v10 init];
  v3 = objc_opt_new();
  R0CYcVVd8XXm0zfW = v2->R0CYcVVd8XXm0zfW;
  v2->R0CYcVVd8XXm0zfW = v3;

  v5 = objc_alloc_init(NSLock);
  uBOR9lc7Krr6TYui = v2->_uBOR9lc7Krr6TYui;
  v2->_uBOR9lc7Krr6TYui = v5;

  v7 = dispatch_queue_create("com.apple.asd.ctimer", 0);
  mH3NQ8DXxcL1G9QZ = v2->_mH3NQ8DXxcL1G9QZ;
  v2->_mH3NQ8DXxcL1G9QZ = v7;

  return v2;
}

- (id)KvXBZ2Y159GbeEgH:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_uBOR9lc7Krr6TYui lock];
  v5 = 0;
  do
  {
    v6 = v5;
    v5 = [(RXs9KixbxmL4RM2Z *)self OtYQBavMHoCfV2sk:8];

    v7 = [(NSMutableDictionary *)self->R0CYcVVd8XXm0zfW objectForKey:v5];
  }

  while (v7);
  [(NSMutableDictionary *)self->R0CYcVVd8XXm0zfW setObject:v4 forKey:v5];
  [(NSLock *)self->_uBOR9lc7Krr6TYui unlock];
  [(RXs9KixbxmL4RM2Z *)self qY1DoQqvimc9pbAA:v5];

  return v5;
}

- (void)f5FVXJrOBjzaLi8u:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_uBOR9lc7Krr6TYui lock];
  if (v4)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v5 = [(RXs9KixbxmL4RM2Z *)self xkNh5bfoCwq3gGYr:v4];
    v6 = v5;
    if (v5)
    {
      [v5 Xj38ZYkbLwtCgBTH];
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }

    [(NSMutableDictionary *)self->R0CYcVVd8XXm0zfW removeObjectForKey:v4];
    if (v9)
    {
      v8 = 0;
      v7 = &v8;
      sub_1002C9B10();
    }
  }

  [(NSLock *)self->_uBOR9lc7Krr6TYui unlock];
}

- (void)qY1DoQqvimc9pbAA:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 1800000000000);
  mH3NQ8DXxcL1G9QZ = self->_mH3NQ8DXxcL1G9QZ;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000073D0;
  v8[3] = &unk_10068EF10;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_after(v5, mH3NQ8DXxcL1G9QZ, v8);
}

- (id)OtYQBavMHoCfV2sk:(int64_t)a3
{
  v4 = [NSMutableString stringWithCapacity:?];
  if (a3 >= 1)
  {
    do
    {
      [v4 appendFormat:@"%C", objc_msgSend(@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", "characterAtIndex:", arc4random_uniform(objc_msgSend(@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", "length")))];
      --a3;
    }

    while (a3);
  }

  return v4;
}

@end