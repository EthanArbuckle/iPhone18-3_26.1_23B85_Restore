@interface SAInstruction
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (BOOL)hasOffsetIntoBinary;
- (BOOL)hasSourceInfo;
- (BOOL)symbolicateWithOptions:(unint64_t)a3 pid:(int)a4 additionalCSSymbolicatorFlags:(unsigned int)a5;
- (NSString)debugDescription;
- (SABinary)binary;
- (SASegment)segment;
- (SASourceInfo)sourceInfo;
- (SASymbol)symbol;
- (id)realSegment;
- (int64_t)offsetIntoBinary;
- (uint64_t)enumerateSymbolsNullable:(void *)a1;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)checkForNewSymbol;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)setSymbol:(void *)a3 sourceinfo:;
@end

@implementation SAInstruction

- (SABinary)binary
{
  WeakRetained = objc_loadWeakRetained(&self->_binary);

  return WeakRetained;
}

- (void)checkForNewSymbol
{
  v79[16] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1[5];
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__2;
    v68 = __Block_byref_object_dispose__2;
    v69 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__2;
    v62 = __Block_byref_object_dispose__2;
    v63 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__2;
    v56 = __Block_byref_object_dispose__2;
    v57 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__2;
    v50 = __Block_byref_object_dispose__2;
    v51 = 0;
    v32 = a1;
    v2 = [(SAInstruction *)a1 realSegment];
    v3 = v2;
    v39[1] = 3221225472;
    v39[0] = MEMORY[0x1E69E9820];
    v40 = __34__SAInstruction_checkForNewSymbol__block_invoke;
    v41 = &unk_1E86F6DD8;
    v42 = &v64;
    v43 = &v52;
    v44 = &v58;
    v45 = &v46;
    if (v2)
    {
      v4 = v2;
      objc_sync_enter(v4);
      v33 = v4;
      v5 = [(SASegment *)v4 nonInlineSymbolAtOffsetIntoSegment:v1];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
        objc_sync_enter(v7);
        v8 = v7[4];
        if (v8 && (v79[0] = MEMORY[0x1E69E9820], v79[1] = 3221225472, v79[2] = __51__SASymbol_nonInlineSourceInfoAtOffsetIntoSegment___block_invoke, v79[3] = &__block_descriptor_40_e22_q16__0__SASourceInfo_8l, v79[4] = v1, v9 = SABinarySearchArray(v8, 0, v79), v9 != 0x7FFFFFFFFFFFFFFFLL))
        {
          v10 = [v7[4] objectAtIndexedSubscript:{v9, v32}];
        }

        else
        {
          v10 = 0;
        }

        objc_sync_exit(v7);

        v40(v39, v7, v10);
        v35 = v3;
        v11 = v33[2];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v7, "offsetIntoSegment")}];
        v13 = [v11 objectForKeyedSubscript:v12];

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        obj = v13;
        v14 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
        if (v14)
        {
          v15 = *v75;
          v34 = v6;
          v36 = *v75;
          do
          {
            v16 = 0;
            v37 = v14;
            do
            {
              if (*v75 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v74 + 1) + 8 * v16);
              v18 = [v17 offsetIntoSegment];
              if ([v17 length] + v18 > v1)
              {
                if ([v17 offsetIntoSegment] > v1)
                {
                  goto LABEL_35;
                }

                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                if (v17)
                {
                  Property = objc_getProperty(v17, v19, 32, 1);
                }

                else
                {
                  Property = 0;
                }

                v21 = Property;
                v22 = [v21 countByEnumeratingWithState:&v70 objects:v78 count:16];
                if (!v22)
                {

                  v15 = v36;
                  v14 = v37;
LABEL_30:
                  v40(v39, v17, 0);
                  goto LABEL_31;
                }

                v23 = 0;
                v24 = *v71;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v71 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = *(*(&v70 + 1) + 8 * i);
                    v27 = [v26 offsetIntoSegment];
                    if ([v26 length] + v27 > v1)
                    {
                      if ([v26 offsetIntoSegment] > v1)
                      {
                        goto LABEL_27;
                      }

                      v40(v39, v17, v26);
                      v23 = 1;
                    }
                  }

                  v22 = [v21 countByEnumeratingWithState:&v70 objects:v78 count:16];
                }

                while (v22);
LABEL_27:

                v6 = v34;
                v3 = v35;
                v15 = v36;
                v14 = v37;
                if ((v23 & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

LABEL_31:
              ++v16;
            }

            while (v16 != v14);
            v28 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
            v14 = v28;
          }

          while (v28);
        }

LABEL_35:
      }

      objc_sync_exit(v33);
    }

    v29 = v59[5];
    if (!v29)
    {
      v29 = v65[5];
    }

    v30 = v47[5];
    if (!v30)
    {
      v30 = v53[5];
    }

    [(SAInstruction *)v32 setSymbol:v29 sourceinfo:v30];
    _Block_object_dispose(&v46, 8);

    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v58, 8);

    _Block_object_dispose(&v64, 8);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)setSymbol:(void *)a3 sourceinfo:
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    objc_storeStrong(obj + 1, a2);
    objc_storeStrong(obj + 2, a3);
    objc_sync_exit(obj);
  }
}

- (BOOL)hasOffsetIntoBinary
{
  WeakRetained = objc_loadWeakRetained(&self->_segment);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_segment);
    v5 = [v4 hasOffsetIntoBinary];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int64_t)offsetIntoBinary
{
  WeakRetained = objc_loadWeakRetained(&self->_segment);

  if (!WeakRetained)
  {
    return self->_offsetIntoSegment;
  }

  v4 = objc_loadWeakRetained(&self->_segment);
  v5 = [v4 hasOffsetIntoBinary];

  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  offsetIntoSegment = self->_offsetIntoSegment;
  v7 = objc_loadWeakRetained(&self->_segment);
  v8 = [v7 offsetIntoBinary] + offsetIntoSegment;

  return v8;
}

- (id)realSegment
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 4);
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v1 = WeakRetained;
    }

    else
    {
      v4 = objc_loadWeakRetained(v1 + 3);
      v1 = [(SABinary *)v4 createFakeEntireBinarySegment];
    }
  }

  return v1;
}

- (BOOL)symbolicateWithOptions:(unint64_t)a3 pid:(int)a4 additionalCSSymbolicatorFlags:(unsigned int)a5
{
  v7 = a3;
  if (self)
  {
    if (self->_sourceInfoOrSourceInfos)
    {
      return 0;
    }

    v10 = self->_symbolOrSymbols != 0;
  }

  else
  {
    v10 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_binary);
  if (!WeakRetained)
  {
    return 0;
  }

  v12 = WeakRetained;
  v13 = [(SABinary *)WeakRetained symbolOwnerWrapperWithOptions:v7 pid:a4 checkExclave:1 additionalCSSymbolicatorFlags:a5];
  if (v13)
  {
    v14 = [(SAInstruction *)&self->super.isa realSegment];
    v15 = v14;
    if (!v14 || (v16 = [(SASegment *)v14 baseAddressInSymbolOwnerWrapper:v13], v16 == -1))
    {
      v9 = 0;
    }

    else
    {
      v17 = v16;
      v22 = 0;
      v23 = 0;
      offsetIntoSegment = self->_offsetIntoSegment;
      objc_copyStruct(dest, (v13 + 16), 16, 1, 0);
      [(SASegment *)v15 symbolicateOffsetIntoSegment:dest[0] symbolOwner:dest[1] segmentBaseAddress:v17 returningSymbols:&v23 sourceInfos:&v22];
      v20 = v22;
      v19 = v23;
      [(SAInstruction *)self setSymbol:v23 sourceinfo:v22];
      v9 = self->_sourceInfoOrSourceInfos != 0;
      if (!v9 && !v10)
      {
        v9 = self->_symbolOrSymbols != 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __34__SAInstruction_checkForNewSymbol__block_invoke(void *a1, id obj, void *a3)
{
  v5 = *(a1[4] + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (v7)
  {
    v8 = *(*(a1[6] + 8) + 40);
    if (v8)
    {
      [v8 addObject:obj];
      v9 = *(a1[7] + 8);
      v10 = *(v9 + 40);
      if (a3)
      {
        v11 = *(v9 + 40);

        [v11 addObject:a3];
        return;
      }

      v24 = [MEMORY[0x1E695DFB0] null];
      [v10 addObject:v24];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(*(a1[4] + 8) + 40), obj, 0}];
      v14 = *(a1[6] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v16 = objc_alloc(MEMORY[0x1E695DF70]);
      v17 = *(*(a1[5] + 8) + 40);
      v18 = v17;
      if (!v17)
      {
        v18 = [MEMORY[0x1E695DFB0] null];
      }

      v19 = a3;
      v24 = v18;
      if (!a3)
      {
        v20 = [MEMORY[0x1E695DFB0] null];
        v18 = v24;
        v19 = v20;
      }

      v21 = [v16 initWithObjects:{v18, v19, 0}];
      v22 = *(a1[7] + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      if (a3)
      {
        if (v17)
        {
          return;
        }
      }

      else
      {

        if (v17)
        {
          return;
        }
      }
    }
  }

  else
  {
    objc_storeStrong(v6, obj);
    v12 = (*(a1[5] + 8) + 40);

    objc_storeStrong(v12, a3);
  }
}

- (uint64_t)enumerateSymbolsNullable:(void *)a1
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_38:
    v13 = 0;
    goto LABEL_25;
  }

  v4 = a1;
  objc_sync_enter(v4);
  v5 = v4[1];
  v6 = v4[2];
  objc_sync_exit(v4);

  if (!v5)
  {
    v13 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (a2)
        {
          (*(a2 + 16))(a2, v5, v6, 0);
        }

        v13 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      v16 = *__error();
      v6 = _sa_logt();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        ClassName = object_getClassName(v5);
        _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "symbol is %s", buf, 0xCu);
      }

      *__error() = v16;
      v17 = object_getClassName(v5);
      _SASetCrashLogMessage(4377, "symbol is %s", v18, v19, v20, v21, v22, v23, v17);
      _os_crash();
      __break(1u);
    }

    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v5 debugDescription];
      v2 = [v26 UTF8String];
      v27 = [v6 count];
      v28 = object_getClassName(v6);
      *buf = 136315650;
      ClassName = v2;
      v59 = 2048;
      v60 = v27;
      v61 = 2080;
      v62 = v28;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "1 symbol %s, but %lu source infos (%s)", buf, 0x20u);
    }

    *__error() = v24;
    v29 = [v5 debugDescription];
    v7 = [v29 UTF8String];
    [v6 count];
    object_getClassName(v6);
    _SASetCrashLogMessage(4378, "1 symbol %s, but %lu source infos (%s)", v30, v31, v32, v33, v34, v35, v7);

    _os_crash();
    __break(1u);
    goto LABEL_32;
  }

  v2 = v5;
  if (a2)
  {
    v7 = v6;
    if (!v7)
    {
LABEL_8:
      if ([v2 count])
      {
        v9 = 0;
        while (1)
        {
          if (!v7)
          {
            goto LABEL_13;
          }

          v10 = [v7 objectAtIndexedSubscript:v9];
          v11 = [MEMORY[0x1E695DFB0] null];

          if (v10 == v11)
          {
            break;
          }

LABEL_14:
          v12 = [v2 objectAtIndexedSubscript:v9];
          (*(a2 + 16))(a2, v12, v10, v9);

          if (++v9 >= [v2 count])
          {
            goto LABEL_15;
          }
        }

LABEL_13:
        v10 = 0;
        goto LABEL_14;
      }

LABEL_15:

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 count];
      if (v8 == [v2 count])
      {
        goto LABEL_8;
      }

      goto LABEL_35;
    }

LABEL_32:
    v36 = *__error();
    v37 = _sa_logt();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClassName(v7);
      *buf = 136315138;
      ClassName = v38;
      _os_log_error_impl(&dword_1E0E2F000, v37, OS_LOG_TYPE_ERROR, "symbol is array, but source info is %s", buf, 0xCu);
    }

    *__error() = v36;
    v39 = object_getClassName(v7);
    _SASetCrashLogMessage(4359, "symbol is array, but source info is %s", v40, v41, v42, v43, v44, v45, v39);
    _os_crash();
    __break(1u);
LABEL_35:
    v46 = *__error();
    v47 = _sa_logt();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [v2 count];
      v49 = [v7 count];
      *buf = 134218240;
      ClassName = v48;
      v59 = 2048;
      v60 = v49;
      _os_log_error_impl(&dword_1E0E2F000, v47, OS_LOG_TYPE_ERROR, "%lu symbols, but %lu source infos", buf, 0x16u);
    }

    *__error() = v46;
    v50 = [v2 count];
    [v7 count];
    _SASetCrashLogMessage(4360, "%lu symbols, but %lu source infos", v51, v52, v53, v54, v55, v56, v50);
    _os_crash();
    __break(1u);
    goto LABEL_38;
  }

LABEL_16:
  v13 = [v2 count];

LABEL_24:
LABEL_25:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)hasSourceInfo
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self->_sourceInfoOrSourceInfos;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v2;
    v3 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          v8 = [MEMORY[0x1E695DFB0] null];

          if (v7 != v8)
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSString)debugDescription
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __33__SAInstruction_debugDescription__block_invoke;
  v33 = &unk_1E86F6E00;
  v4 = v3;
  v34 = v4;
  v35 = self;
  v5 = MEMORY[0x1E12EBE50](&v30);
  symbolOrSymbols = self->_symbolOrSymbols;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([self->_symbolOrSymbols count])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        if ((v8 & 1) == 0)
        {
          [v4 appendString:{@", "}];
        }

        v9 = [self->_symbolOrSymbols objectAtIndexedSubscript:v7];
        v10 = [self->_sourceInfoOrSourceInfos objectAtIndexedSubscript:v7];
        v11 = [MEMORY[0x1E695DFB0] null];

        if (v10 == v11)
        {

          v10 = 0;
        }

        (v5)[2](v5, v9, v10);

        ++v7;
        v12 = [self->_symbolOrSymbols count];
        v8 = 0;
      }

      while (v7 < v12);
    }
  }

  else if (self->_symbolOrSymbols)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = *__error();
      v21 = _sa_logt();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        ClassName = object_getClassName(self->_symbolOrSymbols);
        *buf = 136315138;
        v37 = ClassName;
        _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "symbol is %s", buf, 0xCu);
      }

      *__error() = v20;
      v23 = object_getClassName(self->_symbolOrSymbols);
      _SASetCrashLogMessage(4412, "symbol is %s", v24, v25, v26, v27, v28, v29, v23);
      _os_crash();
      __break(1u);
    }

    (v5)[2](v5, self->_symbolOrSymbols, self->_sourceInfoOrSourceInfos);
  }

  else
  {
    [v4 appendFormat:@"???"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_segment);

  if (WeakRetained)
  {
    p_segment = &self->_segment;
  }

  else
  {
    p_segment = &self->_binary;
  }

  v15 = objc_loadWeakRetained(p_segment);
  v16 = [v15 debugDescription];
  [v4 appendFormat:@" (%@ + %llu)", v16, self->_offsetIntoSegment, v30, v31, v32, v33];

  v17 = v4;
  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

void __33__SAInstruction_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = [a2 debugDescription];
  [v6 appendFormat:@"%@ + %llu", v7, *(*(a1 + 40) + 40) - objc_msgSend(a2, "offsetIntoSegment")];

  if (a3)
  {
    v8 = *(a1 + 32);
    v9 = [a3 debugDescription];
    [v8 appendFormat:@" (%@ + %llu)", v9, *(*(a1 + 40) + 40) - objc_msgSend(a3, "offsetIntoSegment")];
  }
}

- (SASourceInfo)sourceInfo
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_sourceInfoOrSourceInfos)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    sourceInfoOrSourceInfos = v2->_sourceInfoOrSourceInfos;
    if (isKindOfClass)
    {
      v5 = [v2->_sourceInfoOrSourceInfos firstObject];
      v6 = [MEMORY[0x1E695DFB0] null];

      if (v5 == v6)
      {
        v7 = 0;
      }

      else
      {
        v7 = v5;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = *__error();
        v11 = _sa_logt();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          ClassName = object_getClassName(v2->_sourceInfoOrSourceInfos);
          *buf = 136315138;
          v21 = ClassName;
          _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "source info is %s", buf, 0xCu);
        }

        *__error() = v10;
        v13 = object_getClassName(v2->_sourceInfoOrSourceInfos);
        _SASetCrashLogMessage(4443, "source info is %s", v14, v15, v16, v17, v18, v19, v13);
        _os_crash();
        __break(1u);
      }

      v7 = v2->_sourceInfoOrSourceInfos;
    }
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v2);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (SASymbol)symbol
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  symbolOrSymbols = v2->_symbolOrSymbols;
  if (symbolOrSymbols)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = v2->_symbolOrSymbols;
    if (isKindOfClass)
    {
      v6 = [v2->_symbolOrSymbols firstObject];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = *__error();
        v10 = _sa_logt();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          ClassName = object_getClassName(v2->_symbolOrSymbols);
          *buf = 136315138;
          v20 = ClassName;
          _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "symbol is %s", buf, 0xCu);
        }

        *__error() = v9;
        v12 = object_getClassName(v2->_symbolOrSymbols);
        _SASetCrashLogMessage(4457, "symbol is %s", v13, v14, v15, v16, v17, v18, v12);
        _os_crash();
        __break(1u);
      }

      v6 = v2->_symbolOrSymbols;
    }

    symbolOrSymbols = v6;
  }

  objc_sync_exit(v2);

  v7 = *MEMORY[0x1E69E9840];

  return symbolOrSymbols;
}

- (SASegment)segment
{
  WeakRetained = objc_loadWeakRetained(&self->_segment);

  return WeakRetained;
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [(SAInstruction *)self numSymbols];
  if (v2 <= 1)
  {
    return 99;
  }

  else
  {
    return 56 * v2 + 43;
  }
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  if ([(SAInstruction *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [(SAInstruction *)self debugDescription];
      *buf = 136315650;
      v32 = [v21 UTF8String];
      v33 = 2048;
      v34 = [(SAInstruction *)self sizeInBytesForSerializedVersion];
      v35 = 2048;
      v36 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v19;
    v22 = [(SAInstruction *)self debugDescription];
    v23 = [v22 UTF8String];
    [(SAInstruction *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5578, "%s: size %lu != buffer length %lu", v24, v25, v26, v27, v28, v29, v23);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 1025;
  *(&a3->var1 + 1) = self->_offsetIntoSegment;
  WeakRetained = objc_loadWeakRetained(&self->_binary);
  v10 = [WeakRetained uuid];

  if (v10)
  {
    [v10 getUUIDBytes:&a3->var2 + 2];
  }

  else
  {
    uuid_clear(&a3->var2 + 2);
  }

  v11 = objc_loadWeakRetained(&self->_segment);

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_segment);
    *(&a3->var4.var6 + 2) = SASerializableIndexForPointerFromSerializationDictionary(v12, a5);
  }

  else
  {
    *(&a3->var4.var6 + 2) = -1;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __98__SAInstruction_Serialization__addSelfToBuffer_bufferLength_withCompletedSerializationDictionary___block_invoke;
  v30[3] = &unk_1E86F6E90;
  v30[4] = a5;
  v30[5] = a3;
  v13 = [(SAInstruction *)self enumerateSymbols:v30];
  if (v13 != 1)
  {
    if (v13)
    {
      BYTE2(a3->var5) = v13 - 1;
      v14 = (v13 - 1);
      goto LABEL_13;
    }

    *(&a3->var4.var1 + 2) = -1;
    *(&a3->var4.var4 + 2) = -1;
  }

  v14 = 0;
  BYTE2(a3->var5) = 0;
LABEL_13:
  v15 = a3 + 56 * v14;
  v16 = objc_loadWeakRetained(&self->_binary);
  *(v15 + 91) = SASerializableIndexForPointerFromSerializationDictionary(v16, a5);

  v17 = *MEMORY[0x1E69E9840];
  return 1;
}

void __98__SAInstruction_Serialization__addSelfToBuffer_bufferLength_withCompletedSerializationDictionary___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = v7 + 26;
  v9 = v7 + 56 * a4 + 35;
  if (a4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  *v10 = [a2 offsetIntoSegment];
  *(v10 + 8) = [a2 length];
  v11 = [a2 name];
  *(v10 + 16) = SASerializableIndexForPointerFromSerializationDictionary(v11, *(a1 + 32));

  if (a3)
  {
    *(v10 + 24) = [a3 offsetIntoSegment];
    *(v10 + 48) = [a3 lineNum];
    *(v10 + 52) = [a3 columnNum];
    *(v10 + 32) = [a3 length];
    v12 = [a3 filePath];
    *(v10 + 40) = SASerializableIndexForPointerFromSerializationDictionary(v12, *(a1 + 32));
  }

  else
  {
    *(v10 + 40) = -1;
  }
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_binary);

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&self->_binary);
      [v8 addSelfToSerializationDictionary:a3];
    }

    v9 = objc_loadWeakRetained(&self->_segment);

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_segment);
      [v10 addSelfToSerializationDictionary:a3];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__SAInstruction_Serialization__addSelfToSerializationDictionary___block_invoke;
    v11[3] = &unk_1E86F6EB8;
    v11[4] = a3;
    [(SAInstruction *)self enumerateSymbols:v11];
  }
}

void __65__SAInstruction_Serialization__addSelfToSerializationDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 name];
  [v5 addSelfToSerializationDictionary:*(a1 + 32)];

  if (a3)
  {
    v6 = [a3 filePath];
    [v6 addSelfToSerializationDictionary:*(a1 + 32)];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v4 = objc_alloc_init(objc_opt_self());
  objc_storeWeak(v4 + 3, 0);
  v4[5] = 0;
  return v4;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v51 = *MEMORY[0x1E69E9840];
  if (*a3 >= 5u)
  {
    goto LABEL_32;
  }

  if (a4 <= 0x19)
  {
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v48 = a4;
      v49 = 2048;
      v50 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAInstruction struct %lu", buf, 0x16u);
    }

    *__error() = v27;
    _SASetCrashLogMessage(5669, "bufferLength %lu < serialized SAInstruction struct %lu", v29, v30, v31, v32, v33, v34, a4);
    _os_crash();
    __break(1u);
LABEL_29:
    v35 = *__error();
    v36 = _sa_logt();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v48 = a4;
      v49 = 2048;
      v50 = 91;
      _os_log_error_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAInstruction struct v3 %lu", buf, 0x16u);
    }

    *__error() = v35;
    _SASetCrashLogMessage(5699, "bufferLength %lu < serialized SAInstruction struct v3 %lu", v37, v38, v39, v40, v41, v42, a4);
    _os_crash();
    __break(1u);
LABEL_32:
    v43 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAInstruction version" userInfo:0];
    objc_exception_throw(v43);
  }

  if (*(a3 + 1) < 4u)
  {
    if (uuid_is_null(a3 + 10))
    {
      v12 = 0;
      goto LABEL_25;
    }

    v13 = uuidForBytes(a3 + 10);
    v12 = [SABinary binaryWithUUID:v13 absolutePath:0];
  }

  else
  {
    v10 = *(a3 + 56 * *(a3 + 90) + 91);
    v11 = objc_opt_class();
    v12 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, a5, a6, v11, 0);
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  v14 = *(a3 + 1);
  if (v14 < 2)
  {
    goto LABEL_25;
  }

  if (v14 != 2)
  {
    if (a4 > 0x5A)
    {
      v18 = gSASerializationEncodedVersionBeingDecoded();
      if (*v18 <= 30)
      {
        *gBinaryBeingDecoded(&gBinaryBeingDecoded) = v12;
      }

      v19 = *(a3 + 82);
      v20 = objc_opt_class();
      v21 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v19, a5, a6, v20, 0);
      if (*v18 <= 30)
      {
        *gBinaryBeingDecoded(&gBinaryBeingDecoded) = 0;
      }

      LODWORD(v16) = *(a3 + 90);
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  v15 = [(SABinary *)v12 checkForSegmentWithCleanName:?];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [(SABinary *)v12 checkForSegmentWithCleanName:?];
  }

  v21 = v17;

  LODWORD(v16) = 0;
LABEL_21:
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __128__SAInstruction_Serialization__populateReferencesUsingBuffer_bufferLength_andDeserializationDictionary_andDataBufferDictionary___block_invoke;
  v44[3] = &unk_1E86F6EE0;
  v44[4] = a5;
  v44[5] = a6;
  v22 = v21;
  v45 = v22;
  v12 = v12;
  v46 = v12;
  v23 = MEMORY[0x1E12EBE50](v44);
  (v23)[2](v23, a3 + 26, -1);
  if (v16)
  {
    v24 = *(a3 + 26);
    v25 = a3 + 91;
    v16 = v16;
    do
    {
      (v23)[2](v23, v25, v24);
      v25 += 56;
      --v16;
    }

    while (v16);
  }

LABEL_25:
  v26 = *MEMORY[0x1E69E9840];
}

void __128__SAInstruction_Serialization__populateReferencesUsingBuffer_bufferLength_andDeserializationDictionary_andDataBufferDictionary___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  if (v6 != -1 || *a2 || *(a2 + 8))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = objc_opt_class();
    v10 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v6, v7, v8, v9, 0);
    v11 = *(a1 + 48);
    if (v11)
    {
      if (a3 == -1)
      {
        v12 = [(SASegment *)v11 addNonInlineSymbolWithOffsetIntoSegment:*(a2 + 8) length:v10 name:?];
      }

      else
      {
        if (!v10)
        {
          v25 = *__error();
          v26 = _sa_logt();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v28 = [(SASegment *)*(a1 + 48) nonInlineSymbolAtOffsetIntoSegment:a3];
            v29 = [v28 debugDescription];
            v30 = [*(a1 + 48) debugDescription];
            v31 = 138412546;
            v32 = v29;
            v33 = 2112;
            v34 = v30;
            _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "No symbol name for inline symbol (after non-inline symbol %@ in %@)", &v31, 0x16u);
          }

          v13 = 0;
          *__error() = v25;
          goto LABEL_18;
        }

        v12 = [(SASegment *)v11 addInlineSymbolWithOffsetIntoSegment:*(a2 + 8) length:v10 name:a3 nonInlineSymbolOffsetIntoSegment:?];
      }
    }

    else
    {
      v12 = [(SABinary *)*(a1 + 56) addSymbolWithOffsetIntoBinary:*(a2 + 8) length:v10 name:?];
    }

    v13 = v12;
    v14 = *(a2 + 40);
    if (v14 != -1)
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = objc_opt_class();
      v18 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v14, v16, v15, v17);
      v19 = *(a2 + 24);
      v20 = *(a2 + 32);
      v21 = *(a2 + 48);
      v22 = *(a2 + 52);
      if (a3 == -1)
      {
        v24 = [(SASymbol *)v13 addNonInlineSourceInfoWithOffsetIntoSegment:v19 length:v20 lineNum:v21 columnNum:v22 filePath:v18];
      }

      else
      {
        v23 = [(SASymbol *)v13 addInlineSourceInfoWithOffsetIntoSegment:v19 length:v20 lineNum:v21 columnNum:v22 filePath:v18];
      }
    }

LABEL_18:
  }

  v27 = *MEMORY[0x1E69E9840];
}

@end