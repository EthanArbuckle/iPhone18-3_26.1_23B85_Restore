@interface SATurnstileInfo
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)turnstileInfoWithKCDataTurnstileInfo:(void *)info portName:(unint64_t)name flags:(unint64_t)flags domain:;
- (BOOL)_displaysContentForPid:(uint64_t)pid tid:(int)tid threadPriority:(char)priority options:(void *)options displayString:(uint64_t)string nameCallback:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (SATurnstileInfo)init;
- (SATurnstileInfo)initWithKCDataTurnstileInfo:(const stackshot_thread_turnstileinfo_v2 *)info;
- (id)descriptionForPid:(int)pid tid:(unint64_t)tid threadPriority:(int)priority options:(unint64_t)options nameCallback:(id)callback;
- (int)blockingPid;
- (int64_t)compare:(id)compare;
- (uint64_t)displaysSameContentAs:(uint64_t)as forPid:(uint64_t)pid tid:(char)tid displayOptions:;
- (uint64_t)matchesKCDataTurnstileInfo:(uint64_t)info portName:(uint64_t)name flags:(uint64_t)flags domain:;
- (unint64_t)blockingTid;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
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

- (SATurnstileInfo)initWithKCDataTurnstileInfo:(const stackshot_thread_turnstileinfo_v2 *)info
{
  v5.receiver = self;
  v5.super_class = SATurnstileInfo;
  result = [(SABlockingInfo *)&v5 _init];
  if (result)
  {
    result->_context = info->turnstile_context;
    result->_priority = info->turnstile_priority;
    result->_numHops = info->number_of_hops;
    result->_flags = info->turnstile_flags;
  }

  return result;
}

+ (id)turnstileInfoWithKCDataTurnstileInfo:(void *)info portName:(unint64_t)name flags:(unint64_t)flags domain:
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  if (info)
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
        objc_storeStrong(v11 + 4, info);
        if (name >= 0x10000)
        {
          v15 = *__error();
          v16 = _sa_logt();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            flagsCopy = name;
            _os_log_fault_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_FAULT, "port label flags 0x%llx is too large", buf, 0xCu);
          }

          *__error() = v15;
        }

        *(v12 + 40) = name;
        if (flags >= 0x100)
        {
          v17 = *__error();
          v18 = _sa_logt();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            flagsCopy = flags;
            _os_log_fault_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_FAULT, "port label domain %llu is too large", buf, 0xCu);
          }

          *__error() = v17;
        }

        *(v12 + 42) = flags;
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
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

  equalCopy = equal;
  v6 = self->_context == equalCopy[2] && self->_priority == *(equalCopy + 8) && self->_numHops == *(equalCopy + 9) && self->_flags == equalCopy[3];

  return v6;
}

- (int64_t)compare:(id)compare
{
  context = self->_context;
  v4 = *(compare + 2);
  if (context > v4)
  {
    return 1;
  }

  if (context < v4)
  {
    return -1;
  }

  priority = self->_priority;
  v7 = *(compare + 8);
  if (priority > v7)
  {
    return 1;
  }

  if (priority < v7)
  {
    return -1;
  }

  numHops = self->_numHops;
  v9 = *(compare + 9);
  if (numHops > v9)
  {
    return 1;
  }

  if (numHops < v9)
  {
    return -1;
  }

  flags = self->_flags;
  v11 = *(compare + 3);
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

- (uint64_t)matchesKCDataTurnstileInfo:(uint64_t)info portName:(uint64_t)name flags:(uint64_t)flags domain:
{
  if (!self || *(self + 16) != *(a2 + 8) || *(self + 8) != *(a2 + 16) || *(self + 9) != *(a2 + 17) || *(self + 24) != *(a2 + 18) || [self portDomain] != flags || objc_msgSend(self, "portFlags") != name)
  {
    return 0;
  }

  portName = [self portName];
  if (info | portName)
  {
    portName2 = [self portName];
    v10 = portName2;
    v11 = 0;
    if (info && portName2)
    {
      portName3 = [self portName];
      v11 = [portName3 isEqualToString:info];
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
  portName = [(SABlockingInfo *)self portName];

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = v4;
  context = self->_context;
  priority = self->_priority;
  numHops = self->_numHops;
  flags = self->_flags;
  if (portName)
  {
    portName2 = [(SABlockingInfo *)self portName];
    flags = [v5 initWithFormat:@"turnstile blocked on 0x%llx at priority %d, %d hops, 0x%llx flags, port name:%@, flags:0x%llx, domain:%llu", context, priority, numHops, flags, portName2, -[SABlockingInfo portFlags](self, "portFlags"), -[SABlockingInfo portDomain](self, "portDomain")];
  }

  else
  {
    flags = [v4 initWithFormat:@"turnstile blocked on 0x%llx at priority %d, %d hops, 0x%llx flags", context, priority, self->_numHops, flags];
  }

  return flags;
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

- (uint64_t)displaysSameContentAs:(uint64_t)as forPid:(uint64_t)pid tid:(char)tid displayOptions:
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

  tidCopy = tid;
  if (!a2)
  {
    if (tid)
    {
      return 0;
    }

    v22 = *(result + 24);
    if ((v22 & 8) != 0 || (tid & 2) != 0 && (v22 & 4) != 0)
    {
      return 0;
    }

    portName = [result portName];

    return !portName;
  }

  v40 = *(a2 + 24);
  v41 = *(result + 24);
  v9 = *(result + 16);
  v10 = *(a2 + 16);
  v11 = *(result + 8);
  v38 = *(result + 9);
  v39 = *(a2 + 8);
  v37 = *(a2 + 9);
  portName2 = [result portName];
  if (!portName2)
  {
    portName3 = [a2 portName];
    if (!portName3)
    {
      v21 = 1;
      goto LABEL_21;
    }
  }

  portName4 = [v7 portName];
  if (!portName4)
  {
    v21 = 0;
    if (portName2)
    {
      goto LABEL_22;
    }

LABEL_21:

    goto LABEL_22;
  }

  v14 = portName4;
  v36 = v11;
  portName5 = [a2 portName];
  if (portName5)
  {
    v16 = portName5;
    [v7 portName];
    v17 = v35 = v9;
    [a2 portName];
    v34 = portName3;
    v18 = tidCopy;
    v20 = v19 = v10;
    v21 = [v17 isEqualToString:v20];

    v10 = v19;
    tidCopy = v18;
    portName3 = v34;

    v9 = v35;
  }

  else
  {

    v21 = 0;
  }

  v11 = v36;
  if (!portName2)
  {
    goto LABEL_21;
  }

LABEL_22:

  portFlags = [v7 portFlags];
  portFlags2 = [a2 portFlags];
  portDomain = [v7 portDomain];
  portDomain2 = [a2 portDomain];
  result = 0;
  if (v21 && portFlags == portFlags2 && portDomain == portDomain2)
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
      if ((((tidCopy & 2) == 0) & v29) != 0)
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
      return (tidCopy & 1) == 0 || v41 == v40;
    }
  }

  return result;
}

- (BOOL)_displaysContentForPid:(uint64_t)pid tid:(int)tid threadPriority:(char)priority options:(void *)options displayString:(uint64_t)string nameCallback:
{
  *&v46[5] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_62;
  }

  optionsCopy = options;
  if ((options != 0) != (string != 0))
  {
    v17 = *__error();
    v14 = _sa_logt();
    v35 = string != 0;
    optionsCopy = optionsCopy != 0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v46[0] = optionsCopy;
      LOWORD(v46[1]) = 1024;
      *(&v46[1] + 2) = v35;
      _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "string_out:%d StringForPidAndTid:%d", buf, 0xEu);
    }

    *__error() = v17;
    _SASetCrashLogMessage(3339, "string_out:%d StringForPidAndTid:%d", v36, v37, v38, v39, v40, v41, optionsCopy);
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
    *optionsCopy = v17;

    goto LABEL_61;
  }

  v14 = result;
  if (priority)
  {
    goto LABEL_6;
  }

  portName = [result portName];
  if (portName || (v23 = *(v14 + 24), (v23 & 0x10) != 0) && (*(v14 + 19) & 0x80) == 0)
  {

LABEL_6:
    if (!optionsCopy)
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

    if (*(v14 + 8) != tid)
    {
      [v17 appendFormat:@" with priority %d", *(v14 + 8)];
    }

    if ((*(v14 + 24) & 0xDC) == 0)
    {
      portName2 = [v14 portName];

      if (!portName2)
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

      if (v21 == pid)
      {
        v22 = @" this thread";
LABEL_36:
        [v17 appendString:v22];
        goto LABEL_39;
      }

      (*(string + 16))(string, 0xFFFFFFFFLL, v21);
    }

    else
    {
      if ((v20 & 0x10) == 0)
      {
        if ((v20 & 4) != 0)
        {
          [v17 appendString:@" workqueue"];
          if ((priority & 2) != 0)
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
        portName3 = [v14 portName];
        if (portName3 || [v14 portFlags])
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

        portName4 = [v14 portName];

        if (portName4)
        {
          portName5 = [v14 portName];
          [v17 appendFormat:@" name %@", portName5];
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

      (*(string + 16))(string, v24, 0);
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
  if (optionsCopy && v25)
  {
    goto LABEL_7;
  }

LABEL_62:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)descriptionForPid:(int)pid tid:(unint64_t)tid threadPriority:(int)priority options:(unint64_t)options nameCallback:(id)callback
{
  v9 = 0;
  [(SATurnstileInfo *)self _displaysContentForPid:pid tid:tid threadPriority:priority options:options displayString:&v9 nameCallback:callback];
  v7 = v9;

  return v7;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(SATurnstileInfo *)self sizeInBytesForSerializedVersion]!= length)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SATurnstileInfo *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v14 UTF8String];
      v25 = 2048;
      sizeInBytesForSerializedVersion = [(SATurnstileInfo *)self sizeInBytesForSerializedVersion];
      v27 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SATurnstileInfo *)self debugDescription];
    uTF8String2 = [v15 UTF8String];
    [(SATurnstileInfo *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5880, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, uTF8String2);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 513;
  *(&buffer->var1 + 1) = self->_context;
  BYTE2(buffer->var2) = self->_priority;
  BYTE3(buffer->var2) = self->_numHops;
  *(&buffer->var2 + 4) = self->_flags;
  portName = [(SABlockingInfo *)self portName];
  *(&buffer->var4 + 3) = SASerializableIndexForPointerFromSerializationDictionary(portName, dictionary);

  *(&buffer->var5 + 4) = [(SABlockingInfo *)self portFlags];
  *(&buffer->var6 + 4) = [(SABlockingInfo *)self portDomain];
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    portName = [(SABlockingInfo *)self portName];
    [portName addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v30 = *MEMORY[0x1E69E9840];
  if (*buffer >= 3u)
  {
    goto LABEL_17;
  }

  if (length <= 0x13)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v28 = 2048;
      v29 = 20;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATurnstileInfo struct %lu", buf, 0x16u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(5910, "bufferLength %lu < serialized SATurnstileInfo struct %lu", v11, v12, v13, v14, v15, v16, length);
    _os_crash();
    __break(1u);
LABEL_14:
    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v28 = 2048;
      v29 = 44;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATurnstileInfo_v2 struct %lu", buf, 0x16u);
    }

    *__error() = v17;
    _SASetCrashLogMessage(5916, "bufferLength %lu < serialized SATurnstileInfo_v2 struct %lu", v19, v20, v21, v22, v23, v24, length);
    _os_crash();
    __break(1u);
LABEL_17:
    v25 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATurnstileInfo version" userInfo:0];
    objc_exception_throw(v25);
  }

  if (*(buffer + 1) < 2u)
  {
LABEL_9:
    v6 = objc_alloc_init(SATurnstileInfo);
    goto LABEL_10;
  }

  if (length <= 0x2B)
  {
    goto LABEL_14;
  }

  if (*(buffer + 20) == -1 && !*(buffer + 28) && !*(buffer + 36))
  {
    goto LABEL_9;
  }

  v6 = objc_alloc_init(SATurnstileInfoWithPortLabel);
  [(SATurnstileInfoWithPortLabel *)v6 setPortFlags:*(buffer + 28)];
  [(SATurnstileInfoWithPortLabel *)v6 setPortDomain:*(buffer + 36)];
LABEL_10:
  v6->super._context = *(buffer + 2);
  v6->super._priority = *(buffer + 10);
  v6->super._numHops = *(buffer + 11);
  v6->super._flags = *(buffer + 12);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v47 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_21;
  }

  if (length <= 0x13)
  {
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v45 = 2048;
      v46 = 20;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATurnstileInfo struct %lu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(5945, "bufferLength %lu < serialized SATurnstileInfo struct %lu", v18, v19, v20, v21, v22, v23, length);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  if (*(buffer + 1) < 2u)
  {
LABEL_11:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  if (length <= 0x2B)
  {
LABEL_15:
    v24 = *__error();
    self = _sa_logt();
    if (os_log_type_enabled(&self->super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v45 = 2048;
      v46 = 44;
      _os_log_error_impl(&dword_1E0E2F000, &self->super.super, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATurnstileInfo_v2 struct %lu", buf, 0x16u);
    }

    *__error() = v24;
    _SASetCrashLogMessage(5949, "bufferLength %lu < serialized SATurnstileInfo_v2 struct %lu", v25, v26, v27, v28, v29, v30, length);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  if (*(buffer + 20) == 0xFFFFFFFFFFFFFFFFLL && !*(buffer + 36))
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
      lengthCopy2 = ClassName;
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

  v11 = *(buffer + 20);
  selfCopy = self;
  v13 = objc_opt_class();
  v42 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v13, 0);
  [(SATurnstileInfo *)selfCopy setPortName:?];

  v14 = *MEMORY[0x1E69E9840];
}

@end