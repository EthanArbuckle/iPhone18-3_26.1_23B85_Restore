@interface RBSXPCCoder
+ (id)coder;
+ (id)coderWithMessage:(id)a3;
+ (id)rbs_testEncode:(id)a3 andDecodeOfExpectedClass:(Class)a4;
- (BOOL)containsValueForKey:(id)a3;
- (BOOL)decodeBoolForKey:(id)a3;
- (RBSXPCCoder)initWithMessage:(id)a3;
- (RBSXPCCoder)initWithRBSXPCCoder:(id)a3;
- (double)decodeDoubleForKey:(id)a3;
- (id)_finishCoding;
- (id)_implicitDecodeXPCObjectForKey:(id)a3;
- (id)decodeDictionaryOfClass:(Class)a3 forKey:(id)a4;
- (id)decodeStringForKey:(id)a3;
- (id)decodeXPCObjectOfType:(_xpc_type_s *)a3 forKey:(id)a4;
- (int64_t)decodeInt64ForKey:(id)a3;
- (unint64_t)decodeUInt64ForKey:(id)a3;
- (void)_removeValueForKey:(id)a3;
- (void)dealloc;
- (void)encodeBool:(BOOL)a3 forKey:(id)a4;
- (void)encodeCollection:(id)a3 forKey:(id)a4;
- (void)encodeDictionary:(id)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)encodeUInt64:(unint64_t)a3 forKey:(id)a4;
@end

@implementation RBSXPCCoder

- (id)_finishCoding
{
  if (RBSAtomicSetFlag(1u, &self->_finalized))
  {
    archiver = self->_archiver;
    if (archiver)
    {
      v4 = [(NSKeyedArchiver *)archiver encodedData];
      if ([v4 length])
      {
        xpc_dictionary_set_data(self->_message, "bsx_archive", [v4 bytes], objc_msgSend(v4, "length"));
      }

      v5 = self->_archiver;
      self->_archiver = 0;
    }
  }

  message = self->_message;

  return message;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (id)coder
{
  v2 = [[a1 alloc] initWithMessage:0];

  return v2;
}

+ (id)coderWithMessage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMessage:v4];

  return v5;
}

- (RBSXPCCoder)initWithMessage:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && MEMORY[0x193AD5A20](v5) != MEMORY[0x1E69E9E80])
  {
    [RBSXPCCoder initWithMessage:];
  }

  v13.receiver = self;
  v13.super_class = RBSXPCCoder;
  v7 = [(RBSXPCCoder *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_finalized = 0;
    if (v6)
    {
      objc_storeStrong(&v7->_message, a3);
      v9 = xpc_dictionary_get_remote_connection(v6);
      v10 = 16;
    }

    else
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      v10 = 8;
    }

    v11 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = v9;
  }

  return v8;
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (RBSAtomicGetFlag(&self->_finalized))
  {
    [RBSXPCCoder encodeObject:forKey:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  [RBSXPCCoder encodeObject:forKey:];
LABEL_3:
  if (v7)
  {
    _RBSXPCEncodeObjectForKey(self, v7, v6);
  }
}

- (void)encodeCollection:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7 && (_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && (_NSIsNSOrderedSet() & 1) == 0)
  {
    [RBSXPCCoder encodeCollection:v7 forKey:?];
  }

  [(RBSXPCCoder *)self encodeObject:v7 forKey:v6];
}

- (void)encodeDictionary:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v10;
  v8 = v6;
  if (v10)
  {
    v9 = _NSIsNSDictionary();
    v7 = v10;
    if ((v9 & 1) == 0)
    {
      [RBSXPCCoder encodeDictionary:forKey:];
      v7 = v10;
    }
  }

  [(RBSXPCCoder *)self encodeObject:v7 forKey:v8];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v9 = codingContext;
  v7 = a4;
  v8 = [v7 UTF8String];

  RBSSerializeDoubleToXPCDictionaryWithKey(v9, v8, a3);
}

- (void)encodeBool:(BOOL)a3 forKey:(id)a4
{
  v7 = a4;
  v8 = [a4 UTF8String];
  if (v8)
  {
    v9 = v8;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v11 = codingContext;
    xpc_dictionary_set_BOOL(v11, v9, a3);
  }
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v7 = a4;
  v8 = [a4 UTF8String];
  if (v8)
  {
    v9 = v8;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v11 = codingContext;
    xpc_dictionary_set_int64(v11, v9, a3);
  }
}

- (void)encodeUInt64:(unint64_t)a3 forKey:(id)a4
{
  v7 = a4;
  v8 = [a4 UTF8String];
  if (v8)
  {
    v9 = v8;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v11 = codingContext;
    xpc_dictionary_set_uint64(v11, v9, a3);
  }
}

- (BOOL)containsValueForKey:(id)a3
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  v6 = a3;
  v7 = [v6 UTF8String];

  v8 = RBSXPCDictionaryGetValue(v5, v7, 0);

  return v8 != 0;
}

- (id)decodeDictionaryOfClass:(Class)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v8 = _BSXPCDecodeObjectForKey(self, v6, v7, a3);

  return v8;
}

- (id)decodeXPCObjectOfType:(_xpc_type_s *)a3 forKey:(id)a4
{
  v6 = a4;
  if (a3)
  {
    class4NSXPC = xpc_get_class4NSXPC();
  }

  else
  {
    class4NSXPC = NSClassFromString(&cfstr_OsXpcObject.isa);
    v8 = class4NSXPC;
  }

  v9 = [(RBSXPCCoder *)self decodeObjectOfClass:class4NSXPC forKey:v6];

  return v9;
}

- (id)decodeStringForKey:(id)a3
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  v6 = a3;
  v7 = [v6 UTF8String];

  v8 = RBSXPCDictionaryGetValue(v5, v7, MEMORY[0x1E69E9F10]);

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:xpc_string_get_string_ptr(v8)];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)decodeDoubleForKey:(id)a3
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  v6 = a3;
  v7 = [v6 UTF8String];

  v8 = RBSDeserializeDoubleFromXPCDictionaryWithKey(v5, v7);
  return v8;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  if (v6)
  {
    v7 = v6;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v9 = codingContext;
    v10 = xpc_dictionary_get_BOOL(v9, v7);

    LOBYTE(v6) = v10;
  }

  return v6;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  v5 = a3;
  result = [a3 UTF8String];
  if (result)
  {
    v7 = result;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v9 = codingContext;
    int64 = xpc_dictionary_get_int64(v9, v7);

    return int64;
  }

  return result;
}

- (unint64_t)decodeUInt64ForKey:(id)a3
{
  v5 = a3;
  result = [a3 UTF8String];
  if (result)
  {
    v7 = result;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v9 = codingContext;
    uint64 = xpc_dictionary_get_uint64(v9, v7);

    return uint64;
  }

  return result;
}

- (void)_removeValueForKey:(id)a3
{
  if (a3)
  {
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v5 = codingContext;
    v6 = a3;
    v7 = [v6 UTF8String];

    v8 = v5;
    xdict = v8;
    if (v7)
    {
      if (v8)
      {
        v9 = xpc_dictionary_get_value(v8, v7);

        if (v9)
        {
          xpc_dictionary_set_value(xdict, v7, 0);
        }
      }
    }

    else
    {
      [RBSXPCCoder _removeValueForKey:];
    }
  }
}

- (id)_implicitDecodeXPCObjectForKey:(id)a3
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  v6 = a3;
  v7 = [v6 UTF8String];

  v8 = RBSXPCDictionaryGetValue(v5, v7, 0);

  if (v8 && (NSClassFromString(&cfstr_OsXpcObject.isa), v9 = objc_claimAutoreleasedReturnValue(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (RBSXPCCoder)initWithRBSXPCCoder:(id)a3
{
  v4 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"message"];
  v5 = [(RBSXPCCoder *)self initWithMessage:v4];

  return v5;
}

+ (id)rbs_testEncode:(id)a3 andDecodeOfExpectedClass:(Class)a4
{
  v5 = a3;
  v6 = +[RBSXPCCoder coder];
  [v6 encodeObject:v5 forKey:@"RBSUnitTesting"];

  v7 = [v6 createMessage];
  v8 = [RBSXPCCoder coderWithMessage:v7];

  v9 = [v8 decodeObjectOfClass:a4 forKey:@"RBSUnitTesting"];

  return v9;
}

- (void)initWithMessage:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"!message || (xpc_get_type(message) == XPC_TYPE_DICTIONARY)" object:? file:? lineNumber:? description:?];
}

- (void)encodeObject:forKey:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)encodeObject:forKey:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"key != nil" object:? file:? lineNumber:? description:?];
}

- (void)encodeCollection:(void *)a1 forKey:.cold.1(void *a1)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [a1 classForCoder];
  OUTLINED_FUNCTION_0_0();
  [v2 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (void)encodeDictionary:forKey:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_removeValueForKey:.cold.1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void RBSXPCDictionarySetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_object_t  _Nullable __strong, xpc_type_t _Nullable)"}];
  [OUTLINED_FUNCTION_7(v0 v1];
}

@end