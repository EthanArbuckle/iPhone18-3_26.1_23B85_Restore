@interface SAThreadStateMicrostackshot
+ (id)stateWithMicrostackshot:(const micro_snapshot *)microstackshot thread:(const thread_snapshot *)thread startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)self0 leafKernelFrame:(id)self1 machTimebase:(mach_timebase_info)self2 pmiCycleInterval:(unint64_t)self3;
@end

@implementation SAThreadStateMicrostackshot

+ (id)stateWithMicrostackshot:(const micro_snapshot *)microstackshot thread:(const thread_snapshot *)thread startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex leafUserFrame:(id)frame leafOfCRootFramesReplacedBySwiftAsync:(id)self0 leafKernelFrame:(id)self1 machTimebase:(mach_timebase_info)self2 pmiCycleInterval:(unint64_t)self3
{
  v19 = [SAThreadStateMicrostackshot alloc];
  if (v19)
  {
    v27.receiver = v19;
    v27.super_class = SAThreadStateMicrostackshot;
    v20 = objc_msgSendSuper2(&v27, sel_initWithStackshotThreadV1_startTimestamp_endTimestamp_startSampleIndex_endSampleIndex_leafUserFrame_leafOfCRootFramesReplacedBySwiftAsync_leafKernelFrame_machTimebase_, thread, timestamp, endTimestamp, index, sampleIndex, frame, async, kernelFrame, timebase);
    v21 = v20;
    if (v20)
    {
      v22 = *(&microstackshot->var4 + 1);
      if ((microstackshot->var4 & 0x10) != 0)
      {
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      v24 = microstackshot->var4 & 8 | (4 * ((microstackshot->var4 & 2) != 0)) & 0xEF | (16 * ((microstackshot->var4 & 4) != 0)) | v23;
      if ((v22 & 2) != 0)
      {
        v25 = 96;
      }

      else
      {
        v25 = 32;
      }

      if (v22)
      {
        v24 |= v25 & 0x7F | ((v22 >> 2) << 7);
      }

      v20[192] = v24;
      v20[19] |= 0x40u;
      [(SAThreadState *)v20 setCpuNum:?];
      *(v21 + 97) = HIWORD(microstackshot->var1);
      *(v21 + 25) = interval;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end