@interface SACallTreeState
+ (id)treeCountedStateWithWaitInfo:(uint64_t)a1 turnstileInfo:(uint64_t)a2 isPartOfADeadlock:(uint64_t)a3 isBlockedByADeadlock:(uint64_t)a4 state:(unsigned int)a5 microstackshotState:(uint64_t)a6 pid:(unsigned int)a7 threadId:(int)a8 threadPriority:(uint64_t)a9 timeRange:(char)a10 originPid:(uint64_t)a11 proximatePid:(uint64_t)a12 startSampleIndex:(uint64_t)a13 sampleCount:(uint64_t)a14;
+ (void)writeJSONDictionaryEntriesToStream:(__int16)a3 microstackshotState:(__int16)a4 primaryMicrostackshotState:(int)a5 includeIdleAndBattery:;
+ (void)writeJSONDictionaryEntriesToStream:(unint64_t)a3 state:(uint64_t)a4 primaryState:;
- (NSString)debugDescription;
- (SACallTreeState)initWithWaitInfo:(id)a3 turnstileInfo:(id)a4 isPartOfADeadlock:(BOOL)a5 isBlockedByADeadlock:(BOOL)a6 state:(_SACountedState)a7 microstackshotState:(unsigned int)a8 pid:(int)a9 threadId:(unint64_t)a10 threadPriority:(unsigned __int8)a11 timeRange:(id)a12 originPid:(int)a13 proximatePid:(int)a14 startSampleIndex:(unint64_t)a15 sampleCount:(unint64_t)a16;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SACallTreeState

- (SACallTreeState)initWithWaitInfo:(id)a3 turnstileInfo:(id)a4 isPartOfADeadlock:(BOOL)a5 isBlockedByADeadlock:(BOOL)a6 state:(_SACountedState)a7 microstackshotState:(unsigned int)a8 pid:(int)a9 threadId:(unint64_t)a10 threadPriority:(unsigned __int8)a11 timeRange:(id)a12 originPid:(int)a13 proximatePid:(int)a14 startSampleIndex:(unint64_t)a15 sampleCount:(unint64_t)a16
{
  v27.receiver = self;
  v27.super_class = SACallTreeState;
  v22 = [(SACallTreeNode *)&v27 initWithStartSampleIndex:a15 sampleCount:a16];
  if (v22)
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a12, 0}];
    timeRanges = v22->_timeRanges;
    v22->_timeRanges = v23;

    v22->_pid = a9;
    v22->_threadId = a10;
    v22->_threadPriority = a11;
    objc_storeStrong(&v22->_waitInfo, a3);
    objc_storeStrong(&v22->_turnstileInfo, a4);
    v22->_isPartOfADeadlock = a5;
    v22->_isBlockedByADeadlock = a6;
    v22->_state = a7;
    v22->_microstackshotState = a8;
    v25 = a15 + a16 - 1;
    if (a15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v22->_endSampleIndex = v25;
    v22->_originPid = a13;
    v22->_proximatePid = a14;
  }

  return v22;
}

+ (id)treeCountedStateWithWaitInfo:(uint64_t)a1 turnstileInfo:(uint64_t)a2 isPartOfADeadlock:(uint64_t)a3 isBlockedByADeadlock:(uint64_t)a4 state:(unsigned int)a5 microstackshotState:(uint64_t)a6 pid:(unsigned int)a7 threadId:(int)a8 threadPriority:(uint64_t)a9 timeRange:(char)a10 originPid:(uint64_t)a11 proximatePid:(uint64_t)a12 startSampleIndex:(uint64_t)a13 sampleCount:(uint64_t)a14
{
  LOBYTE(v17) = a10;
  LODWORD(v16) = a8;
  v14 = [objc_alloc(objc_opt_self()) initWithWaitInfo:a2 turnstileInfo:a3 isPartOfADeadlock:a4 isBlockedByADeadlock:a5 state:a6 microstackshotState:a7 pid:v16 threadId:a9 threadPriority:v17 timeRange:a11 originPid:a12 proximatePid:a13 startSampleIndex:a14 sampleCount:?];

  return v14;
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
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

  SAJSONWriteDictionaryFirstEntry(a3, @"foreground", v7);
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

    SAJSONWriteDictionaryEntry(a3, @"userActive", v9);
    if ((self->_microstackshotState & 8) != 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    SAJSONWriteDictionaryEntry(a3, @"onBattery", v10);
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

  SAJSONWriteDictionaryEntry(a3, @"suppressed", v11);
  if ((self->_microstackshotState & 0x80) != 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  SAJSONWriteDictionaryEntry(a3, @"kernelMode", v12);
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:StringForMicrostackshotStateQoS((self->_microstackshotState >> 8) & 7)];
  SAJSONWriteDictionaryEntry(a3, @"effectiveQos", v13);

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:StringForMicrostackshotStateQoS((self->_microstackshotState >> 11) & 7)];
  SAJSONWriteDictionaryEntry(a3, @"requestedQos", v14);

  var0 = self->_state.var0.var0;
  if ((var0 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    [SACallTreeState writeJSONDictionaryEntriesToStream:a3 state:var0 primaryState:0];
  }

  waitInfo = self->_waitInfo;
  if (waitInfo)
  {
    v17 = [(SAWaitInfo *)waitInfo descriptionForPid:self->_pid tid:self->_threadId options:3 nameCallback:&__block_literal_global_8];
    if (v17)
    {
      SAJSONWriteDictionaryEntry(a3, @"waitInfo", v17);
    }
  }

  turnstileInfo = self->_turnstileInfo;
  if (turnstileInfo)
  {
    v19 = [(SATurnstileInfo *)turnstileInfo descriptionForPid:self->_pid tid:self->_threadId threadPriority:self->_threadPriority options:3 nameCallback:&__block_literal_global_143];
    if (v19)
    {
      SAJSONWriteDictionaryEntry(a3, @"turnstileInfo", v19);
    }
  }

  if (self->_isPartOfADeadlock)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:1];
    SAJSONWriteDictionaryEntry(a3, @"isPartOfADeadlock", v20);
  }

  if (self->_isBlockedByADeadlock)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:1];
    SAJSONWriteDictionaryEntry(a3, @"isBlockedByADeadlock", v21);
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SACallTreeNode sampleCount](self, "sampleCount")}];
  SAJSONWriteDictionaryEntry(a3, @"count", v22);
}

+ (void)writeJSONDictionaryEntriesToStream:(unint64_t)a3 state:(uint64_t)a4 primaryState:
{
  v7 = HIDWORD(a3);
  v8 = HIWORD(a3);
  v9 = HIBYTE(a3);
  objc_opt_self();
  if (!a4)
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

  v10 = *(a4 + 7);
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
    v10 = *(a4 + 7);
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
    v10 = *(a4 + 7);
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
  if ((v8 != 0) != (*(a4 + 6) != 0))
  {
    if (!v8)
    {
      SAJSONWriteDictionaryEntry(a2, @"cpuNum", &unk_1F5BDCA18);
      goto LABEL_35;
    }

LABEL_34:
    v17 = [MEMORY[0x1E696AD98] numberWithInt:(v16 - 1)];
    SAJSONWriteDictionaryEntry(a2, @"cpuNum", v17);

    if (a4)
    {
      goto LABEL_35;
    }

LABEL_47:
    if ((v9 & 2) != 0)
    {
      SAJSONWriteDictionaryEntry(a2, @"eCore", MEMORY[0x1E695E118]);
    }

    if ((a3 & 0x100000000000000) != 0)
    {
      SAJSONWriteDictionaryEntry(a2, @"pCore", MEMORY[0x1E695E118]);
    }

    if ((a3 & 0xFFFF00000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  if (v8 && *(a4 + 6) && *(a4 + 6) != BYTE6(a3))
  {
    goto LABEL_34;
  }

LABEL_35:
  v18 = *(a4 + 7);
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
    LOBYTE(v18) = *(a4 + 7);
  }

  if ((HIBYTE(a3) & 1) != (v18 & 1))
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

  if (*(a4 + 4) != v7)
  {
LABEL_52:
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:100 * v7];
    SAJSONWriteDictionaryEntry(a2, @"cpuSpeedMhz", v21);

    if (a4)
    {
      goto LABEL_53;
    }

LABEL_55:
    if (!a3)
    {
      return;
    }

    goto LABEL_56;
  }

LABEL_53:
  if (*a4 == a3)
  {
    return;
  }

LABEL_56:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000000 * a3];
  SAJSONWriteDictionaryEntry(a2, @"pmiCycleInterval", v22);
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

+ (void)writeJSONDictionaryEntriesToStream:(__int16)a3 microstackshotState:(__int16)a4 primaryMicrostackshotState:(int)a5 includeIdleAndBattery:
{
  objc_opt_self();
  v9 = MEMORY[0x1E695E118];
  v10 = MEMORY[0x1E695E110];
  if ((a3 & 2) != (a4 & 2))
  {
    if ((a3 & 2) != 0)
    {
      v11 = MEMORY[0x1E695E118];
    }

    else
    {
      v11 = MEMORY[0x1E695E110];
    }

    SAJSONWriteDictionaryEntry(a2, @"foreground", v11);
  }

  if ((a3 & 0x20) != (a4 & 0x20))
  {
    if ((a3 & 0x20) != 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    SAJSONWriteDictionaryEntry(a2, @"suppressed", v12);
  }

  if ((a3 & 0x80) != (a4 & 0x80))
  {
    if ((a3 & 0x80) != 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }

    SAJSONWriteDictionaryEntry(a2, @"kernelMode", v13);
  }

  if (a5)
  {
    if ((a3 & 0x10) == 0)
    {
      if ((a4 & 0x10) == 0)
      {
        goto LABEL_36;
      }

      v14 = @"idleBatteryInvalid";
      v15 = MEMORY[0x1E695E118];
      goto LABEL_35;
    }

    if ((a4 & 0x10) == 0)
    {
      if ((a3 & 4) != 0)
      {
        v16 = v10;
      }

      else
      {
        v16 = v9;
      }

      SAJSONWriteDictionaryEntry(a2, @"userActive", v16);
LABEL_31:
      if ((a3 & 8) != 0)
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

    if (((a4 ^ a3) & 4) != 0)
    {
      if ((a3 & 4) != 0)
      {
        v17 = v10;
      }

      else
      {
        v17 = v9;
      }

      SAJSONWriteDictionaryEntry(a2, @"userActive", v17);
    }

    if (((a4 ^ a3) & 8) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_36:
  if ((a3 & 0x700) != (a4 & 0x700))
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:StringForMicrostackshotStateQoS((a3 & 0x700) >> 8)];
    SAJSONWriteDictionaryEntry(a2, @"effectiveQos", v18);
  }

  if ((a3 & 0x3800) != (a4 & 0x3800))
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:StringForMicrostackshotStateQoS((a3 & 0x3800) >> 11)];
    SAJSONWriteDictionaryEntry(a2, @"requestedQos", v19);
  }
}

- (NSString)debugDescription
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = [(SACallTreeNode *)self startSampleIndex];
  if (self)
  {
    endSampleIndex = self->_endSampleIndex;
  }

  else
  {
    endSampleIndex = 0;
  }

  v3 = [(SACallTreeNode *)self sampleCount];
  threadId = self->_threadId;
  v17 = v3;
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
  v13 = [v20 initWithFormat:@"tree state %lu-%lu (%lu) [%d] thread 0x%llx priority:%d state:0x%llx microState:0x%x waitInfo:%@ turnstileInfo:%@ deadlocked:%d indirectly_deadlocked:%d io:%@ timeRanges:%@ originPid:%d proximatePid:%d", v19, endSampleIndex, v17, pid, threadId, threadPriority, var0, microstackshotState, v7, v8, isPartOfADeadlock, isBlockedByADeadlock, v11, v12, self->_originPid, self->_proximatePid];

  return v13;
}

@end