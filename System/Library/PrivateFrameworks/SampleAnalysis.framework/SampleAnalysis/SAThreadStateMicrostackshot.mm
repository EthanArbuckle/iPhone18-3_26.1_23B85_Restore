@interface SAThreadStateMicrostackshot
+ (id)stateWithMicrostackshot:(const micro_snapshot *)a3 thread:(const thread_snapshot *)a4 startTimestamp:(id)a5 endTimestamp:(id)a6 startSampleIndex:(unint64_t)a7 endSampleIndex:(unint64_t)a8 leafUserFrame:(id)a9 leafOfCRootFramesReplacedBySwiftAsync:(id)a10 leafKernelFrame:(id)a11 machTimebase:(mach_timebase_info)a12 pmiCycleInterval:(unint64_t)a13;
@end

@implementation SAThreadStateMicrostackshot

+ (id)stateWithMicrostackshot:(const micro_snapshot *)a3 thread:(const thread_snapshot *)a4 startTimestamp:(id)a5 endTimestamp:(id)a6 startSampleIndex:(unint64_t)a7 endSampleIndex:(unint64_t)a8 leafUserFrame:(id)a9 leafOfCRootFramesReplacedBySwiftAsync:(id)a10 leafKernelFrame:(id)a11 machTimebase:(mach_timebase_info)a12 pmiCycleInterval:(unint64_t)a13
{
  v19 = [SAThreadStateMicrostackshot alloc];
  if (v19)
  {
    v27.receiver = v19;
    v27.super_class = SAThreadStateMicrostackshot;
    v20 = objc_msgSendSuper2(&v27, sel_initWithStackshotThreadV1_startTimestamp_endTimestamp_startSampleIndex_endSampleIndex_leafUserFrame_leafOfCRootFramesReplacedBySwiftAsync_leafKernelFrame_machTimebase_, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    v21 = v20;
    if (v20)
    {
      v22 = *(&a3->var4 + 1);
      if ((a3->var4 & 0x10) != 0)
      {
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      v24 = a3->var4 & 8 | (4 * ((a3->var4 & 2) != 0)) & 0xEF | (16 * ((a3->var4 & 4) != 0)) | v23;
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
      *(v21 + 97) = HIWORD(a3->var1);
      *(v21 + 25) = a13;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end