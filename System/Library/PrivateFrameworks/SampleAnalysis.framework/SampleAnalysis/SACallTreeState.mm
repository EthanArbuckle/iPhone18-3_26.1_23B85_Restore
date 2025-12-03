@interface SACallTreeState
+ (id)treeCountedStateWithWaitInfo:(uint64_t)info turnstileInfo:(uint64_t)turnstileInfo isPartOfADeadlock:(uint64_t)deadlock isBlockedByADeadlock:(uint64_t)aDeadlock state:(unsigned int)state microstackshotState:(uint64_t)microstackshotState pid:(unsigned int)pid threadId:(int)id threadPriority:(uint64_t)priority timeRange:(char)info0 originPid:(uint64_t)info1 proximatePid:(uint64_t)info2 startSampleIndex:(uint64_t)info3 sampleCount:(uint64_t)info4;
+ (void)writeJSONDictionaryEntriesToStream:(__int16)stream microstackshotState:(__int16)state primaryMicrostackshotState:(int)microstackshotState includeIdleAndBattery:;
+ (void)writeJSONDictionaryEntriesToStream:(unint64_t)stream state:(uint64_t)state primaryState:;
- (NSString)debugDescription;
- (SACallTreeState)initWithWaitInfo:(id)info turnstileInfo:(id)turnstileInfo isPartOfADeadlock:(BOOL)deadlock isBlockedByADeadlock:(BOOL)aDeadlock state:(_SACountedState)state microstackshotState:(unsigned int)microstackshotState pid:(int)pid threadId:(unint64_t)self0 threadPriority:(unsigned __int8)self1 timeRange:(id)self2 originPid:(int)self3 proximatePid:(int)self4 startSampleIndex:(unint64_t)self5 sampleCount:(unint64_t)self6;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SACallTreeState

- (SACallTreeState)initWithWaitInfo:(id)info turnstileInfo:(id)turnstileInfo isPartOfADeadlock:(BOOL)deadlock isBlockedByADeadlock:(BOOL)aDeadlock state:(_SACountedState)state microstackshotState:(unsigned int)microstackshotState pid:(int)pid threadId:(unint64_t)self0 threadPriority:(unsigned __int8)self1 timeRange:(id)self2 originPid:(int)self3 proximatePid:(int)self4 startSampleIndex:(unint64_t)self5 sampleCount:(unint64_t)self6
{
  v27.receiver = self;
  v27.super_class = SACallTreeState;
  v22 = [(SACallTreeNode *)&v27 initWithStartSampleIndex:index sampleCount:count];
  if (v22)
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{range, 0}];
    timeRanges = v22->_timeRanges;
    v22->_timeRanges = v23;

    v22->_pid = pid;
    v22->_threadId = id;
    v22->_threadPriority = priority;
    objc_storeStrong(&v22->_waitInfo, info);
    objc_storeStrong(&v22->_turnstileInfo, turnstileInfo);
    v22->_isPartOfADeadlock = deadlock;
    v22->_isBlockedByADeadlock = aDeadlock;
    v22->_state = state;
    v22->_microstackshotState = microstackshotState;
    v25 = index + count - 1;
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v22->_endSampleIndex = v25;
    v22->_originPid = originPid;
    v22->_proximatePid = proximatePid;
  }

  return v22;
}

+ (id)treeCountedStateWithWaitInfo:(uint64_t)info turnstileInfo:(uint64_t)turnstileInfo isPartOfADeadlock:(uint64_t)deadlock isBlockedByADeadlock:(uint64_t)aDeadlock state:(unsigned int)state microstackshotState:(uint64_t)microstackshotState pid:(unsigned int)pid threadId:(int)id threadPriority:(uint64_t)priority timeRange:(char)info0 originPid:(uint64_t)info1 proximatePid:(uint64_t)info2 startSampleIndex:(uint64_t)info3 sampleCount:(uint64_t)info4
{
  LOBYTE(v17) = range;
  LODWORD(v16) = id;
  v14 = [objc_alloc(objc_opt_self()) initWithWaitInfo:turnstileInfo turnstileInfo:deadlock isPartOfADeadlock:aDeadlock isBlockedByADeadlock:state state:microstackshotState microstackshotState:pid pid:v16 threadId:priority threadPriority:v17 timeRange:originPid originPid:proximatePid proximatePid:index startSampleIndex:count sampleCount:?];

  return v14;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  v5 = MEMORY[0x1E695E118];
  v6 = MEMORY[0x1E695E110];
  if ((self->_microstackshotState & 2) != 0)
  {
    v7 = MEMORY[0x1E695E118];
  }

  else
  {
    v7 = MEMORY[0x1E695E110];
  }

  SAJSONWriteDictionaryFirstEntry(stream, @"foreground", v7);
  microstackshotState = self->_microstackshotState;
  if ((microstackshotState & 0x10) != 0)
  {
    if ((microstackshotState & 4) != 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }

    SAJSONWriteDictionaryEntry(stream, @"userActive", v9);
    if ((self->_microstackshotState & 8) != 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    SAJSONWriteDictionaryEntry(stream, @"onBattery", v10);
    microstackshotState = self->_microstackshotState;
  }

  if ((microstackshotState & 0x20) != 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  SAJSONWriteDictionaryEntry(stream, @"suppressed", v11);
  if ((self->_microstackshotState & 0x80) != 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  SAJSONWriteDictionaryEntry(stream, @"kernelMode", v12);
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:StringForMicrostackshotStateQoS((self->_microstackshotState >> 8) & 7)];
  SAJSONWriteDictionaryEntry(stream, @"effectiveQos", v13);

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:StringForMicrostackshotStateQoS((self->_microstackshotState >> 11) & 7)];
  SAJSONWriteDictionaryEntry(stream, @"requestedQos", v14);

  var0 = self->_state.var0.var0;
  if ((var0 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    [SACallTreeState writeJSONDictionaryEntriesToStream:stream state:var0 primaryState:0];
  }

  waitInfo = self->_waitInfo;
  if (waitInfo)
  {
    v17 = [(SAWaitInfo *)waitInfo descriptionForPid:self->_pid tid:self->_threadId options:3 nameCallback:&__block_literal_global_8];
    if (v17)
    {
      SAJSONWriteDictionaryEntry(stream, @"waitInfo", v17);
    }
  }

  turnstileInfo = self->_turnstileInfo;
  if (turnstileInfo)
  {
    v19 = [(SATurnstileInfo *)turnstileInfo descriptionForPid:self->_pid tid:self->_threadId threadPriority:self->_threadPriority options:3 nameCallback:&__block_literal_global_143];
    if (v19)
    {
      SAJSONWriteDictionaryEntry(stream, @"turnstileInfo", v19);
    }
  }

  if (self->_isPartOfADeadlock)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:1];
    SAJSONWriteDictionaryEntry(stream, @"isPartOfADeadlock", v20);
  }

  if (self->_isBlockedByADeadlock)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:1];
    SAJSONWriteDictionaryEntry(stream, @"isBlockedByADeadlock", v21);
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SACallTreeNode sampleCount](self, "sampleCount")}];
  SAJSONWriteDictionaryEntry(stream, @"count", v22);
}

+ (void)writeJSONDictionaryEntriesToStream:(unint64_t)stream state:(uint64_t)state primaryState:
{
  v7 = HIDWORD(stream);
  v8 = HIWORD(stream);
  v9 = HIBYTE(stream);
  objc_opt_self();
  if (!state)
  {
    if ((v9 & 0x10) != 0)
    {
      SAJSONWriteDictionaryEntry(a2, @"suspended", MEMORY[0x1E695E118]);
    }

    if ((v9 & 4) != 0)
    {
      v13 = @"running";
    }

    else
    {
      if ((v9 & 8) == 0)
      {
        goto LABEL_24;
      }

      v13 = @"runnable";
    }

    SAJSONWriteDictionaryEntry(a2, v13, MEMORY[0x1E695E118]);
LABEL_24:
    v16 = v8;
    if (!v8)
    {
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  v10 = *(state + 7);
  v11 = v10 ^ v9;
  if (((v10 ^ v9) & 0x10) != 0)
  {
    if ((v9 & 0x10) != 0)
    {
      v12 = MEMORY[0x1E695E118];
    }

    else
    {
      v12 = MEMORY[0x1E695E110];
    }

    SAJSONWriteDictionaryEntry(a2, @"suspended", v12);
    v10 = *(state + 7);
    v11 = v10 ^ v9;
  }

  if ((v11 & 4) != 0)
  {
    v14 = @"running";
    if ((v9 & 4) != 0)
    {
      v15 = MEMORY[0x1E695E118];
LABEL_27:
      SAJSONWriteDictionaryEntry(a2, v14, v15);
      goto LABEL_28;
    }

    SAJSONWriteDictionaryEntry(a2, @"running", MEMORY[0x1E695E110]);
    v10 = *(state + 7);
    v11 = v10 ^ v9;
LABEL_17:
    if (!(v10 & 4 | v11 & 8))
    {
      goto LABEL_28;
    }

    if ((v9 & 8) != 0)
    {
      v15 = MEMORY[0x1E695E118];
    }

    else
    {
      v15 = MEMORY[0x1E695E110];
    }

    v14 = @"runnable";
    goto LABEL_27;
  }

  if ((v9 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_28:
  v16 = v8;
  if ((v8 != 0) != (*(state + 6) != 0))
  {
    if (!v8)
    {
      SAJSONWriteDictionaryEntry(a2, @"cpuNum", &unk_1F5BDCA18);
      goto LABEL_35;
    }

LABEL_34:
    v17 = [MEMORY[0x1E696AD98] numberWithInt:(v16 - 1)];
    SAJSONWriteDictionaryEntry(a2, @"cpuNum", v17);

    if (state)
    {
      goto LABEL_35;
    }

LABEL_47:
    if ((v9 & 2) != 0)
    {
      SAJSONWriteDictionaryEntry(a2, @"eCore", MEMORY[0x1E695E118]);
    }

    if ((stream & 0x100000000000000) != 0)
    {
      SAJSONWriteDictionaryEntry(a2, @"pCore", MEMORY[0x1E695E118]);
    }

    if ((stream & 0xFFFF00000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  if (v8 && *(state + 6) && *(state + 6) != BYTE6(stream))
  {
    goto LABEL_34;
  }

LABEL_35:
  v18 = *(state + 7);
  if (((v18 ^ v9) & 2) != 0)
  {
    if ((v9 & 2) != 0)
    {
      v19 = MEMORY[0x1E695E118];
    }

    else
    {
      v19 = MEMORY[0x1E695E110];
    }

    SAJSONWriteDictionaryEntry(a2, @"eCore", v19);
    LOBYTE(v18) = *(state + 7);
  }

  if ((HIBYTE(stream) & 1) != (v18 & 1))
  {
    if (v9)
    {
      v20 = MEMORY[0x1E695E118];
    }

    else
    {
      v20 = MEMORY[0x1E695E110];
    }

    SAJSONWriteDictionaryEntry(a2, @"pCore", v20);
  }

  if (*(state + 4) != v7)
  {
LABEL_52:
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:100 * v7];
    SAJSONWriteDictionaryEntry(a2, @"cpuSpeedMhz", v21);

    if (state)
    {
      goto LABEL_53;
    }

LABEL_55:
    if (!stream)
    {
      return;
    }

    goto LABEL_56;
  }

LABEL_53:
  if (*state == stream)
  {
    return;
  }

LABEL_56:
  stream = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000000 * stream];
  SAJSONWriteDictionaryEntry(a2, @"pmiCycleInterval", stream);
}

id __54__SACallTreeState_writeJSONDictionaryEntriesToStream___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == -1)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%llx", a3, v8];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (a3)
    {
      v6 = [v5 initWithFormat:@"[%d] 0x%llx", a2, a3];
    }

    else
    {
      v6 = [v5 initWithFormat:@"[%d]", a2, v8];
    }
  }

  return v6;
}

id __54__SACallTreeState_writeJSONDictionaryEntriesToStream___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == -1)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%llx", a3, v8];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (a3)
    {
      v6 = [v5 initWithFormat:@"[%d] 0x%llx", a2, a3];
    }

    else
    {
      v6 = [v5 initWithFormat:@"[%d]", a2, v8];
    }
  }

  return v6;
}

+ (void)writeJSONDictionaryEntriesToStream:(__int16)stream microstackshotState:(__int16)state primaryMicrostackshotState:(int)microstackshotState includeIdleAndBattery:
{
  objc_opt_self();
  v9 = MEMORY[0x1E695E118];
  v10 = MEMORY[0x1E695E110];
  if ((stream & 2) != (state & 2))
  {
    if ((stream & 2) != 0)
    {
      v11 = MEMORY[0x1E695E118];
    }

    else
    {
      v11 = MEMORY[0x1E695E110];
    }

    SAJSONWriteDictionaryEntry(a2, @"foreground", v11);
  }

  if ((stream & 0x20) != (state & 0x20))
  {
    if ((stream & 0x20) != 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    SAJSONWriteDictionaryEntry(a2, @"suppressed", v12);
  }

  if ((stream & 0x80) != (state & 0x80))
  {
    if ((stream & 0x80) != 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }

    SAJSONWriteDictionaryEntry(a2, @"kernelMode", v13);
  }

  if (microstackshotState)
  {
    if ((stream & 0x10) == 0)
    {
      if ((state & 0x10) == 0)
      {
        goto LABEL_36;
      }

      v14 = @"idleBatteryInvalid";
      v15 = MEMORY[0x1E695E118];
      goto LABEL_35;
    }

    if ((state & 0x10) == 0)
    {
      if ((stream & 4) != 0)
      {
        v16 = v10;
      }

      else
      {
        v16 = v9;
      }

      SAJSONWriteDictionaryEntry(a2, @"userActive", v16);
LABEL_31:
      if ((stream & 8) != 0)
      {
        v15 = v9;
      }

      else
      {
        v15 = v10;
      }

      v14 = @"onBattery";
LABEL_35:
      SAJSONWriteDictionaryEntry(a2, v14, v15);
      goto LABEL_36;
    }

    if (((state ^ stream) & 4) != 0)
    {
      if ((stream & 4) != 0)
      {
        v17 = v10;
      }

      else
      {
        v17 = v9;
      }

      SAJSONWriteDictionaryEntry(a2, @"userActive", v17);
    }

    if (((state ^ stream) & 8) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_36:
  if ((stream & 0x700) != (state & 0x700))
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:StringForMicrostackshotStateQoS((stream & 0x700) >> 8)];
    SAJSONWriteDictionaryEntry(a2, @"effectiveQos", v18);
  }

  if ((stream & 0x3800) != (state & 0x3800))
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:StringForMicrostackshotStateQoS((stream & 0x3800) >> 11)];
    SAJSONWriteDictionaryEntry(a2, @"requestedQos", v19);
  }
}

- (NSString)debugDescription
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  startSampleIndex = [(SACallTreeNode *)self startSampleIndex];
  if (self)
  {
    endSampleIndex = self->_endSampleIndex;
  }

  else
  {
    endSampleIndex = 0;
  }

  sampleCount = [(SACallTreeNode *)self sampleCount];
  threadId = self->_threadId;
  v17 = sampleCount;
  threadPriority = self->_threadPriority;
  var0 = self->_state.var0.var0;
  pid = self->_pid;
  microstackshotState = self->_microstackshotState;
  v7 = [(SAWaitInfo *)self->_waitInfo debugDescription];
  v8 = [(SATurnstileInfo *)self->_turnstileInfo debugDescription];
  isPartOfADeadlock = self->_isPartOfADeadlock;
  isBlockedByADeadlock = self->_isBlockedByADeadlock;
  v11 = [(NSMutableArray *)self->_childIOEvents debugDescription];
  v12 = [(NSMutableArray *)self->_timeRanges debugDescription];
  v13 = [v20 initWithFormat:@"tree state %lu-%lu (%lu) [%d] thread 0x%llx priority:%d state:0x%llx microState:0x%x waitInfo:%@ turnstileInfo:%@ deadlocked:%d indirectly_deadlocked:%d io:%@ timeRanges:%@ originPid:%d proximatePid:%d", startSampleIndex, endSampleIndex, v17, pid, threadId, threadPriority, var0, microstackshotState, v7, v8, isPartOfADeadlock, isBlockedByADeadlock, v11, v12, self->_originPid, self->_proximatePid];

  return v13;
}

@end