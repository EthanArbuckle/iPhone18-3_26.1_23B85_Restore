@interface SAThreadState
+ (SAThreadState)stateWithStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)stateWithKCDataDeltaThreadV2:(uint64_t)v2 startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)index endSampleIndex:(uint64_t)sampleIndex name:(uint64_t)name leafUserFrame:(__int128)frame leafOfCRootFramesReplacedBySwiftAsync:(__int128)self0 leafKernelFrame:(uint64_t)self1 oldThreadState:waitInfo:turnstileInfo:;
+ (id)stateWithKCDataDeltaThreadV3:(uint64_t)v3 startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)index endSampleIndex:(uint64_t)sampleIndex name:(uint64_t)name leafUserFrame:(__int128)frame leafOfCRootFramesReplacedBySwiftAsync:(__int128)self0 leafKernelFrame:(uint64_t)self1 oldThreadState:(int)self2 waitInfo:turnstileInfo:threadPolicyVersion:;
+ (id)stateWithKCDataThreadV2:(uint64_t)v2 startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)index endSampleIndex:(uint64_t)sampleIndex name:(uint64_t)name leafUserFrame:(__int128)frame leafOfCRootFramesReplacedBySwiftAsync:(__int128)self0 leafKernelFrame:(uint64_t)self1 machTimebase:waitInfo:turnstileInfo:;
+ (id)stateWithKCDataThreadV4:(uint64_t)v4 startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)index endSampleIndex:(uint64_t)sampleIndex name:(uint64_t)name leafUserFrame:(__int128)frame leafOfCRootFramesReplacedBySwiftAsync:(__int128)self0 leafKernelFrame:(uint64_t)self1 machTimebase:(int)self2 waitInfo:(uint64_t)self3 turnstileInfo:threadPolicyVersion:threadInstructionCycles:;
+ (id)stateWithoutReferencesFromPAStyleSerializedThread:(uint64_t)thread;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)hasDispatchQueue;
- (BOOL)hasSameStackAs:(id)as;
- (BOOL)hasSwiftTask;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (SADispatchQueue)dispatchQueue;
- (SASwiftTask)swiftTask;
- (SAThreadState)init;
- (SAThreadState)initWithKCDataDeltaThreadV2:(const thread_delta_snapshot_v2 *)v2 startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex name:(id)name leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)self0 leafKernelFrame:(id)self1 oldThreadState:(id)self2 waitInfo:(id)self3 turnstileInfo:(id)self4;
- (SAThreadState)initWithKCDataDeltaThreadV3:(const thread_delta_snapshot_v3 *)v3 startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex name:(id)name leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)self0 leafKernelFrame:(id)self1 oldThreadState:(id)self2 waitInfo:(id)self3 turnstileInfo:(id)self4 threadPolicyVersion:(unsigned int)self5;
- (SAThreadState)initWithKCDataThreadV2:(const thread_snapshot_v2 *)v2 startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex name:(id)name leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)self0 leafKernelFrame:(id)self1 machTimebase:(mach_timebase_info)self2 waitInfo:(id)self3 turnstileInfo:(id)self4;
- (SAThreadState)initWithKCDataThreadV4:(const thread_snapshot_v4 *)v4 startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex name:(id)name leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)self0 leafKernelFrame:(id)self1 machTimebase:(mach_timebase_info)self2 waitInfo:(id)self3 turnstileInfo:(id)self4 threadPolicyVersion:(unsigned int)self5 threadInstructionCycles:(const instrs_cycles_snapshot *)self6;
- (SAThreadState)initWithStackshotThreadV1:(const thread_snapshot *)v1 startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)async leafKernelFrame:(id)self0 machTimebase:(mach_timebase_info)self1;
- (SAThreadState)initWithStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithThread:(id *)thread;
- (id)stackWithBacktraceStyle:(unint64_t)style ignoringKernelStackWithLeafFrame:(id)frame;
- (int)basePriority;
- (int)scheduledPriority;
- (int)setBasePriority:(int *)result;
- (int)setScheduledPriority:(int *)result;
- (uint64_t)setCpuNum:(uint64_t)result;
- (uint64_t)setEndSampleIndex:(uint64_t)result;
- (uint64_t)setStartSampleIndex:(uint64_t)result;
- (uint64_t)setThreadQos:(uint64_t)result;
- (uint64_t)setThreadQosKEventOverride:(uint64_t)result;
- (uint64_t)setThreadQosPromote:(uint64_t)result;
- (uint64_t)setThreadQosWorkQueueOverride:(uint64_t)result;
- (uint64_t)setThreadQosWorkloopServicerOverride:(uint64_t)result;
- (uint64_t)setThreadRequestedQos:(uint64_t)result;
- (uint64_t)setThreadRequestedQosOverride:(uint64_t)result;
- (unint64_t)endSampleIndex;
- (unint64_t)sampleCountInSampleIndexRangeStart:(unint64_t)start end:(unint64_t)end;
- (unint64_t)startSampleIndex;
- (unsigned)threadQos;
- (unsigned)threadQosKEventOverride;
- (unsigned)threadQosPromote;
- (unsigned)threadQosWorkQueueOverride;
- (unsigned)threadQosWorkloopServicerOverride;
- (unsigned)threadRequestedQos;
- (unsigned)threadRequestedQosOverride;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)applyPAStyleSampleTimestamp:(uint64_t)timestamp;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)populateReferencesUsingPAStyleSerializedThread:(void *)thread andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:;
- (void)setFilledCyclesInstructions:(BOOL)instructions;
- (void)setFilledName:(BOOL)name;
- (void)setFilledScheduling:(BOOL)scheduling;
- (void)setFilledSnapshot:(BOOL)snapshot;
- (void)setFilledSwiftTask:(BOOL)task;
- (void)setFilledUserStack:(BOOL)stack;
- (void)setNeedsExclave:(BOOL)exclave;
@end

@implementation SAThreadState

- (unint64_t)startSampleIndex
{
  if ((*(self + 3) & 0x3FFFFFFF) == 0x3FFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *(self + 3) & 0x3FFFFFFF;
  }
}

- (SAThreadState)init
{
  v3.receiver = self;
  v3.super_class = SAThreadState;
  result = [(SAThreadState *)&v3 init];
  if (result)
  {
    *&result->_originPid = -1;
  }

  return result;
}

- (unint64_t)endSampleIndex
{
  if ((*(self + 4) & 0x3FFFFFFF) == 0x3FFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *(self + 4) & 0x3FFFFFFF;
  }
}

- (BOOL)hasSwiftTask
{
  WeakRetained = objc_loadWeakRetained(&self->_swiftTask);
  v3 = WeakRetained != 0;

  return v3;
}

- (SADispatchQueue)dispatchQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatchQueue);

  return WeakRetained;
}

- (SASwiftTask)swiftTask
{
  WeakRetained = objc_loadWeakRetained(&self->_swiftTask);

  return WeakRetained;
}

- (int)scheduledPriority
{
  if (self->_scheduledPriority == 255)
  {
    return -1;
  }

  else
  {
    return self->_scheduledPriority;
  }
}

- (int)basePriority
{
  if (self->_basePriority == 255)
  {
    return -1;
  }

  else
  {
    return self->_basePriority;
  }
}

- (void)setFilledName:(BOOL)name
{
  if (name)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 19) = v3 & 0x80 | *(self + 19) & 0x7F;
}

- (void)setFilledSwiftTask:(BOOL)task
{
  if (task)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 20) = *(self + 20) & 0xFD | v3;
}

- (void)setFilledUserStack:(BOOL)stack
{
  if (stack)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 20) = *(self + 20) & 0xFB | v3;
}

- (void)setFilledScheduling:(BOOL)scheduling
{
  if (scheduling)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 20) = *(self + 20) & 0xF7 | v3;
}

- (void)setFilledCyclesInstructions:(BOOL)instructions
{
  if (instructions)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 20) = *(self + 20) & 0xEF | v3;
}

- (void)setFilledSnapshot:(BOOL)snapshot
{
  if (snapshot)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 20) = *(self + 20) & 0xDF | v3;
}

- (uint64_t)setStartSampleIndex:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = *(result + 12) | 0x3FFFFFFF;
    }

    else
    {
      if (a2 >= 0x3FFFFFFF)
      {
        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v14 = a2;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "startSampleIndex is %lu", buf, 0xCu);
        }

        *__error() = v5;
        _SASetCrashLogMessage(851, "startSampleIndex is %lu", v7, v8, v9, v10, v11, v12, a2);
        _os_crash();
        __break(1u);
      }

      v3 = *(result + 12) & 0xC0000000 | a2;
    }

    *(result + 12) = v3;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)setEndSampleIndex:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = *(result + 16) | 0x3FFFFFFF;
    }

    else
    {
      if (a2 >= 0x3FFFFFFF)
      {
        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v14 = a2;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "endSampleIndex is %lu", buf, 0xCu);
        }

        *__error() = v5;
        _SASetCrashLogMessage(866, "endSampleIndex is %lu", v7, v8, v9, v10, v11, v12, a2);
        _os_crash();
        __break(1u);
      }

      v3 = *(result + 16) & 0xC0000000 | a2;
    }

    *(result + 16) = v3;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)setCpuNum:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 == -1)
    {
      v3 = 0;
    }

    else
    {
      if (a2 >= 0xFF)
      {
        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v14 = a2;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "cpuNum is %u", buf, 8u);
        }

        *__error() = v5;
        _SASetCrashLogMessage(885, "cpuNum is %u", v7, v8, v9, v10, v11, v12, a2);
        _os_crash();
        __break(1u);
      }

      v3 = a2 + 1;
    }

    *(result + 8) = v3;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)setBasePriority:(int *)result
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (a2 >= 0xFF)
    {
      v4 = *__error();
      v5 = _sa_logt();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67109120;
        v7[1] = v2;
        _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "basePriority %d", v7, 8u);
      }

      result = __error();
      *result = v4;
      LOBYTE(v2) = -1;
    }

    *(v3 + 9) = v2;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)setScheduledPriority:(int *)result
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (a2 >= 0xFF)
    {
      v4 = *__error();
      v5 = _sa_logt();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67109120;
        v7[1] = v2;
        _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "scheduledPriority %d", v7, 8u);
      }

      result = __error();
      *result = v4;
      LOBYTE(v2) = -1;
    }

    *(v3 + 10) = v2;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)threadQos
{
  if ((*(self + 11) & 7) == 7)
  {
    return 125;
  }

  else
  {
    return *(self + 11) & 7;
  }
}

- (uint64_t)setThreadQos:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 == 125)
    {
      v3 = *(result + 11) | 7;
    }

    else
    {
      if (a2 >= 7)
      {
        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v14 = a2;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "threadQos %d", buf, 8u);
        }

        *__error() = v5;
        _SASetCrashLogMessage(938, "threadQos %d", v7, v8, v9, v10, v11, v12, a2);
        _os_crash();
        __break(1u);
      }

      v3 = *(result + 11) & 0xF8 | a2;
    }

    *(result + 11) = v3;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)threadRequestedQos
{
  if (((*(self + 11) >> 3) & 7) == 7)
  {
    return 125;
  }

  else
  {
    return (*(self + 11) >> 3) & 7;
  }
}

- (uint64_t)setThreadRequestedQos:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 == 125)
    {
      v3 = *(result + 11) | 0x38;
    }

    else
    {
      if (a2 >= 7)
      {
        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v14 = a2;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "threadRequestedQos %d", buf, 8u);
        }

        *__error() = v5;
        _SASetCrashLogMessage(939, "threadRequestedQos %d", v7, v8, v9, v10, v11, v12, a2);
        _os_crash();
        __break(1u);
      }

      v3 = *(result + 11) & 0xC7 | (8 * a2);
    }

    *(result + 11) = v3;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)threadRequestedQosOverride
{
  if ((*(self + 21) & 7) == 7)
  {
    return 125;
  }

  else
  {
    return *(self + 21) & 7;
  }
}

- (uint64_t)setThreadRequestedQosOverride:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 == 125)
    {
      v3 = *(result + 21) | 7;
    }

    else
    {
      if (a2 >= 7)
      {
        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v14 = a2;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "threadRequestedQosOverride %d", buf, 8u);
        }

        *__error() = v5;
        _SASetCrashLogMessage(940, "threadRequestedQosOverride %d", v7, v8, v9, v10, v11, v12, a2);
        _os_crash();
        __break(1u);
      }

      v3 = *(result + 21) & 0xF8 | a2;
    }

    *(result + 21) = v3;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)threadQosPromote
{
  if (((*(self + 21) >> 3) & 7) == 7)
  {
    return 125;
  }

  else
  {
    return (*(self + 21) >> 3) & 7;
  }
}

- (uint64_t)setThreadQosPromote:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 == 125)
    {
      v3 = *(result + 21) | 0x38;
    }

    else
    {
      if (a2 >= 7)
      {
        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v14 = a2;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "threadQosPromote %d", buf, 8u);
        }

        *__error() = v5;
        _SASetCrashLogMessage(941, "threadQosPromote %d", v7, v8, v9, v10, v11, v12, a2);
        _os_crash();
        __break(1u);
      }

      v3 = *(result + 21) & 0xC7 | (8 * a2);
    }

    *(result + 21) = v3;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)threadQosKEventOverride
{
  if ((*(self + 22) & 7) == 7)
  {
    return 125;
  }

  else
  {
    return *(self + 22) & 7;
  }
}

- (uint64_t)setThreadQosKEventOverride:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 == 125)
    {
      v3 = *(result + 22) | 7;
    }

    else
    {
      if (a2 >= 7)
      {
        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v14 = a2;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "threadQosKEventOverride %d", buf, 8u);
        }

        *__error() = v5;
        _SASetCrashLogMessage(942, "threadQosKEventOverride %d", v7, v8, v9, v10, v11, v12, a2);
        _os_crash();
        __break(1u);
      }

      v3 = *(result + 22) & 0xF8 | a2;
    }

    *(result + 22) = v3;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)threadQosWorkQueueOverride
{
  if (((*(self + 22) >> 3) & 7) == 7)
  {
    return 125;
  }

  else
  {
    return (*(self + 22) >> 3) & 7;
  }
}

- (uint64_t)setThreadQosWorkQueueOverride:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 == 125)
    {
      v3 = *(result + 22) | 0x38;
    }

    else
    {
      if (a2 >= 7)
      {
        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v14 = a2;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "threadQosWorkQueueOverride %d", buf, 8u);
        }

        *__error() = v5;
        _SASetCrashLogMessage(943, "threadQosWorkQueueOverride %d", v7, v8, v9, v10, v11, v12, a2);
        _os_crash();
        __break(1u);
      }

      v3 = *(result + 22) & 0xC7 | (8 * a2);
    }

    *(result + 22) = v3;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)threadQosWorkloopServicerOverride
{
  if ((self->_ioTier & 7) == 7)
  {
    return 125;
  }

  else
  {
    return self->_ioTier & 7;
  }
}

- (uint64_t)setThreadQosWorkloopServicerOverride:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 == 125)
    {
      v3 = *(result + 23) | 7;
    }

    else
    {
      if (a2 >= 7)
      {
        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v14 = a2;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "threadQosWorkloopServicerOverride %d", buf, 8u);
        }

        *__error() = v5;
        _SASetCrashLogMessage(944, "threadQosWorkloopServicerOverride %d", v7, v8, v9, v10, v11, v12, a2);
        _os_crash();
        __break(1u);
      }

      v3 = *(result + 23) & 0xF8 | a2;
    }

    *(result + 23) = v3;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)hasDispatchQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatchQueue);
  v3 = WeakRetained != 0;

  return v3;
}

- (unint64_t)sampleCountInSampleIndexRangeStart:(unint64_t)start end:(unint64_t)end
{
  v41 = *MEMORY[0x1E69E9840];
  if (start != 0x7FFFFFFFFFFFFFFFLL && end != 0x7FFFFFFFFFFFFFFFLL && start > end)
  {
    v20 = *__error();
    p_super = _sa_logt();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      startCopy = start;
      v39 = 2048;
      endCopy = end;
      _os_log_error_impl(&dword_1E0E2F000, p_super, OS_LOG_TYPE_ERROR, "startSampleIndexCap %lu > endSampleIndexCap %lu", buf, 0x16u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(1057, "startSampleIndexCap %lu > endSampleIndexCap %lu", v21, v22, v23, v24, v25, v26, start);
    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  p_super = &self->super;
  startSampleIndex = [(SAThreadState *)self startSampleIndex];
  endSampleIndex = [p_super endSampleIndex];
  if (startSampleIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = endSampleIndex == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_25;
  }

  if (endSampleIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_29:
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      startSampleIndex2 = [p_super startSampleIndex];
      *buf = 134217984;
      startCopy = startSampleIndex2;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "endSampleIndex NSNotFound, startSampleIndex %lu", buf, 0xCu);
    }

    *__error() = v27;
    startSampleIndex3 = [p_super startSampleIndex];
    _SASetCrashLogMessage(1060, "endSampleIndex NSNotFound, startSampleIndex %lu", v31, v32, v33, v34, v35, v36, startSampleIndex3);
    _os_crash();
    __break(1u);
  }

  endSampleIndex2 = [p_super endSampleIndex];
  if (endSampleIndex2 >= end)
  {
    endCopy2 = end;
  }

  else
  {
    endCopy2 = endSampleIndex2;
  }

  if (end == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = endSampleIndex2;
  }

  else
  {
    v14 = endCopy2;
  }

  startSampleIndex4 = [p_super startSampleIndex];
  if (startSampleIndex4 <= start)
  {
    startCopy2 = start;
  }

  else
  {
    startCopy2 = startSampleIndex4;
  }

  if (start == 0x7FFFFFFFFFFFFFFFLL)
  {
    startCopy2 = startSampleIndex4;
  }

  v17 = v14 >= startCopy2;
  v18 = v14 - startCopy2;
  if (v17)
  {
    result = v18 + 1;
  }

  else
  {
    result = 0;
  }

LABEL_25:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (SAThreadState)initWithStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex
{
  v10 = [(SAThreadState *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_startTimestamp, timestamp);
    objc_storeStrong((v11 + 56), endTimestamp);
    [(SAThreadState *)v11 setStartSampleIndex:index];
    [(SAThreadState *)v11 setEndSampleIndex:sampleIndex];
    *(v11 + 21) |= 0x38u;
    *(v11 + 22) |= 0x3Fu;
    *(v11 + 23) |= 7u;
  }

  return v11;
}

+ (SAThreadState)stateWithStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex
{
  v6 = [[self alloc] initWithStartTimestamp:timestamp endTimestamp:endTimestamp startSampleIndex:index endSampleIndex:sampleIndex];

  return v6;
}

- (SAThreadState)initWithKCDataThreadV4:(const thread_snapshot_v4 *)v4 startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex name:(id)name leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)self0 leafKernelFrame:(id)self1 machTimebase:(mach_timebase_info)self2 waitInfo:(id)self3 turnstileInfo:(id)self4 threadPolicyVersion:(unsigned int)self5 threadInstructionCycles:(const instrs_cycles_snapshot *)self6
{
  v17 = [(SAThreadState *)self initWithKCDataThreadV2:v4 startTimestamp:timestamp endTimestamp:endTimestamp startSampleIndex:index endSampleIndex:sampleIndex name:name leafUserFrame:frame leafOfCRootFramesReplacedBySwiftAsync:async leafKernelFrame:kernelFrame machTimebase:timebase waitInfo:info turnstileInfo:turnstileInfo];
  if (v17)
  {
    if (cycles)
    {
      *&v17->_instructions = *cycles;
    }

    if (version <= 4)
    {
      if (!version)
      {
        return v17;
      }

      if (version == 4)
      {
        [(SAThreadState *)v17 setThreadQosPromote:?];
        return v17;
      }
    }

    else
    {
      if (version == 5)
      {
        ths_requested_policy = v4->ths_requested_policy;
        [(SAThreadState *)v17 setThreadQosPromote:?];
        [(SAThreadState *)v17 setThreadQosWorkQueueOverride:?];
        return v17;
      }

      if (version == 6 || version == 7)
      {
        v18 = v4->ths_requested_policy;
        ths_effective_policy = v4->ths_effective_policy;
        [(SAThreadState *)v17 setThreadQosPromote:?];
        [(SAThreadState *)v17 setThreadQosKEventOverride:?];
        [(SAThreadState *)v17 setThreadQosWorkQueueOverride:?];
        [(SAThreadState *)v17 setThreadQosWorkloopServicerOverride:?];
        v17->_ioTier = v17->_ioTier & 0xF7 | (ths_effective_policy >> 21) & 8;
        return v17;
      }
    }

    SAComplainAboutUnknownThreadPolicyVersion(version);
  }

  return v17;
}

+ (id)stateWithKCDataThreadV4:(uint64_t)v4 startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)index endSampleIndex:(uint64_t)sampleIndex name:(uint64_t)name leafUserFrame:(__int128)frame leafOfCRootFramesReplacedBySwiftAsync:(__int128)self0 leafKernelFrame:(uint64_t)self1 machTimebase:(int)self2 waitInfo:(uint64_t)self3 turnstileInfo:threadPolicyVersion:threadInstructionCycles:
{
  LODWORD(v15) = timebase;
  v13 = [objc_alloc(objc_opt_self()) initWithKCDataThreadV4:a2 startTimestamp:v4 endTimestamp:timestamp startSampleIndex:endTimestamp endSampleIndex:index name:sampleIndex leafUserFrame:name leafOfCRootFramesReplacedBySwiftAsync:frame leafKernelFrame:async machTimebase:kernelFrame waitInfo:v15 turnstileInfo:info threadPolicyVersion:? threadInstructionCycles:?];

  return v13;
}

- (SAThreadState)initWithKCDataThreadV2:(const thread_snapshot_v2 *)v2 startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex name:(id)name leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)self0 leafKernelFrame:(id)self1 machTimebase:(mach_timebase_info)self2 waitInfo:(id)self3 turnstileInfo:(id)self4
{
  v17 = [(SAThreadState *)self initWithStartTimestamp:timestamp endTimestamp:endTimestamp startSampleIndex:index endSampleIndex:sampleIndex];
  v18 = v17;
  if (v17)
  {
    v17->_voucherIdentifier = v2->ths_voucher_identifier;
    if (HIDWORD(*&timebase))
    {
      v19 = timebase.numer == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      ths_user_time = 0;
      *(v18 + 144) = 0;
    }

    else if (timebase.numer == timebase.denom)
    {
      v17->_systemTimeInNs = v2->ths_sys_time;
      ths_user_time = v2->ths_user_time;
    }

    else
    {
      v17->_systemTimeInNs = __udivti3();
      v21 = v2->ths_user_time;
      ths_user_time = __udivti3();
    }

    *(v18 + 136) = ths_user_time;
    *(v18 + 152) = 0;
    *(v18 + 160) = 0;
    *(v18 + 40) = v2->ths_state;
    [(SAThreadState *)v18 setBasePriority:?];
    [(SAThreadState *)v18 setScheduledPriority:?];
    *(v18 + 36) = v2->ths_sched_flags;
    [(SAThreadState *)v18 setThreadQos:?];
    [(SAThreadState *)v18 setThreadRequestedQos:?];
    [(SAThreadState *)v18 setThreadRequestedQosOverride:?];
    *(v18 + 23) &= ~8u;
    *(v18 + 24) = v2->ths_io_tier;
    if (v2->ths_last_run_time + 1 >= 2)
    {
      v22 = [SATimestamp timestampWithMachAbsTime:"timestampWithMachAbsTime:machAbsTimeSec:machContTime:machContTimeSec:wallTime:" machAbsTimeSec:0.0 machContTime:0.0 machContTimeSec:0.0 wallTime:?];
      v23 = *(v18 + 168);
      *(v18 + 168) = v22;

      [*(v18 + 168) guessMissingTimesBasedOnTimestamp:timestamp];
    }

    if (v2->ths_last_made_runnable_time + 1 >= 2)
    {
      v24 = [SATimestamp timestampWithMachAbsTime:"timestampWithMachAbsTime:machAbsTimeSec:machContTime:machContTimeSec:wallTime:" machAbsTimeSec:0.0 machContTime:0.0 machContTimeSec:0.0 wallTime:?];
      v25 = *(v18 + 176);
      *(v18 + 176) = v24;

      [*(v18 + 176) guessMissingTimesBasedOnTimestamp:timestamp];
    }

    objc_storeStrong((v18 + 64), frame);
    objc_storeStrong((v18 + 72), async);
    objc_storeStrong((v18 + 80), kernelFrame);
    objc_storeStrong((v18 + 88), info);
    objc_storeStrong((v18 + 96), turnstileInfo);
    ths_ss_flags = v2->ths_ss_flags;
    if ((ths_ss_flags & 0x40) != 0)
    {
      *(v18 + 11) |= 0x40u;
      ths_ss_flags = v2->ths_ss_flags;
      if ((ths_ss_flags & 0x20) == 0)
      {
LABEL_17:
        if ((ths_ss_flags & 0x10) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_25;
      }
    }

    else if ((ths_ss_flags & 0x20) == 0)
    {
      goto LABEL_17;
    }

    *(v18 + 11) |= 0x80u;
    ths_ss_flags = v2->ths_ss_flags;
    if ((ths_ss_flags & 0x10) == 0)
    {
LABEL_18:
      if ((ths_ss_flags & 0x1000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v18 + 15) |= 0x40u;
    ths_ss_flags = v2->ths_ss_flags;
    if ((ths_ss_flags & 0x1000) == 0)
    {
LABEL_19:
      if ((ths_ss_flags & 0x800) == 0)
      {
LABEL_21:
        v27 = [name copy];
        v28 = *(v18 + 104);
        *(v18 + 104) = v27;

        return v18;
      }

LABEL_20:
      *(v18 + 19) |= 0x40u;
      goto LABEL_21;
    }

LABEL_26:
    *(v18 + 15) |= 0x80u;
    if ((v2->ths_ss_flags & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  return v18;
}

+ (id)stateWithKCDataThreadV2:(uint64_t)v2 startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)index endSampleIndex:(uint64_t)sampleIndex name:(uint64_t)name leafUserFrame:(__int128)frame leafOfCRootFramesReplacedBySwiftAsync:(__int128)self0 leafKernelFrame:(uint64_t)self1 machTimebase:waitInfo:turnstileInfo:
{
  v11 = [objc_alloc(objc_opt_self()) initWithKCDataThreadV2:a2 startTimestamp:v2 endTimestamp:timestamp startSampleIndex:endTimestamp endSampleIndex:index name:sampleIndex leafUserFrame:name leafOfCRootFramesReplacedBySwiftAsync:frame leafKernelFrame:async machTimebase:kernelFrame waitInfo:? turnstileInfo:?];

  return v11;
}

- (SAThreadState)initWithKCDataDeltaThreadV2:(const thread_delta_snapshot_v2 *)v2 startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex name:(id)name leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)self0 leafKernelFrame:(id)self1 oldThreadState:(id)self2 waitInfo:(id)self3 turnstileInfo:(id)self4
{
  v16 = [(SAThreadState *)self initWithStartTimestamp:timestamp endTimestamp:endTimestamp startSampleIndex:index endSampleIndex:sampleIndex];
  v17 = v16;
  if (v16)
  {
    v16->_voucherIdentifier = v2->tds_voucher_identifier;
    v16->_systemTimeInNs = *(state + 18);
    v16->_userTimeInNs = *(state + 17);
    v16->_instructions = *(state + 19);
    v16->_cycles = *(state + 20);
    v16->_state = v2->tds_state;
    [(SAThreadState *)v16 setBasePriority:?];
    [(SAThreadState *)v17 setScheduledPriority:?];
    *(v17 + 36) = v2->tds_sched_flags;
    [(SAThreadState *)v17 setThreadQos:?];
    [(SAThreadState *)v17 setThreadRequestedQos:?];
    [(SAThreadState *)v17 setThreadRequestedQosOverride:?];
    *(v17 + 23) &= ~8u;
    *(v17 + 24) = v2->tds_io_tier;
    objc_storeStrong((v17 + 64), frame);
    objc_storeStrong((v17 + 72), async);
    objc_storeStrong((v17 + 80), kernelFrame);
    objc_storeStrong((v17 + 88), info);
    objc_storeStrong((v17 + 96), turnstileInfo);
    tds_ss_flags = v2->tds_ss_flags;
    if ((tds_ss_flags & 0x40) != 0)
    {
      *(v17 + 11) |= 0x40u;
      tds_ss_flags = v2->tds_ss_flags;
      if ((tds_ss_flags & 0x20) == 0)
      {
LABEL_4:
        if ((tds_ss_flags & 0x10) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else if ((tds_ss_flags & 0x20) == 0)
    {
      goto LABEL_4;
    }

    *(v17 + 11) |= 0x80u;
    tds_ss_flags = v2->tds_ss_flags;
    if ((tds_ss_flags & 0x10) == 0)
    {
LABEL_5:
      if ((tds_ss_flags & 0x1000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    *(v17 + 15) |= 0x40u;
    tds_ss_flags = v2->tds_ss_flags;
    if ((tds_ss_flags & 0x1000) == 0)
    {
LABEL_6:
      if ((tds_ss_flags & 0x800) == 0)
      {
LABEL_8:
        v19 = [name copy];
        v20 = *(v17 + 104);
        *(v17 + 104) = v19;

        return v17;
      }

LABEL_7:
      *(v17 + 19) |= 0x40u;
      goto LABEL_8;
    }

LABEL_13:
    *(v17 + 15) |= 0x80u;
    if ((v2->tds_ss_flags & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return v17;
}

+ (id)stateWithKCDataDeltaThreadV2:(uint64_t)v2 startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)index endSampleIndex:(uint64_t)sampleIndex name:(uint64_t)name leafUserFrame:(__int128)frame leafOfCRootFramesReplacedBySwiftAsync:(__int128)self0 leafKernelFrame:(uint64_t)self1 oldThreadState:waitInfo:turnstileInfo:
{
  v11 = [objc_alloc(objc_opt_self()) initWithKCDataDeltaThreadV2:a2 startTimestamp:v2 endTimestamp:timestamp startSampleIndex:endTimestamp endSampleIndex:index name:sampleIndex leafUserFrame:name leafOfCRootFramesReplacedBySwiftAsync:frame leafKernelFrame:async oldThreadState:kernelFrame waitInfo:? turnstileInfo:?];

  return v11;
}

- (SAThreadState)initWithKCDataDeltaThreadV3:(const thread_delta_snapshot_v3 *)v3 startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex name:(id)name leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)self0 leafKernelFrame:(id)self1 oldThreadState:(id)self2 waitInfo:(id)self3 turnstileInfo:(id)self4 threadPolicyVersion:(unsigned int)self5
{
  v16 = [(SAThreadState *)self initWithKCDataDeltaThreadV2:v3 startTimestamp:timestamp endTimestamp:endTimestamp startSampleIndex:index endSampleIndex:sampleIndex name:name leafUserFrame:frame leafOfCRootFramesReplacedBySwiftAsync:async leafKernelFrame:kernelFrame oldThreadState:state waitInfo:info turnstileInfo:turnstileInfo];
  if (v16)
  {
    if (version <= 4)
    {
      if (!version)
      {
        return v16;
      }

      if (version == 4)
      {
        [(SAThreadState *)v16 setThreadQosPromote:?];
        return v16;
      }
    }

    else
    {
      if (version == 5)
      {
        tds_requested_policy = v3->tds_requested_policy;
        [(SAThreadState *)v16 setThreadQosPromote:?];
        [(SAThreadState *)v16 setThreadQosWorkQueueOverride:?];
        return v16;
      }

      if (version == 6 || version == 7)
      {
        v17 = v3->tds_requested_policy;
        tds_effective_policy = v3->tds_effective_policy;
        [(SAThreadState *)v16 setThreadQosPromote:?];
        [(SAThreadState *)v16 setThreadQosKEventOverride:?];
        [(SAThreadState *)v16 setThreadQosWorkQueueOverride:?];
        [(SAThreadState *)v16 setThreadQosWorkloopServicerOverride:?];
        v16->_ioTier = v16->_ioTier & 0xF7 | (tds_effective_policy >> 21) & 8;
        return v16;
      }
    }

    SAComplainAboutUnknownThreadPolicyVersion(version);
  }

  return v16;
}

+ (id)stateWithKCDataDeltaThreadV3:(uint64_t)v3 startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)index endSampleIndex:(uint64_t)sampleIndex name:(uint64_t)name leafUserFrame:(__int128)frame leafOfCRootFramesReplacedBySwiftAsync:(__int128)self0 leafKernelFrame:(uint64_t)self1 oldThreadState:(int)self2 waitInfo:turnstileInfo:threadPolicyVersion:
{
  LODWORD(v14) = state;
  v12 = [objc_alloc(objc_opt_self()) initWithKCDataDeltaThreadV3:a2 startTimestamp:v3 endTimestamp:timestamp startSampleIndex:endTimestamp endSampleIndex:index name:sampleIndex leafUserFrame:name leafOfCRootFramesReplacedBySwiftAsync:frame leafKernelFrame:async oldThreadState:kernelFrame waitInfo:v14 turnstileInfo:? threadPolicyVersion:?];

  return v12;
}

- (SAThreadState)initWithStackshotThreadV1:(const thread_snapshot *)v1 startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)async leafKernelFrame:(id)self0 machTimebase:(mach_timebase_info)self1
{
  v13 = [(SAThreadState *)self initWithStartTimestamp:timestamp endTimestamp:endTimestamp startSampleIndex:index endSampleIndex:sampleIndex];
  v14 = v13;
  if (!v13)
  {
    return v14;
  }

  v13->_voucherIdentifier = *(&v1->var31 + 4);
  if (HIDWORD(*&timebase))
  {
    v15 = timebase.numer == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
    *(v14 + 144) = 0;
  }

  else if (timebase.numer == timebase.denom)
  {
    v13->_systemTimeInNs = *(&v1->var6 + 4);
    v16 = *(&v1->var5 + 4);
  }

  else
  {
    v13->_systemTimeInNs = __udivti3();
    v17 = *(&v1->var5 + 4);
    v16 = __udivti3();
  }

  *(v14 + 136) = v16;
  *(v14 + 152) = 0;
  *(v14 + 160) = 0;
  *(v14 + 40) = HIDWORD(v1->var7);
  [(SAThreadState *)v14 setBasePriority:?];
  [(SAThreadState *)v14 setScheduledPriority:?];
  *(v14 + 36) = v1->var10;
  [(SAThreadState *)v14 setThreadQos:?];
  [(SAThreadState *)v14 setThreadRequestedQos:?];
  [(SAThreadState *)v14 setThreadRequestedQosOverride:?];
  *(v14 + 23) &= ~8u;
  *(v14 + 24) = v1->var12;
  objc_storeStrong((v14 + 64), frame);
  objc_storeStrong((v14 + 72), async);
  objc_storeStrong((v14 + 80), kernelFrame);
  LOBYTE(var11_low) = v1->var11;
  if ((var11_low & 0x40) == 0)
  {
    if ((v1->var11 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    *(v14 + 11) |= 0x80u;
    LOBYTE(var11_low) = v1->var11;
    if ((var11_low & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  *(v14 + 11) |= 0x40u;
  LOBYTE(var11_low) = v1->var11;
  if ((var11_low & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((var11_low & 0x10) != 0)
  {
LABEL_14:
    *(v14 + 15) |= 0x40u;
    LOBYTE(var11_low) = v1->var11;
  }

LABEL_15:
  var11_low = var11_low;
  if ((var11_low & 0x1000) != 0)
  {
    *(v14 + 15) |= 0x80u;
    var11_low = SLOBYTE(v1->var11);
  }

  if ((var11_low & 0x800) != 0)
  {
    *(v14 + 19) |= 0x40u;
  }

  v20 = BYTE4(v1->var33);
  v19 = &v1->var33 + 4;
  if (v20)
  {
    v21 = SANSStringForCString(v19);
    v22 = *(v14 + 104);
    *(v14 + 104) = v21;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 48), self->_startTimestamp);
  objc_storeStrong((v4 + 56), self->_endTimestamp);
  v5 = *(v4 + 16);
  *(v4 + 12) = *(v4 + 12) & 0xC0000000 | *(self + 3) & 0x3FFFFFFF;
  *(v4 + 16) = v5 & 0xC0000000 | *(self + 4) & 0x3FFFFFFF;
  objc_storeStrong((v4 + 64), self->_leafUserFrame);
  objc_storeStrong((v4 + 72), self->_leafOfCRootFramesReplacedBySwiftAsync);
  objc_storeStrong((v4 + 80), self->_leafKernelFrame);
  objc_storeStrong((v4 + 184), self->_exclavesInfo);
  objc_storeStrong((v4 + 88), self->_waitInfo);
  objc_storeStrong((v4 + 96), self->_turnstileInfo);
  v6 = [(NSString *)self->_name copy];
  v7 = *(v4 + 104);
  *(v4 + 104) = v6;

  WeakRetained = objc_loadWeakRetained(&self->_dispatchQueue);
  objc_storeWeak((v4 + 112), WeakRetained);

  v9 = objc_loadWeakRetained(&self->_swiftTask);
  objc_storeWeak((v4 + 120), v9);

  *(v4 + 128) = self->_voucherIdentifier;
  *(v4 + 28) = self->_originPid;
  *(v4 + 32) = self->_proximatePid;
  *(v4 + 136) = self->_userTimeInNs;
  *(v4 + 144) = self->_systemTimeInNs;
  *(v4 + 152) = self->_instructions;
  *(v4 + 160) = self->_cycles;
  *(v4 + 9) = self->_basePriority;
  *(v4 + 10) = self->_scheduledPriority;
  *(v4 + 36) = self->_schedulerFlags;
  objc_storeStrong((v4 + 168), self->_timestampLastRan);
  objc_storeStrong((v4 + 176), self->_timestampLastMadeRunnable);
  v10 = *(v4 + 11) & 0xF8 | *(self + 11) & 7;
  *(v4 + 11) = v10;
  v11 = v10 & 0xC7 | (8 * ((*(self + 11) >> 3) & 7));
  *(v4 + 11) = v11;
  v12 = *(v4 + 21) & 0xF8 | *(self + 21) & 7;
  *(v4 + 21) = v12;
  *(v4 + 21) = v12 & 0xC7 | *(self + 21) & 0x38;
  v13 = *(v4 + 22) & 0xF8 | *(self + 22) & 7;
  *(v4 + 22) = v13;
  *(v4 + 22) = v13 & 0xC7 | *(self + 22) & 0x38;
  v14 = *(v4 + 23) & 0xF8 | self->_ioTier & 7;
  *(v4 + 23) = v14;
  *(v4 + 23) = v14 & 0xF7 | self->_ioTier & 8;
  *(v4 + 24) = self->_threadQosIpcOverride;
  v15 = *(self + 11) & 0x80 | v11 & 0x7F;
  *(v4 + 11) = v15;
  *(v4 + 11) = v15 & 0xBF | *(self + 11) & 0x40;
  v16 = *(v4 + 15) & 0xBF | (((*(self + 15) & 0x40) != 0) << 6);
  *(v4 + 15) = v16;
  *(v4 + 15) = *(self + 15) & 0x80 | v16 & 0x7F;
  *(v4 + 19) = *(v4 + 19) & 0xBF | *(self + 19) & 0x40;
  *(v4 + 40) = self->_state;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  equalCopy = equal;
  if (self->_systemTimeInNs == equalCopy[18] && self->_userTimeInNs == equalCopy[17] && self->_state == *(equalCopy + 10) && self->_basePriority == *(equalCopy + 9) && self->_scheduledPriority == *(equalCopy + 10) && self->_schedulerFlags == *(equalCopy + 9) && self->_voucherIdentifier == equalCopy[16] && self->_originPid == *(equalCopy + 7) && self->_proximatePid == *(equalCopy + 8))
  {
    v6 = *(self + 11);
    v7 = *(equalCopy + 11);
    if (((v7 ^ v6) & 0x3F) == 0 && ((*(equalCopy + 21) ^ *(self + 21)) & 7) == 0 && ((*(equalCopy + 22) ^ *(self + 22)) & 0x3F) == 0)
    {
      v10 = equalCopy;
      if ((*(equalCopy + 21) ^ *(self + 21)) & 0x38 | (*(equalCopy + 23) ^ self->_ioTier) & 7)
      {
        goto LABEL_21;
      }

      v8 = 0;
      if (v6 != v7 || self->_threadQosIpcOverride != *(equalCopy + 24))
      {
        goto LABEL_16;
      }

      if (((*(equalCopy + 19) ^ *(self + 19)) & 0x40) != 0 || (*(equalCopy + 15) ^ *(self + 15)) > 0x3F || self->_leafUserFrame != equalCopy[8] || self->_leafOfCRootFramesReplacedBySwiftAsync != equalCopy[9] || self->_leafKernelFrame != equalCopy[10] || self->_exclavesInfo != equalCopy[23])
      {
LABEL_21:
        v8 = 0;
        goto LABEL_16;
      }

      WeakRetained = objc_loadWeakRetained(&self->_dispatchQueue);
      v12 = objc_loadWeakRetained(v10 + 14);
      if (WeakRetained != v12)
      {
        v13 = 0;
LABEL_36:

        equalCopy = v10;
        v8 = v13;
        goto LABEL_16;
      }

      v14 = objc_loadWeakRetained(&self->_swiftTask);
      v15 = objc_loadWeakRetained(v10 + 15);
      if (v14 != v15)
      {
        goto LABEL_34;
      }

      waitInfo = self->_waitInfo;
      v17 = v10[11];
      if (waitInfo)
      {
        if (!v17 || ![(SAWaitInfo *)waitInfo isEqual:?])
        {
          goto LABEL_34;
        }
      }

      else if (v17)
      {
        goto LABEL_34;
      }

      turnstileInfo = self->_turnstileInfo;
      v19 = v10[12];
      if (turnstileInfo)
      {
        if (v19 && [(SATurnstileInfo *)turnstileInfo isEqual:?])
        {
LABEL_47:
          name = self->_name;
          v21 = v10[13];
          v13 = (name | v21) == 0;
          if (name && v21)
          {
            v13 = [(NSString *)name isEqualToString:?];
          }

          goto LABEL_35;
        }
      }

      else if (!v19)
      {
        goto LABEL_47;
      }

LABEL_34:
      v13 = 0;
LABEL_35:

      goto LABEL_36;
    }
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (id)stackWithBacktraceStyle:(unint64_t)style ignoringKernelStackWithLeafFrame:(id)frame
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((style & 0x19) == 0 && self->_leafKernelFrame != frame)
  {
    instruction = [frame instruction];
    if (!instruction)
    {
      goto LABEL_24;
    }

    v18 = instruction;
    instruction2 = [frame instruction];
    instruction3 = [(SAFrame *)self->_leafKernelFrame instruction];

    if (instruction2 != instruction3)
    {
LABEL_24:
      v21 = self->_leafKernelFrame;
      if (v21)
      {
        v22 = v21;
        selfCopy = self;
        styleCopy = style;
        do
        {
          if ([(SAFrame *)v22 isExclave])
          {
            if ((style & 0x20) == 0)
            {
              v24 = objc_getProperty(self, v23, 184, 1);
              v26 = v24;
              if (v24 && (v27 = objc_getProperty(v24, v25, 16, 1), v28 = [v27 count], v27, v28))
              {
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
                v71 = v26;
                v30 = objc_getProperty(v26, v29, 16, 1);
                reverseObjectEnumerator = [v30 reverseObjectEnumerator];

                v32 = [reverseObjectEnumerator countByEnumeratingWithState:&v73 objects:v79 count:16];
                if (v32)
                {
                  v34 = v32;
                  v35 = *v74;
                  do
                  {
                    v36 = 0;
                    do
                    {
                      if (*v74 != v35)
                      {
                        objc_enumerationMutation(reverseObjectEnumerator);
                      }

                      v37 = *(*(&v73 + 1) + 8 * v36);
                      if (v37)
                      {
                        Property = objc_getProperty(*(*(&v73 + 1) + 8 * v36), v33, 16, 1);
                      }

                      else
                      {
                        Property = 0;
                      }

                      v39 = Property;

                      if (v39)
                      {
                        if (v37)
                        {
                          v40 = objc_getProperty(v37, v33, 16, 1);
                          if (v40)
                          {
                            v41 = v40;
                            do
                            {
                              [v7 insertObject:v41 atIndex:0];
                              v42 = v41[4];
                              v43 = v42;

                              v41 = v43;
                            }

                            while (v42);
                          }
                        }
                      }

                      else
                      {
                        v45 = [SAExclaveFrame alloc];
                        if (v37)
                        {
                          v46 = objc_getProperty(v37, v44, 8, 1);
                        }

                        else
                        {
                          v46 = 0;
                        }

                        v47 = v46;
                        v48 = [(SAExclaveFrame *)v45 initWithExclave:v47];

                        if (v48)
                        {
                          *(v48 + 8) |= 8u;
                        }

                        [v7 insertObject:v48 atIndex:0];
                      }

                      ++v36;
                    }

                    while (v36 != v34);
                    v49 = [reverseObjectEnumerator countByEnumeratingWithState:&v73 objects:v79 count:16];
                    v34 = v49;
                  }

                  while (v49);
                }

                self = selfCopy;
                v26 = v71;
              }

              else
              {
                [v7 insertObject:v22 atIndex:0];
              }

              style = styleCopy;
            }
          }

          else
          {
            [v7 insertObject:v22 atIndex:0];
          }

          parentFrame = v22->_parentFrame;
          v51 = parentFrame;

          v22 = v51;
        }

        while (parentFrame);
      }
    }
  }

  if ((style & 2) == 0)
  {
    if ((style & 8) != 0 && (style & 0x14) != 0)
    {
      v62 = *__error();
      v63 = _sa_logt();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        styleCopy2 = style;
        _os_log_error_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_ERROR, "backtrace style specified both swift async only and prefer/only C root frames: 0x%llx", buf, 0xCu);
      }

      *__error() = v62;
      _SASetCrashLogMessage(1736, "backtrace style specified both swift async only and prefer/only C root frames: 0x%llx", v64, v65, v66, v67, v68, v69, style);
      _os_crash();
      __break(1u);
    }

    hasSwiftTask = [(SAThreadState *)self hasSwiftTask];
    v9 = 1;
    if ((style & 0x10) == 0 && hasSwiftTask)
    {
      v9 = (self->_leafOfCRootFramesReplacedBySwiftAsync != 0) & (style >> 2);
    }

    v10 = (style & 0x18) != 0 && hasSwiftTask;
    v11 = self->_leafUserFrame;
    if (v11)
    {
      v12 = v11;
      p_isa = 0;
      while (![(SAFrame *)v12 isSwiftAsync])
      {
        if (!v10)
        {
          goto LABEL_18;
        }

        v14 = v12;

        p_isa = &v14->super.isa;
LABEL_19:
        v15 = v12->_parentFrame;
        v16 = v15;

        v12 = v16;
        if (!v15)
        {
          goto LABEL_61;
        }
      }

      if (v9)
      {

        goto LABEL_62;
      }

LABEL_18:
      [v7 insertObject:v12 atIndex:0];
      goto LABEL_19;
    }

    p_isa = 0;
LABEL_61:
    if (v9)
    {
LABEL_62:
      v52 = self->_leafOfCRootFramesReplacedBySwiftAsync;
      if (v52)
      {
        v53 = v52;
        do
        {
          [v7 insertObject:v53 atIndex:0];
          v54 = v53->_parentFrame;
          v55 = v54;

          v53 = v55;
        }

        while (v54);
      }
    }

    if (p_isa)
    {
      v56 = v10;
    }

    else
    {
      v56 = 0;
    }

    if (v56)
    {
      v57 = p_isa[4];
      v58 = [p_isa copyWithNewParent:v57];

      if (v58)
      {
        if (v9)
        {
          v59 = 18;
        }

        else
        {
          v59 = 16;
        }

        v58[8] = v59 | v58[8] & 0xED;
      }

      [v7 addObject:v58];
    }
  }

  v60 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)hasSameStackAs:(id)as
{
  if (self->_leafUserFrame != *(as + 8) || self->_leafOfCRootFramesReplacedBySwiftAsync != *(as + 9) || self->_leafKernelFrame != *(as + 10))
  {
    return 0;
  }

  exclavesInfo = self->_exclavesInfo;
  v5 = *(as + 23);
  result = (exclavesInfo | v5) == 0;
  if (exclavesInfo)
  {
    if (v5)
    {
      return [(SAThreadExclavesInfo *)exclavesInfo matchesStack:v5];
    }
  }

  return result;
}

- (id)debugDescriptionWithThread:(id *)thread
{
  threadCopy = thread;
  if (thread)
  {
    v3 = [a2 debugDescription];
    v4 = [v3 mutableCopy];

    WeakRetained = objc_loadWeakRetained(threadCopy + 15);
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(threadCopy + 15);
      v7 = [v6 debugDescription];
      [v4 appendFormat:@" (%@)", v7];
    }

    v8 = objc_loadWeakRetained(threadCopy + 14);

    if (v8)
    {
      v9 = objc_loadWeakRetained(threadCopy + 14);
      v10 = [v9 debugDescription];
      [v4 appendFormat:@" (%@)", v10];
    }

    v11 = threadCopy[6];
    if (v11 == threadCopy[7])
    {
      v14 = [v11 debugDescription];
      [v4 appendFormat:@" at %@ sample index %lu", v14, objc_msgSend(threadCopy, "startSampleIndex")];
    }

    else
    {
      startSampleIndex = [threadCopy startSampleIndex];
      endSampleIndex = [threadCopy endSampleIndex];
      v14 = [threadCopy[6] debugDescription];
      v15 = [threadCopy[7] debugDescription];
      [v4 appendFormat:@" at sample indexes %lu-%lu\nstart:%@\n  end:%@", startSampleIndex, endSampleIndex, v14, v15];
    }

    threadCopy = [v4 copy];
  }

  return threadCopy;
}

- (NSString)debugDescription
{
  v3 = [@"thread state" mutableCopy];
  WeakRetained = objc_loadWeakRetained(&self->_swiftTask);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_swiftTask);
    v6 = [v5 debugDescription];
    [v3 appendFormat:@" (%@)", v6];
  }

  v7 = objc_loadWeakRetained(&self->_dispatchQueue);

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_dispatchQueue);
    v9 = [v8 debugDescription];
    [v3 appendFormat:@" (%@)", v9];
  }

  startTimestamp = self->_startTimestamp;
  endTimestamp = self->_endTimestamp;
  startSampleIndex = [(SAThreadState *)self startSampleIndex];
  if (startTimestamp == endTimestamp)
  {
    v14 = [(SATimestamp *)self->_startTimestamp debugDescription];
    [v3 appendFormat:@" at sample index %lu\n%@", startSampleIndex, v14];
  }

  else
  {
    endSampleIndex = [(SAThreadState *)self endSampleIndex];
    v14 = [(SATimestamp *)self->_startTimestamp debugDescription];
    v15 = [(SATimestamp *)self->_endTimestamp debugDescription];
    [v3 appendFormat:@" at sample indexes %lu-%lu\nstart:%@\n  end:%@", startSampleIndex, endSampleIndex, v14, v15];
  }

  v16 = [v3 copy];

  return v16;
}

- (void)setNeedsExclave:(BOOL)exclave
{
  if (exclave)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 20) = *(self + 20) & 0xBF | v3;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(SAThreadState *)self sizeInBytesForSerializedVersion]!= length)
  {
    v18 = *__error();
    v19 = _sa_logt();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(SAThreadState *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v20 UTF8String];
      v31 = 2048;
      sizeInBytesForSerializedVersion = [(SAThreadState *)self sizeInBytesForSerializedVersion];
      v33 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v18;
    v21 = [(SAThreadState *)self debugDescription];
    uTF8String2 = [v21 UTF8String];
    [(SAThreadState *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(4857, "%s: size %lu != buffer length %lu", v23, v24, v25, v26, v27, v28, uTF8String2);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 2561;
  *(&buffer->var3 + 2) = [(SAThreadState *)self startSampleIndex];
  *(&buffer->var4 + 2) = [(SAThreadState *)self endSampleIndex];
  *(&buffer->var10 + 2) = self->_voucherIdentifier;
  *(&buffer->var11 + 2) = self->_userTimeInNs;
  *(&buffer->var12 + 2) = self->_systemTimeInNs;
  *(&buffer->var13 + 2) = self->_instructions;
  *(&buffer->var14 + 2) = self->_cycles;
  *(&buffer->var15 + 2) = [(SAThreadState *)self basePriority];
  *(&buffer->var15 + 6) = [(SAThreadState *)self scheduledPriority];
  *(&buffer->var16 + 2) = self->_schedulerFlags;
  *(&buffer->var18 + 6) = *(self + 11) & 7;
  *(&buffer->var18 + 7) = (*(self + 11) >> 3) & 7;
  LOBYTE(buffer->var19) = *(self + 21) & 7;
  BYTE1(buffer->var19) = (*(self + 21) >> 3) & 7;
  WORD1(buffer->var19) = 1799;
  BYTE4(buffer->var19) = self->_threadQosIpcOverride;
  *(&buffer->var19 + 5) = self->_state;
  buffer->var21 = [(SAThreadState *)self microstackshotFlags];
  v9 = buffer->var22 & 0xFE | (*(self + 11) >> 7);
  buffer->var22 = v9;
  v10 = v9 & 0xFFFFFFFD | (2 * ((*(self + 11) >> 6) & 1));
  buffer->var22 = v10;
  v11 = v10 & 0xFFFFFFFB | (4 * ((*(self + 15) >> 6) & 1));
  buffer->var22 = v11;
  v12 = v11 & 0xFFFFFFF7 | (8 * ((*(self + 15) >> 7) & 1));
  buffer->var22 = v12;
  buffer->var22 = v12 & 0xEF | (*(self + 19) >> 2) & 0x10;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTimestamp, dictionary);
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTimestamp, dictionary);
  *(&buffer->var5 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_leafUserFrame, dictionary);
  *(&buffer->var30 + 7) = SASerializableIndexForPointerFromSerializationDictionary(self->_leafOfCRootFramesReplacedBySwiftAsync, dictionary);
  *(&buffer->var6 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_leafKernelFrame, dictionary);
  *(&buffer->var7 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_waitInfo, dictionary);
  *(&buffer->var8 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_name, dictionary);
  WeakRetained = objc_loadWeakRetained(&self->_dispatchQueue);
  *(&buffer->var9 + 2) = SASerializableIndexForPointerFromSerializationDictionary(WeakRetained, dictionary);

  v14 = objc_loadWeakRetained(&self->_swiftTask);
  *(&buffer->var29 + 7) = SASerializableIndexForPointerFromSerializationDictionary(v14, dictionary);

  *(&buffer->var36 + 7) = SASerializableIndexForPointerFromSerializationDictionary(self->_timestampLastRan, dictionary);
  *(&buffer->var17 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_timestampLastMadeRunnable, dictionary);
  *&buffer->var24 = SASerializableIndexForPointerFromSerializationDictionary(self->_turnstileInfo, dictionary);
  *&buffer->var28 = [(SAThreadState *)self cpuNum];
  buffer->var29.var1 = [(SAThreadState *)self cpuSpeedMhz];
  *(&buffer->var37 + 7) = [(SAThreadState *)self pmiCycleInterval];
  *(&buffer->var29 + 4) = [(SAThreadState *)self threadQosKEventOverride];
  *(&buffer->var29 + 5) = [(SAThreadState *)self threadQosWorkQueueOverride];
  *(&buffer->var29 + 6) = [(SAThreadState *)self threadQosWorkloopServicerOverride];
  if ([(SAThreadState *)self isPromotedAboveTask])
  {
    v15 = 32;
  }

  else
  {
    v15 = 0;
  }

  buffer->var22 = buffer->var22 & 0xDF | v15;
  *(&buffer->var32 + 3) = [(SAThreadState *)self originPid];
  *(&buffer->var35 + 1) = [(SAThreadState *)self proximatePid];
  *(&buffer->var35 + 5) = SASerializableIndexForPointerFromSerializationDictionary(self->_exclavesInfo, dictionary);
  v16 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SATimestamp *)self->_startTimestamp addSelfToSerializationDictionary:dictionary];
    [(SATimestamp *)self->_endTimestamp addSelfToSerializationDictionary:dictionary];
    [(SAFrame *)self->_leafUserFrame addSelfToSerializationDictionary:dictionary];
    [(SAFrame *)self->_leafOfCRootFramesReplacedBySwiftAsync addSelfToSerializationDictionary:dictionary];
    [(SAFrame *)self->_leafKernelFrame addSelfToSerializationDictionary:dictionary];
    [(SAWaitInfo *)self->_waitInfo addSelfToSerializationDictionary:dictionary];
    [(SATurnstileInfo *)self->_turnstileInfo addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_name addSelfToSerializationDictionary:dictionary];
    WeakRetained = objc_loadWeakRetained(&self->_dispatchQueue);
    [WeakRetained addSelfToSerializationDictionary:dictionary];

    v8 = objc_loadWeakRetained(&self->_swiftTask);
    [v8 addSelfToSerializationDictionary:dictionary];

    [(SATimestamp *)self->_timestampLastRan addSelfToSerializationDictionary:dictionary];
    [(SATimestamp *)self->_timestampLastMadeRunnable addSelfToSerializationDictionary:dictionary];
    exclavesInfo = self->_exclavesInfo;

    [(SAThreadExclavesInfo *)exclavesInfo addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v82 = *MEMORY[0x1E69E9840];
  if (*buffer >= 0xBu)
  {
    goto LABEL_52;
  }

  if (length <= 0x93)
  {
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v81 = 134218240;
      *&v81[4] = length;
      *&v81[12] = 2048;
      *&v81[14] = 148;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState struct %lu", v81, 0x16u);
    }

    *__error() = v24;
    _SASetCrashLogMessage(4956, "bufferLength %lu < serialized SAThreadState struct %lu", v26, v27, v28, v29, v30, v31, length);
    _os_crash();
    __break(1u);
LABEL_34:
    v32 = *__error();
    v33 = _sa_logt();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v81 = 134218240;
      *&v81[4] = length;
      *&v81[12] = 2048;
      *&v81[14] = 164;
      _os_log_error_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState v3 struct %lu", v81, 0x16u);
    }

    *__error() = v32;
    _SASetCrashLogMessage(5019, "bufferLength %lu < serialized SAThreadState v3 struct %lu", v34, v35, v36, v37, v38, v39, length);
    _os_crash();
    __break(1u);
    goto LABEL_37;
  }

  if ((*(buffer + 145) & 1) == 0)
  {
    v6 = objc_alloc_init(SAThreadState);
    goto LABEL_15;
  }

  v7 = *(buffer + 1);
  if (v7 < 3)
  {
    v8 = 0;
  }

  else
  {
    if (length <= 0xA3)
    {
LABEL_37:
      v40 = *__error();
      v41 = _sa_logt();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *v81 = 134218240;
        *&v81[4] = length;
        *&v81[12] = 2048;
        *&v81[14] = 164;
        _os_log_error_impl(&dword_1E0E2F000, v41, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState v3 struct %lu", v81, 0x16u);
      }

      *__error() = v40;
      _SASetCrashLogMessage(4967, "bufferLength %lu < serialized SAThreadState v3 struct %lu", v42, v43, v44, v45, v46, v47, length);
      _os_crash();
      __break(1u);
LABEL_40:
      v48 = *__error();
      v49 = _sa_logt();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *v81 = 134218240;
        *&v81[4] = length;
        *&v81[12] = 2048;
        *&v81[14] = 167;
        _os_log_error_impl(&dword_1E0E2F000, v49, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState v4 struct %lu", v81, 0x16u);
      }

      *__error() = v48;
      _SASetCrashLogMessage(5026, "bufferLength %lu < serialized SAThreadState v4 struct %lu", v50, v51, v52, v53, v54, v55, length);
      _os_crash();
      __break(1u);
      goto LABEL_43;
    }

    v8 = *(buffer + 40);
    if (v7 >= 0xA)
    {
      if (length <= 0xD6)
      {
LABEL_43:
        v56 = *__error();
        v57 = _sa_logt();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *v81 = 134218240;
          *&v81[4] = length;
          *&v81[12] = 2048;
          *&v81[14] = 215;
          _os_log_error_impl(&dword_1E0E2F000, v57, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState v10 struct %lu", v81, 0x16u);
        }

        *__error() = v56;
        _SASetCrashLogMessage(4974, "bufferLength %lu < serialized SAThreadState v10 struct %lu", v58, v59, v60, v61, v62, v63, length);
        _os_crash();
        __break(1u);
        goto LABEL_46;
      }

      v9 = *(buffer + 207);
      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_12:
  v10 = [SAThreadStateMicrostackshot alloc];
  if (v10)
  {
    v11 = *(buffer + 145);
    *v81 = v10;
    *&v81[8] = SAThreadStateMicrostackshot;
    v12 = objc_msgSendSuper2(v81, sel_init);
    v6 = v12;
    if (v12)
    {
      LOBYTE(v12[1].super.isa) = v11;
      WORD1(v12[1].super.isa) = v8 / 0x64;
      *&v12[1]._cpuNum = v9;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_15:
  v13 = *(buffer + 18);
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (v13 != 0x7FFFFFFF && v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = *(buffer + 18);
  }

  [(SAThreadState *)v6 setStartSampleIndex:v14];
  v15 = *(buffer + 26);
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (v15 != 0x7FFFFFFF && v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = *(buffer + 26);
  }

  [(SAThreadState *)v6 setEndSampleIndex:v16];
  v6->_voucherIdentifier = *(buffer + 74);
  v6->_userTimeInNs = *(buffer + 82);
  v6->_systemTimeInNs = *(buffer + 90);
  v6->_instructions = *(buffer + 98);
  v6->_cycles = *(buffer + 106);
  [(SAThreadState *)v6 setBasePriority:?];
  [(SAThreadState *)v6 setScheduledPriority:?];
  v6->_schedulerFlags = *(buffer + 122);
  v17 = *(v6 + 11) & 0xF8 | *(buffer + 134) & 7;
  *(v6 + 11) = v17;
  v18 = v17 & 0xC7 | (8 * (*(buffer + 135) & 7));
  *(v6 + 11) = v18;
  v19 = *(v6 + 21) & 0xF8 | *(buffer + 136) & 7;
  *(v6 + 21) = v19;
  *(v6 + 21) = (8 * (*(buffer + 137) & 7)) | v19 & 0xC7;
  v6->_threadQosIpcOverride = *(buffer + 140);
  v6->_state = *(buffer + 141);
  v20 = v18 & 0x7F | (*(buffer + 146) << 7);
  *(v6 + 11) = v20;
  *(v6 + 11) = (32 * *(buffer + 146)) & 0x40 | v20 & 0xBF;
  v21 = *(v6 + 15) & 0xBF | (((*(buffer + 146) >> 2) & 1) << 6);
  *(v6 + 15) = v21;
  *(v6 + 15) = v21 & 0x7F | (((*(buffer + 146) & 8) != 0) << 7);
  *(v6 + 19) = *(v6 + 19) & 0xBF | (4 * *(buffer + 146)) & 0x40;
  if (*(buffer + 1) < 3u)
  {
    goto LABEL_30;
  }

  if (length <= 0xA3)
  {
    goto LABEL_34;
  }

  [(SAThreadState *)v6 setCpuNum:?];
  if (*(buffer + 1) < 4u)
  {
    goto LABEL_30;
  }

  if (length <= 0xA6)
  {
    goto LABEL_40;
  }

  [(SAThreadState *)v6 setThreadQosKEventOverride:?];
  [(SAThreadState *)v6 setThreadQosWorkQueueOverride:?];
  [(SAThreadState *)v6 setThreadQosWorkloopServicerOverride:?];
  v6->_ioTier = v6->_ioTier & 0xF7 | (*(buffer + 146) >> 2) & 8;
  if (*(buffer + 1) < 6u)
  {
    goto LABEL_30;
  }

  if (length <= 0xBA)
  {
LABEL_46:
    v64 = *__error();
    v65 = _sa_logt();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *v81 = 134218240;
      *&v81[4] = length;
      *&v81[12] = 2048;
      *&v81[14] = 187;
      _os_log_error_impl(&dword_1E0E2F000, v65, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState v6 struct %lu", v81, 0x16u);
    }

    *__error() = v64;
    _SASetCrashLogMessage(5036, "bufferLength %lu < serialized SAThreadState v6 struct %lu", v66, v67, v68, v69, v70, v71, length);
    _os_crash();
    __break(1u);
LABEL_49:
    v72 = *__error();
    v73 = _sa_logt();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *v81 = 134218240;
      *&v81[4] = length;
      *&v81[12] = 2048;
      *&v81[14] = 191;
      _os_log_error_impl(&dword_1E0E2F000, v73, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState v7 struct %lu", v81, 0x16u);
    }

    *__error() = v72;
    _SASetCrashLogMessage(5043, "bufferLength %lu < serialized SAThreadState v7 struct %lu", v74, v75, v76, v77, v78, v79, length);
    _os_crash();
    __break(1u);
LABEL_52:
    v80 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAThreadState version" userInfo:0];
    objc_exception_throw(v80);
  }

  v6->_originPid = *(buffer + 183);
  if (*(buffer + 1) >= 7u)
  {
    if (length > 0xBE)
    {
      v6->_proximatePid = *(buffer + 187);
      goto LABEL_30;
    }

    goto LABEL_49;
  }

LABEL_30:
  v22 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v108 = *MEMORY[0x1E69E9840];
  if (*buffer >= 0xBu)
  {
    goto LABEL_30;
  }

  if (length <= 0x93)
  {
    v63 = *__error();
    v64 = _sa_logt();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy5 = length;
      v106 = 2048;
      v107 = 148;
      _os_log_error_impl(&dword_1E0E2F000, v64, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState struct %lu", buf, 0x16u);
    }

    *__error() = v63;
    _SASetCrashLogMessage(5056, "bufferLength %lu < serialized SAThreadState struct %lu", v65, v66, v67, v68, v69, v70, length);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  startTimestamp = self->_startTimestamp;
  self->_startTimestamp = v13;

  v15 = *(buffer + 10);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16);
  endTimestamp = self->_endTimestamp;
  self->_endTimestamp = v17;

  v19 = *(buffer + 34);
  v20 = objc_opt_class();
  v21 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v19, dictionary, bufferDictionary, v20, 0);
  leafUserFrame = self->_leafUserFrame;
  self->_leafUserFrame = v21;

  v23 = *(buffer + 42);
  v24 = objc_opt_class();
  v25 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v23, dictionary, bufferDictionary, v24, 0);
  leafKernelFrame = self->_leafKernelFrame;
  self->_leafKernelFrame = v25;

  v27 = *(buffer + 50);
  v28 = objc_opt_class();
  v29 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v27, dictionary, bufferDictionary, v28, 0);
  waitInfo = self->_waitInfo;
  self->_waitInfo = v29;

  v31 = *(buffer + 58);
  v32 = objc_opt_class();
  v33 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v31, dictionary, bufferDictionary, v32, 0);
  name = self->_name;
  self->_name = v33;

  v35 = *(buffer + 66);
  v36 = objc_opt_class();
  v37 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v35, dictionary, bufferDictionary, v36, 0);
  objc_storeWeak(&self->_dispatchQueue, v37);

  v38 = *(buffer + 126);
  v39 = objc_opt_class();
  v40 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v38, dictionary, bufferDictionary, v39, 0);
  timestampLastMadeRunnable = self->_timestampLastMadeRunnable;
  self->_timestampLastMadeRunnable = v40;

  if (*(buffer + 1) < 2u)
  {
LABEL_14:
    v62 = *MEMORY[0x1E69E9840];
    return;
  }

  if (length <= 0x9B)
  {
LABEL_18:
    v71 = *__error();
    v72 = _sa_logt();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy5 = length;
      v106 = 2048;
      v107 = 156;
      _os_log_error_impl(&dword_1E0E2F000, v72, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState v2 struct %lu", buf, 0x16u);
    }

    *__error() = v71;
    _SASetCrashLogMessage(5073, "bufferLength %lu < serialized SAThreadState v2 struct %lu", v73, v74, v75, v76, v77, v78, length);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v42 = *(buffer + 148);
  v43 = objc_opt_class();
  v44 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v42, dictionary, bufferDictionary, v43, 0);
  turnstileInfo = self->_turnstileInfo;
  self->_turnstileInfo = v44;

  if (*(buffer + 1) < 5u)
  {
    goto LABEL_14;
  }

  if (length <= 0xB6)
  {
LABEL_21:
    v79 = *__error();
    v80 = _sa_logt();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy5 = length;
      v106 = 2048;
      v107 = 183;
      _os_log_error_impl(&dword_1E0E2F000, v80, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState v5 struct %lu", buf, 0x16u);
    }

    *__error() = v79;
    _SASetCrashLogMessage(5079, "bufferLength %lu < serialized SAThreadState v5 struct %lu", v81, v82, v83, v84, v85, v86, length);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v46 = *(buffer + 167);
  v47 = objc_opt_class();
  v48 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v46, dictionary, bufferDictionary, v47, 0);
  objc_storeWeak(&self->_swiftTask, v48);

  v49 = *(buffer + 175);
  v50 = objc_opt_class();
  v51 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v49, dictionary, bufferDictionary, v50, 0);
  leafOfCRootFramesReplacedBySwiftAsync = self->_leafOfCRootFramesReplacedBySwiftAsync;
  self->_leafOfCRootFramesReplacedBySwiftAsync = v51;

  if (*(buffer + 1) < 8u)
  {
    goto LABEL_14;
  }

  if (length <= 0xC6)
  {
LABEL_24:
    v87 = *__error();
    v88 = _sa_logt();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy5 = length;
      v106 = 2048;
      v107 = 199;
      _os_log_error_impl(&dword_1E0E2F000, v88, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState v8 struct %lu", buf, 0x16u);
    }

    *__error() = v87;
    _SASetCrashLogMessage(5087, "bufferLength %lu < serialized SAThreadState v8 struct %lu", v89, v90, v91, v92, v93, v94, length);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  v53 = *(buffer + 191);
  v54 = objc_opt_class();
  v55 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v53, dictionary, bufferDictionary, v54, 0);
  exclavesInfo = self->_exclavesInfo;
  self->_exclavesInfo = v55;

  if (*(buffer + 1) < 9u)
  {
    goto LABEL_14;
  }

  if (length <= 0xCE)
  {
LABEL_27:
    v95 = *__error();
    v96 = _sa_logt();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy5 = length;
      v106 = 2048;
      v107 = 207;
      _os_log_error_impl(&dword_1E0E2F000, v96, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThreadState v9 struct %lu", buf, 0x16u);
    }

    *__error() = v95;
    _SASetCrashLogMessage(5093, "bufferLength %lu < serialized SAThreadState v9 struct %lu", v97, v98, v99, v100, v101, v102, length);
    _os_crash();
    __break(1u);
LABEL_30:
    v103 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAThreadState version" userInfo:0];
    objc_exception_throw(v103);
  }

  v57 = *(buffer + 199);
  v58 = objc_opt_class();
  v59 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v57, dictionary, bufferDictionary, v58, 0);
  timestampLastRan = self->_timestampLastRan;
  self->_timestampLastRan = v59;
  v61 = *MEMORY[0x1E69E9840];
}

+ (id)stateWithoutReferencesFromPAStyleSerializedThread:(uint64_t)thread
{
  objc_opt_self();
  v3 = objc_alloc_init(SAThreadState);
  v4 = v3;
  if (v3)
  {
    *(v3 + 22) |= 0x3Fu;
    v3->_ioTier = v3->_ioTier & 0xF0 | 7;
  }

  v5 = *a2;
  if (*a2 > 0x11235818uLL)
  {
    v3->_voucherIdentifier = *(a2 + 56);
    v3->_userTimeInNs = *(a2 + 64);
    v3->_systemTimeInNs = *(a2 + 72);
    v3->_instructions = *(a2 + 80);
    v3->_cycles = *(a2 + 88);
    v3->_state = *(a2 + 96);
    [(SAThreadState *)v3 setBasePriority:?];
    [(SAThreadState *)v4 setScheduledPriority:?];
    *(v4 + 36) = *(a2 + 100);
    *(v4 + 24) = *(a2 + 114);
    [(SAThreadState *)v4 setThreadQos:?];
    [(SAThreadState *)v4 setThreadRequestedQos:?];
    [(SAThreadState *)v4 setThreadRequestedQosOverride:?];
    [(SAThreadState *)v4 setThreadQosPromote:?];
    v6 = *(a2 + 115);
    if (v6)
    {
      *(v4 + 11) |= 0x40u;
      v6 = *(a2 + 115);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v4 + 11) |= 0x80u;
    v6 = *(a2 + 115);
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_18;
    }

LABEL_17:
    *(v4 + 15) |= 0x40u;
    v6 = *(a2 + 115);
    if ((v6 & 0x10) == 0)
    {
LABEL_42:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_45;
      }

      v8 = 19;
      goto LABEL_44;
    }

LABEL_18:
    *(v4 + 15) |= 0x80u;
    v6 = *(a2 + 115);
    goto LABEL_42;
  }

  if (*a2 == 287528984)
  {
    v3->_voucherIdentifier = *(a2 + 56);
    v3->_userTimeInNs = *(a2 + 64);
    v3->_systemTimeInNs = *(a2 + 72);
    v3->_state = *(a2 + 80);
    [(SAThreadState *)v3 setBasePriority:?];
    [(SAThreadState *)v4 setScheduledPriority:?];
    *(v4 + 36) = *(a2 + 84);
    *(v4 + 24) = *(a2 + 98);
    [(SAThreadState *)v4 setThreadQos:?];
    [(SAThreadState *)v4 setThreadRequestedQos:?];
    [(SAThreadState *)v4 setThreadRequestedQosOverride:?];
    [(SAThreadState *)v4 setThreadQosPromote:?];
    v6 = *(a2 + 99);
    if (v6)
    {
      *(v4 + 11) |= 0x40u;
      v6 = *(a2 + 99);
      if ((v6 & 2) == 0)
      {
LABEL_12:
        if ((v6 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_27;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v4 + 11) |= 0x80u;
    v6 = *(a2 + 99);
    if ((v6 & 4) == 0)
    {
LABEL_13:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(v4 + 15) |= 0x40u;
    v6 = *(a2 + 99);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_42;
    }

LABEL_28:
    *(v4 + 15) |= 0x80u;
    v6 = *(a2 + 99);
    goto LABEL_42;
  }

  if (v5 > 0x11235816)
  {
    v3->_voucherIdentifier = *(a2 + 56);
    v3->_userTimeInNs = *(a2 + 64);
    v3->_systemTimeInNs = *(a2 + 72);
    v3->_state = *(a2 + 80);
    [(SAThreadState *)v3 setBasePriority:?];
    [(SAThreadState *)v4 setScheduledPriority:?];
    *(v4 + 36) = *(a2 + 84);
    *(v4 + 24) = *(a2 + 95);
    [(SAThreadState *)v4 setThreadQos:?];
    [(SAThreadState *)v4 setThreadRequestedQos:?];
    [(SAThreadState *)v4 setThreadRequestedQosOverride:?];
    *(v4 + 21) |= 0x38u;
    v6 = *(a2 + 96);
    if (v6)
    {
      *(v4 + 11) |= 0x40u;
      v6 = *(a2 + 96);
      if ((v6 & 2) == 0)
      {
LABEL_22:
        if ((v6 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_40;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_22;
    }

    *(v4 + 11) |= 0x80u;
    v6 = *(a2 + 96);
    if ((v6 & 4) == 0)
    {
LABEL_23:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(v4 + 15) |= 0x40u;
    v6 = *(a2 + 96);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_42;
    }

LABEL_41:
    *(v4 + 15) |= 0x80u;
    v6 = *(a2 + 96);
    goto LABEL_42;
  }

  if (v5 > 287528980)
  {
    if (v5 == 287528981)
    {
      v3->_voucherIdentifier = *(a2 + 40);
      v3->_userTimeInNs = *(a2 + 48);
      v3->_systemTimeInNs = *(a2 + 56);
      v3->_state = *(a2 + 64);
      [(SAThreadState *)v3 setBasePriority:?];
      [(SAThreadState *)v4 setScheduledPriority:?];
      *(v4 + 36) = *(a2 + 68);
      *(v4 + 24) = *(a2 + 79);
      [(SAThreadState *)v4 setThreadQos:?];
      [(SAThreadState *)v4 setThreadRequestedQos:?];
      [(SAThreadState *)v4 setThreadRequestedQosOverride:?];
      *(v4 + 21) |= 0x38u;
      v13 = *(a2 + 80);
      if (v13)
      {
        *(v4 + 11) |= 0x40u;
        v13 = *(a2 + 80);
      }

      if ((v13 & 2) != 0)
      {
        *(v4 + 11) |= 0x80u;
        v13 = *(a2 + 80);
      }

      if ((v13 & 4) != 0)
      {
        goto LABEL_70;
      }

      goto LABEL_45;
    }

    v3->_voucherIdentifier = *(a2 + 48);
    v3->_userTimeInNs = *(a2 + 56);
    v3->_systemTimeInNs = *(a2 + 64);
    v3->_state = *(a2 + 72);
    [(SAThreadState *)v3 setBasePriority:?];
    [(SAThreadState *)v4 setScheduledPriority:?];
    *(v4 + 36) = *(a2 + 76);
    *(v4 + 24) = *(a2 + 87);
    [(SAThreadState *)v4 setThreadQos:?];
    [(SAThreadState *)v4 setThreadRequestedQos:?];
    [(SAThreadState *)v4 setThreadRequestedQosOverride:?];
    *(v4 + 21) |= 0x38u;
    v6 = *(a2 + 88);
    if (v6)
    {
      *(v4 + 11) |= 0x40u;
      v6 = *(a2 + 88);
      if ((v6 & 2) == 0)
      {
LABEL_51:
        if ((v6 & 4) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_66;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_51;
    }

    *(v4 + 11) |= 0x80u;
    v6 = *(a2 + 88);
    if ((v6 & 4) == 0)
    {
LABEL_52:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_42;
      }

LABEL_67:
      *(v4 + 15) |= 0x80u;
      v6 = *(a2 + 88);
      goto LABEL_42;
    }

LABEL_66:
    *(v4 + 15) |= 0x40u;
    v6 = *(a2 + 88);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_67;
  }

  if (v5 == 287528979)
  {
    v3->_voucherIdentifier = 0;
    v3->_userTimeInNs = *(a2 + 40);
    v3->_systemTimeInNs = *(a2 + 48);
    v3->_state = *(a2 + 64);
    [(SAThreadState *)v3 setBasePriority:?];
    [(SAThreadState *)v4 setScheduledPriority:?];
    *(v4 + 36) = *(a2 + 76);
    *(v4 + 24) = *(a2 + 84);
    [(SAThreadState *)v4 setThreadQos:?];
    v10 = *(v4 + 11);
    v11 = v10 | 0x38;
    *(v4 + 11) = v10 | 0x38;
    *(v4 + 21) |= 0x3Fu;
    v12 = *(a2 + 86);
    if ((v12 & 0x40) != 0)
    {
      v11 = v10 | 0x78;
      *(v4 + 11) = v10 | 0x78;
      v12 = *(a2 + 86);
      if ((v12 & 0x20) == 0)
      {
LABEL_56:
        if ((v12 & 0x10) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_70;
      }
    }

    else if ((*(a2 + 86) & 0x20) == 0)
    {
      goto LABEL_56;
    }

    *(v4 + 11) = v11 | 0x80;
    if ((*(a2 + 86) & 0x10) == 0)
    {
      goto LABEL_45;
    }

LABEL_70:
    v8 = 15;
LABEL_44:
    *(v4 + v8) |= 0x40u;
    goto LABEL_45;
  }

  if (v5 == 287528980)
  {
    v3->_voucherIdentifier = 0;
    v3->_userTimeInNs = *(a2 + 40);
    v3->_systemTimeInNs = *(a2 + 48);
    v3->_state = *(a2 + 64);
    [(SAThreadState *)v3 setBasePriority:?];
    [(SAThreadState *)v4 setScheduledPriority:?];
    *(v4 + 36) = *(a2 + 76);
    *(v4 + 24) = *(a2 + 84);
    [(SAThreadState *)v4 setThreadQos:?];
    [(SAThreadState *)v4 setThreadRequestedQos:?];
    [(SAThreadState *)v4 setThreadRequestedQosOverride:?];
    *(v4 + 21) |= 0x38u;
    v7 = *(a2 + 86);
    if ((v7 & 0x40) != 0)
    {
      *(v4 + 11) |= 0x40u;
      v7 = *(a2 + 86);
    }

    if ((v7 & 0x20) != 0)
    {
      *(v4 + 11) |= 0x80u;
      v7 = *(a2 + 86);
    }

    if ((v7 & 0x10) != 0)
    {
      goto LABEL_70;
    }
  }

LABEL_45:

  return v4;
}

- (void)populateReferencesUsingPAStyleSerializedThread:(void *)thread andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:
{
  if (!self)
  {
    return;
  }

  v8 = *(self + 96);
  *(self + 96) = 0;

  if (*a2 <= 0x11235816uLL)
  {
    v30 = a2[1];
    if (*a2 != 287528982)
    {
      if (v30 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v57 = @"Bad leaf frame index";
      }

      else
      {
        v45 = objc_opt_class();
        v46 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v30, thread, dictionary, v45, 0);
        if (v46)
        {
          self = v46;
          v48 = objc_getProperty(v46, v47, 8, 1);

          if (!v48)
          {
            v50 = objc_getProperty(self, v49, 8, 1);
            v51 = *(self + 64);
            *(self + 64) = v50;

            v52 = *(self + 80);
            *(self + 80) = 0;

            v53 = 0;
            if (*a2 > 0x11235814uLL)
            {
              v54 = a2[2];
              if (v54 == -2)
              {
LABEL_34:
                v57 = @"Bad thread name index";
                goto LABEL_43;
              }

              v55 = objc_opt_class();
              v53 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v54, thread, dictionary, v55, 0);
            }

            v56 = *(self + 104);
            *(self + 104) = v53;

            v18 = *(self + 88);
            *(self + 88) = 0;
            goto LABEL_30;
          }
        }

        v57 = @"nil leaf frame";
      }

LABEL_43:
      v58 = [SAException exceptionWithName:@"Decoding failure" reason:v57 userInfo:0];
      objc_exception_throw(v58);
    }

    if (v30 != -2)
    {
      v31 = objc_opt_class();
      v32 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v30, thread, dictionary, v31, 0);
      self = v32;
      if (v32)
      {
        Property = objc_getProperty(v32, v33, 8, 1);
      }

      else
      {
        Property = 0;
      }

      objc_storeStrong((self + 64), Property);
      v35 = a2[2];
      if (v35 != -2)
      {
        v36 = objc_opt_class();
        v37 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v35, thread, dictionary, v36, 0);
        v18 = v37;
        if (v37)
        {
          v39 = objc_getProperty(v37, v38, 8, 1);
        }

        else
        {
          v39 = 0;
        }

        objc_storeStrong((self + 80), v39);
        v40 = a2[3];
        if (v40 != -2)
        {
          v41 = objc_opt_class();
          v42 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v40, thread, dictionary, v41, 0);
          v43 = *(self + 104);
          *(self + 104) = v42;

          v44 = *(self + 88);
          *(self + 88) = 0;

          goto LABEL_30;
        }

        goto LABEL_34;
      }

      goto LABEL_36;
    }

LABEL_35:
    v57 = @"Bad leaf user frame index";
    goto LABEL_43;
  }

  v9 = a2[1];
  if (v9 == -2)
  {
    goto LABEL_35;
  }

  v10 = objc_opt_class();
  v11 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v9, thread, dictionary, v10, 0);
  self = v11;
  if (v11)
  {
    v13 = objc_getProperty(v11, v12, 8, 1);
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong((self + 64), v13);
  v14 = a2[2];
  if (v14 == -2)
  {
LABEL_36:
    v57 = @"Bad leaf kernel frame index";
    goto LABEL_43;
  }

  v15 = objc_opt_class();
  v16 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v14, thread, dictionary, v15, 0);
  v18 = v16;
  if (v16)
  {
    v19 = objc_getProperty(v16, v17, 8, 1);
  }

  else
  {
    v19 = 0;
  }

  objc_storeStrong((self + 80), v19);
  v20 = a2[3];
  if (v20 == -2)
  {
    v57 = @"Bad wait info index";
    goto LABEL_43;
  }

  v21 = objc_opt_class();
  v22 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v20, thread, dictionary, v21, 0);
  v24 = v22;
  if (v22)
  {
    v25 = objc_getProperty(v22, v23, 8, 1);
  }

  else
  {
    v25 = 0;
  }

  objc_storeStrong((self + 88), v25);
  v26 = a2[4];
  if (v26 == -2)
  {
    goto LABEL_34;
  }

  v27 = objc_opt_class();
  v28 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v26, thread, dictionary, v27, 0);
  v29 = *(self + 104);
  *(self + 104) = v28;

LABEL_30:
}

- (void)applyPAStyleSampleTimestamp:(uint64_t)timestamp
{
  if (timestamp)
  {
    v5 = *(timestamp + 48);
    v4 = (timestamp + 48);
    if (!v5)
    {
      objc_storeStrong(v4, obj);
    }

    objc_storeStrong((timestamp + 56), obj);
  }
}

@end