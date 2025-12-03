@interface RBSXPCCoder
+ (id)coder;
+ (id)coderWithMessage:(id)message;
+ (id)rbs_testEncode:(id)encode andDecodeOfExpectedClass:(Class)class;
- (BOOL)containsValueForKey:(id)key;
- (BOOL)decodeBoolForKey:(id)key;
- (RBSXPCCoder)initWithMessage:(id)message;
- (RBSXPCCoder)initWithRBSXPCCoder:(id)coder;
- (double)decodeDoubleForKey:(id)key;
- (id)_finishCoding;
- (id)_implicitDecodeXPCObjectForKey:(id)key;
- (id)decodeDictionaryOfClass:(Class)class forKey:(id)key;
- (id)decodeStringForKey:(id)key;
- (id)decodeXPCObjectOfType:(_xpc_type_s *)type forKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
- (unint64_t)decodeUInt64ForKey:(id)key;
- (void)_removeValueForKey:(id)key;
- (void)dealloc;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeCollection:(id)collection forKey:(id)key;
- (void)encodeDictionary:(id)dictionary forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)encodeUInt64:(unint64_t)int64 forKey:(id)key;
@end

@implementation RBSXPCCoder

- (id)_finishCoding
{
  if (RBSAtomicSetFlag(1u, &self->_finalized))
  {
    archiver = self->_archiver;
    if (archiver)
    {
      encodedData = [(NSKeyedArchiver *)archiver encodedData];
      if ([encodedData length])
      {
        xpc_dictionary_set_data(self->_message, "bsx_archive", [encodedData bytes], objc_msgSend(encodedData, "length"));
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (id)coder
{
  v2 = [[self alloc] initWithMessage:0];

  return v2;
}

+ (id)coderWithMessage:(id)message
{
  messageCopy = message;
  v5 = [[self alloc] initWithMessage:messageCopy];

  return v5;
}

- (RBSXPCCoder)initWithMessage:(id)message
{
  messageCopy = message;
  v6 = messageCopy;
  if (messageCopy && MEMORY[0x193AD5A20](messageCopy) != MEMORY[0x1E69E9E80])
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
      objc_storeStrong(&v7->_message, message);
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

- (void)encodeObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (RBSAtomicGetFlag(&self->_finalized))
  {
    [RBSXPCCoder encodeObject:forKey:];
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else if (keyCopy)
  {
    goto LABEL_3;
  }

  [RBSXPCCoder encodeObject:forKey:];
LABEL_3:
  if (objectCopy)
  {
    _RBSXPCEncodeObjectForKey(self, objectCopy, keyCopy);
  }
}

- (void)encodeCollection:(id)collection forKey:(id)key
{
  collectionCopy = collection;
  keyCopy = key;
  if (collectionCopy && (_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && (_NSIsNSOrderedSet() & 1) == 0)
  {
    [RBSXPCCoder encodeCollection:collectionCopy forKey:?];
  }

  [(RBSXPCCoder *)self encodeObject:collectionCopy forKey:keyCopy];
}

- (void)encodeDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v7 = dictionaryCopy;
  v8 = keyCopy;
  if (dictionaryCopy)
  {
    v9 = _NSIsNSDictionary();
    v7 = dictionaryCopy;
    if ((v9 & 1) == 0)
    {
      [RBSXPCCoder encodeDictionary:forKey:];
      v7 = dictionaryCopy;
    }
  }

  [(RBSXPCCoder *)self encodeObject:v7 forKey:v8];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v9 = codingContext;
  keyCopy = key;
  uTF8String = [keyCopy UTF8String];

  RBSSerializeDoubleToXPCDictionaryWithKey(v9, uTF8String, double);
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  keyCopy = key;
  uTF8String = [key UTF8String];
  if (uTF8String)
  {
    v9 = uTF8String;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v11 = codingContext;
    xpc_dictionary_set_BOOL(v11, v9, bool);
  }
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  keyCopy = key;
  uTF8String = [key UTF8String];
  if (uTF8String)
  {
    v9 = uTF8String;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v11 = codingContext;
    xpc_dictionary_set_int64(v11, v9, int64);
  }
}

- (void)encodeUInt64:(unint64_t)int64 forKey:(id)key
{
  keyCopy = key;
  uTF8String = [key UTF8String];
  if (uTF8String)
  {
    v9 = uTF8String;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v11 = codingContext;
    xpc_dictionary_set_uint64(v11, v9, int64);
  }
}

- (BOOL)containsValueForKey:(id)key
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  keyCopy = key;
  uTF8String = [keyCopy UTF8String];

  v8 = RBSXPCDictionaryGetValue(v5, uTF8String, 0);

  return v8 != 0;
}

- (id)decodeDictionaryOfClass:(Class)class forKey:(id)key
{
  keyCopy = key;
  v7 = objc_opt_class();
  v8 = _BSXPCDecodeObjectForKey(self, keyCopy, v7, class);

  return v8;
}

- (id)decodeXPCObjectOfType:(_xpc_type_s *)type forKey:(id)key
{
  keyCopy = key;
  if (type)
  {
    class4NSXPC = xpc_get_class4NSXPC();
  }

  else
  {
    class4NSXPC = NSClassFromString(&cfstr_OsXpcObject.isa);
    v8 = class4NSXPC;
  }

  v9 = [(RBSXPCCoder *)self decodeObjectOfClass:class4NSXPC forKey:keyCopy];

  return v9;
}

- (id)decodeStringForKey:(id)key
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  keyCopy = key;
  uTF8String = [keyCopy UTF8String];

  v8 = RBSXPCDictionaryGetValue(v5, uTF8String, MEMORY[0x1E69E9F10]);

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

- (double)decodeDoubleForKey:(id)key
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  keyCopy = key;
  uTF8String = [keyCopy UTF8String];

  v8 = RBSDeserializeDoubleFromXPCDictionaryWithKey(v5, uTF8String);
  return v8;
}

- (BOOL)decodeBoolForKey:(id)key
{
  keyCopy = key;
  uTF8String = [key UTF8String];
  if (uTF8String)
  {
    v7 = uTF8String;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v9 = codingContext;
    v10 = xpc_dictionary_get_BOOL(v9, v7);

    LOBYTE(uTF8String) = v10;
  }

  return uTF8String;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  keyCopy = key;
  result = [key UTF8String];
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

- (unint64_t)decodeUInt64ForKey:(id)key
{
  keyCopy = key;
  result = [key UTF8String];
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

- (void)_removeValueForKey:(id)key
{
  if (key)
  {
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v5 = codingContext;
    keyCopy = key;
    uTF8String = [keyCopy UTF8String];

    v8 = v5;
    xdict = v8;
    if (uTF8String)
    {
      if (v8)
      {
        v9 = xpc_dictionary_get_value(v8, uTF8String);

        if (v9)
        {
          xpc_dictionary_set_value(xdict, uTF8String, 0);
        }
      }
    }

    else
    {
      [RBSXPCCoder _removeValueForKey:];
    }
  }
}

- (id)_implicitDecodeXPCObjectForKey:(id)key
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  keyCopy = key;
  uTF8String = [keyCopy UTF8String];

  v8 = RBSXPCDictionaryGetValue(v5, uTF8String, 0);

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

- (RBSXPCCoder)initWithRBSXPCCoder:(id)coder
{
  v4 = [coder decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"message"];
  v5 = [(RBSXPCCoder *)self initWithMessage:v4];

  return v5;
}

+ (id)rbs_testEncode:(id)encode andDecodeOfExpectedClass:(Class)class
{
  encodeCopy = encode;
  v6 = +[RBSXPCCoder coder];
  [v6 encodeObject:encodeCopy forKey:@"RBSUnitTesting"];

  createMessage = [v6 createMessage];
  v8 = [RBSXPCCoder coderWithMessage:createMessage];

  v9 = [v8 decodeObjectOfClass:class forKey:@"RBSUnitTesting"];

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