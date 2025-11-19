@interface TSUExtendedAttribute
+ (id)extendedAttributeWithName:(id)a3 value:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)setAttributeToPathFileSystemRepresentation:(const char *)a3 options:(int)a4 error:(id *)a5;
- (BOOL)shouldPreserveForIntent:(unsigned int)a3;
- (TSUExtendedAttribute)init;
- (TSUExtendedAttribute)initWithName:(id)a3 value:(id)a4;
- (id)description;
- (id)initFromPathFileSystemRepresentation:(const char *)a3 name:(id)a4 forRemoval:(BOOL)a5 options:(int)a6 error:(id *)a7;
@end

@implementation TSUExtendedAttribute

+ (id)extendedAttributeWithName:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 value:v6];

  return v8;
}

- (TSUExtendedAttribute)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CC9B0);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSUExtendedAttribute init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUExtendedAttribute.m";
    v15 = 1024;
    v16 = 24;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSUExtendedAttribute init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUExtendedAttribute.m"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:24 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSUExtendedAttribute init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUExtendedAttribute)initWithName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TSUExtendedAttribute;
  v8 = [(TSUExtendedAttribute *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

- (id)initFromPathFileSystemRepresentation:(const char *)a3 name:(id)a4 forRemoval:(BOOL)a5 options:(int)a6 error:(id *)a7
{
  v9 = a5;
  v12 = a4;
  v13 = [v12 UTF8String];
  if (!v13)
  {
    if (a7)
    {
      v15 = 22;
LABEL_23:
      [NSError tsu_fileReadPOSIXErrorWithNumber:v15 userInfo:0];
      *a7 = v14 = 0;
      goto LABEL_31;
    }

LABEL_30:
    v14 = 0;
    goto LABEL_31;
  }

  if (!v9)
  {
    v16 = v13;
    v17 = getxattr(a3, v13, 0, 0, 0, a6);
    if (!v17)
    {
      v19 = objc_alloc_init(NSData);
      v20 = [(TSUExtendedAttribute *)self initWithName:v12 value:v19];
LABEL_20:
      self = v20;

      v14 = self;
      goto LABEL_31;
    }

    v18 = v17;
    if (v17 == -1)
    {
      if (a7)
      {
        v15 = *__error();
        goto LABEL_23;
      }

      goto LABEL_30;
    }

    v21 = malloc_type_malloc(v17, 0xA5D88C57uLL);
    if (!v21)
    {
      if (a7)
      {
        v15 = 12;
        goto LABEL_23;
      }

      goto LABEL_30;
    }

    v22 = v21;
    v23 = getxattr(a3, v16, v21, v18, 0, a6);
    if (v23 != -1)
    {
      if (v23 != v18)
      {
        v24 = +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_10015B0DC();
        }

        v25 = TSUAssertCat_log_t;
        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_10015B0F0(v24, v25);
        }

        v26 = [NSString stringWithUTF8String:"[TSUExtendedAttribute initFromPathFileSystemRepresentation:name:forRemoval:options:error:]"];
        v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUExtendedAttribute.m"];
        [TSUAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:80 isFatal:0 description:"Unexpected result."];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      v19 = [[NSData alloc] initWithBytesNoCopy:v22 length:v18 freeWhenDone:1];
      v20 = [(TSUExtendedAttribute *)self initWithName:v12 value:v19];
      goto LABEL_20;
    }

    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015B19C();
    }

    v28 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015B1B0(v16, a3, v28);
      if (!a7)
      {
        goto LABEL_29;
      }
    }

    else if (!a7)
    {
LABEL_29:
      free(v22);
      goto LABEL_30;
    }

    *a7 = [NSError tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_29;
  }

  self = [(TSUExtendedAttribute *)self initWithName:v12 value:0];
  v14 = self;
LABEL_31:

  return v14;
}

- (BOOL)shouldPreserveForIntent:(unsigned int)a3
{
  v4 = [(NSString *)self->_name UTF8String];
  if (v4)
  {
    LOBYTE(v4) = xattr_preserve_for_intent(v4, a3) != 0;
  }

  return v4;
}

- (BOOL)setAttributeToPathFileSystemRepresentation:(const char *)a3 options:(int)a4 error:(id *)a5
{
  v9 = [(NSString *)self->_name UTF8String];
  if (!v9)
  {
LABEL_5:
    if (a5)
    {
      v14 = 22;
LABEL_15:
      v17 = [NSError tsu_fileReadPOSIXErrorWithNumber:v14 userInfo:0];
      v18 = v17;
      result = 0;
      *a5 = v17;
      return result;
    }

    return 0;
  }

  v10 = v9;
  value = self->_value;
  if (value)
  {
    v12 = [(NSData *)value length];
    if (v12)
    {
      v13 = [(NSData *)self->_value bytes];
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v13 = "";
    }

    v15 = setxattr(a3, v10, v13, v12, 0, a4);
  }

  else
  {
    if (!strcmp(v10, "com.apple.quarantine"))
    {
      return 1;
    }

    v15 = removexattr(a3, v10, a4);
  }

  if (v15 != -1)
  {
    return 1;
  }

  if (a5)
  {
    v14 = *__error();
    goto LABEL_15;
  }

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);

  if (v6)
  {
    name = self->_name;
    v8 = [v6 name];
    if (name | v8 && ![(NSString *)name isEqual:v8])
    {
      v11 = 0;
    }

    else
    {
      value = self->_value;
      v10 = [v6 value];
      if (value | v10)
      {
        v11 = [(NSData *)value isEqual:v10];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p name='%@' value=%@>", v4, self, self->_name, self->_value];

  return v5;
}

@end