@interface SATimestamp
+ (SATimestamp)timestampWithMachAbsTime:(unint64_t)a3 machAbsTimeSec:(double)a4 machContTime:(unint64_t)a5 machContTimeSec:(double)a6 wallTime:(double)a7;
+ (SATimestamp)timestampWithMachAbsTime:(unint64_t)a3 machContTime:(unint64_t)a4 wallTime:(double)a5 machTimebase:(mach_timebase_info)a6;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (id)now;
+ (id)timestampWithKTraceEvent:(uint64_t)a1 fromSession:(int *)a2;
+ (id)timestampWithMachAbsTime:(uint64_t)a1 fromKtraceSession:(uint64_t)a2;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (SATimestamp)initWithMachAbsTime:(unint64_t)a3 machAbsTimeSec:(double)a4 machContTime:(unint64_t)a5 machContTimeSec:(double)a6 wallTime:(double)a7;
- (double)deltaSecondsTo:(id)a3 timeDomainPriorityList:(id)a4 timeDomainUsed:(unint64_t *)a5;
- (id)copyDate;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (int64_t)deltaMachTo:(id)a3 timeDomainPriorityList:(id)a4 timeDomainUsed:(unint64_t *)a5;
- (uint64_t)applyMachTimebase:(uint64_t)result;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)guessMissingTimesBasedOnCurrentTime;
- (void)guessMissingTimesBasedOnTimestamp:(id)a3;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SATimestamp

+ (id)now
{
  mach_get_times();
  v3 = *MEMORY[0x1E695E468];
  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_9);
  }

  v4 = [a1 timestampWithMachAbsTime:0 machContTime:0 wallTime:qword_1EDD032B0 machTimebase:{0 - v3 + 0 / 1000000000.0, 0, 0, 0, 0}];

  return v4;
}

- (SATimestamp)initWithMachAbsTime:(unint64_t)a3 machAbsTimeSec:(double)a4 machContTime:(unint64_t)a5 machContTimeSec:(double)a6 wallTime:(double)a7
{
  v13.receiver = self;
  v13.super_class = SATimestamp;
  result = [(SATimestamp *)&v13 init];
  if (result)
  {
    result->_machAbsTime = a3;
    result->_machAbsTimeSeconds = a4;
    result->_machContTime = a5;
    result->_machContTimeSeconds = a6;
    result->_wallTime = a7;
  }

  return result;
}

+ (SATimestamp)timestampWithMachAbsTime:(unint64_t)a3 machAbsTimeSec:(double)a4 machContTime:(unint64_t)a5 machContTimeSec:(double)a6 wallTime:(double)a7
{
  v7 = [[a1 alloc] initWithMachAbsTime:a3 machAbsTimeSec:a5 machContTime:a4 machContTimeSec:a6 wallTime:a7];

  return v7;
}

+ (SATimestamp)timestampWithMachAbsTime:(unint64_t)a3 machContTime:(unint64_t)a4 wallTime:(double)a5 machTimebase:(mach_timebase_info)a6
{
  v10 = 0;
  v11 = 0.0;
  if (a6.denom && a6.numer)
  {
    if (a6.numer == a6.denom)
    {
      v11 = a3 / 1000000000.0;
      v10 = a4;
    }

    else
    {
      v11 = __udivti3() / 1000000000.0;
      v10 = __udivti3();
    }
  }

  return [a1 timestampWithMachAbsTime:a3 machAbsTimeSec:a4 machContTime:v11 machContTimeSec:v10 / 1000000000.0 wallTime:a5];
}

+ (id)timestampWithKTraceEvent:(uint64_t)a1 fromSession:(int *)a2
{
  v3 = objc_opt_self();
  v4 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  v6 = *a2;
  continuous_from_timestamp = ktrace_get_continuous_from_timestamp();
  ns_from_timestamp = ktrace_get_ns_from_timestamp();
  v9 = ktrace_get_ns_from_timestamp();
  v10 = *(a2 + 7);
  if (v10)
  {
    v11 = a2[16] / 1000000.0 + v10 - *MEMORY[0x1E695E468];
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v12 = *a2;
    v13 = ktrace_convert_timestamp_to_walltime();
    v11 = 0.0;
    if (!v13)
    {
      v11 = 0 - *MEMORY[0x1E695E468] + 0 / 1000000000.0;
    }
  }

  v14 = [v3 timestampWithMachAbsTime:absolute_from_timestamp machAbsTimeSec:continuous_from_timestamp machContTime:ns_from_timestamp / 1000000000.0 machContTimeSec:v9 / 1000000000.0 wallTime:{v11, v16, v17}];

  return v14;
}

+ (id)timestampWithMachAbsTime:(uint64_t)a1 fromKtraceSession:(uint64_t)a2
{
  objc_opt_self();
  ns_from_timestamp = ktrace_get_ns_from_timestamp();
  continuous_from_absolute = ktrace_get_continuous_from_absolute();
  v5 = ktrace_get_ns_from_timestamp();
  v6 = ktrace_convert_absolute_to_walltime();
  v7 = 0.0;
  if (!v6)
  {
    v7 = 0 - *MEMORY[0x1E695E468] + 0 / 1000000000.0;
  }

  v8 = [SATimestamp timestampWithMachAbsTime:a2 machAbsTimeSec:continuous_from_absolute machContTime:ns_from_timestamp / 1000000000.0 machContTimeSec:v5 / 1000000000.0 wallTime:v7, 0, 0];

  return v8;
}

- (int64_t)compare:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (self == a3)
  {
    result = 0;
LABEL_25:
    v11 = *MEMORY[0x1E69E9840];
    return result;
  }

  machAbsTime = self->_machAbsTime;
  if (machAbsTime && (v4 = *(a3 + 1)) != 0 || (machAbsTime = self->_machContTime) != 0 && (v4 = *(a3 + 3)) != 0)
  {
    v5 = machAbsTime > v4;
    if (machAbsTime >= v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }

    if (v5)
    {
      result = 1;
    }

    else
    {
      result = v6;
    }

    goto LABEL_25;
  }

  machAbsTimeSeconds = self->_machAbsTimeSeconds;
  if (machAbsTimeSeconds != 0.0 && (v9 = *(a3 + 2), v9 != 0.0) || (machAbsTimeSeconds = self->_machContTimeSeconds, machAbsTimeSeconds != 0.0) && (v9 = *(a3 + 4), v9 != 0.0) || (machAbsTimeSeconds = self->_wallTime, machAbsTimeSeconds != 0.0) && (v9 = *(a3 + 5), v9 != 0.0))
  {
    if (machAbsTimeSeconds >= v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }

    if (machAbsTimeSeconds <= v9)
    {
      result = v10;
    }

    else
    {
      result = 1;
    }

    goto LABEL_25;
  }

  v12 = *__error();
  v13 = _sa_logt();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [(SATimestamp *)self debugDescription];
    v15 = [v14 UTF8String];
    v16 = [a3 debugDescription];
    *buf = 136315394;
    v29 = v15;
    v30 = 2080;
    v31 = [v16 UTF8String];
    _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "Incomparable timestamps: %s vs %s", buf, 0x16u);
  }

  *__error() = v12;
  v17 = [(SATimestamp *)self debugDescription];
  v18 = [v17 UTF8String];
  v19 = [a3 debugDescription];
  [v19 UTF8String];
  _SASetCrashLogMessage(176, "Incomparable timestamps: %s vs %s", v20, v21, v22, v23, v24, v25, v18);

  result = _os_crash();
  __break(1u);
  return result;
}

- (double)deltaSecondsTo:(id)a3 timeDomainPriorityList:(id)a4 timeDomainUsed:(unint64_t *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = a4;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v35;
    *&v10 = 134217984;
    v33 = v10;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [v14 unsignedLongLongValue];
        switch(v15)
        {
          case 16:
            [(SATimestamp *)self machContTimeSeconds];
            if (v20 != 0.0)
            {
              [a3 machContTimeSeconds];
              if (v21 != 0.0)
              {
                if (a5)
                {
                  *a5 = 16;
                }

                [a3 machContTimeSeconds];
                v27 = v26;
                [(SATimestamp *)self machContTimeSeconds];
                goto LABEL_34;
              }
            }

            break;
          case 4:
            [(SATimestamp *)self machAbsTimeSeconds];
            if (v18 != 0.0)
            {
              [a3 machAbsTimeSeconds];
              if (v19 != 0.0)
              {
                if (a5)
                {
                  *a5 = 4;
                }

                [a3 machAbsTimeSeconds];
                v27 = v29;
                [(SATimestamp *)self machAbsTimeSeconds];
                goto LABEL_34;
              }
            }

            break;
          case 1:
            [(SATimestamp *)self wallTime];
            if (v16 != 0.0)
            {
              [a3 wallTime];
              if (v17 != 0.0)
              {
                if (a5)
                {
                  *a5 = 1;
                }

                [a3 wallTime];
                v27 = v30;
                [(SATimestamp *)self wallTime];
LABEL_34:
                v25 = v27 - v28;

                goto LABEL_35;
              }
            }

            break;
          default:
            v22 = *__error();
            v23 = _sa_logt();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              v24 = [v14 unsignedLongLongValue];
              *buf = v33;
              v39 = v24;
              _os_log_fault_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_FAULT, "Invalid time domain 0x%llx", buf, 0xCu);
            }

            *__error() = v22;
            break;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0.0;
  if (a5)
  {
    *a5 = 0;
  }

LABEL_35:
  v31 = *MEMORY[0x1E69E9840];
  return v25;
}

- (int64_t)deltaMachTo:(id)a3 timeDomainPriorityList:(id)a4 timeDomainUsed:(unint64_t *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = a4;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v26;
    *&v10 = 134217984;
    v24 = v10;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v14 unsignedLongLongValue];
        if (v15 == 2)
        {
          if (-[SATimestamp machAbsTime](self, "machAbsTime") && [a3 machAbsTime])
          {
            if (a5)
            {
              *a5 = 2;
            }

            v20 = [a3 machAbsTime];
            v21 = [(SATimestamp *)self machAbsTime];
            goto LABEL_27;
          }
        }

        else if (v15 == 8)
        {
          if (-[SATimestamp machContTime](self, "machContTime") && [a3 machContTime])
          {
            if (a5)
            {
              *a5 = 8;
            }

            v20 = [a3 machContTime];
            v21 = [(SATimestamp *)self machContTime];
LABEL_27:
            v19 = v20 - v21;

            goto LABEL_28;
          }
        }

        else
        {
          v16 = *__error();
          v17 = _sa_logt();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            v18 = [v14 unsignedLongLongValue];
            *buf = v24;
            v30 = v18;
            _os_log_fault_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_FAULT, "Invalid time domain 0x%llx", buf, 0xCu);
          }

          *__error() = v16;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
  if (a5)
  {
    *a5 = 0;
  }

LABEL_28:
  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)guessMissingTimesBasedOnTimestamp:(id)a3
{
  v121 = *MEMORY[0x1E69E9840];
  if (!self->_machAbsTime || self->_machAbsTimeSeconds == 0.0 || !self->_machContTime || self->_machContTimeSeconds == 0.0 || self->_wallTime == 0.0)
  {
    v110 = 0;
    v111 = &v110;
    v112 = 0x2810000000;
    v113 = "";
    v114 = 0;
    v106 = 0;
    v107 = &v106;
    v108 = 0x2020000000;
    v109 = 0;
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke;
    v105[3] = &unk_1E86F7220;
    v105[4] = a3;
    v105[5] = self;
    v105[6] = &v106;
    v105[7] = &v110;
    v4 = MEMORY[0x1E12EBE50](v105, a2);
    v4[2]();
    v101 = 0;
    v102 = &v101;
    v103 = 0x2020000000;
    v104 = 0;
    v97 = 0;
    v98 = &v97;
    v99 = 0x2020000000;
    v100 = 0;
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke_4;
    v96[3] = &unk_1E86F7220;
    v96[4] = self;
    v96[5] = a3;
    v96[6] = &v97;
    v96[7] = &v101;
    v5 = MEMORY[0x1E12EBE50](v96);
    v5[2]();
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v95 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x2020000000;
    v91 = 0;
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke_2;
    v87[3] = &unk_1E86F7220;
    v87[4] = self;
    v87[5] = a3;
    v87[6] = &v88;
    v87[7] = &v92;
    v6 = MEMORY[0x1E12EBE50](v87);
    v6[2]();
    v7 = 0;
    while (1)
    {
      if (v107[3] == 0.0)
      {
        v12 = 0;
        goto LABEL_87;
      }

      machAbsTimeSeconds = self->_machAbsTimeSeconds;
      if (!self->_machAbsTime)
      {
        if (machAbsTimeSeconds == 0.0)
        {
LABEL_32:
          v12 = 0;
          goto LABEL_54;
        }

        if (!v7)
        {
          v7 = [(SATimestamp *)self copy];
        }

        v13 = v111;
        if (*(v111 + 8))
        {
          v14 = self->_machAbsTimeSeconds;
          if (*(v111 + 9))
          {
            v15 = v111[4];
            if (HIDWORD(v15))
            {
              v16 = v15 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (v16)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v14 * 1000000000.0);
              if (HIDWORD(v15) != v15)
              {
                v17 = __udivti3();
              }
            }

            self->_machAbsTime = v17;
            v20 = v13[4];
            if (HIDWORD(v20))
            {
              v21 = v20 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (v21)
            {
              v17 = 0;
            }

            else if (v20 != HIDWORD(v20))
            {
              v17 = __udivti3();
            }

            v19 = 1000000000.0;
            goto LABEL_52;
          }
        }

        else
        {
          v14 = self->_machAbsTimeSeconds;
        }

        v19 = v107[3];
        v17 = (v14 * v19);
        self->_machAbsTime = v17;
LABEL_52:
        self->_machAbsTimeSeconds = v17 / v19;
        (v4[2])(v4);
        (v5[2])(v5);
        (v6[2])(v6);
        goto LABEL_53;
      }

      if (machAbsTimeSeconds != 0.0)
      {
        goto LABEL_32;
      }

      if (!v7)
      {
        v7 = [(SATimestamp *)self copy];
      }

      if (*(v111 + 8))
      {
        machAbsTime = self->_machAbsTime;
        if (*(v111 + 9))
        {
          v10 = v111[4];
          if (HIDWORD(v10))
          {
            v11 = v10 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            machAbsTime = 0;
          }

          else if (v10 != HIDWORD(v10))
          {
            machAbsTime = __udivti3();
          }

          v18 = machAbsTime / 1000000000.0;
          goto LABEL_40;
        }
      }

      else
      {
        machAbsTime = self->_machAbsTime;
      }

      v18 = machAbsTime / v107[3];
LABEL_40:
      self->_machAbsTimeSeconds = v18;
      (v4[2])(v4);
      (v5[2])(v5);
      (v6[2])(v6);
LABEL_53:
      v12 = 1;
LABEL_54:
      machContTimeSeconds = self->_machContTimeSeconds;
      if (!self->_machContTime)
      {
        if (machContTimeSeconds == 0.0)
        {
          goto LABEL_87;
        }

        if (!v7)
        {
          v7 = [(SATimestamp *)self copy];
        }

        v27 = v111;
        if (*(v111 + 8))
        {
          v28 = self->_machContTimeSeconds;
          if (*(v111 + 9))
          {
            v29 = 0;
            v30 = v111[4];
            if (HIDWORD(v30))
            {
              if (v30)
              {
                v29 = (v28 * 1000000000.0);
                if (HIDWORD(v30) != v30)
                {
                  v29 = __udivti3();
                }
              }
            }

            v31 = 0;
            self->_machContTime = v29;
            v32 = v27[4];
            if (HIDWORD(v32))
            {
              v33 = 1000000000.0;
              if (v32)
              {
                if (v32 != HIDWORD(v32))
                {
                  v29 = __udivti3();
                }

                v31 = v29;
                goto LABEL_79;
              }
            }

            else
            {
LABEL_79:
              v33 = 1000000000.0;
            }

LABEL_85:
            self->_machContTimeSeconds = v31 / v33;
            (v4[2])(v4);
            (v5[2])(v5);
            (v6[2])(v6);
            goto LABEL_86;
          }
        }

        else
        {
          v28 = self->_machContTimeSeconds;
        }

        v33 = v107[3];
        v31 = (v28 * v33);
        self->_machContTime = v31;
        goto LABEL_85;
      }

      if (machContTimeSeconds != 0.0)
      {
        goto LABEL_87;
      }

      if (!v7)
      {
        v7 = [(SATimestamp *)self copy];
      }

      if (*(v111 + 8))
      {
        machContTime = self->_machContTime;
        if (*(v111 + 9))
        {
          v24 = 0;
          v25 = v111[4];
          if (HIDWORD(v25))
          {
            if (v25)
            {
              v24 = self->_machContTime;
              if (v25 != HIDWORD(v25))
              {
                v24 = __udivti3();
              }
            }
          }

          v26 = v24 / 1000000000.0;
          goto LABEL_82;
        }
      }

      else
      {
        machContTime = self->_machContTime;
      }

      v26 = machContTime / v107[3];
LABEL_82:
      self->_machContTimeSeconds = v26;
      (v4[2])(v4);
      (v5[2])(v5);
      (v6[2])(v6);
LABEL_86:
      v12 = 1;
LABEL_87:
      if (*(v89 + 24) != 1)
      {
        goto LABEL_92;
      }

      if (!self->_machAbsTime)
      {
        v36 = *(a3 + 1);
        if (v36)
        {
          v37 = v93[3] + v36;
          if (v37 > self->_machContTime)
          {
            v38 = *__error();
            v39 = _sa_logt();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v82 = v93[3];
              if (v7)
              {
                v55 = v7;
              }

              else
              {
                v55 = self;
              }

              v85 = [(SATimestamp *)v55 debugDescription];
              v56 = [a3 debugDescription];
              *buf = 134218498;
              v116 = v82;
              v117 = 2114;
              v118 = *&v85;
              v119 = 2114;
              v120 = v56;
              v83 = v56;
              _os_log_debug_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_DEBUG, "guessing missing timestamps: underflowed mach abs time with delta %llu:\n%{public}@ based on\n%{public}@", buf, 0x20u);
            }

            *__error() = v38;
            goto LABEL_89;
          }

          if (!v7)
          {
            v7 = [(SATimestamp *)self copy];
            v37 = v93[3] + *(a3 + 1);
          }

          self->_machAbsTime = v37;
          v50 = v107[3];
          if (v50 != 0.0)
          {
            if (*(v111 + 8) && *(v111 + 9))
            {
              v51 = 0;
              v52 = v111[4];
              if (!HIDWORD(v52))
              {
                goto LABEL_147;
              }

              v50 = 1000000000.0;
              if (v52)
              {
                if (v52 == HIDWORD(v52))
                {
                  v51 = v37;
                }

                else
                {
                  v51 = __udivti3();
                }

LABEL_147:
                v50 = 1000000000.0;
              }
            }

            else
            {
              v51 = v37;
            }

            self->_machAbsTimeSeconds = v51 / v50;
          }

          (v4[2])(v4);
          (v5[2])(v5);
          (v6[2])(v6);
          v12 = 1;
        }
      }

LABEL_89:
      if (self->_machContTime || (v40 = *(a3 + 3)) == 0)
      {
        if ((v12 & 1) == 0)
        {
          v12 = 0;
          if (*(v98 + 24) != 1)
          {
            goto LABEL_127;
          }

LABEL_92:
          if (self->_machAbsTimeSeconds == 0.0)
          {
            v34 = *(a3 + 2);
            if (v34 != 0.0)
            {
              v35 = v34 + v102[3];
              if (v35 <= 0.0)
              {
                v45 = *__error();
                v46 = _sa_logt();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  v80 = *(v102 + 3);
                  if (v7)
                  {
                    v53 = v7;
                  }

                  else
                  {
                    v53 = self;
                  }

                  v84 = [(SATimestamp *)v53 debugDescription];
                  v54 = [a3 debugDescription];
                  *buf = 134218498;
                  v116 = v80;
                  v117 = 2114;
                  v118 = *&v84;
                  v119 = 2114;
                  v120 = v54;
                  v81 = v54;
                  _os_log_debug_impl(&dword_1E0E2F000, v46, OS_LOG_TYPE_DEBUG, "guessing missing timestamps: underflowed mach abs time seconds with delta %f:\n%{public}@ based on\n%{public}@", buf, 0x20u);
                }

                *__error() = v45;
              }

              else
              {
                if (!v7)
                {
                  v7 = [(SATimestamp *)self copy];
                  v35 = *(a3 + 2) + v102[3];
                }

                self->_machAbsTimeSeconds = v35;
                (v4[2])(v4);
                (v5[2])(v5);
                (v6[2])(v6);
                v12 = 1;
              }
            }
          }

          if (self->_machContTimeSeconds == 0.0)
          {
            v47 = *(a3 + 4);
            if (v47 != 0.0)
            {
              v48 = v47 + v102[3];
              if (v48 > 0.0)
              {
                if (!v7)
                {
                  v7 = [(SATimestamp *)self copy];
                  v48 = *(a3 + 4) + v102[3];
                }

                self->_machContTimeSeconds = v48;
                (v4[2])(v4);
                (v5[2])(v5);
                (v6[2])(v6);
                v12 = 1;
              }
            }
          }

          if (self->_wallTime == 0.0 && (v49 = *(a3 + 5), v49 != 0.0))
          {
            if (!v7)
            {
              v7 = [(SATimestamp *)self copy];
              v49 = *(a3 + 5);
            }

            self->_wallTime = v49 + v102[3];
            (v4[2])(v4);
            (v5[2])(v5);
            (v6[2])(v6);
          }

          else
          {
LABEL_127:
            if ((v12 & 1) == 0)
            {
              if (self->_machAbsTime || self->_machAbsTimeSeconds == 0.0)
              {
                if (self->_machContTime || self->_machContTimeSeconds == 0.0)
                {

                  _Block_object_dispose(&v88, 8);
                  _Block_object_dispose(&v92, 8);

                  _Block_object_dispose(&v97, 8);
                  _Block_object_dispose(&v101, 8);

                  _Block_object_dispose(&v106, 8);
                  _Block_object_dispose(&v110, 8);

                  break;
                }
              }

              else
              {
                v58 = *__error();
                v59 = _sa_logt();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  v60 = self->_machAbsTime;
                  v61 = self->_machAbsTimeSeconds;
                  *buf = 134218240;
                  v116 = v60;
                  v117 = 2048;
                  v118 = v61;
                  _os_log_error_impl(&dword_1E0E2F000, v59, OS_LOG_TYPE_ERROR, "machAbs %llu and machAbsSec %f", buf, 0x16u);
                }

                *__error() = v58;
                v78 = self->_machAbsTimeSeconds;
                _SASetCrashLogMessage(519, "machAbs %llu and machAbsSec %f", v62, v63, v64, v65, v66, v67, self->_machAbsTime);
                _os_crash();
                __break(1u);
              }

              v68 = *__error();
              v69 = _sa_logt();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                v70 = self->_machContTime;
                v71 = self->_machContTimeSeconds;
                *buf = 134218240;
                v116 = v70;
                v117 = 2048;
                v118 = v71;
                _os_log_error_impl(&dword_1E0E2F000, v69, OS_LOG_TYPE_ERROR, "machCont %llu and machContSec %f", buf, 0x16u);
              }

              *__error() = v68;
              v79 = self->_machContTimeSeconds;
              _SASetCrashLogMessage(520, "machCont %llu and machContSec %f", v72, v73, v74, v75, v76, v77, self->_machContTime);
              _os_crash();
              __break(1u);
            }
          }
        }
      }

      else
      {
        if (!v7)
        {
          v7 = [(SATimestamp *)self copy];
          v40 = *(a3 + 3);
        }

        v41 = v93[3] + v40;
        self->_machContTime = v41;
        v42 = v107[3];
        if (v42 != 0.0)
        {
          if (*(v111 + 8) && *(v111 + 9))
          {
            v43 = 0;
            v44 = v111[4];
            if (!HIDWORD(v44))
            {
              goto LABEL_113;
            }

            v42 = 1000000000.0;
            if (v44)
            {
              v43 = v41;
              v42 = 1000000000.0;
              if (v44 != HIDWORD(v44))
              {
                v43 = __udivti3();
LABEL_113:
                v42 = 1000000000.0;
              }
            }
          }

          else
          {
            v43 = v41;
          }

          self->_machContTimeSeconds = v43 / v42;
        }

        (v4[2])(v4);
        (v5[2])(v5);
        (v6[2])(v6);
      }
    }
  }

  v57 = *MEMORY[0x1E69E9840];
}

int *__49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke(int *result, double a2, double a3, double a4, double a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *(*(result + 6) + 8);
  v6 = *(v5 + 24);
  if (v6 == 0.0)
  {
    v7 = result;
    v8 = *(result + 4);
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = *(v8 + 16);
      if (v10 != 0.0)
      {
        goto LABEL_10;
      }
    }

    if ((v9 = *(v8 + 24)) != 0 && (v10 = *(v8 + 32), v10 != 0.0) || (v11 = *(result + 5), (v9 = *(v11 + 8)) != 0) && (v10 = *(v11 + 16), v10 != 0.0) || (v9 = *(v11 + 24)) != 0 && (v10 = *(v11 + 32), v10 != 0.0))
    {
LABEL_10:
      *(v5 + 24) = v9 / v10;
      v6 = *(*(*(result + 6) + 8) + 24);
    }

    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = &TRIGeneralErrorDomain_block_invoke_knownMachTimebases[v12];
      LODWORD(a5) = *v14;
      LODWORD(a4) = *(v14 + 1);
      v15 = *&a4 * 1000000000.0 / *&a5;
      a5 = vabdd_f64(v15, v6);
      a4 = a5 / v15;
      if (a4 < 0.0000001)
      {
        break;
      }

      v16 = v13;
      v13 = 0;
      v12 = 1;
      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    *(*(*(result + 7) + 8) + 32) = *v14;
LABEL_16:
    v17 = *(*(result + 7) + 8);
    if (!*(v17 + 32) || !*(v17 + 36))
    {
      v18 = *__error();
      v19 = _sa_logt();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v21 = *(*(*(v7 + 6) + 8) + 24) / 1000000000.0;
        v22 = 134217984;
        v23 = v21;
        _os_log_fault_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_FAULT, "Using unknown mach timebase %f", &v22, 0xCu);
      }

      result = __error();
      *result = v18;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

double __49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke_4(void *a1)
{
  v1 = *(a1[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = a1[4];
    if (v2[4] != 0.0 && *(a1[5] + 32) != 0.0)
    {
      v3 = 32;
LABEL_11:
      *(v1 + 24) = 1;
      result = *(a1[4] + v3) - *(a1[5] + v3);
      *(*(a1[7] + 8) + 24) = result;
      return result;
    }

    if (v2[5] != 0.0 && *(a1[5] + 40) != 0.0)
    {
      v3 = 40;
      goto LABEL_11;
    }

    result = v2[2];
    if (result != 0.0)
    {
      result = *(a1[5] + 16);
      if (result != 0.0)
      {
        v3 = 16;
        goto LABEL_11;
      }
    }
  }

  return result;
}

void *__49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke_2(void *result)
{
  v1 = *(result[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result[4];
    if (*(v2 + 8) && *(result[5] + 8))
    {
      v3 = 8;
LABEL_8:
      *(v1 + 24) = 1;
      *(*(result[7] + 8) + 24) = *(result[4] + v3) - *(result[5] + v3);
      return result;
    }

    if (*(v2 + 24) && *(result[5] + 24))
    {
      v3 = 24;
      goto LABEL_8;
    }
  }

  return result;
}

- (void)guessMissingTimesBasedOnCurrentTime
{
  v3 = +[SATimestamp timestamp];
  [(SATimestamp *)self guessMissingTimesBasedOnTimestamp:v3];
}

- (NSString)debugDescription
{
  v2.i64[0] = *&self->_wallTime;
  v4 = _CopyStringForTime(3, v2);
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ machabs:%llu (%fs) machcont:%llu (%fs)", v4, self->_machAbsTime, *&self->_machAbsTimeSeconds, self->_machContTime, *&self->_machContTimeSeconds];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  machAbsTime = self->_machAbsTime;
  machAbsTimeSeconds = self->_machAbsTimeSeconds;
  machContTime = self->_machContTime;
  machContTimeSeconds = self->_machContTimeSeconds;
  wallTime = self->_wallTime;

  return [v4 initWithMachAbsTime:machAbsTime machAbsTimeSec:machContTime machContTime:machAbsTimeSeconds machContTimeSec:machContTimeSeconds wallTime:wallTime];
}

- (id)copyDate
{
  if (self->_wallTime == 0.0)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x1E695DF00]);
  wallTime = self->_wallTime;

  return [v4 initWithTimeIntervalSinceReferenceDate:wallTime];
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  if (self->_wallTime != 0.0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    SAJSONWriteDictionaryFirstEntry(a3, @"wallTimeCF", v5);

    if (!self->_machAbsTime)
    {
LABEL_7:
      if (!self->_machContTime)
      {
        return;
      }

      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      SAJSONWriteDictionaryEntry(a3, @"machContTime", v7);
      goto LABEL_9;
    }

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryEntry(a3, @"machAbsTime", v6);
LABEL_6:

    goto LABEL_7;
  }

  if (self->_machAbsTime)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryFirstEntry(a3, @"machAbsTime", v6);
    goto LABEL_6;
  }

  if (!self->_machContTime)
  {
    return;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  SAJSONWriteDictionaryFirstEntry(a3, @"machContTime", v7);
LABEL_9:
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  if ([(SATimestamp *)self sizeInBytesForSerializedVersion:a3]!= a4)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SATimestamp *)self debugDescription];
      *buf = 136315650;
      v45 = [v13 UTF8String];
      v46 = 2048;
      v47 = [(SATimestamp *)self sizeInBytesForSerializedVersion];
      v48 = 2048;
      v49 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SATimestamp *)self debugDescription];
    v15 = [v14 UTF8String];
    [(SATimestamp *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(776, "%s: size %lu != buffer length %lu", v16, v17, v18, v19, v20, v21, v15);

    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  *&a3->var0 = 257;
  machAbsTime = self->_machAbsTime;
  if (!machAbsTime && self->_machAbsTimeSeconds != 0.0)
  {
LABEL_10:
    v22 = *__error();
    v23 = _sa_logt();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = self->_machAbsTime;
      machAbsTimeSeconds = self->_machAbsTimeSeconds;
      *buf = 134218240;
      v45 = v24;
      v46 = 2048;
      v47 = *&machAbsTimeSeconds;
      _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "machAbs %llu and machAbsSec %f", buf, 0x16u);
    }

    *__error() = v22;
    v42 = self->_machAbsTimeSeconds;
    _SASetCrashLogMessage(782, "machAbs %llu and machAbsSec %f", v26, v27, v28, v29, v30, v31, self->_machAbsTime);
    _os_crash();
    __break(1u);
LABEL_13:
    v32 = *__error();
    v33 = _sa_logt();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      machContTime = self->_machContTime;
      machContTimeSeconds = self->_machContTimeSeconds;
      *buf = 134218240;
      v45 = machContTime;
      v46 = 2048;
      v47 = *&machContTimeSeconds;
      _os_log_error_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_ERROR, "machCont %llu and machContSec %f", buf, 0x16u);
    }

    *__error() = v32;
    v43 = self->_machContTimeSeconds;
    _SASetCrashLogMessage(783, "machCont %llu and machContSec %f", v36, v37, v38, v39, v40, v41, self->_machContTime);
    _os_crash();
    __break(1u);
  }

  if (!self->_machContTime && self->_machContTimeSeconds != 0.0)
  {
    goto LABEL_13;
  }

  *(&a3->var1 + 1) = machAbsTime;
  *(&a3->var2 + 2) = self->_machContTime;
  *(&a3->var3 + 2) = *&self->_wallTime;
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a3 >= 2u)
  {
    goto LABEL_7;
  }

  if (a4 <= 0x19)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v17 = a4;
      v18 = 2048;
      v19 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATimestamp struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(801, "bufferLength %lu < serialized SATimestamp struct %lu", v9, v10, v11, v12, v13, v14, a4);
    _os_crash();
    __break(1u);
LABEL_7:
    v15 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATimestamp version" userInfo:0];
    objc_exception_throw(v15);
  }

  result = [SATimestamp timestampWithMachAbsTime:*(a3 + 2) machAbsTimeSec:*(a3 + 10) machContTime:0.0 machContTimeSec:0.0 wallTime:*(a3 + 18)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)applyMachTimebase:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    v5 = *(result + 16);
    if (v4)
    {
      if (v5 == 0.0)
      {
        result = 0;
        if (HIDWORD(a2))
        {
          if (a2)
          {
            result = v4;
            if (a2 != HIDWORD(a2))
            {
              result = __udivti3();
            }
          }
        }

        *(v3 + 16) = result / 1000000000.0;
      }
    }

    else if (v5 != 0.0)
    {
      result = 0;
      if (HIDWORD(a2))
      {
        if (a2)
        {
          result = (v5 * 1000000000.0);
          if (HIDWORD(a2) != a2)
          {
            result = __udivti3();
          }
        }
      }

      *(v3 + 8) = result;
    }

    v6 = *(v3 + 32);
    if (*(v3 + 24))
    {
      if (v6 == 0.0)
      {
        result = 0;
        if (HIDWORD(a2) && a2)
        {
          result = *(v3 + 24);
          if (a2 != HIDWORD(a2))
          {
            result = __udivti3();
          }
        }

        *(v3 + 32) = result / 1000000000.0;
      }
    }

    else if (v6 != 0.0)
    {
      result = 0;
      if (HIDWORD(a2))
      {
        if (a2)
        {
          result = (v6 * 1000000000.0);
          if (HIDWORD(a2) != a2)
          {
            result = __udivti3();
          }
        }
      }

      *(v3 + 24) = result;
    }
  }

  return result;
}

@end