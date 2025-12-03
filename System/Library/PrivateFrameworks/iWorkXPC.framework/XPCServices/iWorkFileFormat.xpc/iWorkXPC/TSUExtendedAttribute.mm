@interface TSUExtendedAttribute
+ (id)extendedAttributeWithName:(id)name value:(id)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)setAttributeToPathFileSystemRepresentation:(const char *)representation options:(int)options error:(id *)error;
- (BOOL)shouldPreserveForIntent:(unsigned int)intent;
- (TSUExtendedAttribute)init;
- (TSUExtendedAttribute)initWithName:(id)name value:(id)value;
- (id)description;
- (id)initFromPathFileSystemRepresentation:(const char *)representation name:(id)name forRemoval:(BOOL)removal options:(int)options error:(id *)error;
@end

@implementation TSUExtendedAttribute

+ (id)extendedAttributeWithName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy value:valueCopy];

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

- (TSUExtendedAttribute)initWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = TSUExtendedAttribute;
  v8 = [(TSUExtendedAttribute *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

- (id)initFromPathFileSystemRepresentation:(const char *)representation name:(id)name forRemoval:(BOOL)removal options:(int)options error:(id *)error
{
  removalCopy = removal;
  nameCopy = name;
  uTF8String = [nameCopy UTF8String];
  if (!uTF8String)
  {
    if (error)
    {
      v15 = 22;
LABEL_23:
      [NSError tsu_fileReadPOSIXErrorWithNumber:v15 userInfo:0];
      *error = selfCopy2 = 0;
      goto LABEL_31;
    }

LABEL_30:
    selfCopy2 = 0;
    goto LABEL_31;
  }

  if (!removalCopy)
  {
    v16 = uTF8String;
    v17 = getxattr(representation, uTF8String, 0, 0, 0, options);
    if (!v17)
    {
      v19 = objc_alloc_init(NSData);
      v20 = [(TSUExtendedAttribute *)self initWithName:nameCopy value:v19];
LABEL_20:
      self = v20;

      selfCopy2 = self;
      goto LABEL_31;
    }

    v18 = v17;
    if (v17 == -1)
    {
      if (error)
      {
        v15 = *__error();
        goto LABEL_23;
      }

      goto LABEL_30;
    }

    v21 = malloc_type_malloc(v17, 0xA5D88C57uLL);
    if (!v21)
    {
      if (error)
      {
        v15 = 12;
        goto LABEL_23;
      }

      goto LABEL_30;
    }

    v22 = v21;
    v23 = getxattr(representation, v16, v21, v18, 0, options);
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
      v20 = [(TSUExtendedAttribute *)self initWithName:nameCopy value:v19];
      goto LABEL_20;
    }

    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015B19C();
    }

    v28 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015B1B0(v16, representation, v28);
      if (!error)
      {
        goto LABEL_29;
      }
    }

    else if (!error)
    {
LABEL_29:
      free(v22);
      goto LABEL_30;
    }

    *error = [NSError tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_29;
  }

  self = [(TSUExtendedAttribute *)self initWithName:nameCopy value:0];
  selfCopy2 = self;
LABEL_31:

  return selfCopy2;
}

- (BOOL)shouldPreserveForIntent:(unsigned int)intent
{
  uTF8String = [(NSString *)self->_name UTF8String];
  if (uTF8String)
  {
    LOBYTE(uTF8String) = xattr_preserve_for_intent(uTF8String, intent) != 0;
  }

  return uTF8String;
}

- (BOOL)setAttributeToPathFileSystemRepresentation:(const char *)representation options:(int)options error:(id *)error
{
  uTF8String = [(NSString *)self->_name UTF8String];
  if (!uTF8String)
  {
LABEL_5:
    if (error)
    {
      v14 = 22;
LABEL_15:
      v17 = [NSError tsu_fileReadPOSIXErrorWithNumber:v14 userInfo:0];
      v18 = v17;
      result = 0;
      *error = v17;
      return result;
    }

    return 0;
  }

  v10 = uTF8String;
  value = self->_value;
  if (value)
  {
    v12 = [(NSData *)value length];
    if (v12)
    {
      bytes = [(NSData *)self->_value bytes];
      if (!bytes)
      {
        goto LABEL_5;
      }
    }

    else
    {
      bytes = "";
    }

    v15 = setxattr(representation, v10, bytes, v12, 0, options);
  }

  else
  {
    if (!strcmp(v10, "com.apple.quarantine"))
    {
      return 1;
    }

    v15 = removexattr(representation, v10, options);
  }

  if (v15 != -1)
  {
    return 1;
  }

  if (error)
  {
    v14 = *__error();
    goto LABEL_15;
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);

  if (v6)
  {
    name = self->_name;
    name = [v6 name];
    if (name | name && ![(NSString *)name isEqual:name])
    {
      v11 = 0;
    }

    else
    {
      value = self->_value;
      value = [v6 value];
      if (value | value)
      {
        v11 = [(NSData *)value isEqual:value];
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