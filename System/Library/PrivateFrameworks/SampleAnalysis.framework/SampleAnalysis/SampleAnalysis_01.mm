void sub_1E0EBA004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 192), 8);
  _Unwind_Resume(a1);
}

void __SAResampleThreads_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sampleThread:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = (*(*(a1 + 48) + 8) + 24);
  __swp(v5, v5);
  if (v5)
  {
    v6 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_INFO, "Sampler completed after timeout", v9, 2u);
    }

    *__error() = v6;
    v8 = MEMORY[0x1E69E9A60];
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 56));
    mach_port_deallocate(*v8, *(a1 + 60));
  }
}

void *SAIsEmbeddedPlatform(void *result)
{
  if (result)
  {
    v1 = result;
    if ([result containsString:@"macOS"] & 1) != 0 || (objc_msgSend(v1, "containsString:", @"Mac"))
    {
      return 0;
    }

    else
    {
      return ([v1 containsString:@"OS X"] ^ 1);
    }
  }

  return result;
}

double __SATimeOfBootForLiveMachine_block_invoke()
{
  v0 = time(0);
  v1 = mach_continuous_time();
  result = v0 - ceil(SASecondsFromMachTimeUsingLiveTimebase(v1)) - *MEMORY[0x1E695E468];
  qword_1EDD03298 = *&result;
  return result;
}

uint64_t SAMicrostackshotStateForFlagsTaskAndThreadState(int a1, void *a2, void *a3)
{
  if ((a1 & 0x40) != 0)
  {
    v5 = 16;
  }

  else
  {
    v5 = 20;
  }

  if ((a1 & 0x80u) != 0)
  {
    v5 |= 8u;
  }

  if ((a1 & 0x20) == 0)
  {
    v5 = 0;
  }

  v6 = v5 | ~(8 * a1) & 0x80;
  if ([a2 isSuppressed])
  {
    v6 |= 0x20u;
  }

  if ([a2 isForeground])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [a3 threadQos];
  v9 = v7 | 0x600;
  v10 = v7 | 0x700;
  if (v8 != 6)
  {
    v10 = v7;
  }

  if (v8 != 5)
  {
    v9 = v10;
  }

  v11 = v7 | 0x300;
  v12 = v7 | 0x400;
  if (v8 != 4)
  {
    v12 = v7;
  }

  if (v8 != 3)
  {
    v11 = v12;
  }

  if (v8 <= 4)
  {
    v9 = v11;
  }

  v13 = v7 | 0x500;
  v14 = v7 | 0x100;
  v15 = v7 | 0x200;
  if (v8 != 2)
  {
    v15 = v7;
  }

  if (v8 != 1)
  {
    v14 = v15;
  }

  if (v8)
  {
    v13 = v14;
  }

  if (v8 <= 2)
  {
    v16 = v13;
  }

  else
  {
    v16 = v9;
  }

  v17 = [a3 threadRequestedQos];
  v18 = v16 | 0x3000;
  v19 = v16 | 0x3800;
  if (v17 != 6)
  {
    v19 = v16;
  }

  if (v17 != 5)
  {
    v18 = v19;
  }

  v20 = v16 | 0x1800;
  v21 = v16 | 0x2000;
  if (v17 != 4)
  {
    v21 = v16;
  }

  if (v17 != 3)
  {
    v20 = v21;
  }

  if (v17 <= 4)
  {
    v18 = v20;
  }

  v22 = v16 | 0x2800;
  v23 = v16 | 0x800;
  v24 = v16 | 0x1000;
  if (v17 != 2)
  {
    v24 = v16;
  }

  if (v17 != 1)
  {
    v23 = v24;
  }

  if (v17)
  {
    v22 = v23;
  }

  if (v17 <= 2)
  {
    v25 = v22;
  }

  else
  {
    v25 = v18;
  }

  v26 = [a3 threadRequestedQosOverride];
  v27 = v25 | 0x18000;
  v28 = v25 | 0x1C000;
  if (v26 != 6)
  {
    v28 = v25;
  }

  if (v26 != 5)
  {
    v27 = v28;
  }

  v29 = v25 | 0xC000;
  v30 = v25 | 0x10000;
  if (v26 != 4)
  {
    v30 = v25;
  }

  if (v26 != 3)
  {
    v29 = v30;
  }

  if (v26 <= 4)
  {
    v27 = v29;
  }

  v31 = v25 | 0x14000;
  v32 = v25 | 0x4000;
  v33 = v25 | 0x8000;
  if (v26 != 2)
  {
    v33 = v25;
  }

  if (v26 != 1)
  {
    v32 = v33;
  }

  if (v26)
  {
    v31 = v32;
  }

  if (v26 <= 2)
  {
    return v31;
  }

  else
  {
    return v27;
  }
}

void SAComplainAboutUnknownThreadPolicyVersion(int a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SAComplainAboutUnknownThreadPolicyVersion_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v2 = a1;
  if (SAComplainAboutUnknownThreadPolicyVersion_onceToken != -1)
  {
    dispatch_once(&SAComplainAboutUnknownThreadPolicyVersion_onceToken, block);
  }
}

int *__SAComplainAboutUnknownThreadPolicyVersion_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _sa_logt();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v6 = *(a1 + 32);
    v7[0] = 67109120;
    v7[1] = v6;
    _os_log_fault_impl(&dword_1E0E2F000, v3, OS_LOG_TYPE_FAULT, "Unknown thread policy version %d! Thread QoS ipc overrides and promotions will be missing", v7, 8u);
  }

  result = __error();
  *result = v2;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SASerializableIndexForPointerFromSerializationDictionary(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v11 = @"nil serialization dictionary";
    goto LABEL_10;
  }

  if (a1)
  {
    v4 = [objc_opt_class() classDictionaryKey];
    v5 = [a2 objectForKey:v4];

    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:a1];
      v7 = [v5 objectForKey:v6];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 longLongValue];

        return v9;
      }

      v11 = @"Could not find index for pointer";
    }

    else
    {
      v11 = @"Invalid pointer-to-index dictionary";
    }

LABEL_10:
    v12 = [SAException exceptionWithName:@"Encoding failure" reason:v11 userInfo:0];
    objc_exception_throw(v12);
  }

  return -1;
}

NSObject *_pointerInBufferForIndexWithClass(void *a1, unint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    v20 = *__error();
    v3 = _sa_logt();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v3, OS_LOG_TYPE_ERROR, "null index", buf, 2u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(110, "null index", v21, v22, v23, v24, v25, v26, v35);
    _os_crash();
    __break(1u);
LABEL_13:
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v39 = v3;
      v40 = 2048;
      v41 = v2;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "index %llu < numInstances %llu", buf, 0x16u);
    }

    *__error() = v27;
    _SASetCrashLogMessage(115, "index %llu < numInstances %llu", v29, v30, v31, v32, v33, v34, v3);
    _os_crash();
    __break(1u);
  }

  v3 = a2;
  v4 = a1;
  v5 = [a1 bytes];
  v2 = *v5;
  if (*v5 <= v3)
  {
    goto LABEL_13;
  }

  v6 = v5 + 1;
  v7 = v5[v3 + 1];
  v8 = (&v5[v2 + 1] + v7);
  if (v2 - 1 <= v3)
  {
LABEL_8:
    [v4 length];
    goto LABEL_9;
  }

  v4 = (v3 + 1);
  if (v6[v3 + 1] <= v7)
  {
    v9 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = v6[v4];
      v11 = v6[v3];
      *buf = 134218752;
      v39 = v3 + 1;
      v40 = 2048;
      v41 = v10;
      v42 = 2048;
      v43 = v3;
      v44 = 2048;
      v45 = v11;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "index %llu (%llu) <= index %llu (%llu)", buf, 0x2Au);
    }

    *__error() = v9;
    v37 = v6[v3];
    v36 = v6[v4];
    _SASetCrashLogMessage(124, "index %llu (%llu) <= index %llu (%llu)", v12, v13, v14, v15, v16, v17, v3 + 1);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL SASerializableAddInstanceToSerializationDictionaryWithClassKey(void *a1, void *a2, uint64_t a3)
{
  if (!a1 || !a2 || !a3)
  {
    v18 = @"Invalid arguments";
    goto LABEL_16;
  }

  v6 = [a1 objectForKey:a3];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v7 setObject:v8 forKey:@"AddedObjectList"];

    [a1 setObject:v7 forKey:a3];
    if (!v7)
    {
      v18 = @"Failed to add new pointer-to-index dictionary";
      goto LABEL_16;
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:a2];
  v10 = [v7 objectForKey:v9];

  if (v10)
  {
    goto LABEL_12;
  }

  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{objc_msgSend(v7, "count") - 1}];
  [v7 setObject:v11 forKey:v9];
  v12 = [v7 objectForKey:@"AddedObjectList"];
  if (!v12)
  {
    v18 = @"No ordering list";
LABEL_16:
    v19 = [SAException exceptionWithName:@"Encoding failure" reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  v13 = v12;
  v14 = objc_alloc_init(SAObjectListEntry);
  v16 = v14;
  if (v14)
  {
    objc_setProperty_atomic(v14, v15, a2, 8);
    v16->_size = [a2 sizeInBytesForSerializedVersion];
  }

  else
  {
    [a2 sizeInBytesForSerializedVersion];
  }

  [v13 addObject:v16];

LABEL_12:
  return v10 == 0;
}

id SASerializableNewDataBufferDictionaryFromSerializationDictionary(void *a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v46 = a1;
  obj = [a1 allKeys];
  v40 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v40)
  {
    v38 = *v49;
    do
    {
      v2 = 0;
      do
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v48 + 1) + 8 * v2);
        v4 = objc_autoreleasePoolPush();
        v5 = [v46 objectForKey:v3];
        if (!v5)
        {
          v35 = @"Invalid pointer-to-index dictionary";
          goto LABEL_41;
        }

        v6 = v5;
        v7 = [v5 objectForKey:@"AddedObjectList"];
        if (!v7)
        {
          v35 = @"Could not get order added list";
          goto LABEL_41;
        }

        v8 = v7;
        if (![v7 count])
        {
          v35 = @"No elements in order added list";
          goto LABEL_41;
        }

        v9 = [v8 count] + 1;
        if (v9 != [v6 count])
        {
          v35 = @"Mismatched order added list length and pointer-to-index dictionary entry count";
          goto LABEL_41;
        }

        context = v4;
        v43 = v2;
        v10 = 8 * [v8 count] + 8;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v11 = v8;
        v12 = [v11 countByEnumeratingWithState:&v56 objects:v62 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v57;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v57 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v56 + 1) + 8 * i);
              if (v16)
              {
                v16 = *(v16 + 16);
              }

              v10 += v16;
            }

            v13 = [v11 countByEnumeratingWithState:&v56 objects:v62 count:16];
          }

          while (v13);
        }

        v44 = v6;
        v41 = v3;

        v47 = malloc_type_calloc(1uLL, v10, 0x54E9AAB1uLL);
        *v47 = [v11 count];
        v17 = [v11 count];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v45 = v11;
        v18 = [v45 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = 0;
          v22 = &v47[v17 + 1];
          v23 = *v53;
          do
          {
            v24 = 0;
            do
            {
              if (*v53 != v23)
              {
                objc_enumerationMutation(v45);
              }

              v25 = *(*(&v52 + 1) + 8 * v24);
              v26 = objc_autoreleasePoolPush();
              if (v22 >= v47 + v10)
              {
                free(v47);
                v35 = @"Overran the end of the buffer";
                goto LABEL_41;
              }

              v28 = v26;
              v47[v21 + 1] = v20;
              if (v25)
              {
                if (![objc_getProperty(v25 v27])
                {
                  goto LABEL_40;
                }

                v29 = v25[2];
                v22 += v29;
              }

              else
              {
                v30 = [0 addSelfToBuffer:v22 bufferLength:0 withCompletedSerializationDictionary:v46];
                v29 = 0;
                if ((v30 & 1) == 0)
                {
LABEL_40:
                  free(v47);
                  v35 = @"Error when trying to serialize";
                  goto LABEL_41;
                }
              }

              v20 += v29;
              ++v21;
              objc_autoreleasePoolPop(v28);
              ++v24;
            }

            while (v19 != v24);
            v31 = [v45 countByEnumeratingWithState:&v52 objects:v61 count:16];
            v19 = v31;
          }

          while (v31);
        }

        v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v47 length:v10 freeWhenDone:1];
        if (!v32)
        {
          v35 = @"Ran into error trying to serialize class";
LABEL_41:
          v36 = [SAException exceptionWithName:@"Encoding failure" reason:v35 userInfo:0];
          objc_exception_throw(v36);
        }

        [v39 setObject:v32 forKey:v41];

        objc_autoreleasePoolPop(context);
        v2 = v43 + 1;
      }

      while (v43 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v40);
  }

  v33 = *MEMORY[0x1E69E9840];

  return v39;
}

id _indexToInstanceDictionaryFromDeserializationDictionary(void *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    v6 = [SAException exceptionWithName:@"Decoding failure" reason:@"Invalid arguments" userInfo:0];
    objc_exception_throw(v6);
  }

  v4 = [a1 objectForKey:a2];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [a1 setObject:v4 forKey:a2];
  }

  return v4;
}

NSObject *SASerializableBufferForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(unint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = [a4 classDictionaryKey];
  v9 = _indexToInstanceDictionaryFromDeserializationDictionary(a2, v8);

  if (!v9)
  {
    v14 = @"Could not get index-to-instance dictionary";
    goto LABEL_6;
  }

  v10 = [a4 classDictionaryKey];
  v11 = [a3 objectForKey:v10];

  if (!v11)
  {
    v14 = @"Could not get buffer for class";
LABEL_6:
    v15 = [SAException exceptionWithName:@"Decoding failure" reason:v14 userInfo:0];
    objc_exception_throw(v15);
  }

  v12 = _pointerInBufferForIndexWithClass(v11, a1);

  return v12;
}

id _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(unint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  if (a1 == -1)
  {
    v15 = 0;
    goto LABEL_31;
  }

  if (!a2 || !a3 || !a4)
  {
    v32 = @"Decoding failure";
    v33 = @"Invalid args";
    goto LABEL_40;
  }

  v10 = [a4 classDictionaryKey];
  v11 = _indexToInstanceDictionaryFromDeserializationDictionary(a2, v10);

  if (!v11)
  {
    v32 = @"Decoding failure";
    v33 = @"Could not get index-to-instance dictionary";
    goto LABEL_40;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:a1];
  v13 = [v11 objectForKey:v12];

  if (!v13 || (v13[8] & 1) == 0)
  {
    v16 = [a4 classDictionaryKey];
    v17 = [a3 objectForKey:v16];

    if (v17)
    {
      v19 = _pointerInBufferForIndexWithClass(v17, a1);
      v39 = v18;
      if (v13)
      {
LABEL_26:
        if ((v13[8] & 1) == 0 && (a5 & 1) == 0)
        {
          v29 = objc_autoreleasePoolPush();
          v13[8] = 1;
          [objc_getProperty(v13 v30];
          objc_autoreleasePoolPop(v29);
        }

        v15 = objc_getProperty(v13, v18, 16, 1);

        goto LABEL_30;
      }

      context = objc_autoreleasePoolPush();
      if (objc_opt_respondsToSelector())
      {
        v20 = [a4 newInstanceWithoutReferencesFromSerializedBuffer:v19 bufferLength:v39 andDeserializationDictionary:a2 andDataBufferDictionary:{a3, context}];
      }

      else
      {
        v20 = [a4 newInstanceWithoutReferencesFromSerializedBuffer:v19 bufferLength:{v39, context}];
      }

      obj = v20;
      v21 = [SASerializeableInstance alloc];
      if (v21)
      {
        v40.receiver = v21;
        v40.super_class = SASerializeableInstance;
        v22 = objc_msgSendSuper2(&v40, sel_init);
        v13 = v22;
        if (v22)
        {
          objc_storeStrong(v22 + 2, obj);
        }
      }

      else
      {
        v13 = 0;
      }

      v37 = v19;
      v23 = [a4 classDictionaryKey];
      if (v13 && (v24 = v23) != 0)
      {
        v25 = [a2 objectForKey:v23];
        if (!v25)
        {
          v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [a2 setObject:v25 forKey:v24];
        }

        v26 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:a1];
        v27 = [v25 objectForKey:v26];

        if (!v27)
        {
          [v25 setObject:v13 forKey:v26];

          objc_getProperty(v13, v28, 16, 1);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v13[8] = 1;
          }

          objc_autoreleasePoolPop(contexta);
          v19 = v37;
          goto LABEL_26;
        }

        v32 = @"Decoding failure";
        v33 = @"Failed to add new instance to the deserialization dictionary";
      }

      else
      {
        v32 = @"Encoding failure";
        v33 = @"Invalid arguments";
      }
    }

    else
    {
      v32 = @"Decoding failure";
      v33 = @"Could not get buffer for class";
    }

LABEL_40:
    v34 = [SAException exceptionWithName:v32 reason:v33 userInfo:0];
    objc_exception_throw(v34);
  }

  v15 = objc_getProperty(v13, v14, 16, 1);
LABEL_30:

LABEL_31:

  return v15;
}

id SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(unint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(a1, a2, a3, a4, 0);
  if (!v4)
  {
    v6 = [SAException exceptionWithName:@"Decoding failure" reason:@"Trying to deserialize nonnull index that is null" userInfo:0];
    objc_exception_throw(v6);
  }

  return v4;
}

id SASerializablePartiallyDecodedNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(unint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(a1, a2, a3, a4, 1);
  if (!v4)
  {
    v6 = [SAException exceptionWithName:@"Decoding failure" reason:@"Trying to partially deserialize nonnull index that is null" userInfo:0];
    objc_exception_throw(v6);
  }

  return v4;
}

void __SASerializationVerifyEverythingIsPopulated_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || (*(a3 + 8) & 1) == 0)
  {
    v5 = [SAException exceptionWithName:@"Decoding failure" reason:@"Never populated an object" userInfo:0, v3, v4];
    objc_exception_throw(v5);
  }
}

uint64_t SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(void *a1, unint64_t a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a1 && a3 && a4)
    {
      v6 = a2;
      v31 = 8 * a2;
      v7 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v8 = a3;
      v9 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = v9;
      v11 = 0;
      v12 = *v35;
      v33 = v6;
      while (1)
      {
        v13 = 0;
        if (v6 >= v11)
        {
          v14 = v6 - v11;
        }

        else
        {
          v14 = 0;
        }

        do
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v34 + 1) + 8 * v13);
          v16 = objc_autoreleasePoolPush();
          if (v14 == v13)
          {
            v21 = *__error();
            v22 = _sa_logt();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v39 = v11;
              v40 = 2048;
              v41 = v33;
              _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "i %llu >= numIndices %llu", buf, 0x16u);
            }

            *__error() = v21;
            _SASetCrashLogMessage(455, "i %llu >= numIndices %llu", v23, v24, v25, v26, v27, v28, v11);
            _os_crash();
            __break(1u);
LABEL_21:
            free(v7);
            v29 = @"Got bad index";
LABEL_22:
            v30 = [SAException exceptionWithName:@"Encoding failure" reason:v29 userInfo:0];
            objc_exception_throw(v30);
          }

          v17 = v16;
          v18 = SASerializableIndexForPointerFromSerializationDictionary(v15, a4);
          *(v7 + v11) = v18;
          if (v18 == -1)
          {
            goto LABEL_21;
          }

          ++v11;
          objc_autoreleasePoolPop(v17);
          ++v13;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
        v6 = v33;
        if (!v10)
        {
LABEL_16:

          memcpy(a1, v7, v31);
          free(v7);
          goto LABEL_17;
        }
      }
    }

    v29 = @"Invalid arguments";
    goto LABEL_22;
  }

LABEL_17:
  v19 = *MEMORY[0x1E69E9840];
  return 1;
}

id _newMutableCollectionFromIndexList(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1 || !a3 || !a4 || !a5)
  {
    v20 = [SAException exceptionWithName:@"Decoding failure" reason:@"Invalid args" userInfo:0];
    objc_exception_throw(v20);
  }

  v11 = [objc_msgSend(a6 "alloc")];
  if (a2)
  {
    v12 = 0;
    while (1)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(*(a1 + 8 * v12), a3, a4, a5, 0);
      if (!v14)
      {
        break;
      }

      v15 = v14;
      [v11 addObject:v14];

      objc_autoreleasePoolPop(v13);
      if (a2 == ++v12)
      {
        goto LABEL_13;
      }
    }

    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      v22 = v12;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "Could not deserialize item %llu", &v21, 0xCu);
    }

    *__error() = v16;
    objc_autoreleasePoolPop(v13);
  }

LABEL_13:
  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

id SASerializableNewMutableArrayFromIndexList(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = objc_opt_class();

  return _newMutableCollectionFromIndexList(a1, a2, a3, a4, a5, v10);
}

id SASerializableNewMutableSetFromIndexList(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = objc_opt_class();

  return _newMutableCollectionFromIndexList(a1, a2, a3, a4, a5, v10);
}

id SASerializableNewMutableDictionaryFromIndexList(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  if (!a6 || !a5 || !a4 || (v8 = a2) == 0 || !a1 || !a3)
  {
    v21 = @"Invalid args";
LABEL_18:
    v22 = [SAException exceptionWithName:@"Decoding failure" reason:v21 userInfo:0];
    objc_exception_throw(v22);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = (a1 + 16);
  do
  {
    v14 = objc_autoreleasePoolPush();
    if (*(v13 - 2) != 2557891634)
    {
      v21 = @"Bad SASerializedIndexKeyValuePair magic";
      goto LABEL_18;
    }

    v15 = v14;
    v16 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(*(v13 - 1), a3, a4, a5, 0);
    if (!v16)
    {
      v21 = @"Could not deserialize key";
      goto LABEL_18;
    }

    v17 = v16;
    v18 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(*v13, a3, a4, a6, 0);
    if (!v18)
    {
      v21 = @"Could not deserialize value";
      goto LABEL_18;
    }

    v19 = v18;
    [v12 setObject:v18 forKey:v17];

    objc_autoreleasePoolPop(v15);
    v13 += 3;
    --v8;
  }

  while (v8);

  return v12;
}

id SASerializableNewMutableDictionaryOfArraysFromIndexList(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  if (!a6 || !a5 || !a4 || !a2 || (v7 = a1) == 0 || !a3)
  {
    v19 = @"Invalid args";
    goto LABEL_19;
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = 0;
  do
  {
    v11 = objc_autoreleasePoolPush();
    if (*v7 != 4277001967)
    {
      v19 = @"Bad SASerializedIndexKeyArrayLengthPair magic";
      goto LABEL_19;
    }

    context = v11;
    v12 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v7[1], a3, a4, a5, 0);
    if (!v12)
    {
      v19 = @"Could not deserialize key for header";
      goto LABEL_19;
    }

    v13 = v12;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v7[2])
    {
      v15 = 0;
      while (1)
      {
        v16 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v7[v15 + 3], a3, a4, a6, 0);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        [v14 addObject:v16];

        if (++v15 >= v7[2])
        {
          goto LABEL_14;
        }
      }

      v19 = @"Could not deserialize value";
LABEL_19:
      v20 = [SAException exceptionWithName:@"Decoding failure" reason:v19 userInfo:0, v21];
      objc_exception_throw(v20);
    }

LABEL_14:
    [v21 setObject:v14 forKey:{v13, v21}];
    v7 += v7[2] + 3;

    objc_autoreleasePoolPop(context);
    ++v10;
  }

  while (v10 != a2);

  return v21;
}

id FilterArrayToCallTreeFrames(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) == 0 || ([v6 isTruncatedLeafCallstack])
        {

          v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count") - 1}];
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v9 = v1;
          v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v18;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v18 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v17 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && ([v14 isTruncatedLeafCallstack] & 1) == 0)
                {
                  [v8 addObject:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v11);
          }

          v7 = [v8 copy];
          goto LABEL_22;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = [v1 copy];
LABEL_22:
  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

double SASecondsFromMachTimeUsingTimebase(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (HIDWORD(a2) && a2)
  {
    if (a2 != HIDWORD(a2))
    {
      a1 = __udivti3();
    }

    v2 = a1;
  }

  return v2 / 1000000000.0;
}

void sub_1E0ED08F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v46 - 232), 8);
  _Block_object_dispose((v46 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t SAMachTimeFromSecondsUsingTimebase(unint64_t a1, double a2)
{
  result = 0;
  if (HIDWORD(a1) && a1)
  {
    result = (a2 * 1000000000.0);
    if (HIDWORD(a1) != a1)
    {
      return __udivti3();
    }
  }

  return result;
}

uint64_t SAMachTimeFromNanosecondsUsingTimebase(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (HIDWORD(a2) && a2)
  {
    if (HIDWORD(a2) == a2)
    {
      return a1;
    }

    else
    {
      return __udivti3();
    }
  }

  return v2;
}

uint64_t SANanosecondsFromMachTimeUsingTimebase(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (HIDWORD(a2) && a2)
  {
    if (a2 == HIDWORD(a2))
    {
      return a1;
    }

    else
    {
      return __udivti3();
    }
  }

  return v2;
}

uint64_t SANanosecondsFromMachTimeUsingLiveTimebase(uint64_t a1)
{
  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_9);
  }

  if (HIDWORD(qword_1EDD032B0))
  {
    v2 = qword_1EDD032B0 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  if (qword_1EDD032B0 != HIDWORD(qword_1EDD032B0))
  {
    return __udivti3();
  }

  return a1;
}

uint64_t SAMachTimeFromNanosecondsUsingLiveTimebase(uint64_t a1)
{
  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_9);
  }

  if (HIDWORD(qword_1EDD032B0))
  {
    v2 = qword_1EDD032B0 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  if (HIDWORD(qword_1EDD032B0) != qword_1EDD032B0)
  {
    return __udivti3();
  }

  return a1;
}

double SAMachAbsTimeSecondsGetCurrent()
{
  v0 = mach_absolute_time();

  return SASecondsFromMachTimeUsingLiveTimebase(v0);
}

double SAMachContTimeSecondsGetCurrent()
{
  v0 = mach_continuous_time();

  return SASecondsFromMachTimeUsingLiveTimebase(v0);
}

uint64_t CopyDyldSnapshotForPid(_BOOL8 a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (getpid() == a1)
  {
    v2 = mach_absolute_time();
    v3 = SASecondsFromMachTimeUsingLiveTimebase(v2);
    if (!dyld_process_create_for_current_task())
    {
      v7 = *__error();
      v8 = _sa_logt();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_FAULT, "Unable to get dyld process for current process", buf, 2u);
      }

      goto LABEL_17;
    }

    v19 = 0;
    v4 = dyld_process_snapshot_create_for_process();
    v21[3] = v4;
    if (v4)
    {
      v5 = mach_absolute_time();
      v6 = SASecondsFromMachTimeUsingLiveTimebase(v5);
      v25[3] = v6 - v3;
    }

    dyld_process_dispose();
    if (!v21[3])
    {
      v7 = *__error();
      v8 = _sa_logt();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v29 = v19;
        _os_log_fault_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_FAULT, "Unable to get dyld process snapshot for current process: %d", buf, 8u);
      }

LABEL_17:

      v13 = 0;
      *__error() = v7;
      goto LABEL_18;
    }
  }

  else
  {
    if (_AvoidSuspendingPid(a1))
    {
      goto LABEL_14;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CopyDyldSnapshotForPid_block_invoke;
    block[3] = &unk_1E86F72C0;
    v18 = a1;
    block[4] = &v20;
    block[5] = &v24;
    v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    v9[2]();
    v10 = v21[3] == 0;

    if (v10)
    {
LABEL_14:
      v13 = 0;
      goto LABEL_18;
    }
  }

  ++_MergedGlobals_8;
  *&qword_1EDD032C0 = v25[3] + *&qword_1EDD032C0;
  v11 = *__error();
  v12 = _sa_logt();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(v25 + 3);
    *buf = 67110144;
    v29 = a1;
    v30 = 2048;
    v31 = v16;
    v32 = 1024;
    v33 = _MergedGlobals_8;
    v34 = 2048;
    v35 = qword_1EDD032C0;
    v36 = 2048;
    v37 = *&qword_1EDD032C0 / _MergedGlobals_8;
    _os_log_debug_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_DEBUG, "[%d]: Inspected live process via dyld introspection in %fs (%d totaling %fs, %fs avg)", buf, 0x2Cu);
  }

  *__error() = v11;
  v13 = v21[3];
LABEL_18:
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1E0ED36E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

int *__CopyDyldSnapshotForPid_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E9A60];
  v3 = *MEMORY[0x1E69E9A60];
  v4 = *(a1 + 48);
  v5 = task_read_for_pid();
  if (v5)
  {
    v6 = v5;
    v7 = kill(*(a1 + 48), 0);
    v8 = *__error();
    v9 = _sa_logt();
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 48);
        *buf = 67109120;
        v25 = v11;
        _os_log_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_INFO, "Unable to inspect [%d] since it's no longer alive", buf, 8u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 48);
      *buf = 67109376;
      v25 = v21;
      v26 = 1024;
      v27 = v6;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "Unable to inspect [%d]: %d", buf, 0xEu);
    }

    result = __error();
    *result = v8;
  }

  else
  {
    v12 = mach_absolute_time();
    v13 = SASecondsFromMachTimeUsingLiveTimebase(v12);
    if (dyld_process_create_for_task())
    {
      *(*(*(a1 + 32) + 8) + 24) = dyld_process_snapshot_create_for_process();
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        v14 = mach_absolute_time();
        *(*(*(a1 + 40) + 8) + 24) = SASecondsFromMachTimeUsingLiveTimebase(v14) - v13;
      }

      dyld_process_dispose();
      result = mach_port_deallocate(*v2, 0);
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        v16 = *__error();
        v17 = _sa_logt();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 48);
          *buf = 67109376;
          v25 = v23;
          v26 = 1024;
          v27 = 0;
          _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "Unable to get dyld process snapshot for [%d]: %d", buf, 0xEu);
        }

        result = __error();
        *result = v16;
      }
    }

    else
    {
      v19 = *__error();
      v20 = _sa_logt();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 48);
        *buf = 67109376;
        v25 = v22;
        v26 = 1024;
        v27 = 0;
        _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "Unable to get dyld process for [%d]: %d", buf, 0xEu);
      }

      *__error() = v19;
      result = mach_port_deallocate(*v2, 0);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CopyLoadInfosForDyldSnapshot(uint64_t a1, int a2, int a3, __int16 a4, void *a5, void *a6, void *a7, void *a8)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  shared_cache = dyld_process_snapshot_get_shared_cache();
  v26 = a2;
  if (shared_cache)
  {
    v15 = shared_cache;
    dyld_shared_cache_get_base_address();
    dyld_shared_cache_get_mapped_size();
    if (a6 || a3)
    {
      v16 = [SASharedCache sharedCacheWithDyldSharedCache:v15 dataGatheringOptions:a4];
      if (a6)
      {
        v16 = v16;
        *a6 = v16;
      }
    }

    if (a5)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a2)
    {
      v17 = *__error();
      v18 = _sa_logt();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = a2;
        _os_log_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_INFO, "[%d] No shared cache", buf, 8u);
      }

      *__error() = v17;
    }

    if (a5)
    {
      goto LABEL_26;
    }
  }

  if (!a7 && (a3 & 1) == 0 && !a8)
  {
    v19 = 0;
    goto LABEL_38;
  }

LABEL_26:
  if (a5)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v20 = 0;
  }

  *buf = 0;
  v33 = buf;
  v34 = 0x2020000000;
  v35 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v21 = v20;
  dyld_process_snapshot_for_each_image();
  v19 = *(v33 + 6);
  if (!v19 && a5)
  {
    if ([v21 count])
    {
      objc_opt_self();
      [v21 sortUsingComparator:&__block_literal_global_361];
    }

    else
    {
      v22 = *__error();
      v23 = _sa_logt();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *v30 = 67109120;
        v31 = v26;
        _os_log_fault_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_FAULT, "No non-shared cache load infos for [%d]", v30, 8u);
      }

      *__error() = v22;
    }

    *a5 = [v21 copy];
  }

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(buf, 8);

LABEL_38:
  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_1E0ED3D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t DyldImageEnumerateSegments()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v0 = dyld_image_for_each_segment_info();
  v1 = *(v6 + 6);
  if (v1 > 0)
  {
    v2 = -v1;
  }

  else
  {
    v2 = 0x80000000;
  }

  if (v0)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  _Block_object_dispose(&v5, 8);
  return v3;
}

void __DyldImageEnumerateSegments_block_invoke(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDD032C8 != -1)
  {
    dispatch_once(&qword_1EDD032C8, &__block_literal_global_10);
  }

  if (dword_1EDD032BC >= 2)
  {
    v8 = a1[6];
    v9 = DyldImagePath();
    printf("dyld %#18llx - %#18llx (%#10llx) %16s %s\n", a3, a4 + a3, a4, a2, v9);
  }

  if (a2)
  {
    if (!SAShouldIgnoreSegmentWithCName(a2))
    {
      ++*(*(a1[5] + 8) + 24);
      v10 = a1[4];
      if (v10)
      {
        v11 = *(v10 + 16);

        v11();
      }
    }
  }
}

uint64_t SACompareDyldToCSLevel()
{
  if (qword_1EDD032C8 != -1)
  {
    dispatch_once(&qword_1EDD032C8, &__block_literal_global_10);
  }

  return dword_1EDD032BC;
}

const char *DyldImagePath()
{
  v14 = *MEMORY[0x1E69E9840];
  installname = dyld_image_get_installname();
  v1 = installname;
  if (!installname)
  {
    file_path = dyld_image_get_file_path();
    if (file_path)
    {
      goto LABEL_14;
    }

LABEL_20:
    v4 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = v1;
      _os_log_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_INFO, "No absolute path from dyld: %s", &v10, 0xCu);
    }

LABEL_22:
    file_path = v1;
LABEL_23:

    *__error() = v4;
    goto LABEL_25;
  }

  if (*installname == 47)
  {
    if (qword_1EDD032C8 != -1)
    {
      dispatch_once(&qword_1EDD032C8, &__block_literal_global_10);
    }

    if (dword_1EDD032BC < 2 || (v2 = dyld_image_get_file_path()) == 0 || (v3 = v2, !strcmp(v1, v2)))
    {
      file_path = v1;
      goto LABEL_25;
    }

    v4 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = v1;
      v12 = 2080;
      v13 = v3;
      _os_log_debug_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_DEBUG, "preferring dyld installname %s vs file_path %s", &v10, 0x16u);
    }

    goto LABEL_22;
  }

  v7 = dyld_image_get_file_path();
  if (!v7)
  {
    goto LABEL_20;
  }

  file_path = v7;
  if (*v7 != 47)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (qword_1EDD032C8 == -1)
  {
    if (!v1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    dispatch_once(&qword_1EDD032C8, &__block_literal_global_10);
    if (!v1)
    {
      goto LABEL_25;
    }
  }

  if (dword_1EDD032BC >= 2 && strcmp(v1, file_path))
  {
    v4 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = file_path;
      v12 = 2080;
      v13 = v1;
      _os_log_debug_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_DEBUG, "preferring dyld file_path %s vs installname %s", &v10, 0x16u);
    }

    goto LABEL_23;
  }

LABEL_25:
  v8 = *MEMORY[0x1E69E9840];
  return file_path;
}

const char *__SACompareDyldToCSLevel_block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  result = getenv("SA_COMPARE_DYLD_TO_CS");
  if (result)
  {
    v1 = result;
    result = strtol(result, 0, 0);
    dword_1EDD032BC = result;
    if (result >= 3)
    {
      v3 = *__error();
      v4 = _sa_logt();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v12 = dword_1EDD032BC;
        v13 = 2080;
        v14 = v1;
        _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "SA_COMPARE_DYLD_TO_CS of %d invalid (from %s)", buf, 0x12u);
      }

      *__error() = v3;
      _SASetCrashLogMessage(331, "SA_COMPARE_DYLD_TO_CS of %d invalid (from %s)", v5, v6, v7, v8, v9, v10, dword_1EDD032BC);
      _os_crash();
      __break(1u);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0ED4658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *StringForMicrostackshotStateQoS(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "Thread QoS Unknown";
  }

  else
  {
    return off_1E86F80C0[a1 - 1];
  }
}

void sub_1E0ED6B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0ED7280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

id seconds_string_for_nanoseconds(unint64_t a1, uint64_t a2)
{
  v4 = __exp10((9 - a2));
  if (v4 <= a1)
  {
    v5 = "";
  }

  else
  {
    a1 = v4;
    v5 = "<";
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s%.*fs", v5, a2, a1 / 1000000000.0];

  return v6;
}

void sub_1E0EDD3C8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x3C0], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1E0EDDBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose((v70 - 232), 8);
  _Block_object_dispose((v70 - 200), 8);
  _Block_object_dispose((v70 - 168), 8);
  _Block_object_dispose((v70 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1E0EE05F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0EE06F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0EE07CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0EE3C38(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x460], 8);
  _Block_object_dispose(&STACK[0x480], 8);
  _Block_object_dispose(&STACK[0x4A0], 8);
  _Block_object_dispose(&STACK[0x4C0], 8);
  _Block_object_dispose(&STACK[0x4F0], 8);
  _Unwind_Resume(a1);
}

void sub_1E0EE4BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1E0EE5138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E0EE7A84(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose(&STACK[0x808], 8);
  _Block_object_dispose(&STACK[0x828], 8);
  _Block_object_dispose(&STACK[0x848], 8);
  _Block_object_dispose(&STACK[0x868], 8);
  _Block_object_dispose(&STACK[0x888], 8);
  _Block_object_dispose(&STACK[0x8A8], 8);
  _Block_object_dispose(&STACK[0x8C8], 8);
  _Block_object_dispose(&STACK[0x8F8], 8);
  _Block_object_dispose(&STACK[0x928], 8);
  _Block_object_dispose(&STACK[0x948], 8);
  _Block_object_dispose(&STACK[0x968], 8);
  _Block_object_dispose(&STACK[0x988], 8);
  _Block_object_dispose(&STACK[0x9A8], 8);
  _Block_object_dispose(&STACK[0x9C8], 8);
  _Block_object_dispose(&STACK[0x9E8], 8);
  _Block_object_dispose(&STACK[0xA08], 8);
  _Block_object_dispose(&STACK[0xA28], 8);
  _Block_object_dispose(&STACK[0xA48], 8);
  _Block_object_dispose(&STACK[0xA68], 8);
  _Block_object_dispose(&STACK[0xA88], 8);
  _Unwind_Resume(a1);
}

uint64_t SACountedStateCompare(uint64_t a1, uint64_t a2)
{
  if (WORD2(a1) < WORD2(a2))
  {
    return 1;
  }

  if (WORD2(a1) > WORD2(a2))
  {
    return -1;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    if ((a2 & 0x1000000000000000) == 0)
    {
      return -1;
    }
  }

  else if ((a2 & 0x1000000000000000) != 0)
  {
    return 1;
  }

  if ((a1 & 0x400000000000000) != 0)
  {
    if ((a2 & 0x400000000000000) == 0)
    {
      return -1;
    }
  }

  else if ((a2 & 0x400000000000000) != 0)
  {
    return 1;
  }

  if ((a1 & 0x800000000000000) != 0)
  {
    if ((a2 & 0x800000000000000) == 0)
    {
      return -1;
    }
  }

  else if ((a2 & 0x800000000000000) != 0)
  {
    return 1;
  }

  if ((a1 & 0x100000000000000) != 0)
  {
    if ((a2 & 0x100000000000000) == 0)
    {
      return -1;
    }
  }

  else if ((a2 & 0x100000000000000) != 0)
  {
    return 1;
  }

  if ((a1 & 0x200000000000000) != 0)
  {
    if ((a2 & 0x200000000000000) == 0)
    {
      return -1;
    }
  }

  else if ((a2 & 0x200000000000000) != 0)
  {
    return 1;
  }

  if (!BYTE6(a1))
  {
    v2 = 1;
    if ((a2 & 0xFF000000000000) != 0 || a1 < a2)
    {
      return v2;
    }

LABEL_36:
    if (a1 <= a2)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  if (!BYTE6(a2))
  {
    return -1;
  }

  v4 = (BYTE6(a1) - 1);
  v5 = v4 >= (BYTE6(a2) - 1);
  v6 = v4 == (BYTE6(a2) - 1);
  v2 = 1;
  if (v5)
  {
    v2 = -1;
  }

  if (v6)
  {
    if (a1 >= a2)
    {
      goto LABEL_36;
    }

    return 1;
  }

  return v2;
}

uint64_t saos_printf_microstackshot_state(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = a2;
  if (a4)
  {
    return [a1 printWithFormat:@"state 0x%x", a2];
  }

  if ((a2 & 2) != (a3 & 2))
  {
    if ((a2 & 2) != 0)
    {
      v15 = @"Frontmost App";
    }

    else
    {
      v15 = @"Non-Frontmost App";
    }

    v12 = [a1 appendString:v15];
    v10 = v5 & 0x20;
    if (v10 == (a3 & 0x20))
    {
      goto LABEL_18;
    }

    v16 = [a1 appendString:{@", "}] + v12;
LABEL_14:
    if (v10)
    {
      v17 = @"Suppressed";
    }

    else
    {
      v17 = @"Non-Suppressed";
    }

    v12 = [a1 appendString:v17] + v16;
LABEL_18:
    v14 = v5 & 0x80;
    if (v14 == (a3 & 0x80))
    {
      goto LABEL_24;
    }

    v11 = [a1 appendString:{@", "}] + v12;
LABEL_20:
    if (v14)
    {
      v18 = @"Kernel mode";
    }

    else
    {
      v18 = @"User mode";
    }

    v12 = [a1 appendString:v18] + v11;
LABEL_24:
    v13 = 1;
    if (!a5)
    {
      goto LABEL_48;
    }

LABEL_25:
    if ((v5 & 0x10) == 0)
    {
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_48;
      }

      if (v13)
      {
        LODWORD(v12) = [a1 appendString:{@", "}] + v12;
      }

      v19 = @"Unknown User Activity, Unknown Power Source";
      goto LABEL_46;
    }

    if ((a3 & 0x10) == 0 || ((a3 ^ v5) & 4) != 0)
    {
      if (v13)
      {
        LODWORD(v12) = [a1 appendString:{@", "}] + v12;
      }

      if ((v5 & 4) != 0)
      {
        v20 = @"User Idle";
      }

      else
      {
        v20 = @"User Active";
      }

      v12 = [a1 appendString:v20] + v12;
      if ((a3 & 0x10) != 0 && ((a3 ^ v5) & 8) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (((a3 ^ v5) & 8) == 0)
      {
        goto LABEL_48;
      }

      if (!v13)
      {
        goto LABEL_43;
      }
    }

    LODWORD(v12) = [a1 appendString:{@", "}] + v12;
LABEL_43:
    if ((v5 & 8) != 0)
    {
      v19 = @"On Battery";
    }

    else
    {
      v19 = @"On AC";
    }

LABEL_46:
    v12 = [a1 appendString:v19] + v12;
LABEL_47:
    v13 = 1;
    goto LABEL_48;
  }

  v10 = a2 & 0x20;
  if (v10 != (a3 & 0x20))
  {
    v16 = 0;
    goto LABEL_14;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a2 & 0x80;
  if (v14 != (a3 & 0x80))
  {
    goto LABEL_20;
  }

  if (a5)
  {
    goto LABEL_25;
  }

LABEL_48:
  if ((v5 & 0x700) != (a3 & 0x700))
  {
    if (v13)
    {
      LODWORD(v12) = [a1 appendString:{@", "}] + v12;
    }

    v12 = [a1 printWithFormat:@"Effective %s", StringForMicrostackshotStateQoS((v5 & 0x700) >> 8)] + v12;
    v21 = v5 & 0x3800;
    if (v21 == (a3 & 0x3800))
    {
      goto LABEL_57;
    }

LABEL_55:
    LODWORD(v12) = [a1 appendString:{@", "}] + v12;
LABEL_56:
    v12 = [a1 printWithFormat:@"Requested %s", StringForMicrostackshotStateQoS(v21 >> 11)] + v12;
LABEL_57:
    v13 = 1;
    goto LABEL_58;
  }

  v21 = v5 & 0x3800;
  if (v21 != (a3 & 0x3800))
  {
    if (!v13)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_58:
  v22 = v5 & 0x1C000;
  if (v22 != (a3 & 0x1C000))
  {
    if (v13)
    {
      LODWORD(v12) = [a1 appendString:{@", "}] + v12;
    }

    return [a1 printWithFormat:@"Override %s", StringForMicrostackshotStateQoS(v22 >> 14)] + v12;
  }

  return v12;
}

void sub_1E0EEDCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0EF01F4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x340], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Block_object_dispose(&STACK[0x410], 8);
  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&STACK[0x450], 8);
  _Block_object_dispose(&STACK[0x470], 8);
  _Block_object_dispose(&STACK[0x490], 8);
  _Block_object_dispose(&STACK[0x4B0], 8);
  _Block_object_dispose(&STACK[0x4D0], 8);
  _Block_object_dispose(&STACK[0x4F0], 8);
  _Block_object_dispose(&STACK[0x510], 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose(&STACK[0x540], 8);
  _Block_object_dispose(&STACK[0x560], 8);
  _Block_object_dispose(&STACK[0x580], 8);
  _Unwind_Resume(a1);
}

__CFString *StringForThreadQoS(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v1 = @"user interactive";
        goto LABEL_19;
      }

      if (a1 == 125)
      {
        v1 = @"unavailable";
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      v1 = @"default";
    }

    else
    {
      v1 = @"user initiated";
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        v1 = @"unspecified";
        goto LABEL_19;
      }

      if (a1 == 1)
      {
        v1 = @"maintenance";
        goto LABEL_19;
      }

LABEL_18:
      v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown (0x%x)", a1];
      goto LABEL_19;
    }

    if (a1 == 2)
    {
      v1 = @"background";
    }

    else
    {
      v1 = @"utility";
    }
  }

LABEL_19:

  return v1;
}

void sub_1E0EFCFA0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t saos_printf_timeline_frame(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7)
{
  _saos_printf_indent_and_kernel_dot(a1, a2, a5, 0);
  [a1 printWithFormat:@"%-*lu  ", a3, a4];
  [a1 appendString:a6];
  if (a7 >= a4 - 1)
  {
    [a1 printWithFormat:@" %lu", a7 - (a4 - 1)];
    if (a4 != 1)
    {
      [a1 printWithFormat:@"-%lu", a7];
    }
  }

  return [a1 appendString:@"\n"];
}

uint64_t saos_printf_timeline_frame_noindent(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  _saos_printf_indent_and_kernel_dot(a1, a2, a4, 1);
  [a1 printWithFormat:@"%lu ", a3];
  [a1 appendString:a5];
  if (a6 >= a3 - 1)
  {
    [a1 printWithFormat:@" %lu", a6 - (a3 - 1)];
    if (a3 != 1)
    {
      [a1 printWithFormat:@"-%lu", a6];
    }
  }

  return [a1 appendString:@"\n"];
}

uint64_t saos_printf_timeline_frame_with_state(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  _saos_printf_indent_and_kernel_dot(a1, a2, a5, 0);
  [a1 printWithFormat:@"%-*lu  ", a3, a4];
  [a1 appendString:a6];
  _saos_printf_state_appended(a1, a7, a8);
  if (a9 >= a4 - 1)
  {
    [a1 printWithFormat:@" %lu", a9 - (a4 - 1)];
    if (a4 != 1)
    {
      [a1 printWithFormat:@"-%lu", a9];
    }
  }

  return [a1 appendString:@"\n"];
}

uint64_t saos_printf_microstackshot_state_as_timeline_frame(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, unint64_t *a7, uint64_t a8, int a9, char a10, unsigned __int8 a11, unint64_t a12, char a13, uint64_t a14)
{
  _saos_printf_microstackshot_state_as_frame_base(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a13, a14);
  v16 = a4 - 1;
  if (a12 >= v16)
  {
    [a1 printWithFormat:@" %lu", a12 - v16];
    if (v16)
    {
      [a1 printWithFormat:@"-%lu", a12];
    }
  }

  return [a1 appendString:@"\n"];
}

uint64_t saos_printf_call_tree_node_noindent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _saos_printf_indent_and_kernel_dot(a1, a2, 0, 1);
  [a1 printWithFormat:@"%lu ", a3];
  return [a1 printWithFormat:@"%@\n", a4];
}

uint64_t _saos_printf_microstackshot_state_as_frame_base(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, unint64_t *a7, uint64_t a8, int a9, char a10, unsigned __int8 a11, char a12, uint64_t a13)
{
  result = _microstackshot_state_has_change_to_display(a8, a9, a10, a11);
  v20 = result;
  v35 = a6;
  v36 = a7;
  if (a10)
  {
    v21 = 0;
LABEL_16:
    v23 = a13 == 0;
    if (a13)
    {
      v24 = 1;
    }

    else
    {
      v24 = result;
    }

    if ((v24 & 1) == 0 && !v21)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (!a7)
  {
    v25 = (a6 & 0x1FFFFFFFFFFFFFFFLL) == 0;
LABEL_13:
    v21 = !v25;
    goto LABEL_16;
  }

  v22 = *a7 ^ a6;
  if ((v22 & 0x1FFF000000000000) == 0)
  {
    v25 = (v22 & 0xFFFF00000000) == 0 && a6 == *a7;
    goto LABEL_13;
  }

  v23 = a13 == 0;
  if (a13)
  {
    v24 = 1;
  }

  else
  {
    v24 = result;
  }

  v21 = 1;
LABEL_21:
  v32 = v21;
  if (a12)
  {
    v26 = _saos_printf_indent_and_kernel_dot(a1, a2, a5, 1);
    result = [a1 printWithFormat:@"%lu ", a4, v31];
  }

  else
  {
    v26 = _saos_printf_indent_and_kernel_dot(a1, a2, a5, 0);
    result = [a1 printWithFormat:@"%-*lu  ", a3, a4];
  }

  v27 = result + v26;
  if (a10)
  {
    if (v24)
    {
      result = [a1 printWithFormat:@"state 0x%x", a8];
      if (!v23)
      {
        return [a1 printWithFormat:@", on behalf of %@", a13];
      }
    }
  }

  else
  {
    v28 = [a1 appendString:@"<"] + v27;
    v29 = v28;
    if (!v23)
    {
      v29 = [a1 printWithFormat:@"on behalf of %@", a13] + v28;
    }

    if (v20)
    {
      v30 = v36;
      if (v29 > v28)
      {
        v29 += [a1 appendString:{@", "}];
      }

      v29 += saos_printf_microstackshot_state(a1, a8, a9, 0, a11);
    }

    else
    {
      v30 = v36;
    }

    if (v32)
    {
      if (v29 > v28)
      {
        [a1 appendString:{@", "}];
      }

      _saos_printf_state_appended_noparens(a1, v35, v30, 0);
    }

    return [a1 appendString:@">"];
  }

  return result;
}

void sub_1E0F03460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1E0F04C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id CopyMountStatusData()
{
  if (qword_1EDD032F0 != -1)
  {
    dispatch_once(&qword_1EDD032F0, &__block_literal_global_71);
  }

  if (_MergedGlobals_9 && !dispatch_semaphore_wait(qword_1EDD032E0, 0))
  {
    v1 = objc_alloc(MEMORY[0x1E695DF70]);
    v2 = [v1 initWithCapacity:_MergedGlobals_9];
    v3 = dispatch_semaphore_create(0);
    v4 = qword_1EDD032E8;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __CopyMountStatusData_block_invoke_73;
    v12 = &unk_1E86F5F90;
    v5 = v2;
    v13 = v5;
    v6 = v3;
    v14 = v6;
    dispatch_async(v4, &v9);
    v7 = dispatch_time(0, 1000000000);
    v0 = 0;
    if (!dispatch_semaphore_wait(v6, v7))
    {
      v0 = [v5 copy];
    }
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void __CopyMountStatusData_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v0 = getmntinfo(&v11, 2);
  _MergedGlobals_9 = v0;
  if (v0)
  {
    qword_1EDD032D8 = malloc_type_calloc(v0, 0x878uLL, 0x100004087E0324AuLL);
    memcpy(qword_1EDD032D8, v11, 2168 * _MergedGlobals_9);
  }

  else
  {
    v1 = *__error();
    v2 = _sa_logt();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *__error();
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 67109378;
      v13 = v3;
      v14 = 2080;
      v15 = v5;
      _os_log_impl(&dword_1E0E2F000, v2, OS_LOG_TYPE_DEFAULT, "WARNING: getmntinfo failed: %d %s", buf, 0x12u);
    }

    *__error() = v1;
    qword_1EDD032D8 = 0;
    _MergedGlobals_9 = 0;
  }

  v6 = dispatch_semaphore_create(1);
  v7 = qword_1EDD032E0;
  qword_1EDD032E0 = v6;

  v8 = dispatch_queue_create("Network mount sysctl", 0);
  v9 = qword_1EDD032E8;
  qword_1EDD032E8 = v8;

  v10 = *MEMORY[0x1E69E9840];
}

intptr_t __CopyMountStatusData_block_invoke_73(uint64_t a1)
{
  *&v23[5] = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_9)
  {
    v2 = 0;
    for (i = 0; i < _MergedGlobals_9; ++i)
    {
      v4 = qword_1EDD032D8 + v2;
      size = 0;
      if ((sysctl_fsid((qword_1EDD032D8 + v2 + 48), 0, &size) & 0x80000000) == 0)
      {
        v5 = size;
        if (size >= 0x611)
        {
          v6 = *__error();
          v7 = _sa_logt();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *v23 = (size - 528) >> 3;
            _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "network mount status sizing check says %ld threads are blocked, ignoring", buf, 0xCu);
          }

          *__error() = v6;
          goto LABEL_18;
        }

        v8 = malloc_type_calloc(1uLL, size, 0x30B50783uLL);
        if ((sysctl_fsid((v4 + 48), v8, &size) & 0x80000000) != 0)
        {
          v11 = *__error();
          v12 = _sa_logt();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v15 = *__error();
            v16 = __error();
            v17 = strerror(*v16);
            *buf = 67109378;
            v23[0] = v15;
            LOWORD(v23[1]) = 2080;
            *(&v23[1] + 2) = v17;
            _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "Unable to get netfs_status: %d %s", buf, 0x12u);
          }

          *__error() = v11;
        }

        else
        {
          if (&v8[2 * v8[130] + 132] <= (v8 + v5))
          {
            v13 = *(a1 + 32);
            v14 = [[SAMountStatusData alloc] initWithMount:v4 status:v8];
            [v13 addObject:v14];

            goto LABEL_18;
          }

          v9 = *__error();
          v10 = _sa_logt();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v18 = v8[130];
            *buf = 67109376;
            v23[0] = v18;
            LOWORD(v23[1]) = 2048;
            *(&v23[1] + 2) = v5;
            _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "network mount status says %u threads are blocked, which is more than fits in the allocated status structure (%zu bytes), ignoring", buf, 0x12u);
          }

          *__error() = v9;
        }

        free(v8);
      }

LABEL_18:
      v2 += 2168;
    }
  }

  dispatch_semaphore_signal(qword_1EDD032E0);
  result = dispatch_semaphore_signal(*(a1 + 40));
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sysctl_fsid(void *a1, void *a2, size_t *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 14;
  if (sysctlnametomib("vfs.generic.ctlbyfsid", v20, &v14) == -1)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 136315650;
      *v16 = "vfs.generic.ctlbyfsid";
      *&v16[8] = 1024;
      *&v16[10] = v11;
      *&v16[14] = 2080;
      *&v16[16] = v13;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "sysctlnametomib %s failed: %d %s", buf, 0x1Cu);
    }

    *__error() = v8;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v14;
    v20[v14] = 65546;
    memset(&v16[4], 0, 32);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    *buf = 1;
    *v16 = *a1;
    *&v16[12] = 0;
    *&v16[20] = 0;
    result = sysctl(v20, v6 + 1, a2, a3, buf, 0x50uLL);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0F0FC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0F10534(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

void SAJSONWriteDictionaryEntry(void *a1, void *a2, void *a3)
{
  [a1 appendString:{@", "}];
  SAJSONWriteString(a1, a2);
  [a1 printWithFormat:@":"];

  SAJSONWriteItem(a1, a3);
}

void SAJSONWriteDictionaryFirstEntry(void *a1, void *a2, void *a3)
{
  SAJSONWriteString(a1, a2);
  [a1 printWithFormat:@":"];

  SAJSONWriteItem(a1, a3);
}

void SAJSONWriteString(void *a1, void *a2)
{
  v3 = [a2 stringByReplacingOccurrencesOfString:@"" withString:@"\\""];
  [a1 printWithFormat:@"%@", v3];
}

void SAJSONWriteItem(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if ([a2 conformsToProtocol:&unk_1F5BDD8C0])
  {
    [a1 appendString:@"{"];
    [a2 writeJSONDictionaryEntriesToStream:a1];
    v4 = *MEMORY[0x1E69E9840];
    v5 = @"}";
LABEL_3:

    [a1 appendString:v5];
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *MEMORY[0x1E69E9840];

    SAJSONWriteArray(a1, a2);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *MEMORY[0x1E69E9840];

      SAJSONWriteString(a1, a2);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [a2 description];
        [a1 appendString:v20];
        v8 = *MEMORY[0x1E69E9840];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = *MEMORY[0x1E69E9840];
          v5 = @"null";
          goto LABEL_3;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a1 appendString:@"{"];
          v21[0] = 0;
          v21[1] = v21;
          v21[2] = 0x2020000000;
          v22 = 1;
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v24 = __SAJSONWriteDictionary_block_invoke;
          v25 = &unk_1E86F87B8;
          v26 = a1;
          v27 = v21;
          [a2 enumerateKeysAndObjectsUsingBlock:&buf];
          [a1 appendString:@"}"];
          _Block_object_dispose(v21, 8);
          v10 = *MEMORY[0x1E69E9840];
        }

        else
        {
          v11 = *__error();
          v12 = _sa_logt();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = object_getClassName(a2);
            _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "Not a json-compatible type: %s", &buf, 0xCu);
          }

          *__error() = v11;
          ClassName = object_getClassName(a2);
          _SASetCrashLogMessage(77, "Not a json-compatible type: %s", v14, v15, v16, v17, v18, v19, ClassName);
          _os_crash();
          __break(1u);
        }
      }
    }
  }
}

void sub_1E0F1791C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SAJSONWriteArray(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  [a1 appendString:@"["];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = 1;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        if ((v8 & 1) == 0)
        {
          [a1 appendString:{@", ", v14}];
        }

        SAJSONWriteItem(a1, v10);
        objc_autoreleasePoolPop(v11);
        v8 = 0;
        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v8 = 0;
    }

    while (v6);
  }

  result = [a1 appendString:@"]"];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SAJSONWriteDictionary_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ClassName = object_getClassName(a2);
      v14 = [a2 debugDescription];
      *buf = 136315394;
      v24 = ClassName;
      v25 = 2080;
      v26 = [v14 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "Non-string (%s) key %s", buf, 0x16u);
    }

    *__error() = v11;
    v15 = object_getClassName(a2);
    v16 = [a2 debugDescription];
    [v16 UTF8String];
    _SASetCrashLogMessage(50, "Non-string (%s) key %s", v17, v18, v19, v20, v21, v22, v15);

    _os_crash();
    __break(1u);
  }

  v6 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    SAJSONWriteString(*(a1 + 32), a2);
    [v6 printWithFormat:@":"];
    result = SAJSONWriteItem(v6, a3);
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
    v10 = *(a1 + 32);

    return SAJSONWriteDictionaryEntry(v10, a2, a3);
  }

  return result;
}

uint64_t HIDEventTimestampForKTraceEvent(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 48);
  v3 = 8;
  if (v2 <= 736428035)
  {
    if (v2 > 730268055)
    {
      if ((v2 - 735576101) < 2)
      {
        return *(a1 + v3);
      }

      if (v2 != 730268056 && v2 != 730268060)
      {
        return v1;
      }
    }

    else if (v2 != 730267892 && v2 != 730267896)
    {
      if (v2 != 730267908)
      {
        return v1;
      }

      v3 = 32;
      return *(a1 + v3);
    }

    v3 = 16;
    return *(a1 + v3);
  }

  if ((v2 - 736428036) <= 0x1C && ((1 << (v2 - 4)) & 0x11111111) != 0)
  {
    return *(a1 + v3);
  }

  v5 = v2 - 736493572;
  v6 = v5 > 0xC;
  v7 = (1 << v5) & 0x1111;
  if (!v6 && v7 != 0)
  {
    return *(a1 + v3);
  }

  return v1;
}

const char *EventTypeString(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return "???";
  }

  else
  {
    return off_1E86F8AC8[a1 - 1];
  }
}

const char *TracePointString(int a1)
{
  if (a1 > 736428047)
  {
    if (a1 <= 736428063)
    {
      if (a1 > 736428055)
      {
        if (a1 == 736428056)
        {
          return "CGXFilterEventToConnection";
        }

        if (a1 == 736428060)
        {
          return "post_event_tap_data";
        }
      }

      else
      {
        if (a1 == 736428048)
        {
          return "sPostContinuation";
        }

        if (a1 == 736428052)
        {
          return "sAnnotatedContinuation";
        }
      }
    }

    else if (a1 <= 736493575)
    {
      if (a1 == 736428064)
      {
        return "decode_and_forward";
      }

      if (a1 == 736493572)
      {
        return "PushToCGEventQueue";
      }
    }

    else
    {
      switch(a1)
      {
        case 736493576:
          return "CreateAndPostEventWithCGEvent";
        case 736493580:
          return "PullEventsFromWindowServerOnConnection";
        case 736493584:
          return "ReceiveNextEventCommon (for the next event)";
      }
    }
  }

  else if (a1 <= 735576100)
  {
    if (a1 > 730268055)
    {
      if (a1 == 730268056)
      {
        return "Keyboard event start";
      }

      if (a1 == 730268060)
      {
        return "Keyboard event stop";
      }
    }

    else
    {
      if (a1 == 730267892)
      {
        return "Event dispatch begin";
      }

      if (a1 == 730267896)
      {
        return "Event dispatch end";
      }
    }
  }

  else if (a1 <= 736428035)
  {
    if (a1 == 735576101)
    {
      return "Entry to NSApplication sendEvent";
    }

    if (a1 == 735576102)
    {
      return "Return from NSApplication sendEvent";
    }
  }

  else
  {
    switch(a1)
    {
      case 736428036:
        return "hid_translation_state_append_wrapped_nxevent";
      case 736428040:
        return "CGXGetNextEvent";
      case 736428044:
        return "sHIDContinuation";
    }
  }

  return "???";
}

void sub_1E0F1BE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _getIndexRangeForTimestamps(unint64_t *a1, void *a2, void *a3, unint64_t a4, double a5, double a6)
{
  v11 = [a3 sampleTimestamps];
  v12 = v11;
  *a1 = -1;
  *a2 = 0;
  if (a5 < a6 && v11 != 0)
  {
    v26 = v11;
    v14 = [v11 count];
    v12 = v26;
    if (v14)
    {
      if (a4 == -1)
      {
        a4 = 0;
      }

      while (1)
      {
        v15 = [v12 count];
        v12 = v26;
        if (a4 >= v15)
        {
          break;
        }

        v16 = [v26 objectAtIndexedSubscript:a4];
        [v16 machAbsTimeSeconds];
        if (v17 >= a5)
        {

          v20 = [v26 count];
          v12 = v26;
          if (a4 < v20)
          {
            v21 = 0;
            while (1)
            {
              v22 = [v12 objectAtIndexedSubscript:a4 + v21];
              [v22 machAbsTimeSeconds];
              v24 = v23;

              if (v24 >= a6)
              {
                break;
              }

              ++v21;
              v25 = [v26 count];
              v12 = v26;
              if (v21 + a4 >= v25)
              {
                goto LABEL_18;
              }
            }

            v12 = v26;
LABEL_18:
            if (v21)
            {
              *a1 = a4;
              *a2 = v21;
            }
          }

          break;
        }

        [v16 machAbsTimeSeconds];
        v19 = v18;

        v12 = v26;
        if (v19 >= a6)
        {
          break;
        }

        ++a4;
      }
    }
  }
}

uint64_t _printSampleRangeForIndices(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 appendString:@"["];
  if ((a2 == -1 || a3) && (a2 != -1 || !a3))
  {
    if (a2 == -1 || (v10 = a4 + a2, a4 + a2 + a3 <= 0))
    {
      [a1 printWithFormat:@"%11s", "No samples", v13];
    }

    else
    {
      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = a4 + a2;
      }

      if (a3 == 1)
      {
        [a1 printWithFormat:@"%7lu%4s", v11, ""];
      }

      else
      {
        [a1 printWithFormat:@"%5lu-%-5lu", v11, a3 + v10 - 1];
      }
    }
  }

  else
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_DEFAULT, "WARNING: Non-sensical indices.", buf, 2u);
    }

    *__error() = v8;
    [a1 appendString:@"ERROR"];
  }

  return [a1 appendString:@"]"];
}