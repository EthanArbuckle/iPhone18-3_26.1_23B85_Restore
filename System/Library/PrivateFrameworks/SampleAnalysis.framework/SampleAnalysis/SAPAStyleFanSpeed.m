@interface SAPAStyleFanSpeed
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
@end

@implementation SAPAStyleFanSpeed

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleFanSpeed" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleFanSpeed" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleFanSpeed" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if (!a3)
  {
    v9 = @"NULL serializedFanSpeed";
    goto LABEL_6;
  }

  if (*a3 != 4205488804)
  {
    v9 = @"Bad PAFanSpeed magic";
LABEL_6:
    v10 = [SAException exceptionWithName:@"Decoding failure" reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  v5 = objc_alloc_init(SAPAStyleFanSpeed);
  v6 = [SAFanSpeed fanSpeedWithPAStyleSerializedFanSpeed:a3];
  fanSpeed = v5->_fanSpeed;
  v5->_fanSpeed = v6;

  return v5;
}

@end