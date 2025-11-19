@interface SAPAStyleWaitInfo
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (id)_initWithSerializedWaitInfo:(id *)a3;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
@end

@implementation SAPAStyleWaitInfo

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleWaitInfo" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleWaitInfo" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleWaitInfo" userInfo:0];
  objc_exception_throw(v2);
}

- (id)_initWithSerializedWaitInfo:(id *)a3
{
  if (!a3 || a3->var0 != 233811181)
  {
    v8 = [SAException exceptionWithName:@"Decoding failure" reason:@"Tried to initialize with bad waitinfo" userInfo:0];
    objc_exception_throw(v8);
  }

  v9.receiver = self;
  v9.super_class = SAPAStyleWaitInfo;
  v4 = [(SAPAStyleWaitInfo *)&v9 init];
  if (v4)
  {
    v5 = [SAWaitInfo stateWithPAStyleSerializedWaitInfo:a3];
    waitInfo = v4->_waitInfo;
    v4->_waitInfo = v5;
  }

  return v4;
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if (!a3)
  {
    v7 = [SAException exceptionWithName:@"Decoding failure" reason:@"Passed in NULL buffer" userInfo:0];
    objc_exception_throw(v7);
  }

  v5 = [SAPAStyleWaitInfo alloc];

  return [(SAPAStyleWaitInfo *)v5 _initWithSerializedWaitInfo:a3];
}

@end