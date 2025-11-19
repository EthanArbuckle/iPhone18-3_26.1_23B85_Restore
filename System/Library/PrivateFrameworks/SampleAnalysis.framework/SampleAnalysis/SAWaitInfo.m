@interface SAWaitInfo
+ (SAWaitInfo)stateWithPAStyleSerializedWaitInfo:(uint64_t)a1;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (id)waitInfoWithKCDataWaitInfo:(void *)a3 portName:(unint64_t)a4 flags:(unint64_t)a5 domain:;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (SAWaitInfo)init;
- (SAWaitInfo)initWithKCDataWaitInfo:(const stackshot_thread_waitinfo_v2 *)a3;
- (id)descriptionForPid:(int)a3 tid:(unint64_t)a4 options:(unint64_t)a5 nameCallback:(id)a6;
- (int)blockingPid;
- (int64_t)compare:(id)a3;
- (uint64_t)_displaysContentForPid:(uint64_t)a3 tid:(char)a4 options:(void *)a5 displayString:(uint64_t)a6 nameCallback:;
- (uint64_t)displaysSameContentAs:(int)a3 forPid:(uint64_t)a4 tid:(char)a5 displayOptions:;
- (uint64_t)matchesKCDataWaitInfo:(uint64_t)a3 portName:(uint64_t)a4 flags:(uint64_t)a5 domain:;
- (unint64_t)blockingTid;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
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

- (SAWaitInfo)initWithKCDataWaitInfo:(const stackshot_thread_waitinfo_v2 *)a3
{
  v5.receiver = self;
  v5.super_class = SAWaitInfo;
  result = [(SABlockingInfo *)&v5 _init];
  if (result)
  {
    result->_owner = a3->owner;
    result->_context = a3->context;
    result->_type = a3->wait_type;
  }

  return result;
}

+ (id)waitInfoWithKCDataWaitInfo:(void *)a3 portName:(unint64_t)a4 flags:(unint64_t)a5 domain:
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  if (a3)
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
    v12 = [[v9 alloc] initWithKCDataWaitInfo:a2];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (uint64_t)displaysSameContentAs:(int)a3 forPid:(uint64_t)a4 tid:(char)a5 displayOptions:
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
      return [(SAWaitInfo *)result _displaysContentForPid:a3 tid:a4 options:a5 displayString:0 nameCallback:0]^ 1;
    }

    if (*(result + 8) != *(a2 + 8))
    {
      return 0;
    }

    if (*(result + 16) != *(a2 + 16))
    {
      return 0;
    }

    v8 = [result portFlags];
    if (v8 != [a2 portFlags])
    {
      return 0;
    }

    v9 = [v6 portDomain];
    if (v9 != [a2 portDomain] || (a5 & 2) != 0 && v6[3] != *(a2 + 24))
    {
      return 0;
    }

    v10 = [v6 portName];
    if (!v10)
    {
      v9 = [a2 portName];
      if (!v9)
      {
        return 1;
      }
    }

    v11 = [v6 portName];
    if (v11)
    {
      v12 = v11;
      v13 = [a2 portName];
      if (v13)
      {
        v14 = v13;
        v15 = [v6 portName];
        v16 = [a2 portName];
        v17 = [v15 isEqualToString:v16];

        if (v10)
        {

          return (v17 & 1) != 0;
        }

        return (v17 & 1) != 0;
      }
    }

    if (v10)
    {
      v9 = v10;
    }

    return 0;
  }

  return result;
}

- (uint64_t)_displaysContentForPid:(uint64_t)a3 tid:(char)a4 options:(void *)a5 displayString:(uint64_t)a6 nameCallback:
{
  v117 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_287:
    v12 = 0;
    goto LABEL_284;
  }

  v7 = a5;
  if ((a5 != 0) != (a6 != 0))
  {
    v103 = *__error();
    v104 = _sa_logt();
    v105 = a6 != 0;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = v7 != 0;
      *buf = 67109376;
      v114 = v7;
      v115 = 1024;
      v116 = v105;
      _os_log_error_impl(&dword_1E0E2F000, v104, OS_LOG_TYPE_ERROR, "string_out:%d StringForPidAndTid:%d", buf, 0xEu);
    }

    else
    {
      LOBYTE(v7) = v7 != 0;
    }

    *__error() = v103;
    _SASetCrashLogMessage(2219, "string_out:%d StringForPidAndTid:%d", v106, v107, v108, v109, v110, v111, v7);
    _os_crash();
    __break(1u);
  }

  v12 = 0;
  v13 = a4 & 1;
  switch(*(a1 + 8))
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
      v42 = *(a1 + 16) | v13;
      v12 = v42 != 0;
      if (a5 && v42)
      {
        v43 = [@"kernel mutex" mutableCopy];
        v22 = v43;
        if ((a4 & 2) != 0)
        {
          [v43 appendFormat:@" address 0x%llx", *(a1 + 24)];
        }

        v44 = *(a1 + 16);
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
      if ((a4 & 1) == 0)
      {
        v24 = [a1 portName];

        if (!v24)
        {
          v25 = *(a1 + 16);
          if (v25 != -3 && v25 != -5)
          {
            goto LABEL_287;
          }
        }
      }

      if (!v7)
      {
        goto LABEL_283;
      }

      v17 = [@"mach_msg receive" mutableCopy];
      if ((a4 & 2) != 0 || ((v27 = *(a1 + 16), v27 != -5) ? (v28 = v27 == -3) : (v28 = 1), v28 || ([a1 portName], v29 = objc_claimAutoreleasedReturnValue(), v29, v29)))
      {
        v30 = *(a1 + 16);
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
        v33 = [a1 portName];

        if (v33)
        {
          v34 = [a1 portName];
          [v17 appendFormat:@" name %@", v34];
        }

        if ([a1 portFlags])
        {
          [v17 appendFormat:@" flags 0x%llx", objc_msgSend(a1, "portFlags")];
        }

        if ([a1 portDomain])
        {
          [v17 appendFormat:@" in domain %llu", objc_msgSend(a1, "portDomain")];
        }

        if ((a4 & 2) != 0)
        {
          [v17 appendFormat:@" address 0x%llx", *(a1 + 24)];
        }

        v35 = *(a1 + 16);
        if (v35 != 0 && v35 < 0xFFFFFFFFFFFFFFFBLL || ((1 << (v35 + 5)) & 0x25) == 0)
        {
          [v17 appendFormat:@" name 0x%llx", *(a1 + 16)];
        }
      }

      goto LABEL_216;
    case 3:
      if ((a4 & 1) != 0 || ([a1 portName], v55 = objc_claimAutoreleasedReturnValue(), v55, v55))
      {
        if (!v7)
        {
          goto LABEL_283;
        }
      }

      else
      {
        v99 = *(a1 + 16);
        v12 = v99 == -4;
        if (!v7 || v99 != -4)
        {
          goto LABEL_284;
        }
      }

      v17 = [@"mach_msg receive" mutableCopy];
      if ((a4 & 2) != 0 || *(a1 + 16) == -4 || ([a1 portName], v56 = objc_claimAutoreleasedReturnValue(), v56, v56))
      {
        if (*(a1 + 16) == -4)
        {
          v57 = @" on locked port set";
        }

        else
        {
          v57 = @" on port set";
        }

        [v17 appendFormat:v57];
        v58 = [a1 portName];

        if (v58)
        {
          v59 = [a1 portName];
          [v17 appendFormat:@" name %@", v59];
        }

        if ([a1 portFlags])
        {
          [v17 appendFormat:@" flags 0x%llx", objc_msgSend(a1, "portFlags")];
        }

        if ([a1 portDomain])
        {
          [v17 appendFormat:@" in domain %llu", objc_msgSend(a1, "portDomain")];
        }

LABEL_111:
        if ((a4 & 2) != 0)
        {
          [v17 appendFormat:@" address 0x%llx", *(a1 + 24)];
        }
      }

      goto LABEL_216;
    case 4:
      if ((a4 & 1) != 0 || ((v63 = *(a1 + 16), (v63 + 3) >= 2) ? (v64 = v63 == -5) : (v64 = 1), v64 || (v63 ? (v97 = v63 <= 0) : (v97 = 1), !v97)))
      {
        if (!a5)
        {
          goto LABEL_283;
        }
      }

      else
      {
        v98 = [a1 portName];
        v12 = v98 != 0;

        if (!v7 || !v98)
        {
          goto LABEL_284;
        }
      }

      v65 = [@"mach_msg send" mutableCopy];
      if ((a4 & 2) != 0 || ((v66 = *(a1 + 16), v66 != -5) ? (v67 = v66 == -3) : (v67 = 1), v67 || ([a1 portName], v68 = objc_claimAutoreleasedReturnValue(), v68, v68)))
      {
        v69 = *(a1 + 16);
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
        v72 = [a1 portName];

        if (v72)
        {
          v73 = [a1 portName];
          [v65 appendFormat:@" name %@", v73];
        }

        if ([a1 portFlags])
        {
          [v65 appendFormat:@" flags 0x%llx", objc_msgSend(a1, "portFlags")];
        }

        if ([a1 portDomain])
        {
          [v65 appendFormat:@" in domain %llu", objc_msgSend(a1, "portDomain")];
        }

        if ((a4 & 2) != 0)
        {
          [v65 appendFormat:@" address 0x%llx", *(a1 + 24)];
        }
      }

      v74 = *(a1 + 16);
      if (v74 > -3)
      {
        if (!v74)
        {
          goto LABEL_255;
        }

        if (v74 == -2)
        {
          v74 = 0;
          *(a1 + 16) = 0;
          goto LABEL_253;
        }
      }

      else if (v74 == -5 || v74 == -3)
      {
        goto LABEL_260;
      }

      goto LABEL_247;
    case 5:
      if (a4)
      {
        if (!a5)
        {
          goto LABEL_283;
        }
      }

      else
      {
        v46 = [a1 portName];
        v12 = v46 != 0;

        if (!v7 || !v46)
        {
          goto LABEL_284;
        }
      }

      v17 = [@"mach_msg send" mutableCopy];
      if ((a4 & 2) != 0)
      {
        goto LABEL_223;
      }

      v89 = [a1 portName];
      if (v89 || [a1 portFlags])
      {
      }

      else if (![a1 portDomain])
      {
        goto LABEL_231;
      }

LABEL_223:
      [v17 appendString:@" on port"];
      v90 = [a1 portName];

      if (v90)
      {
        v91 = [a1 portName];
        [v17 appendFormat:@" name %@", v91];
      }

      if ([a1 portFlags])
      {
        [v17 appendFormat:@" flags 0x%llx", objc_msgSend(a1, "portFlags")];
      }

      if ([a1 portDomain])
      {
        [v17 appendFormat:@" in domain %llu", objc_msgSend(a1, "portDomain")];
      }

      if ((a4 & 2) != 0)
      {
        [v17 appendFormat:@" address 0x%llx", *(a1 + 24)];
      }

LABEL_231:
      [v17 appendString:@" in transit"];
      if (!*(a1 + 16))
      {
        v19 = @" to unknown port";
        goto LABEL_215;
      }

      if ((a4 & 2) != 0)
      {
        [v17 appendFormat:@" to port address 0x%llx", *(a1 + 16)];
      }

      goto LABEL_216;
    case 6:
      v79 = *(a1 + 16);
      if (v79)
      {
        v81 = v79 != a2 && v79 >= 0;
        if ((a4 & 3) == 0 && !v81)
        {
LABEL_171:
          v82 = [a1 portName];
          v12 = v82 != 0;

          if (!v7 || !v82)
          {
            goto LABEL_284;
          }

LABEL_236:
          v65 = [@"semaphore" mutableCopy];
          if ((a4 & 2) != 0 || ([a1 portName], v92 = objc_claimAutoreleasedReturnValue(), v92, v92))
          {
            [v65 appendFormat:@" port"];
            v93 = [a1 portName];

            if (v93)
            {
              v94 = [a1 portName];
              [v65 appendFormat:@" name %@", v94];
            }

            if ([a1 portFlags])
            {
              [v65 appendFormat:@" flags 0x%llx", objc_msgSend(a1, "portFlags")];
            }

            if ([a1 portDomain])
            {
              [v65 appendFormat:@" in domain %llu", objc_msgSend(a1, "portDomain")];
            }

            if ((a4 & 2) != 0)
            {
              [v65 appendFormat:@" address 0x%llx", *(a1 + 24)];
            }
          }

          v74 = *(a1 + 16);
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
                v96 = (*(a6 + 16))(a6, v74, 0);
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
          v85 = *v7;
          *v7 = v65;
          goto LABEL_282;
        }
      }

      else if ((a4 & 3) == 0)
      {
        goto LABEL_171;
      }

      if (!a5)
      {
        goto LABEL_283;
      }

      goto LABEL_236;
    case 7:
      v38 = *(a1 + 16) | v13;
      v12 = v38 != 0;
      if (!a5 || !v38)
      {
        goto LABEL_284;
      }

      v39 = [@"krwlock" mutableCopy];
      v22 = v39;
      if ((a4 & 2) != 0)
      {
        [v39 appendFormat:@" address 0x%llx", *(a1 + 24)];
      }

      v23 = @" for reading";
      goto LABEL_179;
    case 8:
      v77 = *(a1 + 16) | v13;
      v12 = v77 != 0;
      if (!a5 || !v77)
      {
        goto LABEL_284;
      }

      v78 = [@"krwlock" mutableCopy];
      v22 = v78;
      if ((a4 & 2) != 0)
      {
        [v78 appendFormat:@" address 0x%llx", *(a1 + 24)];
      }

      v23 = @" for writing";
      goto LABEL_179;
    case 9:
      v20 = *(a1 + 16) | v13;
      v12 = v20 != 0;
      if (!a5 || !v20)
      {
        goto LABEL_284;
      }

      v21 = [@"krwlock" mutableCopy];
      v22 = v21;
      if ((a4 & 2) != 0)
      {
        [v21 appendFormat:@" address 0x%llx", *(a1 + 24)];
      }

      v23 = @" for upgrading";
      goto LABEL_179;
    case 0xA:
      v36 = *(a1 + 16) | v13;
      v12 = v36 != 0;
      if (!a5 || !v36)
      {
        goto LABEL_284;
      }

      v37 = @"user lock";
      goto LABEL_121;
    case 0xB:
      v62 = *(a1 + 16) | v13;
      v12 = v62 != 0;
      if (!a5 || !v62)
      {
        goto LABEL_284;
      }

      v37 = @"pthread mutex";
LABEL_121:
      v22 = [(__CFString *)v37 mutableCopy];
      if ((a4 & 2) != 0)
      {
        [v22 appendFormat:@" address 0x%llx", *(a1 + 24)];
      }

      goto LABEL_180;
    case 0xC:
      if ((a4 & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = a4 & 1;
      if (!a5)
      {
        goto LABEL_284;
      }

      v18 = [@"pthread rwlock" mutableCopy];
      v17 = v18;
      if ((a4 & 2) != 0)
      {
        [v18 appendFormat:@" address 0x%llx", *(a1 + 24)];
      }

      v19 = @" for reading";
      goto LABEL_215;
    case 0xD:
      if ((a4 & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = a4 & 1;
      if (!a5)
      {
        goto LABEL_284;
      }

      v41 = [@"pthread rwlock" mutableCopy];
      v17 = v41;
      if ((a4 & 2) != 0)
      {
        [v41 appendFormat:@" address 0x%llx", *(a1 + 24)];
      }

      v19 = @" for writing";
      goto LABEL_215;
    case 0xE:
      if ((a4 & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = a4 & 1;
      if (!a5)
      {
        goto LABEL_284;
      }

      v17 = [@"pthread condvar" mutableCopy];
      goto LABEL_111;
    case 0xF:
    case 0x15:
      goto LABEL_284;
    case 0x10:
      if (!a5)
      {
        goto LABEL_283;
      }

      v49 = [@"queue" mutableCopy];
      v22 = v49;
      if ((a4 & 2) != 0)
      {
        [v49 appendFormat:@" workloop address 0x%llx", *(a1 + 24)];
      }

      v50 = *(a1 + 16);
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

      if (v50 == a3)
      {
        v45 = @" processed by this thread";
        goto LABEL_184;
      }

      if (v50)
      {
        v84 = (*(a6 + 16))(a6, 0xFFFFFFFFLL);
        [v22 appendFormat:@" processed by %@", v84];
        goto LABEL_186;
      }

      v45 = @" in a transient state";
      goto LABEL_184;
    case 0x11:
      if (!a5)
      {
        goto LABEL_283;
      }

      v52 = [@"wait4" mutableCopy];
      v75 = *(a1 + 16);
      if (v75 == -1)
      {
        v54 = @" on any child process";
      }

      else
      {
        if ((v75 & 0x8000000000000000) == 0)
        {
          v76 = (*(a6 + 16))(a6);
          [v52 appendFormat:@" on %@", v76];
          goto LABEL_278;
        }

        v112 = -v75;
        v54 = @" on any process in pgrp %lld";
      }

      goto LABEL_280;
    case 0x12:
      v88 = *(a1 + 16) | v13;
      v12 = v88 != 0;
      if (!a5 || !v88)
      {
        goto LABEL_284;
      }

      v52 = [@"turnstile" mutableCopy];
      v53 = *(a1 + 16);
      if (v53)
      {
        goto LABEL_199;
      }

      v54 = @" with unknown owner";
      goto LABEL_280;
    case 0x13:
      v51 = *(a1 + 16) | v13;
      v12 = v51 != 0;
      if (!a5 || !v51)
      {
        goto LABEL_284;
      }

      v52 = [@"event link" mutableCopy];
      v53 = *(a1 + 16);
      if (!v53)
      {
        v54 = @" (held)";
        goto LABEL_280;
      }

LABEL_199:
      if (v53 == a3)
      {
        v54 = @" owned by this thread";
        goto LABEL_280;
      }

      v76 = (*(a6 + 16))(a6, 0xFFFFFFFFLL);
      [v52 appendFormat:@" owned by %@", v76];
      goto LABEL_278;
    case 0x14:
      v60 = *(a1 + 16) | v13;
      v12 = v60 != 0;
      if (!a5 || !v60)
      {
        goto LABEL_284;
      }

      v52 = [@"compressor segment" mutableCopy];
      v61 = *(a1 + 16);
      if (!v61)
      {
        v54 = @" busy for unknown thread";
        goto LABEL_280;
      }

      if (v61 == a3)
      {
        v54 = @" busy for this thread";
LABEL_280:
        [v52 appendFormat:v54, v112];
        goto LABEL_281;
      }

      v76 = (*(a6 + 16))(a6, 0xFFFFFFFFLL);
      [v52 appendFormat:@" busy for thread %@", v76];
LABEL_278:

LABEL_281:
      v85 = *v7;
      *v7 = v52;
      goto LABEL_282;
    case 0x16:
      if ((a4 & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = a4 & 1;
      if (!a5)
      {
        goto LABEL_284;
      }

      v16 = @"busy page";
      goto LABEL_194;
    case 0x17:
      if ((a4 & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = a4 & 1;
      if (!a5)
      {
        goto LABEL_284;
      }

      v40 = @"pager initialization";
      goto LABEL_213;
    case 0x18:
      if ((a4 & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = a4 & 1;
      if (!a5)
      {
        goto LABEL_284;
      }

      v40 = @"pager ready";
      goto LABEL_213;
    case 0x19:
      if ((a4 & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = a4 & 1;
      if (!a5)
      {
        goto LABEL_284;
      }

      v40 = @"paging/activity in progress";
      goto LABEL_213;
    case 0x1A:
      if ((a4 & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = a4 & 1;
      if (!a5)
      {
        goto LABEL_284;
      }

      v40 = @"mapping in progress";
      goto LABEL_213;
    case 0x1B:
      if ((a4 & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = a4 & 1;
      if (!a5)
      {
        goto LABEL_284;
      }

      v16 = @"blocked vm object";
LABEL_194:
      v17 = [(__CFString *)v16 mutableCopy];
      if ((a4 & 2) != 0)
      {
        [v17 appendFormat:@" 0x%llx", *(a1 + 24)];
      }

      goto LABEL_216;
    case 0x1C:
      if ((a4 & 1) == 0)
      {
        goto LABEL_217;
      }

      v12 = a4 & 1;
      if (!a5)
      {
        goto LABEL_284;
      }

      v40 = @"paging in progress";
      goto LABEL_213;
    case 0x1D:
      if ((a4 & 1) == 0)
      {
LABEL_217:
        v12 = a4 & 1;
        goto LABEL_284;
      }

      v12 = a4 & 1;
      if (!a5)
      {
        goto LABEL_284;
      }

      v40 = @"pagein throttle";
LABEL_213:
      v17 = [(__CFString *)v40 mutableCopy];
      if ((a4 & 2) != 0)
      {
        v112 = *(a1 + 24);
        v19 = @" for vm object 0x%llx";
LABEL_215:
        [v17 appendFormat:v19, v112];
      }

LABEL_216:
      v85 = *v7;
      *v7 = v17;
      goto LABEL_282;
    case 0x1E:
      v83 = *(a1 + 16) | v13;
      v12 = v83 != 0;
      if (!a5 || !v83)
      {
        goto LABEL_284;
      }

      v48 = @"exclave core";
      goto LABEL_177;
    case 0x1F:
      v47 = *(a1 + 16) | v13;
      v12 = v47 != 0;
      if (!a5 || !v47)
      {
        goto LABEL_284;
      }

      v48 = @"exclave kit";
LABEL_177:
      v22 = [(__CFString *)v48 mutableCopy];
      if ((a4 & 2) != 0)
      {
        v112 = *(a1 + 24);
        v23 = @" id 0x%llx";
LABEL_179:
        [v22 appendFormat:v23, v112];
      }

LABEL_180:
      v44 = *(a1 + 16);
      if (!v44)
      {
LABEL_183:
        v45 = @" with unknown owner";
        goto LABEL_184;
      }

LABEL_181:
      if (v44 == a3)
      {
        v45 = @" owned by this thread";
LABEL_184:
        [v22 appendFormat:v45];
        goto LABEL_187;
      }

      v84 = (*(a6 + 16))(a6, 0xFFFFFFFFLL);
      [v22 appendFormat:@" owned by %@", v84];
LABEL_186:

LABEL_187:
      v85 = *v7;
      *v7 = v22;
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
        v102 = *(a1 + MEMORY[0x250]);
        *buf = 67109120;
        v114 = v102;
        _os_log_error_impl(&dword_1E0E2F000, v87, OS_LOG_TYPE_ERROR, "waitinfo has unknown type %u", buf, 8u);
      }

      v12 = 0;
      *__error() = v86;
      goto LABEL_284;
  }
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = a3;
      v7 = v6;
      if (self->_type != *(v6 + 4) || self->_context != v6[3] || (v8 = -[SABlockingInfo portFlags](self, "portFlags"), v8 != [v7 portFlags]) || (v9 = -[SABlockingInfo portDomain](self, "portDomain"), v9 != objc_msgSend(v7, "portDomain")) || self->_owner != v7[2])
      {
        v17 = 0;
LABEL_18:

        return v17;
      }

      v10 = [(SABlockingInfo *)self portName];
      if (!v10)
      {
        v3 = [v7 portName];
        if (!v3)
        {
          v17 = 1;
LABEL_24:

          goto LABEL_25;
        }
      }

      v11 = [(SABlockingInfo *)self portName];
      if (v11)
      {
        v12 = v11;
        v13 = [v7 portName];
        if (v13)
        {
          v14 = v13;
          v15 = [(SABlockingInfo *)self portName];
          v16 = [v7 portName];
          v17 = [v15 isEqualToString:v16];

          if (!v10)
          {
            goto LABEL_24;
          }

LABEL_25:

          goto LABEL_18;
        }
      }

      v17 = 0;
      if (!v10)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }
  }

  return 0;
}

- (int64_t)compare:(id)a3
{
  type = self->_type;
  v4 = *(a3 + 4);
  if (type > v4)
  {
    return 1;
  }

  if (type < v4)
  {
    return -1;
  }

  owner = self->_owner;
  v7 = *(a3 + 2);
  if (owner > v7)
  {
    return 1;
  }

  if (owner < v7)
  {
    return -1;
  }

  context = self->_context;
  v9 = *(a3 + 3);
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

- (uint64_t)matchesKCDataWaitInfo:(uint64_t)a3 portName:(uint64_t)a4 flags:(uint64_t)a5 domain:
{
  if (!a1 || *(a1 + 8) != *(a2 + 24) || *(a1 + 24) != *(a2 + 16) || *(a1 + 16) != *a2 || [a1 portDomain] != a5 || objc_msgSend(a1, "portFlags") != a4)
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
  type = self->_type;
  context = self->_context;
  owner = self->_owner;
  if (v3)
  {
    v9 = [(SABlockingInfo *)self portName];
    v10 = [v5 initWithFormat:@"[ wait_type:0x%x, context:0x%llx, owner:0x%llx, port name:%@, flags:0x%llx, domain:%llu]", type, context, owner, v9, -[SABlockingInfo portFlags](self, "portFlags"), -[SABlockingInfo portDomain](self, "portDomain")];
  }

  else
  {
    v10 = [v4 initWithFormat:@"[ wait_type:0x%x, context:0x%llx, owner:0x%llx ]", type, self->_context, owner];
  }

  return v10;
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

- (id)descriptionForPid:(int)a3 tid:(unint64_t)a4 options:(unint64_t)a5 nameCallback:(id)a6
{
  v8 = 0;
  [(SAWaitInfo *)self _displaysContentForPid:a3 tid:a4 options:a5 displayString:&v8 nameCallback:a6];
  v6 = v8;

  return v6;
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(SAWaitInfo *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SAWaitInfo *)self debugDescription];
      *buf = 136315650;
      v24 = [v14 UTF8String];
      v25 = 2048;
      v26 = [(SAWaitInfo *)self sizeInBytesForSerializedVersion];
      v27 = 2048;
      v28 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SAWaitInfo *)self debugDescription];
    v16 = [v15 UTF8String];
    [(SAWaitInfo *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5741, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, v16);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 513;
  a3->var2 = self->_type;
  *(&a3->var2 + 1) = self->_owner;
  *(&a3->var3 + 4) = self->_context;
  v9 = [(SABlockingInfo *)self portName];
  *(&a3->var4 + 4) = SASerializableIndexForPointerFromSerializationDictionary(v9, a5);

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
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAWaitInfo struct %lu", buf, 0x16u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(5772, "bufferLength %lu < serialized SAWaitInfo struct %lu", v11, v12, v13, v14, v15, v16, a4);
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
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAWaitInfo_v2 struct %lu", buf, 0x16u);
    }

    *__error() = v17;
    _SASetCrashLogMessage(5778, "bufferLength %lu < serialized SAWaitInfo_v2 struct %lu", v19, v20, v21, v22, v23, v24, a4);
    _os_crash();
    __break(1u);
LABEL_17:
    v25 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAWaitInfo version" userInfo:0];
    objc_exception_throw(v25);
  }

  if (*(a3 + 1) < 2u)
  {
LABEL_9:
    v6 = objc_alloc_init(SAWaitInfo);
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

  v6 = objc_alloc_init(SAWaitInfoWithPortLabel);
  [(SAWaitInfoWithPortLabel *)v6 setPortFlags:*(a3 + 28)];
  [(SAWaitInfoWithPortLabel *)v6 setPortDomain:*(a3 + 36)];
LABEL_10:
  v6->super._type = *(a3 + 2);
  v6->super._owner = *(a3 + 4);
  v6->super._context = *(a3 + 12);
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
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAWaitInfo struct %lu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(5806, "bufferLength %lu < serialized SAWaitInfo struct %lu", v18, v19, v20, v21, v22, v23, a4);
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
      _os_log_error_impl(&dword_1E0E2F000, &self->super.super, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAWaitInfo_v2 struct %lu", buf, 0x16u);
    }

    *__error() = v24;
    _SASetCrashLogMessage(5810, "bufferLength %lu < serialized SAWaitInfo_v2 struct %lu", v25, v26, v27, v28, v29, v30, a4);
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

  v11 = *(a3 + 20);
  v12 = self;
  v13 = objc_opt_class();
  v42 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v13, 0);
  [(SAWaitInfo *)v12 setPortName:?];

  v14 = *MEMORY[0x1E69E9840];
}

+ (SAWaitInfo)stateWithPAStyleSerializedWaitInfo:(uint64_t)a1
{
  objc_opt_self();
  v3 = objc_alloc_init(SAWaitInfo);
  v3->_type = *(a2 + 24);
  v3->_owner = *(a2 + 8);
  v3->_context = *(a2 + 16);

  return v3;
}

@end