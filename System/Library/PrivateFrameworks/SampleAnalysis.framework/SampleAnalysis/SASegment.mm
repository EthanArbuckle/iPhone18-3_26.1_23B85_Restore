@interface SASegment
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
+ (id)segmentWithBinary:(void *)binary name:(uint64_t)name length:(uint64_t)length offsetIntoBinary:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)isEmpty;
- (NSString)debugDescription;
- (SABinary)binary;
- (SASegment)initWithBinary:(id)binary name:(id)name length:(unint64_t)length offsetIntoBinary:(int64_t)intoBinary;
- (id)addInlineSymbolWithOffsetIntoSegment:(uint64_t)segment length:(void *)length name:(unint64_t)name nonInlineSymbolOffsetIntoSegment:;
- (id)instructionAtOffsetIntoSegment:(unint64_t)segment;
- (id)nonInlineSymbolAtOffsetIntoSegment:(void *)segment;
- (uint64_t)applyLength:(id *)length;
- (uint64_t)baseAddressInSymbolOwnerWrapper:(void *)wrapper;
- (void)addNonInlineSymbolWithOffsetIntoSegment:(unint64_t)segment length:(void *)length name:;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)enumerateAllSymbols:(id)symbols;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)symbolicateOffsetIntoSegment:(uint64_t)segment symbolOwner:(uint64_t)owner segmentBaseAddress:(uint64_t)address returningSymbols:(id *)symbols sourceInfos:(id *)infos;
- (void)symbolicateWithSymbolOwnerWrapper:(void *)wrapper;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SASegment

- (SABinary)binary
{
  WeakRetained = objc_loadWeakRetained(&self->_binary);

  return WeakRetained;
}

- (BOOL)isEmpty
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([selfCopy[7] count])
  {
    v2 = 0;
  }

  else
  {
    v2 = [selfCopy[1] count] == 0;
  }

  objc_sync_exit(selfCopy);

  return v2;
}

- (SASegment)initWithBinary:(id)binary name:(id)name length:(unint64_t)length offsetIntoBinary:(int64_t)intoBinary
{
  v13.receiver = self;
  v13.super_class = SASegment;
  v10 = [(SASegment *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_binary, binary);
    objc_storeStrong(&v11->_name, name);
    v11->_offsetIntoBinary = intoBinary;
    [(SASegment *)&v11->super.isa applyLength:length];
  }

  return v11;
}

- (uint64_t)applyLength:(id *)length
{
  v2 = a2;
  v68 = *MEMORY[0x1E69E9840];
  if (a2 >> 28)
  {
    result = [length[4] containsString:@"TEXT"];
    if (result)
    {
      v5 = *__error();
      v6 = _sa_logt();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v54 = [length debugDescription];
        *buf = 138412546;
        v60 = v54;
        v61 = 2048;
        v62 = v2;
        _os_log_fault_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_FAULT, "%@ setting length above max for text segment: 0x%llx", buf, 0x16u);
      }

      v7 = __error();
      result = 0;
      *v7 = v5;
    }
  }

  else
  {
    lengthCopy = length;
    objc_sync_enter(lengthCopy);
    v9 = lengthCopy[3];
    if (v9 >= v2)
    {
      objc_sync_exit(lengthCopy);

      result = 0;
    }

    else
    {
      if (v9)
      {
        LODWORD(v10) = *__error();
        v11 = _sa_logt();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
LABEL_37:
          v53 = [lengthCopy debugDescription];
          *buf = 138412546;
          v60 = v53;
          v61 = 2048;
          v62 = v2;
          _os_log_debug_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_DEBUG, "%@ updating length to 0x%llx", buf, 0x16u);
        }

        *__error() = v10;
      }

      lengthCopy[3] = v2;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      allKeys = [lengthCopy[7] allKeys];
      v10 = [allKeys countByEnumeratingWithState:&v55 objects:v67 count:16];
      if (v10)
      {
        v13 = *v56;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v56 != v13)
            {
              objc_enumerationMutation(allKeys);
            }

            v15 = *(*(&v55 + 1) + 8 * i);
            if ([v15 unsignedLongLongValue] >= lengthCopy[3])
            {
              v16 = [lengthCopy[7] objectForKeyedSubscript:v15];
              v17 = v16;
              if (v16)
              {
                v18 = *(v16 + 8);
                if (v18)
                {
                  unsignedLongLongValue2 = v18;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    firstObject = [unsignedLongLongValue2 firstObject];
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      goto LABEL_34;
                    }

                    firstObject = unsignedLongLongValue2;
                  }

                  v21 = firstObject;
                  v22 = [firstObject length] == 0;

                  if (!v22)
                  {
                    v24 = *__error();
                    v25 = _sa_logt();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                    {
                      v26 = [lengthCopy debugDescription];
                      v27 = v26;
                      uTF8String = [v26 UTF8String];
                      v29 = lengthCopy[3];
                      unsignedLongLongValue = [v15 unsignedLongLongValue];
                      v31 = [v17 debugDescription];
                      v32 = v31;
                      uTF8String2 = [v31 UTF8String];
                      *buf = 136315906;
                      v60 = uTF8String;
                      v61 = 2048;
                      v62 = v29;
                      v63 = 2048;
                      v64 = unsignedLongLongValue;
                      v65 = 2080;
                      v66 = uTF8String2;
                      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "%s: setting length to 0x%llx when we have a symbol at offset 0x%llx: %s", buf, 0x2Au);
                    }

                    *__error() = v24;
                    v34 = [lengthCopy debugDescription];
                    v35 = v34;
                    LODWORD(v10) = [v34 UTF8String];
                    v36 = lengthCopy[3];
                    unsignedLongLongValue2 = [v15 unsignedLongLongValue];
                    v37 = [v17 debugDescription];
                    v38 = v37;
                    [v37 UTF8String];
                    _SASetCrashLogMessage(176, "%s: setting length to 0x%llx when we have a symbol at offset 0x%llx: %s", v39, v40, v41, v42, v43, v44, v10);

                    _os_crash();
                    __break(1u);
LABEL_34:
                    v11 = *__error();
                    v2 = _sa_logt();
                    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
                    {
                      ClassName = object_getClassName(unsignedLongLongValue2);
                      *buf = 136315138;
                      v60 = ClassName;
                      _os_log_error_impl(&dword_1E0E2F000, v2, OS_LOG_TYPE_ERROR, "symbol is %s", buf, 0xCu);
                    }

                    *__error() = v11;
                    v46 = object_getClassName(unsignedLongLongValue2);
                    _SASetCrashLogMessage(4219, "symbol is %s", v47, v48, v49, v50, v51, v52, v46);
                    _os_crash();
                    __break(1u);
                    goto LABEL_37;
                  }
                }

                objc_storeWeak(v17 + 3, 0);
                objc_storeWeak(v17 + 4, 0);
              }

              [lengthCopy[7] setObject:0 forKeyedSubscript:v15];
            }
          }

          v10 = [allKeys countByEnumeratingWithState:&v55 objects:v67 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      objc_sync_exit(lengthCopy);
      result = 1;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)segmentWithBinary:(void *)binary name:(uint64_t)name length:(uint64_t)length offsetIntoBinary:
{
  v9 = objc_opt_self();
  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([binary isEqualToString:@"__TEXT"])
    {
      length = 0;
    }

    else
    {
      length = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v10 = [[v9 alloc] initWithBinary:a2 name:binary length:name offsetIntoBinary:length];

  return v10;
}

uint64_t __46__SASegment_grabInstructionsFromOtherSegment___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40) + [a2 offsetIntoSegment];
  v4 = *(*(a1 + 32) + 40);
  v5 = v4 <= v3;
  if (v4 >= v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

uint64_t __46__SASegment_grabInstructionsFromOtherSegment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40) + [a2 offsetIntoSegment];
  v4 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 40);
  v5 = v4 <= v3;
  if (v4 >= v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

- (id)nonInlineSymbolAtOffsetIntoSegment:(void *)segment
{
  if (segment)
  {
    segmentCopy = segment;
    objc_sync_enter(segmentCopy);
    v4 = segmentCopy[1];
    if (v4 && (v10[0] = MEMORY[0x1E69E9820], v10[1] = 3221225472, v10[2] = __48__SASegment_nonInlineSymbolAtOffsetIntoSegment___block_invoke, v10[3] = &__block_descriptor_40_e18_q16__0__SASymbol_8l, v10[4] = a2, (v5 = SABinarySearchArray(v4, 1536, v10)) != 0))
    {
      v6 = [segmentCopy[1] objectAtIndexedSubscript:v5 - 1];
      if ([v6 length] && (v7 = objc_msgSend(v6, "offsetIntoSegment"), objc_msgSend(v6, "length") + v7 <= a2))
      {
        v8 = 0;
      }

      else
      {
        v8 = v6;
      }
    }

    else
    {
      v8 = 0;
    }

    objc_sync_exit(segmentCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __32__SASegment_addTailspinSymbols___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:a2];
    if (([v6 scanUnsignedLongLong:&v28] & 1) == 0)
    {
      v16 = *__error();
      v17 = _sa_logt();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = a2;
        _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "Unable to parse offset %@", &buf, 0xCu);
      }

      *__error() = v16;
      goto LABEL_30;
    }
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
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "Bad offset in tailspin file", &buf, 2u);
      }

      v15 = __error();
      goto LABEL_25;
    }

    v28 = [a2 unsignedLongLongValue];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "Bad symbol dict in tailspin file", &buf, 2u);
    }

    v15 = __error();
LABEL_25:
    *v15 = v13;
    goto LABEL_30;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x2020000000;
  v32 = -1;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __32__SASegment_addTailspinSymbols___block_invoke_34;
  v27[3] = &unk_1E86F6698;
  v27[5] = &buf;
  v27[6] = v28;
  v27[4] = *(a1 + 32);
  v7 = MEMORY[0x1E12EBE50](v27);
  (v7)[2](v7, a3, 0);
  DictGetArray(a3, 0x1F5BBFE80);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v8 = v24 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v9)
  {
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = *__error();
          v20 = _sa_logt();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *v22 = 0;
            _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "Bad inline symbol dict in tailspin file", v22, 2u);
          }

          *__error() = v19;
          goto LABEL_29;
        }

        v7[2](v7, v12, 1);
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_29:

  _Block_object_dispose(&buf, 8);
LABEL_30:
  v21 = *MEMORY[0x1E69E9840];
}

void __32__SASegment_addTailspinSymbols___block_invoke_34(uint64_t a1, void *a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = DictGetString(a2, 0x1F5BBFC60);
  v7 = DictGetNumber(a2, 0x1F5BBFDA0);
  v8 = [v7 unsignedLongLongValue];

  v9 = DictGetNumber(a2, 0x1F5BBFDC0);
  v10 = [v9 unsignedLongLongValue];

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v6 == 0;
  }

  if (v11)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 48) - v8;
  if (!a3)
  {
    v13 = [(SASegment *)*(a1 + 32) addNonInlineSymbolWithOffsetIntoSegment:v12 length:v10 name:v6];
    *(*(*(a1 + 40) + 8) + 24) = v12;
    goto LABEL_9;
  }

  if (v6)
  {
    v13 = [(SASegment *)*(a1 + 32) addInlineSymbolWithOffsetIntoSegment:v12 length:v10 name:v6 nonInlineSymbolOffsetIntoSegment:*(*(*(a1 + 40) + 8) + 24)];
LABEL_9:
    v14 = DictGetString(a2, 0x1F5BBFDE0);
    if (v14)
    {
      v15 = DictGetNumber(a2, 0x1F5BBFE40);
      v16 = [v15 unsignedLongLongValue];

      v17 = DictGetNumber(a2, 0x1F5BBFE60);
      v18 = [v17 unsignedLongLongValue];

      v19 = DictGetNumber(a2, 0x1F5BBFE00);
      v20 = [v19 unsignedIntValue];

      v21 = DictGetNumber(a2, 0x1F5BBFE20);
      v22 = [v21 unsignedIntValue];

      v23 = *(a1 + 48) - v16;
      if (a3)
      {
        v24 = [(SASymbol *)v13 addInlineSourceInfoWithOffsetIntoSegment:v23 length:v18 lineNum:v20 columnNum:v22 filePath:v14];
      }

      else
      {
        v25 = [(SASymbol *)v13 addNonInlineSourceInfoWithOffsetIntoSegment:v23 length:v18 lineNum:v20 columnNum:v22 filePath:v14];
      }
    }

    goto LABEL_14;
  }

  v27 = *__error();
  v28 = _sa_logt();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = [(SASegment *)*(a1 + 32) nonInlineSymbolAtOffsetIntoSegment:?];
    v30 = [v29 debugDescription];
    v31 = [*(a1 + 32) debugDescription];
    v32 = 138412546;
    v33 = v30;
    v34 = 2112;
    v35 = v31;
    _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "No symbol name for inline symbol (after non-inline symbol %@ in %@)", &v32, 0x16u);
  }

  *__error() = v27;
LABEL_14:

  v26 = *MEMORY[0x1E69E9840];
}

- (id)addInlineSymbolWithOffsetIntoSegment:(uint64_t)segment length:(void *)length name:(unint64_t)name nonInlineSymbolOffsetIntoSegment:
{
  v61 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_29:
    v20 = 0;
    goto LABEL_18;
  }

  if (!segment)
  {
    v30 = *__error();
    v31 = _sa_logt();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [self debugDescription];
      uTF8String = [v32 UTF8String];
      v34 = [(SASegment *)self nonInlineSymbolAtOffsetIntoSegment:name];
      v35 = [v34 debugDescription];
      *buf = 136316162;
      v52 = uTF8String;
      v53 = 2080;
      uTF8String2 = [v35 UTF8String];
      v55 = 2080;
      uTF8String3 = [length UTF8String];
      v57 = 2048;
      v58 = a2;
      v59 = 2048;
      v60 = a2;
      _os_log_error_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_ERROR, "%s: inlining into %s: %s (0x%llx-0x%llx) with length 0", buf, 0x34u);
    }

    *__error() = v30;
    v36 = [self debugDescription];
    v37 = v36;
    uTF8String4 = [v36 UTF8String];
    v39 = [(SASegment *)self nonInlineSymbolAtOffsetIntoSegment:name];
    v40 = [v39 debugDescription];
    v41 = v40;
    [v40 UTF8String];
    lengthCopy = length;
    [length UTF8String];
    _SASetCrashLogMessage(490, "%s: inlining into %s: %s (0x%llx-0x%llx) with length 0", v43, v44, v45, v46, v47, v48, uTF8String4);

    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = selfCopy[2];
  if (!v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v12 = selfCopy[2];
    selfCopy[2] = v11;

    v10 = selfCopy[2];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:name];
  v14 = [v10 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v15 = selfCopy[2];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:name];
    [v15 setObject:v14 forKeyedSubscript:v16];
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __95__SASegment_addInlineSymbolWithOffsetIntoSegment_length_name_nonInlineSymbolOffsetIntoSegment___block_invoke;
  v50[3] = &__block_descriptor_48_e18_q16__0__SASymbol_8l;
  v50[4] = a2;
  v50[5] = segment;
  v17 = SABinarySearchArray(v14, 1536, v50);
  v18 = v17;
  if (v17)
  {
    v19 = v17 - 1;
    while (1)
    {
      v20 = [v14 objectAtIndexedSubscript:v19];
      if ([v20 offsetIntoSegment] != a2 || objc_msgSend(v20, "length") != segment)
      {

        goto LABEL_16;
      }

      name = [v20 name];
      if (!name)
      {
        break;
      }

      name2 = [v20 name];
      v23 = [name2 isEqualToString:length];

      if (v23)
      {
        break;
      }

      if (--v19 == -1)
      {
        goto LABEL_16;
      }
    }

    name3 = [v20 name];
    v27 = name3 != 0;

    if (v20)
    {
      v29 = v27;
    }

    else
    {
      v29 = 1;
    }

    if ((v29 & 1) == 0)
    {
      objc_setProperty_atomic_copy(v20, v28, length, 24);
    }
  }

  else
  {
LABEL_16:
    v20 = [SASymbol symbolWithOffsetIntoSegment:a2 length:segment name:length];
    [v14 insertObject:v20 atIndex:v18];
  }

  objc_sync_exit(selfCopy);
LABEL_18:
  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)addNonInlineSymbolWithOffsetIntoSegment:(unint64_t)segment length:(void *)length name:
{
  if (!self || self[3] - 1 < a2)
  {
    v5 = 0;
    goto LABEL_27;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = selfCopy[1];
  if (!v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
    v11 = selfCopy[1];
    selfCopy[1] = v10;

    v9 = selfCopy[1];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__SASegment_addNonInlineSymbolWithOffsetIntoSegment_length_name___block_invoke;
  v19[3] = &__block_descriptor_40_e18_q16__0__SASymbol_8l;
  v19[4] = a2;
  v12 = SABinarySearchArray(v9, 1280, v19);
  if (v12 >= [selfCopy[1] count])
  {
    goto LABEL_20;
  }

  v5 = [selfCopy[1] objectAtIndexedSubscript:v12];
  if ([v5 offsetIntoSegment] != a2)
  {
    if ([v5 offsetIntoSegment] < segment + a2)
    {
      segment = [v5 offsetIntoSegment] - a2;
    }

LABEL_20:
    if (v12)
    {
      v15 = [selfCopy[1] objectAtIndexedSubscript:v12 - 1];
      offsetIntoSegment = [v15 offsetIntoSegment];
      if ([v15 length] + offsetIntoSegment > a2)
      {
        offsetIntoSegment2 = [v15 offsetIntoSegment];
        if (v15)
        {
          v15[2] = a2 - offsetIntoSegment2;
        }
      }
    }

    v5 = [SASymbol symbolWithOffsetIntoSegment:a2 length:segment name:length];
    [selfCopy[1] insertObject:v5 atIndex:v12];
    goto LABEL_26;
  }

  if (segment && (![v5 length] || objc_msgSend(v5, "length") > segment) && v5)
  {
    v5[2] = segment;
  }

  name = [v5 name];

  if (length && !name && v5)
  {
    objc_setProperty_atomic_copy(v5, v14, length, 24);
  }

LABEL_26:
  objc_sync_exit(selfCopy);

LABEL_27:

  return v5;
}

uint64_t __95__SASegment_addInlineSymbolWithOffsetIntoSegment_length_name_nonInlineSymbolOffsetIntoSegment___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 offsetIntoSegment];
  v5 = *(a1 + 32);
  if (v5 > v4)
  {
    return 1;
  }

  if (v5 < v4)
  {
    return -1;
  }

  v7 = [a2 length];
  v8 = *(a1 + 40);
  v9 = v8 > v7;
  v10 = v8 < v7;
  if (v9)
  {
    return -1;
  }

  else
  {
    return v10;
  }
}

uint64_t __65__SASegment_addNonInlineSymbolWithOffsetIntoSegment_length_name___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 offsetIntoSegment];
  v4 = *(a1 + 32);
  v5 = v4 > v3;
  if (v4 >= v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (void)enumerateAllSymbols:(id)symbols
{
  v41 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = selfCopy;
  obj = selfCopy->_symbols;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v25 = *v36;
    do
    {
      v7 = 0;
      v26 = v6;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v35 + 1) + 8 * v7);
        (*(symbols + 2))(symbols, v8, 0);
        v28 = v7;
        inlineSymbols = v27->_inlineSymbols;
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "offsetIntoSegment")}];
        v29 = [(NSMutableDictionary *)inlineSymbols objectForKeyedSubscript:v10];

        v11 = v29;
        if (v29 && [v29 count])
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v30 = v29;
          v13 = [v30 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v13)
          {
            v14 = *v32;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(v30);
                }

                v16 = *(*(&v31 + 1) + 8 * i);
                offsetIntoSegment = [v16 offsetIntoSegment];
                v18 = [v16 length];
                while ([v12 count])
                {
                  lastObject = [v12 lastObject];
                  v20 = [lastObject unsignedLongLongValue] > offsetIntoSegment;

                  if (v20)
                  {
                    break;
                  }

                  [v12 removeLastObject];
                }

                (*(symbols + 2))(symbols, v16, [v12 count] + 1);
                v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18 + offsetIntoSegment];
                [v12 addObject:v21];
              }

              v13 = [v30 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v13);
          }

          v11 = v29;
        }

        v7 = v28 + 1;
      }

      while (v28 + 1 != v26);
      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v27);
  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x1E69E9840];
}

unint64_t __34__SASegment_addInfoFromCSSegment___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  Range = CSSymbolGetRange();
  v8 = v7;
  Name = CSSymbolGetName();
  v10 = Range - *(a1 + 40);
  if (!Name)
  {
    if (a4 != -1)
    {
      goto LABEL_7;
    }

    v12 = 0;
LABEL_11:
    v13 = [(SASegment *)*(a1 + 32) addNonInlineSymbolWithOffsetIntoSegment:v10 length:v8 name:v12];
    if (!v13)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v11 = SANSStringForCString(Name);
  v12 = v11;
  if (a4 == -1)
  {
    goto LABEL_11;
  }

  if (v11)
  {
    v13 = [(SASegment *)*(a1 + 32) addInlineSymbolWithOffsetIntoSegment:v10 length:v8 name:v11 nonInlineSymbolOffsetIntoSegment:a4];
    if (!v13)
    {
LABEL_5:
      v14 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v22 = *(a1 + 40);
    v14 = v13;
    CSSymbolForeachSourceInfo();

    goto LABEL_13;
  }

LABEL_7:
  v15 = *__error();
  v16 = _sa_logt();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v19 = [(SASegment *)*(a1 + 32) nonInlineSymbolAtOffsetIntoSegment:a4];
    v20 = [v19 debugDescription];
    v21 = [*(a1 + 32) debugDescription];
    *buf = 138412546;
    v24 = v20;
    v25 = 2112;
    v26 = v21;
    _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "No symbol name for inline symbol (after non-inline symbol %@ in %@)", buf, 0x16u);
  }

  v12 = 0;
  v14 = 0;
  v10 = 0;
  *__error() = v15;
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

void __34__SASegment_addInfoFromCSSegment___block_invoke_43(void *a1)
{
  Path = CSSourceInfoGetPath();
  if (Path)
  {
    v3 = SANSStringForCString(Path);
    if (v3)
    {
      v13 = v3;
      LineNumber = CSSourceInfoGetLineNumber();
      Column = CSSourceInfoGetColumn();
      Range = CSSourceInfoGetRange();
      v8 = v7;
      v9 = a1[4];
      v10 = Range - a1[5];
      if (a1[7] == -1)
      {
        v12 = [(SASymbol *)v9 addNonInlineSourceInfoWithOffsetIntoSegment:v10 length:v8 lineNum:LineNumber columnNum:Column filePath:v13];
      }

      else
      {
        v11 = [(SASymbol *)v9 addInlineSourceInfoWithOffsetIntoSegment:v10 length:v8 lineNum:LineNumber columnNum:Column filePath:v13];
      }

      v3 = v13;
    }
  }
}

void __34__SASegment_addInfoFromCSSegment___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  CSSymbolForeachInlineRange();
}

uint64_t __34__SASegment_addInfoFromCSSegment___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v8 = result;
    v9 = *a4;
    v10 = a4[1];
    result = (*(*(result + 32) + 16))();
    v11 = a6 - 1;
    if (v11)
    {
      v12 = a4 + 3;
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        result = CSSymbolIsUnnamed();
        if ((result & 1) == 0)
        {
          v15 = *(v12 - 1);
          v16 = *v12;
          result = (*(*(v8 + 32) + 16))();
        }

        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

- (void)symbolicateOffsetIntoSegment:(uint64_t)segment symbolOwner:(uint64_t)owner segmentBaseAddress:(uint64_t)address returningSymbols:(id *)symbols sourceInfos:(id *)infos
{
  if (self)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__2;
    v37 = __Block_byref_object_dispose__2;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__2;
    v25 = __Block_byref_object_dispose__2;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__2;
    v19 = __Block_byref_object_dispose__2;
    v20 = 0;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    CSSymbolOwnerForEachStackFrameAtAddress();
    _Block_object_dispose(v12, 8);
    _Block_object_dispose(v13, 8);
    objc_sync_exit(selfCopy);

    v9 = v28[5];
    if (!v9)
    {
      v9 = v34[5];
    }

    objc_storeStrong(symbols, v9);
    v10 = v16[5];
    if (!v10)
    {
      v10 = v22[5];
    }

    objc_storeStrong(infos, v10);
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v33, 8);
  }
}

void __102__SASegment_symbolicateOffsetIntoSegment_symbolOwner_segmentBaseAddress_returningSymbols_sourceInfos___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if (CSIsNull() & 1) != 0 || *(*(*(a1 + 40) + 8) + 24) && (CSSymbolIsUnnamed())
  {
LABEL_53:
    ++*(*(*(a1 + 40) + 8) + 24);
    goto LABEL_54;
  }

  Name = CSSymbolGetName();
  Range = CSSymbolGetRange();
  v5 = v4;
  v6 = Range - *(a1 + 88);
  if (Name)
  {
    v7 = SANSStringForCString(Name);
    v8 = v7;
    if (*(*(*(a1 + 40) + 8) + 24) > 0)
    {
      if (v7)
      {
        v9 = [(SASegment *)*(a1 + 32) addInlineSymbolWithOffsetIntoSegment:v6 length:v5 name:v7 nonInlineSymbolOffsetIntoSegment:*(*(*(a1 + 48) + 8) + 24)];
        if (!v9)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

LABEL_10:
      v10 = *__error();
      v11 = _sa_logt();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v46 = [(SASegment *)*(a1 + 32) nonInlineSymbolAtOffsetIntoSegment:?];
        v47 = [v46 debugDescription];
        v48 = [*(a1 + 32) debugDescription];
        *buf = 138412546;
        v53 = v47;
        v54 = 2112;
        v55 = v48;
        _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "No symbol name for inline symbol (after non-inline symbol %@ in %@)", buf, 0x16u);
      }

      v8 = 0;
      *__error() = v10;
      goto LABEL_20;
    }
  }

  else
  {
    if (*(*(*(a1 + 40) + 8) + 24) > 0)
    {
      goto LABEL_10;
    }

    v8 = 0;
  }

  v9 = [(SASegment *)*(a1 + 32) addNonInlineSymbolWithOffsetIntoSegment:v6 length:v5 name:v8];
  *(*(*(a1 + 48) + 8) + 24) = v6;
  if (v9)
  {
LABEL_15:
    if ((CSIsNull() & 1) != 0 || (Path = CSSourceInfoGetPath()) == 0)
    {
      v21 = 0;
    }

    else
    {
      v13 = Path;
      LineNumber = CSSourceInfoGetLineNumber();
      Column = CSSourceInfoGetColumn();
      v16 = SANSStringForCString(v13);
      v17 = CSSourceInfoGetRange();
      if (v16)
      {
        v19 = v18;
        v20 = v17 - *(a1 + 88);
        if (*(*(*(a1 + 40) + 8) + 24) < 1)
        {
          [(SASymbol *)v9 addNonInlineSourceInfoWithOffsetIntoSegment:v20 length:v19 lineNum:LineNumber columnNum:Column filePath:v16];
        }

        else
        {
          [(SASymbol *)v9 addInlineSourceInfoWithOffsetIntoSegment:v20 length:v19 lineNum:LineNumber columnNum:Column filePath:v16];
        }
        v21 = ;
      }

      else
      {
        v21 = 0;
      }
    }

    v22 = *(*(a1 + 56) + 8);
    v25 = *(v22 + 40);
    v23 = (v22 + 40);
    v24 = v25;
    if (!v25)
    {
      objc_storeStrong(v23, v9);
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
      goto LABEL_52;
    }

    v26 = *(*(*(a1 + 72) + 8) + 40);
    if (v26)
    {
      if (![v26 count])
      {
LABEL_34:
        [*(*(*(a1 + 72) + 8) + 40) addObject:v9];
        v31 = *(*(a1 + 80) + 8);
        v32 = *(v31 + 40);
        if (v21)
        {
          [*(v31 + 40) addObject:v21];
        }

        else
        {
          v43 = [MEMORY[0x1E695DFB0] null];
          [v32 addObject:v43];

          v21 = 0;
        }

        goto LABEL_52;
      }

      v27 = 0;
      while (1)
      {
        v28 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:v27];
        v29 = v28;
        if (v9 == v28)
        {
          v30 = [*(*(*(a1 + 80) + 8) + 40) objectAtIndexedSubscript:v27];

          if (v21 == v30)
          {
            v44 = *__error();
            v45 = _sa_logt();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
LABEL_55:
              v50 = [v9 debugDescription];
              v51 = [v21 debugDescription];
              *buf = 138412546;
              v53 = v50;
              v54 = 2112;
              v55 = v51;
              _os_log_error_impl(&dword_1E0E2F000, v45, OS_LOG_TYPE_ERROR, "Same symbol/source info showed up twice in inlining: %@ %@", buf, 0x16u);
            }

LABEL_51:

            *__error() = v44;
            goto LABEL_52;
          }
        }

        else
        {
        }

        if (++v27 >= [*(*(*(a1 + 72) + 8) + 40) count])
        {
          goto LABEL_34;
        }
      }
    }

    if (v9 == v24 && v21 == *(*(*(a1 + 64) + 8) + 40))
    {
      v44 = *__error();
      v45 = _sa_logt();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      goto LABEL_51;
    }

    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(*(*(a1 + 56) + 8) + 40), v9, 0}];
    v34 = *(*(a1 + 72) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;

    v36 = objc_alloc(MEMORY[0x1E695DF70]);
    v37 = *(*(*(a1 + 64) + 8) + 40);
    v38 = v37;
    if (!v37)
    {
      v38 = [MEMORY[0x1E695DFB0] null];
    }

    v39 = v21;
    if (!v21)
    {
      v39 = [MEMORY[0x1E695DFB0] null];
    }

    v40 = [v36 initWithObjects:{v38, v39, 0}];
    v41 = *(*(a1 + 80) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    if (!v21)
    {
    }

    if (!v37)
    {
    }

LABEL_52:

    goto LABEL_53;
  }

LABEL_20:

LABEL_54:
  v49 = *MEMORY[0x1E69E9840];
}

- (uint64_t)baseAddressInSymbolOwnerWrapper:(void *)wrapper
{
  v38 = *MEMORY[0x1E69E9840];
  wrapperCopy = wrapper;
  objc_sync_enter(wrapperCopy);
  [(SACSSymbolOwnerWrapper *)a2 symbolOwner];
  if ((*(a2 + 8) & 1) != 0 && [wrapperCopy hasOffsetIntoBinary])
  {
    CSSymbolOwnerGetBaseAddress();
    [wrapperCopy offsetIntoBinary];
    CSSymbolOwnerGetSegmentWithAddress();
    if (CSIsNull())
    {
      CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
      v5 = *__error();
      v6 = _sa_logt();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v22 = [wrapperCopy debugDescription];
        if (CFUUIDBytes)
        {
          add_explicit = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
          v25 = add_explicit & 3;
          v26 = -add_explicit;
          v18 = v26 < 0;
          v27 = v26 & 3;
          if (v18)
          {
            v28 = v25;
          }

          else
          {
            v28 = -v27;
          }

          v23 = &uuid_string_string + 37 * v28;
          uuid_unparse(CFUUIDBytes, v23);
        }

        else
        {
          v23 = "no uuid";
        }

        *v36 = 138412546;
        *&v36[4] = v22;
        *&v36[12] = 2080;
        *&v36[14] = v23;
        _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "%@: segment not found in %s", v36, 0x16u);
      }

      *__error() = v5;
      Range = -1;
    }

    else
    {
      Range = CSRegionGetRange();
    }
  }

  else
  {
    *v36 = 0;
    *&v36[8] = v36;
    *&v36[16] = 0x2020000000;
    v37 = -1;
    v29 = MEMORY[0x1E69E9820];
    SASymbolOwnerForeachSegment();
    Range = *(*&v36[8] + 24);
    if (Range == -1)
    {
      v8 = CSSymbolOwnerGetCFUUIDBytes();
      v9 = *__error();
      v10 = _sa_logt();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [wrapperCopy debugDescription];
        v14 = wrapperCopy[4];
        if (v8)
        {
          v16 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
          v17 = v16 & 3;
          v19 = -v16;
          v18 = v19 < 0;
          v20 = v19 & 3;
          if (v18)
          {
            v21 = v17;
          }

          else
          {
            v21 = -v20;
          }

          v15 = &uuid_string_string + 37 * v21;
          uuid_unparse(v8, v15);
        }

        else
        {
          v15 = "no uuid";
        }

        *buf = 138412802;
        v31 = v13;
        v32 = 2112;
        v33 = v14;
        v34 = 2080;
        v35 = v15;
        _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "%@: segment %@ not found in %s", buf, 0x20u);
      }

      *__error() = v9;
      Range = *(*&v36[8] + 24);
    }

    _Block_object_dispose(v36, 8);
  }

  objc_sync_exit(wrapperCopy);

  v11 = *MEMORY[0x1E69E9840];
  return Range;
}

void __45__SASegment_baseAddressInSymbolOwnerWrapper___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == -1)
  {
    Name = CSRegionGetName();
    if (Name)
    {
      v3 = SANSStringForCString(Name);
      v4 = CopyCleanSegmentName(v3);

      if ([v4 isEqualToString:*(*(a1 + 32) + 32)])
      {
        *(*(*(a1 + 40) + 8) + 24) = CSRegionGetRange();
      }
    }
  }
}

- (void)symbolicateWithSymbolOwnerWrapper:(void *)wrapper
{
  v31 = *MEMORY[0x1E69E9840];
  if (wrapper)
  {
    v4 = objc_autoreleasePoolPush();
    wrapperCopy = wrapper;
    objc_sync_enter(wrapperCopy);
    if (![wrapperCopy[7] count] || (v6 = -[SASegment baseAddressInSymbolOwnerWrapper:](wrapperCopy, a2), v6 == -1))
    {
      objc_sync_exit(wrapperCopy);
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(wrapperCopy[7], "count")}];
      symbolOwner = [(SACSSymbolOwnerWrapper *)a2 symbolOwner];
      v9 = wrapperCopy[7];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __47__SASegment_symbolicateWithSymbolOwnerWrapper___block_invoke;
      v25[3] = &unk_1E86F6818;
      v25[4] = wrapperCopy;
      v27 = symbolOwner;
      v28 = v10;
      v29 = v6;
      v11 = v7;
      v26 = v11;
      [v9 enumerateKeysAndObjectsUsingBlock:v25];

      objc_sync_exit(wrapperCopy);
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v30 count:16];
      if (v13)
      {
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            v17 = [v16 objectAtIndexedSubscript:{0, v21}];
            v18 = [v16 objectAtIndexedSubscript:1];
            if ([v16 count] < 3)
            {
              v19 = 0;
            }

            else
            {
              v19 = [v16 objectAtIndexedSubscript:2];
            }

            [(SAInstruction *)v17 setSymbol:v18 sourceinfo:v19];
          }

          v13 = [v12 countByEnumeratingWithState:&v21 objects:v30 count:16];
        }

        while (v13);
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __47__SASegment_symbolicateWithSymbolOwnerWrapper___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3 || !*(a3 + 16))
  {
    v10 = 0;
    v11 = 0;
    -[SASegment symbolicateOffsetIntoSegment:symbolOwner:segmentBaseAddress:returningSymbols:sourceInfos:](*(a1 + 32), [a2 unsignedLongLongValue], *(a1 + 48), *(a1 + 56), *(a1 + 64), &v11, &v10);
    v5 = v11;
    if (v11)
    {
      v6 = *(a1 + 40);
      v7 = objc_alloc(MEMORY[0x1E695DEC8]);
      v8 = v10;
      v9 = [v7 initWithObjects:{a3, v5, v10, 0}];
      [v6 addObject:v9];
    }

    else
    {
      v8 = v10;
    }
  }
}

uint64_t __48__SASegment_nonInlineSymbolAtOffsetIntoSegment___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4 < [a2 offsetIntoSegment])
  {
    return -1;
  }

  v6 = *(a1 + 32);
  return v6 > [a2 offsetIntoSegment];
}

- (id)instructionAtOffsetIntoSegment:(unint64_t)segment
{
  if (self->_length - 1 < segment)
  {
    v3 = 0;
    goto LABEL_9;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  instructions = selfCopy->_instructions;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:segment];
  v3 = [(NSMutableDictionary *)instructions objectForKeyedSubscript:v7];

  if (v3)
  {
    objc_sync_exit(selfCopy);
LABEL_5:

    goto LABEL_9;
  }

  if (!selfCopy->_instructions)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
    v9 = selfCopy->_instructions;
    selfCopy->_instructions = v8;
  }

  v3 = objc_alloc_init(objc_opt_self());
  binary = [(SASegment *)selfCopy binary];
  objc_storeWeak(v3 + 3, binary);

  objc_storeWeak(v3 + 4, selfCopy);
  v3[5] = segment;
  v11 = selfCopy->_instructions;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:segment];
  [(NSMutableDictionary *)v11 setObject:v3 forKeyedSubscript:v12];

  objc_sync_exit(selfCopy);
  [(SAInstruction *)v3 checkForNewSymbol];
  if (!v3[2])
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_binary);
    selfCopy = WeakRetained;
    if (WeakRetained)
    {
      BYTE1(WeakRetained[1].super.isa) = 1;
    }

    goto LABEL_5;
  }

LABEL_9:

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  WeakRetained = objc_loadWeakRetained(&self->_binary);
  name = [WeakRetained name];
  v6 = objc_loadWeakRetained(&self->_binary);
  uuid = [v6 uuid];
  uUIDString = [uuid UUIDString];
  v9 = [v3 initWithFormat:@"%@ <%@> %@ (offset 0x%llx length 0x%llx, %lu symbols)", name, uUIDString, self->_name, self->_offsetIntoBinary, self->_length, -[NSMutableArray count](self->_symbols, "count")];

  return v9;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  name = self->_name;
  if (name)
  {
    SAJSONWriteDictionaryFirstEntry(stream, @"name", name);
  }

  if (self->_length)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryEntry(stream, @"length", v6);
  }

  if ([(SASegment *)self hasOffsetIntoBinary])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_offsetIntoBinary];
    SAJSONWriteDictionaryEntry(stream, @"offsetIntoBinary", v7);
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(SASegment *)self sizeInBytesForSerializedVersion]> length)
  {
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(SASegment *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v18 UTF8String];
      v40 = 2048;
      lengthCopy = length;
      v42 = 2048;
      sizeInBytesForSerializedVersion = [(SASegment *)self sizeInBytesForSerializedVersion];
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "%s: size %lu > buffer length %lu", buf, 0x20u);
    }

    *__error() = v16;
    v19 = [(SASegment *)self debugDescription];
    uTF8String2 = [v19 UTF8String];
    [(SASegment *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(4992, "%s: size %lu > buffer length %lu", v21, v22, v23, v24, v25, v26, uTF8String2);

    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_binary);
  if (!WeakRetained)
  {
    goto LABEL_11;
  }

  v10 = WeakRetained;
  *&buffer->var0 = 513;
  *&buffer->var3[64] = self->_offsetIntoBinary;
  *(&buffer->var4 + 2) = self->_length;
  *(&buffer->var6 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_name, dictionary);
  v11 = objc_loadWeakRetained(&self->_binary);
  *(&buffer->var5 + 2) = SASerializableIndexForPointerFromSerializationDictionary(v11, dictionary);

  v12 = [(NSString *)self->_name dataUsingEncoding:4 allowLossyConversion:1];
  if ([v12 length] >= 0x40)
  {
LABEL_8:
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      uTF8String3 = [(NSString *)self->_name UTF8String];
      *buf = 136315394;
      uTF8String = uTF8String3;
      v40 = 2048;
      lengthCopy = 63;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "Segment %s longer than %lu characters", buf, 0x16u);
    }

    *__error() = v27;
    uTF8String4 = [(NSString *)self->_name UTF8String];
    _SASetCrashLogMessage(5011, "Segment %s longer than %lu characters", v31, v32, v33, v34, v35, v36, uTF8String4);
    _os_crash();
    __break(1u);
LABEL_11:
    v37 = [SAException exceptionWithName:@"Encoding failure" reason:@"Segment with no binary" userInfo:0];
    objc_exception_throw(v37);
  }

  memmove(buffer->var3, [v12 bytes], objc_msgSend(v12, "length"));
  buffer->var3[[v12 length]] = 0;
  uuid = [v10 uuid];
  [uuid getUUIDBytes:buffer->var2];

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_binary);
    [WeakRetained addSelfToSerializationDictionary:dictionary];

    name = self->_name;

    [(NSString *)name addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v79 = *MEMORY[0x1E69E9840];
  if (*buffer >= 3u)
  {
    goto LABEL_29;
  }

  lengthCopy = length;
  if (length <= 0x61)
  {
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v78 = lengthCopy;
      *&v78[8] = 2048;
      *&v78[10] = 98;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASegment struct %lu", buf, 0x16u);
    }

    *__error() = v27;
    _SASetCrashLogMessage(5034, "bufferLength %lu < serialized SASegment struct %lu", v29, v30, v31, v32, v33, v34, lengthCopy);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  bufferCopy = buffer;
  if (*(buffer + 1) < 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x71)
  {
LABEL_20:
    v47 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v78 = lengthCopy;
      *&v78[8] = 2048;
      *&v78[10] = 114;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASegment v2 struct %lu", buf, 0x16u);
    }

    *__error() = v47;
    _SASetCrashLogMessage(5041, "bufferLength %lu < serialized SASegment v2 struct %lu", v48, v49, v50, v51, v52, v53, lengthCopy);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  v10 = *(buffer + 98);
  v11 = objc_opt_class();
  lengthCopy = SASerializablePartiallyDecodedNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11);
  v12 = *(bufferCopy + 106);
  v13 = objc_opt_class();
  v14 = SASerializablePartiallyDecodedNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, dictionary, bufferDictionary, v13);
  if (!lengthCopy)
  {
    v15 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v78 = [v14 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "No binary for segment %s", buf, 0xCu);
    }

    *__error() = v15;
    uTF8String = [v14 UTF8String];
    _SASetCrashLogMessage(5053, "No binary for segment %s", v17, v18, v19, v20, v21, v22, uTF8String);
    _os_crash();
    __break(1u);
LABEL_9:
    lengthCopy = gSASerializationEncodedVersionBeingDecoded();
    if (*lengthCopy >= 31)
    {
LABEL_23:
      v54 = *__error();
      v55 = _sa_logt();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = *(bufferCopy + 1);
        v57 = *lengthCopy;
        *buf = 67109376;
        *v78 = v56;
        *&v78[4] = 2048;
        *&v78[6] = v57;
        _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "segment version %d, but encoded version %ld", buf, 0x12u);
      }

      *__error() = v54;
      v75 = *lengthCopy;
      _SASetCrashLogMessage(5046, "segment version %d, but encoded version %ld", v58, v59, v60, v61, v62, v63, *(bufferCopy + 1));
      _os_crash();
      __break(1u);
      goto LABEL_26;
    }

    v23 = *gBinaryBeingDecoded();
    if (!v23)
    {
LABEL_26:
      v64 = *__error();
      v65 = _sa_logt();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = *(bufferCopy + 1);
        v67 = *lengthCopy;
        *buf = 67109376;
        *v78 = v66;
        *&v78[4] = 2048;
        *&v78[6] = v67;
        _os_log_error_impl(&dword_1E0E2F000, v65, OS_LOG_TYPE_ERROR, "Segment version %d, encoded version %ld, no gBinaryBeingDecoded", buf, 0x12u);
      }

      *__error() = v64;
      v76 = *lengthCopy;
      _SASetCrashLogMessage(5047, "Segment version %d, encoded version %ld, no gBinaryBeingDecoded", v68, v69, v70, v71, v72, v73, *(bufferCopy + 1));
      _os_crash();
      __break(1u);
LABEL_29:
      v74 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SASegment version" userInfo:0];
      objc_exception_throw(v74);
    }

    lengthCopy = v23;
    v14 = SANSStringForCString(bufferCopy + 18);
  }

  if (!v14)
  {
LABEL_17:
    v35 = *__error();
    v36 = _sa_logt();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [lengthCopy debugDescription];
      uTF8String2 = [v37 UTF8String];
      *buf = 136315138;
      *v78 = uTF8String2;
      _os_log_error_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_ERROR, "No name for segment in %s", buf, 0xCu);
    }

    *__error() = v35;
    v39 = [lengthCopy debugDescription];
    uTF8String3 = [v39 UTF8String];
    _SASetCrashLogMessage(5054, "No name for segment in %s", v41, v42, v43, v44, v45, v46, uTF8String3);

    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v24 = [(SABinary *)lengthCopy segmentWithCleanName:v14 length:*(bufferCopy + 90) offsetIntoBinary:*(bufferCopy + 82)];

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(buffer + 1) >= 2u)
  {
    if (length <= 0x71)
    {
      v17 = *__error();
      v18 = _sa_logt();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        lengthCopy = length;
        v27 = 2048;
        v28 = 114;
        _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASegment v2 struct %lu", buf, 0x16u);
      }

      *__error() = v17;
      _SASetCrashLogMessage(5063, "bufferLength %lu < serialized SASegment v2 struct %lu", v19, v20, v21, v22, v23, v24, length);
      _os_crash();
      __break(1u);
    }

    v10 = *(buffer + 98);
    v11 = objc_opt_class();
    v12 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11);
    v13 = *(buffer + 106);
    v14 = objc_opt_class();
    v15 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v13, dictionary, bufferDictionary, v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end