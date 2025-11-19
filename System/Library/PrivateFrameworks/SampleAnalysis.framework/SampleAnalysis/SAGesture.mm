@interface SAGesture
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (void)parseKTrace:(int)a3 embedded:(uint64_t)a4 findingGestureAndHIDEvents:;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (SAGesture)initWithPid:(int)a3 type:(id)a4 startTime:(id)a5;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAGesture

- (SAGesture)initWithPid:(int)a3 type:(id)a4 startTime:(id)a5
{
  v17.receiver = self;
  v17.super_class = SAGesture;
  v8 = [(SAGesture *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_pid = a3;
    objc_storeStrong(&v8->_gestureType, a4);
    v10 = objc_alloc_init(SATimeRange);
    timeRange = v9->_timeRange;
    v9->_timeRange = v10;

    v13 = v9->_timeRange;
    if (v13)
    {
      objc_setProperty_atomic(v13, v12, a5, 8);
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    hidEvents = v9->_hidEvents;
    v9->_hidEvents = v14;
  }

  return v9;
}

+ (void)parseKTrace:(int)a3 embedded:(uint64_t)a4 findingGestureAndHIDEvents:
{
  objc_opt_self();
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = off_1E86F4CF0;
  if (!a3)
  {
    v8 = off_1E86F4CE8;
  }

  v9 = *v8;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__SAGesture_parseKTrace_embedded_findingGestureAndHIDEvents___block_invoke;
  v14[3] = &unk_1E86F8858;
  v17 = a3;
  v11 = v7;
  v15 = v11;
  v16 = a4;
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

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(SAGesture *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SAGesture *)self debugDescription];
      *buf = 136315650;
      v34 = [v14 UTF8String];
      v35 = 2048;
      v36 = [(SAGesture *)self sizeInBytesForSerializedVersion];
      v37 = 2048;
      v38 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SAGesture *)self debugDescription];
    v16 = [v15 UTF8String];
    [(SAGesture *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(1009, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, v16);

    _os_crash();
    __break(1u);
LABEL_7:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(NSMutableArray *)self->_hidEvents count];
      *buf = 134217984;
      v34 = v25;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "gesture with %lu hid events", buf, 0xCu);
    }

    *__error() = v23;
    v26 = [(NSMutableArray *)self->_hidEvents count];
    _SASetCrashLogMessage(1018, "gesture with %lu hid events", v27, v28, v29, v30, v31, v32, v26);
    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 257;
  *(&a3->var1 + 1) = self->_pid;
  *(&a3->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_gestureType, a5);
  *(&a3->var3 + 6) = SASerializableIndexForPointerFromSerializationDictionary(self->_timeRange, a5);
  if ([(NSMutableArray *)self->_hidEvents count]>= 0xFFFF)
  {
    goto LABEL_7;
  }

  v9 = [(NSMutableArray *)self->_hidEvents count];
  HIWORD(a3->var4) = v9;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&a3->var5, v9, self->_hidEvents, a5);
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    [(SATimeRange *)self->_timeRange addSelfToSerializationDictionary:a3];
    [(NSString *)self->_gestureType addSelfToSerializationDictionary:a3];
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

          [*(*(&v13 + 1) + 8 * v11++) addSelfToSerializationDictionary:{a3, v13}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  *&v29[13] = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_11;
  }

  if (a4 <= 0x17)
  {
    v8 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v27 = a4;
      v28 = 2048;
      *v29 = 24;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(1043, "bufferLength %lu < serialized SAGesture struct %lu", v9, v10, v11, v12, v13, v14, a4);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  if (8 * *(a3 + 11) + 24 > a4)
  {
LABEL_8:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v5 + 22);
      *buf = 134218496;
      v27 = a4;
      v28 = 1024;
      *v29 = v17;
      v29[2] = 2048;
      *&v29[3] = 8 * v17 + 24;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", buf, 0x1Cu);
    }

    *__error() = v15;
    v25 = *(v5 + 22);
    _SASetCrashLogMessage(1044, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", v18, v19, v20, v21, v22, v23, a4);
    _os_crash();
    __break(1u);
LABEL_11:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAGesture version" userInfo:0];
    objc_exception_throw(v24);
  }

  result = objc_alloc_init(objc_opt_class());
  *(result + 4) = *(v5 + 2);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  *&v44[13] = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_16;
  }

  if (a4 <= 0x17)
  {
    v23 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v42 = a4;
      v43 = 2048;
      *v44 = 24;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct %lu", buf, 0x16u);
    }

    *__error() = v23;
    _SASetCrashLogMessage(1057, "bufferLength %lu < serialized SAGesture struct %lu", v24, v25, v26, v27, v28, v29, a4);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  v7 = a3;
  if (8 * *(a3 + 11) + 24 > a4)
  {
LABEL_13:
    v30 = *__error();
    v31 = _sa_logt();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(v7 + 22);
      *buf = 134218496;
      v42 = a4;
      v43 = 1024;
      *v44 = v32;
      v44[2] = 2048;
      *&v44[3] = 8 * v32 + 24;
      _os_log_error_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", buf, 0x1Cu);
    }

    *__error() = v30;
    v40 = *(v7 + 22);
    _SASetCrashLogMessage(1058, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", v33, v34, v35, v36, v37, v38, a4);
    _os_crash();
    __break(1u);
LABEL_16:
    v39 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAGesture version" userInfo:0];
    objc_exception_throw(v39);
  }

  v11 = *(a3 + 14);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12);
  timeRange = self->_timeRange;
  self->_timeRange = v13;

  v15 = *(v7 + 6);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, a5, a6, v16);
  gestureType = self->_gestureType;
  self->_gestureType = v17;

  objc_opt_class();
  if (*gSASerializationEncodedVersionBeingDecoded() <= 33 && *gSASerializationEncodedDataIsEmbedded() == 1)
  {
    v19 = objc_opt_class();
  }

  v20 = SASerializableNewMutableArrayFromIndexList(v7 + 24, *(v7 + 22), a5, a6, v19);
  hidEvents = self->_hidEvents;
  self->_hidEvents = v20;
  v22 = *MEMORY[0x1E69E9840];
}

@end