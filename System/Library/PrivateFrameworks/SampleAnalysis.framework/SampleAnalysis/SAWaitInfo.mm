@interface SAWaitInfo
+ (SAWaitInfo)stateWithPAStyleSerializedWaitInfo:(uint64_t)info;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)waitInfoWithKCDataWaitInfo:(void *)info portName:(unint64_t)name flags:(unint64_t)flags domain:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (SAWaitInfo)init;
- (SAWaitInfo)initWithKCDataWaitInfo:(const stackshot_thread_waitinfo_v2 *)info;
- (id)descriptionForPid:(int)pid tid:(unint64_t)tid options:(unint64_t)options nameCallback:(id)callback;
- (int)blockingPid;
- (int64_t)compare:(id)compare;
- (uint64_t)_displaysContentForPid:(uint64_t)pid tid:(char)tid options:(void *)options displayString:(uint64_t)string nameCallback:;
- (uint64_t)displaysSameContentAs:(int)as forPid:(uint64_t)pid tid:(char)tid displayOptions:;
- (uint64_t)matchesKCDataWaitInfo:(uint64_t)info portName:(uint64_t)name flags:(uint64_t)flags domain:;
- (unint64_t)blockingTid;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAWaitInfo

- (unint64_t)blockingTid
{
  result = 0;
  v13 = *MEMORY[0x1E69E9840];
  type_low = LOBYTE(self->_type);
  if (type_low <= 0x1F)
  {
    if (((1 << type_low) & 0x3FE2F07C) != 0)
    {
      goto LABEL_5;
    }

    if (((1 << type_low) & 0xC01C0F80) != 0)
    {
      result = self->_owner;
      goto LABEL_5;
    }

    if (type_low == 16)
    {
      owner = self->_owner;
      v7 = (owner & 0xFFFFFFFFFFFFFFFELL) == -8;
      goto LABEL_11;
    }
  }

  if (!LOBYTE(self->_type))
  {
    goto LABEL_5;
  }

  if (type_low == 1)
  {
    owner = self->_owner;
    v7 = owner == -6;
LABEL_11:
    if (v7)
    {
      result = 0;
    }

    else
    {
      result = owner;
    }

    goto LABEL_5;
  }

  v8 = *__error();
  v9 = _sa_logt();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    type = self->_type;
    v12[0] = 67109120;
    v12[1] = type;
    _os_log_fault_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_FAULT, "waitinfo has unknown type %u", v12, 8u);
  }

  v10 = __error();
  result = 0;
  *v10 = v8;
LABEL_5:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (SAWaitInfo)init
{
  v3.receiver = self;
  v3.super_class = SAWaitInfo;
  return [(SABlockingInfo *)&v3 _init];
}

- (SAWaitInfo)initWithKCDataWaitInfo:(const stackshot_thread_waitinfo_v2 *)info
{
  v5.receiver = self;
  v5.super_class = SAWaitInfo;
  result = [(SABlockingInfo *)&v5 _init];
  if (result)
  {
    result->_owner = info->owner;
    result->_context = info->context;
    result->_type = info->wait_type;
  }

  return result;
}

+ (id)waitInfoWithKCDataWaitInfo:(void *)info portName:(unint64_t)name flags:(unint64_t)flags domain:
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  if (info)
  {
    v10 = [SAWaitInfoWithPortLabel alloc];
    if (v10)
    {
      v19.receiver = v10;
      v19.super_class = SAWaitInfoWithPortLabel;
      v11 = objc_msgSendSuper2(&v19, sel_initWithKCDataWaitInfo_, a2);
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
    v12 = [[v9 alloc] initWithKCDataWaitInfo:a2];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (uint64_t)displaysSameContentAs:(int)as forPid:(uint64_t)pid tid:(char)tid displayOptions:
{
  if (result)
  {
    v6 = result;
    if (result == a2)
    {
      return 1;
    }

    if (!a2)
    {
      return [(SAWaitInfo *)result _displaysContentForPid:as tid:pid options:tid displayString:0 nameCallback:0]^ 1;
    }

    if (*(result + 8) != *(a2 + 8))
    {
      return 0;
    }

    if (*(result + 16) != *(a2 + 16))
    {
      return 0;
    }

    portFlags = [result portFlags];
    if (portFlags != [a2 portFlags])
    {
      return 0;
    }

    portDomain = [v6 portDomain];
    if (portDomain != [a2 portDomain] || (tid & 2) != 0 && v6[3] != *(a2 + 24))
    {
      return 0;
    }

    portName = [v6 portName];
    if (!portName)
    {
      portDomain = [a2 portName];
      if (!portDomain)
      {
        return 1;
      }
    }

    portName2 = [v6 portName];
    if (portName2)
    {
      v12 = portName2;
      portName3 = [a2 portName];
      if (portName3)
      {
        v14 = portName3;
        portName4 = [v6 portName];
        portName5 = [a2 portName];
        v17 = [portName4 isEqualToString:portName5];

        if (portName)
        {

          return (v17 & 1) != 0;
        }

        return (v17 & 1) != 0;
      }
    }

    if (portName)
    {
      portDomain = portName;
    }

    return 0;
  }

  return result;
}

- (uint64_t)_displaysContentForPid:(uint64_t)pid tid:(char)tid options:(void *)options displayString:(uint64_t)string nameCallback:
{
  v117 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_287:
    v12 = 0;
    goto LABEL_284;
  }

  optionsCopy = options;
  if ((options != 0) != (string != 0))
  {
    v103 = *__error();
    v104 = _sa_logt();
    v105 = string != 0;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      LODWORD(optionsCopy) = optionsCopy != 0;
      *buf = 67109376;
      v114 = optionsCopy;
      v115 = 1024;
      v116 = v105;
      _os_log_error_impl(&dword_1E0E2F000, v104, OS_LOG_TYPE_ERROR, "string_out:%d StringForPidAndTid:%d", buf, 0xEu);
    }

    else
    {
      LOBYTE(optionsCopy) = optionsCopy != 0;
    }

    *__error() = v103;
    _SASetCrashLogMessage(2219, "string_out:%d StringForPidAndTid:%d", v106, v107, v108, v109, v110, v111, optionsCopy);
    _os_crash();
    __break(1u);
  }

  v12 = 0;
  v13 = tid & 1;
  switch(*(self + 8))
  {
    case 0:
      v14 = *__error();
      v15 = _sa_logt();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "waitinfo has no type", buf, 2u);
      }

      v12 = 0;
      *__error() = v14;
      goto LABEL_284;
    case 1:
      v42 = *(self + 16) | v13;
      v12 = v42 != 0;
      if (options && v42)
      {
        v43 = [@"kernel mutex" mutableCopy];
        v22 = v43;
        if ((tid & 2) != 0)
        {
          [v43 appendFormat:@" address 0x%llx", *(self + 24)];
        }

        v44 = *(self + 16);
        if (!v44)
        {
          goto LABEL_183;
        }

        if (v44 != -6)
        {
          goto LABEL_181;
        }

        v45 = @" in spin mode";
        goto LABEL_184;
      }

      goto LABEL_284;
    case 2:
      if ((tid & 1) == 0)
      {
        portName = [self portName];

        if (!portName)
        {
          v25 = *(self + 16);
          if (v25 != -3 && v25 != -5)
          {
            goto LABEL_287;
          }
        }
      }

      if (!optionsCopy)
      {
        goto LABEL_283;
      }

      v17 = [@"mach_msg receive" mutableCopy];
      if ((tid & 2) != 0 || ((v27 = *(self + 16), v27 != -5) ? (v28 = v27 == -3) : (v28 = 1), v28 || ([self portName], v29 = objc_claimAutoreleasedReturnValue(), v29, v29)))
      {
        v30 = *(self + 16);
        v31 = @" on port";
        if (v30 == -5)
        {
          v31 = @" on intransit port";
        }

        if (v30 == -3)
        {
          v32 = @" on locked port";
        }

        else
        {
          v32 = v31;
        }

        [v17 appendFormat:v32];
        portName2 = [self portName];

        if (portName2)
        {
          portName3 = [self portName];
          [v17 appendFormat:@" name %@", portName3];
        }

        if ([self portFlags])
        {
          [v17 appendFormat:@" flags 0x%llx", objc_msgSend(self, "portFlags")];
        }

        if ([self portDomain])
        {
          [v17 appendFormat:@" in domain %llu", objc_msgSend(self, "portDomain")];
        }

        if ((tid & 2) != 0)
        {
          [v17 appendFormat:@" address 0x%llx", *(self + 24)];
        }

        v35 = *(self + 16);
        if (v35 != 0 && v35 < 0xFFFFFFFFFFFFFFFBLL || ((1 << (v35 + 5)) & 0x25) == 0)
        {
          [v17 appendFormat:@" name 0x%llx", *(self + 16)];
        }
      }

      goto LABEL_216;
    case 3:
      if ((tid & 1) != 0 || ([self portName], v55 = objc_claimAutoreleasedReturnValue(), v55, v55))
      {
        if (!optionsCopy)
        {
          goto LABEL_283;
        }
      }

      else
      {
        v99 = *(self + 16);
        v12 = v99 == -4;
        if (!optionsCopy || v99 != -4)
        {
          goto LABEL_284;
        }
      }

      v17 = [@"mach_msg receive" mutableCopy];
      if ((tid & 2) != 0 || *(self + 16) == -4 || ([self portName], v56 = objc_claimAutoreleasedReturnValue(), v56, v56))
      {
        if (*(self + 16) == -4)
        {
          v57 = @" on locked port set";
        }

        else
        {
          v57 = @" on port set";
        }

        [v17 appendFormat:v57];
        portName4 = [self portName];

        if (portName4)
        {
          portName5 = [self portName];
          [v17 appendFormat:@" name %@", portName5];
        }

        if ([self portFlags])
        {
          [v17 appendFormat:@" flags 0x%llx", objc_msgSend(self, "portFlags")];
        }

        if ([self portDomain])
        {
          [v17 appendFormat:@" in domain %llu", objc_msgSend(self, "portDomain")];
        }

LABEL_111:
        if ((tid & 2) != 0)
        {
          [v17 appendFormat:@" address 0x%llx", *(self + 24)];
        }
      }

      goto LABEL_216;
    case 4:
      if ((tid & 1) != 0 || ((v63 = *(self + 16), (v63 + 3) >= 2) ? (v64 = v63 == -5) : (v64 = 1), v64 || (v63 ? (v97 = v63 <= 0) : (v97 = 1), !v97)))
      {
        if (!options)
        {
          goto LABEL_283;
        }
      }

      else
      {
        portName6 = [self portName];
        v12 = portName6 != 0;

        if (!optionsCopy || !portName6)
        {
          goto LABEL_284;
        }
      }

      v65 = [@"mach_msg send" mutableCopy];
      if ((tid & 2) != 0 || ((v66 = *(self + 16), v66 != -5) ? (v67 = v66 == -3) : (v67 = 1), v67 || ([self portName], v68 = objc_claimAutoreleasedReturnValue(), v68, v68)))
      {
        v69 = *(self + 16);
        v70 = @" on port";
        if (v69 == -5)
        {
          v70 = @" on intransit port";
        }

        if (v69 == -3)
        {
          v71 = @" on locked port";
        }

        else
        {
          v71 = v70;
        }

        [v65 appendFormat:v71];
        portName7 = [self portName];

        if (portName7)
        {
          portName8 = [self portName];
          [v65 appendFormat:@" name %@", portName8];
        }

        if ([self portFlags])
        {
          [v65 appendFormat:@" flags 0x%llx", objc_msgSend(self, "portFlags")];
        }

        if ([self portDomain])
        {
          [v65 appendFormat:@" in domain %llu", objc_msgSend(self, "portDomain")];
        }

        if ((tid & 2) != 0)
        {
          [v65 appendFormat:@" address 0x%llx", *(self + 24)];
        }
      }

      v74 = *(self + 16);
      if (v74 > -3)
      {
        if (!v74)
        {
          goto LABEL_255;
        }

        if (v74 == -2)
        {
          v74 = 0;
          *(self + 16) = 0;
          goto LABEL_253;
        }
      }

      else if (v74 == -5 || v74 == -3)
      {
        goto LABEL_260;
      }

      goto LABEL_247;
    case 5:
      if (tid)
      {
        if (!options)
        {
          goto LABEL_283;
        }
      }

      else
      {
        portName9 = [self portName];
        v12 = portName9 != 0;

        if (!optionsCopy || !portName9)
        {
          goto LABEL_284;
        }
      }

      v17 = [@"mach_msg send" mutableCopy];
      if ((tid & 2) != 0)
      {
        goto LABEL_223;
      }

      portName10 = [self portName];
      if (portName10 || [self portFlags])
      {
      }

      else if (![self portDomain])
      {
        goto LABEL_231;
      }

LABEL_223:
      [v17 appendString:@" on port"];
      portName11 = [self portName];

      if (portName11)
      {
        portName12 = [self portName];
        [v17 appendFormat:@" name %@", portName12];
      }

      if ([self portFlags])
      {
        [v17 appendFormat:@" flags 0x%llx", objc_msgSend(self, "portFlags")];
      }

      if ([self portDomain])
      {
        [v17 appendFormat:@" in domain %llu", objc_msgSend(self, "portDomain")];
      }

      if ((tid & 2) != 0)
      {
        [v17 appendFormat:@" address 0x%llx", *(self + 24)];
      }

LABEL_231:
      [v17 appendString:@" in transit"];
      if (!*(self + 16))
      {
        v19 = @" to unknown port";
        goto LABEL_215;
      }

      if ((tid & 2) != 0)
      {
        [v17 appendFormat:@" to port address 0x%llx", *(self + 16)];
      }

      goto LABEL_216;
    case 6:
      v79 = *(self + 16);
      if (v79)
      {
        v81 = v79 != a2 && v79 >= 0;
        if ((tid & 3) == 0 && !v81)
        {
LABEL_171:
          portName13 = [self portName];
          v12 = portName13 != 0;

          if (!optionsCopy || !portName13)
          {
            goto LABEL_284;
          }

LABEL_236:
          v65 = [@"semaphore" mutableCopy];
          if ((tid & 2) != 0 || ([self portName], v92 = objc_claimAutoreleasedReturnValue(), v92, v92))
          {
            [v65 appendFormat:@" port"];
            portName14 = [self portName];

            if (portName14)
            {
              portName15 = [self portName];
              [v65 appendFormat:@" name %@", portName15];
            }

            if ([self portFlags])
            {
              [v65 appendFormat:@" flags 0x%llx", objc_msgSend(self, "portFlags")];
            }

            if ([self portDomain])
            {
              [v65 appendFormat:@" in domain %llu", objc_msgSend(self, "portDomain")];
            }

            if ((tid & 2) != 0)
            {
              [v65 appendFormat:@" address 0x%llx", *(self + 24)];
            }
          }

          v74 = *(self + 16);
          if (v74)
          {
LABEL_247:
            if ((v74 & 0x80000000) != 0)
            {
              v95 = @" owned by unknown process";
            }

            else
            {
LABEL_253:
              if (v74 != a2)
              {
                v96 = (*(string + 16))(string, v74, 0);
                [v65 appendFormat:@" owned by %@", v96];

                goto LABEL_260;
              }

              v95 = @" owned by this process";
            }
          }

          else
          {
LABEL_255:
            v95 = @" with unknown owner";
          }

          [v65 appendFormat:v95];
LABEL_260:
          v85 = *optionsCopy;
          *optionsCopy = v65;
          goto LABEL_282;
        }
      }

      else if ((tid & 3) == 0)
      {
        goto LABEL_171;
      }

      if (!options)
      {
        goto LABEL_283;
      }

      goto LABEL_236;
    case 7:
      v38 = *(self + 16) | v13;
      v12 = v38 != 0;
      if (!options || !v38)
      {
        goto LABEL_284;
      }

      v39 = [@"krwlock" mutableCopy];
      v22 = v39;
      if ((tid & 2) != 0)
      {
        [v39 appendFormat:@" address 0x%llx", *(self + 24)];
      }

      v23 = @" for reading";
      goto LABEL_179;
    case 8:
      v77 = *(self + 16) | v13;
      v12 = v77 != 0;
      if (!options || !v77)
      {
        goto LABEL_284;
      }

      v78 = [@"krwlock" mutableCopy];
      v22 = v78;
      if ((tid & 2) != 0)
      {
        [v78 appendFormat:@" address 0x%llx", *(self + 24)];
      }

      v23 = @" for writing";
      goto LABEL_179;
    case 9:
      v20 = *(self + 16) | v13;
      v12 = v20 != 0;
      if (!options || !v20)
      {
        goto LABEL_284;
      }

      v21 = [@"krwlock" mutableCopy];
      v22 = v21;
      if ((tid & 2) != 0)
      {
        [v21 appendFormat:@" address 0x%llx", *(self + 24)];
      }

      v23 = @" for upgrading";
      goto LABEL_179;
    case 0xA:
      v36 = *(self + 16) | v13;
      v12 = v36 != 0;
      if (!options || !v36)
      {
        goto LABEL_284;
      }

      v37 = @"user lock";
      goto LABEL_121;
    case 0xB:
      v62 = *(self + 16) | v13;
      v12 = v62 != 0;
      if (!options || !v62)
      {
        goto LABEL_284;
      }

      v37 = @"pthread mutex";
LABEL_121:
      v22 = [(__CFString *)v37 mutableCopy];
      if ((tid & 2) != 0)
      {
        [v22 appendFormat:@" address 0x%llx", *(self + 24)];
      }

      goto LABEL_180;
    case 0xC:
      if ((tid & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = tid & 1;
      if (!options)
      {
        goto LABEL_284;
      }

      v18 = [@"pthread rwlock" mutableCopy];
      v17 = v18;
      if ((tid & 2) != 0)
      {
        [v18 appendFormat:@" address 0x%llx", *(self + 24)];
      }

      v19 = @" for reading";
      goto LABEL_215;
    case 0xD:
      if ((tid & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = tid & 1;
      if (!options)
      {
        goto LABEL_284;
      }

      v41 = [@"pthread rwlock" mutableCopy];
      v17 = v41;
      if ((tid & 2) != 0)
      {
        [v41 appendFormat:@" address 0x%llx", *(self + 24)];
      }

      v19 = @" for writing";
      goto LABEL_215;
    case 0xE:
      if ((tid & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = tid & 1;
      if (!options)
      {
        goto LABEL_284;
      }

      v17 = [@"pthread condvar" mutableCopy];
      goto LABEL_111;
    case 0xF:
    case 0x15:
      goto LABEL_284;
    case 0x10:
      if (!options)
      {
        goto LABEL_283;
      }

      v49 = [@"queue" mutableCopy];
      v22 = v49;
      if ((tid & 2) != 0)
      {
        [v49 appendFormat:@" workloop address 0x%llx", *(self + 24)];
      }

      v50 = *(self + 16);
      if (v50 == -8)
      {
        v45 = @" that is suspended";
        goto LABEL_184;
      }

      if (v50 == -7)
      {
        v45 = @" thread to be allocated";
        goto LABEL_184;
      }

      if (v50 == pid)
      {
        v45 = @" processed by this thread";
        goto LABEL_184;
      }

      if (v50)
      {
        v84 = (*(string + 16))(string, 0xFFFFFFFFLL);
        [v22 appendFormat:@" processed by %@", v84];
        goto LABEL_186;
      }

      v45 = @" in a transient state";
      goto LABEL_184;
    case 0x11:
      if (!options)
      {
        goto LABEL_283;
      }

      v52 = [@"wait4" mutableCopy];
      v75 = *(self + 16);
      if (v75 == -1)
      {
        v54 = @" on any child process";
      }

      else
      {
        if ((v75 & 0x8000000000000000) == 0)
        {
          v76 = (*(string + 16))(string);
          [v52 appendFormat:@" on %@", v76];
          goto LABEL_278;
        }

        v112 = -v75;
        v54 = @" on any process in pgrp %lld";
      }

      goto LABEL_280;
    case 0x12:
      v88 = *(self + 16) | v13;
      v12 = v88 != 0;
      if (!options || !v88)
      {
        goto LABEL_284;
      }

      v52 = [@"turnstile" mutableCopy];
      v53 = *(self + 16);
      if (v53)
      {
        goto LABEL_199;
      }

      v54 = @" with unknown owner";
      goto LABEL_280;
    case 0x13:
      v51 = *(self + 16) | v13;
      v12 = v51 != 0;
      if (!options || !v51)
      {
        goto LABEL_284;
      }

      v52 = [@"event link" mutableCopy];
      v53 = *(self + 16);
      if (!v53)
      {
        v54 = @" (held)";
        goto LABEL_280;
      }

LABEL_199:
      if (v53 == pid)
      {
        v54 = @" owned by this thread";
        goto LABEL_280;
      }

      v76 = (*(string + 16))(string, 0xFFFFFFFFLL);
      [v52 appendFormat:@" owned by %@", v76];
      goto LABEL_278;
    case 0x14:
      v60 = *(self + 16) | v13;
      v12 = v60 != 0;
      if (!options || !v60)
      {
        goto LABEL_284;
      }

      v52 = [@"compressor segment" mutableCopy];
      v61 = *(self + 16);
      if (!v61)
      {
        v54 = @" busy for unknown thread";
        goto LABEL_280;
      }

      if (v61 == pid)
      {
        v54 = @" busy for this thread";
LABEL_280:
        [v52 appendFormat:v54, v112];
        goto LABEL_281;
      }

      v76 = (*(string + 16))(string, 0xFFFFFFFFLL);
      [v52 appendFormat:@" busy for thread %@", v76];
LABEL_278:

LABEL_281:
      v85 = *optionsCopy;
      *optionsCopy = v52;
      goto LABEL_282;
    case 0x16:
      if ((tid & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = tid & 1;
      if (!options)
      {
        goto LABEL_284;
      }

      v16 = @"busy page";
      goto LABEL_194;
    case 0x17:
      if ((tid & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = tid & 1;
      if (!options)
      {
        goto LABEL_284;
      }

      v40 = @"pager initialization";
      goto LABEL_213;
    case 0x18:
      if ((tid & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = tid & 1;
      if (!options)
      {
        goto LABEL_284;
      }

      v40 = @"pager ready";
      goto LABEL_213;
    case 0x19:
      if ((tid & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = tid & 1;
      if (!options)
      {
        goto LABEL_284;
      }

      v40 = @"paging/activity in progress";
      goto LABEL_213;
    case 0x1A:
      if ((tid & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = tid & 1;
      if (!options)
      {
        goto LABEL_284;
      }

      v40 = @"mapping in progress";
      goto LABEL_213;
    case 0x1B:
      if ((tid & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = tid & 1;
      if (!options)
      {
        goto LABEL_284;
      }

      v16 = @"blocked vm object";
LABEL_194:
      v17 = [(__CFString *)v16 mutableCopy];
      if ((tid & 2) != 0)
      {
        [v17 appendFormat:@" 0x%llx", *(self + 24)];
      }

      goto LABEL_216;
    case 0x1C:
      if ((tid & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = tid & 1;
      if (!options)
      {
        goto LABEL_284;
      }

      v40 = @"paging in progress";
      goto LABEL_213;
    case 0x1D:
      if ((tid & 1) == 0)
      {
LABEL_217:
        v12 = tid & 1;
        goto LABEL_284;
      }

      v12 = tid & 1;
      if (!options)
      {
        goto LABEL_284;
      }

      v40 = @"pagein throttle";
LABEL_213:
      v17 = [(__CFString *)v40 mutableCopy];
      if ((tid & 2) != 0)
      {
        v112 = *(self + 24);
        v19 = @" for vm object 0x%llx";
LABEL_215:
        [v17 appendFormat:v19, v112];
      }

LABEL_216:
      v85 = *optionsCopy;
      *optionsCopy = v17;
      goto LABEL_282;
    case 0x1E:
      v83 = *(self + 16) | v13;
      v12 = v83 != 0;
      if (!options || !v83)
      {
        goto LABEL_284;
      }

      v48 = @"exclave core";
      goto LABEL_177;
    case 0x1F:
      v47 = *(self + 16) | v13;
      v12 = v47 != 0;
      if (!options || !v47)
      {
        goto LABEL_284;
      }

      v48 = @"exclave kit";
LABEL_177:
      v22 = [(__CFString *)v48 mutableCopy];
      if ((tid & 2) != 0)
      {
        v112 = *(self + 24);
        v23 = @" id 0x%llx";
LABEL_179:
        [v22 appendFormat:v23, v112];
      }

LABEL_180:
      v44 = *(self + 16);
      if (!v44)
      {
LABEL_183:
        v45 = @" with unknown owner";
        goto LABEL_184;
      }

LABEL_181:
      if (v44 == pid)
      {
        v45 = @" owned by this thread";
LABEL_184:
        [v22 appendFormat:v45];
        goto LABEL_187;
      }

      v84 = (*(string + 16))(string, 0xFFFFFFFFLL);
      [v22 appendFormat:@" owned by %@", v84];
LABEL_186:

LABEL_187:
      v85 = *optionsCopy;
      *optionsCopy = v22;
LABEL_282:

LABEL_283:
      v12 = 1;
LABEL_284:
      v100 = *MEMORY[0x1E69E9840];
      return v12;
    default:
      v86 = *__error();
      v87 = _sa_logt();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v102 = *(self + MEMORY[0x250]);
        *buf = 67109120;
        v114 = v102;
        _os_log_error_impl(&dword_1E0E2F000, v87, OS_LOG_TYPE_ERROR, "waitinfo has unknown type %u", buf, 8u);
      }

      v12 = 0;
      *__error() = v86;
      goto LABEL_284;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      equalCopy = equal;
      v7 = equalCopy;
      if (self->_type != *(equalCopy + 4) || self->_context != equalCopy[3] || (v8 = -[SABlockingInfo portFlags](self, "portFlags"), v8 != [v7 portFlags]) || (v9 = -[SABlockingInfo portDomain](self, "portDomain"), v9 != objc_msgSend(v7, "portDomain")) || self->_owner != v7[2])
      {
        v17 = 0;
LABEL_18:

        return v17;
      }

      portName = [(SABlockingInfo *)self portName];
      if (!portName)
      {
        portName2 = [v7 portName];
        if (!portName2)
        {
          v17 = 1;
LABEL_24:

          goto LABEL_25;
        }
      }

      portName3 = [(SABlockingInfo *)self portName];
      if (portName3)
      {
        v12 = portName3;
        portName4 = [v7 portName];
        if (portName4)
        {
          v14 = portName4;
          portName5 = [(SABlockingInfo *)self portName];
          portName6 = [v7 portName];
          v17 = [portName5 isEqualToString:portName6];

          if (!portName)
          {
            goto LABEL_24;
          }

LABEL_25:

          goto LABEL_18;
        }
      }

      v17 = 0;
      if (!portName)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }
  }

  return 0;
}

- (int64_t)compare:(id)compare
{
  type = self->_type;
  v4 = *(compare + 4);
  if (type > v4)
  {
    return 1;
  }

  if (type < v4)
  {
    return -1;
  }

  owner = self->_owner;
  v7 = *(compare + 2);
  if (owner > v7)
  {
    return 1;
  }

  if (owner < v7)
  {
    return -1;
  }

  context = self->_context;
  v9 = *(compare + 3);
  if (context > v9)
  {
    return 1;
  }

  if (context >= v9)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (uint64_t)matchesKCDataWaitInfo:(uint64_t)info portName:(uint64_t)name flags:(uint64_t)flags domain:
{
  if (!self || *(self + 8) != *(a2 + 24) || *(self + 24) != *(a2 + 16) || *(self + 16) != *a2 || [self portDomain] != flags || objc_msgSend(self, "portFlags") != name)
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
  type = self->_type;
  context = self->_context;
  owner = self->_owner;
  if (portName)
  {
    portName2 = [(SABlockingInfo *)self portName];
    owner = [v5 initWithFormat:@"[ wait_type:0x%x, context:0x%llx, owner:0x%llx, port name:%@, flags:0x%llx, domain:%llu]", type, context, owner, portName2, -[SABlockingInfo portFlags](self, "portFlags"), -[SABlockingInfo portDomain](self, "portDomain")];
  }

  else
  {
    owner = [v4 initWithFormat:@"[ wait_type:0x%x, context:0x%llx, owner:0x%llx ]", type, self->_context, owner];
  }

  return owner;
}

- (int)blockingPid
{
  v13 = *MEMORY[0x1E69E9840];
  type_low = LOBYTE(self->_type);
  if (type_low > 0x1F)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      type = self->_type;
      v12[0] = 67109120;
      v12[1] = type;
      _os_log_fault_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_FAULT, "waitinfo has unknown type %u", v12, 8u);
    }

    *__error() = v9;
    goto LABEL_3;
  }

  v4 = 1 << type_low;
  if ((v4 & 0xFFFDFFAF) != 0)
  {
LABEL_3:
    result = -1;
    goto LABEL_4;
  }

  if ((v4 & 0x20040) != 0)
  {
    if (SLODWORD(self->_owner) < 0)
    {
      result = -1;
    }

    else
    {
      result = self->_owner;
    }
  }

  else
  {
    owner = self->_owner;
    if (owner == -5 || owner == -3)
    {
      goto LABEL_3;
    }

    if (owner == -2)
    {
      result = 0;
    }

    else if ((owner & 0x80000000) != 0)
    {
      result = -1;
    }

    else
    {
      result = self->_owner;
    }
  }

LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)descriptionForPid:(int)pid tid:(unint64_t)tid options:(unint64_t)options nameCallback:(id)callback
{
  v8 = 0;
  [(SAWaitInfo *)self _displaysContentForPid:pid tid:tid options:options displayString:&v8 nameCallback:callback];
  v6 = v8;

  return v6;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(SAWaitInfo *)self sizeInBytesForSerializedVersion]!= length)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SAWaitInfo *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v14 UTF8String];
      v25 = 2048;
      sizeInBytesForSerializedVersion = [(SAWaitInfo *)self sizeInBytesForSerializedVersion];
      v27 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SAWaitInfo *)self debugDescription];
    uTF8String2 = [v15 UTF8String];
    [(SAWaitInfo *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5741, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, uTF8String2);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 513;
  buffer->var2 = self->_type;
  *(&buffer->var2 + 1) = self->_owner;
  *(&buffer->var3 + 4) = self->_context;
  portName = [(SABlockingInfo *)self portName];
  *(&buffer->var4 + 4) = SASerializableIndexForPointerFromSerializationDictionary(portName, dictionary);

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
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAWaitInfo struct %lu", buf, 0x16u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(5772, "bufferLength %lu < serialized SAWaitInfo struct %lu", v11, v12, v13, v14, v15, v16, length);
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
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAWaitInfo_v2 struct %lu", buf, 0x16u);
    }

    *__error() = v17;
    _SASetCrashLogMessage(5778, "bufferLength %lu < serialized SAWaitInfo_v2 struct %lu", v19, v20, v21, v22, v23, v24, length);
    _os_crash();
    __break(1u);
LABEL_17:
    v25 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAWaitInfo version" userInfo:0];
    objc_exception_throw(v25);
  }

  if (*(buffer + 1) < 2u)
  {
LABEL_9:
    v6 = objc_alloc_init(SAWaitInfo);
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

  v6 = objc_alloc_init(SAWaitInfoWithPortLabel);
  [(SAWaitInfoWithPortLabel *)v6 setPortFlags:*(buffer + 28)];
  [(SAWaitInfoWithPortLabel *)v6 setPortDomain:*(buffer + 36)];
LABEL_10:
  v6->super._type = *(buffer + 2);
  v6->super._owner = *(buffer + 4);
  v6->super._context = *(buffer + 12);
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
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAWaitInfo struct %lu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(5806, "bufferLength %lu < serialized SAWaitInfo struct %lu", v18, v19, v20, v21, v22, v23, length);
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
      _os_log_error_impl(&dword_1E0E2F000, &self->super.super, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAWaitInfo_v2 struct %lu", buf, 0x16u);
    }

    *__error() = v24;
    _SASetCrashLogMessage(5810, "bufferLength %lu < serialized SAWaitInfo_v2 struct %lu", v25, v26, v27, v28, v29, v30, length);
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
      _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "wait info with port info, but class is %s", buf, 0xCu);
    }

    *__error() = v31;
    v34 = object_getClassName(self);
    _SASetCrashLogMessage(5816, "wait info with port info, but class is %s", v35, v36, v37, v38, v39, v40, v34);
    _os_crash();
    __break(1u);
LABEL_21:
    v41 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAWaitInfo version" userInfo:0];
    objc_exception_throw(v41);
  }

  v11 = *(buffer + 20);
  selfCopy = self;
  v13 = objc_opt_class();
  v42 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v13, 0);
  [(SAWaitInfo *)selfCopy setPortName:?];

  v14 = *MEMORY[0x1E69E9840];
}

+ (SAWaitInfo)stateWithPAStyleSerializedWaitInfo:(uint64_t)info
{
  objc_opt_self();
  v3 = objc_alloc_init(SAWaitInfo);
  v3->_type = *(a2 + 24);
  v3->_owner = *(a2 + 8);
  v3->_context = *(a2 + 16);

  return v3;
}

@end