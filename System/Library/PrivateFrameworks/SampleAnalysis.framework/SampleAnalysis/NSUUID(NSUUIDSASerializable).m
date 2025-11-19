@interface NSUUID(NSUUIDSASerializable)
+ (uint64_t)newInstanceWithoutReferencesFromSerializedBuffer:()NSUUIDSASerializable bufferLength:;
- (uint64_t)addSelfToBuffer:()NSUUIDSASerializable bufferLength:withCompletedSerializationDictionary:;
- (void)addSelfToSerializationDictionary:()NSUUIDSASerializable;
@end

@implementation NSUUID(NSUUIDSASerializable)

- (uint64_t)addSelfToBuffer:()NSUUIDSASerializable bufferLength:withCompletedSerializationDictionary:
{
  if (!a3 || !a5)
  {
    v6 = [SAException exceptionWithName:@"Encoding failure" reason:@"Invalid args" userInfo:0];
    objc_exception_throw(v6);
  }

  *a3 = 4277006349;
  [a1 getUUIDBytes:a3 + 1];
  return 1;
}

- (void)addSelfToSerializationDictionary:()NSUUIDSASerializable
{
  v5 = [MEMORY[0x1E696AFB0] classDictionaryKey];
  SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, a1, v5);
}

+ (uint64_t)newInstanceWithoutReferencesFromSerializedBuffer:()NSUUIDSASerializable bufferLength:
{
  if (!a3)
  {
    v4 = @"Invalid buffer";
    goto LABEL_8;
  }

  if (*a3 != 4277006349)
  {
    v4 = @"Bad SANSUUID magic";
    goto LABEL_8;
  }

  result = uuidForBytes((a3 + 1));
  if (!result)
  {
    v4 = @"Got a nil UUID";
LABEL_8:
    v5 = [SAException exceptionWithName:@"Decoding failure" reason:v4 userInfo:0];
    objc_exception_throw(v5);
  }

  return result;
}

@end