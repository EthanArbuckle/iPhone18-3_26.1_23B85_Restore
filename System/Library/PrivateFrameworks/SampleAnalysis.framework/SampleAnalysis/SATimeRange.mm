@interface SATimeRange
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (id)timeRangeStart:(id)a3 end:(id)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (SATimeRange)initWithStart:(id)a3 end:(id)a4;
- (double)deltaMachAbsTimeSeconds;
- (double)deltaMachContTimeSeconds;
- (double)deltaWallTime;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)deltaMachAbsTime;
- (unint64_t)deltaMachContTime;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SATimeRange

- (unint64_t)deltaMachAbsTime
{
  v3 = [(SATimestamp *)self->_startTime machAbsTime];
  v4 = [(SATimestamp *)self->_endTime machAbsTime];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return v4 - v3;
  }
}

- (SATimeRange)initWithStart:(id)a3 end:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (([a3 le:a4] & 1) == 0)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [a3 debugDescription];
      v14 = [v13 UTF8String];
      v15 = [a4 debugDescription];
      *buf = 136315394;
      v27 = v14;
      v28 = 2080;
      v29 = [v15 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "start time %s > end time %s", buf, 0x16u);
    }

    *__error() = v11;
    v16 = [a3 debugDescription];
    v17 = [v16 UTF8String];
    v18 = [a4 debugDescription];
    [v18 UTF8String];
    _SASetCrashLogMessage(570, "start time %s > end time %s", v19, v20, v21, v22, v23, v24, v17);

    _os_crash();
    __break(1u);
  }

  v25.receiver = self;
  v25.super_class = SATimeRange;
  v7 = [(SATimeRange *)&v25 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_startTime, a3);
    objc_storeStrong(&v8->_endTime, a4);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)timeRangeStart:(id)a3 end:(id)a4
{
  v4 = [[a1 alloc] initWithStart:a3 end:a4];

  return v4;
}

- (int64_t)compare:(id)a3
{
  result = [(SATimestamp *)self->_startTime compare:?];
  if (result == -1)
  {
    if ([(SATimestamp *)self->_endTime compare:a3]== -1)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (double)deltaMachAbsTimeSeconds
{
  [(SATimestamp *)self->_startTime machAbsTimeSeconds];
  v4 = v3;
  [(SATimestamp *)self->_endTime machAbsTimeSeconds];
  v6 = v4 == 0.0 || v5 == 0.0;
  result = v5 - v4;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

- (unint64_t)deltaMachContTime
{
  v3 = [(SATimestamp *)self->_startTime machContTime];
  v4 = [(SATimestamp *)self->_endTime machContTime];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return v4 - v3;
  }
}

- (double)deltaMachContTimeSeconds
{
  [(SATimestamp *)self->_startTime machContTimeSeconds];
  v4 = v3;
  [(SATimestamp *)self->_endTime machContTimeSeconds];
  v6 = v4 == 0.0 || v5 == 0.0;
  result = v5 - v4;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

- (double)deltaWallTime
{
  [(SATimestamp *)self->_startTime wallTime];
  v4 = v3;
  [(SATimestamp *)self->_endTime wallTime];
  v6 = v4 == 0.0 || v5 == 0.0;
  result = v5 - v4;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(SATimestamp *)self->_startTime copy];
  v6 = [(SATimestamp *)self->_endTime copy];
  v7 = [v4 initWithStart:v5 end:v6];

  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SATimestamp *)self->_startTime debugDescription];
  v5 = [(SATimestamp *)self->_endTime debugDescription];
  v6 = [v3 stringWithFormat:@"start: %@\n  end: %@", v4, v5];

  return v6;
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  [a3 appendString:@"startTime:{"];
  [(SATimestamp *)self->_startTime writeJSONDictionaryEntriesToStream:a3];
  [a3 appendString:{@"}, endTime:{"}];
  [(SATimestamp *)self->_endTime writeJSONDictionaryEntriesToStream:a3];

  [a3 appendString:@"}"];
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SATimeRange *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SATimeRange *)self debugDescription];
      *buf = 136315650;
      v23 = [v13 UTF8String];
      v24 = 2048;
      v25 = [(SATimeRange *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      v27 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SATimeRange *)self debugDescription];
    v15 = [v14 UTF8String];
    [(SATimeRange *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(849, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, v15);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 257;
  *(&a3->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTime, a5);
  *(&a3->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTime, a5);
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    [(SATimestamp *)self->_startTime addSelfToSerializationDictionary:a3];
    endTime = self->_endTime;

    [(SATimestamp *)endTime addSelfToSerializationDictionary:a3];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_9;
  }

  if (a4 <= 0x11)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v17 = a4;
      v18 = 2048;
      v19 = 18;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATimeRange struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(874, "bufferLength %lu < serialized SATimeRange struct %lu", v9, v10, v11, v12, v13, v14, a4);
    _os_crash();
    __break(1u);
LABEL_9:
    v15 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATimeRange version" userInfo:0];
    objc_exception_throw(v15);
  }

  v5 = *MEMORY[0x1E69E9840];

  return objc_alloc_init(SATimeRange);
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_9;
  }

  if (a4 <= 0x11)
  {
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v30 = a4;
      v31 = 2048;
      v32 = 18;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATimeRange struct %lu", buf, 0x16u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(884, "bufferLength %lu < serialized SATimeRange struct %lu", v22, v23, v24, v25, v26, v27, a4);
    _os_crash();
    __break(1u);
LABEL_9:
    v28 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATimeRange version" userInfo:0];
    objc_exception_throw(v28);
  }

  v11 = *(a3 + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12);
  startTime = self->_startTime;
  self->_startTime = v13;

  v15 = *(a3 + 10);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, a5, a6, v16);
  endTime = self->_endTime;
  self->_endTime = v17;
  v19 = *MEMORY[0x1E69E9840];
}

@end