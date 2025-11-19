@interface SATaskStateInTransition
- (SATaskStateInTransition)initWithKCDataTransitioningTask:(const transitioning_task_snapshot *)a3 andTerminatedThreadsInstructionCycles:(const instrs_cycles_snapshot *)a4 memoryStatus:(const task_memorystatus_snapshot *)a5 machTimebase:(mach_timebase_info)a6 andDonatingUniquePids:(id)a7 startTimestamp:(id)a8 endTimestamp:(id)a9 startSampleIndex:(unint64_t)a10 endSampleIndex:(unint64_t)a11;
@end

@implementation SATaskStateInTransition

- (SATaskStateInTransition)initWithKCDataTransitioningTask:(const transitioning_task_snapshot *)a3 andTerminatedThreadsInstructionCycles:(const instrs_cycles_snapshot *)a4 memoryStatus:(const task_memorystatus_snapshot *)a5 machTimebase:(mach_timebase_info)a6 andDonatingUniquePids:(id)a7 startTimestamp:(id)a8 endTimestamp:(id)a9 startSampleIndex:(unint64_t)a10 endSampleIndex:(unint64_t)a11
{
  v20.receiver = self;
  v20.super_class = SATaskStateInTransition;
  v15 = [(SATaskState *)&v20 initWithStartTimestamp:a8 endTimestamp:a9 startSampleIndex:a10 endSampleIndex:a11];
  v17 = v15;
  if (v15)
  {
    v15->_transitionType = a3->tts_transition_type;
    objc_setProperty_atomic(v15, v16, a7, 120);
    v17->super._ssFlags = a3->tts_ss_flags;
    if (a4)
    {
      v17->super._terminatedThreadsInstructions = a4->ics_instructions;
      v17->super._terminatedThreadsCycles = a4->ics_cycles;
    }

    if (a5)
    {
      v17->super._memoryLimitMB = a5->var0;
      v17->super._effectiveJetsamPriority = a5->var1;
      v17->super._requestedJetsamPriority = a5->var2;
      var3 = a5->var3;
    }

    else
    {
      var3 = 0x80000000;
      v17->super._memoryLimitMB = 0x80000000;
      v17->super._effectiveJetsamPriority = 0x80000000;
      v17->super._requestedJetsamPriority = 0x80000000;
    }

    v17->super._assertionJetsamPriority = var3;
  }

  return v17;
}

@end