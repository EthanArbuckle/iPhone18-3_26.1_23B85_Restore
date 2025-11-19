@interface TSUExtendedAttribute
+ (id)extendedAttributeFromPath:(id)a3 name:(id)a4 options:(int)a5 error:(id *)a6;
+ (id)extendedAttributeWithName:(id)a3 value:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)setAttributeToPath:(id)a3 options:(int)a4 error:(id *)a5;
- (BOOL)setAttributeToPathFileSystemRepresentation:(const char *)a3 options:(int)a4 error:(id *)a5;
- (BOOL)shouldPreserveForIntent:(unsigned int)a3;
- (TSUExtendedAttribute)init;
- (TSUExtendedAttribute)initWithName:(id)a3 value:(id)a4;
- (id)description;
- (id)initFromPath:(id)a3 name:(id)a4 options:(int)a5 error:(id *)a6;
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

+ (id)extendedAttributeFromPath:(id)a3 name:(id)a4 options:(int)a5 error:(id *)a6
{
  v7 = *&a5;
  v10 = a4;
  v11 = a3;
  v12 = [[a1 alloc] initFromPath:v11 name:v10 options:v7 error:a6];

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

- (id)initFromPath:(id)a3 name:(id)a4 options:(int)a5 error:(id *)a6
{
  v7 = *&a5;
  v10 = a4;
  v11 = [a3 fileSystemRepresentation];
  if (v11)
  {
    self = [(TSUExtendedAttribute *)self initFromPathFileSystemRepresentation:v11 name:v10 forRemoval:0 options:v7 error:a6];
    v12 = self;
  }

  else if (a6)
  {
    [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:2 userInfo:0];
    *a6 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
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
      v15 = MEMORY[0x277CCA9B8];
      v16 = 22;
LABEL_19:
      [v15 tsu_fileReadPOSIXErrorWithNumber:v16 userInfo:0];
      *a7 = v14 = 0;
      goto LABEL_25;
    }

LABEL_24:
    v14 = 0;
    goto LABEL_25;
  }

  if (!v9)
  {
    v17 = v13;
    v18 = getxattr(a3, v13, 0, 0, 0, a6);
    if (!v18)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEA90]);
      v22 = [(TSUExtendedAttribute *)self initWithName:v12 value:v21];
LABEL_16:
      self = v22;

      v14 = self;
      goto LABEL_25;
    }

    v19 = v18;
    if (v18 == -1)
    {
      if (a7)
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
      if (a7)
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = 12;
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    v24 = v23;
    v25 = getxattr(a3, v17, v23, v19, 0, a6);
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
      v22 = [(TSUExtendedAttribute *)self initWithName:v12 value:v21];
      goto LABEL_16;
    }

    if (TSUDefaultCat_init_token == -1)
    {
      if (!a7)
      {
LABEL_23:
        free(v24);
        goto LABEL_24;
      }
    }

    else
    {
      sub_2771156FC();
      if (!a7)
      {
        goto LABEL_23;
      }
    }

    *a7 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_23;
  }

  self = [(TSUExtendedAttribute *)self initWithName:v12 value:0];
  v14 = self;
LABEL_25:

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

- (BOOL)setAttributeToPath:(id)a3 options:(int)a4 error:(id *)a5
{
  v6 = *&a4;
  v9 = a3;
  v10 = [a3 fileSystemRepresentation];
  if (v10)
  {

    return [(TSUExtendedAttribute *)self setAttributeToPathFileSystemRepresentation:v10 options:v6 error:a5];
  }

  else
  {
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:2 userInfo:0];
    }

    return 0;
  }
}

- (BOOL)setAttributeToPathFileSystemRepresentation:(const char *)a3 options:(int)a4 error:(id *)a5
{
  v9 = [(NSString *)self->_name UTF8String];
  if (!v9)
  {
LABEL_5:
    if (a5)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = 22;
LABEL_15:
      v19 = [v14 tsu_fileReadPOSIXErrorWithNumber:v15 userInfo:0];
      v20 = v19;
      result = 0;
      *a5 = v19;
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

    v16 = setxattr(a3, v10, v13, v12, 0, a4);
  }

  else
  {
    if (!strcmp(v10, "com.apple.quarantine"))
    {
      return 1;
    }

    v16 = removexattr(a3, v10, a4);
  }

  if (v16 != -1)
  {
    return 1;
  }

  if (a5)
  {
    v18 = MEMORY[0x277CCA9B8];
    v15 = *__error();
    v14 = v18;
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
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p name='%@' value=%@>", v5, self, self->_name, self->_value];

  return v6;
}

@end