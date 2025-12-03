@interface SAGesture
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (void)parseKTrace:(int)trace embedded:(uint64_t)embedded findingGestureAndHIDEvents:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (SAGesture)initWithPid:(int)pid type:(id)type startTime:(id)time;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAGesture

- (SAGesture)initWithPid:(int)pid type:(id)type startTime:(id)time
{
  v17.receiver = self;
  v17.super_class = SAGesture;
  v8 = [(SAGesture *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_pid = pid;
    objc_storeStrong(&v8->_gestureType, type);
    v10 = objc_alloc_init(SATimeRange);
    timeRange = v9->_timeRange;
    v9->_timeRange = v10;

    v13 = v9->_timeRange;
    if (v13)
    {
      objc_setProperty_atomic(v13, v12, time, 8);
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    hidEvents = v9->_hidEvents;
    v9->_hidEvents = v14;
  }

  return v9;
}

+ (void)parseKTrace:(int)trace embedded:(uint64_t)embedded findingGestureAndHIDEvents:
{
  objc_opt_self();
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = off_1E86F4CF0;
  if (!trace)
  {
    v8 = off_1E86F4CE8;
  }

  v9 = *v8;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__SAGesture_parseKTrace_embedded_findingGestureAndHIDEvents___block_invoke;
  v14[3] = &unk_1E86F8858;
  traceCopy = trace;
  v11 = v7;
  v15 = v11;
  embeddedCopy = embedded;
  [v10 parseKTrace:a2 findingHIDEvents:v14];
  v13 = v11;
  ktrace_events_range();
  v12 = v13;
  ktrace_events_range();
}

void __61__SAGesture_parseKTrace_embedded_findingGestureAndHIDEvents___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if ([a2 hidEventType] != 11)
  {
    goto LABEL_7;
  }

  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = [a2 steps];
  v7 = [v6 lastObject];
  v8 = [v5 numberWithInt:{objc_msgSend(v7, "pid")}];
  v10 = [v4 objectForKeyedSubscript:v8];

  if (v10)
  {
    [v10[1] addObject:a2];
  }

  else
  {
LABEL_7:
    v9 = *(*(a1 + 40) + 16);

    v9();
  }
}

void __61__SAGesture_parseKTrace_embedded_findingGestureAndHIDEvents___block_invoke_2(uint64_t a1, uint64_t a2)
{
  pid_for_thread = *(a2 + 88);
  if ((pid_for_thread & 0x80000000) != 0)
  {
    v5 = *(a1 + 40);
    v6 = *(a2 + 40);
    pid_for_thread = ktrace_get_pid_for_thread();
  }

  v7 = [SAGesture alloc];
  v8 = *(a1 + 40);
  v9 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
  v12 = [(SAGesture *)v7 initWithPid:pid_for_thread type:@"Scroll View Drag" startTime:v9];

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696AD98] numberWithInt:pid_for_thread];
  [v10 setObject:v12 forKeyedSubscript:v11];
}

void __61__SAGesture_parseKTrace_embedded_findingGestureAndHIDEvents___block_invoke_3(void *a1, uint64_t a2)
{
  pid_for_thread = *(a2 + 88);
  if ((pid_for_thread & 0x80000000) != 0)
  {
    v5 = a1[6];
    v6 = *(a2 + 40);
    pid_for_thread = ktrace_get_pid_for_thread();
  }

  v7 = a1[4];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:pid_for_thread];
  self = [v7 objectForKeyedSubscript:v8];

  v9 = self;
  if (self)
  {
    v10 = a1[6];
    v11 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
    Property = objc_getProperty(self, v12, 32, 1);
    if (Property)
    {
      objc_setProperty_atomic(Property, v14, v11, 16);
    }

    v15 = a1[4];
    v16 = [MEMORY[0x1E696AD98] numberWithInt:pid_for_thread];
    [v15 setObject:0 forKeyedSubscript:v16];

    (*(a1[5] + 16))();
    v9 = self;
  }
}

- (NSString)debugDescription
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    v5 = objc_getProperty(self, v3, 24, 1);
    Property = objc_getProperty(self, v6, 32, 1);
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v8 = Property;
  v10 = [v8 debugDescription];
  if (self)
  {
    v11 = objc_getProperty(self, v9, 8, 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 initWithFormat:@"%@ %@ (%lu hid events)", v5, v10, objc_msgSend(v11, "count")];

  return v12;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(SAGesture *)self sizeInBytesForSerializedVersion]!= length)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SAGesture *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v14 UTF8String];
      v35 = 2048;
      sizeInBytesForSerializedVersion = [(SAGesture *)self sizeInBytesForSerializedVersion];
      v37 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SAGesture *)self debugDescription];
    uTF8String2 = [v15 UTF8String];
    [(SAGesture *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(1009, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, uTF8String2);

    _os_crash();
    __break(1u);
LABEL_7:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(NSMutableArray *)self->_hidEvents count];
      *buf = 134217984;
      uTF8String = v25;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "gesture with %lu hid events", buf, 0xCu);
    }

    *__error() = v23;
    v26 = [(NSMutableArray *)self->_hidEvents count];
    _SASetCrashLogMessage(1018, "gesture with %lu hid events", v27, v28, v29, v30, v31, v32, v26);
    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = self->_pid;
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_gestureType, dictionary);
  *(&buffer->var3 + 6) = SASerializableIndexForPointerFromSerializationDictionary(self->_timeRange, dictionary);
  if ([(NSMutableArray *)self->_hidEvents count]>= 0xFFFF)
  {
    goto LABEL_7;
  }

  v9 = [(NSMutableArray *)self->_hidEvents count];
  HIWORD(buffer->var4) = v9;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var5, v9, self->_hidEvents, dictionary);
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SATimeRange *)self->_timeRange addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_gestureType addSelfToSerializationDictionary:dictionary];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_hidEvents;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) addSelfToSerializationDictionary:{dictionary, v13}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  *&v29[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_11;
  }

  if (length <= 0x17)
  {
    v8 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v28 = 2048;
      *v29 = 24;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(1043, "bufferLength %lu < serialized SAGesture struct %lu", v9, v10, v11, v12, v13, v14, length);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 11) + 24 > length)
  {
LABEL_8:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(bufferCopy + 22);
      *buf = 134218496;
      lengthCopy2 = length;
      v28 = 1024;
      *v29 = v17;
      v29[2] = 2048;
      *&v29[3] = 8 * v17 + 24;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", buf, 0x1Cu);
    }

    *__error() = v15;
    v25 = *(bufferCopy + 22);
    _SASetCrashLogMessage(1044, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", v18, v19, v20, v21, v22, v23, length);
    _os_crash();
    __break(1u);
LABEL_11:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAGesture version" userInfo:0];
    objc_exception_throw(v24);
  }

  result = objc_alloc_init(objc_opt_class());
  *(result + 4) = *(bufferCopy + 2);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  *&v44[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_16;
  }

  if (length <= 0x17)
  {
    v23 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v43 = 2048;
      *v44 = 24;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct %lu", buf, 0x16u);
    }

    *__error() = v23;
    _SASetCrashLogMessage(1057, "bufferLength %lu < serialized SAGesture struct %lu", v24, v25, v26, v27, v28, v29, length);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 11) + 24 > length)
  {
LABEL_13:
    v30 = *__error();
    v31 = _sa_logt();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(bufferCopy + 22);
      *buf = 134218496;
      lengthCopy2 = length;
      v43 = 1024;
      *v44 = v32;
      v44[2] = 2048;
      *&v44[3] = 8 * v32 + 24;
      _os_log_error_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", buf, 0x1Cu);
    }

    *__error() = v30;
    v40 = *(bufferCopy + 22);
    _SASetCrashLogMessage(1058, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", v33, v34, v35, v36, v37, v38, length);
    _os_crash();
    __break(1u);
LABEL_16:
    v39 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAGesture version" userInfo:0];
    objc_exception_throw(v39);
  }

  v11 = *(buffer + 14);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  timeRange = self->_timeRange;
  self->_timeRange = v13;

  v15 = *(bufferCopy + 6);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16);
  gestureType = self->_gestureType;
  self->_gestureType = v17;

  objc_opt_class();
  if (*gSASerializationEncodedVersionBeingDecoded() <= 33 && *gSASerializationEncodedDataIsEmbedded() == 1)
  {
    v19 = objc_opt_class();
  }

  v20 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 24, *(bufferCopy + 22), dictionary, bufferDictionary, v19);
  hidEvents = self->_hidEvents;
  self->_hidEvents = v20;
  v22 = *MEMORY[0x1E69E9840];
}

@end