@interface SATaskStateInTransition
- (SATaskStateInTransition)initWithKCDataTransitioningTask:(const transitioning_task_snapshot *)task andTerminatedThreadsInstructionCycles:(const instrs_cycles_snapshot *)cycles memoryStatus:(const task_memorystatus_snapshot *)status machTimebase:(mach_timebase_info)timebase andDonatingUniquePids:(id)pids startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)self0 endSampleIndex:(unint64_t)self1;
@end

@implementation SATaskStateInTransition

- (SATaskStateInTransition)initWithKCDataTransitioningTask:(const transitioning_task_snapshot *)task andTerminatedThreadsInstructionCycles:(const instrs_cycles_snapshot *)cycles memoryStatus:(const task_memorystatus_snapshot *)status machTimebase:(mach_timebase_info)timebase andDonatingUniquePids:(id)pids startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)self0 endSampleIndex:(unint64_t)self1
{
  v20.receiver = self;
  v20.super_class = SATaskStateInTransition;
  v15 = [(SATaskState *)&v20 initWithStartTimestamp:timestamp endTimestamp:endTimestamp startSampleIndex:index endSampleIndex:sampleIndex];
  v17 = v15;
  if (v15)
  {
    v15->_transitionType = task->tts_transition_type;
    objc_setProperty_atomic(v15, v16, pids, 120);
    v17->super._ssFlags = task->tts_ss_flags;
    if (cycles)
    {
      v17->super._terminatedThreadsInstructions = cycles->ics_instructions;
      v17->super._terminatedThreadsCycles = cycles->ics_cycles;
    }

    if (status)
    {
      v17->super._memoryLimitMB = status->var0;
      v17->super._effectiveJetsamPriority = status->var1;
      v17->super._requestedJetsamPriority = status->var2;
      var3 = status->var3;
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