@interface TSUExtendedAttribute
+ (id)extendedAttributeFromPath:(id)path name:(id)name options:(int)options error:(id *)error;
+ (id)extendedAttributeWithName:(id)name value:(id)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)setAttributeToPath:(id)path options:(int)options error:(id *)error;
- (BOOL)setAttributeToPathFileSystemRepresentation:(const char *)representation options:(int)options error:(id *)error;
- (BOOL)shouldPreserveForIntent:(unsigned int)intent;
- (TSUExtendedAttribute)init;
- (TSUExtendedAttribute)initWithName:(id)name value:(id)value;
- (id)description;
- (id)initFromPath:(id)path name:(id)name options:(int)options error:(id *)error;
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

+ (id)extendedAttributeFromPath:(id)path name:(id)name options:(int)options error:(id *)error
{
  v7 = *&options;
  nameCopy = name;
  pathCopy = path;
  v12 = [[self alloc] initFromPath:pathCopy name:nameCopy options:v7 error:error];

  return v12;
}

- (TSUExtendedAttribute)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUExtendedAttribute init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExtendedAttribute.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:24 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUExtendedAttribute init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
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

- (id)initFromPath:(id)path name:(id)name options:(int)options error:(id *)error
{
  v7 = *&options;
  nameCopy = name;
  fileSystemRepresentation = [path fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    self = [(TSUExtendedAttribute *)self initFromPathFileSystemRepresentation:fileSystemRepresentation name:nameCopy forRemoval:0 options:v7 error:error];
    selfCopy = self;
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:2 userInfo:0];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
      v15 = MEMORY[0x277CCA9B8];
      v16 = 22;
LABEL_19:
      [v15 tsu_fileReadPOSIXErrorWithNumber:v16 userInfo:0];
      *error = selfCopy2 = 0;
      goto LABEL_25;
    }

LABEL_24:
    selfCopy2 = 0;
    goto LABEL_25;
  }

  if (!removalCopy)
  {
    v17 = uTF8String;
    v18 = getxattr(representation, uTF8String, 0, 0, 0, options);
    if (!v18)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEA90]);
      v22 = [(TSUExtendedAttribute *)self initWithName:nameCopy value:v21];
LABEL_16:
      self = v22;

      selfCopy2 = self;
      goto LABEL_25;
    }

    v19 = v18;
    if (v18 == -1)
    {
      if (error)
      {
        v20 = MEMORY[0x277CCA9B8];
        v16 = *__error();
        v15 = v20;
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    v23 = malloc_type_malloc(v18, 0xA5D88C57uLL);
    if (!v23)
    {
      if (error)
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = 12;
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    v24 = v23;
    v25 = getxattr(representation, v17, v23, v19, 0, options);
    if (v25 != -1)
    {
      if (v25 != v19)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUExtendedAttribute initFromPathFileSystemRepresentation:name:forRemoval:options:error:]"];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExtendedAttribute.m"];
        [TSUAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:80 isFatal:0 description:"Unexpected result."];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v24 length:v19 freeWhenDone:1];
      v22 = [(TSUExtendedAttribute *)self initWithName:nameCopy value:v21];
      goto LABEL_16;
    }

    if (TSUDefaultCat_init_token == -1)
    {
      if (!error)
      {
LABEL_23:
        free(v24);
        goto LABEL_24;
      }
    }

    else
    {
      sub_2771156FC();
      if (!error)
      {
        goto LABEL_23;
      }
    }

    *error = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_23;
  }

  self = [(TSUExtendedAttribute *)self initWithName:nameCopy value:0];
  selfCopy2 = self;
LABEL_25:

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

- (BOOL)setAttributeToPath:(id)path options:(int)options error:(id *)error
{
  v6 = *&options;
  pathCopy = path;
  fileSystemRepresentation = [path fileSystemRepresentation];
  if (fileSystemRepresentation)
  {

    return [(TSUExtendedAttribute *)self setAttributeToPathFileSystemRepresentation:fileSystemRepresentation options:v6 error:error];
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:2 userInfo:0];
    }

    return 0;
  }
}

- (BOOL)setAttributeToPathFileSystemRepresentation:(const char *)representation options:(int)options error:(id *)error
{
  uTF8String = [(NSString *)self->_name UTF8String];
  if (!uTF8String)
  {
LABEL_5:
    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = 22;
LABEL_15:
      v19 = [v14 tsu_fileReadPOSIXErrorWithNumber:v15 userInfo:0];
      v20 = v19;
      result = 0;
      *error = v19;
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

    v16 = setxattr(representation, v10, bytes, v12, 0, options);
  }

  else
  {
    if (!strcmp(v10, "com.apple.quarantine"))
    {
      return 1;
    }

    v16 = removexattr(representation, v10, options);
  }

  if (v16 != -1)
  {
    return 1;
  }

  if (error)
  {
    v18 = MEMORY[0x277CCA9B8];
    v15 = *__error();
    v14 = v18;
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
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p name='%@' value=%@>", v5, self, self->_name, self->_value];

  return v6;
}

@end