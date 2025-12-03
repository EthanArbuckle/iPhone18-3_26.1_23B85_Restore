@interface TSUUUIDPath
+ (id)lastUUIDFromUUIDPathString:(id)string;
- (BOOL)isEqual:(id)equal;
- (NSString)UUIDPathString;
- (TSUUUIDPath)initWithArray:(id)array;
- (TSUUUIDPath)initWithUUIDPathString:(id)string;
- (id)UUIDPathByAppendingUUID:(id)d;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSUUUIDPath

- (TSUUUIDPath)initWithArray:(id)array
{
  arrayCopy = array;
  objc_opt_class();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = arrayCopy;
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
          selfCopy = 0;
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
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

- (TSUUUIDPath)initWithUUIDPathString:(id)string
{
  stringCopy = string;
  v5 = [TSUUUIDPath tokenizeUUIDPathString:stringCopy];
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
            [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:50 isFatal:0 description:"Invalid UUID path string: %{public}@", stringCopy];

            +[TSUAssertionHandler logBacktraceThrottled];
            selfCopy = 0;
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
  selfCopy = self;
LABEL_17:

  return selfCopy;
}

- (id)UUIDPathByAppendingUUID:(id)d
{
  v3 = [(NSArray *)self->_uuids arrayByAddingObject:d];
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

          uUIDString = [v10 UUIDString];
          [v3 appendString:uUIDString];

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

+ (id)lastUUIDFromUUIDPathString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy length];
  v5 = [@"/" length];
  if (v4 < 0x25)
  {
    if (v4 == 36)
    {
      v11 = [[NSUUID alloc] initWithUUIDString:stringCopy];
      if (v11)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = v4 - 36;
    v7 = [stringCopy substringWithRange:{v6 - v5, v5}];
    v8 = [@"/" isEqualToString:v7];

    if (v8)
    {
      v9 = [NSUUID alloc];
      v10 = [stringCopy substringFromIndex:v6];
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
  [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:101 isFatal:0 description:"Invalid UUID path string: %{public}@", stringCopy];

  +[TSUAssertionHandler logBacktraceThrottled];
  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuids = self->_uuids;
    v6 = equalCopy[1];

    return [(NSArray *)uuids isEqual:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSUUUIDPath;
    v8 = [(TSUUUIDPath *)&v9 isEqual:equalCopy];

    return v8;
  }
}

- (unint64_t)hash
{
  lastObject = [(NSArray *)self->_uuids lastObject];
  v3 = lastObject;
  if (lastObject)
  {
    v4 = [lastObject hash];
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
  uUIDPathString = [(TSUUUIDPath *)self UUIDPathString];
  v6 = [NSString stringWithFormat:@"<%@:%p %@>", v4, self, uUIDPathString];

  return v6;
}

@end