@interface SATurnstileInfo
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (id)turnstileInfoWithKCDataTurnstileInfo:(void *)a3 portName:(unint64_t)a4 flags:(unint64_t)a5 domain:;
- (BOOL)_displaysContentForPid:(uint64_t)a3 tid:(int)a4 threadPriority:(char)a5 options:(void *)a6 displayString:(uint64_t)a7 nameCallback:;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (SATurnstileInfo)init;
- (SATurnstileInfo)initWithKCDataTurnstileInfo:(const stackshot_thread_turnstileinfo_v2 *)a3;
- (id)descriptionForPid:(int)a3 tid:(unint64_t)a4 threadPriority:(int)a5 options:(unint64_t)a6 nameCallback:(id)a7;
- (int)blockingPid;
- (int64_t)compare:(id)a3;
- (uint64_t)displaysSameContentAs:(uint64_t)a3 forPid:(uint64_t)a4 tid:(char)a5 displayOptions:;
- (uint64_t)matchesKCDataTurnstileInfo:(uint64_t)a3 portName:(uint64_t)a4 flags:(uint64_t)a5 domain:;
- (unint64_t)blockingTid;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SATurnstileInfo

- (unint64_t)blockingTid
{
  if ((self->_flags & 8) != 0)
  {
    return self->_context;
  }

  else
  {
    return 0;
  }
}

- (SATurnstileInfo)init
{
  v3.receiver = self;
  v3.super_class = SATurnstileInfo;
  return [(SABlockingInfo *)&v3 _init];
}

- (SATurnstileInfo)initWithKCDataTurnstileInfo:(const stackshot_thread_turnstileinfo_v2 *)a3
{
  v5.receiver = self;
  v5.super_class = SATurnstileInfo;
  result = [(SABlockingInfo *)&v5 _init];
  if (result)
  {
    result->_context = a3->turnstile_context;
    result->_priority = a3->turnstile_priority;
    result->_numHops = a3->number_of_hops;
    result->_flags = a3->turnstile_flags;
  }

  return result;
}

+ (id)turnstileInfoWithKCDataTurnstileInfo:(void *)a3 portName:(unint64_t)a4 flags:(unint64_t)a5 domain:
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  if (a3)
  {
    v10 = [SATurnstileInfoWithPortLabel alloc];
    if (v10)
    {
      v19.receiver = v10;
      v19.super_class = SATurnstileInfoWithPortLabel;
      v11 = objc_msgSendSuper2(&v19, sel_initWithKCDataTurnstileInfo_, a2);
      v12 = v11;
      if (v11)
      {
        objc_storeStrong(v11 + 4, a3);
        if (a4 >= 0x10000)
        {
          v15 = *__error();
          v16 = _sa_logt();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v21 = a4;
            _os_log_fault_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_FAULT, "port label flags 0x%llx is too large", buf, 0xCu);
          }

          *__error() = v15;
        }

        *(v12 + 40) = a4;
        if (a5 >= 0x100)
        {
          v17 = *__error();
          v18 = _sa_logt();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v21 = a5;
            _os_log_fault_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_FAULT, "port label domain %llu is too large", buf, 0xCu);
          }

          *__error() = v17;
        }

        *(v12 + 42) = a5;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [[v9 alloc] initWithKCDataTurnstileInfo:a2];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = a3;
  v6 = self->_context == v5[2] && self->_priority == *(v5 + 8) && self->_numHops == *(v5 + 9) && self->_flags == v5[3];

  return v6;
}

- (int64_t)compare:(id)a3
{
  context = self->_context;
  v4 = *(a3 + 2);
  if (context > v4)
  {
    return 1;
  }

  if (context < v4)
  {
    return -1;
  }

  priority = self->_priority;
  v7 = *(a3 + 8);
  if (priority > v7)
  {
    return 1;
  }

  if (priority < v7)
  {
    return -1;
  }

  numHops = self->_numHops;
  v9 = *(a3 + 9);
  if (numHops > v9)
  {
    return 1;
  }

  if (numHops < v9)
  {
    return -1;
  }

  flags = self->_flags;
  v11 = *(a3 + 3);
  if (flags > v11)
  {
    return 1;
  }

  if (flags >= v11)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (uint64_t)matchesKCDataTurnstileInfo:(uint64_t)a3 portName:(uint64_t)a4 flags:(uint64_t)a5 domain:
{
  if (!a1 || *(a1 + 16) != *(a2 + 8) || *(a1 + 8) != *(a2 + 16) || *(a1 + 9) != *(a2 + 17) || *(a1 + 24) != *(a2 + 18) || [a1 portDomain] != a5 || objc_msgSend(a1, "portFlags") != a4)
  {
    return 0;
  }

  v8 = [a1 portName];
  if (a3 | v8)
  {
    v9 = [a1 portName];
    v10 = v9;
    v11 = 0;
    if (a3 && v9)
    {
      v12 = [a1 portName];
      v11 = [v12 isEqualToString:a3];
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (NSString)debugDescription
{
  v3 = [(SABlockingInfo *)self portName];

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = v4;
  context = self->_context;
  priority = self->_priority;
  numHops = self->_numHops;
  flags = self->_flags;
  if (v3)
  {
    v10 = [(SABlockingInfo *)self portName];
    v11 = [v5 initWithFormat:@"turnstile blocked on 0x%llx at priority %d, %d hops, 0x%llx flags, port name:%@, flags:0x%llx, domain:%llu", context, priority, numHops, flags, v10, -[SABlockingInfo portFlags](self, "portFlags"), -[SABlockingInfo portDomain](self, "portDomain")];
  }

  else
  {
    v11 = [v4 initWithFormat:@"turnstile blocked on 0x%llx at priority %d, %d hops, 0x%llx flags", context, priority, self->_numHops, flags];
  }

  return v11;
}

- (int)blockingPid
{
  if ((self->_flags & 0x10) != 0)
  {
    return self->_context;
  }

  else
  {
    return -1;
  }
}

- (uint64_t)displaysSameContentAs:(uint64_t)a3 forPid:(uint64_t)a4 tid:(char)a5 displayOptions:
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  if (result == a2)
  {
    return 1;
  }

  v8 = a5;
  if (!a2)
  {
    if (a5)
    {
      return 0;
    }

    v22 = *(result + 24);
    if ((v22 & 8) != 0 || (a5 & 2) != 0 && (v22 & 4) != 0)
    {
      return 0;
    }

    v23 = [result portName];

    return !v23;
  }

  v40 = *(a2 + 24);
  v41 = *(result + 24);
  v9 = *(result + 16);
  v10 = *(a2 + 16);
  v11 = *(result + 8);
  v38 = *(result + 9);
  v39 = *(a2 + 8);
  v37 = *(a2 + 9);
  v12 = [result portName];
  if (!v12)
  {
    v5 = [a2 portName];
    if (!v5)
    {
      v21 = 1;
      goto LABEL_21;
    }
  }

  v13 = [v7 portName];
  if (!v13)
  {
    v21 = 0;
    if (v12)
    {
      goto LABEL_22;
    }

LABEL_21:

    goto LABEL_22;
  }

  v14 = v13;
  v36 = v11;
  v15 = [a2 portName];
  if (v15)
  {
    v16 = v15;
    [v7 portName];
    v17 = v35 = v9;
    [a2 portName];
    v34 = v5;
    v18 = v8;
    v20 = v19 = v10;
    v21 = [v17 isEqualToString:v20];

    v10 = v19;
    v8 = v18;
    v5 = v34;

    v9 = v35;
  }

  else
  {

    v21 = 0;
  }

  v11 = v36;
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_22:

  v24 = [v7 portFlags];
  v25 = [a2 portFlags];
  v26 = [v7 portDomain];
  v27 = [a2 portDomain];
  result = 0;
  if (v21 && v24 == v25 && v26 == v27)
  {
    v28 = v7[3];
    if ((v28 & 0xC) != 0 || (*(a2 + 24) & 0xC) != 0)
    {
      if (((v40 ^ v41) & 0xC) != 0)
      {
        return 0;
      }

      v29 = (v28 >> 2) & 1;
      v31 = v11 == v39 && v38 == v37;
      v32 = v9 == v10 && v31;
      if ((((v8 & 2) == 0) & v29) != 0)
      {
        return v31;
      }

      else
      {
        return v32;
      }
    }

    else
    {
      return (v8 & 1) == 0 || v41 == v40;
    }
  }

  return result;
}

- (BOOL)_displaysContentForPid:(uint64_t)a3 tid:(int)a4 threadPriority:(char)a5 options:(void *)a6 displayString:(uint64_t)a7 nameCallback:
{
  *&v46[5] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_62;
  }

  v9 = a6;
  if ((a6 != 0) != (a7 != 0))
  {
    v17 = *__error();
    v14 = _sa_logt();
    v35 = a7 != 0;
    v9 = v9 != 0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v46[0] = v9;
      LOWORD(v46[1]) = 1024;
      *(&v46[1] + 2) = v35;
      _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "string_out:%d StringForPidAndTid:%d", buf, 0xEu);
    }

    *__error() = v17;
    _SASetCrashLogMessage(3339, "string_out:%d StringForPidAndTid:%d", v36, v37, v38, v39, v40, v41, v9);
    _os_crash();
    __break(1u);
LABEL_68:
    v42 = *__error();
    v43 = _sa_logt();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      v44 = *(v14 + v7[152]);
      *buf = 134217984;
      *v46 = v44;
      _os_log_fault_impl(&dword_1E0E2F000, v43, OS_LOG_TYPE_FAULT, "Unknown turnstile flags 0x%llx", buf, 0xCu);
    }

    *__error() = v42;
    [v17 appendFormat:@" with unknown flags 0x%llx", *(v14 + v7[152])];
LABEL_58:
    if (*(v14 + 9) != 1)
    {
      [v17 appendFormat:@" after %d hops", *(v14 + 9)];
    }

    v33 = v17;
    *v9 = v17;

    goto LABEL_61;
  }

  v14 = result;
  if (a5)
  {
    goto LABEL_6;
  }

  v15 = [result portName];
  if (v15 || (v23 = *(v14 + 24), (v23 & 0x10) != 0) && (*(v14 + 19) & 0x80) == 0)
  {

LABEL_6:
    if (!v9)
    {
LABEL_61:
      result = 1;
      goto LABEL_62;
    }

LABEL_7:
    v16 = [@"turnstile" mutableCopy];
    v17 = v16;
    v7 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
    v18 = *(v14 + 24);
    if (v18)
    {
      [v16 appendString:@" UNKNOWN"];
      v18 = *(v14 + 24);
    }

    if ((v18 & 2) != 0)
    {
      [v17 appendString:@" LOCKED"];
    }

    if (*(v14 + 8) != a4)
    {
      [v17 appendFormat:@" with priority %d", *(v14 + 8)];
    }

    if ((*(v14 + 24) & 0xDC) == 0)
    {
      v19 = [v14 portName];

      if (!v19)
      {
        goto LABEL_55;
      }
    }

    [v17 appendString:@" waiting for"];
    v20 = *(v14 + 24);
    if ((v20 & 8) != 0)
    {
      v21 = *(v14 + 16);
      if (!v21)
      {
        v22 = @" unknown thread";
        goto LABEL_36;
      }

      if (v21 == a3)
      {
        v22 = @" this thread";
LABEL_36:
        [v17 appendString:v22];
        goto LABEL_39;
      }

      (*(a7 + 16))(a7, 0xFFFFFFFFLL, v21);
    }

    else
    {
      if ((v20 & 0x10) == 0)
      {
        if ((v20 & 4) != 0)
        {
          [v17 appendString:@" workqueue"];
          if ((a5 & 2) != 0)
          {
            [v17 appendFormat:@" address 0x%llx", *(v14 + 16)];
          }
        }

LABEL_39:
        v27 = *(v14 + 24);
        if ((v27 & 0x40) != 0)
        {
          v28 = @" send port";
        }

        else
        {
          if ((v27 & 0x80) == 0)
          {
            goto LABEL_44;
          }

          v28 = @" receive port";
        }

        [v17 appendString:v28];
LABEL_44:
        v29 = [v14 portName];
        if (v29 || [v14 portFlags])
        {
        }

        else if (![v14 portDomain])
        {
          goto LABEL_55;
        }

        if ((*(v14 + 24) & 0xC0) == 0)
        {
          [v17 appendString:@" port"];
        }

        v30 = [v14 portName];

        if (v30)
        {
          v31 = [v14 portName];
          [v17 appendFormat:@" name %@", v31];
        }

        if ([v14 portFlags])
        {
          [v17 appendFormat:@" flags 0x%llx", objc_msgSend(v14, "portFlags")];
        }

        if ([v14 portDomain])
        {
          [v17 appendFormat:@" in domain %llu", objc_msgSend(v14, "portDomain")];
        }

LABEL_55:
        v32 = *(v14 + 24);
        if ((v32 & 0x20) != 0)
        {
          [v17 appendFormat:@" iplock held"];
          v32 = *(v14 + 24);
        }

        if (v32 < 0x100)
        {
          goto LABEL_58;
        }

        goto LABEL_68;
      }

      v24 = *(v14 + 16);
      if ((v24 & 0x80000000) != 0)
      {
        v22 = @" unknown process";
        goto LABEL_36;
      }

      if (v24 == a2)
      {
        v22 = @" this process";
        goto LABEL_36;
      }

      (*(a7 + 16))(a7, v24, 0);
    }
    v26 = ;
    [v17 appendFormat:@" %@", v26];

    goto LABEL_39;
  }

  if ((v23 & 8) == 0)
  {
    result = 0;
    goto LABEL_62;
  }

  v25 = *(v14 + 16);
  result = v25 != 0;
  if (v9 && v25)
  {
    goto LABEL_7;
  }

LABEL_62:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)descriptionForPid:(int)a3 tid:(unint64_t)a4 threadPriority:(int)a5 options:(unint64_t)a6 nameCallback:(id)a7
{
  v9 = 0;
  [(SATurnstileInfo *)self _displaysContentForPid:a3 tid:a4 threadPriority:a5 options:a6 displayString:&v9 nameCallback:a7];
  v7 = v9;

  return v7;
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(SATurnstileInfo *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SATurnstileInfo *)self debugDescription];
      *buf = 136315650;
      v24 = [v14 UTF8String];
      v25 = 2048;
      v26 = [(SATurnstileInfo *)self sizeInBytesForSerializedVersion];
      v27 = 2048;
      v28 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SATurnstileInfo *)self debugDescription];
    v16 = [v15 UTF8String];
    [(SATurnstileInfo *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5880, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, v16);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 513;
  *(&a3->var1 + 1) = self->_context;
  BYTE2(a3->var2) = self->_priority;
  BYTE3(a3->var2) = self->_numHops;
  *(&a3->var2 + 4) = self->_flags;
  v9 = [(SABlockingInfo *)self portName];
  *(&a3->var4 + 3) = SASerializableIndexForPointerFromSerializationDictionary(v9, a5);

  *(&a3->var5 + 4) = [(SABlockingInfo *)self portFlags];
  *(&a3->var6 + 4) = [(SABlockingInfo *)self portDomain];
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    v7 = [(SABlockingInfo *)self portName];
    [v7 addSelfToSerializationDictionary:a3];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a3 >= 3u)
  {
    goto LABEL_17;
  }

  if (a4 <= 0x13)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v27 = a4;
      v28 = 2048;
      v29 = 20;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATurnstileInfo struct %lu", buf, 0x16u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(5910, "bufferLength %lu < serialized SATurnstileInfo struct %lu", v11, v12, v13, v14, v15, v16, a4);
    _os_crash();
    __break(1u);
LABEL_14:
    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v27 = a4;
      v28 = 2048;
      v29 = 44;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATurnstileInfo_v2 struct %lu", buf, 0x16u);
    }

    *__error() = v17;
    _SASetCrashLogMessage(5916, "bufferLength %lu < serialized SATurnstileInfo_v2 struct %lu", v19, v20, v21, v22, v23, v24, a4);
    _os_crash();
    __break(1u);
LABEL_17:
    v25 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATurnstileInfo version" userInfo:0];
    objc_exception_throw(v25);
  }

  if (*(a3 + 1) < 2u)
  {
LABEL_9:
    v6 = objc_alloc_init(SATurnstileInfo);
    goto LABEL_10;
  }

  if (a4 <= 0x2B)
  {
    goto LABEL_14;
  }

  if (*(a3 + 20) == -1 && !*(a3 + 28) && !*(a3 + 36))
  {
    goto LABEL_9;
  }

  v6 = objc_alloc_init(SATurnstileInfoWithPortLabel);
  [(SATurnstileInfoWithPortLabel *)v6 setPortFlags:*(a3 + 28)];
  [(SATurnstileInfoWithPortLabel *)v6 setPortDomain:*(a3 + 36)];
LABEL_10:
  v6->super._context = *(a3 + 2);
  v6->super._priority = *(a3 + 10);
  v6->super._numHops = *(a3 + 11);
  v6->super._flags = *(a3 + 12);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v47 = *MEMORY[0x1E69E9840];
  if (*a3 >= 4u)
  {
    goto LABEL_21;
  }

  if (a4 <= 0x13)
  {
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v44 = a4;
      v45 = 2048;
      v46 = 20;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATurnstileInfo struct %lu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(5945, "bufferLength %lu < serialized SATurnstileInfo struct %lu", v18, v19, v20, v21, v22, v23, a4);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  if (*(a3 + 1) < 2u)
  {
LABEL_11:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a4 <= 0x2B)
  {
LABEL_15:
    v24 = *__error();
    self = _sa_logt();
    if (os_log_type_enabled(&self->super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v44 = a4;
      v45 = 2048;
      v46 = 44;
      _os_log_error_impl(&dword_1E0E2F000, &self->super.super, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATurnstileInfo_v2 struct %lu", buf, 0x16u);
    }

    *__error() = v24;
    _SASetCrashLogMessage(5949, "bufferLength %lu < serialized SATurnstileInfo_v2 struct %lu", v25, v26, v27, v28, v29, v30, a4);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  if (*(a3 + 20) == 0xFFFFFFFFFFFFFFFFLL && !*(a3 + 36))
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_18:
    v31 = *__error();
    v32 = _sa_logt();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      ClassName = object_getClassName(self);
      *buf = 136315138;
      v44 = ClassName;
      _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "turnstile info with port info, but class is %s", buf, 0xCu);
    }

    *__error() = v31;
    v34 = object_getClassName(self);
    _SASetCrashLogMessage(5955, "turnstile info with port info, but class is %s", v35, v36, v37, v38, v39, v40, v34);
    _os_crash();
    __break(1u);
LABEL_21:
    v41 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATurnstileInfo version" userInfo:0];
    objc_exception_throw(v41);
  }

  v11 = *(a3 + 20);
  v12 = self;
  v13 = objc_opt_class();
  v42 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v13, 0);
  [(SATurnstileInfo *)v12 setPortName:?];

  v14 = *MEMORY[0x1E69E9840];
}

@end