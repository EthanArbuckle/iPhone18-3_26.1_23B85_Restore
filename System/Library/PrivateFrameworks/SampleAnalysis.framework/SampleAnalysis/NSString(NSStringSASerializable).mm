@interface NSString(NSStringSASerializable)
+ (uint64_t)newInstanceWithoutReferencesFromSerializedBuffer:()NSStringSASerializable bufferLength:;
- (uint64_t)addSelfToBuffer:()NSStringSASerializable bufferLength:withCompletedSerializationDictionary:;
- (void)addSelfToSerializationDictionary:()NSStringSASerializable;
@end

@implementation NSString(NSStringSASerializable)

- (uint64_t)addSelfToBuffer:()NSStringSASerializable bufferLength:withCompletedSerializationDictionary:
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3 || !a5)
  {
    goto LABEL_11;
  }

  *a3 = 4277001901;
  v8 = a3 + 2;
  v9 = [self dataUsingEncoding:4 allowLossyConversion:1];
  v10 = v9;
  if (!v9)
  {
    a3[1] = 1;
    *(a3 + 16) = 0;
    goto LABEL_7;
  }

  if ([v9 length] + 1 > (a4 - 16))
  {
    v13 = *__error();
    v14 = _sa_logt();
    v15 = a4 - 17;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      uTF8String = [self UTF8String];
      v26 = 2048;
      v27 = v15;
      v28 = 2048;
      v29 = [v10 length];
      _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "%s claimed it was %lu UTF8 characters, but ended up being %lu", buf, 0x20u);
    }

    *__error() = v13;
    uTF8String2 = [self UTF8String];
    [v10 length];
    _SASetCrashLogMessage(771, "%s claimed it was %lu UTF8 characters, but ended up being %lu", v17, v18, v19, v20, v21, v22, uTF8String2);
    _os_crash();
    __break(1u);
LABEL_11:
    v23 = [SAException exceptionWithName:@"Encoding failure" reason:@"Invalid args" userInfo:0];
    objc_exception_throw(v23);
  }

  memmove(v8, [v10 bytes], objc_msgSend(v10, "length"));
  *(v8 + [v10 length]) = 0;
  a3[1] = [v10 length] + 1;
LABEL_7:

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:()NSStringSASerializable
{
  classDictionaryKey = [MEMORY[0x1E696AEC0] classDictionaryKey];
  SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, classDictionaryKey);
}

+ (uint64_t)newInstanceWithoutReferencesFromSerializedBuffer:()NSStringSASerializable bufferLength:
{
  if (!a3)
  {
    v5 = @"Invalid buffer";
    goto LABEL_12;
  }

  if (*a3 != 4277001901)
  {
    v5 = @"Bad SANSString magic";
    goto LABEL_12;
  }

  v3 = a3[1];
  if (!v3)
  {
    v5 = @"0-length SANSString";
    goto LABEL_12;
  }

  if (*(a3 + v3 + 15))
  {
    v5 = @"Non-nul terminated SANSString";
    goto LABEL_12;
  }

  result = SANSStringForCString((a3 + 2));
  if (!result)
  {
    v5 = @"Got a nil string";
LABEL_12:
    v6 = [SAException exceptionWithName:@"Decoding failure" reason:v5 userInfo:0];
    objc_exception_throw(v6);
  }

  return result;
}

@end