@interface SAPAStyleWaitInfo
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (id)_initWithSerializedWaitInfo:(id *)info;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
@end

@implementation SAPAStyleWaitInfo

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleWaitInfo" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleWaitInfo" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleWaitInfo" userInfo:0];
  objc_exception_throw(v2);
}

- (id)_initWithSerializedWaitInfo:(id *)info
{
  if (!info || info->var0 != 233811181)
  {
    v8 = [SAException exceptionWithName:@"Decoding failure" reason:@"Tried to initialize with bad waitinfo" userInfo:0];
    objc_exception_throw(v8);
  }

  v9.receiver = self;
  v9.super_class = SAPAStyleWaitInfo;
  v4 = [(SAPAStyleWaitInfo *)&v9 init];
  if (v4)
  {
    v5 = [SAWaitInfo stateWithPAStyleSerializedWaitInfo:info];
    waitInfo = v4->_waitInfo;
    v4->_waitInfo = v5;
  }

  return v4;
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (!buffer)
  {
    v7 = [SAException exceptionWithName:@"Decoding failure" reason:@"Passed in NULL buffer" userInfo:0];
    objc_exception_throw(v7);
  }

  v5 = [SAPAStyleWaitInfo alloc];

  return [(SAPAStyleWaitInfo *)v5 _initWithSerializedWaitInfo:buffer];
}

@end