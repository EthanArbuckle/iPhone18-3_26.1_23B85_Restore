@interface SAFrame
+ (SAFrame)frameWithPAStyleSerializedFrame:(uint64_t)frame;
+ (id)addStack:(uint64_t)stack backtraceStyle:(uint64_t)style toSetOfRootFrames:;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (uint64_t)fixupLoadInfosInFrameTree:(uint64_t)tree binaryLoadInfos:(uint64_t)infos libraryCache:(uint64_t)cache uuidsWithNewInstructions:;
+ (void)enumerateFrameTree:(uint64_t)tree block:;
+ (void)releaseFrameTree:(uint64_t)tree;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFakeFrame;
- (BOOL)isSymbolicationOffByOne;
- (NSString)debugDescription;
- (SAInstruction)instruction;
- (id)copyWithNewParent:(id)parent;
- (id)initCopyingFrame:(id)frame withParent:(id)parent;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)_addChildFrame:(id *)location;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)populateReferencesUsingPAStyleSerializedFrame:(void *)frame andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:;
- (void)reset;
- (void)setChildFrameOrFrames:(uint64_t)frames;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SAFrame

- (void)reset
{
  self->_BOOLs.bits = 0;
  self->_address = 0;
  self->_parentFrame = 0;
  objc_storeWeak(&self->_binaryLoadInfo, 0);
  childFrameOrFrames = self->_childFrameOrFrames;
  self->_childFrameOrFrames = 0;
}

- (SAInstruction)instruction
{
  WeakRetained = objc_loadWeakRetained(&self->_binaryLoadInfo);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_binaryLoadInfo);
    address = self->_address;
    v6 = address - [(SAFrame *)self isSymbolicationOffByOne];
    v7 = objc_loadWeakRetained(&self->_binaryLoadInfo);
    WeakRetained = [v4 instructionAtOffsetIntoLoadInfo:{v6 - objc_msgSend(v7, "loadAddress")}];

    if (!WeakRetained)
    {
      objc_storeWeak(&self->_binaryLoadInfo, 0);
    }
  }

  return WeakRetained;
}

- (BOOL)isSymbolicationOffByOne
{
  if ((self->_BOOLs.bits & 1) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_binaryLoadInfo);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_binaryLoadInfo);
    v5 = [v4 loadAddress] != self->_address;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isFakeFrame
{
  if ([(SAFrame *)self isTruncatedBacktraceFrame])
  {
    return 1;
  }

  return [(SAFrame *)self isLeafyCallstackIsInAnotherCallTreeFrame];
}

- (id)initCopyingFrame:(id)frame withParent:(id)parent
{
  v10.receiver = self;
  v10.super_class = SAFrame;
  v6 = [(SAFrame *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_address = *(frame + 2);
    v6->_parentFrame = parent;
    WeakRetained = objc_loadWeakRetained(frame + 3);
    objc_storeWeak(&v7->_binaryLoadInfo, WeakRetained);

    v7->_BOOLs.bits = *(frame + 8);
  }

  return v7;
}

- (id)copyWithNewParent:(id)parent
{
  v5 = objc_alloc(objc_opt_class());

  return [v5 initCopyingFrame:self withParent:parent];
}

- (BOOL)isEqual:(id)equal
{
  if (self)
  {
    LOBYTE(self) = self->_BOOLs.bits == *(equal + 8) && self->_address == *(equal + 2);
  }

  return self;
}

- (void)_addChildFrame:(id *)location
{
  v26 = *MEMORY[0x1E69E9840];
  if (!location || !obj)
  {
    goto LABEL_9;
  }

  v3 = location + 5;
  if (!location[5])
  {
    objc_storeStrong(location + 5, obj);
LABEL_9:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = *v3;
  if (isKindOfClass)
  {
    v6 = *MEMORY[0x1E69E9840];
    v7 = *v3;

    [v7 addObject:obj];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = *__error();
      v14 = _sa_logt();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        ClassName = object_getClassName(*v3);
        *buf = 136315138;
        v25 = ClassName;
        _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
      }

      *__error() = v13;
      v16 = object_getClassName(*v3);
      _SASetCrashLogMessage(158, "child is %s", v17, v18, v19, v20, v21, v22, v16);
      _os_crash();
      __break(1u);
    }

    v9 = MEMORY[0x1E695DFA8];
    v23 = *v3;
    v10 = [[v9 alloc] initWithObjects:{v23, obj, 0}];
    v11 = *v3;
    *v3 = v10;

    v12 = *MEMORY[0x1E69E9840];
  }
}

+ (id)addStack:(uint64_t)stack backtraceStyle:(uint64_t)style toSetOfRootFrames:
{
  objc_opt_self();
  if (a2)
  {
    if (style)
    {
      *buf = 0;
      v27 = buf;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy_;
      v30 = __Block_byref_object_dispose_;
      v31 = 0;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __53__SAFrame_addStack_backtraceStyle_toSetOfRootFrames___block_invoke;
      v25[3] = &unk_1E86F5058;
      v25[4] = style;
      v25[5] = buf;
      [a2 iterateFramesWithBacktraceStyle:stack block:v25];
      v7 = *(v27 + 5);
      _Block_object_dispose(buf, 8);

      return v7;
    }
  }

  else
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "nil frameIterator", buf, 2u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(168, "nil frameIterator", v11, v12, v13, v14, v15, v16, v25[0]);
    _os_crash();
    __break(1u);
  }

  v17 = *__error();
  v18 = _sa_logt();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "nil rootFrames", buf, 2u);
  }

  *__error() = v17;
  _SASetCrashLogMessage(169, "nil rootFrames", v19, v20, v21, v22, v23, v24, v25[0]);
  result = _os_crash();
  __break(1u);
  return result;
}

void __53__SAFrame_addStack_backtraceStyle_toSetOfRootFrames___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    v5 = *(v4 + 40);
    if (!v5)
    {
      v8 = 0;
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 member:a2];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = *__error();
        v14 = _sa_logt();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          ClassName = object_getClassName(v5);
          _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
        }

        *__error() = v13;
        v15 = object_getClassName(v5);
        _SASetCrashLogMessage(183, "child is %s", v16, v17, v18, v19, v20, v21, v15);
        _os_crash();
        __break(1u);
      }

      v6 = v5;
      if (![a2 isEqual:v6])
      {
        v8 = 0;
        goto LABEL_13;
      }

      v7 = v6;
    }

    v8 = v7;
LABEL_13:

LABEL_14:
    if (v8)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v8 = [*(a1 + 32) member:a2];
  if (v8)
  {
    goto LABEL_18;
  }

LABEL_15:
  v8 = [a2 copyWithNewParent:*(*(*(a1 + 40) + 8) + 40)];
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (v9)
  {
    [(SAFrame *)v9 _addChildFrame:v8];
  }

  else
  {
    [*(a1 + 32) addObject:v8];
  }

LABEL_18:
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v12 = *MEMORY[0x1E69E9840];
}

int *__26__SAFrame_printFrameTree___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = *__error();
  v6 = *MEMORY[0x1E69E9858];
  v7 = 2 * a3 - 2;
  v8 = [a2 debugDescription];
  fprintf(v6, "%*s%p %s\n", v7, "", a2, [v8 UTF8String]);

  result = __error();
  *result = v5;
  return result;
}

+ (void)enumerateFrameTree:(uint64_t)tree block:
{
  v48 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (![a2 count])
  {
    goto LABEL_24;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [a2 mutableCopy];
  [v5 addObject:v6];

  lastObject = [v5 lastObject];
  if (!lastObject)
  {
    goto LABEL_23;
  }

  v8 = lastObject;
  do
  {
    isa = [v5 count];
    null = [MEMORY[0x1E695DFB0] null];

    if (v8 == null)
    {
      [v5 removeLastObject];
      goto LABEL_21;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      anyObject = [v8 anyObject];
      if (!anyObject)
      {
        v18 = *__error();
        v8 = _sa_logt();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "No frame in child frames", buf, 2u);
        }

        *__error() = v18;
        _SASetCrashLogMessage(291, "No frame in child frames", v19, v20, v21, v22, v23, v24, v45);
        _os_crash();
        __break(1u);
LABEL_28:
        v25 = *__error();
        v26 = _sa_logt();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          ClassName = object_getClassName(v8);
          *buf = 136315138;
          v47 = ClassName;
          _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
        }

        *__error() = v25;
        v28 = object_getClassName(v8);
        _SASetCrashLogMessage(298, "child is %s", v29, v30, v31, v32, v33, v34, v28);
        _os_crash();
        __break(1u);
LABEL_31:
        v35 = *__error();
        v36 = _sa_logt();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = object_getClassName(isa);
          *buf = 136315138;
          v47 = v37;
          _os_log_error_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
        }

        *__error() = v35;
        v38 = object_getClassName(isa);
        _SASetCrashLogMessage(321, "child is %s", v39, v40, v41, v42, v43, v44, v38);
        _os_crash();
        __break(1u);
      }

      v12 = anyObject;
      [v8 removeObject:anyObject];
      if ([v8 count])
      {
        v13 = 0;
        if (!tree)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_class();
      v12 = v8;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    [v5 removeLastObject];
    v13 = 1;
    if (!tree)
    {
      goto LABEL_14;
    }

LABEL_13:
    buf[0] = 0;
    (*(tree + 16))(tree, v12, isa, buf);
    if (buf[0])
    {
      break;
    }

LABEL_14:
    isa = v12[5].isa;
    if (isa)
    {
      if (v13)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        [v5 addObject:null2];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [(objc_class *)isa mutableCopy];
        [v5 addObject:v15];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_31;
        }

        [v5 addObject:isa];
      }
    }

LABEL_21:
    lastObject2 = [v5 lastObject];

    v8 = lastObject2;
  }

  while (lastObject2);

LABEL_23:
LABEL_24:
  v17 = *MEMORY[0x1E69E9840];
}

+ (void)releaseFrameTree:(uint64_t)tree
{
  v60 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = objc_autoreleasePoolPush();
      uTF8String4 = v4[5];
      if (uTF8String4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = uTF8String4;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (!v9)
          {
            goto LABEL_14;
          }

          v10 = v9;
          v11 = *v50;
LABEL_7:
          v12 = 0;
          while (1)
          {
            if (*v50 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v49 + 1) + 8 * v12);
            if (v13)
            {
              if (v13[5])
              {
                break;
              }
            }

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v49 objects:v59 count:16];
              if (!v10)
              {
LABEL_14:

                goto LABEL_18;
              }

              goto LABEL_7;
            }
          }

          v15 = v13;

          goto LABEL_21;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_28;
        }

        v14 = uTF8String4;
        if (v14[5])
        {
          v15 = v14;
LABEL_21:

          if (v4 != v15[4])
          {
            v20 = *__error();
            v21 = _sa_logt();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = [v4 debugDescription];
              uTF8String = [v22 UTF8String];
              v24 = [v15 debugDescription];
              uTF8String2 = [v24 UTF8String];
              v26 = v15[4];
              v27 = [v26 debugDescription];
              uTF8String3 = [v27 UTF8String];
              *buf = 136315650;
              v54 = uTF8String;
              v55 = 2080;
              v56 = uTF8String2;
              v57 = 2080;
              v58 = uTF8String3;
              _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "Frame %s child %s has different parent %s", buf, 0x20u);
            }

            *__error() = v20;
            v29 = [v4 debugDescription];
            uTF8String4 = [v29 UTF8String];
            v30 = [v15 debugDescription];
            [v30 UTF8String];
            v31 = v15[4];
            v32 = [v31 debugDescription];
            [v32 UTF8String];
            _SASetCrashLogMessage(252, "Frame %s child %s has different parent %s", v33, v34, v35, v36, v37, v38, uTF8String4);

            _os_crash();
            __break(1u);
LABEL_28:
            v39 = *__error();
            v40 = _sa_logt();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              ClassName = object_getClassName(uTF8String4);
              *buf = 136315138;
              v54 = ClassName;
              _os_log_error_impl(&dword_1E0E2F000, v40, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
            }

            *__error() = v39;
            v42 = object_getClassName(uTF8String4);
            _SASetCrashLogMessage(243, "child is %s", v43, v44, v45, v46, v47, v48, v42);
            _os_crash();
            __break(1u);
          }

          v18 = v15;
          v17 = v18;
          goto LABEL_23;
        }

LABEL_18:

        v16 = v4[5];
        v4[5] = 0;
      }

      v17 = v4[4];
      v18 = 0;
      v4[4] = 0;
LABEL_23:

      objc_autoreleasePoolPop(v5);
      v4 = v17;
    }

    while (v17);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setChildFrameOrFrames:(uint64_t)frames
{
  if (frames)
  {
    objc_storeStrong((frames + 40), a2);
  }
}

+ (uint64_t)fixupLoadInfosInFrameTree:(uint64_t)tree binaryLoadInfos:(uint64_t)infos libraryCache:(uint64_t)cache uuidsWithNewInstructions:
{
  objc_opt_self();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__SAFrame_fixupLoadInfosInFrameTree_binaryLoadInfos_libraryCache_uuidsWithNewInstructions___block_invoke;
  v11[3] = &unk_1E86F50A0;
  v11[4] = tree;
  v11[5] = infos;
  v11[6] = cache;
  v11[7] = &v12;
  [SAFrame enumerateFrameTree:a2 block:v11];
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __91__SAFrame_fixupLoadInfosInFrameTree_binaryLoadInfos_libraryCache_uuidsWithNewInstructions___block_invoke(void *a1, id *a2)
{
  if (([a2 isFakeFrame] & 1) == 0)
  {
    v4 = [a2 address];
    if (a2)
    {
      WeakRetained = objc_loadWeakRetained(a2 + 3);
    }

    else
    {
      WeakRetained = 0;
    }

    v5 = [SABinaryLoadInfo binaryLoadInfoForAddress:v4 inBinaryLoadInfos:a1[4] libraryCache:a1[5]];
    if (a2)
    {
      objc_storeWeak(a2 + 3, v5);
    }

    [a2 instruction];

    if (v5)
    {
      if (a1[6])
      {
        if (!WeakRetained)
        {
          goto LABEL_11;
        }

        v6 = [v5 loadAddress];
        if (v6 != [WeakRetained loadAddress])
        {
          goto LABEL_11;
        }

        v7 = [v5 binary];
        v8 = [v7 uuid];
        v9 = [WeakRetained binary];
        v10 = [v9 uuid];
        v11 = [v8 isEqual:v10];

        if ((v11 & 1) == 0)
        {
LABEL_11:
          v12 = a1[6];
          v13 = [v5 binary];
          v14 = [v13 uuid];
          [v12 addObject:v14];
        }
      }
    }

    else
    {
      ++*(*(a1[7] + 8) + 24);
    }
  }
}

- (NSString)debugDescription
{
  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  instruction = [(SAFrame *)self instruction];
  v4 = [instruction debugDescription];
  address = self->_address;
  isSwiftAsync = [(SAFrame *)self isSwiftAsync];
  isKernel = [(SAFrame *)self isKernel];
  isExclave = [(SAFrame *)self isExclave];
  if (isExclave)
  {
    exclave = [(SAFrame *)self exclave];
    if (exclave)
    {
      v17 = exclave;
      exclave2 = [(SAFrame *)self exclave];
      name = [exclave2 name];
      if (name)
      {
        v9 = 0;
        v10 = 1;
        v16 = name;
        v11 = name;
      }

      else
      {
        v12 = objc_alloc(MEMORY[0x1E696AEC0]);
        exclave3 = [(SAFrame *)self exclave];
        v11 = [v12 initWithFormat:@"0x%llx", objc_msgSend(exclave3, "identifier")];
        v16 = 0;
        v10 = 1;
        v9 = 1;
      }
    }

    else
    {
      v17 = 0;
      v10 = 0;
      v9 = 0;
      v11 = @"yes";
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = @"no";
  }

  v13 = [v21 initWithFormat:@"%@ [0x%llx] (swift:%d kernel:%d exclave:%@ offByOne:%d trunc:%d anotherCallTree:%d)", v4, address, isSwiftAsync, isKernel, v11, self->_BOOLs.bits & 1, -[SAFrame isTruncatedBacktraceFrame](self, "isTruncatedBacktraceFrame"), -[SAFrame isLeafyCallstackIsInAnotherCallTreeFrame](self, "isLeafyCallstackIsInAnotherCallTreeFrame")];
  if (v9)
  {
  }

  if (v10)
  {
  }

  if (isExclave)
  {
  }

  return v13;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_address];
  SAJSONWriteDictionaryFirstEntry(stream, @"address", v5);

  instruction = [(SAFrame *)self instruction];
  WeakRetained = objc_loadWeakRetained(&self->_binaryLoadInfo);

  if (!WeakRetained)
  {
    goto LABEL_24;
  }

  address = self->_address;
  v9 = objc_loadWeakRetained(&self->_binaryLoadInfo);
  v10 = address - [v9 loadAddress];

  v11 = objc_loadWeakRetained(&self->_binaryLoadInfo);
  binary = [v11 binary];

  v13 = objc_loadWeakRetained(&self->_binaryLoadInfo);
  segment = [v13 segment];

  uuid = [binary uuid];
  uUIDString = [uuid UUIDString];
  SAJSONWriteDictionaryEntry(stream, @"binary", uUIDString);

  if (segment)
  {
    if (![segment hasOffsetIntoBinary])
    {
      goto LABEL_7;
    }

    v17 = MEMORY[0x1E696AD98];
    offsetIntoBinary = [segment offsetIntoBinary];
  }

  else
  {
    offsetIntoBinary = 0;
    v17 = MEMORY[0x1E696AD98];
  }

  v19 = [v17 numberWithUnsignedLongLong:offsetIntoBinary + v10];
  SAJSONWriteDictionaryEntry(stream, @"offsetIntoBinary", v19);

LABEL_7:
  path = [binary path];
  if (path)
  {
    v21 = path;
    uuid2 = [binary uuid];
    v23 = [SABinary haveMultipleBinariesWithUUID:uuid2];

    if (v23)
    {
      path2 = [binary path];
      SAJSONWriteDictionaryEntry(stream, @"binaryPath", path2);
    }
  }

  if (segment)
  {
    name = [segment name];
    SAJSONWriteDictionaryEntry(stream, @"segment", name);

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
    SAJSONWriteDictionaryEntry(stream, @"offsetIntoSegment", v26);
  }

  if ([(SAFrame *)self isSwiftAsync])
  {
    SAJSONWriteDictionaryEntry(stream, @"isSwiftAsync", MEMORY[0x1E695E118]);
  }

  if ([(SAFrame *)self isKernel])
  {
    SAJSONWriteDictionaryEntry(stream, @"isKernelFrame", MEMORY[0x1E695E118]);
  }

  if ([(SAFrame *)self isExclave])
  {
    exclave = [(SAFrame *)self exclave];
    name2 = [exclave name];
    if (name2)
    {
      SAJSONWriteDictionaryEntry(stream, @"exclave", name2);
    }

    else
    {
      v29 = MEMORY[0x1E696AD98];
      exclave2 = [(SAFrame *)self exclave];
      v31 = [v29 numberWithUnsignedLongLong:{objc_msgSend(exclave2, "identifier")}];
      SAJSONWriteDictionaryEntry(stream, @"exclave", v31);
    }
  }

  if ([instruction numSymbols])
  {
    [stream appendString:{@", symbols:["}];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __65__SAFrame_JSONSerialization__writeJSONDictionaryEntriesToStream___block_invoke;
    v32[3] = &unk_1E86F50C8;
    v32[4] = stream;
    v33 = instruction;
    selfCopy = self;
    [v33 enumerateSymbols:v32];
    [stream appendString:@"]"];
  }

LABEL_24:
}

void __65__SAFrame_JSONSerialization__writeJSONDictionaryEntriesToStream___block_invoke(id *a1, void *a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    [a1[4] appendString:{@", "}];
  }

  [a1[4] appendString:@"{"];
  v7 = a1[4];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a1[5], "offsetIntoSegment") - objc_msgSend(a2, "offsetIntoSegment") + objc_msgSend(a1[6], "isSymbolicationOffByOne")}];
  SAJSONWriteDictionaryFirstEntry(v7, @"offsetIntoSymbol", v8);

  v14 = [a2 name];
  if (v14)
  {
    SAJSONWriteDictionaryEntry(a1[4], @"symbolName", v14);
  }

  if (a3)
  {
    v9 = [a3 filePath];
    if (v9)
    {
      SAJSONWriteDictionaryEntry(a1[4], @"sourceFilepath", v9);
    }

    v10 = a1[4];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "lineNum")}];
    SAJSONWriteDictionaryEntry(v10, @"sourceLineNum", v11);

    if ([a3 columnNum])
    {
      v12 = a1[4];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "columnNum")}];
      SAJSONWriteDictionaryEntry(v12, @"sourceColumnNum", v13);
    }
  }

  [a1[4] appendString:@"}"];
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  if (!self->_childFrameOrFrames)
  {
    return 39;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 8 * [self->_childFrameOrFrames count] + 39;
  }

  else
  {
    return 47;
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  lengthCopy = length;
  selfCopy = self;
  v70 = *MEMORY[0x1E69E9840];
  if ([(SAFrame *)self sizeInBytesForSerializedVersion]!= length)
  {
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [selfCopy debugDescription];
      *buf = 136315650;
      uTF8String = [v22 UTF8String];
      v68 = 2048;
      *v69 = [selfCopy sizeInBytesForSerializedVersion];
      *&v69[8] = 2048;
      *&v69[10] = lengthCopy;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v20;
    buffer = [selfCopy debugDescription];
    uTF8String2 = [($165022A6B82873954AF8662177CFB640 *)buffer UTF8String];
    [selfCopy sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(1278, "%s: size %lu != buffer length %lu", v24, v25, v26, v27, v28, v29, uTF8String2);

    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  *&buffer->var0 = 1025;
  *(&buffer->var1 + 1) = *(selfCopy + 16);
  *(&buffer->var4 + 6) = *(&buffer->var4 + 6) & 0xFE | [selfCopy isKernel];
  if ([selfCopy isSwiftAsync])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(&buffer->var4 + 6) & 0xFD | v9;
  *(&buffer->var4 + 6) = v10;
  *(&buffer->var4 + 6) = (4 * (*(selfCopy + 8) & 1)) | v10 & 0xFB;
  if ([selfCopy isExclave])
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  *(&buffer->var4 + 6) = *(&buffer->var4 + 6) & 0xF7 | v11;
  instruction = [selfCopy instruction];
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(instruction, dictionary);

  *(&buffer->var3 + 6) = SASerializableIndexForPointerFromSerializationDictionary(*(selfCopy + 32), dictionary);
  lengthCopy = &buffer->var4 + 7;
  if (*(selfCopy + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String6 = *(selfCopy + 40);
      if ([uTF8String6 count] >= 0xFFFFFFFF)
      {
LABEL_24:
        v44 = *__error();
        v45 = _sa_logt();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = [selfCopy debugDescription];
          uTF8String3 = [v46 UTF8String];
          v48 = [uTF8String6 count];
          *buf = 136315394;
          uTF8String = uTF8String3;
          v68 = 2048;
          *v69 = v48;
          _os_log_error_impl(&dword_1E0E2F000, v45, OS_LOG_TYPE_ERROR, "%s has %lu children", buf, 0x16u);
        }

        *__error() = v44;
        selfCopy = [selfCopy debugDescription];
        uTF8String4 = [selfCopy UTF8String];
        [uTF8String6 count];
        _SASetCrashLogMessage(1296, "%s has %lu children", v50, v51, v52, v53, v54, v55, uTF8String4);

        _os_crash();
        __break(1u);
LABEL_27:
        v56 = *__error();
        v57 = _sa_logt();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          ClassName = object_getClassName(*(selfCopy + 40));
          *buf = 136315138;
          uTF8String = ClassName;
          _os_log_error_impl(&dword_1E0E2F000, v57, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
        }

        *__error() = v56;
        v59 = object_getClassName(*(selfCopy + 40));
        _SASetCrashLogMessage(1300, "child is %s", v60, v61, v62, v63, v64, v65, v59);
        _os_crash();
        __break(1u);
      }

      v14 = [uTF8String6 count];
      *(&buffer->var3 + 2) = v14;
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var4 + 7, v14, uTF8String6, dictionary);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_27;
      }

      v15 = *(selfCopy + 40);
      *(&buffer->var3 + 2) = 1;
      uTF8String6 = v15;
      *(&buffer->var4 + 7) = SASerializableIndexForPointerFromSerializationDictionary(uTF8String6, dictionary);
    }
  }

  else
  {
    *(&buffer->var3 + 2) = 0;
  }

  v16 = &lengthCopy[8 * *(&buffer->var3 + 2)];
  exclave = [selfCopy exclave];
  *v16 = SASerializableIndexForPointerFromSerializationDictionary(exclave, dictionary);

  if (v16 - buffer + 8 != [selfCopy sizeInBytesForSerializedVersion])
  {
LABEL_21:
    v30 = *__error();
    v31 = _sa_logt();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [selfCopy debugDescription];
      uTF8String5 = [v32 UTF8String];
      v34 = *(&buffer->var3 + 2);
      sizeInBytesForSerializedVersion = [selfCopy sizeInBytesForSerializedVersion];
      *buf = 136315906;
      uTF8String = uTF8String5;
      v68 = 1024;
      *v69 = v34;
      *&v69[4] = 2048;
      *&v69[6] = &lengthCopy[8 * v34] - buffer;
      *&v69[14] = 2048;
      *&v69[16] = sizeInBytesForSerializedVersion;
      _os_log_error_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u children), ended with length %ld, should be %lu", buf, 0x26u);
    }

    *__error() = v30;
    v36 = [selfCopy debugDescription];
    uTF8String6 = [v36 UTF8String];
    v37 = *(&buffer->var3 + 2);
    [selfCopy sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(1313, "%s: after serializing (with %u children), ended with length %ld, should be %lu", v38, v39, v40, v41, v42, v43, uTF8String6);

    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self, 0}];
  while ([v24 count])
  {
    v4 = objc_autoreleasePoolPush();
    lastObject = [v24 lastObject];
    [v24 removeLastObject];
    classDictionaryKey = [objc_opt_class() classDictionaryKey];
    v7 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, lastObject, classDictionaryKey);

    if (v7)
    {
      instruction = [lastObject instruction];
      [instruction addSelfToSerializationDictionary:dictionary];

      if (lastObject)
      {
        if (lastObject[4])
        {
          [v24 addObject:?];
        }

        WeakRetained = objc_loadWeakRetained(lastObject + 3);
        [WeakRetained addSelfToSerializationDictionary:dictionary];

        exclave = [lastObject exclave];
        [exclave addSelfToSerializationDictionary:dictionary];

        v11 = lastObject[5];
        if (!v11)
        {
          goto LABEL_12;
        }

        exclave2 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          allObjects = [exclave2 allObjects];
          [v24 addObjectsFromArray:allObjects];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = *__error();
            v16 = _sa_logt();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              ClassName = object_getClassName(exclave2);
              _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
            }

            *__error() = v15;
            v17 = object_getClassName(exclave2);
            _SASetCrashLogMessage(1345, "child is %s", v18, v19, v20, v21, v22, v23, v17);
            _os_crash();
            __break(1u);
          }

          [v24 addObject:exclave2];
        }
      }

      else
      {
        [0 addSelfToSerializationDictionary:dictionary];
        exclave2 = [0 exclave];
        [exclave2 addSelfToSerializationDictionary:dictionary];
      }
    }

LABEL_12:
    objc_autoreleasePoolPop(v4);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  *&v40[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 5u)
  {
    goto LABEL_27;
  }

  if (length <= 0x1E)
  {
    v17 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v39 = 2048;
      *v40 = 31;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct %lu", buf, 0x16u);
    }

    *__error() = v17;
    _SASetCrashLogMessage(1360, "bufferLength %lu < serialized SAFrame struct %lu", v18, v19, v20, v21, v22, v23, length);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 18) + 31 > length)
  {
LABEL_24:
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy2 = length;
      v39 = 1024;
      *v40 = v26;
      v40[2] = 2048;
      *&v40[3] = 8 * v26 + 31;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", buf, 0x1Cu);
    }

    *__error() = v24;
    v36 = *(bufferCopy + 18);
    _SASetCrashLogMessage(1361, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", v27, v28, v29, v30, v31, v32, length);
    _os_crash();
    __break(1u);
LABEL_27:
    v33 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAFrame version" userInfo:0];
    objc_exception_throw(v33);
  }

  if (*(buffer + 1) >= 4u && (*(buffer + 30) & 8) != 0)
  {
    v6 = [[SAExclaveFrame alloc] initWithExclave:?];
    v7 = 1;
  }

  else
  {
    v6 = objc_alloc_init(SAFrame);
    v7 = 0;
  }

  v8 = *(bufferCopy + 2);
  if (v6)
  {
    v6->_address = v8;
    v9 = (bufferCopy + 30);
    if (*(bufferCopy + 30))
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    v6->_BOOLs.bits = v6->_BOOLs.bits & 0xFB | v10;
    if (*(bufferCopy + 2))
    {
LABEL_13:
      v11 = 0;
      if (!v6)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v9 = (bufferCopy + 30);
    if (v8)
    {
      goto LABEL_13;
    }
  }

  if (*(bufferCopy + 22) == -1)
  {
    v7 = 1;
  }

  if (v7)
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  if (v6)
  {
LABEL_14:
    v6->_BOOLs.bits = v6->_BOOLs.bits & 0xF7 | v11;
  }

LABEL_15:
  v12 = *(bufferCopy + 1);
  if (v12 < 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v9 & 2;
  }

  if (v6)
  {
    p_BOOLs = &v6->_BOOLs;
    bits = v6->_BOOLs.bits & 0xFD | v13;
    v6->_BOOLs.bits = bits;
    if (*(bufferCopy + 1) >= 3u)
    {
      v16 = (*v9 >> 2) & 1;
LABEL_42:
      p_BOOLs->bits = bits & 0xFE | v16;
      goto LABEL_43;
    }
  }

  else if (v12 > 2)
  {
    goto LABEL_43;
  }

  LOBYTE(v16) = ![(SAFrame *)v6 isSwiftAsync]&& *(bufferCopy + 18) != 0;
  if (v6)
  {
    p_BOOLs = &v6->_BOOLs;
    bits = v6->_BOOLs.bits;
    goto LABEL_42;
  }

LABEL_43:
  v34 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v163 = *MEMORY[0x1E69E9840];
  v10 = gFrameTreeBeingDecoded();
  if ((*v10 & 1) == 0)
  {
    v153 = v10;
    *v10 = 1;
    if (*buffer > 4u)
    {
LABEL_13:
      v17 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAFrame version" userInfo:0];
      objc_exception_throw(v17);
    }

    v11 = -1;
    while (1)
    {
      if (length <= 0x1E)
      {
        goto LABEL_51;
      }

      if (length < 8 * *(buffer + 18) + 31)
      {
LABEL_54:
        v79 = *__error();
        v80 = _sa_logt();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v81 = *(buffer + 18);
          *buf = 134218496;
          *v162 = length;
          *&v162[8] = 1024;
          *&v162[10] = v81;
          *&v162[14] = 2048;
          *&v162[16] = 8 * v81 + 31;
          _os_log_error_impl(&dword_1E0E2F000, v80, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", buf, 0x1Cu);
        }

        *__error() = v79;
        v146 = *(buffer + 18);
        _SASetCrashLogMessage(1417, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", v82, v83, v84, v85, v86, v87, length);
        _os_crash();
        __break(1u);
LABEL_57:
        v88 = *__error();
        v89 = _sa_logt();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v89, OS_LOG_TYPE_ERROR, "bad parent frame buffer", buf, 2u);
        }

        *__error() = v88;
        _SASetCrashLogMessage(1425, "bad parent frame buffer", v90, v91, v92, v93, v94, v95, v144);
        _os_crash();
        __break(1u);
LABEL_60:
        v96 = *__error();
        v97 = _sa_logt();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v162 = buffer;
          *&v162[8] = 2048;
          *&v162[10] = 31;
          _os_log_error_impl(&dword_1E0E2F000, v97, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct %lu", buf, 0x16u);
        }

        *__error() = v96;
        _SASetCrashLogMessage(1470, "bufferLength %lu < serialized SAFrame struct %lu", v98, v99, v100, v101, v102, v103, buffer);
        _os_crash();
        __break(1u);
LABEL_63:
        v104 = *__error();
        v105 = _sa_logt();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          v106 = *(length + 18);
          *buf = 134218496;
          *v162 = buffer;
          *&v162[8] = 1024;
          *&v162[10] = v106;
          *&v162[14] = 2048;
          *&v162[16] = 8 * v106 + 31;
          _os_log_error_impl(&dword_1E0E2F000, v105, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", buf, 0x1Cu);
        }

        *__error() = v104;
        v147 = *(length + 18);
        _SASetCrashLogMessage(1471, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", v107, v108, v109, v110, v111, v112, buffer);
        _os_crash();
        __break(1u);
LABEL_66:
        v113 = *__error();
        v114 = _sa_logt();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v114, OS_LOG_TYPE_ERROR, "empty child frames array", buf, 2u);
        }

        *__error() = v113;
        _SASetCrashLogMessage(1518, "empty child frames array", v115, v116, v117, v118, v119, v120, v145);
        _os_crash();
        __break(1u);
LABEL_69:
        v121 = *__error();
        v122 = _sa_logt();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          v123 = *(length + 18);
          *buf = 134218240;
          *v162 = buffer;
          *&v162[8] = 1024;
          *&v162[10] = v123;
          _os_log_error_impl(&dword_1E0E2F000, v122, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct v4 with %u children", buf, 0x12u);
        }

        *__error() = v121;
        v148 = *(length + 18);
        _SASetCrashLogMessage(1485, "bufferLength %lu < serialized SAFrame struct v4 with %u children", v124, v125, v126, v127, v128, v129, buffer);
        _os_crash();
        __break(1u);
LABEL_72:
        v130 = *__error();
        v131 = _sa_logt();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
        {
          v132 = (*(length + 30) >> 3) & 1;
          v133 = [buffer debugDescription];
          uTF8String = [v133 UTF8String];
          ClassName = object_getClassName(frame);
          *buf = 67109634;
          *v162 = v132;
          *&v162[4] = 2080;
          *&v162[6] = uTF8String;
          *&v162[14] = 2080;
          *&v162[16] = ClassName;
          _os_log_error_impl(&dword_1E0E2F000, v131, OS_LOG_TYPE_ERROR, "Frame exclave:%d has exclave %s, is class %s, not SAExclaveFrame", buf, 0x1Cu);
        }

        *__error() = v130;
        v136 = (*(length + 30) >> 3) & 1;
        v137 = [buffer debugDescription];
        [v137 UTF8String];
        object_getClassName(frame);
        _SASetCrashLogMessage(1489, "Frame exclave:%d has exclave %s, is class %s, not SAExclaveFrame", v138, v139, v140, v141, v142, v143, v136);

        _os_crash();
        __break(1u);
      }

      v12 = *(buffer + 22);
      if (v12 == -1)
      {
        break;
      }

      v13 = objc_opt_class();
      v14 = SASerializableBufferForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, dictionary, bufferDictionary, v13);
      if (v14)
      {
        v16 = v15 > 0x1E;
      }

      else
      {
        v16 = 0;
      }

      if (!v16)
      {
        goto LABEL_57;
      }

      length = v15;
      v11 = *(buffer + 22);
      buffer = v14;
      if (LOBYTE(v14->isa) > 4u)
      {
        goto LABEL_13;
      }
    }

    if (v11 != -1)
    {
      v18 = objc_opt_class();
      selfCopy = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v18, 0);
      v20 = v153;
      if (selfCopy)
      {
LABEL_20:
        v151 = selfCopy;
        v29 = [[SAFrameDeserializationHelper alloc] initWithFrame:selfCopy buffer:buffer bufferLength:length];
        v30 = [SAFrameSiblingsDeserializationHelper alloc];
        v150 = v29;
        v160 = v29;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v160 count:1];
        v32 = [(SAFrameSiblingsDeserializationHelper *)v30 initWithFrameHelpers:v31];

        v145 = 0;
        v149 = v32;
        v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v32];
        if (![v33 count])
        {
          goto LABEL_46;
        }

        v152 = v33;
        while (1)
        {
          v34 = objc_autoreleasePoolPush();
          lastObject = [v33 lastObject];
          frameHelpers = [lastObject frameHelpers];
          index = [lastObject index];
          if (index >= [frameHelpers count])
          {
            [v33 removeLastObject];
            goto LABEL_45;
          }

          v38 = [frameHelpers objectAtIndexedSubscript:{objc_msgSend(lastObject, "index")}];
          frame = [v38 frame];
          length = [v38 buffer];
          bufferLength = [v38 bufferLength];
          if (*length >= 5u)
          {
            goto LABEL_13;
          }

          buffer = bufferLength;
          if (bufferLength <= 0x1E)
          {
            goto LABEL_60;
          }

          if (bufferLength < 8 * *(length + 18) + 31)
          {
            goto LABEL_63;
          }

          v155 = v38;
          v156 = frameHelpers;
          v40 = *(length + 10);
          v41 = objc_opt_class();
          v42 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v40, dictionary, bufferDictionary, v41, 0);
          v43 = (length + 31);
          v44 = *(length + 18);
          if (*(length + 1) >= 4u)
          {
            v45 = &v43[v44];
            if (buffer + length < (v45 + 1))
            {
              goto LABEL_69;
            }

            v46 = *v45;
            v47 = objc_opt_class();
            buffer = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v46, dictionary, bufferDictionary, v47, 0);
            if (buffer)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_72;
              }

              if (frame)
              {
                objc_storeWeak(frame + 6, buffer);
              }
            }
          }

          [lastObject setIndex:{objc_msgSend(lastObject, "index") + 1}];
          if (!v44)
          {
            [(SAFrame *)frame setChildFrameOrFrames:?];
            v59 = v155;
            goto LABEL_44;
          }

          v154 = v34;
          v48 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v44];
          v157 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v44];
          do
          {
            v49 = *v43++;
            length = 0x1E86F4000uLL;
            v50 = objc_opt_class();
            buffer = dictionary;
            v51 = SASerializableBufferForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v49, dictionary, bufferDictionary, v50);
            v53 = v52;
            v54 = objc_opt_class();
            v55 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v49, dictionary, bufferDictionary, v54, 0);
            if (!v55)
            {
              v63 = *__error();
              v64 = _sa_logt();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1E0E2F000, v64, OS_LOG_TYPE_ERROR, "can't decode child", buf, 2u);
              }

              *__error() = v63;
              _SASetCrashLogMessage(1510, "can't decode child", v65, v66, v67, v68, v69, v70, 0);
              _os_crash();
              __break(1u);
LABEL_51:
              v71 = *__error();
              v72 = _sa_logt();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v162 = length;
                *&v162[8] = 2048;
                *&v162[10] = 31;
                _os_log_error_impl(&dword_1E0E2F000, v72, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct %lu", buf, 0x16u);
              }

              *__error() = v71;
              _SASetCrashLogMessage(1416, "bufferLength %lu < serialized SAFrame struct %lu", v73, v74, v75, v76, v77, v78, length);
              _os_crash();
              __break(1u);
              goto LABEL_54;
            }

            v56 = v55;
            *(v55 + 32) = frame;
            v57 = [[SAFrameDeserializationHelper alloc] initWithFrame:v55 buffer:v51 bufferLength:v53];
            [v48 addObject:v56];
            [v157 addObject:v57];

            --v44;
          }

          while (v44);
          if (![v48 count])
          {
            goto LABEL_66;
          }

          if ([v48 count] == 1)
          {
            anyObject = [v48 anyObject];
            [(SAFrame *)frame setChildFrameOrFrames:anyObject];
          }

          else
          {
            [(SAFrame *)frame setChildFrameOrFrames:v48];
          }

          v33 = v152;
          v20 = v153;
          v60 = v48;
          v34 = v154;
          v59 = v155;
          v61 = [[SAFrameSiblingsDeserializationHelper alloc] initWithFrameHelpers:v157];
          [v152 addObject:v61];

LABEL_44:
          frameHelpers = v156;
LABEL_45:

          objc_autoreleasePoolPop(v34);
          if (![v33 count])
          {
LABEL_46:
            *v20 = 0;

            goto LABEL_47;
          }
        }
      }

      v21 = *__error();
      v22 = _sa_logt();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "can't decode root frame", buf, 2u);
      }

      *__error() = v21;
      _SASetCrashLogMessage(1439, "can't decode root frame", v23, v24, v25, v26, v27, v28, v144);
      _os_crash();
      __break(1u);
    }

    selfCopy = self;
    v20 = v153;
    goto LABEL_20;
  }

LABEL_47:
  v62 = *MEMORY[0x1E69E9840];
}

+ (SAFrame)frameWithPAStyleSerializedFrame:(uint64_t)frame
{
  objc_opt_self();
  v3 = objc_alloc_init(SAFrame);
  v4 = *(a2 + 8);
  if (v3)
  {
    v3->_address = v4;
    v3->_BOOLs.bits = v3->_BOOLs.bits & 0xFB | (4 * (*(a2 + 17) != 0));
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 8 * (*(a2 + 26) == -1);
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v6 = v3->_BOOLs.bits & 0xF7 | v5;
  v3->_BOOLs.bits = v6;
  v7 = v6 & 0xFE;
  if (*(a2 + 18))
  {
    ++v7;
  }

  v3->_BOOLs.bits = v7;
LABEL_8:

  return v3;
}

- (void)populateReferencesUsingPAStyleSerializedFrame:(void *)frame andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:
{
  v37 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = *(a2 + 26);
    v9 = objc_opt_class();
    Property = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v8, frame, dictionary, v9, 0);
    v12 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v11, 8, 1);
    }

    *(self + 32) = Property;
    v13 = *(a2 + 18);
    v14 = objc_opt_class();
    v15 = SASerializableNewMutableSetFromIndexList(a2 + 34, v13, frame, dictionary, v14);
    if ([v15 count] == 1)
    {
      anyObject = [v15 anyObject];
      v18 = anyObject;
      if (anyObject)
      {
        v19 = objc_getProperty(anyObject, v17, 8, 1);
      }

      else
      {
        v19 = 0;
      }

      objc_storeStrong((self + 40), v19);
    }

    else
    {
      if ([v15 count] < 2)
      {
        v30 = *(self + 40);
        *(self + 40) = 0;

        goto LABEL_20;
      }

      v20 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v15, "count")}];
      v21 = *(self + 40);
      *(self + 40) = v20;

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = v15;
      v22 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v22)
      {
        v24 = v22;
        v25 = *v33;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v33 != v25)
            {
              objc_enumerationMutation(v18);
            }

            v27 = *(*(&v32 + 1) + 8 * i);
            v28 = *(self + 40);
            if (v27)
            {
              v27 = objc_getProperty(v27, v23, 8, 1);
            }

            v29 = v27;
            [v28 addObject:{v29, v32}];
          }

          v24 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v24);
      }
    }

LABEL_20:
  }

  v31 = *MEMORY[0x1E69E9840];
}

@end