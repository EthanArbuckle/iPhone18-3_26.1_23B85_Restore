@interface TSUUUIDPath
+ (id)lastUUIDFromUUIDPathString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)UUIDPathString;
- (TSUUUIDPath)initWithArray:(id)a3;
- (TSUUUIDPath)initWithUUIDPathString:(id)a3;
- (id)UUIDPathByAppendingUUID:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSUUUIDPath

- (TSUUUIDPath)initWithArray:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_100159E9C();
          }

          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            sub_100159EC4();
          }

          v13 = [NSString stringWithUTF8String:"[TSUUUIDPath initWithArray:]"];
          v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUUUIDPath.m"];
          [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:26 isFatal:0 description:"Invalid entry for TSUUUIDPath array: %{public}@", v10];

          +[TSUAssertionHandler logBacktraceThrottled];
          v15 = 0;
          goto LABEL_20;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18.receiver = self;
  v18.super_class = TSUUUIDPath;
  v11 = [(TSUUUIDPath *)&v18 init];
  if (v11)
  {
    if (v5)
    {
      v12 = [v5 copy];
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    uuids = v11->_uuids;
    v11->_uuids = v12;
  }

  self = v11;
  v15 = self;
LABEL_20:

  return v15;
}

- (TSUUUIDPath)initWithUUIDPathString:(id)a3
{
  v4 = a3;
  v5 = [TSUUUIDPath tokenizeUUIDPathString:v4];
  v6 = [v5 count];
  if (v6)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:v6];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [[NSUUID alloc] initWithUUIDString:*(*(&v18 + 1) + 8 * i)];
          if (!v12)
          {
            +[TSUAssertionHandler _atomicIncrementAssertCount];
            if (TSUAssertCat_init_token != -1)
            {
              sub_100159F50();
            }

            if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
            {
              sub_100159F78();
            }

            v15 = [NSString stringWithUTF8String:"[TSUUUIDPath initWithUUIDPathString:]"];
            v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUUUIDPath.m"];
            [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:50 isFatal:0 description:"Invalid UUID path string: %{public}@", v4];

            +[TSUAssertionHandler logBacktraceThrottled];
            v14 = 0;
            goto LABEL_17;
          }

          v13 = v12;
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  self = [(TSUUUIDPath *)self initWithArray:v6];
  v14 = self;
LABEL_17:

  return v14;
}

- (id)UUIDPathByAppendingUUID:(id)a3
{
  v3 = [(NSArray *)self->_uuids arrayByAddingObject:a3];
  v4 = [[TSUUUIDPath alloc] initWithArray:v3];

  return v4;
}

- (NSString)UUIDPathString
{
  v3 = [(NSArray *)self->_uuids count];
  if (v3)
  {
    v3 = [[NSMutableString alloc] initWithCapacity:{36 * v3 + objc_msgSend(@"/", "length") * (v3 - 1)}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_uuids;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      v8 = 1;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          if ((v8 & 1) == 0)
          {
            [v3 appendString:{@"/", v15}];
          }

          v11 = [v10 UUIDString];
          [v3 appendString:v11];

          v8 = 0;
          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v8 = 0;
      }

      while (v6);
    }
  }

  if (v3)
  {
    v12 = v3;
  }

  else
  {
    v12 = &stru_1001D3878;
  }

  v13 = v12;

  return &v12->isa;
}

+ (id)lastUUIDFromUUIDPathString:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [@"/" length];
  if (v4 < 0x25)
  {
    if (v4 == 36)
    {
      v11 = [[NSUUID alloc] initWithUUIDString:v3];
      if (v11)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = v4 - 36;
    v7 = [v3 substringWithRange:{v6 - v5, v5}];
    v8 = [@"/" isEqualToString:v7];

    if (v8)
    {
      v9 = [NSUUID alloc];
      v10 = [v3 substringFromIndex:v6];
      v11 = [v9 initWithUUIDString:v10];

      if (v11)
      {
        goto LABEL_12;
      }
    }
  }

  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_10015A004();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10015A018();
  }

  v12 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSUUUIDPath lastUUIDFromUUIDPathString:]");
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUUUIDPath.m"];
  [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:101 isFatal:0 description:"Invalid UUID path string: %{public}@", v3];

  +[TSUAssertionHandler logBacktraceThrottled];
  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuids = self->_uuids;
    v6 = v4[1];

    return [(NSArray *)uuids isEqual:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSUUUIDPath;
    v8 = [(TSUUUIDPath *)&v9 isEqual:v4];

    return v8;
  }
}

- (unint64_t)hash
{
  v2 = [(NSArray *)self->_uuids lastObject];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 hash];
  }

  else
  {
    v4 = 1529057258;
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TSUUUIDPath *)self UUIDPathString];
  v6 = [NSString stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

@end