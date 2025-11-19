@interface SASampleStore
+ (BOOL)canOpenFileAsKTraceFile:(const char *)a3 errorOut:(id *)a4;
+ (id)filterBlockForMicrostackshotTypes:(uint64_t)a3 startTime:(int)a4 endTime:(int)a5 pid:(uint64_t)a6 tid:;
+ (id)sampleStoreForBinaryFormat:(id)a3;
+ (id)sampleStoreForSpindumpFile:(const char *)a3;
- (BOOL)findCpuSignalHandlerStackLeafKernelFrame;
- (BOOL)haveCPUClusterInfo;
- (BOOL)parseKTraceFile:(const char *)a3 afterMachAbsTime:(unint64_t)a4 warningsOut:(id)a5 errorOut:(id *)a6;
- (BOOL)parseKTraceFile:(const char *)a3 warningsOut:(id)a4 errorOut:(id *)a5;
- (BOOL)parseStackshotsFromKTraceFile:(const char *)a3 afterMachAbsTime:(unint64_t)a4 warningsOut:(id)a5 errorOut:(id *)a6;
- (BOOL)parseStackshotsFromKTraceFile:(const char *)a3 warningsOut:(id)a4 errorOut:(id *)a5;
- (BOOL)saveBinaryFormatToStream:(__sFILE *)a3;
- (BOOL)setTargetProcessWithHint:(id)a3;
- (NSObject)_taskForPid:(uint64_t)a3 uniquePid:(const char *)a4 name:(uint64_t)a5 forkTime:(uint64_t *)a6 loadInfos:(unsigned int)a7 numLoadInfos:(char)a8 loadInfosIsPartial:(uint64_t)a9 textExecLoadInfos:(unsigned int)a10 numTextExecLoadInfos:(char)a11 textExecLoadInfosIsPartial:(uint64_t)a12 architecture:(void *)a13 timestamp:(void *)a14 sharedCache:(char)a15 needAOTInfo:(char)a16 usesSuddenTermination:(char)a17 allowsIdleExit:(char)a18 isRunningBoardManaged:;
- (NSString)machineArchitecture;
- (NSString)targetProcessAbsolutePath;
- (SASampleStore)init;
- (SASampleStore)initWithCoder:(id)a3;
- (SATimestamp)endTime;
- (SATimestamp)startTime;
- (_DWORD)_getLastWakeTime;
- (char)_addKCDataStackshot:(void *)a3 timestamp:(unint64_t)a4 sampleIndex:(_BYTE *)a5 shouldSkipSampleOut:(unsigned int)a6 primaryDataIsKPerf:(char)a7 addStaticInfoOnly:(uint64_t)a8 ktraceDataUnavailable:;
- (id)_firstTaskOnOrAfterTimestamp:(uint64_t)a1 inTasks:(void *)a2;
- (id)_lastTaskOnOrBeforeTimestamp:(void *)a3 inTasks:;
- (id)addressTranslationsForPid:(uint64_t)a1;
- (id)applySharedCacheToTask:(uint64_t)a3 uuid:(uint64_t)a4 slide:(uint64_t)a5 slidBaseAddress:;
- (id)binaryFormat;
- (id)callTreeForDispatchQueue:(id)a3 andThread:(id)a4 inTask:(id)a5 options:(id)a6;
- (id)callTreeForDispatchQueue:(id)a3 swiftTask:(id)a4 thread:(id)a5 inTask:(id)a6 options:(id)a7;
- (id)callTreeForExecutable:(id)a3 options:(id)a4;
- (id)callTreeForSwiftTask:(id)a3 thread:(id)a4 inTask:(id)a5 options:(id)a6;
- (id)callTreeForTask:(id)a3 options:(id)a4;
- (id)callTreeForThread:(id)a3 inTask:(id)a4 options:(id)a5;
- (id)callTreesForThreadsInTask:(id)a3 options:(id)a4;
- (id)existingTaskForEvent:(uint64_t)a3 inSession:(_DWORD *)a4 returningPid:;
- (id)fanSpeedClosestToTimestamp:(id)a3;
- (id)firstTaskWithPid:(uint64_t)a3 onOrAfterTimestamp:;
- (id)firstTaskWithPid:(void *)a1;
- (id)firstTaskWithUniquePid:(uint64_t)a3 onOrAfterTimestamp:;
- (id)fixupAllFrames;
- (id)idleThreadSet;
- (id)initForFileParsing;
- (id)initForLiveSampling;
- (id)lastTaskWithPid:(uint64_t)a3 onOrBeforeTimestamp:;
- (id)lastTaskWithPid:(uint64_t)a3 orTid:;
- (id)lastTaskWithPid:(void *)a1;
- (id)lastTaskWithUniquePid:(uint64_t)a3 onOrBeforeTimestamp:;
- (id)lastTaskWithUniquePid:(void *)a1;
- (id)loadInfosForKTSymbolOwners:(int)a3 isKernelSpace:(uint64_t)a4 excludeRange:(unint64_t)a5;
- (id)sharedCacheWithUUID:(uint64_t)a3 slide:(uint64_t)a4 slidBaseAddress:;
- (id)taskForKCDataDeltaTask:(uint64_t)a3 loadInfos:(uint64_t *)a4 numLoadInfos:(unsigned int)a5 loadInfosIsPartial:(char)a6 textExecLoadInfos:(uint64_t)a7 numTextExecLoadInfos:(unsigned int)a8 textExecLoadInfosIsPartial:(char)a9 timestamp:(void *)a10 sharedCache:(void *)a11 needAOTInfo:(char)a12;
- (id)taskForKCDataTask:(uint64_t *)a3 loadInfos:(unsigned int)a4 numLoadInfos:(char)a5 loadInfosIsPartial:(uint64_t)a6 textExecLoadInfos:(unsigned int)a7 numTextExecLoadInfos:(char)a8 textExecLoadInfosIsPartial:(uint64_t)a9 architecture:(void *)a10 timestamp:(void *)a11 sharedCache:(char)a12 needAOTInfo:;
- (id)taskForKCDataTransitioningTask:(uint64_t)a1 loadInfos:(uint64_t)a2 numLoadInfos:(uint64_t *)a3 loadInfosIsPartial:(unsigned int)a4 textExecLoadInfos:(char)a5 numTextExecLoadInfos:(uint64_t)a6 textExecLoadInfosIsPartial:(unsigned int)a7 architecture:(char)a8 timestamp:(void *)a9 sharedCache:(void *)a10 needAOTInfo:(char)a11;
- (id)taskForMicrostackshotTask:(const char *)a3 taskName:(uint64_t *)a4 loadInfos:(unsigned int)a5 numLoadInfos:(uint64_t)a6 sharedCache:(int)a7 loadInfosIsPartial:(void *)a8 timestamp:(uint64_t)a9 architecture:(char)a10 needAOTInfo:(char)a11 isFromCurrentBoot:;
- (id)taskForPid:(void *)a3 andName:(void *)a4 didExecAtTimestamp:;
- (id)taskWithPid:(uint64_t)a3 atTimestamp:;
- (id)taskWithPid:(uint64_t)a3 orTid:(void *)a4 atTimestamp:;
- (id)taskWithUniquePid:(uint64_t)a3 atTimestamp:;
- (id)tidToPidDict;
- (int)addMicrostackshotsFromFile:(id)a3 ofTypes:(unsigned int)a4 inTimeRangeStart:(double)a5 end:(double)a6 onlyPid:(int)a7 onlyTid:(unint64_t)a8 statistics:(id)a9;
- (int)addMicrostackshotsFromFile:(id)a3 statistics:(id)a4 filterBlock:(id)a5;
- (int)gatherHWPageSize;
- (int)gatherVMPageSize;
- (int64_t)addMicrostackshotsFromData:(id)a3 ofTypes:(unsigned int)a4 inTimeRangeStart:(double)a5 end:(double)a6 onlyPid:(int)a7 onlyTid:(unint64_t)a8 statistics:(id)a9;
- (int64_t)addMicrostackshotsFromData:(id)a3 statistics:(id)a4 filterBlock:(id)a5;
- (uint64_t)_addMicrostackshotFromData:(void *)a3 statistics:(uint64_t)a4 filterBlock:;
- (uint64_t)_parseKCDataSharedCacheContainer:(void *)a3 sharedCaches:;
- (uint64_t)_parseKCDataTaskContainer:(void *)a3 timestampOfSample:(unint64_t)a4 sampleIndex:(void *)a5 sharedCaches:(NSObject *)a6 frameIterator:(uint64_t)a7 primaryDataIsKPerf:(char)a8 addStaticInfoOnly:(uint64_t)a9 ktraceDataUnavailable:(void *)a10 taskUniquePidsInThisSample:(void *)a11 taskPidsInThisSample:(void *)a12 importanceDonations:(void *)a13 rPidForJetsamCoalitionId:(void *)a14 port_label_info_array:(char *)a15 exclaveInfo:(void *)a16;
- (uint64_t)_parseKCDataThreadContainer:(void *)a3 timestampOfSample:(unint64_t)a4 sampleIndex:(void *)a5 task:(uint64_t)a6 kernelTask:(NSObject *)a7 frameIterator:(void *)a8 mainThreadID:(char)a9 primaryDataIsKPerf:(char)a10 addStaticInfoOnly:(void *)a11 ktraceDataUnavailable:(void *)a12 threadIDsInThisTaskThisSample:(char)a13 dispatchQueueIDsInThisTaskThisSample:(uint64_t)a14 taskIsSuspended:(unsigned int)a15 waitInfos:(uint64_t)a16 numWaitInfos:(unsigned int)a17 turnstileInfos:(int)a18 numTurnstileInfos:(unsigned int)a19 port_label_info_array:(void *)a20 exclaveInfo:(void *)a21;
- (uint64_t)_parseKTraceFile:(int)a3 stackshotsOnly:(uint64_t)a4 afterMachAbsTime:(void *)a5 warningsOut:(void *)a6 errorOut:;
- (uint64_t)addAddressTranslations:(uint64_t)result;
- (uint64_t)addKCDataThreadV4:(uint64_t)a3 threadV2:(uint64_t)a4 deltaThreadV3:(uint64_t)a5 deltaThreadV2:(void *)a6 timestamp:(unint64_t)a7 sampleIndex:(void *)a8 stack:(void *)a9 threadExclavesInfo:(uint64_t)a10 threadName:(uint64_t)a11 dispatchQueueLabel:(uint64_t)a12 waitInfo:(void *)a13 waitInfoPortLabelInfo:(uint64_t)a14 turnstileInfo:(void *)a15 turnstileInfoPortLabelInfo:(uint64_t *)a16 instructionCycles:(void *)a17 task:(uint64_t)a18 kernelTask:(char)a19 taskIsSuspended:;
- (uint64_t)checkDyldInfoCompletion:(uint64_t)result;
- (uint64_t)deadReckonSamplesBeforeTimestamp:(int)a3 timestampIsSampleEvent:(uint64_t)a4 kperfState:;
- (uint64_t)enumerateTasksWithLiveness:(uint64_t)result;
- (uint64_t)handleNonMicrostackshotData:(unint64_t)a3 bufSize:(void *)a4 statistics:;
- (uint64_t)isAnyPowerMitigationEnabledAtTailspinCapture;
- (uint64_t)parseKCDataExclavesContainer:(uint64_t)a1 exclaveInfo:(int *)a2 primaryDataIsKPerf:(void *)a3 ktraceDataUnavailable:(void *)a4;
- (unint64_t)addKCDataStackshot:(id)a3 returningTimestamp:(id *)a4;
- (unint64_t)addKCDataStackshots:(id)a3 createSeparateSamplePerStackshot:(BOOL)a4;
- (unint64_t)indexOfFirstSampleOnOrAfterTimestamp:(id)a3;
- (unint64_t)indexOfLastSampleOnOrBeforeTimestamp:(id)a3;
- (unint64_t)numSamples;
- (void)_addKPerfDataFromKTraceSession:(uint64_t)a3 afterMachAbsTime:(uint64_t)a4 beforeMachAbsTime:(int)a5 petTimerID:(uint64_t)a6 ktraceDataUnavailable:;
- (void)_backfillForkTimestamp:(void *)a1 toPreviousTasksEnumerator:(void *)a2 execTimestampOfNextTask:(void *)a3;
- (void)_populateFromKtraceMachineInfo:(int)a3 is64bit:;
- (void)addAuxiliaryData:(id)a3;
- (void)addBootCycle:(void *)a1;
- (void)addIOEvent:(uint64_t)a1;
- (void)addNewImageInfos:(unsigned int)a3 numLoadInfos:(const char *)a4 name:(void *)a5 sharedCache:(uint64_t)a6 architecture:(_BYTE *)a7 toTask:;
- (void)addPowerModeTransition:(void *)a1;
- (void)addProcessInfoFromTailspin:(id)a3;
- (void)addTask:(uint64_t)a1;
- (void)backfillTask:(unint64_t)a3 lastSampleIndex:(void *)a4 timestamp:(char)a5 haveSnap:(uint64_t)a6 terminatedThreadsUserTimeInNs:(uint64_t)a7 terminatedThreadsSystemTimeInNs:(uint64_t)a8 terminatedThreadsCycles:(uint64_t)a9 terminatedThreadsInstructions:(int)a10 suspendCount:(int)a11 pageins:(char)a12 isDarwinBG:(char)a13 isForeground:(char)a14 isBoosted:(char)a15 isDirty:(char)a16 isRunningBoardActive:(char)a17 hasRunningBoardAssertion:(char)a18 haveWQFlags:(char)a19 wqExceededTotalThreadLimit:(char)a20 wqExceededConstrainedThreadLimit:(char)a21 haveCoopAndActiveConstrWQFlags:(char)a22 wqExceededCooperativeThreadLimit:(char)a23 wqExceededActiveConstrainedThreadLimit:(char)a24 haveMem:(uint64_t)a25 taskSizeInBytes:(char)a26 haveLatencyQos:(int)a27 latencyQos:(char)a28 haveRunawayMitigated:(char)a29 isRunawayMitigated:(int)a30 effectiveJetsamPriority:;
- (void)backfillThread:(void *)a3 inTask:(unint64_t)a4 lastSampleIndex:(void *)a5 timestamp:(char)a6 haveName:(_BYTE *)a7 name:(int)a8 haveDispatchQueueId:(uint64_t)a9 dispatchQueueId:(uint64_t)a10 dispatchQueueLabel:(void *)a11 leafKernelFrame:(unsigned __int8)a12 hasExclaveInKernelStack:(char)a13 haveUserStack:(void *)a14 leafUserFrame:(uint64_t)a15 swiftTaskId:(uint64_t)a16 leafOfCRootFramesReplacedBySwiftAsync:(uint64_t)a17 threadExclavesInfo:(char)a18 haveSched:(uint64_t)a19 systemCpuTimeNs:(uint64_t)a20 userCpuTimeNs:(int)a21 basePriority:(int)a22 scheduledPriority:(int)a23 state:(char)a24 threadQos:(char)a25 threadRequestedQos:(char)a26 threadRequestedQosOverride:(char)a27 threadQosPromote:(char)a28 haveCycIns:(uint64_t)a29 instructions:(uint64_t)a30 cycles:(char)a31 haveSnap:(char)a32 ioTier:(char)a33 isIOPassive:(char)a34 isDarwinBG:(char)a35 isSuspended:(char)a36 isGlobalForcedIdle:(char)a37 isIdleWorkQueue:(uint64_t)a38 lastMadeRunnableTime:(char)a39 isOnCore:(unsigned __int8)a40 isOnCoreForLastSampleIndex:(unsigned int)a41 cpuNum:;
- (void)clusterFlagsForCPUNum:(void *)result;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateTasks:(id)a3;
- (void)exclaveWithIdentifier:(uint64_t)a1;
- (void)findTargetProcessInTimeRange:(uint64_t)a1;
- (void)findTargetProcessesInTimeRange:(void *)a1;
- (void)forwardFillFromLastStackshot:(void *)a1;
- (void)iterateAllTimestamps:(uint64_t)a1;
- (void)kperfRecord:(void *)a3 state:(void *)a4 frameIterator:;
- (void)kperfSampleAtTimestamp:(int)a3 isPET:(id *)self state:(int)a5 ignore:;
- (void)postprocess;
- (void)removeAllData;
- (void)resampleTruncatedBacktraces;
- (void)setEndTime:(uint64_t)a1;
- (void)setKeepStateBetweenSampleIndexes:(BOOL)a3;
- (void)setKperfTriggers:(id)a3;
- (void)setMachineArchitecture:(id)a3;
- (void)setSampleOnlyMainThreads:(BOOL)a3;
- (void)setStackshotsOnlyIncludeSpecificProcesses:(BOOL)a3;
- (void)setTargetDispatchQueueId:(unint64_t)a3;
- (void)setTargetHIDEventMachAbs:(unint64_t)a3;
- (void)setTargetMainBinaryUUID:(id)a3;
- (void)setTargetProcess:(id)a3;
- (void)setTargetProcessId:(int)a3;
- (void)setTargetProcesses:(id)a3;
- (void)setTargetThreadId:(unint64_t)a3;
- (void)startingSamplingLiveSystem;
- (void)symbolicate;
- (void)task:(void *)a3 exitedAtTimestamp:;
- (void)useDsymForUUIDFor:(id)a3;
@end

@implementation SASampleStore

- (SASampleStore)init
{
  v39.receiver = self;
  v39.super_class = SASampleStore;
  v2 = [(SASampleStore *)&v39 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tasksByPid = v2->_tasksByPid;
    v2->_tasksByPid = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tasksByUniquePid = v2->_tasksByUniquePid;
    v2->_tasksByUniquePid = v5;

    v2->_targetProcessId = -1;
    v2->_targetHIDEventEndMachAbs = 0;
    v2->_targetThreadId = 0;
    v2->_targetDispatchQueueId = 0;
    targetProcess = v2->_targetProcess;
    v2->_targetHIDEventMachAbs = 0;
    v2->_targetProcess = 0;

    targetMainBinaryUUID = v2->_targetMainBinaryUUID;
    v2->_targetMainBinaryUUID = 0;

    targetProcesses = v2->_targetProcesses;
    v2->_targetProcesses = 0;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sampleTimestamps = v2->_sampleTimestamps;
    v2->_sampleTimestamps = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    hidEvents = v2->_hidEvents;
    v2->_hidEvents = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    gestures = v2->_gestures;
    v2->_gestures = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    ioEvents = v2->_ioEvents;
    v2->_ioEvents = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    ioEventsByTid = v2->_ioEventsByTid;
    v2->_ioEventsByTid = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    nandGarbageCollectionEvents = v2->_nandGarbageCollectionEvents;
    v2->_nandGarbageCollectionEvents = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    memoryPressureEvents = v2->_memoryPressureEvents;
    v2->_memoryPressureEvents = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lostPerfEvents = v2->_lostPerfEvents;
    v2->_lostPerfEvents = v24;

    bootCycles = v2->_bootCycles;
    v2->_bootCycles = 0;

    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    kernelCaches = v2->_kernelCaches;
    v2->_kernelCaches = v27;

    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    sharedCaches = v2->_sharedCaches;
    v2->_sharedCaches = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fanSpeeds = v2->_fanSpeeds;
    v2->_fanSpeeds = v31;

    v33 = objc_alloc_init(SAMountStatusTracker);
    mountStatusTracker = v2->_mountStatusTracker;
    v2->_mountStatusTracker = v33;

    wsDataStore = v2->_wsDataStore;
    v2->_wsDataStore = 0;

    v36 = +[SABinaryLocator sharedBinaryLocator];
    binaryLocator = v2->_binaryLocator;
    v2->_binaryLocator = v36;

    v2->_additionalCSSymbolicatorFlags = 0;
    v2->_sampleOnlyMainThreads = 0;
    v2->_stackshotsOnlyIncludeSpecificProcesses = 0;
  }

  return v2;
}

- (id)initForLiveSampling
{
  result = [(SASampleStore *)self init];
  if (result)
  {
    *(result + 395) = 1;
    *(result + 61) = 1415;
  }

  return result;
}

- (SATimestamp)startTime
{
  v3 = [(NSMutableArray *)self->_sampleTimestamps firstObject];
  startTime = v3;
  if (!v3)
  {
    startTime = self->_startTime;
  }

  v5 = startTime;

  return startTime;
}

- (SATimestamp)endTime
{
  v3 = [(NSMutableArray *)self->_sampleTimestamps lastObject];
  endTime = v3;
  if (!v3)
  {
    endTime = self->_endTime;
  }

  v5 = endTime;

  return endTime;
}

- (unint64_t)numSamples
{
  result = [(NSMutableArray *)self->_sampleTimestamps count];
  if (!result)
  {
    return self->_numSamples;
  }

  return result;
}

- (int)gatherHWPageSize
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (!result[106])
    {
      v7 = 4;
      result = sysctlbyname("hw.pagesize", result + 106, &v7, 0, 0);
      if (result)
      {
        v1 = *__error();
        v2 = _sa_logt();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          v4 = *__error();
          v5 = __error();
          v6 = strerror(*v5);
          *buf = 67109378;
          v9 = v4;
          v10 = 2080;
          v11 = v6;
          _os_log_error_impl(&dword_1E0E2F000, v2, OS_LOG_TYPE_ERROR, "Unable to get hw.pagesize: %d %s", buf, 0x12u);
        }

        result = __error();
        *result = v1;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)gatherVMPageSize
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (!result[107])
    {
      v7 = 4;
      result = sysctlbyname("vm.pagesize", result + 107, &v7, 0, 0);
      if (result)
      {
        v1 = *__error();
        v2 = _sa_logt();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          v4 = *__error();
          v5 = __error();
          v6 = strerror(*v5);
          *buf = 67109378;
          v9 = v4;
          v10 = 2080;
          v11 = v6;
          _os_log_error_impl(&dword_1E0E2F000, v2, OS_LOG_TYPE_ERROR, "Unable to get vm.pagesize: %d %s", buf, 0x12u);
        }

        result = __error();
        *result = v1;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)findCpuSignalHandlerStackLeafKernelFrame
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self->_cpuSignalHandlerStackLeafKernelFrame)
  {
    v4 = [(SASampleStore *)self lastTaskWithPid:?];
    v5 = v4;
    if (v4)
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__0;
      v33 = __Block_byref_object_dispose__0;
      v34 = 0;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __57__SASampleStore_findCpuSignalHandlerStackLeafKernelFrame__block_invoke;
      v28[3] = &unk_1E86F5FD8;
      v28[4] = &v29;
      [(SATask *)v4 enumerateFrames:v28];
      v6 = v30[5];
      if (v6)
      {
LABEL_5:
        v6 = v6[5];
        while (1)
        {
          v7 = v6;
          v8 = v7 == 0;

          v9 = v30[5];
          if (v8)
          {
            break;
          }

          if (v9)
          {
            v10 = v9[5];
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            v13 = [v12 anyObject];
            v14 = v30[5];
            v30[5] = v13;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v18 = *__error();
              v19 = _sa_logt();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                ClassName = object_getClassName(v11);
                *buf = 136315138;
                v36 = ClassName;
                _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
              }

              *__error() = v18;
              v21 = object_getClassName(v11);
              _SASetCrashLogMessage(8515, "child is %s", v22, v23, v24, v25, v26, v27, v21);
              _os_crash();
              __break(1u);
            }

            v15 = v11;
            v12 = v30[5];
            v30[5] = v15;
          }

          v6 = v30[5];
          if (v6)
          {
            goto LABEL_5;
          }
        }

        objc_storeStrong(&self->_cpuSignalHandlerStackLeafKernelFrame, v9);
        _Block_object_dispose(&v29, 8);

        v2 = 1;
        goto LABEL_19;
      }

      _Block_object_dispose(&v29, 8);
    }

    v2 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v2 = 1;
LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return v2;
}

void __57__SASampleStore_findCpuSignalHandlerStackLeafKernelFrame__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 instruction];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__SASampleStore_findCpuSignalHandlerStackLeafKernelFrame__block_invoke_2;
  v9[3] = &unk_1E86F58D0;
  v8 = *(a1 + 32);
  v9[4] = a2;
  v9[5] = v8;
  v9[6] = a4;
  [v7 enumerateSymbols:v9];
}

- (NSString)machineArchitecture
{
  arch = self->_arch;
  if (arch)
  {
    arch = CSArchitectureGetFamilyName();
    if (arch)
    {
      arch = SANSStringForCString(arch);
    }

    v2 = vars8;
  }

  return arch;
}

- (void)symbolicate
{
  v2 = self;
  v98 = *MEMORY[0x1E69E9840];
  if ((self->_dataGatheringOptions & 0x78) == 0 && !self->_idsToUseDsymForUUID && !self->_namesToUseDsymForUUID)
  {
    goto LABEL_62;
  }

  v3 = mach_absolute_time();
  v4 = SASecondsFromMachTimeUsingLiveTimebase(v3);
  v5 = *__error();
  v6 = _sa_logt();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_INFO, "Symbolication starting", buf, 2u);
  }

  v7 = 0;
  *__error() = v5;
  v8 = v2->_dataGatheringOptions & 8;
  v62 = 0;
  v69 = (v2->_dataGatheringOptions >> 3) & 1;
  v9 = 1;
  v61 = v8 >> 3;
  *&v10 = 134218498;
  v60 = v10;
  v65 = v2;
  v66 = v8;
  do
  {
    v64 = v7;
    if ((v9 & 1) == 0)
    {
      break;
    }

    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2000];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __28__SASampleStore_symbolicate__block_invoke;
    v87[3] = &unk_1E86F58F8;
    v63 = v11;
    v88 = v63;
    v89 = v2;
    v71 = MEMORY[0x1E12EBE50](v87);
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = v2->_exclaves;
    v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v83 objects:v97 count:16];
    if (!v12)
    {
      goto LABEL_43;
    }

    v14 = v12;
    v70 = *v84;
    do
    {
      v15 = 0;
      do
      {
        if (*v84 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v83 + 1) + 8 * v15);
        v17 = v69;
        if (!v8)
        {
          idsToUseDsymForUUID = v2->_idsToUseDsymForUUID;
          if (!idsToUseDsymForUUID && !v2->_namesToUseDsymForUUID)
          {
            goto LABEL_32;
          }

          if (([(NSMutableArray *)idsToUseDsymForUUID containsObject:&unk_1F5BDC9E8, v60]& 1) != 0 || ([(NSMutableArray *)v2->_namesToUseDsymForUUID containsObject:@"exclaves"]& 1) != 0)
          {
            v17 = 1;
            goto LABEL_37;
          }

          if (v2->_namesToUseDsymForUUID)
          {
            v19 = [(SASampleStore *)v2 lastTaskWithPid:?];
            v20 = v19;
            if (v19 && ([v19 name], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
            {
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v67 = v2->_namesToUseDsymForUUID;
              v22 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v79 objects:v96 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v80;
LABEL_24:
                v25 = 0;
                while (1)
                {
                  if (*v80 != v24)
                  {
                    objc_enumerationMutation(v67);
                  }

                  v26 = *(*(&v79 + 1) + 8 * v25);
                  v27 = [v20 name];
                  v17 = 1;
                  v28 = [v27 rangeOfString:v26 options:1];

                  if (v28 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    break;
                  }

                  if (v23 == ++v25)
                  {
                    v23 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v79 objects:v96 count:16];
                    if (v23)
                    {
                      goto LABEL_24;
                    }

                    v17 = 0;
                    break;
                  }
                }

                v2 = v65;
              }

              else
              {
                v17 = 0;
              }

              v8 = v66;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
LABEL_32:
            v17 = 0;
          }
        }

LABEL_37:
        if (v16)
        {
          Property = objc_getProperty(v16, v13, 48, 1);
        }

        else
        {
          Property = 0;
        }

        v30 = Property;
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __28__SASampleStore_symbolicate__block_invoke_505;
        v76[3] = &unk_1E86F5920;
        v31 = v71;
        v76[4] = v2;
        v77 = v31;
        v78 = v17;
        [SAFrame enumerateFrameTree:v30 block:v76];

        ++v15;
      }

      while (v15 != v14);
      v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v83 objects:v97 count:16];
      v14 = v32;
    }

    while (v32);
LABEL_43:
    v7 = v64 + 1;

    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __28__SASampleStore_symbolicate__block_invoke_2;
    v73[3] = &unk_1E86F5998;
    v73[4] = v2;
    v75 = v61;
    v33 = v71;
    v74 = v33;
    [(SASampleStore *)v2 enumerateTasks:v73];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __28__SASampleStore_symbolicate__block_invoke_5;
    v72[3] = &unk_1E86F59C0;
    v72[4] = v2;
    v34 = v63;
    [v63 enumerateKeysAndObjectsUsingBlock:v72];
    v35 = [(SASampleStore *)&v2->super.isa fixupAllFrames];
    if ([v35 count])
    {
      if (v62 && [v62 isEqualToSet:v35])
      {
        v36 = *__error();
        v37 = _sa_logt();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          v51 = COERCE_DOUBLE([v35 count]);
          v52 = [v35 anyObject];
          v53 = [SABinary binaryWithUUID:v52 absolutePath:0];
          v54 = [v53 debugDescription];
          *buf = v60;
          v91 = v51;
          v92 = 1024;
          v93 = v64 + 1;
          v94 = 2112;
          v95 = v54;
          _os_log_fault_impl(&dword_1E0E2F000, v37, OS_LOG_TYPE_FAULT, "Symbolication loop has same set of UUIDs to symbolicate! %lu binaries need more symbolication after iteration %d (including %@)", buf, 0x1Cu);

          v34 = v63;
        }

        v38 = 0;
        v9 = 0;
        *__error() = v36;
      }

      else
      {
        v39 = *__error();
        v40 = _sa_logt();
        v41 = v40;
        if (v64 < 0x63)
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v42 = COERCE_DOUBLE([v35 count]);
            v43 = [v35 anyObject];
            v44 = [SABinary binaryWithUUID:v43 absolutePath:0];
            v45 = [v44 debugDescription];
            *buf = v60;
            v91 = v42;
            v92 = 1024;
            v93 = v64 + 1;
            v94 = 2112;
            v95 = v45;
            _os_log_impl(&dword_1E0E2F000, v41, OS_LOG_TYPE_INFO, "%lu binaries need more symbolication after iteration %d (including %@)", buf, 0x1Cu);
          }

          *__error() = v39;
          v46 = v35;

          v38 = 1;
          v62 = v46;
          v9 = 1;
        }

        else
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            v47 = COERCE_DOUBLE([v35 count]);
            v48 = [v35 anyObject];
            v49 = [SABinary binaryWithUUID:v48 absolutePath:0];
            v50 = [v49 debugDescription];
            *buf = v60;
            v91 = v47;
            v92 = 1024;
            v93 = v64 + 1;
            v94 = 2112;
            v95 = v50;
            _os_log_fault_impl(&dword_1E0E2F000, v41, OS_LOG_TYPE_FAULT, "Hit symbolication loop count limit! %lu binaries need more symbolication after iteration %d (including %@)", buf, 0x1Cu);
          }

          v38 = 0;
          v9 = 0;
          *__error() = v39;
        }

        v34 = v63;
      }
    }

    else
    {
      v9 = 0;
      v38 = 1;
    }

    v2 = v65;
  }

  while ((v38 & 1) != 0);
  v55 = *__error();
  v56 = _sa_logt();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    v57 = mach_absolute_time();
    v58 = SASecondsFromMachTimeUsingLiveTimebase(v57);
    *buf = 134218240;
    v91 = v58 - v4;
    v92 = 1024;
    v93 = v7;
    _os_log_impl(&dword_1E0E2F000, v56, OS_LOG_TYPE_INFO, "Symbolication done (took %.3f seconds, %d iterations)", buf, 0x12u);
  }

  *__error() = v55;
LABEL_62:
  v59 = *MEMORY[0x1E69E9840];
}

void __28__SASampleStore_symbolicate__block_invoke_2(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((~*(*(a1 + 32) + 488) & 0x402) != 0 || kill([a2 pid], 0))
  {
    v5 = -1;
  }

  else
  {
    v5 = [a2 pid];
  }

  if (*(a1 + 48))
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 32);
  if (*(v7 + 312))
  {
    v8 = [a2 pid];
    if (v8 == -1)
    {
      if ([a2 uniquePid] == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = *(*(a1 + 32) + 312);
      v2 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "pid")}];
      if ([v9 containsObject:v2])
      {

LABEL_5:
        v6 = 1;
        goto LABEL_36;
      }

      if ([a2 uniquePid] == -1)
      {

        goto LABEL_21;
      }
    }

    v10 = *(*(a1 + 32) + 312);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "uniquePid")}];
    v12 = [v10 containsObject:v11];

    if (v8 != -1)
    {
    }

    if (v12)
    {
      goto LABEL_5;
    }
  }

  else if (!*(v7 + 304))
  {
LABEL_33:
    v6 = 0;
    goto LABEL_36;
  }

LABEL_21:
  if (!*(*(a1 + 32) + 304))
  {
    goto LABEL_33;
  }

  v13 = [a2 name];

  if (!v13)
  {
    goto LABEL_33;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = *(*(a1 + 32) + 304);
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v26 = v5;
    v17 = *v35;
LABEL_25:
    v18 = 0;
    while (1)
    {
      if (*v35 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v34 + 1) + 8 * v18);
      v20 = [a2 name];
      v6 = 1;
      v21 = [v20 rangeOfString:v19 options:1];

      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v16)
        {
          goto LABEL_25;
        }

        v6 = 0;
        break;
      }
    }

    v5 = v26;
  }

  else
  {
    v6 = 0;
  }

LABEL_36:
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __28__SASampleStore_symbolicate__block_invoke_3;
  v30[3] = &unk_1E86F5948;
  v31 = *(a1 + 40);
  v32 = v5;
  v33 = v6;
  [(SATask *)a2 enumerateFrames:v30];
  v22 = [a2 pid];
  if (v6 && v22)
  {
    v23 = [a2 threads];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __28__SASampleStore_symbolicate__block_invoke_4;
    v27[3] = &unk_1E86F5970;
    v24 = *(a1 + 40);
    v27[4] = *(a1 + 32);
    v28 = v24;
    v29 = 1;
    [v23 enumerateKeysAndObjectsUsingBlock:v27];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __28__SASampleStore_symbolicate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 instruction];
  v7 = [v3 binary];

  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 44);
    (*(*(a1 + 32) + 16))();
    v4 = v7;
  }
}

void __28__SASampleStore_symbolicate__block_invoke(uint64_t a1, void *a2, int a3, _BOOL4 a4, char a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = [a2 uuid];
  v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
  if (!v11)
  {
    objc_opt_self();
    v12 = objc_alloc_init(SAUUIDToSymbolicate);
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a2, 0}];
    binaries = v12->_binaries;
    v12->_binaries = v14;

    v12->_livePid = -1;
    v12->_dataGatheringOptions = *(*(a1 + 40) + 488);
    v12->_livePid = a3;
    v12->_isInExclave = a4;
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
    goto LABEL_11;
  }

  v12 = v11;
  v13 = [*(v11 + 16) containsObject:a2];
  if ((v13 & 1) == 0)
  {
    [(NSMutableArray *)v12->_binaries addObject:a2];
  }

  if (a3 == -1 || v12->_livePid != -1)
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12->_livePid = a3;
  if (a4)
  {
LABEL_7:
    v12->_isInExclave = 1;
  }

LABEL_8:
  if (v13)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (!*(*(a1 + 40) + 304) || ([a2 name], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
  {
LABEL_23:
    if (a5)
    {
LABEL_24:
      v12->_dataGatheringOptions |= 0x48uLL;
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v26 = a5;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = *(*(a1 + 40) + 304);
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * v21);
        v23 = [a2 name];
        v24 = [v23 rangeOfString:v22 options:1];

        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {

          goto LABEL_27;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if (v26)
  {
LABEL_27:
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:

  v25 = *MEMORY[0x1E69E9840];
}

void __28__SASampleStore_symbolicate__block_invoke_5(uint64_t a1, const char *a2, int *self)
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, a2, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (self)
        {
          v11 = *(self + 3);
          v12 = self[3];
          v13 = *(self + 8);
        }

        else
        {
          v12 = 0;
          LODWORD(v11) = 0;
          v13 = 0;
        }

        [(SABinary *)*(*(&v28 + 1) + 8 * v10++) symbolicateAllInstructionsWithOptions:v11 pid:v12 checkExclave:v13 & 1 onlyDsym:0 additionalCSSymbolicatorFlags:*(*(a1 + 32) + 408)];
      }

      while (v8 != v10);
      v14 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v8 = v14;
    }

    while (v14);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  if (self)
  {
    v16 = objc_getProperty(self, v15, 16, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v24 + 1) + 8 * i) clearCoreSymbolicationCache];
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  v22 = +[SABinary dataFillingQueue];
  dispatch_sync(v22, &__block_literal_global_507);

  v23 = *MEMORY[0x1E69E9840];
}

- (id)fixupAllFrames
{
  v1 = a1;
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v2 = mach_absolute_time();
    v3 = SASecondsFromMachTimeUsingLiveTimebase(v2);
    v4 = 0;
    v5 = MEMORY[0x1E69E9820];
    v6 = v29;
    do
    {
      v7 = v4;
      *(v6 + 24) = 0;
      v25[0] = v5;
      v25[1] = 3221225472;
      v25[2] = __31__SASampleStore_fixupAllFrames__block_invoke;
      v25[3] = &unk_1E86F5468;
      v25[4] = v1;
      v8 = v20;
      v26 = v8;
      v27 = &v28;
      [(SASampleStore *)v1 enumerateTasksWithLiveness:v25];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v1[18];
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v36 count:16];
      if (v10)
      {
        v11 = *v22;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            buf[0] = 0;
            [(SAExclave *)v13 fixupFrameInstructionsWithNewInstructions:v8 foundNewBinaryInfo:buf];
            if (buf[0] == 1)
            {
              *(v29 + 24) = 1;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v21 objects:v36 count:16];
        }

        while (v10);
      }

      v4 = v7 + 1;
      v6 = v29;
    }

    while ((v29[3] & 1) != 0);
    if (v7)
    {
      v14 = *__error();
      v15 = _sa_logt();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = mach_absolute_time();
        v19 = SASecondsFromMachTimeUsingLiveTimebase(v18);
        *buf = 67109376;
        v33 = v7 + 1;
        v34 = 2048;
        v35 = v19 - v3;
        _os_log_debug_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_DEBUG, "Iterated frame fixup %d times (in %.3fs)", buf, 0x12u);
      }

      *__error() = v14;
    }

    v1 = [v8 copy];
    _Block_object_dispose(&v28, 8);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v1;
}

void __31__SASampleStore_fixupAllFrames__block_invoke(void *a1, uint64_t a2, int a3)
{
  v4 = 0;
  [(SATask *)a2 fixupFrameInstructionsWithDataGatheringOptions:a3 mightBeAlive:&v4 foundNewBinaryInfo:a1[5] uuidsWithNewInstructions:*(a1[4] + 408) additionalCSSymbolicatorFlags:?];
  if (v4 == 1)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (void)dealloc
{
  [(SABinaryLocator *)self->_binaryLocator done];
  v3.receiver = self;
  v3.super_class = SASampleStore;
  [(SASampleStore *)&v3 dealloc];
}

- (void)setTargetHIDEventMachAbs:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  self->_targetHIDEventMachAbs = a3;
  if (a3 && !self->_eventTimeRange)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = self->_hidEvents;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [v9 steps];
          v11 = [v10 lastObject];

          if (v11)
          {
            v12 = [v9 hidEventTimestamp];
            if ([v12 machAbsTime] == self->_targetHIDEventMachAbs)
            {
              if (self->_targetProcessId < 0)
              {

LABEL_18:
                v15 = [v9 hidEventTimestamp];
                v16 = [v11 timestamp];
                v17 = [SATimeRange timeRangeStart:v15 end:v16];
                eventTimeRange = self->_eventTimeRange;
                self->_eventTimeRange = v17;

                goto LABEL_19;
              }

              v13 = [v11 pid];
              targetProcessId = self->_targetProcessId;

              if (v13 == targetProcessId)
              {
                goto LABEL_18;
              }
            }

            else
            {
            }
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setKperfTriggers:(id)a3
{
  v4 = [a3 copy];
  kperfTriggers = self->_kperfTriggers;
  self->_kperfTriggers = v4;
}

- (void)addTask:(uint64_t)a1
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_15:
    v26 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = [a2 uniquePid];
  v5 = *(a1 + 8);
  if (v4 != -1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "uniquePid")}];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = *(a1 + 8);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "uniquePid")}];
      [v8 setObject:v7 forKeyedSubscript:v9];
    }

    [v7 addObject:a2];

    goto LABEL_7;
  }

  if ([*(a1 + 8) count])
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [a2 debugDescription];
      *buf = 136315138;
      v29 = [v17 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s has no uniquePid", buf, 0xCu);
    }

    *__error() = v15;
    v18 = [a2 debugDescription];
    v19 = [v18 UTF8String];
    _SASetCrashLogMessage(610, "%s has no uniquePid", v20, v21, v22, v23, v24, v25, v19);

    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

LABEL_7:
  v10 = *(a1 + 16);
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "pid")}];
  v27 = [v10 objectForKeyedSubscript:v11];

  if (!v27)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = *(a1 + 16);
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "pid")}];
    [v12 setObject:v27 forKeyedSubscript:v13];
  }

  [v27 addObject:a2];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)setEndTime:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (void)addBootCycle:(void *)a1
{
  v4 = a1[7];
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = a1[7];
    a1[7] = v5;

    v4 = a1[7];
  }

  [v4 addObject:a2];
  v7 = [a2 kernelVersion];
  v8 = a1[65];
  a1[65] = v7;

  v9 = [a2 osProductVersion];
  v10 = a1[67];
  a1[67] = v9;

  v11 = [a2 osProductVersionExtra];
  v12 = a1[68];
  a1[68] = v11;

  v13 = [a2 osBuildVersion];
  v14 = a1[69];
  a1[69] = v13;

  v15 = [a2 bootArgs];
  v16 = a1[70];
  a1[70] = v15;
}

- (void)addIOEvent:(uint64_t)a1
{
  if (a1)
  {
    [*(a1 + 96) addObject:a2];
    v4 = *(a1 + 1120);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "threadID")}];
    v9 = [v4 objectForKeyedSubscript:v5];

    if (v9)
    {
      [v9 addObject:a2];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a2, 0}];
      v7 = *(a1 + 1120);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "threadID")}];
      [v7 setObject:v6 forKeyedSubscript:v8];
    }
  }
}

- (void)removeAllData
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = a1[3];
    a1[3] = v2;

    v4 = a1[5];
    a1[4] = 0;
    a1[5] = 0;

    v5 = a1[6];
    a1[6] = 0;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = a1[2];
    a1[2] = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = a1[1];
    a1[1] = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = a1[8];
    a1[8] = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = a1[9];
    a1[9] = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = a1[12];
    a1[12] = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = a1[140];
    a1[140] = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = a1[13];
    a1[13] = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = a1[14];
    a1[14] = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = a1[15];
    a1[15] = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = a1[10];
    a1[10] = v24;

    v26 = a1[7];
    a1[7] = 0;
  }
}

- (void)enumerateTasks:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_tasksByUniquePid count];
  v6 = 8;
  if (!v5)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__SASampleStore_enumerateTasks___block_invoke;
  v8[3] = &unk_1E86F53D0;
  v8[4] = a3;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];
}

void __32__SASampleStore_enumerateTasks___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      (*(*(a1 + 32) + 16))(*(a1 + 32));
      if (*a4)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)useDsymForUUIDFor:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  if (v6 && (__endptr = 0, v7 = strtoull(v6, &__endptr, 0), __endptr) && !*__endptr)
  {
    v11 = v7;
    obj = self;
    objc_sync_enter(obj);
    idsToUseDsymForUUID = obj->_idsToUseDsymForUUID;
    if (idsToUseDsymForUUID)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
      [(NSMutableArray *)idsToUseDsymForUUID addObject:v13];
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x1E695DF70]);
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
      v15 = [v14 initWithObjects:{v13, 0}];
      v16 = obj->_idsToUseDsymForUUID;
      obj->_idsToUseDsymForUUID = v15;
    }
  }

  else
  {
    obj = self;
    objc_sync_enter(obj);
    namesToUseDsymForUUID = obj->_namesToUseDsymForUUID;
    if (namesToUseDsymForUUID)
    {
      [(NSMutableArray *)namesToUseDsymForUUID addObject:a3];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a3, 0}];
      v10 = obj->_namesToUseDsymForUUID;
      obj->_namesToUseDsymForUUID = v9;
    }
  }

  objc_sync_exit(obj);
}

- (id)fanSpeedClosestToTimestamp:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = self->_fanSpeeds;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v27;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v26 + 1) + 8 * v9);
      if (!v7)
      {
        goto LABEL_8;
      }

      v11 = [v7 timestamp];
      [v11 machAbsTimeSeconds];
      v13 = v12;
      [a3 machAbsTimeSeconds];
      v15 = vabdd_f64(v13, v14);
      v16 = [v10 timestamp];
      [v16 machAbsTimeSeconds];
      v18 = v17;
      [a3 machAbsTimeSeconds];
      v20 = vabdd_f64(v18, v19);

      if (v15 > v20)
      {
LABEL_8:
        v21 = v10;

        v7 = v21;
      }

      v22 = [v7 timestamp];
      v23 = [v22 ge:a3];

      if (v23)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)haveCPUClusterInfo
{
  if (self)
  {
    self = objc_getProperty(self, a2, 1192, 1);
  }

  return self != 0;
}

- (void)clusterFlagsForCPUNum:(void *)result
{
  if (result)
  {
    Property = objc_getProperty(result, a2, 1192, 1);
    v4 = MEMORY[0x1E696AD98];
    v5 = Property;
    v6 = [v4 numberWithUnsignedInt:a2];
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = [v7 unsignedLongLongValue];
    return v8;
  }

  return result;
}

- (BOOL)setTargetProcessWithHint:(id)a3
{
  v91 = *MEMORY[0x1E69E9840];
  if (!a3 || (v4 = a3, ![a3 length]))
  {
    self->_targetProcessId = -1;
    self->_targetThreadId = 0;
    [(SASampleStore *)self findTargetProcessInTimeRange:?];
    v40 = 1;
    goto LABEL_76;
  }

  v65 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  number = [v65 numberFromString:v4];
  v77 = self;
  if (number && !CFNumberIsFloatType(number))
  {
    v44 = self->_eventTimeRange;
    v45 = [(__CFNumber *)number intValue];
    if (v44)
    {
      v46 = [(SATimeRange *)v44 endTime];
      v47 = [(SASampleStore *)self lastTaskWithPid:v45 onOrBeforeTimestamp:v46];
      if (v47)
      {
        v37 = v47;

LABEL_66:
        goto LABEL_67;
      }

      v49 = [(__CFNumber *)number intValue];
      v50 = [(SATimeRange *)v44 endTime];
      v37 = [(SASampleStore *)self firstTaskWithPid:v49 onOrAfterTimestamp:v50];

      if (v37)
      {
        goto LABEL_66;
      }

      v59 = [(__CFNumber *)number unsignedLongLongValue];
      v60 = [(SATimeRange *)v44 endTime];
      v61 = [(SASampleStore *)self lastTaskWithUniquePid:v59 onOrBeforeTimestamp:v60];
      v62 = v61;
      if (v61)
      {
        v37 = v61;
      }

      else
      {
        v63 = [(__CFNumber *)number unsignedLongLongValue];
        v64 = [(SATimeRange *)v44 endTime];
        v37 = [(SASampleStore *)v77 firstTaskWithUniquePid:v63 onOrAfterTimestamp:v64];

        self = v77;
      }
    }

    else
    {
      v48 = [(SASampleStore *)self lastTaskWithPid:v45];
      if (v48)
      {
        v37 = v48;
        goto LABEL_66;
      }

      v37 = [(SASampleStore *)self lastTaskWithUniquePid:?];
    }

    if (v37)
    {
      goto LABEL_67;
    }
  }

  v5 = [(NSMutableDictionary *)self->_tasksByUniquePid count];
  v6 = 8;
  if (v5)
  {
    v7 = &__block_literal_global_1;
  }

  else
  {
    v6 = 16;
    v7 = &__block_literal_global_202;
  }

  v8 = [*(&self->super.isa + v6) allValues];
  v9 = [v8 sortedArrayUsingComparator:v7];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v10 = v9;
  v69 = [v10 countByEnumeratingWithState:&v85 objects:v90 count:16];
  if (!v69)
  {

    goto LABEL_51;
  }

  v74 = 0;
  v75 = 0;
  v71 = 0;
  v72 = 0;
  v76 = 0;
  v73 = 0;
  obj = v10;
  v68 = *v86;
  v78 = v4;
  do
  {
    v11 = 0;
    do
    {
      if (*v86 != v68)
      {
        objc_enumerationMutation(obj);
      }

      v70 = v11;
      v12 = *(*(&v85 + 1) + 8 * v11);
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v79 = v12;
      v13 = [v79 countByEnumeratingWithState:&v81 objects:v89 count:16];
      if (v13)
      {
        v14 = v13;
        v80 = *v82;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v82 != v80)
            {
              objc_enumerationMutation(v79);
            }

            v16 = *(*(&v81 + 1) + 8 * i);
            v17 = [v16 name];
            if (v17)
            {
              v18 = self->_eventTimeRange;
              if (v18)
              {
                v19 = [v16 startTimestamp];
                v20 = [(SATimeRange *)v18 endTime];
                if ([v19 gt:v20])
                {

LABEL_42:
                  goto LABEL_43;
                }

                v21 = [v16 endTimestamp];
                v22 = [(SATimeRange *)v18 startTime];
                v23 = [v21 lt:v22];

                v4 = v78;
                self = v77;

                if (v23)
                {
                  goto LABEL_42;
                }
              }

              v24 = [v16 name];
              v25 = [v24 rangeOfString:v4];
              v27 = v26;

              if (v25 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v30 = [v16 name];
                v31 = [v30 rangeOfString:v4 options:1];
                v33 = v32;

                if (v31 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_42;
                }

                if (v31)
                {
                  if (!v73)
                  {
                    v73 = v16;
                  }

                  goto LABEL_42;
                }

                v34 = [v16 name];
                v35 = [v34 length];

                if (v33 == v35)
                {
                  if (!v72)
                  {
                    v72 = v16;
                  }
                }

                else if (!v71)
                {
                  v71 = v16;
                }
              }

              else
              {
                if (v25)
                {
                  if (!v76)
                  {
                    v76 = v16;
                  }

                  goto LABEL_42;
                }

                v28 = [v16 name];
                v29 = [v28 length];

                if (v27 == v29)
                {
                  if (!v74)
                  {
                    v74 = v16;
                  }
                }

                else if (!v75)
                {
                  v75 = v16;
                }
              }

              v4 = v78;
              goto LABEL_42;
            }

LABEL_43:
          }

          v14 = [v79 countByEnumeratingWithState:&v81 objects:v89 count:16];
        }

        while (v14);
      }

      v11 = v70 + 1;
    }

    while (v70 + 1 != v69);
    v69 = [obj countByEnumeratingWithState:&v85 objects:v90 count:16];
  }

  while (v69);
  v10 = obj;

  if (v74)
  {
    v36 = v74;
    v37 = v36;
    v39 = v72;
    v38 = v73;
    goto LABEL_57;
  }

  if (!v72)
  {
    if (v75)
    {
      v43 = v75;
      v39 = 0;
      v36 = 0;
      v37 = v43;
      v38 = v73;
      v41 = v76;
      goto LABEL_58;
    }

    if (v71)
    {
      v42 = v71;
      v43 = 0;
      v39 = 0;
      v36 = 0;
      v37 = v42;
      v38 = v73;
      v41 = v76;
      goto LABEL_59;
    }

    if (v76)
    {
      v41 = v76;
      v42 = 0;
      v43 = 0;
      v39 = 0;
      v36 = 0;
      v37 = v41;
      v38 = v73;
      goto LABEL_59;
    }

    if (v73)
    {
      v38 = v73;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v39 = 0;
      v36 = 0;
      v37 = v38;
      goto LABEL_59;
    }

LABEL_51:
    v38 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_59;
  }

  v39 = v72;
  v36 = 0;
  v37 = v39;
  v38 = v73;
LABEL_57:
  v43 = v75;
  v41 = v76;
LABEL_58:
  v42 = v71;
LABEL_59:

  if (!v37)
  {
    v40 = 0;
    goto LABEL_75;
  }

LABEL_67:
  if (self->_targetProcess != v37)
  {
    objc_storeStrong(&self->_targetProcess, v37);
    self->_targetProcessId = [(SATask *)v37 pid];
    if (self->_targetThreadId)
    {
      v51 = [(SATask *)self->_targetProcess threads];
      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_targetThreadId];
      v53 = [v51 objectForKeyedSubscript:v52];

      if (!v53)
      {
        self->_targetThreadId = 0;
      }
    }

    if (self->_targetDispatchQueueId)
    {
      v54 = [(SATask *)self->_targetProcess dispatchQueues];
      v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_targetDispatchQueueId];
      v56 = [v54 objectForKeyedSubscript:v55];

      if (!v56)
      {
        self->_targetDispatchQueueId = 0;
      }
    }
  }

  v40 = 1;
LABEL_75:

LABEL_76:
  v57 = *MEMORY[0x1E69E9840];
  return v40;
}

- (id)lastTaskWithPid:(uint64_t)a3 onOrBeforeTimestamp:
{
  if (a1)
  {
    v5 = *(a1 + 16);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      if (a3)
      {
        [(SASampleStore *)a1 _lastTaskOnOrBeforeTimestamp:a3 inTasks:v7];
      }

      else
      {
        [v7 lastObject];
      }
      v8 = ;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)firstTaskWithPid:(uint64_t)a3 onOrAfterTimestamp:
{
  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      if (a3)
      {
        [SASampleStore _firstTaskOnOrAfterTimestamp:a3 inTasks:v6];
      }

      else
      {
        [v6 firstObject];
      }
      v7 = ;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)lastTaskWithPid:(void *)a1
{
  if (a1)
  {
    a1 = [(SASampleStore *)a1 lastTaskWithPid:a2 onOrBeforeTimestamp:0];
    v2 = vars8;
  }

  return a1;
}

- (id)lastTaskWithUniquePid:(uint64_t)a3 onOrBeforeTimestamp:
{
  if (a1)
  {
    v5 = *(a1 + 8);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (a3)
    {
      [(SASampleStore *)a1 _lastTaskOnOrBeforeTimestamp:a3 inTasks:v7];
    }

    else
    {
      [v7 lastObject];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)firstTaskWithUniquePid:(uint64_t)a3 onOrAfterTimestamp:
{
  if (a1)
  {
    v4 = *(a1 + 8);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (a3)
    {
      [SASampleStore _firstTaskOnOrAfterTimestamp:a3 inTasks:v6];
    }

    else
    {
      [v6 firstObject];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)lastTaskWithUniquePid:(void *)a1
{
  if (a1)
  {
    a1 = [(SASampleStore *)a1 lastTaskWithUniquePid:a2 onOrBeforeTimestamp:0];
    v2 = vars8;
  }

  return a1;
}

uint64_t __42__SASampleStore_setTargetProcessWithHint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 lastObject];
  v7 = [v6 uniquePid];
  v8 = [v5 lastObject];
  v9 = [v8 uniquePid];

  if (v7 <= v9)
  {
    v11 = [v4 lastObject];
    v12 = [v11 uniquePid];
    v13 = [v5 lastObject];
    v10 = v12 < [v13 uniquePid];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

uint64_t __42__SASampleStore_setTargetProcessWithHint___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastObject];
  v6 = [v5 pid];
  v7 = [v4 lastObject];

  v8 = (v6 - [v7 pid]);
  return v8;
}

- (void)setTargetThreadId:(unint64_t)a3
{
  if (self->_targetThreadId != a3)
  {
    self->_targetThreadId = a3;
    [(SASampleStore *)self findTargetProcessInTimeRange:?];
  }
}

- (void)setTargetDispatchQueueId:(unint64_t)a3
{
  if (self->_targetDispatchQueueId != a3)
  {
    v3 = a3;
    if (a3)
    {
      targetProcess = self->_targetProcess;
      if (targetProcess)
      {
        v6 = [(SATask *)targetProcess dispatchQueues];
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
        v8 = [v6 objectForKeyedSubscript:v7];

        if (!v8)
        {
          v3 = 0;
        }
      }
    }

    self->_targetDispatchQueueId = v3;
  }
}

- (void)setTargetProcessId:(int)a3
{
  if (self->_targetProcessId != a3)
  {
    self->_targetProcessId = a3;
    self->_targetThreadId = 0;
    [(SASampleStore *)self findTargetProcessInTimeRange:?];
  }
}

- (void)setTargetProcess:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  p_targetProcess = &self->_targetProcess;
  targetProcess = self->_targetProcess;
  if (targetProcess != a3)
  {
    if (a3)
    {
      tasksByPid = self->_tasksByPid;
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "pid")}];
      v9 = [(NSMutableDictionary *)tasksByPid objectForKeyedSubscript:v8];
      v10 = [v9 indexOfObjectIdenticalTo:a3];

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = *__error();
        v19 = _sa_logt();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [a3 debugDescription];
          *buf = 136315138;
          v30 = [v20 UTF8String];
          _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "Setting target process %s which isn't in this SASampleStore", buf, 0xCu);
        }

        *__error() = v18;
        v21 = [a3 debugDescription];
        v22 = [v21 UTF8String];
        _SASetCrashLogMessage(1006, "Setting target process %s which isn't in this SASampleStore", v23, v24, v25, v26, v27, v28, v22);

        _os_crash();
        __break(1u);
      }

      objc_storeStrong(p_targetProcess, a3);
      self->_targetProcessId = [a3 pid];
      if (self->_targetThreadId)
      {
        v11 = [a3 threads];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_targetThreadId];
        v13 = [v11 objectForKeyedSubscript:v12];

        if (!v13)
        {
          self->_targetThreadId = 0;
        }
      }

      if (self->_targetDispatchQueueId)
      {
        v14 = [a3 dispatchQueues];
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_targetDispatchQueueId];
        v16 = [v14 objectForKeyedSubscript:v15];

        if (!v16)
        {
          self->_targetDispatchQueueId = 0;
        }
      }
    }

    else
    {
      self->_targetProcess = 0;

      self->_targetProcessId = -1;
      self->_targetThreadId = 0;
      self->_targetDispatchQueueId = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)findTargetProcessInTimeRange:(uint64_t)a1
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_18;
  }

  v4 = *(a1 + 208);
  *(a1 + 208) = 0;

  v5 = *(a1 + 184);
  if (v5)
  {
    if (a2)
    {
      v6 = [a2 startTime];
      v7 = [a2 endTime];
      v8 = v7;
      if (!v6 || !v7)
      {
        v22 = *__error();
        v39 = _sa_logt();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v55 = v6;
          v56 = 2048;
          v57 = v8;
          _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, "startTime %p or endTime %p nil", buf, 0x16u);
        }

        *__error() = v22;
        _SASetCrashLogMessage(1031, "startTime %p or endTime %p nil", v40, v41, v42, v43, v44, v45, v6);
        _os_crash();
        __break(1u);
        goto LABEL_41;
      }

      v9 = [(SASampleStore *)a1 taskWithPid:*(a1 + 184) orTid:v7 atTimestamp:?];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [(SASampleStore *)a1 taskWithPid:*(a1 + 184) orTid:v6 atTimestamp:?];
      }

      v15 = *(a1 + 208);
      *(a1 + 208) = v11;

      v16 = *(a1 + 208);
      if (v16)
      {
        *(a1 + 176) = [v16 pid];
      }

      else
      {
        v17 = *__error();
        v18 = _sa_logt();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v35 = *(a1 + 184);
          *buf = 134217984;
          v55 = v35;
          _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "No task with thread 0x%llx in event time range, clearing target thread", buf, 0xCu);
        }

        *__error() = v17;
        *(a1 + 184) = 0;
      }
    }

    else
    {
      v12 = [(SASampleStore *)a1 lastTaskWithPid:v5 orTid:?];
      v13 = *(a1 + 208);
      *(a1 + 208) = v12;

      v14 = *(a1 + 208);
      if (v14)
      {
        *(a1 + 176) = [v14 pid];
      }

      else
      {
        v26 = *__error();
        v27 = _sa_logt();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v36 = *(a1 + 184);
          *buf = 134217984;
          v55 = v36;
          _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "No task with thread 0x%llx, clearing target thread", buf, 0xCu);
        }

        *__error() = v26;
        *(a1 + 184) = 0;
      }
    }
  }

  if (*(a1 + 208))
  {
    goto LABEL_18;
  }

  v20 = *(a1 + 176);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (a2)
  {
    v6 = [a2 startTime];
    v21 = [a2 endTime];
    v22 = v21;
    if (v6 && v21)
    {
      v23 = [(SASampleStore *)a1 taskWithPid:v21 atTimestamp:?];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = [(SASampleStore *)a1 taskWithPid:v6 atTimestamp:?];
      }

      v32 = *(a1 + 208);
      *(a1 + 208) = v25;

      if (!*(a1 + 208))
      {
        v33 = *__error();
        v34 = _sa_logt();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v37 = *(a1 + 176);
          *buf = 67109120;
          LODWORD(v55) = v37;
          _os_log_error_impl(&dword_1E0E2F000, v34, OS_LOG_TYPE_ERROR, "no task with pid %d in event time range, clearing target process", buf, 8u);
        }

        *__error() = v33;
        *(a1 + 176) = -1;
      }

      goto LABEL_18;
    }

LABEL_41:
    v46 = *__error();
    v47 = _sa_logt();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v55 = v6;
      v56 = 2048;
      v57 = v22;
      _os_log_error_impl(&dword_1E0E2F000, v47, OS_LOG_TYPE_ERROR, "startTime %p or endTime %p nil", buf, 0x16u);
    }

    *__error() = v46;
    _SASetCrashLogMessage(1059, "startTime %p or endTime %p nil", v48, v49, v50, v51, v52, v53, v6);
    _os_crash();
    __break(1u);
  }

  v28 = [(SASampleStore *)a1 lastTaskWithPid:v20];
  v29 = *(a1 + 208);
  *(a1 + 208) = v28;

  if (!*(a1 + 208))
  {
    v30 = *__error();
    v31 = _sa_logt();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v38 = *(a1 + 176);
      *buf = 67109120;
      LODWORD(v55) = v38;
      _os_log_error_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_ERROR, "no task with pid %d, clearing target process", buf, 8u);
    }

    *__error() = v30;
    *(a1 + 176) = -1;
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
}

- (id)taskWithPid:(uint64_t)a3 orTid:(void *)a4 atTimestamp:
{
  v4 = a1;
  if (!a1)
  {
LABEL_14:

    return v4;
  }

  if (a2 != -1 || a3)
  {
    v7 = a4;
    v8 = [v4 startTime];
    if (v8 && [v7 lt:v8])
    {
      v9 = v7;
      v7 = v8;
    }

    else
    {
      v9 = [v4 endTime];
      if (v9 && [v7 gt:v9])
      {
        v9 = v9;

        v7 = v9;
      }
    }

    if (a2 == -1)
    {
      *buf = 0;
      v25 = buf;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__0;
      v28 = __Block_byref_object_dispose__0;
      v29 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __47__SASampleStore_taskWithPid_orTid_atTimestamp___block_invoke;
      v20[3] = &unk_1E86F55D8;
      v23 = a3;
      v21 = v7;
      v22 = buf;
      [v4 enumerateTasks:v20];
      v4 = *(v25 + 5);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v4 = [(SASampleStore *)v4 taskWithPid:a2 atTimestamp:v7];
    }

    goto LABEL_14;
  }

  v11 = *__error();
  v12 = _sa_logt();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "neither pid nor tid provided", buf, 2u);
  }

  *__error() = v11;
  _SASetCrashLogMessage(2137, "neither pid nor tid provided", v13, v14, v15, v16, v17, v18, v19);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)lastTaskWithPid:(uint64_t)a3 orTid:
{
  if (!a1)
  {
LABEL_13:
    v3 = 0;
    goto LABEL_7;
  }

  if (a2 == -1 && !a3)
  {
    v5 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "neither pid nor tid provided", buf, 2u);
    }

    *__error() = v5;
    _SASetCrashLogMessage(2170, "neither pid nor tid provided", v7, v8, v9, v10, v11, v12, v13[0]);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (a2 == -1)
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__SASampleStore_lastTaskWithPid_orTid___block_invoke;
    v13[3] = &unk_1E86F5600;
    v13[4] = buf;
    v13[5] = a3;
    [a1 enumerateTasks:v13];
    v3 = *(v15 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v3 = [(SASampleStore *)a1 lastTaskWithPid:a2];
  }

LABEL_7:

  return v3;
}

- (id)taskWithPid:(uint64_t)a3 atTimestamp:
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v6 = [v4 objectForKeyedSubscript:v5];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (([(SATask *)v12 isAliveAtTimestamp:a3]& 1) != 0)
          {
            v13 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setTargetMainBinaryUUID:(id)a3
{
  p_targetMainBinaryUUID = &self->_targetMainBinaryUUID;
  targetMainBinaryUUID = self->_targetMainBinaryUUID;
  if (a3)
  {
    if (targetMainBinaryUUID && ([a3 isEqual:?] & 1) != 0)
    {
      return;
    }
  }

  else if (!targetMainBinaryUUID)
  {
    return;
  }

  objc_storeStrong(p_targetMainBinaryUUID, a3);

  [(SASampleStore *)self findTargetProcessesInTimeRange:?];
}

- (void)setTargetProcesses:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  if (a3 && (targetProcesses = self->_targetProcesses) != 0)
  {
    if ([(NSArray *)targetProcesses isEqualToArray:a3])
    {
LABEL_16:
      v18 = *MEMORY[0x1E69E9840];
      return;
    }

    targetMainBinaryUUID = self->_targetMainBinaryUUID;
    self->_targetMainBinaryUUID = 0;
  }

  else
  {
    v7 = self->_targetMainBinaryUUID;
    self->_targetMainBinaryUUID = 0;

    if (!a3)
    {
      goto LABEL_17;
    }
  }

  if ([a3 count])
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [a3 copy];
    v8 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          tasksByPid = self->_tasksByPid;
          v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "pid")}];
          v15 = [(NSMutableDictionary *)tasksByPid objectForKeyedSubscript:v14];
          v16 = [v15 indexOfObjectIdenticalTo:v12];

          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v21 = *__error();
            v22 = _sa_logt();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = [v12 debugDescription];
              v24 = [v23 UTF8String];
              *buf = 136315138;
              v39 = v24;
              _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "Setting target processes including %s which isn't in this SASampleStore", buf, 0xCu);
            }

            *__error() = v21;
            v25 = [v12 debugDescription];
            v26 = [v25 UTF8String];
            _SASetCrashLogMessage(1112, "Setting target processes including %s which isn't in this SASampleStore", v27, v28, v29, v30, v31, v32, v26);

            _os_crash();
            __break(1u);
          }
        }

        v9 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v9);
    }

    v17 = self->_targetProcesses;
    self->_targetProcesses = obj;

    goto LABEL_16;
  }

LABEL_17:
  v19 = self->_targetProcesses;
  self->_targetProcesses = 0;
  v20 = *MEMORY[0x1E69E9840];
}

- (void)findTargetProcessesInTimeRange:(void *)a1
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1[28];
    a1[28] = 0;

    if (a1[27])
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __48__SASampleStore_findTargetProcessesInTimeRange___block_invoke;
      v13[3] = &unk_1E86F5418;
      v13[4] = a1;
      v13[5] = a2;
      v6 = v5;
      v14 = v6;
      [a1 enumerateTasks:v13];
      if ([v6 count])
      {
        v7 = [v6 copy];
        v8 = a1[28];
        a1[28] = v7;
      }

      else
      {
        v9 = *__error();
        v10 = _sa_logt();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = a1[27];
          *buf = 138412290;
          v16 = v12;
          _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "No process with UUID %@", buf, 0xCu);
        }

        *__error() = v9;
        v8 = a1[27];
        a1[27] = 0;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __48__SASampleStore_findTargetProcessesInTimeRange___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 mainBinary];
  v5 = [v4 uuid];
  v6 = [v5 isEqual:*(*(a1 + 32) + 216)];

  if (!v6)
  {
    return;
  }

  if (*(a1 + 40))
  {
    v7 = [a2 endTimestamp];
    if (!v7 || (v14 = v7, [*(a1 + 40) startTime], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "gt:", v14), v8, v7 = v14, (v9 & 1) != 0))
    {
LABEL_8:

      return;
    }

    v10 = [a2 startTimestamp];
    if (!v10 || ([*(a1 + 40) endTime], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "lt:", v10), v11, (v12 & 1) != 0))
    {

      v7 = v14;
      goto LABEL_8;
    }
  }

  v13 = *(a1 + 48);

  [v13 addObject:a2];
}

- (void)addAuxiliaryData:(id)a3
{
  if (a3)
  {
    v11 = objc_getProperty(a3, a2, 8, 1);
    if (v11)
    {
      [(NSMutableArray *)self->_fanSpeeds addObject:v11];
    }

    v6 = objc_getProperty(a3, v5, 16, 1);
    if (v6)
    {
      v8 = v6;
      mountStatusTracker = self->_mountStatusTracker;
      Property = objc_getProperty(a3, v7, 24, 1);
      [(SAMountStatusTracker *)mountStatusTracker addMountStatus:v8 forTimestamp:Property];
    }
  }

  else
  {
    v11 = 0;
  }
}

- (void)startingSamplingLiveSystem
{
  if (self)
  {
    if (self->_lastWakeTime == 0.0)
    {
      [(SASampleStore *)self _getLastWakeTime];
      self->_lastWakeTime = v3;
    }
  }
}

- (uint64_t)enumerateTasksWithLiveness:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 16);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __44__SASampleStore_enumerateTasksWithLiveness___block_invoke;
    v3[3] = &unk_1E86F5440;
    v3[4] = result;
    v3[5] = a2;
    return [v2 enumerateKeysAndObjectsUsingBlock:v3];
  }

  return result;
}

void __44__SASampleStore_enumerateTasksWithLiveness___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 488);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = (v4 >> 1) & 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ((v9 & 1) != 0 && (*(*(a1 + 32) + 432) & 4) != 0)
        {
          [(SATask *)*(*(&v13 + 1) + 8 * i) isFromCurrentBootCycle];
        }

        (*(*(a1 + 40) + 16))();
        LOBYTE(v9) = 0;
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      LOBYTE(v9) = 0;
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)postprocess
{
  v348 = *MEMORY[0x1E69E9840];
  if (self->_numMicrostackshotsSkippedDueToMissingLoadInfos)
  {
    v3 = *__error();
    v4 = _sa_logt();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      numMicrostackshotsSkippedDueToMissingLoadInfos = self->_numMicrostackshotsSkippedDueToMissingLoadInfos;
      buf.f_bsize = 134217984;
      *&buf.f_iosize = numMicrostackshotsSkippedDueToMissingLoadInfos;
      _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "%llu microstackshots were skipped due to having no load infos", &buf, 0xCu);
    }

    *__error() = v3;
  }

  if (self->_nextSampleIsFirstSamplingAllThreads)
  {
    v5 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_DEFAULT, "WARNING: No stackshot provided after sampleOnlyMainThreads set to NO", &buf, 2u);
    }

    *__error() = v5;
    *&self->_sampleOnlyMainThreads = 1;
  }

  if (self->_nextSampleIsFirstSamplingAllProcesses)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_DEFAULT, "WARNING: No stackshot provided after stackshotsOnlyIncludeSpecificProcesses set to NO", &buf, 2u);
    }

    *__error() = v7;
    *&self->_stackshotsOnlyIncludeSpecificProcesses = 1;
  }

  if (self->_mostRecentNativeSharedCache || (~LODWORD(self->_dataGatheringOptions) & 3) != 0)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = [SASharedCache currentSharedCacheWithDataGatheringOptions:?];
    if (v9)
    {
      v10 = MEMORY[0x1E12EAD30]();
      if (([(NSMutableArray *)self->_sharedCaches containsObject:v9]& 1) == 0)
      {
        [(NSMutableArray *)self->_sharedCaches addObject:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  if ((~LODWORD(self->_dataGatheringOptions) & 0x502) == 0)
  {
    [(SASampleStore *)self resampleTruncatedBacktraces];
  }

  v325[0] = MEMORY[0x1E69E9820];
  v325[1] = 3221225472;
  v325[2] = __28__SASampleStore_postprocess__block_invoke;
  v325[3] = &unk_1E86F5490;
  v325[4] = self;
  v327 = v10;
  v277 = v9;
  v326 = v277;
  [(SASampleStore *)self enumerateTasksWithLiveness:v325];
  v321 = 0;
  v322 = &v321;
  v323 = 0x2020000000;
  v324 = 0;
  v317 = 0;
  v318 = &v317;
  v319 = 0x2020000000;
  v320 = 0;
  v313 = 0;
  v314 = &v313;
  v315 = 0x2020000000;
  v316 = 0;
  v309 = 0;
  v310 = &v309;
  v311 = 0x2020000000;
  v312 = 0;
  v308[0] = MEMORY[0x1E69E9820];
  v308[1] = 3221225472;
  v308[2] = __28__SASampleStore_postprocess__block_invoke_2;
  v308[3] = &unk_1E86F54E0;
  v308[4] = &v313;
  v308[5] = &v321;
  v308[6] = &v309;
  v308[7] = &v317;
  [(SASampleStore *)self enumerateTasks:v308];
  if (*(v314 + 24) == 1)
  {
    v11 = *(v322 + 24) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 & 1;
  if (*(v310 + 24) == 1)
  {
    v13 = *(v318 + 24) ^ 1;
    if (v11)
    {
      goto LABEL_29;
    }

LABEL_28:
    if ((v13 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v13 = 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v14 = *__error();
  v15 = _sa_logt();
  v16 = v13 & 1;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    buf.f_bsize = 67109376;
    buf.f_iosize = v12;
    LOWORD(buf.f_blocks) = 1024;
    *(&buf.f_blocks + 2) = v16;
    _os_log_debug_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_DEBUG, "No valid originPid:%d or proximatePid:%d, clearing it all out", &buf, 0xEu);
  }

  *__error() = v14;
  v305[0] = MEMORY[0x1E69E9820];
  v305[1] = 3221225472;
  v305[2] = __28__SASampleStore_postprocess__block_invoke_214;
  v305[3] = &__block_descriptor_34_e20_v24__0__SATask_8_B16l;
  v306 = v12;
  v307 = v16;
  [(SASampleStore *)self enumerateTasks:v305];
LABEL_32:
  dataGatheringOptions = self->_dataGatheringOptions;
  if ((dataGatheringOptions & 1) == 0)
  {
    goto LABEL_367;
  }

  if ((dataGatheringOptions & 2) == 0)
  {
    [(SASampleStore *)self lastTaskWithPid:?];
    v299 = 0u;
    v300 = 0u;
    v297 = 0u;
    v276 = v298 = 0u;
    v18 = [v276 binaryLoadInfos];
    v19 = [v18 countByEnumeratingWithState:&v297 objects:v333 count:16];
    if (!v19)
    {
LABEL_46:

      v295 = 0u;
      v296 = 0u;
      v293 = 0u;
      v294 = 0u;
      obj = self->_exclaves;
      v280 = [(NSMutableArray *)obj countByEnumeratingWithState:&v293 objects:v332 count:16];
      if (v280)
      {
        v279 = *v294;
        do
        {
          for (i = 0; i != v280; i = i + 1)
          {
            if (*v294 != v279)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v293 + 1) + 8 * i);
            v289 = 0u;
            v290 = 0u;
            v291 = 0u;
            v292 = 0u;
            v30 = [v29 loadInfos];
            v31 = [v30 countByEnumeratingWithState:&v289 objects:v331 count:16];
            if (v31)
            {
              v32 = *v290;
              do
              {
                for (j = 0; j != v31; ++j)
                {
                  if (*v290 != v32)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v34 = *(*(&v289 + 1) + 8 * j);
                  v35 = [v34 binary];
                  v36 = [v35 path];
                  v37 = v36 == 0;

                  if (v37)
                  {
                    v38 = [v34 binary];
                    v39 = [v38 uuid];
                    additionalCSSymbolicatorFlags = self->_additionalCSSymbolicatorFlags;
                    SymbolOwnerForExclaveUUID = CreateSymbolOwnerForExclaveUUID(v39);
                    v43 = v42;

                    if ((CSIsNull() & 1) == 0)
                    {
                      v44 = [v34 binary];
                      v45 = v44;
                      if (v44)
                      {
                        [(SABinary *)v44 addInfoFromSymbolOwner:v43 fromDisk:0 includeExpensiveInfo:0];
                      }

                      CSRelease();
                      v46 = [v34 binary];
                      [v46 gatherInfoWithDataGatheringOptions:self->_dataGatheringOptions pid:0xFFFFFFFFLL];
                    }
                  }
                }

                v31 = [v30 countByEnumeratingWithState:&v289 objects:v331 count:16];
              }

              while (v31);
            }
          }

          v280 = [(NSMutableArray *)obj countByEnumeratingWithState:&v293 objects:v332 count:16];
        }

        while (v280);
      }

LABEL_306:

      goto LABEL_307;
    }

    v20 = 0;
    v21 = *v298;
LABEL_36:
    v22 = 0;
    while (1)
    {
      if (*v298 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v297 + 1) + 8 * v22);
      if (v20)
      {
        goto LABEL_43;
      }

      v24 = [*(*(&v297 + 1) + 8 * v22) binary];
      v25 = [v24 path];
      v26 = v25 == 0;

      if (v26)
      {
        break;
      }

      v20 = 0;
LABEL_44:
      v28 = [v23 binary];
      [v28 gatherInfoWithDataGatheringOptions:self->_dataGatheringOptions | 2 pid:0];

      if (v19 == ++v22)
      {
        v19 = [v18 countByEnumeratingWithState:&v297 objects:v333 count:16];
        if (!v19)
        {
          goto LABEL_46;
        }

        goto LABEL_36;
      }
    }

    v27 = [SABinaryLoadInfo binaryLoadInfoForLiveProcessWithPid:0 dataGatheringOptions:self->_dataGatheringOptions | 2 additionalCSSymbolicatorFlags:self->_additionalCSSymbolicatorFlags];
LABEL_43:
    v20 = 1;
    goto LABEL_44;
  }

  if (self->_lastWakeTime == 0.0)
  {
    [(SASampleStore *)self _getLastWakeTime];
    self->_lastWakeTime = v47;
  }

  if (self->_shouldGatherKextStat && !self->_kextStat)
  {
    if (qword_1EDD02F10 != -1)
    {
      dispatch_once(&qword_1EDD02F10, &__block_literal_global_512);
    }

    objc_storeStrong(&self->_kextStat, qword_1EDD02F08);
  }

  if (![(NSMutableArray *)self->_bootCycles count])
  {
    v48 = [SABootInfo alloc];
    if (v48)
    {
      in = 0u;
      memset(v344, 0, 21);
      v346[0] = 37;
      if (sysctlbyname("kern.bootsessionuuid", &in, v346, 0, 0))
      {
        v49 = *__error();
        v50 = _sa_logt();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v257 = *__error();
          v258 = __error();
          v259 = strerror(*v258);
          *uu = 67109378;
          *&uu[4] = v257;
          *&uu[8] = 2080;
          *&uu[10] = v259;
          _os_log_error_impl(&dword_1E0E2F000, v50, OS_LOG_TYPE_ERROR, "Unable to get bootsessionuuid: %d %s", uu, 0x12u);
        }
      }

      else
      {
        BYTE4(v344[2]) = 0;
        *&uu[8] = 0;
        *uu = 0;
        if (!uuid_parse(&in, uu))
        {
          v145 = uuidForBytes(uu);
          *uu = 0;
          in = 0uLL;
          times = mach_get_times();
          if (times)
          {
            v147 = *__error();
            v148 = _sa_logt();
            if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
            {
              *v334 = 67109120;
              *&v334[4] = times;
              _os_log_error_impl(&dword_1E0E2F000, v148, OS_LOG_TYPE_ERROR, "Unable to get boot time: %d", v334, 8u);
            }

            *__error() = v147;
            v149 = 0.0;
          }

          else
          {
            v152 = in;
            v149 = v152 - *MEMORY[0x1E695E468] + *(&v152 + 1) / 1000000000.0 - SASecondsFromMachTimeUsingLiveTimebase(*uu);
          }

          v153 = CopyBootArgs();
          v154 = CopyKernelVersion();
          *&in = 0;
          *(&in + 1) = &in;
          v344[0] = 0x3032000000;
          v344[1] = __Block_byref_object_copy__0;
          v344[2] = __Block_byref_object_dispose__0;
          v344[3] = 0;
          *uu = 0;
          *&uu[8] = uu;
          *&uu[16] = 0x3032000000;
          v339 = __Block_byref_object_copy__0;
          v340 = __Block_byref_object_dispose__0;
          v341 = 0;
          *v334 = 0;
          *&v334[8] = v334;
          *&v334[16] = 0x3032000000;
          v335 = __Block_byref_object_copy__0;
          v336 = __Block_byref_object_dispose__0;
          v337 = 0;
          *&buf.f_bsize = MEMORY[0x1E69E9820];
          buf.f_blocks = 3221225472;
          buf.f_bfree = __32__SABootInfo_initForCurrentBoot__block_invoke;
          buf.f_bavail = &unk_1E86F53A8;
          buf.f_files = &in;
          buf.f_ffree = uu;
          buf.f_fsid = v334;
          GetOSVersions(&buf);
          v48 = [(SABootInfo *)v48 initWithUUID:v145 wallTime:v153 bootArgs:v154 kernelVersion:*(*(&in + 1) + 40) osProductVersion:*(*&uu[8] + 40) osProductVersionExtra:*(*&v334[8] + 40) osBuildVersion:v149];
          _Block_object_dispose(v334, 8);

          _Block_object_dispose(uu, 8);
          _Block_object_dispose(&in, 8);

          if (v48)
          {
            [(SASampleStore *)self addBootCycle:v48];
          }

          goto LABEL_84;
        }

        v49 = *__error();
        v50 = _sa_logt();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *v334 = 136315138;
          *&v334[4] = &in;
          _os_log_error_impl(&dword_1E0E2F000, v50, OS_LOG_TYPE_ERROR, "Unable to parse bootsessionuuid %s", v334, 0xCu);
        }
      }

      *__error() = v49;
      v48 = 0;
    }

LABEL_84:
  }

  if (!self->_bootArgs)
  {
    v52 = CopyBootArgs();
    bootArgs = self->_bootArgs;
    self->_bootArgs = v52;
  }

  if (!self->_systemAdvisoryLevels)
  {
    v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
    AdvisoryDetailed = IOCopySystemLoadAdvisoryDetailed();
    v56 = AdvisoryDetailed;
    if (AdvisoryDetailed)
    {
      v57 = [(__CFDictionary *)AdvisoryDetailed objectForKeyedSubscript:@"UserLevel"];
      v58 = [(__CFDictionary *)v56 objectForKeyedSubscript:@"BatteryLevel"];
      v59 = [(__CFDictionary *)v56 objectForKeyedSubscript:@"CombinedLevel"];
      if (v57)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v60 = [v57 copy];
          [v54 setObject:v60 forKeyedSubscript:0x1F5BBF800];
        }
      }

      if (v58)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v61 = [v58 copy];
          [v54 setObject:v61 forKeyedSubscript:0x1F5BBF820];
        }
      }

      if (v59)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v62 = [v59 copy];
          [v54 setObject:v62 forKeyedSubscript:0x1F5BBF840];
        }
      }
    }

    LODWORD(in) = 0;
    if (!notify_register_check(*MEMORY[0x1E69E98C0], &in))
    {
      *&buf.f_bsize = 0;
      state = notify_get_state(in, &buf.f_bsize);
      v64 = *&buf.f_bsize;
      notify_cancel(in);
      if (!state)
      {
        v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v64];
        [v54 setObject:v65 forKeyedSubscript:0x1F5BBF860];
      }
    }

    if ([v54 count])
    {
      v66 = [v54 copy];
      objc_setProperty_atomic(self, v67, v66, 608);
    }
  }

  if (!self->_homeVolumeSpace)
  {
    v68 = SAGetHomeDirectoryURL();
    v69 = v68;
    if (v68)
    {
      memset(&buf, 0, 512);
      v70 = v68;
      if (!statfs([v69 fileSystemRepresentation], &buf))
      {
        f_bsize = buf.f_bsize;
        f_blocks = buf.f_blocks;
        f_bavail = buf.f_bavail;
        v74 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
        v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:f_blocks * f_bsize];
        [v74 setObject:v75 forKeyedSubscript:0x1F5BBF8A0];

        v76 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:f_bavail * f_bsize];
        [v74 setObject:v76 forKeyedSubscript:0x1F5BBF8C0];

        *&uu[8] = 0;
        *uu = 0;
        *&in = 5;
        *(&in + 1) = 32;
        v344[0] = 0;
        v77 = v69;
        if (!getattrlist([v69 fileSystemRepresentation], &in, uu, 0xCuLL, 1u) && *&uu[4] >= 1)
        {
          *v334 = 0;
          v78 = v69;
          if (!fsctl([v69 fileSystemRepresentation], 0x4004681BuLL, v334, 0))
          {
            if (*v334)
            {
              v79 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&uu[4] * *v334];
              [v74 setObject:v79 forKeyedSubscript:0x1F5BBF8E0];
            }
          }
        }

        v80 = [v74 copy];
        homeVolumeSpace = self->_homeVolumeSpace;
        self->_homeVolumeSpace = v80;
      }
    }
  }

  if (!self->_nonDefaultFeatureFlags)
  {
    if (qword_1EDD02F30 != -1)
    {
      dispatch_once(&qword_1EDD02F30, &__block_literal_global_543);
    }

    objc_storeStrong(&self->_nonDefaultFeatureFlags, qword_1EDD02F38);
  }

  if (![(NSMutableArray *)self->_powerModeTransitions count])
  {
    v82 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.powerd.lowpowermode.state"];
    v83 = v82;
    if (!v82 || ([v82 objectForKey:@"state"], v84 = objc_claimAutoreleasedReturnValue(), v85 = v84 == 0, v84, v85))
    {
      v91 = *__error();
      v92 = _sa_logt();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_debug_impl(&dword_1E0E2F000, v92, OS_LOG_TYPE_DEBUG, "Unable to get low power mode defaults", &buf, 2u);
      }

      v93 = __error();
      v86 = 0;
    }

    else
    {
      v86 = [v83 BOOLForKey:@"state"];
      v87 = [v83 objectForKey:@"stateChangeDate"];
      if (v87)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v87 timeIntervalSinceReferenceDate];
          if (v88 != 0.0)
          {
            [v87 timeIntervalSinceReferenceDate];
            v90 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:v89];
LABEL_130:
            v94 = [[SAPowerModeTransition alloc] initWithLowPowerMode:v86 timestamp:v90];
            v95 = [(SASampleStore *)self addPowerModeTransition:v94];

            goto LABEL_131;
          }
        }

        else
        {
          v150 = *__error();
          v151 = _sa_logt();
          if (os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
          {
            v270 = [objc_opt_class() debugDescription];
            buf.f_bsize = 138412290;
            *&buf.f_iosize = v270;
            _os_log_fault_impl(&dword_1E0E2F000, v151, OS_LOG_TYPE_FAULT, "low power mode stateChangeDate is not an NSDate: %@", &buf, 0xCu);
          }

          *__error() = v150;
          v87 = 0;
        }

        v90 = 0;
        goto LABEL_130;
      }

      v91 = *__error();
      v144 = _sa_logt();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_fault_impl(&dword_1E0E2F000, v144, OS_LOG_TYPE_FAULT, "No stateChangeDate for low power mode", &buf, 2u);
      }

      v93 = __error();
    }

    v87 = 0;
    v90 = 0;
    *v93 = v91;
    goto LABEL_130;
  }

LABEL_131:
  if (!self->_installedRootNames && DarwinupLibraryCore())
  {
    *&buf.f_bsize = MEMORY[0x1E69E9820];
    buf.f_blocks = 3221225472;
    buf.f_bfree = __40__SASampleStore_gatherRootInstalledInfo__block_invoke_631;
    buf.f_bavail = &unk_1E86F5C40;
    buf.f_files = &__block_literal_global_628;
    if (qword_1EDD02F60 != -1)
    {
      dispatch_once(&qword_1EDD02F60, &buf);
    }

    if (qword_1EDD02F58)
    {
      v96 = qword_1EDD02F58;
    }

    else
    {
      v96 = __40__SASampleStore_gatherRootInstalledInfo__block_invoke();
    }

    installedRootNames = self->_installedRootNames;
    self->_installedRootNames = v96;

    if ([(NSArray *)self->_installedRootNames count])
    {
      self->_isRootInstalled = 1;
    }
  }

  if (!self->_isRootInstalled)
  {
    *uu = 0;
    *v334 = 8;
    v98 = sysctlbyname("kern.roots_installed", uu, v334, 0, 0);
    v99 = *__error();
    v100 = _sa_logt();
    v101 = v100;
    if (v98)
    {
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        v256 = *__error();
        LODWORD(in) = 67109120;
        DWORD1(in) = v256;
        _os_log_error_impl(&dword_1E0E2F000, v101, OS_LOG_TYPE_ERROR, "Unable to get installed root info kern.roots_installed: %{errno}d", &in, 8u);
      }

      *__error() = v99;
    }

    else
    {
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        LODWORD(in) = 134217984;
        *(&in + 4) = *uu;
        _os_log_impl(&dword_1E0E2F000, v101, OS_LOG_TYPE_INFO, "Installed root info kern.roots_installed: %llu", &in, 0xCu);
      }

      *__error() = v99;
      if (*uu)
      {
        self->_isRootInstalled = 1;
      }
    }
  }

  if (!self->_keyboardLanguages)
  {
    v283 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v281 = CFPreferencesCopyValue(@"KeyboardsCurrentAndNext", @"com.apple.keyboard.preferences", @"mobile", *MEMORY[0x1E695E898]);
    if (v281)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v345 = 0u;
        in = 0u;
        memset(v344, 0, sizeof(v344));
        v102 = v281;
        v103 = [v102 countByEnumeratingWithState:&in objects:&buf count:16];
        if (v103)
        {
          v104 = *v344[0];
          do
          {
            for (k = 0; k != v103; ++k)
            {
              if (*v344[0] != v104)
              {
                objc_enumerationMutation(v102);
              }

              v106 = *(*(&in + 1) + 8 * k);
              if (v106)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v107 = [v106 stringByReplacingOccurrencesOfString:@"@sw=" withString:@" "];
                  v108 = [v107 stringByReplacingOccurrencesOfString:@"@hw=" withString:@" "];

                  v109 = [v108 stringByReplacingOccurrencesOfString:@"hw=" withString:&stru_1F5BBF440];;

                  v110 = [v109 stringByReplacingOccurrencesOfString:@"sw=" withString:&stru_1F5BBF440];;

                  v111 = [v110 stringByReplacingOccurrencesOfString:@"Automatic" withString:&stru_1F5BBF440];

                  v112 = *__error();
                  v113 = _sa_logt();
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
                  {
                    *uu = 138412546;
                    *&uu[4] = v106;
                    *&uu[12] = 2112;
                    *&uu[14] = v111;
                    _os_log_debug_impl(&dword_1E0E2F000, v113, OS_LOG_TYPE_DEBUG, "keyboard %@ -> %@", uu, 0x16u);
                  }

                  *__error() = v112;
                  if (([v283 containsObject:v111] & 1) == 0)
                  {
                    [v283 addObject:v111];
                  }
                }

                else
                {
                  v114 = *__error();
                  v115 = _sa_logt();
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
                  {
                    ClassName = object_getClassName(v106);
                    *uu = 136315138;
                    *&uu[4] = ClassName;
                    _os_log_fault_impl(&dword_1E0E2F000, v115, OS_LOG_TYPE_FAULT, "keyboard not a string! %s", uu, 0xCu);
                  }

                  *__error() = v114;
                }
              }
            }

            v103 = [v102 countByEnumeratingWithState:&in objects:&buf count:16];
          }

          while (v103);
        }

        v117 = [v283 copy];
        keyboardLanguages = self->_keyboardLanguages;
        self->_keyboardLanguages = v117;
      }

      else
      {
        v119 = *__error();
        v120 = _sa_logt();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
        {
          v264 = object_getClassName(v281);
          buf.f_bsize = 136315138;
          *&buf.f_iosize = v264;
          _os_log_fault_impl(&dword_1E0E2F000, v120, OS_LOG_TYPE_FAULT, "keyboards not an array! %s", &buf, 0xCu);
        }

        *__error() = v119;
      }
    }
  }

  if (!self->_preferredLanguages)
  {
    v121 = getPreferredLanguages();
    v122 = v121;
    if (v121 && [v121 count])
    {
      v123 = *__error();
      v124 = _sa_logt();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
      {
        buf.f_bsize = 138412290;
        *&buf.f_iosize = v122;
        _os_log_debug_impl(&dword_1E0E2F000, v124, OS_LOG_TYPE_DEBUG, "Preferred languages found: %@", &buf, 0xCu);
      }

      *__error() = v123;
      if ([v122 count] < 2)
      {
        v125 = [v122 copy];
      }

      else
      {
        v125 = [v122 subarrayWithRange:{0, 2}];
      }

      preferredLanguages = self->_preferredLanguages;
      self->_preferredLanguages = v125;
    }

    else
    {
      v127 = *__error();
      v128 = _sa_logt();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_fault_impl(&dword_1E0E2F000, v128, OS_LOG_TYPE_FAULT, "Preferred languages are not found!", &buf, 2u);
      }

      *__error() = v127;
    }
  }

  if (!self->_countryCode)
  {
    v129 = getPreferredLanguages();
    v130 = MEMORY[0x1E695DF58];
    v131 = [v129 firstObject];
    v132 = [v130 localeWithLocaleIdentifier:v131];
    v133 = [v132 objectForKey:*MEMORY[0x1E695D978]];

    if (v133 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v134 = *__error();
      v135 = _sa_logt();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
      {
        buf.f_bsize = 138412290;
        *&buf.f_iosize = v133;
        _os_log_debug_impl(&dword_1E0E2F000, v135, OS_LOG_TYPE_DEBUG, "Country code found: %@", &buf, 0xCu);
      }

      *__error() = v134;
      objc_storeStrong(&self->_countryCode, v133);
    }

    else
    {
      v136 = *__error();
      v137 = _sa_logt();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_debug_impl(&dword_1E0E2F000, v137, OS_LOG_TYPE_DEBUG, "Country code not found!", &buf, 2u);
      }

      *__error() = v136;
    }
  }

  if (!self->_hasHardwareKeyboardInfo)
  {
    p_hasHardwareKeyboardInfo = &self->_hasHardwareKeyboardInfo;
    self->_hasHardwareKeyboardInfo = 1;
    v139 = CFPreferencesCopyValue(@"HardwareKeyboardLastSeen", @"com.apple.keyboard.preferences", @"mobile", *MEMORY[0x1E695E898]);
    v140 = v139;
    if (!v139)
    {
      p_hasHardwareKeyboardInfo = &self->_hardwareKeyboard;
      goto LABEL_203;
    }

    v141 = CFGetTypeID(v139);
    if (v141 != CFBooleanGetTypeID())
    {
      LODWORD(v184) = *__error();
      v178 = _sa_logt();
      if (os_log_type_enabled(v178, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_394;
      }

      goto LABEL_392;
    }

    self->_hardwareKeyboard = CFBooleanGetValue(v140) != 0;
    CFRelease(v140);
  }

  while (1)
  {
    if (self->_numVnodesHardLimit)
    {
      goto LABEL_235;
    }

    *&in = 0;
    *uu = 0;
    *v334 = 0;
    *&buf.f_bsize = 8;
    if (sysctlbyname("kern.num_vnodes", &in, &buf.f_bsize, 0, 0))
    {
      v142 = *__error();
      v143 = _sa_logt();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        v260 = *__error();
        LODWORD(v346[0]) = 67109120;
        HIDWORD(v346[0]) = v260;
        _os_log_error_impl(&dword_1E0E2F000, v143, OS_LOG_TYPE_ERROR, "Unable to get kern.num_vnodes: %{errno}d", v346, 8u);
      }

LABEL_234:

      *__error() = v142;
      goto LABEL_235;
    }

    *&buf.f_bsize = 8;
    if (sysctlbyname("kern.free_vnodes", uu, &buf.f_bsize, 0, 0))
    {
      v142 = *__error();
      v143 = _sa_logt();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        v267 = *__error();
        LODWORD(v346[0]) = 67109120;
        HIDWORD(v346[0]) = v267;
        _os_log_error_impl(&dword_1E0E2F000, v143, OS_LOG_TYPE_ERROR, "Unable to get kern.free_vnodes: %{errno}d", v346, 8u);
      }

      goto LABEL_234;
    }

    *&buf.f_bsize = 8;
    if (sysctlbyname("kern.maxvnodes", v334, &buf.f_bsize, 0, 0))
    {
      v142 = *__error();
      v143 = _sa_logt();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        v271 = *__error();
        LODWORD(v346[0]) = 67109120;
        HIDWORD(v346[0]) = v271;
        _os_log_error_impl(&dword_1E0E2F000, v143, OS_LOG_TYPE_ERROR, "Unable to get kern.maxvnodes: %{errno}d", v346, 8u);
      }

      goto LABEL_234;
    }

    LODWORD(cf) = 0;
    *&buf.f_bsize = 4;
    if (sysctlbyname("vfs.vnstats.vn_dealloc_level", &cf, &buf.f_bsize, 0, 0))
    {
      v142 = *__error();
      v143 = _sa_logt();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        v272 = *__error();
        LODWORD(v346[0]) = 67109120;
        HIDWORD(v346[0]) = v272;
        _os_log_error_impl(&dword_1E0E2F000, v143, OS_LOG_TYPE_ERROR, "Unable to get vfs.vnstats.vn_dealloc_level: %{errno}d", v346, 8u);
      }

      goto LABEL_234;
    }

    v262 = *v334;
    v263 = *v334 << (cf != 0);
    self->_numVnodesAllocated = in;
    self->_numVnodesFree = *uu;
    self->_numVnodesSoftLimit = v262;
    self->_numVnodesHardLimit = v263;
LABEL_235:
    if (!self->_processNameForUnknownPids)
    {
      *&buf.f_bsize = 0;
      buf.f_blocks = &buf;
      buf.f_bfree = 0x3032000000;
      buf.f_bavail = __Block_byref_object_copy__0;
      buf.f_files = __Block_byref_object_dispose__0;
      buf.f_ffree = objc_alloc_init(MEMORY[0x1E695DF90]);
      *&in = MEMORY[0x1E69E9820];
      *(&in + 1) = 3221225472;
      v344[0] = __42__SASampleStore_gatherUnknownProcessNames__block_invoke;
      v344[1] = &unk_1E86F5BA8;
      v344[2] = self;
      v344[3] = &buf;
      [(SASampleStore *)self enumerateTasks:&in];
      v155 = [(NSDictionary *)self->_processNameForUnknownPids copy];
      processNameForUnknownPids = self->_processNameForUnknownPids;
      self->_processNameForUnknownPids = v155;

      _Block_object_dispose(&buf, 8);
    }

    v157 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *&buf.f_bsize = MEMORY[0x1E69E9820];
    buf.f_blocks = 3221225472;
    buf.f_bfree = __52__SASampleStore_gatherUnknownResourceCoalitionNames__block_invoke;
    buf.f_bavail = &unk_1E86F5BD0;
    buf.f_files = v157;
    v158 = v157;
    [(SASampleStore *)self enumerateTasks:&buf];

    if (!self->_activeTrials && TrialLibraryCore())
    {
      v159 = dispatch_semaphore_create(0);
      v160 = dispatch_get_global_queue(0, 0);
      *&buf.f_bsize = MEMORY[0x1E69E9820];
      buf.f_blocks = 3221225472;
      buf.f_bfree = __29__SASampleStore_gatherTrials__block_invoke;
      buf.f_bavail = &unk_1E86F5F90;
      buf.f_files = self;
      v161 = v159;
      buf.f_ffree = v161;
      dispatch_async(v160, &buf);

      v162 = dispatch_time(0, 5000000000);
      if (dispatch_semaphore_wait(v161, v162))
      {
        v163 = *__error();
        v164 = _sa_logt();
        if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
        {
          LOWORD(in) = 0;
          _os_log_error_impl(&dword_1E0E2F000, v164, OS_LOG_TYPE_ERROR, "Timed out waiting for trial info", &in, 2u);
        }

        *__error() = v163;
      }
    }

    if (!self->_gpuRestartCount)
    {
      *&in = 0;
      *(&in + 1) = &in;
      v344[0] = 0x2020000000;
      v344[1] = 0;
      *uu = 0;
      *&uu[8] = uu;
      *&uu[16] = 0x2020000000;
      v339 = 0;
      *v334 = 0;
      *&v334[8] = v334;
      *&v334[16] = 0x2020000000;
      LOBYTE(v335) = 0;
      v346[0] = 0;
      v346[1] = v346;
      v346[2] = 0x2020000000;
      v347 = 0;
      self->_gpuRestartCount = 0;
      self->_gpuRestartLastMachAbs = 0;
      cf = 0;
      v328 = 0;
      v165 = IOServiceMatching("AGXAccelerator");
      v166 = IOReportCopyChannelsForDrivers();
      CFRelease(v165);
      if (!v166)
      {
        v169 = *__error();
        v170 = _sa_logt();
        if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
        {
          buf.f_bsize = 138412290;
          *&buf.f_iosize = cf;
          _os_log_error_impl(&dword_1E0E2F000, v170, OS_LOG_TYPE_ERROR, "Failed to get IOReport channels: %@", &buf, 0xCu);
        }

        *__error() = v169;
        goto LABEL_273;
      }

      if (IOReportGetChannelCount())
      {
        Subscription = IOReportCreateSubscription();
        if (Subscription && v328)
        {
          Samples = IOReportCreateSamples();
          if (Samples)
          {
            *&buf.f_bsize = MEMORY[0x1E69E9820];
            buf.f_blocks = 3221225472;
            buf.f_bfree = __30__SASampleStore_gatherGPUInfo__block_invoke;
            buf.f_bavail = &unk_1E86F5B30;
            buf.f_files = &in;
            buf.f_ffree = v334;
            buf.f_fsid = uu;
            *&buf.f_owner = v346;
            IOReportIterate();
            self->_gpuRestartCount = *(*(&in + 1) + 24);
            self->_gpuRestartLastMachAbs = *(*&uu[8] + 24);
LABEL_264:
            if (cf)
            {
              CFRelease(cf);
            }

            if (Samples)
            {
              CFRelease(Samples);
            }

            if (v328)
            {
              CFRelease(v328);
            }

            if (Subscription)
            {
              CFRelease(Subscription);
            }

            CFRelease(v166);
LABEL_273:
            _Block_object_dispose(v346, 8);
            _Block_object_dispose(v334, 8);
            _Block_object_dispose(uu, 8);
            _Block_object_dispose(&in, 8);
            goto LABEL_274;
          }

          v171 = *__error();
          v174 = _sa_logt();
          if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
          {
            buf.f_bsize = 138412290;
            *&buf.f_iosize = cf;
            _os_log_error_impl(&dword_1E0E2F000, v174, OS_LOG_TYPE_ERROR, "Failed to create IOReport samples: %@", &buf, 0xCu);
          }
        }

        else
        {
          v171 = *__error();
          v174 = _sa_logt();
          if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
          {
            buf.f_bsize = 138412290;
            *&buf.f_iosize = cf;
            _os_log_error_impl(&dword_1E0E2F000, v174, OS_LOG_TYPE_ERROR, "Failed to subscribe to IOReport channels: %@", &buf, 0xCu);
          }
        }

        v173 = __error();
        Samples = 0;
      }

      else
      {
        v171 = *__error();
        v172 = _sa_logt();
        if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf.f_bsize) = 0;
          _os_log_debug_impl(&dword_1E0E2F000, v172, OS_LOG_TYPE_DEBUG, "No IOReport channels found", &buf, 2u);
        }

        v173 = __error();
        Samples = 0;
        Subscription = 0;
      }

      *v173 = v171;
      goto LABEL_264;
    }

LABEL_274:
    if (self->_attemptedToGatherModelInfo)
    {
      goto LABEL_294;
    }

    v175 = [(SASampleStore *)self models];
    v176 = v175 == 0;

    if (!v176)
    {
      goto LABEL_294;
    }

    self->_attemptedToGatherModelInfo = 1;
    if (!SAHelperLibraryCore())
    {
      break;
    }

    v177 = [(SASampleStore *)self startTime];
    v178 = [v177 copyDate];

    v179 = [(SASampleStore *)self endTime];
    v180 = [v179 copyDate];

    if (!v178 || !v180)
    {
      v192 = *__error();
      v193 = _sa_logt();
      if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_error_impl(&dword_1E0E2F000, v193, OS_LOG_TYPE_ERROR, "No wall time for event, cannot gather model info", &buf, 2u);
      }

      *__error() = v192;
      goto LABEL_293;
    }

    v181 = [v178 dateByAddingTimeInterval:-60.0];
    v182 = [v180 dateByAddingTimeInterval:60.0];
    v183 = dispatch_semaphore_create(0);
    *&buf.f_bsize = MEMORY[0x1E69E9820];
    buf.f_blocks = 3221225472;
    buf.f_bfree = __32__SASampleStore_gatherModelInfo__block_invoke;
    buf.f_bavail = &unk_1E86F5C68;
    buf.f_files = self;
    p_hasHardwareKeyboardInfo = v183;
    buf.f_ffree = p_hasHardwareKeyboardInfo;
    v140 = v181;
    v184 = v182;
    v185 = &buf;
    *uu = 0;
    *&uu[8] = uu;
    *&uu[16] = 0x2020000000;
    v186 = off_1EDD02FA0;
    v339 = off_1EDD02FA0;
    if (!off_1EDD02FA0)
    {
      *&in = MEMORY[0x1E69E9820];
      *(&in + 1) = 3221225472;
      v344[0] = __getSAModelGatherInfoSymbolLoc_block_invoke;
      v344[1] = &unk_1E86F5F18;
      v344[2] = uu;
      __getSAModelGatherInfoSymbolLoc_block_invoke(&in);
      v186 = *(*&uu[8] + 24);
    }

    _Block_object_dispose(uu, 8);
    if (v186)
    {
      v186(v140, v184, v185);

      v187 = dispatch_time(0, 10000000000);
      if (dispatch_semaphore_wait(p_hasHardwareKeyboardInfo, v187))
      {
        v188 = *__error();
        v189 = _sa_logt();
        if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
        {
          LOWORD(in) = 0;
          _os_log_error_impl(&dword_1E0E2F000, v189, OS_LOG_TYPE_ERROR, "Timed out waiting for model info", &in, 2u);
        }

        *__error() = v188;
      }

LABEL_293:
      goto LABEL_294;
    }

    v275 = dlerror();
    abort_report_np();
    __break(1u);
LABEL_394:
    v273 = CFGetTypeID(v140);
    v274 = CFCopyTypeIDDescription(v273);
    buf.f_bsize = 138412290;
    *&buf.f_iosize = v274;
    _os_log_fault_impl(&dword_1E0E2F000, v178, OS_LOG_TYPE_FAULT, "HardwareKeyboardLastSeen not a BOOLean: %@", &buf, 0xCu);

LABEL_392:
    *__error() = v184;
    CFRelease(v140);
LABEL_203:
    *p_hasHardwareKeyboardInfo = 0;
  }

  v190 = *__error();
  v191 = _sa_logt();
  if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.f_bsize) = 0;
    _os_log_error_impl(&dword_1E0E2F000, v191, OS_LOG_TYPE_ERROR, "SAModel not available", &buf, 2u);
  }

  *__error() = v190;
LABEL_294:
  v194 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:{2, v275}];
  v195 = [v194 userPersonaUniqueString];
  self->_hasEnterprisePersona = v195 != 0;

  if (!self->_sharedCacheVirtualSizeInBytes)
  {
    LODWORD(v346[0]) = 0;
    if (dyld_process_create_for_current_task())
    {
      if (dyld_process_snapshot_create_for_process())
      {
        if (dyld_process_snapshot_get_shared_cache())
        {
          *&in = 0;
          *(&in + 1) = &in;
          v344[0] = 0x2020000000;
          v344[1] = 0;
          *uu = 0;
          *&uu[8] = uu;
          *&uu[16] = 0x2020000000;
          v339 = 0;
          v203 = MEMORY[0x1E69E9AC8];
          v204 = malloc_type_malloc(0x8000000uLL / *MEMORY[0x1E69E9AC8], 0xF10C17EuLL);
          *&buf.f_bsize = MEMORY[0x1E69E9820];
          buf.f_blocks = 3221225472;
          buf.f_bfree = __39__SASampleStore_gatherSharedCacheStats__block_invoke;
          buf.f_bavail = &unk_1E86F5A70;
          buf.f_fsid = v204;
          buf.f_files = &in;
          buf.f_ffree = uu;
          dyld_shared_cache_for_each_file();
          v205 = *__error();
          v206 = _sa_logt();
          if (os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
          {
            v265 = *(*(&in + 1) + 24);
            v266 = *(*&uu[8] + 24);
            *v334 = 134218240;
            *&v334[4] = v265;
            *&v334[12] = 2048;
            *&v334[14] = v266;
            _os_log_debug_impl(&dword_1E0E2F000, v206, OS_LOG_TYPE_DEBUG, "native shared cache has %llu/%llu pages resident", v334, 0x16u);
          }

          *__error() = v205;
          free(v204);
          dyld_process_snapshot_dispose();
          dyld_process_dispose();
          v207 = *v203;
          self->_sharedCacheResidentSizeInBytes = *v203 * *(*(&in + 1) + 24);
          self->_sharedCacheVirtualSizeInBytes = *(*&uu[8] + 24) * v207;
          _Block_object_dispose(uu, 8);
          _Block_object_dispose(&in, 8);
          goto LABEL_295;
        }

        v242 = *__error();
        v243 = _sa_logt();
        if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.f_bsize) = 0;
          _os_log_error_impl(&dword_1E0E2F000, v243, OS_LOG_TYPE_ERROR, "failed to get shared cache", &buf, 2u);
        }

        *__error() = v242;
        dyld_process_snapshot_dispose();
      }

      else
      {
        v221 = *__error();
        v222 = _sa_logt();
        if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
        {
          v268 = v346[0];
          v269 = mach_error_string(v346[0]);
          buf.f_bsize = 67109378;
          buf.f_iosize = v268;
          LOWORD(buf.f_blocks) = 2080;
          *(&buf.f_blocks + 2) = v269;
          _os_log_error_impl(&dword_1E0E2F000, v222, OS_LOG_TYPE_ERROR, "failed to create snapshot of the process:%d (%s)", &buf, 0x12u);
        }

        *__error() = v221;
      }

      dyld_process_dispose();
      goto LABEL_295;
    }

    v219 = *__error();
    v220 = _sa_logt();
    if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
    {
      v261 = mach_error_string(0);
      buf.f_bsize = 67109378;
      buf.f_iosize = 0;
      LOWORD(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 2) = v261;
      _os_log_error_impl(&dword_1E0E2F000, v220, OS_LOG_TYPE_ERROR, "failed to create dyld process:%d (%s)", &buf, 0x12u);
    }

    *__error() = v219;
  }

LABEL_295:
  v196 = +[SATimestamp timestamp];
  [v196 wallTime];
  v198 = v197;
  [v196 machContTimeSeconds];
  v200 = v199;
  v276 = v196;
  [(SASampleStore *)self _getLastWakeTime];
  if (v201 != 0.0)
  {
    if (v201 <= 0.0)
    {
      v202 = 0;
    }

    else
    {
      v202 = [[SATimestamp alloc] initWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:v201];
      [(SATimestamp *)v202 guessMissingTimesBasedOnTimestamp:v276];
    }

    v301[0] = MEMORY[0x1E69E9820];
    v301[1] = 3221225472;
    v301[2] = __28__SASampleStore_postprocess__block_invoke_3_218;
    v301[3] = &unk_1E86F5548;
    v304 = v198 - v200;
    obj = v202;
    v302 = obj;
    v276 = v276;
    v303 = v276;
    [(SASampleStore *)self iterateAllTimestamps:v301];

    goto LABEL_306;
  }

LABEL_307:

  if (self)
  {
    if (!self->_kernelVersion)
    {
      v208 = CopyKernelVersion();
      kernelVersion = self->_kernelVersion;
      self->_kernelVersion = v208;
    }

    if (!self->_osProductName || !self->_osProductVersion && !self->_osProductVersionExtra && !self->_osBuildVersion)
    {
      *&buf.f_bsize = MEMORY[0x1E69E9820];
      buf.f_blocks = 3221225472;
      buf.f_bfree = __33__SASampleStore_gatherOsVersions__block_invoke;
      buf.f_bavail = &unk_1E86F5A48;
      buf.f_files = self;
      GetOSVersions(&buf);
    }
  }

  [(SASampleStore *)self gatherMachineArchitecture];
  if (self)
  {
    if (!self->_workQueueSoftThreadLimit)
    {
      *&in = 4;
      if (sysctlbyname("kern.wq_max_constrained_threads", &self->_workQueueSoftThreadLimit, &in, 0, 0))
      {
        v210 = *__error();
        v211 = _sa_logt();
        if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
        {
          v244 = *__error();
          v245 = __error();
          v246 = strerror(*v245);
          buf.f_bsize = 67109378;
          buf.f_iosize = v244;
          LOWORD(buf.f_blocks) = 2080;
          *(&buf.f_blocks + 2) = v246;
          _os_log_error_impl(&dword_1E0E2F000, v211, OS_LOG_TYPE_ERROR, "Unable to get kern.wq_max_constrained_threads: %d %s", &buf, 0x12u);
        }

        *__error() = v210;
      }
    }

    if (!self->_workQueueHardThreadLimit)
    {
      *&in = 4;
      if (sysctlbyname("kern.wq_max_threads", &self->_workQueueHardThreadLimit, &in, 0, 0))
      {
        v212 = *__error();
        v213 = _sa_logt();
        if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
        {
          v247 = *__error();
          v248 = __error();
          v249 = strerror(*v248);
          buf.f_bsize = 67109378;
          buf.f_iosize = v247;
          LOWORD(buf.f_blocks) = 2080;
          *(&buf.f_blocks + 2) = v249;
          _os_log_error_impl(&dword_1E0E2F000, v213, OS_LOG_TYPE_ERROR, "Unable to get kern.wq_max_threads: %d %s", &buf, 0x12u);
        }

        *__error() = v212;
      }
    }

    if (!self->_hardwareModel)
    {
      if (qword_1EDD02F28 != -1)
      {
        dispatch_once(&qword_1EDD02F28, &__block_literal_global_522);
      }

      objc_storeStrong(&self->_hardwareModel, qword_1EDD02F20);
    }

    if (!self->_numActiveCPUs)
    {
      *&in = 4;
      if (sysctlbyname("hw.activecpu", &self->_numActiveCPUs, &in, 0, 0))
      {
        v215 = *__error();
        v216 = _sa_logt();
        if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
        {
          v250 = *__error();
          v251 = __error();
          v252 = strerror(*v251);
          buf.f_bsize = 67109378;
          buf.f_iosize = v250;
          LOWORD(buf.f_blocks) = 2080;
          *(&buf.f_blocks + 2) = v252;
          _os_log_error_impl(&dword_1E0E2F000, v216, OS_LOG_TYPE_ERROR, "Unable to get hw.activecpu: %d %s", &buf, 0x12u);
        }

        *__error() = v215;
      }

      if (!objc_getProperty(self, v214, 1192, 1))
      {
        current = ktrace_machine_create_current();
        if (current)
        {
          MEMORY[0x1E12EAD30]();
          v218 = CSArchitectureIs64Bit();
          [(SASampleStore *)self _populateFromKtraceMachineInfo:v218 is64bit:?];
          ktrace_machine_destroy();
        }

        else
        {
          v223 = *__error();
          v224 = _sa_logt();
          if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.f_bsize) = 0;
            _os_log_error_impl(&dword_1E0E2F000, v224, OS_LOG_TYPE_ERROR, "Unable to get ktrace machine - cannot determine P vs E cores", &buf, 2u);
          }

          *__error() = v223;
        }
      }
    }

    if (!self->_memSize)
    {
      *&in = 0;
      *uu = 8;
      if (sysctlbyname("hw.memsize", &in, uu, 0, 0))
      {
        v225 = *__error();
        v226 = _sa_logt();
        if (os_log_type_enabled(v226, OS_LOG_TYPE_ERROR))
        {
          v253 = *__error();
          v254 = __error();
          v255 = strerror(*v254);
          buf.f_bsize = 67109378;
          buf.f_iosize = v253;
          LOWORD(buf.f_blocks) = 2080;
          *(&buf.f_blocks + 2) = v255;
          _os_log_error_impl(&dword_1E0E2F000, v226, OS_LOG_TYPE_ERROR, "Unable to get hw.memsize: %d %s", &buf, 0x12u);
        }

        *__error() = v225;
      }

      else
      {
        self->_memSize = in;
      }
    }
  }

  [(SASampleStore *)self gatherHWPageSize];
  [(SASampleStore *)self gatherVMPageSize];
  if (self)
  {
    if (!self->_appleInternalIsKnown)
    {
      self->_appleInternalIsKnown = 1;
      self->_isAppleInternal = is_apple_internal_setting();
      if (qword_1EDD02F98 != -1)
      {
        dispatch_once(&qword_1EDD02F98, &__block_literal_global_2086);
      }

      objc_storeStrong(&self->_automatedDeviceGroup, qword_1EDD02F90);
      if (self->_isAppleInternal)
      {
        self->_hasInternalCarryDeviceDistinction = 1;
        if (!self->_automatedDeviceGroup)
        {
          v227 = CFPreferencesCopyValue(@"ExperimentGroup", @"com.apple.da", @"mobile", *MEMORY[0x1E695E898]);
          v228 = [v227 lowercaseString];

          if ([v228 containsString:@"carry"])
          {
            v229 = 1;
          }

          else
          {
            v229 = [v228 containsString:@"walkabout"];
          }

          self->_isInternalCarryDevice = v229;
        }
      }
    }

    if (self->_numOSCryptexFileExtents <= 0)
    {
      if (qword_1EDD02F48 != -1)
      {
        dispatch_once(&qword_1EDD02F48, &__block_literal_global_578);
      }

      self->_numOSCryptexFileExtents = qword_1EDD02F50;
    }
  }

LABEL_367:
  v287 = 0u;
  v288 = 0u;
  v285 = 0u;
  v286 = 0u;
  v230 = [(NSMutableArray *)self->_sharedCaches copy];
  v231 = [v230 countByEnumeratingWithState:&v285 objects:v330 count:16];
  if (v231)
  {
    v232 = *v286;
    do
    {
      for (m = 0; m != v231; ++m)
      {
        if (*v286 != v232)
        {
          objc_enumerationMutation(v230);
        }

        v234 = *(*(&v285 + 1) + 8 * m);
        if (v234 && (v234[24] & 1) != 0)
        {
          v235 = [*(*(&v285 + 1) + 8 * m) uuid];
          v236 = +[SASharedCache sharedCacheWithUUID:slide:slidBaseAddress:dataGatheringOptions:](SASharedCache, v235, [v234 slide], objc_msgSend(v234, "slidBaseAddress"), self->_dataGatheringOptions);

          v237 = [v236 binaryLoadInfos];
          if ([v237 count])
          {

LABEL_376:
            [(NSMutableArray *)self->_sharedCaches removeObject:v234];
            if (([(NSMutableArray *)self->_sharedCaches containsObject:v236]& 1) == 0)
            {
              [(NSMutableArray *)self->_sharedCaches addObject:v236];
            }
          }

          else
          {
            v238 = [v234 binaryLoadInfos];
            v239 = [v238 count] == 0;

            if (v239)
            {
              goto LABEL_376;
            }
          }

          continue;
        }
      }

      v231 = [v230 countByEnumeratingWithState:&v285 objects:v330 count:16];
    }

    while (v231);
  }

  [(NSMutableArray *)self->_ioEvents sortUsingComparator:&__block_literal_global_223];
  [(NSMutableDictionary *)self->_ioEventsByTid enumerateKeysAndObjectsUsingBlock:&__block_literal_global_225];
  v240 = [(SASampleStore *)&self->super.isa fixupAllFrames];
  if (self->_machTimebase.denom && self->_machTimebase.numer)
  {
    v284[0] = MEMORY[0x1E69E9820];
    v284[1] = 3221225472;
    v284[2] = __28__SASampleStore_postprocess__block_invoke_7;
    v284[3] = &unk_1E86F55B0;
    v284[4] = self;
    [(SASampleStore *)self iterateAllTimestamps:v284];
  }

  _Block_object_dispose(&v309, 8);
  _Block_object_dispose(&v313, 8);
  _Block_object_dispose(&v317, 8);
  _Block_object_dispose(&v321, 8);

  v241 = *MEMORY[0x1E69E9840];
}

- (void)resampleTruncatedBacktraces
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1 && (~*(a1 + 488) & 0x402) == 0 && (*(a1 + 336) & 1) == 0)
  {
    *(a1 + 336) = 1;
    v2 = mach_absolute_time();
    v3 = SASecondsFromMachTimeUsingLiveTimebase(v2);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v4 = objc_alloc_init(SAFrameIterator);
    [(SAFrameIterator *)v4 setBacktracer:3];
    v5 = [a1 tasksByPid];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__SASampleStore_resampleTruncatedBacktraces__block_invoke;
    v14[3] = &unk_1E86F5888;
    v6 = v4;
    v15 = v6;
    v16 = a1;
    v17 = &v19;
    v18 = &v23;
    [v5 enumerateKeysAndObjectsUsingBlock:v14];

    v7 = mach_absolute_time();
    v8 = SASecondsFromMachTimeUsingLiveTimebase(v7);
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(v24 + 6);
      v13 = *(v20 + 6);
      *buf = 67109632;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      v31 = 2048;
      v32 = v8 - v3;
      _os_log_debug_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_DEBUG, "Resampling %d tasks (%d threads) took %.3fs", buf, 0x18u);
    }

    *__error() = v9;
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __28__SASampleStore_postprocess__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 threads];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__SASampleStore_postprocess__block_invoke_3;
  v7[3] = &unk_1E86F54B8;
  v6 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v6;
  v10 = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __28__SASampleStore_postprocess__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 threadStates];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 originPid] != -1)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          if ([v11 originPid] >= 1)
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
          }
        }

        if ([v11 proximatePid] != -1)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          if ([v11 proximatePid] >= 1)
          {
            *(*(*(a1 + 56) + 8) + 24) = 1;
          }
        }

        if (*(*(*(a1 + 40) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) == 1)
        {
          *a4 = 1;
          **(a1 + 64) = 1;
          goto LABEL_18;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v12 = *MEMORY[0x1E69E9840];
}

void __28__SASampleStore_postprocess__block_invoke_214(uint64_t a1, void *a2)
{
  v3 = [a2 threads];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__SASampleStore_postprocess__block_invoke_2_215;
  v4[3] = &__block_descriptor_34_e35_v32__0__NSNumber_8__SAThread_16_B24l;
  v5 = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __28__SASampleStore_postprocess__block_invoke_2_215(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 threadStates];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (*(a1 + 32) == 1)
        {
          if (!v9)
          {
            goto LABEL_14;
          }

          *(v9 + 28) = -1;
        }

        if (*(a1 + 33) == 1 && v9 != 0)
        {
          *(v9 + 32) = -1;
        }

LABEL_14:
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (_DWORD)_getLastWakeTime
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = IOPMGetLastWakeTime();
    if (result != -536870184)
    {
      v1 = result;
      if (result)
      {
        v2 = *__error();
        v3 = _sa_logt();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v6 = v1;
          _os_log_error_impl(&dword_1E0E2F000, v3, OS_LOG_TYPE_ERROR, "Unable to get last wake time: %d", buf, 8u);
        }

        result = __error();
        *result = v2;
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __28__SASampleStore_postprocess__block_invoke_3_218(uint64_t a1, void *a2)
{
  [a2 wallTime];
  if (v4 == 0.0 || (result = [a2 wallTime], v6 >= *(a1 + 48)))
  {
    v7 = *(a1 + 32);
    if (!v7 || (result = [v7 le:a2], result))
    {
      v8 = *(a1 + 40);

      return [a2 guessMissingTimesBasedOnTimestamp:v8];
    }
  }

  return result;
}

- (void)iterateAllTimestamps:(uint64_t)a1
{
  v207 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 40))
    {
      (*(a2 + 16))(a2);
    }

    if (*(a1 + 48))
    {
      (*(a2 + 16))(a2);
    }

    v4 = *(a1 + 840);
    if (v4)
    {
      v5 = [v4 startTime];
      (*(a2 + 16))(a2, v5);

      v6 = [*(a1 + 840) endTime];
      (*(a2 + 16))(a2, v6);
    }

    v191 = 0u;
    v189 = 0u;
    v190 = 0u;
    v188 = 0u;
    v121 = a1;
    v7 = *(a1 + 24);
    v8 = [v7 countByEnumeratingWithState:&v188 objects:v206 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v189;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v189 != v10)
          {
            objc_enumerationMutation(v7);
          }

          (*(a2 + 16))(a2, *(*(&v188 + 1) + 8 * i));
        }

        v9 = [v7 countByEnumeratingWithState:&v188 objects:v206 count:16];
      }

      while (v9);
    }

    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    obj = *(v121 + 64);
    v12 = [obj countByEnumeratingWithState:&v184 objects:v205 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v185;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v185 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v184 + 1) + 8 * j);
          v17 = [v16 hidEventTimestamp];
          (*(a2 + 16))(a2, v17);

          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v18 = [v16 steps];
          v19 = [v18 countByEnumeratingWithState:&v180 objects:v204 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v181;
            do
            {
              for (k = 0; k != v20; ++k)
              {
                if (*v181 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = [*(*(&v180 + 1) + 8 * k) timestamp];
                (*(a2 + 16))(a2, v23);
              }

              v20 = [v18 countByEnumeratingWithState:&v180 objects:v204 count:16];
            }

            while (v20);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v184 objects:v205 count:16];
      }

      while (v13);
    }

    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v122 = *(v121 + 72);
    v124 = [v122 countByEnumeratingWithState:&v176 objects:v203 count:16];
    if (v124)
    {
      v123 = *v177;
      do
      {
        v25 = 0;
        do
        {
          if (*v177 != v123)
          {
            objc_enumerationMutation(v122);
          }

          v26 = *(*(&v176 + 1) + 8 * v25);
          if (v26)
          {
            v27 = objc_getProperty(*(*(&v176 + 1) + 8 * v25), v24, 32, 1);
            v28 = [v27 startTime];
            (*(a2 + 16))(a2, v28);

            Property = objc_getProperty(v26, v29, 32, 1);
          }

          else
          {
            v47 = [0 startTime];
            (*(a2 + 16))(a2, v47);

            Property = 0;
          }

          v31 = Property;
          v32 = [v31 endTime];
          (*(a2 + 16))(a2, v32);

          v174 = 0u;
          v175 = 0u;
          v172 = 0u;
          v173 = 0u;
          v126 = v25;
          if (v26)
          {
            v34 = objc_getProperty(v26, v33, 8, 1);
          }

          else
          {
            v34 = 0;
          }

          obja = v34;
          v35 = [obja countByEnumeratingWithState:&v172 objects:v202 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v173;
            do
            {
              for (m = 0; m != v36; ++m)
              {
                if (*v173 != v37)
                {
                  objc_enumerationMutation(obja);
                }

                v39 = *(*(&v172 + 1) + 8 * m);
                v40 = [v39 hidEventTimestamp];
                (*(a2 + 16))(a2, v40);

                v170 = 0u;
                v171 = 0u;
                v168 = 0u;
                v169 = 0u;
                v41 = [v39 steps];
                v42 = [v41 countByEnumeratingWithState:&v168 objects:v201 count:16];
                if (v42)
                {
                  v43 = v42;
                  v44 = *v169;
                  do
                  {
                    for (n = 0; n != v43; ++n)
                    {
                      if (*v169 != v44)
                      {
                        objc_enumerationMutation(v41);
                      }

                      v46 = [*(*(&v168 + 1) + 8 * n) timestamp];
                      (*(a2 + 16))(a2, v46);
                    }

                    v43 = [v41 countByEnumeratingWithState:&v168 objects:v201 count:16];
                  }

                  while (v43);
                }
              }

              v36 = [obja countByEnumeratingWithState:&v172 objects:v202 count:16];
            }

            while (v36);
          }

          v25 = v126 + 1;
        }

        while ((v126 + 1) != v124);
        v48 = [v122 countByEnumeratingWithState:&v176 objects:v203 count:16];
        v124 = v48;
      }

      while (v48);
    }

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v49 = *(v121 + 96);
    v50 = [v49 countByEnumeratingWithState:&v164 objects:v200 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v165;
      do
      {
        for (ii = 0; ii != v51; ++ii)
        {
          if (*v165 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v164 + 1) + 8 * ii);
          v55 = [v54 startTimestamp];
          (*(a2 + 16))(a2, v55);

          v56 = [v54 endTimestamp];
          (*(a2 + 16))(a2, v56);
        }

        v51 = [v49 countByEnumeratingWithState:&v164 objects:v200 count:16];
      }

      while (v51);
    }

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v57 = *(v121 + 104);
    v58 = [v57 countByEnumeratingWithState:&v160 objects:v199 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v161;
      do
      {
        for (jj = 0; jj != v59; ++jj)
        {
          if (*v161 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v160 + 1) + 8 * jj);
          v63 = [v62 startTimestamp];

          if (v63)
          {
            v64 = [v62 startTimestamp];
            (*(a2 + 16))(a2, v64);
          }

          v65 = [v62 endTimestamp];

          if (v65)
          {
            v66 = [v62 endTimestamp];
            (*(a2 + 16))(a2, v66);
          }
        }

        v59 = [v57 countByEnumeratingWithState:&v160 objects:v199 count:16];
      }

      while (v59);
    }

    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v67 = *(v121 + 112);
    v68 = [v67 countByEnumeratingWithState:&v156 objects:v198 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v157;
      do
      {
        for (kk = 0; kk != v69; ++kk)
        {
          if (*v157 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = [*(*(&v156 + 1) + 8 * kk) timestamp];
          (*(a2 + 16))(a2, v72);
        }

        v69 = [v67 countByEnumeratingWithState:&v156 objects:v198 count:16];
      }

      while (v69);
    }

    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v73 = *(v121 + 120);
    v74 = [v73 countByEnumeratingWithState:&v152 objects:v197 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v153;
      do
      {
        for (mm = 0; mm != v75; ++mm)
        {
          if (*v153 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = *(*(&v152 + 1) + 8 * mm);
          v79 = [v78 startTime];

          if (v79)
          {
            v80 = [v78 startTime];
            (*(a2 + 16))(a2, v80);
          }

          v81 = [v78 endTime];

          if (v81)
          {
            v82 = [v78 endTime];
            (*(a2 + 16))(a2, v82);
          }
        }

        v75 = [v73 countByEnumeratingWithState:&v152 objects:v197 count:16];
      }

      while (v75);
    }

    [(SAMountStatusTracker *)*(v121 + 480) iterateAllTimestamps:a2];
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v83 = *(v121 + 80);
    v84 = [v83 countByEnumeratingWithState:&v148 objects:v196 count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v149;
      do
      {
        for (nn = 0; nn != v85; ++nn)
        {
          if (*v149 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v88 = [*(*(&v148 + 1) + 8 * nn) timestamp];
          (*(a2 + 16))(a2, v88);
        }

        v85 = [v83 countByEnumeratingWithState:&v148 objects:v196 count:16];
      }

      while (v85);
    }

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v89 = *(v121 + 88);
    v90 = [v89 countByEnumeratingWithState:&v144 objects:v195 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v145;
      do
      {
        for (i1 = 0; i1 != v91; ++i1)
        {
          if (*v145 != v92)
          {
            objc_enumerationMutation(v89);
          }

          v94 = *(*(&v144 + 1) + 8 * i1);
          v95 = [v94 timestamp];

          if (v95)
          {
            v96 = [v94 timestamp];
            (*(a2 + 16))(a2, v96);
          }
        }

        v91 = [v89 countByEnumeratingWithState:&v144 objects:v195 count:16];
      }

      while (v91);
    }

    v97 = v121;
    if (*(v121 + 504))
    {
      (*(a2 + 16))(a2);
    }

    if (*(v121 + 512))
    {
      (*(a2 + 16))(a2);
    }

    v143[0] = MEMORY[0x1E69E9820];
    v143[1] = 3221225472;
    v143[2] = __38__SASampleStore_iterateAllTimestamps___block_invoke;
    v143[3] = &unk_1E86F5CB8;
    v143[4] = a2;
    [v121 enumerateTasks:{v143, v121}];
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v125 = [v97 models];
    objb = [v125 countByEnumeratingWithState:&v139 objects:v194 count:16];
    if (objb)
    {
      v127 = *v140;
      do
      {
        for (i2 = 0; i2 != objb; i2 = i2 + 1)
        {
          if (*v140 != v127)
          {
            objc_enumerationMutation(v125);
          }

          v99 = *(*(&v139 + 1) + 8 * i2);
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          v138 = 0u;
          v100 = [v99 loadedChanges];
          v101 = [v100 countByEnumeratingWithState:&v135 objects:v193 count:16];
          if (v101)
          {
            v102 = v101;
            v103 = *v136;
            do
            {
              for (i3 = 0; i3 != v102; ++i3)
              {
                if (*v136 != v103)
                {
                  objc_enumerationMutation(v100);
                }

                v105 = *(*(&v135 + 1) + 8 * i3);
                v106 = [v105 timestamp];

                if (v106)
                {
                  v107 = [v105 timestamp];
                  (*(a2 + 16))(a2, v107);
                }

                v108 = [v105 endTime];

                if (v108)
                {
                  v109 = [v105 endTime];
                  (*(a2 + 16))(a2, v109);
                }
              }

              v102 = [v100 countByEnumeratingWithState:&v135 objects:v193 count:16];
            }

            while (v102);
          }

          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v110 = [v99 executions];
          v111 = [v110 countByEnumeratingWithState:&v131 objects:v192 count:16];
          if (v111)
          {
            v112 = v111;
            v113 = *v132;
            do
            {
              for (i4 = 0; i4 != v112; ++i4)
              {
                if (*v132 != v113)
                {
                  objc_enumerationMutation(v110);
                }

                v115 = *(*(&v131 + 1) + 8 * i4);
                v116 = [v115 startTime];

                if (v116)
                {
                  v117 = [v115 startTime];
                  (*(a2 + 16))(a2, v117);
                }

                v118 = [v115 endTime];

                if (v118)
                {
                  v119 = [v115 endTime];
                  (*(a2 + 16))(a2, v119);
                }
              }

              v112 = [v110 countByEnumeratingWithState:&v131 objects:v192 count:16];
            }

            while (v112);
          }
        }

        objb = [v125 countByEnumeratingWithState:&v139 objects:v194 count:16];
      }

      while (objb);
    }
  }

  v120 = *MEMORY[0x1E69E9840];
}

uint64_t __28__SASampleStore_postprocess__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 startTimestamp];
  v5 = [a3 startTimestamp];
  v6 = [v4 compare:v5];

  return v6;
}

uint64_t __28__SASampleStore_postprocess__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 startTimestamp];
  v5 = [a3 startTimestamp];
  v6 = [v4 compare:v5];

  return v6;
}

- (void)task:(void *)a3 exitedAtTimestamp:
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [a2 exitTimestamp];

    if (v6)
    {
      v19 = *__error();
      v20 = _sa_logt();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [a2 debugDescription];
        v22 = [v21 UTF8String];
        v23 = [a2 exitTimestamp];
        v24 = [v23 debugDescription];
        v25 = [v24 UTF8String];
        v26 = [a3 debugDescription];
        *buf = 136315650;
        v41 = v22;
        v42 = 2080;
        v43 = v25;
        v44 = 2080;
        v45 = [v26 UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "%s exited at %s, updating to %s", buf, 0x20u);
      }

      *__error() = v19;
      v27 = [a2 debugDescription];
      v28 = [v27 UTF8String];
      v29 = [a2 exitTimestamp];
      v30 = [v29 debugDescription];
      [v30 UTF8String];
      v31 = [a3 debugDescription];
      [v31 UTF8String];
      _SASetCrashLogMessage(1502, "%s exited at %s, updating to %s", v32, v33, v34, v35, v36, v37, v28);

      _os_crash();
      __break(1u);
    }

    v7 = a3;
    v8 = [a2 endTimestamp];
    v10 = v8;
    if (v8 && [v8 gt:v7])
    {
      v11 = *__error();
      v12 = _sa_logt();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = [a2 debugDescription];
        v17 = [v7 debugDescription];
        v18 = [v10 debugDescription];
        *buf = 138412802;
        v41 = v16;
        v42 = 2112;
        v43 = v17;
        v44 = 2112;
        v45 = v18;
        _os_log_debug_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_DEBUG, "Task %@ exit at %@, but has later timestamp %@, pushing exit out", buf, 0x20u);
      }

      *__error() = v11;
      v13 = v10;

      v7 = v13;
    }

    if (a2)
    {
      objc_setProperty_atomic(a2, v9, v7, 240);
    }

    if (*(a1 + 440) >= 2uLL)
    {
      v14 = [a2 threads];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __40__SASampleStore_task_exitedAtTimestamp___block_invoke;
      v38[3] = &unk_1E86F6028;
      v39 = v7;
      [v14 enumerateKeysAndObjectsUsingBlock:v38];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __40__SASampleStore_task_exitedAtTimestamp___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 exitTimestamp];

  if (a3 && !v5)
  {
    v7 = *(a1 + 32);

    objc_setProperty_atomic(a3, v6, v7, 40);
  }
}

- (void)_backfillForkTimestamp:(void *)a1 toPreviousTasksEnumerator:(void *)a2 execTimestampOfNextTask:(void *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a2;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v10);
        v13 = [v12 forkTimestamp];

        if (v13)
        {
          goto LABEL_15;
        }

        v14 = [v12 exitTimestamp];
        if (!v14)
        {
          goto LABEL_15;
        }

        v15 = v14;
        v16 = [v12 exitTimestamp];
        v17 = [v16 ne:v11];

        if (v17)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          objc_setProperty_atomic(v12, v18, a1, 224);
        }

        v19 = [v12 execTimestamp];

        if (!v19)
        {
LABEL_15:
          v5 = v11;
          goto LABEL_16;
        }

        v5 = [v12 execTimestamp];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addNewImageInfos:(unsigned int)a3 numLoadInfos:(const char *)a4 name:(void *)a5 sharedCache:(uint64_t)a6 architecture:(_BYTE *)a7 toTask:
{
  v27 = *MEMORY[0x1E69E9840];
  v14 = [a7 sharedCache];

  if (a7 && a5 && !v14)
  {
    if (a7[74])
    {
      v16 = *__error();
      v17 = _sa_logt();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v22 = [a5 debugDescription];
        v23 = [a7 debugDescription];
        *v24 = 138412546;
        *&v24[4] = v22;
        v25 = 2112;
        v26 = v23;
        _os_log_fault_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_FAULT, "shared cache %@, though task %@ has no shared cache", v24, 0x16u);
      }

      *__error() = v16;
    }

    else
    {
      objc_setProperty_atomic(a7, v15, a5, 264);
    }
  }

  v18 = [a7 binaryLoadInfos];
  if ([v18 count] < a3)
  {
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_20;
  }

  if (!a7)
  {
LABEL_10:

LABEL_14:
    if ((*(a1 + 488) & 2) != 0)
    {
      v18 = SAExecutablePath([a7 pid], a4);
    }

    else
    {
      v18 = 0;
    }

    v20 = _SABinaryCreateLoadInfoArrayFromDyldImageInfos(a2, a3, v18, 0, 0, 0);
    [(SATask *)a7 addImageInfos:v20];
    if (a7)
    {
      a7[79] = 1;
    }

LABEL_20:
    if (!a7)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v19 = a7[79];

  if ((v19 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_21:
  objc_copyStruct(v24, a7 + 288, 8, 1, 0);
  if (!*v24)
  {
    *v24 = a6;
    objc_copyStruct(a7 + 288, v24, 8, 1, 0);
  }

LABEL_23:
  v21 = *MEMORY[0x1E69E9840];
}

- (NSObject)_taskForPid:(uint64_t)a3 uniquePid:(const char *)a4 name:(uint64_t)a5 forkTime:(uint64_t *)a6 loadInfos:(unsigned int)a7 numLoadInfos:(char)a8 loadInfosIsPartial:(uint64_t)a9 textExecLoadInfos:(unsigned int)a10 numTextExecLoadInfos:(char)a11 textExecLoadInfosIsPartial:(uint64_t)a12 architecture:(void *)a13 timestamp:(void *)a14 sharedCache:(char)a15 needAOTInfo:(char)a16 usesSuddenTermination:(char)a17 allowsIdleExit:(char)a18 isRunningBoardManaged:
{
  v18 = a9;
  v182 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v20 = a3;
    v21 = a2;
    v22 = a1;
    if (a4)
    {
      if (*a4)
      {
        v23 = a4;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    if (a3 == -1)
    {
      if (a2 == -1)
      {
        v69 = *__error();
        v26 = _sa_logt();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          if (a7)
          {
            v22 = uuidForBytes((a6 + 1));
            v18 = [v22 UUIDString];
            v70 = [v18 UTF8String];
          }

          else
          {
            v70 = "no load info";
          }

          *buf = 136315394;
          *v167 = v23;
          *&v167[8] = 2080;
          *&v167[10] = v70;
          _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "unknown uniquepid and pid for %s (%s)", buf, 0x16u);
          if (a7)
          {
          }
        }

        *__error() = v69;
        if (a7)
        {
          v26 = uuidForBytes((a6 + 1));
          v22 = [v26 UUIDString];
          [v22 UTF8String];
          _SASetCrashLogMessage(1693, "unknown uniquepid and pid for %s (%s)", v77, v78, v79, v80, v81, v82, v23);
        }

        else
        {
          _SASetCrashLogMessage(1693, "unknown uniquepid and pid for %s (%s)", v71, v72, v73, v74, v75, v76, v23);
        }

        _os_crash();
        __break(1u);
        goto LABEL_98;
      }

      v41 = *(a1 + 16);
      v42 = [MEMORY[0x1E696AD98] numberWithInt:a2];
      v26 = [v41 objectForKeyedSubscript:v42];

      if (v26)
      {
        v157 = v26;
        v43 = [v26 lastObject];
        v26 = v43;
        if (v43)
        {
          if ([(SATask *)v43 correspondsToPid:v21 name:v23 loadInfos:a6 numLoadInfos:a7 textExecLoadInfos:a9 numTextExecLoadInfos:a10 architecture:a12 sharedCache:a14])
          {
            goto LABEL_31;
          }

LABEL_24:
          v44 = [v26 exitTimestamp];
          if (v44)
          {
          }

          else if (*(v22 + 440) >= 2uLL)
          {
            [(SASampleStore *)v22 task:v26 exitedAtTimestamp:a13];
          }

          v45 = 0;
LABEL_51:
          if ((*(v22 + 488) & 2) != 0)
          {
            v56 = SAExecutablePath(v21, v23);
          }

          else
          {
            v56 = 0;
          }

          v57 = [SATask taskWithPid:v21 uniquePid:a3 name:v23 mainBinaryPath:v56 forkTime:a5 loadInfos:a6 numLoadInfos:a7 textExecLoadInfos:a9 numTextExecLoadInfos:a10 architecture:a12 sharedCache:a14];
          v55 = v57;
          if ((v45 & 1) == 0 && *(v22 + 440) >= 2uLL)
          {
            if (v57)
            {
              objc_setProperty_atomic(v57, v58, a13, 232);
            }

            v59 = [v55 forkTimestamp];
            if (v59)
            {
              v60 = v59;
              v61 = [v26 forkTimestamp];

              if (!v61)
              {
                v62 = [v55 forkTimestamp];
                v63 = [v157 reverseObjectEnumerator];
                [SASampleStore _backfillForkTimestamp:v62 toPreviousTasksEnumerator:v63 execTimestampOfNextTask:a13];
              }
            }
          }

          if (a16)
          {
            if (!v55)
            {
              goto LABEL_70;
            }

            BYTE4(v55[8].isa) = 1;
          }

          if (a17 && v55)
          {
            BYTE5(v55[8].isa) = 1;
          }

          if (a18 && v55)
          {
            LOBYTE(v55[9].isa) = 1;
          }

LABEL_70:
          [(SASampleStore *)v22 addTask:v55];
          v64 = *(v22 + 488);
          if ((v64 & 2) == 0)
          {
LABEL_82:

LABEL_83:
            goto LABEL_84;
          }

          if (a15)
          {
            goto LABEL_80;
          }

          if ((v64 & 0x80) != 0)
          {
            v65 = [v55 binaryLoadInfos];
            if (![v65 count] || (a8 & 1) != 0 || (a11 & 1) != 0 || !-[NSObject pid](v55, "pid"))
            {

LABEL_80:
              [(SATask *)v55 gatherLoadInfoFromLiveProcessWithDataGatheringOptions:*(v22 + 408) additionalCSSymbolicatorFlags:?];
              goto LABEL_81;
            }

            v66 = [v55 uniquePid];

            if (!v66)
            {
              goto LABEL_80;
            }
          }

LABEL_81:
          [(SATask *)v55 _gatherDataFromLiveProcessIsLate:v56 mainBinaryPath:?];
          goto LABEL_82;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v24 = *(a1 + 8);
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
      v26 = [v24 objectForKeyedSubscript:v25];

      if (v26)
      {
        v157 = v26;
        v27 = [v26 lastObject];
        v26 = v27;
        if (v21 != -1)
        {
          v28 = *(v22 + 16);
          v141 = v21;
          v29 = [MEMORY[0x1E696AD98] numberWithInt:v21];
          v30 = [v28 objectForKeyedSubscript:v29];
          v31 = [v30 lastObject];

          if (v31 == v26)
          {
LABEL_18:
            if (!v26)
            {
              v45 = 1;
              v21 = v141;
              goto LABEL_51;
            }

            v21 = v141;
            v20 = a3;
            goto LABEL_30;
          }

          if ([v26 pid]== -1)
          {
            v32 = v141;
            if (v26)
            {
              LODWORD(v26[10].isa) = v141;
            }

            v33 = [*(v22 + 16) objectForKeyedSubscript:&unk_1F5BDC9D0];
            v34 = [v33 containsObject:v26];

            if (v34)
            {
              v35 = [*(v22 + 16) objectForKeyedSubscript:&unk_1F5BDC9D0];
              [v35 removeObject:v26];

              v36 = *(v22 + 16);
              v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[NSObject pid](v26, "pid")}];
              v38 = [v36 objectForKeyedSubscript:v37];

              if (!v38)
              {
                v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v39 = *(v22 + 16);
                v40 = [MEMORY[0x1E696AD98] numberWithInt:{-[NSObject pid](v26, "pid")}];
                [v39 setObject:v38 forKeyedSubscript:v40];
              }

              [v38 addObject:v26];

              goto LABEL_18;
            }

            goto LABEL_101;
          }

LABEL_98:
          v164 = *__error();
          v83 = _sa_logt();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v161 = v83;
            v84 = *(v22 + 16);
            v158 = [MEMORY[0x1E696AD98] numberWithInt:v141];
            v155 = [v84 objectForKeyedSubscript:v158];
            v138 = [v155 count];
            v85 = *(v22 + 16);
            v153 = [MEMORY[0x1E696AD98] numberWithInt:v141];
            v151 = [v85 objectForKeyedSubscript:v153];
            newValue = [v151 lastObject];
            v147 = [newValue debugDescription];
            v132 = [v147 UTF8String];
            v86 = *(v22 + 16);
            v145 = [MEMORY[0x1E696AD98] numberWithInt:v141];
            v142 = [v86 objectForKeyedSubscript:v145];
            v139 = [v142 lastObject];
            v130 = [v139 uniquePid];
            v87 = *(v22 + 16);
            v136 = [MEMORY[0x1E696AD98] numberWithInt:v141];
            v134 = [v87 objectForKeyedSubscript:v136];
            v133 = [v134 lastObject];
            v131 = [v133 mainBinaryLoadInfo];
            v88 = [v131 debugDescription];
            v129 = [v88 UTF8String];
            v89 = [v157 count];
            v90 = [v26 debugDescription];
            v91 = [v90 UTF8String];
            v92 = [v26 uniquePid];
            v93 = [v26 mainBinaryLoadInfo];
            v94 = [v93 debugDescription];
            v95 = [v94 UTF8String];
            *buf = 67111426;
            *v167 = v141;
            *&v167[4] = 2048;
            *&v167[6] = v138;
            *&v167[14] = 2080;
            *&v167[16] = v132;
            v168 = 2048;
            v169 = v130;
            v170 = 2080;
            v171 = v129;
            v172 = 2048;
            v173 = a3;
            v174 = 2048;
            v175 = v89;
            v176 = 2080;
            v177 = v91;
            v83 = v161;
            v178 = 2048;
            v179 = v92;
            v180 = 2080;
            v181 = v95;
            _os_log_error_impl(&dword_1E0E2F000, v161, OS_LOG_TYPE_ERROR, "_tasksByPid[%d] (count %lu) .lastObject %s (unique pid %llu, main binary %s) != tasksWithUniquePid[%llu] (count %lu) .lastObject %s (unique pid %llu, main binary %s)", buf, 0x62u);
          }

          *__error() = v164;
          v96 = *(v22 + 16);
          v165 = [MEMORY[0x1E696AD98] numberWithInt:v141];
          v162 = [v96 objectForKeyedSubscript:v165];
          [v162 count];
          v97 = *(v22 + 16);
          v159 = [MEMORY[0x1E696AD98] numberWithInt:v141];
          v156 = [v97 objectForKeyedSubscript:v159];
          v154 = [v156 lastObject];
          v152 = [v154 debugDescription];
          [v152 UTF8String];
          v98 = *(v22 + 16);
          newValuea = [MEMORY[0x1E696AD98] numberWithInt:v141];
          v146 = [v98 objectForKeyedSubscript:newValuea];
          v143 = [v146 lastObject];
          [v143 uniquePid];
          v99 = *(v22 + 16);
          v140 = [MEMORY[0x1E696AD98] numberWithInt:v141];
          v137 = [v99 objectForKeyedSubscript:v140];
          v135 = [v137 lastObject];
          v100 = [v135 mainBinaryLoadInfo];
          v101 = [v100 debugDescription];
          [v101 UTF8String];
          v32 = [v157 count];
          v102 = [v26 debugDescription];
          [v102 UTF8String];
          v22 = [v26 uniquePid];
          v26 = [v26 mainBinaryLoadInfo];
          v103 = [v26 debugDescription];
          [v103 UTF8String];
          _SASetCrashLogMessage(1660, "_tasksByPid[%d] (count %lu) .lastObject %s (unique pid %llu, main binary %s) != tasksWithUniquePid[%llu] (count %lu) .lastObject %s (unique pid %llu, main binary %s)", v104, v105, v106, v107, v108, v109, v141);

          _os_crash();
          __break(1u);
LABEL_101:
          v110 = *__error();
          v111 = _sa_logt();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            v112 = *(v22 + 16);
            v113 = [MEMORY[0x1E696AD98] numberWithInt:v32];
            v114 = [v112 objectForKeyedSubscript:v113];
            v115 = [v114 count];
            v116 = [v26 debugDescription];
            v117 = [v116 UTF8String];
            *buf = 134218242;
            *v167 = v115;
            v32 = v141;
            *&v167[8] = 2080;
            *&v167[10] = v117;
            _os_log_error_impl(&dword_1E0E2F000, v111, OS_LOG_TYPE_ERROR, "_tasksByPid[-1] (count %lu) does not contain task %s that didn't have pid until now", buf, 0x16u);
          }

          *__error() = v110;
          v118 = *(v22 + 16);
          v119 = [MEMORY[0x1E696AD98] numberWithInt:v32];
          v120 = [v118 objectForKeyedSubscript:v119];
          v121 = [v120 count];
          v122 = [v26 debugDescription];
          [v122 UTF8String];
          _SASetCrashLogMessage(1671, "_tasksByPid[-1] (count %lu) does not contain task %s that didn't have pid until now", v123, v124, v125, v126, v127, v128, v121);

          _os_crash();
          __break(1u);
          goto LABEL_104;
        }

        if (v27)
        {
          v21 = [v27 pid];
LABEL_30:
          if (([(SATask *)v26 correspondsToUniquePid:v20 name:v23 loadInfos:a6 numLoadInfos:a7 textExecLoadInfos:a9 numTextExecLoadInfos:a10 architecture:a12 sharedCache:a14]& 1) != 0)
          {
LABEL_31:
            if (a5)
            {
              v46 = [v26 forkTimestamp];

              if (!v46)
              {
                v47 = [v157 reverseObjectEnumerator];
                v48 = [v47 nextObject];
                if (v48)
                {
                  v49 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:a5 - *MEMORY[0x1E695E468]];
                  objc_setProperty_atomic(v48, v50, v49, 224);
                  v51 = [v48 execTimestamp];

                  if (v51)
                  {
                    v52 = [v48 execTimestamp];
                    [SASampleStore _backfillForkTimestamp:v49 toPreviousTasksEnumerator:v47 execTimestampOfNextTask:v52];
                  }
                }
              }
            }

            [(SASampleStore *)v22 addNewImageInfos:a6 numLoadInfos:a7 name:v23 sharedCache:a14 architecture:a12 toTask:v26];
            v53 = [v26 exitTimestamp];

            if (v53)
            {
              objc_setProperty_atomic(v26, v54, a13, 240);
            }

            if (a16)
            {
              BYTE4(v26[8].isa) = 1;
            }

            if (a17)
            {
              BYTE5(v26[8].isa) = 1;
            }

            if (a18)
            {
              LOBYTE(v26[9].isa) = 1;
            }

            v26 = v26;
            v55 = v26;
            goto LABEL_83;
          }

          goto LABEL_24;
        }

        v21 = 0xFFFFFFFFLL;
LABEL_27:
        v45 = 1;
        goto LABEL_51;
      }
    }

    v157 = 0;
    goto LABEL_27;
  }

LABEL_104:
  v55 = 0;
LABEL_84:
  v67 = *MEMORY[0x1E69E9840];

  return v55;
}

- (id)taskForKCDataTask:(uint64_t *)a3 loadInfos:(unsigned int)a4 numLoadInfos:(char)a5 loadInfosIsPartial:(uint64_t)a6 textExecLoadInfos:(unsigned int)a7 numTextExecLoadInfos:(char)a8 textExecLoadInfosIsPartial:(uint64_t)a9 architecture:(void *)a10 timestamp:(void *)a11 sharedCache:(char)a12 needAOTInfo:
{
  v12 = [(SASampleStore *)a1 _taskForPid:*a2 uniquePid:(a2 + 88) name:*(a2 + 32) forkTime:a3 loadInfos:a4 numLoadInfos:a5 loadInfosIsPartial:a6 textExecLoadInfos:a7 numTextExecLoadInfos:a8 textExecLoadInfosIsPartial:a9 architecture:a10 timestamp:a11 sharedCache:a12 needAOTInfo:(*(a2 + 8) & 0x4000000) != 0 usesSuddenTermination:(*(a2 + 8) & 0x8000000) != 0 allowsIdleExit:(*(a2 + 8) & 0x20000000000) != 0 isRunningBoardManaged:?];

  return v12;
}

- (id)taskForKCDataDeltaTask:(uint64_t)a3 loadInfos:(uint64_t *)a4 numLoadInfos:(unsigned int)a5 loadInfosIsPartial:(char)a6 textExecLoadInfos:(uint64_t)a7 numTextExecLoadInfos:(unsigned int)a8 textExecLoadInfosIsPartial:(char)a9 timestamp:(void *)a10 sharedCache:(void *)a11 needAOTInfo:(char)a12
{
  v12 = [(SASampleStore *)a1 _taskForPid:a2 uniquePid:0 name:0 forkTime:a4 loadInfos:a5 numLoadInfos:a6 loadInfosIsPartial:a7 textExecLoadInfos:a8 numTextExecLoadInfos:a9 textExecLoadInfosIsPartial:0 architecture:a10 timestamp:a11 sharedCache:a12 needAOTInfo:(a3 & 0x4000000) != 0 usesSuddenTermination:(a3 & 0x8000000) != 0 allowsIdleExit:(a3 & 0x20000000000) != 0 isRunningBoardManaged:?];

  return v12;
}

- (id)taskForKCDataTransitioningTask:(uint64_t)a1 loadInfos:(uint64_t)a2 numLoadInfos:(uint64_t *)a3 loadInfosIsPartial:(unsigned int)a4 textExecLoadInfos:(char)a5 numTextExecLoadInfos:(uint64_t)a6 textExecLoadInfosIsPartial:(unsigned int)a7 architecture:(char)a8 timestamp:(void *)a9 sharedCache:(void *)a10 needAOTInfo:(char)a11
{
  v11 = [(SASampleStore *)a1 _taskForPid:*a2 uniquePid:(a2 + 28) name:0 forkTime:a3 loadInfos:a4 numLoadInfos:a5 loadInfosIsPartial:a6 textExecLoadInfos:a7 numTextExecLoadInfos:a8 textExecLoadInfosIsPartial:0 architecture:a9 timestamp:a10 sharedCache:a11 needAOTInfo:(*(a2 + 8) & 0x4000000) != 0 usesSuddenTermination:(*(a2 + 8) & 0x8000000) != 0 allowsIdleExit:(*(a2 + 8) & 0x20000000000) != 0 isRunningBoardManaged:?];

  return v11;
}

- (id)taskForMicrostackshotTask:(const char *)a3 taskName:(uint64_t *)a4 loadInfos:(unsigned int)a5 numLoadInfos:(uint64_t)a6 sharedCache:(int)a7 loadInfosIsPartial:(void *)a8 timestamp:(uint64_t)a9 architecture:(char)a10 needAOTInfo:(char)a11 isFromCurrentBoot:
{
  v90 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8) != -1)
  {
    v17 = *(a1 + 8);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19)
    {
      v20 = [v19 lastObject];
      v21 = v20;
      if (!v20)
      {
        goto LABEL_23;
      }

      if ([(SATask *)v20 correspondsToUniquePid:a3 name:a4 loadInfos:a5 numLoadInfos:0 textExecLoadInfos:0 numTextExecLoadInfos:a9 architecture:a6 sharedCache:?])
      {
        v77 = a6;
        v22 = *(a1 + 16);
        loga = [MEMORY[0x1E696AD98] numberWithInt:*(a2 + 4)];
        v23 = [v22 objectForKeyedSubscript:loga];
        v24 = [v23 lastObject];
        v25 = [v19 lastObject];

        if (v24 != v25)
        {
          v78 = *__error();
          log = _sa_logt();
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            v46 = *(a1 + 16);
            v76 = [MEMORY[0x1E696AD98] numberWithInt:*(a2 + 4)];
            v74 = [v46 objectForKeyedSubscript:v76];
            v71 = [v74 count];
            v47 = *(a1 + 16);
            v72 = [MEMORY[0x1E696AD98] numberWithInt:*(a2 + 4)];
            v48 = [v47 objectForKeyedSubscript:v72];
            v49 = [v48 lastObject];
            v50 = [v49 debugDescription];
            v51 = [v50 UTF8String];
            v52 = [v19 count];
            v53 = [v19 lastObject];
            v54 = [v53 debugDescription];
            *buf = 134218754;
            v83 = v71;
            v84 = 2080;
            v85 = v51;
            v86 = 2048;
            v87 = v52;
            v88 = 2080;
            v89 = [v54 UTF8String];
            _os_log_error_impl(&dword_1E0E2F000, log, OS_LOG_TYPE_ERROR, "_tasksByPid[@(task_snap->pid)] (count %lu) .lastObject %s != tasksWithUniquePid (count %lu) .lastObject %s", buf, 0x2Au);
          }

          *__error() = v78;
          v55 = *(a1 + 16);
          logb = [MEMORY[0x1E696AD98] numberWithInt:*(a2 + 4)];
          v56 = [v55 objectForKeyedSubscript:logb];
          v57 = [v56 count];
          v58 = *(a1 + 16);
          v59 = [MEMORY[0x1E696AD98] numberWithInt:*(a2 + 4)];
          v60 = [v58 objectForKeyedSubscript:v59];
          v61 = [v60 lastObject];
          v62 = [v61 debugDescription];
          [v62 UTF8String];
          [v19 count];
          v63 = [v19 lastObject];
          v64 = [v63 debugDescription];
          [v64 UTF8String];
          _SASetCrashLogMessage(1906, "_tasksByPid[@(task_snap->pid)] (count %lu) .lastObject %s != tasksWithUniquePid (count %lu) .lastObject %s", v65, v66, v67, v68, v69, v70, v57);

          _os_crash();
          __break(1u);
        }

        v26 = a1;
        v27 = a4;
        v28 = a5;
        v29 = a3;
        v31 = a9;
        v30 = v77;
        goto LABEL_11;
      }

      v37 = [v21 exitTimestamp];
      if (v37)
      {
        goto LABEL_22;
      }

LABEL_20:
      v38 = *(a1 + 440);
      if (!v38)
      {
        goto LABEL_23;
      }

      if (v38 != 1)
      {
        [(SASampleStore *)a1 task:v21 exitedAtTimestamp:a8];
LABEL_23:

        if ((*(a1 + 488) & 2) != 0)
        {
          v19 = SAExecutablePath(*(a2 + 4), a3);
        }

        else
        {
          v19 = 0;
        }

        v39 = [SATask taskWithPid:*(a2 + 8) uniquePid:a3 name:v19 mainBinaryPath:0 forkTime:a4 loadInfos:a5 numLoadInfos:0 textExecLoadInfos:0 numTextExecLoadInfos:a9 architecture:a6 sharedCache:?];
        v36 = v39;
        v40 = *(a2 + 80);
        if ((v40 & 0x4000000) != 0)
        {
          if (!v39)
          {
            goto LABEL_32;
          }

          v39[68] = 1;
          v40 = *(a2 + 80);
        }

        if ((v40 & 0x8000000) != 0 && v39)
        {
          v39[69] = 1;
        }

LABEL_32:
        [(SASampleStore *)a1 addTask:v39];
        v41 = *(a1 + 488);
        if ((v41 & 2) == 0 || !a11)
        {
          goto LABEL_41;
        }

        if ((a10 & 1) == 0)
        {
          if ((v41 & 0x80) == 0)
          {
            goto LABEL_40;
          }

          v42 = [v36 binaryLoadInfos];
          if (![v42 count] || a7)
          {
          }

          else
          {
            v43 = [v36 pid];

            if (v43)
            {
              goto LABEL_40;
            }
          }
        }

        [(SATask *)v36 gatherLoadInfoFromLiveProcessWithDataGatheringOptions:*(a1 + 408) additionalCSSymbolicatorFlags:?];
LABEL_40:
        [(SATask *)v36 _gatherDataFromLiveProcessIsLate:v19 mainBinaryPath:?];
        goto LABEL_41;
      }

LABEL_22:

      goto LABEL_23;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_23;
  }

  v32 = *(a1 + 16);
  v33 = [MEMORY[0x1E696AD98] numberWithInt:*(a2 + 4)];
  v19 = [v32 objectForKeyedSubscript:v33];

  if (!v19)
  {
    goto LABEL_16;
  }

  v34 = [v19 lastObject];
  v21 = v34;
  if (!v34)
  {
    goto LABEL_23;
  }

  if (![(SATask *)v34 correspondsToPid:a3 name:a4 loadInfos:a5 numLoadInfos:0 textExecLoadInfos:0 numTextExecLoadInfos:a9 architecture:a6 sharedCache:?])
  {
    v37 = [v21 exitTimestamp];
    if (v37)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v26 = a1;
  v27 = a4;
  v28 = a5;
  v29 = a3;
  v30 = a6;
  v31 = a9;
LABEL_11:
  [(SASampleStore *)v26 addNewImageInfos:v27 numLoadInfos:v28 name:v29 sharedCache:v30 architecture:v31 toTask:v21];
  v35 = *(a2 + 80);
  if ((v35 & 0x4000000) != 0)
  {
    v21[68] = 1;
    v35 = *(a2 + 80);
  }

  if ((v35 & 0x8000000) != 0)
  {
    v21[69] = 1;
  }

  v21 = v21;
  v36 = v21;
LABEL_41:

  v44 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)_lastTaskOnOrBeforeTimestamp:(void *)a3 inTasks:
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [a3 reverseObjectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 startTimestamp];
          v12 = v11;
          if (v11)
          {
            if (![v11 gt:a2])
            {
              goto LABEL_14;
            }
          }

          else
          {
            v13 = [a3 firstObject];

            if (v10 == v13)
            {
LABEL_14:
              v14 = v10;

              goto LABEL_15;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_15:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)firstTaskWithPid:(void *)a1
{
  if (a1)
  {
    a1 = [(SASampleStore *)a1 firstTaskWithPid:a2 onOrAfterTimestamp:0];
    v2 = vars8;
  }

  return a1;
}

- (id)_firstTaskOnOrAfterTimestamp:(uint64_t)a1 inTasks:(void *)a2
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 endTimestamp];
        v10 = v9;
        if (v9)
        {
          if (![v9 lt:a1])
          {
            goto LABEL_13;
          }
        }

        else
        {
          v11 = [v3 lastObject];

          if (v8 == v11)
          {
LABEL_13:
            v12 = v8;

            goto LABEL_14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_14:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)taskWithUniquePid:(uint64_t)a3 atTimestamp:
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 8);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v6 = [v4 objectForKeyedSubscript:v5];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (([(SATask *)v12 isAliveAtTimestamp:a3]& 1) != 0)
          {
            v13 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __47__SASampleStore_taskWithPid_orTid_atTimestamp___block_invoke(uint64_t *a1, void *a2, _BYTE *a3)
{
  v10 = [a2 threads];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  v7 = [v10 objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = v7;
    v9 = [(SATask *)a2 isAliveAtTimestamp:?];

    if (v9)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      *a3 = 1;
    }
  }

  else
  {
  }
}

void __39__SASampleStore_lastTaskWithPid_orTid___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = [a2 threads];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = *(*(a1 + 32) + 8);
  if (v8)
  {

    objc_storeStrong((v9 + 40), a2);
  }

  else if (*(v9 + 40))
  {
    v10 = [a2 pid];
    if (v10 != [*(*(*(a1 + 32) + 8) + 40) pid])
    {
      *a3 = 1;
    }
  }
}

- (id)initForFileParsing
{
  result = [(SASampleStore *)self init];
  if (result)
  {
    *(result + 395) = 0;
    *(result + 61) = 1652;
  }

  return result;
}

- (void)setSampleOnlyMainThreads:(BOOL)a3
{
  if (self->_sampleOnlyMainThreads == a3)
  {
    return;
  }

  v10 = v3;
  v11 = v4;
  v5 = a3;
  if (![(NSMutableArray *)self->_sampleTimestamps count])
  {
LABEL_8:
    self->_sampleOnlyMainThreads = v5;
    return;
  }

  if (!v5)
  {
    self->_nextSampleIsFirstSamplingAllThreads = 1;
    goto LABEL_8;
  }

  v7 = *__error();
  v8 = _sa_logt();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "Cannot set sampleOnlyMainThreads to YES after parsing any data", v9, 2u);
  }

  *__error() = v7;
}

- (void)setStackshotsOnlyIncludeSpecificProcesses:(BOOL)a3
{
  if (self->_stackshotsOnlyIncludeSpecificProcesses == a3)
  {
    return;
  }

  v10 = v3;
  v11 = v4;
  v5 = a3;
  if (![(NSMutableArray *)self->_sampleTimestamps count])
  {
LABEL_8:
    self->_stackshotsOnlyIncludeSpecificProcesses = v5;
    return;
  }

  if (!v5)
  {
    self->_nextSampleIsFirstSamplingAllProcesses = 1;
    goto LABEL_8;
  }

  v7 = *__error();
  v8 = _sa_logt();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "Cannot set stackshotsOnlyIncludeSpecificProcesses to YES after parsing any data", v9, 2u);
  }

  *__error() = v7;
}

- (unint64_t)indexOfFirstSampleOnOrAfterTimestamp:(id)a3
{
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSMutableArray *)self->_sampleTimestamps count])
  {
    v6 = [(NSMutableArray *)self->_sampleTimestamps indexOfObject:a3 inSortedRange:0 options:[(NSMutableArray *)self->_sampleTimestamps count] usingComparator:1280, &__block_literal_global_252];
    if (v6 < [(NSMutableArray *)self->_sampleTimestamps count])
    {
      return v6;
    }
  }

  return v5;
}

- (unint64_t)indexOfLastSampleOnOrBeforeTimestamp:(id)a3
{
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSMutableArray *)self->_sampleTimestamps count])
  {
    v6 = [(NSMutableArray *)self->_sampleTimestamps indexOfObject:a3 inSortedRange:0 options:[(NSMutableArray *)self->_sampleTimestamps count] usingComparator:1536, &__block_literal_global_254];
    if (v6)
    {
      return v6 - 1;
    }
  }

  return v5;
}

- (id)sharedCacheWithUUID:(uint64_t)a3 slide:(uint64_t)a4 slidBaseAddress:
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [*(a1 + 136) reverseObjectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ([v13 matchesUUID:a2 slide:a3 slidBaseAddress:a4])
          {
            v15 = v13;

            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = uuidForBytes(a2);
    v15 = [SASharedCache sharedCacheWithUUID:v14 slide:a3 slidBaseAddress:a4 dataGatheringOptions:*(a1 + 488)];

    [*(a1 + 136) addObject:v15];
  }

  else
  {
    v15 = 0;
  }

LABEL_12:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)exclaveWithIdentifier:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = *(a1 + 144);
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          if ([v9 identifier] == a2)
          {
            v10 = v9;

            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = [[SAExclave alloc] initWithIdentifier:a2];
    v11 = *(a1 + 144);
    if (!v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = *(a1 + 144);
      *(a1 + 144) = v12;

      v11 = *(a1 + 144);
    }

    [v11 addObject:{v10, v16}];
  }

  else
  {
    v10 = 0;
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (uint64_t)parseKCDataExclavesContainer:(uint64_t)a1 exclaveInfo:(int *)a2 primaryDataIsKPerf:(void *)a3 ktraceDataUnavailable:(void *)a4
{
  v294 = *MEMORY[0x1E69E9840];
  v7 = (*a2)[4];
  if (v7 != 2377)
  {
    v229 = *__error();
    v107 = _sa_logt();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_error_impl(&dword_1E0E2F000, v107, OS_LOG_TYPE_ERROR, "bad container type %u", buf, 8u);
    }

    *__error() = v229;
    _SASetCrashLogMessage(6179, "bad container type %u", v230, v231, v232, v233, v234, v235, v7);
    _os_crash();
    __break(1u);
LABEL_425:
    v223 = *__error();
    v224 = _sa_logt();
    if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
    {
      *buf = v260;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = v4;
      _os_log_error_impl(&dword_1E0E2F000, v224, OS_LOG_TYPE_ERROR, "Container end with wrong ID (%llu != %llu)", buf, 0x16u);
    }

    v81 = 7;
LABEL_412:

    *__error() = v223;
    objc_autoreleasePoolPop(v107);
    goto LABEL_417;
  }

  v9 = a2;
  obj = *(*a2 + 1);
  v10 = 0x1E695D000uLL;
  v248 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v247 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v246 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v9[1];
  v12 = *v9 + (*v9)[1];
  v13 = (v12 + 16);
  v14 = v12 + 32;
  *v9 = v13;
  v15 = 0x1E696A000uLL;
  v16 = &off_1E0F28000;
  if (v14 > v11)
  {
    goto LABEL_3;
  }

LABEL_97:
  v91 = *(v16 + 40);
  v260 = 134218240;
  while (1)
  {
    if (&v14[v13[1]] > v11 || *v13 == -242132755)
    {
      goto LABEL_3;
    }

    v92 = objc_autoreleasePoolPush();
    v6 = v92;
    v93 = *v9;
    v94 = **v9;
    if ((v94 & 0xFFFFFFF0) == 0x20)
    {
      v95 = 17;
    }

    else
    {
      v95 = **v9;
    }

    if ((v95 - 1) < 6)
    {
      goto LABEL_106;
    }

    if (v95 != 19)
    {
      if (v95 != 20)
      {
        goto LABEL_106;
      }

      v222 = *(v93 + 1);
      if (obj == v222)
      {
        objc_autoreleasePoolPop(v92);
        v16 = &off_1E0F28000;
        goto LABEL_3;
      }

      v220 = *__error();
      v221 = _sa_logt();
      if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = obj;
        *&buf[12] = 2048;
        *&buf[14] = v222;
        _os_log_error_impl(&dword_1E0E2F000, v221, OS_LOG_TYPE_ERROR, "Container end with wrong ID (%llu != %llu)", buf, 0x16u);
      }

      v81 = 7;
      goto LABEL_416;
    }

    v97 = v9[1];
    if ((v93 + 4) > v97 || ((v98 = v93[1], v99 = (v93 + v98 + 16), v98 >= 4) ? (v100 = v94 == 19) : (v100 = 0), v100 ? (v101 = v99 > v97) : (v101 = 1), v101))
    {
      v220 = *__error();
      v221 = _sa_logt();
      if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 2377;
        _os_log_error_impl(&dword_1E0E2F000, v221, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: subcontainer of container type %u is invalid", buf, 8u);
      }

      v81 = 1;
LABEL_416:

      *__error() = v220;
LABEL_417:
      objc_autoreleasePoolPop(v6);
      goto LABEL_418;
    }

    v102 = v93[4];
    if (v102 == 2378)
    {
      v253 = *(v93 + 1);
      v267 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v131 = v9[1];
      v132 = *v9 + (*v9)[1];
      v133 = v132 + 16;
      *v9 = (v132 + 16);
      v134 = v132 + 32;
      if (v134 > v131)
      {
        goto LABEL_388;
      }

      v258 = 0;
LABEL_178:
      if (&v134[v133[1]] > v131 || *v133 == -242132755)
      {
LABEL_383:
        if (v258)
        {
          v210 = [SAKCDataExclaveSCResult alloc];
          if ([v267 count])
          {
            v211 = v267;
          }

          else
          {
            v211 = 0;
          }

          v212 = [(SAKCDataExclaveSCResult *)v210 initWithInfo:v258 callstacks:v211];
          [*(v15 + 3480) numberWithUnsignedLongLong:*v258];
          v214 = v213 = v10;
          [v246 setObject:v212 forKeyedSubscript:v214];

          v10 = v213;
          v81 = 0;
          goto LABEL_391;
        }

LABEL_388:
        v215 = v10;
        v216 = *__error();
        v217 = _sa_logt();
        if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v217, OS_LOG_TYPE_ERROR, "No exclave_scresult_info in scresult container", buf, 2u);
        }

        *__error() = v216;
        v81 = 1;
        v10 = v215;
        goto LABEL_391;
      }

      v135 = objc_autoreleasePoolPush();
      v136 = v135;
      v137 = *v9;
      v138 = **v9;
      if ((v138 & 0xFFFFFFF0) == 0x20)
      {
        v139 = 17;
      }

      else
      {
        v139 = **v9;
      }

      if (v139 != 19)
      {
        if (v139 == 2379)
        {
          v258 = v137 + 4;
        }

        else if (v139 == 20)
        {
          v209 = *(v137 + 1);
          if (v253 == v209)
          {
            objc_autoreleasePoolPop(v135);
            v16 = &off_1E0F28000;
            goto LABEL_383;
          }

          v204 = v135;
          v205 = *__error();
          v206 = _sa_logt();
          if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v253;
            *&buf[12] = 2048;
            *&buf[14] = v209;
            _os_log_error_impl(&dword_1E0E2F000, v206, OS_LOG_TYPE_ERROR, "Container end with wrong ID (%llu != %llu)", buf, 0x16u);
          }

          v81 = 7;
          v16 = &off_1E0F28000;
LABEL_399:

          *__error() = v205;
          objc_autoreleasePoolPop(v204);
          v10 = 0x1E695D000;
LABEL_391:

          goto LABEL_392;
        }

        objc_autoreleasePoolPop(v135);
        goto LABEL_290;
      }

      v140 = v9[1];
      if ((v137 + 4) > v140 || ((v141 = v137[1], v142 = (v137 + v141 + 16), v141 >= 4) ? (v143 = v138 == 19) : (v143 = 0), v143 ? (v144 = v142 > v140) : (v144 = 1), v144))
      {
        v204 = v135;
        v205 = *__error();
        v206 = _sa_logt();
        if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = 2378;
          _os_log_error_impl(&dword_1E0E2F000, v206, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: subcontainer of container type %u is invalid", buf, 8u);
        }

        v81 = 1;
        goto LABEL_399;
      }

      if (v137[4] != 2380)
      {
        v81 = SkipToContainerEnd(v9, 1);
        goto LABEL_289;
      }

      v145 = *(v137 + 1);
      *v9 = v142;
      v146 = v142 + 4;
      v255 = v135;
      if ((v142 + 4) > v140)
      {
        v147 = 0;
        goto LABEL_200;
      }

      v241 = v145;
      v251 = 0;
      v147 = 0;
      v265 = a4;
      while (1)
      {
        if (v146 + v142[1] > v140 || *v142 == -242132755)
        {
          goto LABEL_281;
        }

        v150 = objc_autoreleasePoolPush();
        v151 = v150;
        v152 = *v9;
        v153 = **v9;
        if ((v153 & 0xFFFFFFF0) == 0x20)
        {
          v154 = 17;
        }

        else
        {
          v154 = **v9;
        }

        if ((v154 - 1) >= 6)
        {
          v155 = (*v9 + 4);
        }

        else
        {
          v155 = (v152 + 12);
        }

        if (v154 > 19)
        {
          if (v154 == 2381)
          {
            v251 = v155;
          }

          else if (v154 == 20)
          {
            v174 = *(v152 + 1);
            if (v241 == v174)
            {
              objc_autoreleasePoolPop(v150);
              v16 = &off_1E0F28000;
LABEL_281:
              if (v251)
              {
                v175 = [[SAKCDataExclaveCallstack alloc] initWithInfo:v251 addresses:v147];
                [v267 addObject:v175];

                v81 = 0;
                goto LABEL_287;
              }

LABEL_200:
              v148 = *__error();
              v149 = _sa_logt();
              if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
              {
                *v291 = 0;
                _os_log_error_impl(&dword_1E0E2F000, v149, OS_LOG_TYPE_ERROR, "No exclave_ipcstackentry_info in ipcstackentry container", v291, 2u);
              }

              *__error() = v148;
              v81 = 1;
              v16 = &off_1E0F28000;
              goto LABEL_287;
            }

            context = v150;
            v172 = *__error();
            v173 = _sa_logt();
            if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
            {
              *v291 = 134218240;
              *&v291[4] = v241;
              *&v291[12] = 2048;
              *&v291[14] = v174;
              _os_log_error_impl(&dword_1E0E2F000, v173, OS_LOG_TYPE_ERROR, "Container end with wrong ID (%llu != %llu)", v291, 0x16u);
            }

            v81 = 7;
            v16 = &off_1E0F28000;
LABEL_286:

            *__error() = v172;
            objc_autoreleasePoolPop(context);
LABEL_287:
            v136 = v255;
LABEL_288:

            v10 = 0x1E695D000;
LABEL_289:
            objc_autoreleasePoolPop(v136);
            if (v81)
            {
              goto LABEL_391;
            }

LABEL_290:
            v131 = v9[1];
            v176 = *v9 + (*v9)[1];
            v133 = v176 + 16;
            *v9 = (v176 + 16);
            v134 = v176 + 32;
            if (v134 > v131)
            {
              goto LABEL_383;
            }

            goto LABEL_178;
          }

          goto LABEL_269;
        }

        v156 = v9[1];
        if (v154 == 17)
        {
          break;
        }

        if (v154 != 19)
        {
          goto LABEL_269;
        }

        v157 = v152 + 4;
        if ((v152 + 4) > v156 || (v158 = v152[1], v158 < 4) || v153 != 19 || v157 + v158 > v156)
        {
          context = v150;
          v172 = *__error();
          v173 = _sa_logt();
          if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
          {
            *v291 = 67109120;
            *&v291[4] = 2380;
            _os_log_error_impl(&dword_1E0E2F000, v173, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: subcontainer of container type %u is invalid", v291, 8u);
          }

          v81 = 1;
          goto LABEL_286;
        }

        v159 = SkipToContainerEnd(v9, 1);
        v160 = v151;
        v81 = v159;
        objc_autoreleasePoolPop(v160);
        if (v81)
        {
          goto LABEL_288;
        }

LABEL_270:
        v140 = v9[1];
        v171 = *v9 + (*v9)[1];
        v142 = (v171 + 16);
        *v9 = (v171 + 16);
        v146 = v171 + 32;
        if (v146 > v140)
        {
          goto LABEL_281;
        }
      }

      if ((v152 + 4) > v156 || (v161 = v152[1], v152 + v161 + 16 > v156) || v153 != 17 && (v153 & 0xFFFFFFF0) != 0x20)
      {
LABEL_273:
        context = v150;
        v172 = *__error();
        v173 = _sa_logt();
        if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
        {
          *v291 = 0;
          v81 = 2;
          _os_log_error_impl(&dword_1E0E2F000, v173, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: array is invalid", v291, 2u);
        }

        else
        {
          v81 = 2;
        }

        a4 = v265;
        goto LABEL_286;
      }

      v162 = *(v152 + 1);
      if (v162)
      {
        if (v153 == 17)
        {
          v163 = HIDWORD(v162);
          if (SHIDWORD(v162) <= 2313)
          {
            if (SHIDWORD(v162) <= 2073)
            {
              if (HIDWORD(v162) == 48)
              {
                v164 = 20;
              }

              else
              {
                if (HIDWORD(v162) != 49)
                {
                  goto LABEL_273;
                }

                v164 = 24;
              }

              goto LABEL_256;
            }

            if (HIDWORD(v162) != 2074)
            {
              if (HIDWORD(v162) != 2311)
              {
                goto LABEL_273;
              }

              v164 = 4;
              goto LABEL_256;
            }
          }

          else if (SHIDWORD(v162) <= 2315)
          {
            if (HIDWORD(v162) != 2314)
            {
              goto LABEL_253;
            }
          }

          else if (HIDWORD(v162) != 2316)
          {
            if (HIDWORD(v162) != 2317)
            {
              if (HIDWORD(v162) != 2369)
              {
                goto LABEL_273;
              }

              v164 = 48;
              goto LABEL_256;
            }

LABEL_253:
            v164 = 16;
LABEL_256:
            if (v161 / v164 < v162 || v161 % v162 >= 0x10)
            {
              goto LABEL_273;
            }

LABEL_258:
            if ((v163 - 2311) > 0x3A || ((1 << (v163 - 7)) & 0x400000000000079) == 0)
            {
              a4 = v265;
              if ((v163 - 48) >= 2 && v163 != 2074)
              {
                goto LABEL_262;
              }

LABEL_269:
              objc_autoreleasePoolPop(v151);
              goto LABEL_270;
            }

LABEL_268:
            a4 = v265;
            goto LABEL_269;
          }

          v164 = 8;
          goto LABEL_256;
        }

        v165 = v161 - (**v9 & 0xF);
        if (v161 < (**v9 & 0xFu))
        {
          goto LABEL_273;
        }

        if (v165 < v162)
        {
          goto LABEL_273;
        }

        v166 = v165 / v162;
        if (v165 % v162)
        {
          goto LABEL_273;
        }

        v163 = HIDWORD(v162);
      }

      else
      {
        if (v161)
        {
          goto LABEL_273;
        }

        v163 = HIDWORD(v162);
        if (v153 == 17)
        {
          goto LABEL_258;
        }

LABEL_262:
        v166 = 0;
      }

      if (v163 == 2382)
      {
        v167 = objc_alloc_init(MEMORY[0x1E695DF70]);

        if (v162)
        {
          v168 = 0;
          v169 = MEMORY[0x1E69E9820];
          v162 = v162;
          do
          {
            *buf = v169;
            *&buf[8] = v91;
            *&buf[16] = __65__SASampleStore_parseKCDataExclavesIPCStackContainer_callstacks___block_invoke;
            v289 = &unk_1E86F5810;
            v147 = v167;
            v290 = v147;
            __65__SASampleStore_parseKCDataExclavesIPCStackContainer_callstacks___block_invoke(buf, v170, (v155 + v168));

            v168 += v166;
            --v162;
          }

          while (v162);
          v15 = 0x1E696A000;
          a4 = v265;
          v16 = &off_1E0F28000;
          v136 = v255;
        }

        else
        {
          v147 = v167;
          a4 = v265;
          v136 = v255;
        }

        goto LABEL_269;
      }

      goto LABEL_268;
    }

    if (v102 == 2386)
    {
      break;
    }

    if (v102 != 2383)
    {
      v81 = SkipToContainerEnd(v9, 1);
      goto LABEL_392;
    }

    v5 = *(v93 + 1);
    *v9 = v99;
    v103 = v99 + 4;
    if ((v99 + 4) > v97)
    {
LABEL_419:
      v227 = *__error();
      v228 = _sa_logt();
      if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v228, OS_LOG_TYPE_ERROR, "No exclave_addressspace_info in addressspace container", buf, 2u);
      }

      *__error() = v227;
      v81 = 1;
      goto LABEL_417;
    }

    v104 = v10;
    v105 = 0;
    v266 = 0;
    while (v103 + v99[1] <= v97 && *v99 != -242132755)
    {
      v106 = objc_autoreleasePoolPush();
      v107 = v106;
      v108 = *v9;
      v109 = **v9;
      if ((v109 & 0xFFFFFFF0) == 0x20)
      {
        v110 = 17;
      }

      else
      {
        v110 = **v9;
      }

      if ((v110 - 1) > 5)
      {
        if (v110 > 2309)
        {
          if (v110 == 2310)
          {
            v112 = v108[1];
            if (v112 != 112 || (v108[2] & 0x8F) != 0)
            {
              goto LABEL_146;
            }

            v116 = 104;
          }

          else
          {
            if (v110 != 2312)
            {
              goto LABEL_143;
            }

            v112 = v108[1];
            if (v112 != 32 || (v108[2] & 0x8F) != 0)
            {
LABEL_146:
              v118 = v108[2] & 0xF;
              v114 = v112 >= v118;
              v116 = v112 - v118;
              if (!v114)
              {
                v116 = 0;
              }
            }

            else
            {
              v116 = 24;
            }
          }
        }

        else
        {
          if (v110 != 17 && v110 != 19)
          {
LABEL_143:
            v112 = v108[1];
            goto LABEL_146;
          }

          v112 = v108[1];
          v116 = v112;
        }

        v111 = v108 + 4;
        goto LABEL_149;
      }

      v111 = v108 + 12;
      v112 = v108[1];
      v113 = v108[2] & 0xF;
      v114 = v112 >= v113;
      v115 = v112 - v113;
      if (!v114)
      {
        v115 = 0;
      }

      v116 = v115 - 32;
LABEL_149:
      if (v110 <= 2383)
      {
        if (v110 == 19)
        {
          v119 = v9[1];
          v120 = v108 + 4;
          if (v120 > v119 || v112 < 4 || v109 != 19 || (v120 + v112) > v119)
          {
            v223 = *__error();
            v224 = _sa_logt();
            if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = 2383;
              _os_log_error_impl(&dword_1E0E2F000, v224, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: subcontainer of container type %u is invalid", buf, 8u);
            }

            v81 = 1;
            goto LABEL_412;
          }

          v81 = SkipToContainerEnd(v9, 1);
          objc_autoreleasePoolPop(v107);
          if (v81)
          {
            goto LABEL_417;
          }

          goto LABEL_168;
        }

        if (v110 == 20)
        {
          v4 = *(v108 + 1);
          if (v5 != v4)
          {
            goto LABEL_425;
          }

          objc_autoreleasePoolPop(v106);
          break;
        }
      }

      else if (v110 == 2385)
      {
        if (*(v111 + (v116 - 1)))
        {
          v121 = a4;
          v122 = *__error();
          v123 = _sa_logt();
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E0E2F000, v123, OS_LOG_TYPE_DEFAULT, "WARNING: exclave address space name non NULL-terminated", buf, 2u);
          }

          *__error() = v122;
          a4 = v121;
        }

        else
        {
          v266 = v111;
        }
      }

      else if (v110 == 2384)
      {
        v105 = v111;
      }

      objc_autoreleasePoolPop(v107);
LABEL_168:
      v97 = v9[1];
      v124 = *v9 + (*v9)[1];
      v99 = (v124 + 16);
      *v9 = (v124 + 16);
      v103 = v124 + 32;
      if (v103 > v97)
      {
        break;
      }
    }

    if (!v105)
    {
      goto LABEL_419;
    }

    v207 = [[SAKCDataExclaveAddressSpace alloc] initWithInfo:v105 name:v266];
    v15 = 0x1E696A000uLL;
    v208 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v105];
    [v248 setObject:v207 forKeyedSubscript:v208];

    v16 = &off_1E0F28000;
    v10 = v104;
LABEL_106:
    objc_autoreleasePoolPop(v6);
LABEL_107:
    v11 = v9[1];
    v96 = *v9 + (*v9)[1];
    v13 = (v96 + 16);
    *v9 = (v96 + 16);
    v14 = v96 + 32;
    if (v14 > v11)
    {
LABEL_3:
      v17 = objc_alloc_init(*(v10 + 3984));
      v281 = 0u;
      v282 = 0u;
      v283 = 0u;
      v284 = 0u;
      v18 = [v246 allValues];
      v19 = [v18 countByEnumeratingWithState:&v281 objects:v287 count:16];
      if (!v19)
      {
        goto LABEL_93;
      }

      v21 = v19;
      v22 = *v282;
      v244 = (a4 << 63) >> 63;
      v23 = *(v16 + 40);
      v250 = v17;
      v236 = *v282;
      v237 = v18;
      while (1)
      {
        v24 = 0;
        v239 = v21;
        do
        {
          if (*v282 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v281 + 1) + 8 * v24);
          v277 = 0u;
          v278 = 0u;
          v279 = 0u;
          v280 = 0u;
          if (v25)
          {
            Property = objc_getProperty(v25, v20, 16, 1);
          }

          else
          {
            Property = 0;
          }

          v27 = Property;
          v261 = [v27 countByEnumeratingWithState:&v277 objects:v286 count:16];
          if (!v261)
          {
LABEL_88:

            goto LABEL_89;
          }

          v238 = v25;
          v240 = v24;
          v254 = *v278;
          v257 = 0;
          v28 = v27;
          v252 = v27;
          do
          {
            v29 = 0;
            do
            {
              if (*v278 != v254)
              {
                objc_enumerationMutation(v28);
              }

              v30 = *(*(&v277 + 1) + 8 * v29);
              v31 = *v30[1];
              v32 = [*(v15 + 3480) numberWithUnsignedLongLong:v31];
              v33 = [v17 objectForKeyedSubscript:v32];

              v263 = v29;
              v262 = v30;
              if (!v33)
              {
                v34 = [*(v15 + 3480) numberWithUnsignedLongLong:v31];
                v35 = [v248 objectForKeyedSubscript:v34];

                if (v35)
                {
                  v36 = [*(v15 + 3480) numberWithUnsignedLongLong:*(*(v35 + 8) + 16)];
                  v37 = [v247 objectForKeyedSubscript:v36];

                  memset(v291, 0, sizeof(v291));
                  v292 = 0u;
                  v293 = 0u;
                  v38 = *(a1 + 144);
                  v39 = [v38 countByEnumeratingWithState:v291 objects:buf count:16];
                  if (!v39)
                  {
                    goto LABEL_25;
                  }

                  v40 = v39;
                  v41 = **&v291[16];
                  do
                  {
                    for (i = 0; i != v40; ++i)
                    {
                      if (**&v291[16] != v41)
                      {
                        objc_enumerationMutation(v38);
                      }

                      v43 = *(*&v291[8] + 8 * i);
                      if ([v43 identifier] == **(v35 + 8))
                      {
                        [(SAExclave *)v43 fillInName:v37 textLayout:*(a1 + 488) dataGatheringOptions:?];
                        v33 = v43;
                        goto LABEL_34;
                      }
                    }

                    v40 = [v38 countByEnumeratingWithState:v291 objects:buf count:16];
                  }

                  while (v40);
LABEL_25:

                  v33 = [[SAExclave alloc] initWithKCData:*(v35 + 16) name:v37 textLayout:*(a1 + 488) dataGatheringOptions:?];
                  v44 = *(a1 + 144);
                  if (!v44)
                  {
                    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v46 = *(a1 + 144);
                    *(a1 + 144) = v45;

                    v44 = *(a1 + 144);
                  }

                  [v44 addObject:v33];
                  v47 = [v33 sharedCache];

                  if (v47)
                  {
                    v48 = [v33 sharedCache];
                    if (([*(a1 + 136) containsObject:v48] & 1) == 0)
                    {
                      [*(a1 + 136) addObject:v48];
                    }
                  }

                  v49 = [(SASampleStore *)a1 lastTaskWithPid:?];
                  if (v49)
                  {
                    v38 = v49;
                  }

                  else
                  {
                    v38 = [SATask taskWithPid:v244 uniquePid:0 name:0 sharedCache:?];
                    [(SASampleStore *)a1 addTask:v38];
                  }

LABEL_34:

                  v15 = 0x1E696A000;
                }

                else
                {
                  v33 = [MEMORY[0x1E695DFB0] null];
                  v50 = *__error();
                  v51 = _sa_logt();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134217984;
                    *&buf[4] = v31;
                    _os_log_error_impl(&dword_1E0E2F000, v51, OS_LOG_TYPE_ERROR, "No exclave address space %llu in stackshot", buf, 0xCu);
                  }

                  *__error() = v50;
                }

                v28 = v252;
                v52 = [*(v15 + 3480) numberWithUnsignedLongLong:v31];
                [v17 setObject:v33 forKeyedSubscript:v52];

                v29 = v263;
                v30 = v262;
                if (!v33)
                {
                  goto LABEL_80;
                }
              }

              v53 = [MEMORY[0x1E695DFB0] null];

              if (v33 == v53)
              {
                goto LABEL_80;
              }

              v275 = 0u;
              v276 = 0u;
              v273 = 0u;
              v274 = 0u;
              obj = objc_getProperty(v30, v54, 16, 1);
              v55 = [obj countByEnumeratingWithState:&v273 objects:v285 count:16];
              if (!v55)
              {
                v56 = 0;
                goto LABEL_74;
              }

              v9 = v55;
              v56 = 0;
              v57 = *v274;
              while (2)
              {
                for (j = 0; j != v9; j = (j + 1))
                {
                  v15 = v56;
                  if (*v274 != v57)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v16 = [*(*(&v273 + 1) + 8 * j) unsignedLongLongValue];
                  if (!v56)
                  {
                    v62 = objc_getProperty(v33, v59, 48, 1);
                    a4 = v62;
                    v271[0] = MEMORY[0x1E69E9820];
                    v271[1] = v23;
                    v271[2] = __99__SASampleStore_parseKCDataExclavesContainer_exclaveInfo_primaryDataIsKPerf_ktraceDataUnavailable___block_invoke_382;
                    v271[3] = &__block_descriptor_40_e21_B24__0__SAFrame_8_B16l;
                    v271[4] = v16;
                    v61 = v271;
                    goto LABEL_50;
                  }

                  v60 = v56[5];
                  if (!v60)
                  {
                    goto LABEL_57;
                  }

                  a4 = v60;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v272[0] = MEMORY[0x1E69E9820];
                    v272[1] = v23;
                    v272[2] = __99__SASampleStore_parseKCDataExclavesContainer_exclaveInfo_primaryDataIsKPerf_ktraceDataUnavailable___block_invoke;
                    v272[3] = &__block_descriptor_40_e21_B24__0__SAFrame_8_B16l;
                    v272[4] = v16;
                    v61 = v272;
                    v62 = a4;
LABEL_50:
                    v63 = [v62 objectsPassingTest:v61];
                    v56 = [v63 anyObject];
                    goto LABEL_56;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v10 = *__error();
                    v82 = _sa_logt();
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                    {
                      ClassName = object_getClassName(a4);
                      *buf = 136315138;
                      *&buf[4] = ClassName;
                      _os_log_error_impl(&dword_1E0E2F000, v82, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
                    }

                    *__error() = v10;
                    v84 = object_getClassName(a4);
                    _SASetCrashLogMessage(6326, "child is %s", v85, v86, v87, v88, v89, v90, v84);
                    _os_crash();
                    __break(1u);
                    goto LABEL_97;
                  }

                  v63 = a4;
                  if (v16 == [v63 address])
                  {
                    v56 = v63;
                  }

                  else
                  {
                    v56 = 0;
                  }

                  a4 = v63;
LABEL_56:

                  if (v56)
                  {
                    goto LABEL_70;
                  }

LABEL_57:
                  v64 = [[SAExclaveFrame alloc] initWithExclave:v33];
                  v56 = v64;
                  if (v64)
                  {
                    v64[2] = v16;
                  }

                  v65 = [v33 loadInfos];
                  if (v65)
                  {

LABEL_62:
                    v68 = [v33 loadInfos];
                    v69 = [v33 sharedCache];
                    v70 = [SABinaryLoadInfo binaryLoadInfoForAddress:v16 inBinaryLoadInfos:v68 libraryCache:v69];
                    if (v56)
                    {
                      objc_storeWeak(v56 + 3, v70);
                    }

                    goto LABEL_65;
                  }

                  v66 = [v33 sharedCache];

                  if (v66)
                  {
                    goto LABEL_62;
                  }

LABEL_65:
                  if (v56)
                  {
                    v56[4] = v15;
                  }

                  if (v15)
                  {
                    [(SAFrame *)v15 _addChildFrame:v56];
                  }

                  else
                  {
                    v71 = objc_getProperty(v33, v67, 48, 1);
                    [v71 addObject:v56];
                  }

LABEL_70:
                }

                v9 = [obj countByEnumeratingWithState:&v273 objects:v285 count:16];
                if (v9)
                {
                  continue;
                }

                break;
              }

LABEL_74:

              v72 = [SAExclaveCallstack alloc];
              if (v72)
              {
                v73 = v262[1];
                v74 = [(SAExclaveCallstack *)v72 initWithExclave:v33 leafFrame:v56];
                v75 = v74;
                v15 = 0x1E696A000uLL;
                v29 = v263;
                if (v74)
                {
                  v74[4] = v73[2];
                  v74[3] = v73[1];
                }

                v76 = v257;
                v28 = v252;
                if (!v257)
                {
LABEL_78:
                  v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }
              }

              else
              {
                v75 = 0;
                v15 = 0x1E696A000;
                v76 = v257;
                v28 = v252;
                v29 = v263;
                if (!v257)
                {
                  goto LABEL_78;
                }
              }

              v257 = v76;
              [v76 addObject:v75];

              v17 = v250;
LABEL_80:

              ++v29;
            }

            while (v29 != v261);
            v77 = [v28 countByEnumeratingWithState:&v277 objects:v286 count:16];
            v261 = v77;
          }

          while (v77);

          v22 = v236;
          v18 = v237;
          v21 = v239;
          v24 = v240;
          if (v257)
          {
            v78 = [v257 copy];
            v79 = [*(v15 + 3480) numberWithUnsignedLongLong:*v238[1]];
            [a3 setObject:v78 forKeyedSubscript:v79];

            v27 = v257;
            goto LABEL_88;
          }

LABEL_89:
          ++v24;
        }

        while (v24 != v21);
        v80 = [v18 countByEnumeratingWithState:&v281 objects:v287 count:16];
        v21 = v80;
        if (!v80)
        {
LABEL_93:

          v81 = 0;
          goto LABEL_418;
        }
      }
    }
  }

  v125 = *(v93 + 1);
  *v9 = v99;
  v126 = v99 + 4;
  v264 = a4;
  if ((v99 + 4) > v97)
  {
    v127 = 0;
    goto LABEL_173;
  }

  v259 = v125;
  v268 = 0;
  v130 = 0;
  while (2)
  {
    if (v126 + v99[1] > v97 || *v99 == -242132755)
    {
      goto LABEL_363;
    }

    v177 = objc_autoreleasePoolPush();
    v178 = v177;
    v179 = *v9;
    v180 = **v9;
    if ((v180 & 0xFFFFFFF0) == 0x20)
    {
      v181 = 17;
    }

    else
    {
      v181 = **v9;
    }

    if ((v181 - 1) >= 6)
    {
      v182 = (*v9 + 4);
    }

    else
    {
      v182 = (v179 + 12);
    }

    if (v181 <= 19)
    {
      v183 = v9[1];
      if (v181 != 17)
      {
        if (v181 == 19)
        {
          v184 = v179 + 4;
          if ((v179 + 4) > v183 || (v185 = v179[1], v185 < 4) || v180 != 19 || v184 + v185 > v183)
          {
            v269 = v130;
            v202 = *__error();
            v203 = _sa_logt();
            if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
            {
              *v291 = 67109120;
              *&v291[4] = 2386;
              _os_log_error_impl(&dword_1E0E2F000, v203, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: subcontainer of container type %u is invalid", v291, 8u);
            }

            v81 = 1;
            goto LABEL_380;
          }

          v81 = SkipToContainerEnd(v9, 1);
          objc_autoreleasePoolPop(v178);
          if (v81)
          {
            v16 = &off_1E0F28000;
            goto LABEL_366;
          }

          goto LABEL_362;
        }

LABEL_361:
        objc_autoreleasePoolPop(v178);
LABEL_362:
        v97 = v9[1];
        v197 = *v9 + (*v9)[1];
        v99 = (v197 + 16);
        *v9 = (v197 + 16);
        v126 = v197 + 32;
        if (v126 > v97)
        {
          goto LABEL_363;
        }

        continue;
      }

      if ((v179 + 4) > v183 || (v186 = v179[1], v179 + v186 + 16 > v183) || v180 != 17 && (v180 & 0xFFFFFFF0) != 0x20)
      {
LABEL_368:
        v269 = v130;
        v202 = *__error();
        v203 = _sa_logt();
        if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
        {
          *v291 = 0;
          v81 = 2;
          _os_log_error_impl(&dword_1E0E2F000, v203, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: array is invalid", v291, 2u);
        }

        else
        {
          v81 = 2;
        }

LABEL_380:

        *__error() = v202;
        objc_autoreleasePoolPop(v178);
        v16 = &off_1E0F28000;
        v130 = v269;
        goto LABEL_366;
      }

      v187 = *(v179 + 1);
      if (!v187)
      {
        if (v186)
        {
          goto LABEL_368;
        }

        v188 = HIDWORD(v187);
        if (v180 == 17)
        {
          goto LABEL_348;
        }

        goto LABEL_352;
      }

      if (v180 == 17)
      {
        v188 = HIDWORD(v187);
        if (SHIDWORD(v187) <= 2313)
        {
          if (SHIDWORD(v187) <= 2073)
          {
            if (HIDWORD(v187) == 48)
            {
              v189 = 20;
            }

            else
            {
              if (HIDWORD(v187) != 49)
              {
                goto LABEL_368;
              }

              v189 = 24;
            }

            goto LABEL_346;
          }

          if (HIDWORD(v187) != 2074)
          {
            if (HIDWORD(v187) != 2311)
            {
              goto LABEL_368;
            }

            v189 = 4;
            goto LABEL_346;
          }
        }

        else if (SHIDWORD(v187) <= 2315)
        {
          if (HIDWORD(v187) != 2314)
          {
            goto LABEL_343;
          }
        }

        else if (HIDWORD(v187) != 2316)
        {
          if (HIDWORD(v187) != 2317)
          {
            if (HIDWORD(v187) != 2369)
            {
              goto LABEL_368;
            }

            v189 = 48;
            goto LABEL_346;
          }

LABEL_343:
          v189 = 16;
LABEL_346:
          if (v186 / v189 < v187 || v186 % v187 >= 0x10)
          {
            goto LABEL_368;
          }

LABEL_348:
          if ((v188 - 2311) <= 0x3A && ((1 << (v188 - 7)) & 0x400000000000079) != 0 || (v188 - 48) < 2 || v188 == 2074)
          {
            goto LABEL_361;
          }

LABEL_352:
          v191 = 0;
LABEL_353:
          if (v188 == 2388)
          {
            v256 = v177;
            v245 = v6;
            if (!v130)
            {
              v130 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            if (v187)
            {
              v192 = 0;
              v193 = MEMORY[0x1E69E9820];
              v194 = v187;
              do
              {
                *buf = v193;
                *&buf[8] = v91;
                *&buf[16] = __68__SASampleStore_parseKCDataExclavesTextLayoutContainer_textLayouts___block_invoke;
                v289 = &unk_1E86F5838;
                v195 = v130;
                v290 = v195;
                __68__SASampleStore_parseKCDataExclavesTextLayoutContainer_textLayouts___block_invoke(buf, v196, v182 + v192);

                v192 += v191;
                --v194;
              }

              while (v194);
              v130 = v195;
            }

            v15 = 0x1E696A000;
            a4 = v264;
            v10 = 0x1E695D000;
            v6 = v245;
            v178 = v256;
          }

          goto LABEL_361;
        }

        v189 = 8;
        goto LABEL_346;
      }

      v190 = v186 - (**v9 & 0xF);
      if (v186 < (**v9 & 0xFu))
      {
        goto LABEL_368;
      }

      if (v190 < v187)
      {
        goto LABEL_368;
      }

      v191 = v190 / v187;
      if (v190 % v187)
      {
        goto LABEL_368;
      }

      v188 = HIDWORD(v187);
      goto LABEL_353;
    }

    break;
  }

  if (v181 == 2387)
  {
    v268 = v182;
    goto LABEL_361;
  }

  if (v181 != 20)
  {
    goto LABEL_361;
  }

  v218 = v10;
  v219 = *(v179 + 1);
  if (v259 != v219)
  {
    v269 = v130;
    v202 = *__error();
    v203 = _sa_logt();
    if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
    {
      *v291 = 134218240;
      *&v291[4] = v259;
      *&v291[12] = 2048;
      *&v291[14] = v219;
      _os_log_error_impl(&dword_1E0E2F000, v203, OS_LOG_TYPE_ERROR, "Container end with wrong ID (%llu != %llu)", v291, 0x16u);
    }

    v81 = 7;
    v10 = v218;
    goto LABEL_380;
  }

  objc_autoreleasePoolPop(v177);
  v10 = v218;
LABEL_363:
  if (v268)
  {
    v198 = v6;
    v199 = v130;
    v200 = [[SAKCDataExclaveTextLayout alloc] initWithInfo:v268 textSegments:v130];
    v201 = [*(v15 + 3480) numberWithUnsignedLongLong:*v268];
    [v247 setObject:v200 forKeyedSubscript:v201];

    v130 = v199;
    v6 = v198;
    v81 = 0;
    v16 = &off_1E0F28000;
    goto LABEL_365;
  }

  v127 = v130;
LABEL_173:
  v128 = *__error();
  v129 = _sa_logt();
  if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
  {
    *v291 = 0;
    _os_log_error_impl(&dword_1E0E2F000, v129, OS_LOG_TYPE_ERROR, "No exclave_textlayout_info in textlayout container", v291, 2u);
  }

  *__error() = v128;
  v81 = 1;
  v16 = &off_1E0F28000;
  v130 = v127;
LABEL_365:
  a4 = v264;
LABEL_366:

LABEL_392:
  objc_autoreleasePoolPop(v6);
  if (!v81)
  {
    goto LABEL_107;
  }

LABEL_418:

  v225 = *MEMORY[0x1E69E9840];
  return v81;
}

- (uint64_t)addKCDataThreadV4:(uint64_t)a3 threadV2:(uint64_t)a4 deltaThreadV3:(uint64_t)a5 deltaThreadV2:(void *)a6 timestamp:(unint64_t)a7 sampleIndex:(void *)a8 stack:(void *)a9 threadExclavesInfo:(uint64_t)a10 threadName:(uint64_t)a11 dispatchQueueLabel:(uint64_t)a12 waitInfo:(void *)a13 waitInfoPortLabelInfo:(uint64_t)a14 turnstileInfo:(void *)a15 turnstileInfoPortLabelInfo:(uint64_t *)a16 instructionCycles:(void *)a17 task:(uint64_t)a18 kernelTask:(char)a19 taskIsSuspended:
{
  v198 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_239:
    v43 = 0;
LABEL_257:
    v155 = *MEMORY[0x1E69E9840];
    return v43;
  }

  v19 = a2;
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    v21 = a3;
  }

  if (a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = a5;
  }

  if (!a5 && !a2 && !a3 && !a4)
  {
    v133 = *__error();
    v134 = _sa_logt();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v134, OS_LOG_TYPE_ERROR, "no thread snap", buf, 2u);
    }

    *__error() = v133;
    _SASetCrashLogMessage(3376, "no thread snap", v135, v136, v137, v138, v139, v140, v165);
    _os_crash();
    __break(1u);
LABEL_236:
    v141 = *__error();
    v142 = _sa_logt();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v197 = v19;
      _os_log_error_impl(&dword_1E0E2F000, v142, OS_LOG_TYPE_ERROR, "dispatchQueueId 0, but dispatchQueueLabel %s", buf, 0xCu);
    }

    *__error() = v141;
    _SASetCrashLogMessage(3656, "dispatchQueueId 0, but dispatchQueueLabel %s", v143, v144, v145, v146, v147, v148, v19);
    _os_crash();
    __break(1u);
    goto LABEL_239;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v23];
  v25 = [a17 threads];
  v26 = [v25 objectForKeyedSubscript:v24];

  if (!v26)
  {
    v27 = [SAThread threadWithId:?];
    v28 = v27;
    if (v21)
    {
      v29 = v21 + 64;
    }

    else
    {
      v29 = v22 + 16;
    }

    if (v27)
    {
      v27[16] = *(v29 + 1) & 1;
    }

    [(SATask *)a17 addThread:v27];
    if ((*(v29 + 1) & 0x20) != 0)
    {
      v30 = [a17 mainThread];

      if (!v30)
      {
        if (v28)
        {
          v28[17] = 1;
        }

        if (a17)
        {
          objc_setProperty_atomic(a17, v31, v28, 272);
        }
      }
    }

    if (![*(a1 + 24) count])
    {
      goto LABEL_41;
    }

    if (*(a1 + 271) == 1)
    {
      v33 = [a17 taskStates];
      if ([v33 count] < 2)
      {
        v34 = [a17 taskStates];
        v35 = [v34 firstObject];
        v36 = [v35 startTimestamp];
        v188 = [v36 lt:a6];

        if (!v188)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }
    }

    if (*(a1 + 269) == 1)
    {
      v37 = [v28 isMainThread];
      if (v37)
      {
        v26 = 0;
      }

      else
      {
        v26 = v28;
      }

      if (!v28 || (v37 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (!v28)
    {
      v26 = 0;
      goto LABEL_42;
    }

    objc_setProperty_atomic(v28, v32, a6, 32);
LABEL_41:
    v26 = v28;
  }

LABEL_42:
  v38 = [v26 threadStates];
  v39 = [v38 lastObject];

  v40 = v39 != 0;
  if (!(v21 | v39))
  {
    v43 = 0;
LABEL_256:

    goto LABEL_257;
  }

  if (v39 && [v39 endSampleIndex] == a7)
  {
    v41 = *__error();
    v42 = _sa_logt();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v197 = [v26 threadId];
      _os_log_error_impl(&dword_1E0E2F000, v42, OS_LOG_TYPE_ERROR, "Already saw thread 0x%llx in this stackshot, ignoring second instance", buf, 0xCu);
    }

    v43 = 0;
    *__error() = v41;
    goto LABEL_256;
  }

  v179 = v24;
  v44 = a13;
  if (a19)
  {
    v45 = 1;
  }

  else
  {
    v46 = (v21 + 64);
    if (!v21)
    {
      v46 = (v22 + 16);
    }

    v45 = (*v46 >> 6) & 1;
  }

  v177 = v45;
  v175 = a9;
  if (v21)
  {
    if (v39)
    {
      v47 = [v39 name];

      v40 = (a10 | v47) == 0;
      if (a10)
      {
        if (v47)
        {
          v48 = [v39 name];
          v49 = strcmp(a10, [v48 UTF8String]) == 0;

          v40 = v49;
        }
      }
    }
  }

  if (a13 && (v50 = a13[1]) != 0)
  {
    v182 = SANSStringForCString(v50);
    if (!v39)
    {
LABEL_62:
      v51 = 0;
      goto LABEL_70;
    }
  }

  else
  {
    v182 = 0;
    if (!v39)
    {
      goto LABEL_62;
    }
  }

  v52 = [v39 waitInfo];

  v51 = (a12 | v52) == 0;
  if (a12 && v52)
  {
    v53 = [v39 waitInfo];
    v54 = v53;
    if (a13)
    {
      v55 = *(*a13 + 2);
      v56 = *(*a13 + 4);
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    v51 = [(SAWaitInfo *)v53 matchesKCDataWaitInfo:a12 portName:v182 flags:v55 domain:v56];
  }

LABEL_70:
  v176 = v51;
  if (a15 && (v57 = a15[1]) != 0)
  {
    v181 = SANSStringForCString(v57);
  }

  else
  {
    v181 = 0;
  }

  if (v39)
  {
    v58 = [v39 turnstileInfo];

    v178 = (a14 | v58) == 0;
    if (a14 && v58)
    {
      v59 = [v39 turnstileInfo];
      v60 = v59;
      if (a15)
      {
        v61 = *(*a15 + 2);
        v62 = *(*a15 + 4);
      }

      else
      {
        v61 = 0;
        v62 = 0;
      }

      v178 = [(SATurnstileInfo *)v59 matchesKCDataTurnstileInfo:a14 portName:v181 flags:v61 domain:v62];
    }

    if (!v21)
    {
      goto LABEL_99;
    }

    v174 = a13;
    v64 = [v39 userTimeInNs];
    v65 = *(a1 + 232);
    if (!HIDWORD(v65) || !v65)
    {
      goto LABEL_98;
    }

    v66 = v64;
    v67 = *(v21 + 48);
    if (v65 != HIDWORD(v65))
    {
      v67 = __udivti3();
    }

    if (v66 >= v67)
    {
LABEL_98:
      v68 = [v39 systemTimeInNs];
      v69 = *(a1 + 232);
      if (!HIDWORD(v69) || !v69)
      {
        goto LABEL_267;
      }

      v70 = v68;
      v71 = *(v21 + 56);
      if (v69 != HIDWORD(v69))
      {
        v71 = __udivti3();
      }

      if (v70 >= v71)
      {
LABEL_267:
        if (!a16 || (v72 = a16[1], v72 == [v39 cycles]) && (v73 = *a16, v73 == objc_msgSend(v39, "instructions")))
        {
          if ((*(v21 + 65) & 8) == 0)
          {
LABEL_99:
            v63 = *(v39 + 40);
            goto LABEL_100;
          }
        }
      }
    }

LABEL_141:
    [a8 setContinuation:*(v21 + 16)];
    if ((*(v21 + 64) & 0x8080) != 0 || [a17 pid] && !objc_msgSend(a8, "hasUserStack"))
    {
      v96 = v40;
      v97 = 1;
    }

    else
    {
      v96 = v40;
      v97 = 0;
    }

    [a8 setIsUserStackTruncated:v97];
    [a8 setIsSwiftAsyncStackTruncated:(*(v21 + 64) >> 16) & 1];
    [a8 setIsKernelStackTruncated:(*(v21 + 64) >> 14) & 1];
    if ([a17 pid])
    {
      v195 = 0;
      v98 = [(SATask *)a17 leafFrameAfterAddingStack:a8 leafOfCRootFramesReplacedBySwiftAsync:&v195];
      v180 = v195;
    }

    else
    {
      v180 = 0;
      v98 = 0;
    }

    v95 = v175;
    v191 = [(SATask *)a18 leafFrameAfterAddingStack:a8 leafOfCRootFramesReplacedBySwiftAsync:0];
    v44 = v174;
    v40 = v96;
    goto LABEL_153;
  }

  if (v21)
  {
    v174 = a13;
    v178 = 0;
    goto LABEL_141;
  }

  v178 = 0;
  v63 = 0;
LABEL_100:
  v74 = (v21 + 88);
  if (!v21)
  {
    v74 = (v22 + 32);
  }

  if (v63 == *v74)
  {
    v75 = [v39 basePriority];
    v76 = (v21 + 96);
    if (!v21)
    {
      v76 = (v22 + 40);
    }

    if (v75 == *v76)
    {
      v77 = [v39 scheduledPriority];
      v78 = (v21 + 98);
      if (!v21)
      {
        v78 = (v22 + 42);
      }

      if (v77 == *v78)
      {
        v79 = [v39 schedulerFlags];
        v80 = (v21 + 92);
        if (!v21)
        {
          v80 = (v22 + 36);
        }

        if (v79 == *v80)
        {
          v81 = [v39 voucherIdentifier];
          v82 = (v21 + 32);
          if (!v21)
          {
            v82 = (v22 + 8);
          }

          if (v81 == *v82)
          {
            v83 = [v39 threadQos];
            v84 = (v21 + 100);
            if (!v21)
            {
              v84 = (v22 + 44);
            }

            if (v83 == *v84)
            {
              v85 = [v39 threadRequestedQos];
              v86 = (v21 + 101);
              if (!v21)
              {
                v86 = (v22 + 45);
              }

              if (v85 == *v86)
              {
                v87 = [v39 threadRequestedQosOverride];
                v88 = (v21 + 102);
                if (!v21)
                {
                  v88 = (v22 + 46);
                }

                if (v87 == *v88)
                {
                  v89 = [v39 ioTier];
                  v90 = (v21 + 103);
                  if (!v21)
                  {
                    v90 = (v22 + 47);
                  }

                  if (v89 == *v90)
                  {
                    v91 = [v39 isDarwinBG];
                    v92 = (v21 ? v21 + 64 : v22 + 16);
                    if (v91 != ((*v92 & 0x10) == 0) && [v39 isIOPassive] != ((*v92 & 0x20) == 0) && objc_msgSend(v39, "isIdleWorkQueue") != ((v92[1] & 0x10) == 0) && objc_msgSend(v39, "isRunning") != ((v92[1] & 8) == 0) && v177 == objc_msgSend(v39, "isSuspended") && v40 && ((v51 ^ 1) & 1) == 0 && ((v178 ^ 1) & 1) == 0)
                    {
                      if (v39)
                      {
                        objc_setProperty_atomic(v39, v93, a6, 56);
                      }

                      [(SAThreadState *)v39 setEndSampleIndex:a7];
                      v94 = [v39 dispatchQueue];
                      v43 = [v94 identifier];

                      v24 = v179;
                      v95 = v175;
                      goto LABEL_255;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v98 = [v39 leafUserFrame];
  v180 = [v39 leafOfCRootFramesReplacedBySwiftAsync];
  v191 = [v39 leafKernelFrame];
  if (v39)
  {
    Property = objc_getProperty(v39, v99, 184, 1);
  }

  else
  {
    Property = 0;
  }

  v95 = Property;

LABEL_153:
  if (v40)
  {
    v101 = a15;
    v102 = [v39 name];
LABEL_157:
    __s1 = v102;
    goto LABEL_158;
  }

  v101 = a15;
  if (a10)
  {
    v102 = SANSStringForCString(a10);
    goto LABEL_157;
  }

  __s1 = 0;
LABEL_158:
  v103 = v180;
  if (v176)
  {
    v189 = [v39 waitInfo];
LABEL_165:
    v24 = v179;
    goto LABEL_168;
  }

  if (!a12)
  {
    v189 = 0;
    goto LABEL_165;
  }

  if (v44)
  {
    v104 = *(*v44 + 2);
    v105 = *(*v44 + 4);
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v24 = v179;
  v189 = [SAWaitInfo waitInfoWithKCDataWaitInfo:a12 portName:v182 flags:v104 domain:v105];
LABEL_168:
  if (v178)
  {
    v106 = [v39 turnstileInfo];
  }

  else
  {
    if (!a14)
    {
      v109 = 0;
      goto LABEL_177;
    }

    if (v101)
    {
      v107 = *(*v101 + 2);
      v108 = *(*v101 + 4);
    }

    else
    {
      v107 = 0;
      v108 = 0;
    }

    v106 = [SATurnstileInfo turnstileInfoWithKCDataTurnstileInfo:a14 portName:v181 flags:v107 domain:v108];
  }

  v109 = v106;
LABEL_177:
  v183 = v109;
  if (v19)
  {
    *&v170 = *(a1 + 232);
    *(&v170 + 1) = v189;
    *&v166 = v180;
    *(&v166 + 1) = v191;
    v110 = [SAThreadState stateWithKCDataThreadV4:v19 startTimestamp:a6 endTimestamp:a6 startSampleIndex:a7 endSampleIndex:a7 name:__s1 leafUserFrame:v98 leafOfCRootFramesReplacedBySwiftAsync:v166 leafKernelFrame:v170 machTimebase:v109 waitInfo:*(a1 + 248) turnstileInfo:a16 threadPolicyVersion:? threadInstructionCycles:?];
LABEL_185:
    v112 = v110;
    if (v110)
    {
      objc_setProperty_atomic(v110, v111, v95, 184);
      if (v177)
      {
        *(v112 + 11) |= 0x40u;
      }
    }

    if (v39)
    {
      v113 = [v39 userTimeInNs];
      if (v113 > [v112 userTimeInNs])
      {
        v114 = [v39 userTimeInNs];
        if (v112)
        {
          *(v112 + 17) = v114;
        }
      }

      v115 = [v39 systemTimeInNs];
      if (v115 > [v112 systemTimeInNs])
      {
        v116 = [v39 systemTimeInNs];
        if (v112)
        {
          *(v112 + 18) = v116;
        }
      }

      v117 = [v39 cycles];
      if (v117 > [v112 cycles])
      {
        v118 = [v39 cycles];
        if (v112)
        {
          *(v112 + 20) = v118;
        }
      }

      v119 = [v39 instructions];
      if (v119 > [v112 instructions])
      {
        v120 = [v39 instructions];
        if (v112)
        {
          *(v112 + 19) = v120;
        }
      }
    }

    if (v26)
    {
      [v26[1] addObject:v112];
      v194 = ([v26[1] count] - 1);
      if (v21)
      {
LABEL_203:
        v19 = a11;
        v43 = *(v21 + 40);
        if (v43)
        {
          v121 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v43];
          v122 = [a17 dispatchQueues];
          v123 = [v122 objectForKeyedSubscript:v121];

          if (!v123)
          {
            v123 = [SADispatchQueue dispatchQueueWithId:v43];
            [(SATask *)a17 addDispatchQueue:v123];
          }

          if (a11)
          {
            v124 = [v123 dispatchQueueLabel];

            if (!v124)
            {
              v126 = SANSStringForCString(a11);
              if (v126 && v123)
              {
                objc_setProperty_atomic_copy(v123, v125, v126, 32);
              }
            }
          }

          if (v112)
          {
            objc_storeWeak(v112 + 14, v123);
          }

          v127 = [(SARecipeState *)SADispatchQueueState stateWithThread:v26 threadStateIndex:v194];
          if (v123)
          {
            if (v123[24])
            {
              v128 = 0;
            }

            else
            {
              v128 = v123 + 24;
            }

            [(SARecipe *)v123 addState:v127 hasConcurrentExecution:v128];
          }

          v24 = v179;
          if (!v180)
          {
            if (!v112)
            {
              goto LABEL_254;
            }

            goto LABEL_232;
          }

          goto LABEL_225;
        }

        if (!a11)
        {
          if (v112)
          {
            objc_storeWeak(v112 + 14, 0);
            if (!v180)
            {
LABEL_232:
              objc_storeWeak(v112 + 15, 0);
LABEL_254:

LABEL_255:
              goto LABEL_256;
            }
          }

          else if (!v180)
          {
            v43 = 0;
            goto LABEL_254;
          }

LABEL_225:
          v129 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:-1];
          v130 = [a17 swiftTasks];
          v131 = [v130 objectForKeyedSubscript:v129];

          if (!v131)
          {
            v131 = [(SADispatchQueue *)SASwiftTask dispatchQueueWithId:?];
            [(SATask *)a17 addSwiftTask:v131];
          }

          if (v112)
          {
            objc_storeWeak(v112 + 15, v131);
          }

          v132 = [(SARecipeState *)SASwiftTaskState stateWithThread:v26 threadStateIndex:v194];
          if (v131)
          {
            [v131[1] addObject:v132];
            [v131[1] count];
          }

          v103 = v180;
          goto LABEL_254;
        }

        goto LABEL_236;
      }
    }

    else
    {
      v194 = 0;
      if (v21)
      {
        goto LABEL_203;
      }
    }

    v149 = [v39 dispatchQueue];
    v150 = v149;
    if (v149)
    {
      v43 = [v149 identifier];
      if (v112)
      {
        objc_storeWeak(v112 + 14, v150);
      }

      v151 = [(SARecipeState *)SADispatchQueueState stateWithThread:v26 threadStateIndex:v194];
      if (v150[24])
      {
        v152 = 0;
      }

      else
      {
        v152 = v150 + 24;
      }

      [(SARecipe *)v150 addState:v151 hasConcurrentExecution:v152];
    }

    else
    {
      v43 = 0;
    }

    v153 = [v39 swiftTask];
    if (v153)
    {
      if (v112)
      {
        objc_storeWeak(v112 + 15, v153);
      }

      v154 = [(SARecipeState *)SASwiftTaskState stateWithThread:v26 threadStateIndex:v194];
      [v153[1] addObject:v154];
      [v153[1] count];

      v103 = v180;
    }

    goto LABEL_254;
  }

  if (a3)
  {
    *&v171 = *(a1 + 232);
    *(&v171 + 1) = v189;
    *&v167 = v180;
    *(&v167 + 1) = v191;
    v110 = [SAThreadState stateWithKCDataThreadV2:a3 startTimestamp:a6 endTimestamp:a6 startSampleIndex:a7 endSampleIndex:a7 name:__s1 leafUserFrame:v98 leafOfCRootFramesReplacedBySwiftAsync:v167 leafKernelFrame:v171 machTimebase:v109 waitInfo:? turnstileInfo:?];
    goto LABEL_185;
  }

  if (a4)
  {
    *&v172 = v39;
    *(&v172 + 1) = v189;
    *&v168 = v180;
    *(&v168 + 1) = v191;
    v110 = [SAThreadState stateWithKCDataDeltaThreadV3:a4 startTimestamp:a6 endTimestamp:a6 startSampleIndex:a7 endSampleIndex:a7 name:__s1 leafUserFrame:v98 leafOfCRootFramesReplacedBySwiftAsync:v168 leafKernelFrame:v172 oldThreadState:v109 waitInfo:*(a1 + 248) turnstileInfo:? threadPolicyVersion:?];
    goto LABEL_185;
  }

  if (a5)
  {
    *&v173 = v39;
    *(&v173 + 1) = v189;
    *&v169 = v180;
    *(&v169 + 1) = v191;
    v110 = [SAThreadState stateWithKCDataDeltaThreadV2:a5 startTimestamp:a6 endTimestamp:a6 startSampleIndex:a7 endSampleIndex:a7 name:__s1 leafUserFrame:v98 leafOfCRootFramesReplacedBySwiftAsync:v169 leafKernelFrame:v173 oldThreadState:v109 waitInfo:? turnstileInfo:?];
    goto LABEL_185;
  }

  v157 = *__error();
  v158 = _sa_logt();
  if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v158, OS_LOG_TYPE_ERROR, "no thread snap later", buf, 2u);
  }

  *__error() = v157;
  _SASetCrashLogMessage(3602, "no thread snap later", v159, v160, v161, v162, v163, v164, v165);
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)addProcessInfoFromTailspin:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = [a3 objectForKeyedSubscript:0x1F5BBFEA0];
  v5 = -[SASampleStore lastTaskWithPid:](self, [v27 intValue]);
  if (v5)
  {
    v6 = [a3 objectForKeyedSubscript:0x1F5BBFEC0];
    if (v6)
    {
      v24 = v5;
      if ([v5 pid])
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        arch = self->_arch;
        v7 = CSArchitectureIsArm64() ^ 1;
      }

      v25 = v7;
      v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        do
        {
          v13 = 0;
          do
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v28 + 1) + 8 * v13);
            v15 = [v9 objectForKeyedSubscript:v14];
            v16 = uuidForString(v14);
            if (v16)
            {
              v17 = [SABinary binaryWithUUID:v16 absolutePath:0];
              v18 = [(SABinary *)v17 checkForSegmentWithCleanName:?];
              v19 = v25;
              if (v18)
              {
                v19 = 1;
              }

              if ((v19 & 1) == 0)
              {
                if (addProcessInfoFromTailspin__onceToken != -1)
                {
                  dispatch_once(&addProcessInfoFromTailspin__onceToken, &__block_literal_global_275);
                }

                v18 = [(SABinary *)v17 segmentWithCleanName:0 length:0x7FFFFFFFFFFFFFFFLL offsetIntoBinary:?];
              }

              v20 = [v15 unsignedLongLongValue];
              v21 = [v27 intValue] == 0;
              if (v18)
              {
                [SABinaryLoadInfo binaryLoadInfoWithSegment:v18 loadAddress:v20 isInKernelAddressSpace:v21 exclave:0];
              }

              else
              {
                [SABinaryLoadInfo binaryLoadInfoWithBinary:v17 loadAddress:v20 isInKernelAddressSpace:v21 exclave:0];
              }
              v22 = ;
              [v26 addObject:v22];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v11);
      }

      v5 = v24;
      [(SATask *)v24 addImageInfos:v26];
      *(v24 + 79) = 1;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (unint64_t)addKCDataStackshots:(id)a3 createSeparateSamplePerStackshot:(BOOL)a4
{
  v5 = a4;
  v8 = 0;
  v9 = 0;
  v22 = 0;
  v28 = *MEMORY[0x1E69E9840];
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  *&v4 = 134218242;
  v21 = v4;
  do
  {
    if (v9 >= [a3 length])
    {
      break;
    }

    if (v5 || !v8)
    {
      v11 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:0.0];

      if ([(SASampleStore *)self dataStyle]== 1)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = [(NSMutableArray *)self->_sampleTimestamps count];
      }

      v8 = v11;
    }

    v23 = 0;
    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:objc_msgSend(a3 length:"bytes") + v9 freeWhenDone:{objc_msgSend(a3, "length") - v9, 0}];
    v13 = [(SASampleStore *)self _addKCDataStackshot:v12 timestamp:v8 sampleIndex:v10 shouldSkipSampleOut:&v23 primaryDataIsKPerf:0 addStaticInfoOnly:0 ktraceDataUnavailable:0];
    if (v13 && (v23 & 1) == 0)
    {
      ++v22;
      if (v5)
      {
        if ([(SASampleStore *)self dataStyle]== 1)
        {
          startTime = self->_startTime;
          ++self->_numSamples;
          if (!startTime)
          {
            objc_storeStrong(&self->_startTime, v8);
          }

          objc_storeStrong(&self->_endTime, v8);
        }

        else
        {
          [(NSMutableArray *)self->_sampleTimestamps addObject:v8];
        }

        if (self->_nextSampleIsFirstSamplingAllThreads)
        {
          objc_storeStrong(&self->_timeWhenTransitionedToSamplingAllThreads, v8);
          self->_nextSampleIsFirstSamplingAllThreads = 0;
        }

        if (self->_nextSampleIsFirstSamplingAllProcesses)
        {
          objc_storeStrong(&self->_timeWhenTransitionedToSamplingAllProcesses, v8);
          self->_nextSampleIsFirstSamplingAllProcesses = 0;
        }
      }
    }

    else
    {
      v14 = *__error();
      v15 = _sa_logt();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = "";
        if (v23)
        {
          v17 = ", and should skip";
        }

        *buf = v21;
        v25 = v13;
        v26 = 2080;
        v27 = v17;
        _os_log_debug_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_DEBUG, "KCData stackshot parsed %ld bytes%s", buf, 0x16u);
      }

      *__error() = v14;
    }

    v9 += v13;
  }

  while (v13);
  if (!v5 && v22)
  {
    if ([(SASampleStore *)self dataStyle]!= 1)
    {
      [(NSMutableArray *)self->_sampleTimestamps addObject:v8];
      v18 = self->_startTime;
      ++self->_numSamples;
      if (!v18)
      {
        objc_storeStrong(&self->_startTime, v8);
      }

      objc_storeStrong(&self->_endTime, v8);
    }

    if (self->_nextSampleIsFirstSamplingAllThreads)
    {
      objc_storeStrong(&self->_timeWhenTransitionedToSamplingAllThreads, v8);
      self->_nextSampleIsFirstSamplingAllThreads = 0;
    }

    if (self->_nextSampleIsFirstSamplingAllProcesses)
    {
      objc_storeStrong(&self->_timeWhenTransitionedToSamplingAllProcesses, v8);
      self->_nextSampleIsFirstSamplingAllProcesses = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v22;
}

- (char)_addKCDataStackshot:(void *)a3 timestamp:(unint64_t)a4 sampleIndex:(_BYTE *)a5 shouldSkipSampleOut:(unsigned int)a6 primaryDataIsKPerf:(char)a7 addStaticInfoOnly:(uint64_t)a8 ktraceDataUnavailable:
{
  v354 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_18;
  }

  if (!a2 || (v14 = result, [a2 length] <= 0xF))
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_DEFAULT, "WARNING: No buffer", buf, 2u);
    }

LABEL_15:

    *__error() = v15;
    goto LABEL_16;
  }

  v17 = [a2 bytes];
  v18 = [a2 length];
  v318 = v18;
  v19 = v18 + v17;
  v20 = (v17 + 16);
  if (v17 + 16 > (v18 + v17) || (v21 = *(v17 + 4), v20 + v21 > v19))
  {
LABEL_13:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v318;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "Overran kcdata buffer (length %lu)", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v22 = v17;
  while (*v22 != -242132755)
  {
    v23 = v22 + v21;
    v24 = v23 + 32;
    if ((v23 + 32) <= v19)
    {
      v22 = v23 + 16;
      v21 = *(v23 + 5);
      if (&v24[v21] <= v19)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  v275 = a7;
  v276 = a4;
  obj = a3;
  v290 = v17;
  v343 = v17;
  v344 = v18 + v17;
  v302 = a6;
  if ((a6 & 1) == 0)
  {
    v26 = *(v14 + 55);
    *(v14 + 54) |= 1uLL;
    if (!v26)
    {
      *(v14 + 55) = 2;
    }
  }

  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(v14 + 17), "count")}];
  v339 = 0u;
  v340 = 0u;
  v341 = 0u;
  v342 = 0u;
  v319 = v14;
  v28 = *(v14 + 17);
  v29 = [v28 countByEnumeratingWithState:&v339 objects:v350 count:16];
  if (v29)
  {
    v30 = *v340;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v340 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v339 + 1) + 8 * i);
        if (v32 && *(v32 + 32))
        {
          v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
          [v27 setObject:v32 forKeyedSubscript:v33];
        }
      }

      v29 = [v28 countByEnumeratingWithState:&v339 objects:v350 count:16];
    }

    while (v29);
  }

  v298 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v289 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (v302)
  {
    v286 = 0;
    v34 = v290;
    goto LABEL_129;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  LOBYTE(v40) = 0;
  v41 = 0;
  v42 = &buf[16];
  context = -1;
  v43 = v290;
  while (1)
  {
    v44 = v43[1];
    if (v20 + v44 > v19 || (v45 = *v43, *v43 == -242132755))
    {
LABEL_127:
      v35 = v35;
      v286 = v35;
      goto LABEL_128;
    }

    if ((v45 & 0xFFFFFFF0) == 0x20)
    {
      v46 = 17;
    }

    else
    {
      v46 = *v43;
    }

    if ((v46 - 1) >= 6)
    {
      v47 = (v43 + 4);
    }

    else
    {
      v47 = (v43 + 12);
    }

    if (v40)
    {
      LOBYTE(v40) = v46 != 20 || v41 != *(v43 + 1);
      goto LABEL_67;
    }

    LOBYTE(v40) = 0;
    if (v46 > 2308)
    {
      if (v46 != 2309 && v46 != 2352 && v46 != 2368)
      {
        goto LABEL_67;
      }

      LOBYTE(v40) = 0;
      v54 = *(v43 + 2);
LABEL_66:
      context = v54;
      goto LABEL_67;
    }

    if (v46 == 17)
    {
      break;
    }

    if (v46 == 19)
    {
      if (v44 < 4 || v45 != 19)
      {
        goto LABEL_527;
      }

      v58 = v43[4];
      v59 = *(v43 + 1);
      if ((v58 == 2353 || v58 == 2307) && (v36 & 1) == 0)
      {
        LOBYTE(v40) = 0;
        v36 = 1;
        v37 = *(v43 + 1);
      }

      else
      {
        if (v36)
        {
          v41 = *(v43 + 1);
        }

        LOBYTE(v40) = v36;
      }
    }

    else if (v46 == 20)
    {
      if (*(v43 + 1) != v37)
      {
        goto LABEL_100;
      }

      if (v39 && v38 && context != -1)
      {
        v299 = v42;
        v291 = v41;
        v303 = v35;
        if (!v35)
        {
          v48 = v38;
          v303 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v38 = v48;
        }

        v49 = v39;
        v287 = v38;
        v50 = v38;
        do
        {
          v51 = [MEMORY[0x1E696AD98] numberWithInt:*v50];
          v52 = [v303 objectForKey:v51];
          if (!v52)
          {
            v52 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            [v303 setObject:v52 forKey:v51];
          }

          v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:context];
          [v52 addObject:v53];

          ++v50;
          --v49;
        }

        while (v49);
        v41 = v291;
        v38 = v287;
        goto LABEL_109;
      }

      if (v38)
      {
        v299 = v42;
        v303 = v35;
LABEL_109:
        free(v38);
        LOBYTE(v40) = 0;
        v39 = 0;
        v38 = 0;
        v37 = 0;
        v36 = 0;
        context = -1;
        v35 = v303;
        v42 = v299;
        goto LABEL_67;
      }

      LOBYTE(v40) = 0;
      v39 = 0;
      v37 = 0;
      v36 = 0;
      v54 = -1;
      goto LABEL_66;
    }

LABEL_67:
    v43 = (v20 + v43[1]);
    v20 = v43 + 4;
    if ((v43 + 4) > v19)
    {
      goto LABEL_127;
    }
  }

  if (v45 == 17 || (v45 & 0xFFFFFFF0) == 0x20)
  {
    v55 = *(v43 + 1);
    if (v55)
    {
      if (v45 != 17)
      {
        v61 = v44 - (*v43 & 0xF);
        if (v44 < (*v43 & 0xFu))
        {
          goto LABEL_527;
        }

        if (v61 < v55)
        {
          goto LABEL_527;
        }

        v60 = v61 / v55;
        if (v61 % v55)
        {
          goto LABEL_527;
        }

        v56 = HIDWORD(v55);
        goto LABEL_95;
      }

      v56 = HIDWORD(v55);
      if (SHIDWORD(v55) <= 2313)
      {
        if (SHIDWORD(v55) <= 2073)
        {
          if (HIDWORD(v55) == 48)
          {
            v57 = 20;
          }

          else
          {
            if (HIDWORD(v55) != 49)
            {
              goto LABEL_527;
            }

            v57 = 24;
          }

          goto LABEL_117;
        }

        if (HIDWORD(v55) != 2074)
        {
          if (HIDWORD(v55) != 2311)
          {
            goto LABEL_527;
          }

          v57 = 4;
          goto LABEL_117;
        }
      }

      else if (SHIDWORD(v55) <= 2315)
      {
        if (HIDWORD(v55) != 2314)
        {
          goto LABEL_114;
        }
      }

      else if (HIDWORD(v55) != 2316)
      {
        if (HIDWORD(v55) != 2317)
        {
          if (HIDWORD(v55) != 2369)
          {
            goto LABEL_527;
          }

          v57 = 48;
          goto LABEL_117;
        }

LABEL_114:
        v57 = 16;
LABEL_117:
        if (v44 / v57 < v55 || v44 % v55 > 0xF)
        {
          goto LABEL_527;
        }

LABEL_119:
        LOBYTE(v40) = 0;
        if (v56 > 2313)
        {
          if ((v56 - 2314) < 4 || v56 == 2369)
          {
            goto LABEL_67;
          }

          goto LABEL_89;
        }

        if ((v56 - 48) < 2 || v56 == 2074)
        {
          goto LABEL_67;
        }

        if (v56 != 2311)
        {
          goto LABEL_89;
        }

        v60 = 4;
LABEL_95:
        if (((v56 == 2311) & v36) == 1)
        {
          v281 = *(v43 + 1);
          v288 = v37;
          v300 = v42;
          v292 = v41;
          v304 = v35;
          v62 = v55 == 0;
          v63 = v55;
          v38 = malloc_type_calloc(v55, 4uLL, 0x100004052888210uLL);
          v40 = 0;
          if (v62)
          {
            v39 = 0;
            v36 = 1;
            v35 = v304;
            v41 = v292;
            v42 = v300;
            v37 = v288;
          }

          else
          {
            v64 = 0;
            v65 = MEMORY[0x1E69E9820];
            v42 = v300;
            v35 = v304;
            v37 = v288;
            do
            {
              *buf = v65;
              *&buf[8] = 3221225472;
              *&buf[16] = __SAKCDataReadAheadDonatingUniquePids_block_invoke;
              *&buf[24] = &__block_descriptor_40_e13_v20__0I8r_i12l;
              *&v38[v64] = *&v47[v40];
              v64 += 4;
              v40 += v60;
            }

            while (4 * v63 != v64);
            LOBYTE(v40) = 0;
            v352 = v38;
            v36 = 1;
            v39 = v281;
            v41 = v292;
          }

          goto LABEL_67;
        }

LABEL_100:
        LOBYTE(v40) = 0;
        goto LABEL_67;
      }

      v57 = 8;
      goto LABEL_117;
    }

    if (v44)
    {
      goto LABEL_527;
    }

    v56 = HIDWORD(v55);
    if (v45 == 17)
    {
      goto LABEL_119;
    }

LABEL_89:
    v60 = 0;
    goto LABEL_95;
  }

LABEL_527:
  v286 = 0;
LABEL_128:

  v34 = v343;
  v19 = v344;
  v20 = v343 + 4;
LABEL_129:
  v301 = objc_alloc_init(SAFrameIterator);
  [(SAFrameIterator *)v301 setBacktracer:2];
  if (v20 <= v19)
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = v20;
    v76 = v34;
    while (1)
    {
      v77 = v76[1];
      if (v75 + v77 > v19 || (v78 = *v76, *v76 == -242132755))
      {
LABEL_205:
        v305 = v68;
        v66 = 0;
        *buf = v34;
        *&buf[8] = v19;
        v112 = v19;
        v113 = v20;
        v114 = v34;
        v271 = v67;
        while (1)
        {
          v115 = v114[1];
          if (v113 + v115 > v112)
          {
LABEL_216:
            v277 = v305;
            goto LABEL_217;
          }

          if (*v114 == 19)
          {
            if (v114[4] == 2377)
            {
              if (!v66)
              {
                v66 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
              }

              if ([SASampleStore parseKCDataExclavesContainer:v319 exclaveInfo:buf primaryDataIsKPerf:v66 ktraceDataUnavailable:v302])
              {
                v277 = v305;
                v285 = 0;
                goto LABEL_218;
              }

              v114 = *buf;
              v112 = *&buf[8];
              v115 = *(*buf + 4);
            }
          }

          else if (*v114 == -242132755)
          {
            goto LABEL_216;
          }

          v116 = v114 + v115;
          v114 = (v116 + 16);
          *buf = v116 + 16;
          v113 = (v116 + 32);
          if ((v116 + 32) > v112)
          {
            goto LABEL_216;
          }
        }
      }

      v79 = (v78 & 0xFFFFFFF0) == 0x20 ? 17 : *v76;
      if ((v79 - 1) > 5)
      {
        break;
      }

      v80 = (v76 + 12);
      v81 = v76[2] & 0xF;
      v82 = v77 >= v81;
      v83 = v77 - v81;
      if (!v82)
      {
        v83 = 0;
      }

      v84 = v83 - 32;
      if (v73)
      {
LABEL_184:
        v73 = v79 != 20 || v74 != *(v76 + 1);
        goto LABEL_187;
      }

LABEL_141:
      v73 = 0;
      if (v79 > 2356)
      {
        if (v79 == 2357)
        {
          if (v69)
          {
            v73 = 0;
            v69 = 1;
            v71 = v80;
          }

          else
          {
            v279 = v70;
            v284 = v72;
            v294 = v67;
            contextb = v74;
            v307 = v68;
            v98 = *__error();
            v99 = _sa_logt();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              v111 = *v80;
              *buf = 67109120;
              *&buf[4] = v111;
              _os_log_error_impl(&dword_1E0E2F000, v99, OS_LOG_TYPE_ERROR, "Port label info %d not in port label container", buf, 8u);
            }

            v100 = __error();
            v73 = 0;
            v69 = 0;
            *v100 = v98;
            v71 = v80;
            v68 = v307;
            v74 = contextb;
            v67 = v294;
            v70 = v279;
            v72 = v284;
          }
        }

        else if (v79 == 2358)
        {
          if (*(v80 + (v84 - 1)))
          {
            v306 = v69;
            v273 = v71;
            v278 = v70;
            v283 = v72;
            v293 = v67;
            contexta = v74;
            v90 = v68;
            v91 = *__error();
            v92 = _sa_logt();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E0E2F000, v92, OS_LOG_TYPE_DEFAULT, "WARNING: port name non NULL-terminated", buf, 2u);
            }

            v93 = __error();
            v73 = 0;
            *v93 = v91;
            v68 = v90;
            v74 = contexta;
            v67 = v293;
            v70 = v278;
            v72 = v283;
            v71 = v273;
            v69 = v306;
          }

          else if (v69)
          {
            v73 = 0;
            v69 = 1;
            v72 = v80;
          }

          else
          {
            v274 = v71;
            v280 = v70;
            v296 = v67;
            contextd = v74;
            v309 = v68;
            v105 = *__error();
            v106 = _sa_logt();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = v80;
              _os_log_error_impl(&dword_1E0E2F000, v106, OS_LOG_TYPE_ERROR, "Port name %s not in port label container", buf, 0xCu);
            }

            v107 = __error();
            v73 = 0;
            v69 = 0;
            *v107 = v105;
            v72 = v80;
            v68 = v309;
            v74 = contextd;
            v67 = v296;
            v70 = v280;
            v71 = v274;
          }
        }
      }

      else if (v79 == 19)
      {
        if (v77 < 4 || v78 != 19)
        {
          goto LABEL_205;
        }

        v94 = *(v76 + 1);
        v95 = (v76[4] != 2356) | v69;
        if (v69)
        {
          v96 = *(v76 + 1);
        }

        else
        {
          v96 = v74;
        }

        if ((v76[4] != 2356) | v69 & 1)
        {
          v74 = v96;
          v73 = v69;
        }

        else
        {
          v73 = 0;
        }

        if (!((v76[4] != 2356) | v69 & 1))
        {
          v72 = 0;
          v71 = 0;
          v70 = *(v76 + 1);
          v69 = 1;
        }
      }

      else if (v79 == 20)
      {
        if ((v69 & (*(v76 + 1) == v70)) == 1)
        {
          v272 = v71;
          if (v71 && v72)
          {
            v282 = v72;
            v85 = v67;
            v86 = v67 + 1;
            v87 = reallocf(v68, 16 * (v67 + 1));
            if (v87)
            {
              v68 = v87;
              v73 = 0;
              v70 = 0;
              v69 = 0;
              v88 = &v87[16 * v85];
              *v88 = v272;
              *(v88 + 1) = v282;
              v67 = v86;
              v72 = 0;
              v71 = 0;
            }

            else
            {
              contexte = v74;
              v108 = *__error();
              v109 = _sa_logt();
              if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109120;
                *&buf[4] = v86;
                _os_log_fault_impl(&dword_1E0E2F000, v109, OS_LOG_TYPE_FAULT, "unable to realloc %u port label infos", buf, 8u);
              }

              v110 = __error();
              v73 = 0;
              v72 = 0;
              v71 = 0;
              v70 = 0;
              v69 = 0;
              v68 = 0;
              v67 = 0;
              *v110 = v108;
              v74 = contexte;
            }
          }

          else
          {
            v101 = v72;
            v295 = v67;
            contextc = v74;
            v308 = v68;
            v102 = *__error();
            v103 = _sa_logt();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109378;
              *&buf[4] = v272 != 0;
              *&buf[8] = 2080;
              *&buf[10] = v101;
              _os_log_error_impl(&dword_1E0E2F000, v103, OS_LOG_TYPE_ERROR, "Port label without both info (%d) and name (%s)", buf, 0x12u);
            }

            v104 = __error();
            v73 = 0;
            v72 = 0;
            v71 = 0;
            v70 = 0;
            v69 = 0;
            *v104 = v102;
            v68 = v308;
            v74 = contextc;
            v67 = v295;
          }
        }

        else
        {
          v73 = 0;
        }
      }

LABEL_187:
      v76 = (v75 + v76[1]);
      v75 = v76 + 4;
      if ((v76 + 4) > v19)
      {
        goto LABEL_205;
      }
    }

    if (v79 > 2309)
    {
      if (v79 == 2312)
      {
        if (v77 == 32 && (v76[2] & 0x8F) == 0)
        {
          v84 = 24;
          goto LABEL_183;
        }
      }

      else if (v79 == 2310 && v77 == 112 && (v76[2] & 0x8F) == 0)
      {
        v84 = 104;
        goto LABEL_183;
      }
    }

    else
    {
      v89 = v79 == 17 || v79 == 19;
      v84 = v76[1];
      if (v89)
      {
        goto LABEL_183;
      }
    }

    v97 = v76[2] & 0xF;
    v82 = v77 >= v97;
    v84 = v77 - v97;
    if (!v82)
    {
      v84 = 0;
    }

LABEL_183:
    v80 = (v76 + 4);
    if (v73)
    {
      goto LABEL_184;
    }

    goto LABEL_141;
  }

  v305 = 0;
  v271 = 0;
  v277 = 0;
  v66 = 0;
  *buf = v34;
  *&buf[8] = v19;
LABEL_217:
  v285 = [v66 copy];
LABEL_218:

  if (qword_1EDD02F68 != -1)
  {
    dispatch_once(&qword_1EDD02F68, &__block_literal_global_2042);
  }

  if (byte_1EDD02EF1 == 1)
  {
    v117 = *__error();
    fwrite("\n\nNEXT STACKSHOT\n\n", 0x12uLL, 1uLL, *MEMORY[0x1E69E9858]);
    *__error() = v117;
  }

  if (v20 > v19)
  {
    v297 = 0;
    v118 = 0;
    goto LABEL_224;
  }

  v118 = 0;
  v270 = 0;
  v297 = 0;
  v134 = *MEMORY[0x1E695E468];
  while (2)
  {
    if (v20 + v34[1] > v19 || *v34 == -242132755)
    {
      goto LABEL_224;
    }

    contextf = objc_autoreleasePoolPush();
    if (v118)
    {
      v118 = 1;
      goto LABEL_519;
    }

    KCLogIter(v34, v19, 0);
    v135 = *v34;
    v136 = *v34 & 0xFFFFFFF0;
    if (v136 == 32)
    {
      v137 = 17;
    }

    else
    {
      v137 = *v34;
    }

    if ((v137 - 1) > 5)
    {
      if (v137 <= 2309)
      {
        if (v137 == 17 || v137 == 19)
        {
          v139 = v34[1];
          v142 = v139;
LABEL_273:
          v138 = v34 + 4;
          goto LABEL_274;
        }

        goto LABEL_268;
      }

      if (v137 == 2310)
      {
        v139 = v34[1];
        if (v139 == 112 && (v34[2] & 0x8F) == 0)
        {
          v142 = 104;
          goto LABEL_273;
        }
      }

      else
      {
        if (v137 != 2312)
        {
LABEL_268:
          v139 = v34[1];
          goto LABEL_271;
        }

        v139 = v34[1];
        if (v139 == 32 && (v34[2] & 0x8F) == 0)
        {
          v142 = 24;
          goto LABEL_273;
        }
      }

LABEL_271:
      v143 = v34[2] & 0xF;
      v82 = v139 >= v143;
      v142 = v139 - v143;
      if (!v82)
      {
        v142 = 0;
      }

      goto LABEL_273;
    }

    v138 = v34 + 12;
    v139 = v34[1];
    v140 = v34[2] & 0xF;
    v82 = v139 >= v140;
    v141 = v139 - v140;
    if (!v82)
    {
      v141 = 0;
    }

    v142 = v141 - 32;
LABEL_274:
    v118 = 0;
    if (v137 > 2311)
    {
      if (v137 <= 2331)
      {
        if (v137 == 2312)
        {
          if (v142 < 0x28)
          {
            goto LABEL_564;
          }

          if (qword_1EDD02F70 != -1)
          {
            dispatch_once(&qword_1EDD02F70, &__block_literal_global_2047);
          }

          if (byte_1EDD02EF2)
          {
LABEL_564:
            if (!uuid_is_null(v138 + 8))
            {
              v187 = [(SASampleStore *)v319 sharedCacheWithUUID:*v138 slide:-1 slidBaseAddress:?];
              v188 = *(v319 + 1184);
              *(v319 + 1184) = v187;
            }
          }

          else if (![v27 count] && !uuid_is_null(v138 + 8))
          {
            v219 = [(SASampleStore *)v319 sharedCacheWithUUID:*v138 slide:v138[4] slidBaseAddress:?];
            v220 = *(v319 + 1184);
            *(v319 + 1184) = v219;
          }

          goto LABEL_517;
        }

        if (v137 == 2318)
        {
          if (!*(v319 + 560))
          {
            v189 = SANSStringForCString(v138);
            v190 = *(v319 + 560);
            *(v319 + 560) = v189;
          }

          goto LABEL_517;
        }

        if (v137 != 2319)
        {
          goto LABEL_518;
        }

        v146 = v319;
        if (!*(v319 + 520))
        {
          v147 = SANSStringForCString(v138);
          v148 = *(v319 + 520);
          *(v319 + 520) = v147;

          v146 = v319;
        }

        if (*(v146 + 240))
        {
          goto LABEL_517;
        }

        if ([*(v146 + 520) rangeOfString:@"X86_64" options:1] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([*(v319 + 520) rangeOfString:@"ARM64" options:1] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([*(v319 + 520) rangeOfString:@"ARM" options:1] == 0x7FFFFFFFFFFFFFFFLL)
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke_297;
              block[3] = &unk_1E86F5698;
              block[4] = v319;
              if (qword_1EDD02EF8 != -1)
              {
                dispatch_once(&qword_1EDD02EF8, block);
              }

              goto LABEL_517;
            }

            v118 = 0;
            v223 = v319;
            v224 = 12;
          }

          else
          {
            v118 = 0;
            v223 = v319;
            v224 = 16777228;
          }
        }

        else
        {
          v118 = 0;
          v223 = v319;
          v224 = 0x301000007;
        }

        *(v223 + 240) = v224;
        goto LABEL_518;
      }

      if (v137 <= 2374)
      {
        if (v137 != 2332)
        {
          if (v137 == 2338)
          {
            v118 = 0;
            *(v319 + 248) = *v138;
          }

          goto LABEL_518;
        }

        if (!uuid_is_null(v138 + 8))
        {
          v337 = 0u;
          v338 = 0u;
          v335 = 0u;
          v336 = 0u;
          v209 = *(v319 + 128);
          v210 = [v209 countByEnumeratingWithState:&v335 objects:v349 count:16];
          if (v210)
          {
            v211 = *v336;
LABEL_453:
            v212 = 0;
            while (1)
            {
              if (*v336 != v211)
              {
                objc_enumerationMutation(v209);
              }

              v213 = *(*(&v335 + 1) + 8 * v212);
              if ([v213 matchesUUID:v138 + 1 loadAddress:*v138])
              {
                break;
              }

              if (v210 == ++v212)
              {
                v210 = [v209 countByEnumeratingWithState:&v335 objects:v349 count:16];
                if (v210)
                {
                  goto LABEL_453;
                }

                goto LABEL_459;
              }
            }

            v221 = v213;

            if (v221)
            {
              goto LABEL_477;
            }
          }

          else
          {
LABEL_459:
          }

          v222 = uuidForBytes((v138 + 1));
          v221 = [SAKernelCache kernelCacheWithUUID:v222 loadAddress:*v138];

          [*(v319 + 128) addObject:v221];
LABEL_477:

          goto LABEL_517;
        }

        v183 = *__error();
        v184 = _sa_logt();
        if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v184, OS_LOG_TYPE_ERROR, "Kernel cache UUID is all zeros", buf, 2u);
        }

LABEL_447:

        v118 = 0;
        *__error() = v183;
        goto LABEL_518;
      }

      if (v137 == 2375)
      {
        if (!*(v319 + 552))
        {
          v185 = SANSStringForCString(v138);
          v186 = *(v319 + 552);
          *(v319 + 552) = v185;
        }

        goto LABEL_517;
      }

      if (v137 != 1503811591)
      {
        goto LABEL_518;
      }

      v268 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1000];
      v149 = v34 + 4;
      if ((v34 + 4) > v19)
      {
LABEL_443:
        v182 = 0;
        goto LABEL_444;
      }

      v269 = 0;
      v150 = 0;
      v266 = 0;
      v151 = 0;
      v152 = 0;
LABEL_313:
      v153 = v34[1];
      if (v149 + v153 > v19 || (v154 = *v34, *v34 == -242132755))
      {
LABEL_391:
        if (!v269)
        {
          goto LABEL_443;
        }

        v179 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v269, "count")}];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __SAKCDataReadAheadJetsamCoalitionInfo_block_invoke_2;
        *&buf[24] = &unk_1E86F5E18;
        v352 = v268;
        v180 = v179;
        v353 = v180;
        [v269 enumerateKeysAndObjectsUsingBlock:buf];
        v181 = v353;
        v182 = v180;

LABEL_393:
LABEL_444:

        v118 = 0;
        v297 = v182;
LABEL_518:
        v34 = v343;
        v19 = v344;
LABEL_519:
        objc_autoreleasePoolPop(contextf);
        v230 = v34 + v34[1];
        v34 = (v230 + 16);
        v343 = (v230 + 16);
        v20 = (v230 + 32);
        if ((v230 + 32) > v19)
        {
LABEL_224:
          v119 = 1;
          goto LABEL_225;
        }

        continue;
      }

      if ((v154 & 0xFFFFFFF0) == 0x20)
      {
        v155 = 17;
      }

      else
      {
        v155 = *v34;
      }

      if ((v155 - 1) >= 6)
      {
        v156 = v34 + 4;
      }

      else
      {
        v156 = v34 + 12;
      }

      if (v151)
      {
        v151 = v155 != 20 || v152 != *(v34 + 1);
        goto LABEL_390;
      }

      v151 = 0;
      if (v155 > 19)
      {
        if (v155 == 20)
        {
          v151 = 0;
          v163 = *(v34 + 1);
          v164 = v266;
          v89 = v163 == v266;
          v165 = v163 != v266;
          if (v89)
          {
            v164 = 0;
          }

          v266 = v164;
          v150 = v165 & v150;
        }

        else
        {
          if (v155 == 2309)
          {
            v157 = v150;
            v158 = v152;
            v166 = [MEMORY[0x1E696AD98] numberWithInt:v34[25]];
            v167 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v34 + 2)];
            [v268 setObject:v166 forKeyedSubscript:v167];
          }

          else
          {
            if (v155 != 2352)
            {
              goto LABEL_390;
            }

            v157 = v150;
            v158 = v152;
            v159 = [MEMORY[0x1E696AD98] numberWithInt:v34[10]];
            v160 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v34 + 2)];
            [v268 setObject:v159 forKeyedSubscript:v160];
          }

          v151 = 0;
          v152 = v158;
          v150 = v157;
        }

LABEL_390:
        v34 = (v149 + v34[1]);
        v149 = v34 + 4;
        if ((v34 + 4) > v19)
        {
          goto LABEL_391;
        }

        goto LABEL_313;
      }

      if (v155 != 17)
      {
        if (v155 == 19)
        {
          if (v153 < 4 || v154 != 19)
          {
            goto LABEL_499;
          }

          v161 = v34[4];
          v162 = *(v34 + 1);
          if ((v161 == 2353 || v161 == 2307) && (v150 & 1) == 0)
          {
            v151 = 0;
            v150 = 1;
            v266 = *(v34 + 1);
          }

          else
          {
            if (v150)
            {
              v152 = *(v34 + 1);
            }

            v151 = v150;
          }
        }

        goto LABEL_390;
      }

      if (v154 != 17 && (v154 & 0xFFFFFFF0) != 0x20)
      {
LABEL_499:
        v182 = 0;
        goto LABEL_393;
      }

      v168 = *(v34 + 1);
      if (!v168)
      {
        if (v153)
        {
          goto LABEL_499;
        }

        v169 = HIDWORD(v168);
        if (v154 == 17)
        {
          goto LABEL_377;
        }

        goto LABEL_381;
      }

      if (v154 == 17)
      {
        v169 = HIDWORD(v168);
        if (SHIDWORD(v168) <= 2313)
        {
          if (SHIDWORD(v168) <= 2073)
          {
            if (HIDWORD(v168) == 48)
            {
              v170 = 20;
            }

            else
            {
              if (HIDWORD(v168) != 49)
              {
                goto LABEL_499;
              }

              v170 = 24;
            }

            goto LABEL_375;
          }

          if (HIDWORD(v168) != 2074)
          {
            if (HIDWORD(v168) != 2311)
            {
              goto LABEL_499;
            }

            v170 = 4;
            goto LABEL_375;
          }
        }

        else if (SHIDWORD(v168) <= 2315)
        {
          if (HIDWORD(v168) != 2314)
          {
            goto LABEL_372;
          }
        }

        else if (HIDWORD(v168) != 2316)
        {
          if (HIDWORD(v168) != 2317)
          {
            if (HIDWORD(v168) != 2369)
            {
              goto LABEL_499;
            }

            v170 = 48;
            goto LABEL_375;
          }

LABEL_372:
          v170 = 16;
LABEL_375:
          if (v153 / v170 < v168 || v153 % v168 > 0xF)
          {
            goto LABEL_499;
          }

LABEL_377:
          if (((v169 - 2311) > 0x3A || ((1 << (v169 - 7)) & 0x400000000000079) == 0) && (v169 - 48) >= 2 && v169 != 2074)
          {
LABEL_381:
            v172 = 0;
LABEL_382:
            if (v169 == 2336)
            {
              if (!v269)
              {
                v173 = v150;
                v174 = v152;
                v269 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v168];
                v152 = v174;
                v150 = v173;
              }

              if (v168)
              {
                v264 = v150;
                v265 = v152;
                v175 = 0;
                v267 = MEMORY[0x1E69E9820];
                v176 = v168;
                do
                {
                  v345[0] = v267;
                  v345[1] = 3221225472;
                  v345[2] = __SAKCDataReadAheadJetsamCoalitionInfo_block_invoke;
                  v345[3] = &unk_1E86F5DF0;
                  v177 = v269;
                  v346 = v177;
                  __SAKCDataReadAheadJetsamCoalitionInfo_block_invoke(v345, v178, (v156 + v175));

                  v175 += v172;
                  --v176;
                }

                while (v176);
                v151 = 0;
                v269 = v177;
                v152 = v265;
                v150 = v264;
                goto LABEL_390;
              }
            }
          }

          v151 = 0;
          goto LABEL_390;
        }

        v170 = 8;
        goto LABEL_375;
      }

      v171 = v153 - (*v34 & 0xF);
      if (v153 < (*v34 & 0xFu))
      {
        goto LABEL_499;
      }

      if (v171 < v168)
      {
        goto LABEL_499;
      }

      v172 = v171 / v168;
      if (v171 % v168)
      {
        goto LABEL_499;
      }

      v169 = HIDWORD(v168);
      goto LABEL_382;
    }

    break;
  }

  if (v137 > 49)
  {
    switch(v137)
    {
      case '2':
        v191 = *(v138 + 1);
        if (!v191 || !*v138)
        {
          v183 = *__error();
          v184 = _sa_logt();
          if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
          {
            v225 = *v138;
            v226 = *(v138 + 1);
            *buf = 67109376;
            *&buf[4] = v225;
            *&buf[8] = 1024;
            *&buf[10] = v226;
            _os_log_debug_impl(&dword_1E0E2F000, v184, OS_LOG_TYPE_DEBUG, "Bad timebase: %d/%d", buf, 0xEu);
          }

          goto LABEL_447;
        }

        v192 = v319;
        v193 = *(v319 + 236);
        if (v193 && v191 != v193 || (v194 = *(v319 + 232)) != 0 && *v138 != v194)
        {
          v195 = *__error();
          v196 = _sa_logt();
          if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
          {
            v197 = *(v319 + 232);
            v198 = *(v319 + 236);
            v199 = *v138;
            v200 = *(v138 + 1);
            *buf = 67109888;
            *&buf[4] = v197;
            *&buf[8] = 1024;
            *&buf[10] = v198;
            *&buf[14] = 1024;
            *&buf[16] = v199;
            *&buf[20] = 1024;
            *&buf[22] = v200;
            _os_log_impl(&dword_1E0E2F000, v196, OS_LOG_TYPE_DEFAULT, "WARNING: Changing mach timebase! %u/%u -> %u/%u", buf, 0x1Au);
          }

          *__error() = v195;
          v192 = v319;
        }

        *(v192 + 232) = *v138;
        if (!v270)
        {
          v118 = 0;
          v270 = 0;
          goto LABEL_518;
        }

        v201 = obj;
        if (obj)
        {
          *(obj + 1) = v270;
        }

        break;
      case '3':
        v201 = obj;
        v270 = *v138;
        if (!*(v319 + 236) || !*(v319 + 232))
        {
          goto LABEL_517;
        }

        if (obj)
        {
          *(obj + 1) = *v138;
        }

        break;
      case '5':
        if (obj)
        {
          v118 = 0;
          *(obj + 5) = *v138 / 1000000.0 - v134;
          goto LABEL_518;
        }

        goto LABEL_517;
      default:
        goto LABEL_518;
    }

    v205 = [v201 machAbsTime];
    v206 = 0;
    v207 = *(v319 + 232);
    if (HIDWORD(v207))
    {
      v208 = obj;
      if (v207)
      {
        v206 = v205;
        if (v207 != HIDWORD(v207))
        {
          v206 = __udivti3();
        }
      }
    }

    else
    {
      v208 = obj;
    }

    if (v208)
    {
      v118 = 0;
      v208[2] = v206 / 1000000000.0;
      goto LABEL_518;
    }

    goto LABEL_517;
  }

  if (v137 == -568875622)
  {
    if ([*(v319 + 24) count])
    {
      v118 = 0;
      *(v319 + 440) = 4;
    }

    else
    {
      v214 = *__error();
      v215 = _sa_logt();
      if (os_log_type_enabled(v215, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1E0E2F000, v215, OS_LOG_TYPE_DEBUG, "Delta before full, ignoring", buf, 2u);
      }

      *__error() = v214;
      v118 = 1;
    }

    goto LABEL_518;
  }

  if (v137 == 17)
  {
    if ((v34 + 4) > v19 || v34 + v139 + 16 > v19 || v135 != 17 && v136 != 32)
    {
      goto LABEL_549;
    }

    v202 = *(v34 + 1);
    if (!v202)
    {
      if (!v139)
      {
        v203 = HIDWORD(v202);
        if (v135 != 17)
        {
LABEL_509:
          v218 = 0;
LABEL_510:
          v118 = 0;
          if (v203 != 2328 || (v275 & 1) != 0)
          {
            goto LABEL_518;
          }

          if (*(v319 + 440) == 1)
          {
            v246 = *__error();
            v247 = _sa_logt();
            if (os_log_type_enabled(v247, OS_LOG_TYPE_ERROR))
            {
              v248 = *(v319 + 440);
              *buf = 67109376;
              *&buf[4] = v202;
              *&buf[8] = 2048;
              *&buf[10] = v248;
              _os_log_error_impl(&dword_1E0E2F000, v247, OS_LOG_TYPE_ERROR, "%d nonrunnable tasks, but _dataStyle %llu", buf, 0x12u);
            }

            *__error() = v246;
            v263 = *(v319 + 440);
            _SASetCrashLogMessage(4232, "%d nonrunnable tasks, but _dataStyle %llu", v249, v250, v251, v252, v253, v254, v202);
            _os_crash();
            __break(1u);
          }

          else if ((v302 & 1) == 0)
          {
            if (v202)
            {
              v227 = 0;
              v228 = MEMORY[0x1E69E9820];
              v202 = v202;
              do
              {
                v332[0] = v228;
                v332[1] = 3221225472;
                v332[2] = __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke;
                v332[3] = &unk_1E86F5670;
                v332[4] = v319;
                v332[5] = obj;
                v334 = v276;
                v333 = v298;
                __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke(v332, v229, (v138 + v227));

                v227 += v218;
                --v202;
              }

              while (v202);
            }

            goto LABEL_517;
          }

          v255 = *__error();
          v256 = _sa_logt();
          if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v202;
            _os_log_error_impl(&dword_1E0E2F000, v256, OS_LOG_TYPE_ERROR, "%d nonrunnable tasks when parsing stackshot in kperf", buf, 8u);
          }

          *__error() = v255;
          _SASetCrashLogMessage(4233, "%d nonrunnable tasks when parsing stackshot in kperf", v257, v258, v259, v260, v261, v262, v202);
          result = _os_crash();
          __break(1u);
          return result;
        }

LABEL_505:
        if ((v203 - 2311) <= 0x3A && ((1 << (v203 - 7)) & 0x400000000000079) != 0 || (v203 - 48) < 2 || v203 == 2074)
        {
          goto LABEL_517;
        }

        goto LABEL_509;
      }

LABEL_549:
      v243 = *__error();
      v244 = _sa_logt();
      if (!os_log_type_enabled(v244, OS_LOG_TYPE_ERROR))
      {
LABEL_552:

        *__error() = v243;
        goto LABEL_553;
      }

      *buf = 134218240;
      *&buf[4] = v318;
      *&buf[12] = 2048;
      *&buf[14] = v34 - v290;
      v245 = "Error parsing kcdata buffer at byte %ld of %lu: array is invalid";
LABEL_555:
      _os_log_error_impl(&dword_1E0E2F000, v244, OS_LOG_TYPE_ERROR, v245, buf, 0x16u);
      goto LABEL_552;
    }

    if (v135 != 17)
    {
      v216 = *v34 & 0xF;
      v82 = v139 >= v216;
      v217 = v139 - v216;
      if (v82 && v217 >= v202)
      {
        v218 = v217 / v202;
        if (!(v217 % v202))
        {
          v203 = HIDWORD(v202);
          goto LABEL_510;
        }
      }

      goto LABEL_549;
    }

    v203 = HIDWORD(v202);
    if (SHIDWORD(v202) <= 2313)
    {
      if (SHIDWORD(v202) <= 2073)
      {
        if (HIDWORD(v202) == 48)
        {
          v204 = 20;
        }

        else
        {
          if (HIDWORD(v202) != 49)
          {
            goto LABEL_549;
          }

          v204 = 24;
        }

        goto LABEL_503;
      }

      if (HIDWORD(v202) != 2074)
      {
        if (HIDWORD(v202) != 2311)
        {
          goto LABEL_549;
        }

        v204 = 4;
        goto LABEL_503;
      }
    }

    else if (SHIDWORD(v202) <= 2315)
    {
      if (HIDWORD(v202) != 2314)
      {
LABEL_497:
        v204 = 16;
LABEL_503:
        if (v139 / v204 >= v202 && v139 % v202 < 0x10)
        {
          goto LABEL_505;
        }

        goto LABEL_549;
      }
    }

    else if (HIDWORD(v202) != 2316)
    {
      if (HIDWORD(v202) != 2317)
      {
        if (HIDWORD(v202) != 2369)
        {
          goto LABEL_549;
        }

        v204 = 48;
        goto LABEL_503;
      }

      goto LABEL_497;
    }

    v204 = 8;
    goto LABEL_503;
  }

  if (v137 != 19)
  {
    goto LABEL_518;
  }

  if ((v34 + 4) > v19 || v139 < 4 || v135 != 19 || v34 + v139 + 16 > v19)
  {
    v243 = *__error();
    v244 = _sa_logt();
    if (!os_log_type_enabled(v244, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_552;
    }

    *buf = 134218240;
    *&buf[4] = v318;
    *&buf[12] = 2048;
    *&buf[14] = v34 - v290;
    v245 = "Error parsing kcdata buffer at byte %ld of %lu: container is invalid";
    goto LABEL_555;
  }

  v144 = v34[4];
  if (v144 <= 2355)
  {
    if (v144 != 2307 && v144 != 2353)
    {
      goto LABEL_484;
    }

    v145 = [(SASampleStore *)v319 _parseKCDataTaskContainer:obj timestampOfSample:v276 sampleIndex:v27 sharedCaches:&v301->super frameIterator:v302 primaryDataIsKPerf:v275 addStaticInfoOnly:a8 ktraceDataUnavailable:v298 taskUniquePidsInThisSample:v289 taskPidsInThisSample:v286 importanceDonations:v297 rPidForJetsamCoalitionId:v271 port_label_info_array:v305 exclaveInfo:v285];
  }

  else
  {
    switch(v144)
    {
      case 2356:
LABEL_292:
        v145 = SkipToContainerEnd(&v343, 0);
        break;
      case 2370:
        v145 = [(SASampleStore *)v319 _parseKCDataSharedCacheContainer:v27 sharedCaches:?];
        break;
      case 2377:
        goto LABEL_292;
      default:
LABEL_484:
        v145 = SkipToContainerEnd(&v343, 1);
        break;
    }
  }

  if (!v145)
  {
LABEL_517:
    v118 = 0;
    goto LABEL_518;
  }

LABEL_553:
  objc_autoreleasePoolPop(contextf);
  v118 = 0;
  v119 = 0;
LABEL_225:
  if (v277)
  {
    free(v305);
  }

  if (!v119)
  {
    goto LABEL_525;
  }

  if ((v343 + 4) > v344 || v343 + v343[1] + 16 > v344 || *v343 != -242132755)
  {
    v231 = *__error();
    v232 = _sa_logt();
    if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v318;
      _os_log_error_impl(&dword_1E0E2F000, v232, OS_LOG_TYPE_ERROR, "Overran kcdata buffer (length %lu)", buf, 0xCu);
    }

    *__error() = v231;
LABEL_525:

LABEL_16:
    result = 0;
    if (a5)
    {
      *a5 = 1;
    }

    goto LABEL_18;
  }

  if (!v302)
  {
    if ((~*(v319 + 488) & 0x582) == 0)
    {
      [(SASampleStore *)v319 resampleTruncatedBacktraces];
    }

    v233 = objc_alloc(MEMORY[0x1E695DFA8]);
    v234 = [*(v319 + 8) allKeys];
    v235 = [v233 initWithArray:v234];

    [v235 minusSet:v298];
    v323 = 0u;
    v324 = 0u;
    v321 = 0u;
    v322 = 0u;
    v123 = v235;
    v236 = [v123 countByEnumeratingWithState:&v321 objects:v347 count:16];
    if (!v236)
    {
LABEL_543:

      goto LABEL_544;
    }

    v237 = *v322;
LABEL_532:
    v238 = 0;
    while (1)
    {
      if (*v322 != v237)
      {
        objc_enumerationMutation(v123);
      }

      v239 = -[SASampleStore lastTaskWithUniquePid:](v319, [*(*(&v321 + 1) + 8 * v238) unsignedLongLongValue]);
      v240 = [v239 exitTimestamp];
      if (!v240)
      {
        v241 = *(v319 + 440);
        if (!v241)
        {
          goto LABEL_537;
        }

        if (v241 != 1)
        {
          [(SASampleStore *)v319 task:v239 exitedAtTimestamp:obj];
          goto LABEL_537;
        }
      }

LABEL_537:
      if (v236 == ++v238)
      {
        v242 = [v123 countByEnumeratingWithState:&v321 objects:v347 count:16];
        v236 = v242;
        if (!v242)
        {
          goto LABEL_543;
        }

        goto LABEL_532;
      }
    }
  }

  if ((v275 & 1) == 0 && *(v319 + 440) == 3)
  {
    v330[0] = MEMORY[0x1E69E9820];
    v330[1] = 3221225472;
    v330[2] = __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke_299;
    v330[3] = &__block_descriptor_40_e20_v24__0__SATask_8_B16l;
    v330[4] = v276;
    [v319 enumerateTasks:v330];
    v120 = objc_alloc(MEMORY[0x1E695DFA8]);
    v121 = [*(v319 + 16) allKeys];
    v122 = [v120 initWithArray:v121];

    [v122 minusSet:v289];
    v328 = 0u;
    v329 = 0u;
    v326 = 0u;
    v327 = 0u;
    v123 = v122;
    v124 = [v123 countByEnumeratingWithState:&v326 objects:v348 count:16];
    if (v124)
    {
      v125 = *v327;
      do
      {
        for (j = 0; j != v124; ++j)
        {
          if (*v327 != v125)
          {
            objc_enumerationMutation(v123);
          }

          v127 = -[SASampleStore lastTaskWithPid:](v319, [*(*(&v326 + 1) + 8 * j) intValue]);
          v128 = [v127 exitTimestamp];
          v129 = v128 == 0;

          if (v129)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            *&buf[24] = __Block_byref_object_copy__0;
            v352 = __Block_byref_object_dispose__0;
            v130 = [v127 taskStates];
            v131 = [v130 lastObject];
            v353 = [v131 endTimestamp];

            v132 = [v127 threads];
            v325[0] = MEMORY[0x1E69E9820];
            v325[1] = 3221225472;
            v325[2] = __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke_3;
            v325[3] = &unk_1E86F6000;
            v325[4] = buf;
            [v132 enumerateKeysAndObjectsUsingBlock:v325];

            if (*(*&buf[8] + 40))
            {
              v133 = *(*&buf[8] + 40);
            }

            else
            {
              v133 = obj;
            }

            [(SASampleStore *)v319 task:v127 exitedAtTimestamp:v133];
            _Block_object_dispose(buf, 8);
          }
        }

        v124 = [v123 countByEnumeratingWithState:&v326 objects:v348 count:16];
      }

      while (v124);
    }

    goto LABEL_543;
  }

LABEL_544:

  if (a5)
  {
    *a5 = v118 & 1;
  }

  if ((v118 & 1) == 0)
  {
    objc_storeStrong((v319 + 456), obj);
  }

  result = (v343 - v290 + v343[1] + 16);
LABEL_18:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)addKCDataStackshot:(id)a3 returningTimestamp:(id *)a4
{
  v7 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:0.0];
  if ([(SASampleStore *)self dataStyle]== 1)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_sampleTimestamps count];
  }

  v13 = 0;
  v9 = [(SASampleStore *)self _addKCDataStackshot:a3 timestamp:v7 sampleIndex:v8 shouldSkipSampleOut:&v13 primaryDataIsKPerf:0 addStaticInfoOnly:0 ktraceDataUnavailable:0];
  if (v9 && (v13 & 1) == 0)
  {
    if ([(SASampleStore *)self dataStyle]== 1)
    {
      startTime = self->_startTime;
      ++self->_numSamples;
      if (!startTime)
      {
        objc_storeStrong(&self->_startTime, v7);
      }

      objc_storeStrong(&self->_endTime, v7);
    }

    else
    {
      [(NSMutableArray *)self->_sampleTimestamps addObject:v7];
    }

    if (self->_nextSampleIsFirstSamplingAllThreads)
    {
      objc_storeStrong(&self->_timeWhenTransitionedToSamplingAllThreads, v7);
      self->_nextSampleIsFirstSamplingAllThreads = 0;
    }

    if (self->_nextSampleIsFirstSamplingAllProcesses)
    {
      objc_storeStrong(&self->_timeWhenTransitionedToSamplingAllProcesses, v7);
      self->_nextSampleIsFirstSamplingAllProcesses = 0;
    }
  }

  if (a4)
  {
    v11 = v7;
    *a4 = v7;
  }

  return v9;
}

- (uint64_t)_parseKCDataTaskContainer:(void *)a3 timestampOfSample:(unint64_t)a4 sampleIndex:(void *)a5 sharedCaches:(NSObject *)a6 frameIterator:(uint64_t)a7 primaryDataIsKPerf:(char)a8 addStaticInfoOnly:(uint64_t)a9 ktraceDataUnavailable:(void *)a10 taskUniquePidsInThisSample:(void *)a11 taskPidsInThisSample:(void *)a12 importanceDonations:(void *)a13 rPidForJetsamCoalitionId:(void *)a14 port_label_info_array:(char *)a15 exclaveInfo:(void *)a16
{
  v22 = a2;
  v595 = *MEMORY[0x1E69E9840];
  v23 = (*a2)[4];
  v500 = *(*a2 + 1);
  if (v23 != 2307 && v23 != 2353)
  {
    goto LABEL_343;
  }

  v16 = __dst;
  v591 = 0;
  memset(v590, 0, sizeof(v590));
  v589 = 0u;
  v588 = 0u;
  v587 = 0u;
  v586 = 0u;
  *v585 = 0u;
  v565 = 0uLL;
  memset(__dst, 0, 60);
  v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v25 = *v22;
  v26 = v22[1];
  v563 = 0;
  v564 = 0;
  v581 = 0u;
  v582 = 0u;
  v583 = 0;
  v27 = v25 + 4;
  newValue = a3;
  v518 = v24;
  v499 = v23;
  v501 = a5;
  if ((v25 + 4) > v26 || (v28 = v25[1], v18 = v27 + v28, v27 + v28 > v26))
  {
    v29 = *__error();
    v30 = _sa_logt();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      v511 = 0;
      v31 = 0;
      v509 = 0;
      v523 = 0;
      v508 = 0;
      v32 = 0;
      v18 = 0;
      v33 = 0;
      v519 = 0;
      v521 = 0;
      LODWORD(v503) = 0;
      v505 = 0;
      v506 = 0;
      v513 = 0;
      __base = 0;
      v504 = 0;
      v34 = 0;
LABEL_7:

      *__error() = v29;
      goto LABEL_8;
    }

    *buf = 0;
    v55 = "Bad kcdataiter";
LABEL_45:
    _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, v55, buf, 2u);
    goto LABEL_6;
  }

  if (*v25 != 19)
  {
    v29 = *__error();
    v30 = _sa_logt();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v55 = "Not a container";
    goto LABEL_45;
  }

  if (v28 <= 3)
  {
    v29 = *__error();
    v30 = _sa_logt();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v55 = "invalid container";
    goto LABEL_45;
  }

  v56 = v25[4];
  if (v56 != 2307 && v56 != 2353)
  {
    v29 = *__error();
    v30 = _sa_logt();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v55 = "Not a task container";
    goto LABEL_45;
  }

  v57 = v18 + 16;
  if ((v18 + 16) > v26)
  {
    v511 = 0;
    v496 = 0;
    v498 = 0;
    v509 = 0;
    v523 = 0;
    v508 = 0;
    v32 = 0;
    v33 = 0;
    v58 = 0;
    v519 = 0;
    LODWORD(v503) = 0;
    v59 = 0;
    v513 = 0;
    __base = 0;
    v504 = 0;
    v505 = 0;
    v60 = 0;
LABEL_41:
    v506 = v59;
    v34 = v60;
    v521 = v58;
    v29 = *__error();
    v30 = _sa_logt();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "Hit end of kcdata before end of container", buf, 2u);
    }

    v31 = v496;
    v18 = v498;
    goto LABEL_7;
  }

  v511 = 0;
  v496 = 0;
  v498 = 0;
  v509 = 0;
  v523 = 0;
  v508 = 0;
  v32 = 0;
  v33 = 0;
  v58 = 0;
  v519 = 0;
  LODWORD(v503) = 0;
  v59 = 0;
  v513 = 0;
  __base = 0;
  v504 = 0;
  v505 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v474 = *(v25 + 1);
  v35 = v568;
  v36 = v571;
  v37 = v572;
  v477 = v573;
  v478 = &v592[16];
  v19 = 3221225472;
  v476 = v574;
  v38 = v575;
  __s1 = v576;
  v39 = &v581;
  v63 = &__block_descriptor_40_e38_v20__0I8r__dyld_uuid_info_32_I_16C__12l;
  while (1)
  {
    v64 = *(v18 + 1);
    if (&v57[v64] > v26)
    {
      goto LABEL_41;
    }

    v65 = *v18;
    if (*v18 == -242132755)
    {
      goto LABEL_41;
    }

    v66 = (v65 & 0xFFFFFFF0) == 0x20 ? 17 : *v18;
    if ((v66 - 1) <= 5)
    {
      break;
    }

    if (v66 > 2309)
    {
      if (v66 == 2312)
      {
        if (v64 == 32 && (v18[8] & 0x8F) == 0)
        {
          v71 = 24;
          goto LABEL_108;
        }
      }

      else if (v66 == 2310 && v64 == 112 && (v18[8] & 0x8F) == 0)
      {
        v71 = 104;
        goto LABEL_108;
      }
    }

    else
    {
      v72 = v66 == 17 || v66 == 19;
      v71 = *(v18 + 1);
      if (v72)
      {
        goto LABEL_108;
      }
    }

    v80 = *(v18 + 2) & 0xF;
    v69 = v64 >= v80;
    v71 = v64 - v80;
    if (!v69)
    {
      v71 = 0;
    }

LABEL_108:
    v67 = v18 + 16;
    if (!v61)
    {
      goto LABEL_56;
    }

LABEL_109:
    if (v66 == 2310)
    {
      if ((v67[65] & 0x20) != 0)
      {
        v564 = *v67;
      }

LABEL_114:
      v61 = 1;
      goto LABEL_115;
    }

    if (v66 != 20)
    {
      goto LABEL_114;
    }

    v61 = v62 != *(v18 + 1);
LABEL_115:
    v18 = &v57[*(v18 + 1)];
    v57 = v18 + 16;
    if ((v18 + 16) > v26)
    {
      goto LABEL_41;
    }
  }

  v67 = v18 + 48;
  v68 = *(v18 + 2) & 0xF;
  v69 = v64 >= v68;
  v70 = v64 - v68;
  if (!v69)
  {
    v70 = 0;
  }

  v71 = v70 - 32;
  if (v61)
  {
    goto LABEL_109;
  }

LABEL_56:
  if (v66 > 2345)
  {
    if (v66 > 2372)
    {
      if (v66 == 2373)
      {
        v61 = 0;
        LODWORD(v503) = *v67;
        goto LABEL_115;
      }

      v78 = v513;
      if (v66 == 2392)
      {
        v79 = v67;
      }

      else
      {
        v79 = v513;
      }

      if (v66 != 2391)
      {
        v78 = v79;
      }

      v513 = v78;
      if (v66 == 2391)
      {
        v60 = v67;
      }
    }

    else
    {
      v73 = v498;
      if (v66 == 2368)
      {
        v74 = v67;
      }

      else
      {
        v74 = v498;
      }

      if (v66 == 2352)
      {
        v74 = v498;
        v75 = v67;
      }

      else
      {
        v75 = v33;
      }

      if (v66 != 2346)
      {
        v73 = v74;
      }

      v498 = v73;
      if (v66 == 2346)
      {
        v59 = v67;
      }

      else
      {
        v33 = v75;
      }
    }

    v61 = 0;
    goto LABEL_115;
  }

  if (v66 > 2311)
  {
    if (v66 == 2312)
    {
      if (v71 < 0x28)
      {
        goto LABEL_123;
      }

      if (qword_1EDD02F70 != -1)
      {
        v487 = v37;
        __srca = v60;
        v495 = v62;
        v150 = v58;
        v507 = v59;
        v475 = v35;
        v481 = v38;
        dispatch_once(&qword_1EDD02F70, &__block_literal_global_2047);
        v63 = &__block_descriptor_40_e38_v20__0I8r__dyld_uuid_info_32_I_16C__12l;
        v39 = &v581;
        v38 = v481;
        v37 = v487;
        v60 = __srca;
        v36 = v571;
        v35 = v475;
        v59 = v507;
        v58 = v150;
        v62 = v495;
      }

      if (byte_1EDD02EF2)
      {
LABEL_123:
        v480 = v38;
        v486 = v37;
        __srcb = v60;
        v494 = v62;
        v475 = v35;
        *&v581 = *v67;
        v81 = (v67 + 8);
        v82 = v58;
        v83 = v59;
        uuid_copy(&v581 + 8, v81);
        v63 = &__block_descriptor_40_e38_v20__0I8r__dyld_uuid_info_32_I_16C__12l;
        v39 = &v581;
        v38 = v480;
        v37 = v486;
        v60 = __srcb;
        v36 = v571;
        v35 = v475;
        v59 = v83;
        v62 = v494;
        v58 = v82;
        v61 = 0;
        *(&v582 + 1) = -1;
        v583 = -1;
      }

      else
      {
        v61 = 0;
        v89 = *v67;
        v90 = *(v67 + 1);
        v583 = *(v67 + 4);
        v582 = v90;
        v581 = v89;
      }
    }

    else if (v66 == 2337)
    {
      v61 = 0;
      v505 = *v67;
    }

    else
    {
      v76 = v511;
      if (a7)
      {
        v77 = v511;
      }

      else
      {
        v77 = v67;
      }

      if (v66 == 2339)
      {
        v76 = v77;
      }

      v511 = v76;
      v61 = 0;
    }

    goto LABEL_115;
  }

  if (v66 > 19)
  {
    if (v66 == 2309)
    {
      v61 = 0;
      v32 = v67;
      goto LABEL_115;
    }

    if (v66 != 20)
    {
LABEL_146:
      v61 = 0;
      goto LABEL_115;
    }

    v521 = v58;
    if (*(v18 + 1) != v474)
    {
      v34 = v60;
      v506 = v59;
      v29 = *__error();
      v30 = _sa_logt();
      v31 = v496;
      v18 = v498;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "Unmatched end container", buf, 2u);
      }

      goto LABEL_7;
    }

    LOBYTE(v18) = v498 == 0;
    v41 = v33 == 0;
    if (v32 || v498 || v33)
    {
      v34 = v60;
      v506 = v59;
      if (!v32)
      {
        v49 = 1;
        v31 = v496;
        if (!v498)
        {
          goto LABEL_23;
        }

        goto LABEL_255;
      }

      v156 = 0;
      v52 = *(v32 + 21);
      v157 = v32 + 88;
      if (!v32[88])
      {
        v157 = 0;
      }

      __s1 = v157;
      v54 = *v32;
      v50 = *(v32 + 1);
      v31 = v496;
      goto LABEL_268;
    }

    v151 = *__error();
    v152 = _sa_logt();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
    {
      *v592 = 134217984;
      *&v592[4] = v500;
      v153 = "No task struct for task container %llu, treating as an unknown container";
      v154 = v152;
      v155 = 12;
      goto LABEL_331;
    }

LABEL_316:
    v31 = v496;
    goto LABEL_328;
  }

  if (v66 != 17)
  {
    if (v66 != 19)
    {
      goto LABEL_146;
    }

    if (v64 < 4 || v65 != 19)
    {
      goto LABEL_241;
    }

    v62 = *(v18 + 1);
    goto LABEL_114;
  }

  if (v65 == 17 || (v65 & 0xFFFFFFF0) == 0x20)
  {
    v84 = *(v18 + 1);
    v493 = v62;
    if (!v84)
    {
      if (v64)
      {
        goto LABEL_241;
      }

      v85 = HIDWORD(v84);
      if (v65 == 17)
      {
        goto LABEL_160;
      }

LABEL_139:
      v87 = 0;
      goto LABEL_175;
    }

    if (v65 != 17)
    {
      v88 = v64 - (*v18 & 0xF);
      if (v64 < (*v18 & 0xFu) || v88 < v84 || v88 % v84)
      {
        goto LABEL_241;
      }

      v87 = v88 / v84;
      v85 = HIDWORD(v84);
      goto LABEL_175;
    }

    v85 = HIDWORD(v84);
    if (SHIDWORD(v84) <= 2313)
    {
      if (SHIDWORD(v84) <= 2073)
      {
        if (HIDWORD(v84) == 48)
        {
          v86 = 20;
        }

        else
        {
          if (HIDWORD(v84) != 49)
          {
            goto LABEL_241;
          }

          v86 = 24;
        }

        goto LABEL_158;
      }

      if (HIDWORD(v84) != 2074)
      {
        if (HIDWORD(v84) != 2311)
        {
          goto LABEL_241;
        }

        v86 = 4;
        goto LABEL_158;
      }
    }

    else if (SHIDWORD(v84) <= 2315)
    {
      if (HIDWORD(v84) != 2314)
      {
        goto LABEL_155;
      }
    }

    else if (HIDWORD(v84) != 2316)
    {
      if (HIDWORD(v84) != 2317)
      {
        if (HIDWORD(v84) != 2369)
        {
          goto LABEL_241;
        }

        v86 = 48;
        goto LABEL_158;
      }

LABEL_155:
      v86 = 16;
LABEL_158:
      if (v64 / v86 < v84 || v64 % v84 > 0xF)
      {
        goto LABEL_241;
      }

LABEL_160:
      if (v85 > 2313)
      {
        v87 = 8;
        if (v85 <= 2315)
        {
          if (v85 != 2314)
          {
            goto LABEL_174;
          }
        }

        else if (v85 != 2316)
        {
          if (v85 == 2369)
          {
            v87 = 48;
            goto LABEL_222;
          }

          if (v85 != 2317)
          {
            goto LABEL_139;
          }

LABEL_174:
          v87 = 16;
        }

LABEL_175:
        v61 = 0;
        if (v85 > 2332)
        {
          if (v85 <= 2349)
          {
            v479 = v38;
            v485 = v37;
            __src = v60;
            v506 = v59;
            v521 = v58;
            if (v85 == 2333)
            {
              v475 = v35;
              v117 = v84;
              v472 = *(v18 + 1);
              v496 = malloc_type_calloc(v84, 0x1FuLL, 0x1000040B50B66BDuLL);
              v61 = v472;
              if (!v472)
              {
                v509 = 0;
                v16 = __dst;
                v58 = v521;
                v37 = v485;
                v59 = v506;
                v60 = __src;
                v35 = v475;
                v36 = v571;
                v38 = v479;
                v39 = &v581;
                goto LABEL_230;
              }

              v118 = 0;
              v119 = 0;
              v120 = MEMORY[0x1E69E9820];
              v38 = v479;
              v121 = 31 * v117;
              v16 = __dst;
              v58 = v521;
              v37 = v485;
              v60 = __src;
              v35 = v475;
              v36 = v571;
              v39 = &v581;
              do
              {
                *v592 = v120;
                *&v592[8] = 3221225472;
                *&v592[16] = __ReadAheadTaskLevelInfo_block_invoke_3;
                *&v592[24] = &__block_descriptor_44_e49_v20__0I8r__stackshot_thread_waitinfo_v2_QQQCsI_12l;
                v594 = v87;
                v122 = &v67[v118];
                v123 = &v496[v119];
                v593 = v496;
                v124 = *v122;
                if (v87 < 0x1F)
                {
                  *(v123 + 9) = *(v122 + 9);
                  *v123 = v124;
                  v125 = &v593[v119];
                  *(v125 + 25) = 0;
                  *(v125 + 27) = 0;
                }

                else
                {
                  *(v123 + 15) = *(v122 + 15);
                  *v123 = v124;
                }

                v119 += 31;
                v118 += v87;
              }

              while (v121 != v119);
              v61 = 0;
              v509 = v472;
LABEL_209:
              v59 = v506;
LABEL_230:
              v63 = &__block_descriptor_40_e38_v20__0I8r__dyld_uuid_info_32_I_16C__12l;
LABEL_231:
              v62 = v493;
              goto LABEL_115;
            }

            if (v85 != 2345)
            {
              v16 = __dst;
              v36 = v571;
              v39 = &v581;
              goto LABEL_231;
            }

            v475 = v35;
            v483 = v33;
            v91 = v84;
            v470 = *(v18 + 1);
            v523 = malloc_type_calloc(v84, 0x1CuLL, 0x100004027586B93uLL);
            v61 = v470;
            if (v470)
            {
              v92 = 0;
              v93 = 0;
              v94 = MEMORY[0x1E69E9820];
              v35 = v475;
              v95 = 28 * v91;
              v16 = __dst;
              v58 = v521;
              v37 = v485;
              v60 = __src;
              v36 = v571;
              v38 = v479;
              v39 = &v581;
              do
              {
                v566 = v94;
                v567 = 3221225472;
                v568[0] = __ReadAheadTaskLevelInfo_block_invoke_4;
                v568[1] = &__block_descriptor_44_e54_v20__0I8r__stackshot_thread_turnstileinfo_v2_QQCCQs_12l;
                v570 = v87;
                v96 = &v67[v92];
                v97 = &v523[v93];
                v569 = v523;
                v98 = *v96;
                if (v87 < 0x1C)
                {
                  *(v97 + 10) = *(v96 + 10);
                  *v97 = v98;
                  *&v569[v93 + 26] = 0;
                }

                else
                {
                  *(v97 + 12) = *(v96 + 12);
                  *v97 = v98;
                }

                v93 += 28;
                v92 += v87;
              }

              while (v95 != v93);
              v61 = 0;
              v508 = v470;
              goto LABEL_209;
            }

            v508 = 0;
LABEL_233:
            v16 = __dst;
            v58 = v521;
            goto LABEL_235;
          }

          if (v85 == 2350)
          {
            v479 = v38;
            v483 = v33;
            v485 = v37;
            __src = v60;
            v475 = v35;
            v506 = v59;
            v521 = v58;
            if (v519)
            {
              goto LABEL_349;
            }

            v126 = v84;
            v127 = *(v18 + 1);
            v128 = malloc_type_calloc(v84, 0x18uLL, 0x1000040504FFAC1uLL);
            if (v127)
            {
              v129 = 0;
              v130 = 0;
              v131 = MEMORY[0x1E69E9820];
              do
              {
                v573[3] = v131;
                v573[4] = 3221225472;
                v574[0] = __ReadAheadTaskLevelInfo_block_invoke_2059;
                v574[1] = &__block_descriptor_40_e38_v20__0I8r__dyld_uuid_info_64_Q_16C__12l;
                v574[2] = v128;
                v132 = &v67[v129];
                v133 = &v128[v130];
                v134 = *v132;
                *(v133 + 2) = *(v132 + 2);
                *v133 = v134;
                v130 += 24;
                v129 += v87;
              }

              while (24 * v126 != v130);
            }

            v519 = v128;
            v61 = 0;
            LODWORD(v563) = v127;
            goto LABEL_233;
          }

          if (v85 != 2369)
          {
            goto LABEL_231;
          }

LABEL_222:
          if (v84)
          {
            v147 = 0;
            v148 = v84;
            do
            {
              v571[0] = MEMORY[0x1E69E9820];
              v571[1] = 3221225472;
              v572[0] = __ReadAheadTaskLevelInfo_block_invoke_2;
              v572[1] = &__block_descriptor_40_e51_v20__0I8r__thread_delta_snapshot_v2_QQQQIIssCCCC_12l;
              v149 = &v67[v147];
              if ((v149[17] & 0x20) != 0)
              {
                v564 = *v149;
              }

              v147 += v87;
              --v148;
            }

            while (v148);
            v61 = 0;
            v572[2] = &v564;
          }

          else
          {
            v61 = 0;
          }

          goto LABEL_231;
        }

        if (v85 != 48)
        {
          if (v85 == 49)
          {
            goto LABEL_197;
          }

          if (v85 == 57)
          {
            v479 = v38;
            v483 = v33;
            v485 = v37;
            __src = v60;
            v475 = v35;
            v506 = v59;
            if (__base)
            {
              goto LABEL_346;
            }

            v99 = v58;
            v100 = v84;
            v471 = *(v18 + 1);
            v101 = malloc_type_calloc(v84, 0x38uLL, 0x100004021716A34uLL);
            v61 = v471;
            __base = v101;
            if (v471)
            {
              v102 = 0;
              v103 = 0;
              v572[3] = MEMORY[0x1E69E9820];
              v572[4] = 3221225472;
              v573[0] = __ReadAheadTaskLevelInfo_block_invoke_2062;
              v573[1] = &__block_descriptor_40_e43_v20__0I8r__user64_dyld_aot_info_QQQ_32C__12l;
              v573[2] = v101;
              v58 = v99;
              v33 = v483;
              v37 = v485;
              v59 = v506;
              v35 = v475;
              v36 = v571;
              v38 = v479;
              v39 = &v581;
              do
              {
                v104 = &v67[v102];
                v105 = &v101[v103];
                v106 = *v104;
                v107 = *(v104 + 1);
                v108 = *(v104 + 2);
                *(v105 + 6) = *(v104 + 6);
                *(v105 + 1) = v107;
                *(v105 + 2) = v108;
                *v105 = v106;
                v103 += 56;
                v102 += v87;
              }

              while (56 * v100 != v103);
              v61 = 0;
              v504 = v471;
              v16 = __dst;
              v60 = __src;
              v62 = v493;
              goto LABEL_237;
            }

            v504 = 0;
            v16 = __dst;
            v58 = v99;
LABEL_235:
            v33 = v483;
            v37 = v485;
            v59 = v506;
            v60 = __src;
            v35 = v475;
            v62 = v493;
            v36 = v571;
            v38 = v479;
LABEL_236:
            v39 = &v581;
LABEL_237:
            v63 = &__block_descriptor_40_e38_v20__0I8r__dyld_uuid_info_32_I_16C__12l;
            goto LABEL_115;
          }

          goto LABEL_231;
        }

LABEL_216:
        v468 = v22;
        v469 = v57;
        v479 = v38;
        v483 = v33;
        v485 = v37;
        __src = v60;
        v475 = v35;
        v506 = v59;
        v492 = v17;
        if (v58)
        {
          goto LABEL_340;
        }

        v135 = v63;
        v136 = v84;
        v137 = *(v18 + 1);
        v138 = malloc_type_calloc(v84, 0x18uLL, 0x1000040504FFAC1uLL);
        v58 = v138;
        v139 = v135;
        v473 = v137;
        if (v137)
        {
          v140 = v87;
          v141 = 0;
          v521 = MEMORY[0x1E69E9820];
          v142 = v138 + 8;
          do
          {
            v575[3] = v521;
            v575[4] = 3221225472;
            v576[0] = __ReadAheadTaskLevelInfo_block_invoke;
            v576[1] = v139;
            v576[2] = v58;
            v143 = &v67[v141];
            *(v142 - 1) = *v143;
            v144 = v58;
            v145 = v67;
            v146 = v139;
            uuid_copy(v142, v143 + 4);
            v139 = v146;
            v67 = v145;
            v58 = v144;
            v142 += 24;
            v141 += v140;
            --v136;
          }

          while (v136);
        }

        v61 = 0;
        HIDWORD(v563) = v473;
        v17 = v492;
        v62 = v493;
        v16 = __dst;
        v33 = v483;
        v37 = v485;
        v59 = v506;
        v60 = __src;
        v35 = v475;
        v36 = v571;
        v38 = v479;
        v39 = &v581;
        v63 = v139;
        v22 = v468;
        v57 = v469;
        goto LABEL_115;
      }

      if (v85 > 2073)
      {
        v61 = 0;
        if (v85 == 2074)
        {
          goto LABEL_115;
        }

        if (v85 == 2311)
        {
          goto LABEL_231;
        }

        goto LABEL_139;
      }

      if (v85 == 48)
      {
        v87 = 20;
        goto LABEL_216;
      }

      if (v85 != 49)
      {
        goto LABEL_139;
      }

      v87 = 24;
LABEL_197:
      v479 = v38;
      v483 = v33;
      v485 = v37;
      __src = v60;
      v475 = v35;
      v506 = v59;
      if (!v58)
      {
        v109 = v84;
        v110 = *(v18 + 1);
        v58 = malloc_type_calloc(v84, 0x18uLL, 0x1000040504FFAC1uLL);
        v38 = v479;
        if (v110)
        {
          v111 = 0;
          v112 = 0;
          v113 = MEMORY[0x1E69E9820];
          do
          {
            v574[3] = v113;
            v574[4] = 3221225472;
            v575[0] = __ReadAheadTaskLevelInfo_block_invoke_2054;
            v575[1] = &__block_descriptor_40_e38_v20__0I8r__dyld_uuid_info_64_Q_16C__12l;
            v575[2] = v58;
            v114 = &v67[v111];
            v115 = &v58[v112];
            v116 = *v114;
            *(v115 + 2) = *(v114 + 2);
            *v115 = v116;
            v112 += 24;
            v111 += v87;
          }

          while (24 * v109 != v112);
        }

        v61 = 0;
        HIDWORD(v563) = v110;
        v16 = __dst;
        v33 = v483;
        v37 = v485;
        v59 = v506;
        v60 = __src;
        v35 = v475;
        v62 = v493;
        v36 = v571;
        goto LABEL_236;
      }

      v194 = *__error();
      v195 = _sa_logt();
      if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v195, OS_LOG_TYPE_ERROR, "multiple load_info arrays for task", buf, 2u);
      }

      *__error() = v194;
      _SASetCrashLogMessage(2773, "multiple load_info arrays for task", v196, v197, v198, v199, v200, v201, v463);
      _os_crash();
      __break(1u);
LABEL_340:
      v23 = *__error();
      v202 = _sa_logt();
      if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v202, OS_LOG_TYPE_ERROR, "multiple load_info arrays for task", buf, 2u);
      }

      *__error() = v23;
      _SASetCrashLogMessage(2755, "multiple load_info arrays for task", v203, v204, v205, v206, v207, v208, v463);
      _os_crash();
      __break(1u);
LABEL_343:
      LODWORD(v67) = v23;
      v209 = *__error();
      v210 = _sa_logt();
      if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
      {
        *v585 = 67109120;
        *&v585[4] = v67;
        _os_log_error_impl(&dword_1E0E2F000, v210, OS_LOG_TYPE_ERROR, "bad container type %u", v585, 8u);
      }

      *__error() = v209;
      _SASetCrashLogMessage(4485, "bad container type %u", v211, v212, v213, v214, v215, v216, v67);
      _os_crash();
      __break(1u);
LABEL_346:
      v217 = *__error();
      v218 = _sa_logt();
      if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v218, OS_LOG_TYPE_ERROR, "multiple aot_info arrays for task", buf, 2u);
      }

      *__error() = v217;
      _SASetCrashLogMessage(2811, "multiple aot_info arrays for task", v219, v220, v221, v222, v223, v224, v463);
      _os_crash();
      __break(1u);
LABEL_349:
      v225 = *__error();
      v34 = _sa_logt();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v34, OS_LOG_TYPE_ERROR, "multiple text_exec_load_info arrays for task", buf, 2u);
      }

      *__error() = v225;
      _SASetCrashLogMessage(2794, "multiple text_exec_load_info arrays for task", v226, v227, v228, v229, v230, v231, v463);
      _os_crash();
      __break(1u);
      goto LABEL_352;
    }

    v86 = 8;
    goto LABEL_158;
  }

LABEL_241:
  v34 = v60;
  v506 = v59;
  v521 = v58;
  v31 = v496;
  v18 = v498;
LABEL_8:
  v40 = v18;
  LODWORD(v18) = v18 == 0;
  v41 = v33 == 0;
  if (v32)
  {
LABEL_9:
    v42 = v519;
    v43 = a6;
    v44 = __base;
LABEL_10:
    v45 = v518;
    if (v31)
    {
      free(v31);
    }

    if (v523)
    {
      free(v523);
    }

    if (v521)
    {
      free(v521);
    }

    if (v42)
    {
      free(v42);
    }

    if (v44)
    {
      free(v44);
    }

    [v43 clearTaskData];
    v46 = SkipToContainerEnd(v22, 1);
    goto LABEL_21;
  }

  v498 = v40;
  v49 = 0;
  if (v18)
  {
LABEL_23:
    if (v41)
    {
      if (!v49)
      {
        goto LABEL_9;
      }

      LODWORD(v50) = 0;
      v51 = 0;
      v52 = 0xFFFFFFFFLL;
      v53 = 1;
      v54 = -1;
    }

    else
    {
      if (v33[28])
      {
        v51 = v33 + 28;
      }

      else
      {
        v51 = 0;
      }

      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }

      v53 = 0;
      v52 = *(v33 + 6);
      v54 = *v33;
      v50 = *(v33 + 1);
    }

    goto LABEL_263;
  }

LABEL_255:
  v54 = *v498;
  if (v41)
  {
    if ((v49 & 1) == 0)
    {
      goto LABEL_9;
    }

    v51 = 0;
    v50 = *(v498 + 8);
    v52 = 0xFFFFFFFFLL;
    v53 = 1;
  }

  else
  {
    if (v33[28])
    {
      v51 = v33 + 28;
    }

    else
    {
      v51 = 0;
    }

    if ((v49 & 1) == 0)
    {
      goto LABEL_9;
    }

    v53 = 0;
    v52 = *(v33 + 6);
    v50 = *(v498 + 8);
  }

LABEL_263:
  if (a7)
  {
    v151 = *__error();
    v158 = _sa_logt();
    v152 = v158;
    if (v53)
    {
      v43 = a6;
      if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        *v592 = 134217984;
        *&v592[4] = v500;
        _os_log_error_impl(&dword_1E0E2F000, v152, OS_LOG_TYPE_ERROR, "no task_struct for task container %llu when primary data is kperf", v592, 0xCu);
      }
    }

    else
    {
      v43 = a6;
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
      {
        *v592 = 134217984;
        *&v592[4] = v500;
        _os_log_debug_impl(&dword_1E0E2F000, v152, OS_LOG_TYPE_DEBUG, "Only transitioning task task container %llu when primary data is kperf", v592, 0xCu);
      }
    }

    v42 = v519;
    goto LABEL_329;
  }

  __s1 = v51;
  v32 = 0;
  v156 = 1;
LABEL_268:
  LODWORD(v493) = v52;
  if (v52 < -1 || v54 <= -2)
  {
    v151 = *__error();
    v152 = _sa_logt();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
    {
      *v592 = 136315650;
      *&v592[4] = __s1;
      *&v592[12] = 1024;
      *&v592[14] = v493;
      *&v592[18] = 2048;
      *&v592[20] = v54;
      _os_log_debug_impl(&dword_1E0E2F000, v152, OS_LOG_TYPE_DEBUG, "Ignoring task with negative pid %s [%d] unique pid %llu", v592, 0x1Cu);
    }

    goto LABEL_328;
  }

  v492 = v17;
  LODWORD(v485) = v50;
  __src = v32;
  if (v33 && v54 == -1)
  {
    v484 = v156;
    if (v52 == -1)
    {
      v54 = --_parseKCDataTaskContainer_timestampOfSample_sampleIndex_sharedCaches_frameIterator_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_taskUniquePidsInThisSample_taskPidsInThisSample_importanceDonations_rPidForJetsamCoalitionId_port_label_info_array_exclaveInfo__next_fake_unique_pid;
      v169 = *__error();
      v170 = _sa_logt();
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
      {
        *v592 = 136315394;
        *&v592[4] = __s1;
        *&v592[12] = 2048;
        *&v592[14] = v54;
        _os_log_impl(&dword_1E0E2F000, v170, OS_LOG_TYPE_DEFAULT, "WARNING: transitioning task %s with no uniquepid and no pid, faking uniquepid:%llu", v592, 0x16u);
      }

      *__error() = v169;
    }

    else
    {
      v159 = v52;
      v497 = v31;
      v160 = [a1 tasksByPid];
      v161 = [MEMORY[0x1E696AD98] numberWithInt:v159];
      v162 = [v160 objectForKeyedSubscript:v161];

      v482 = v162;
      v163 = [v162 lastObject];
      v164 = v163;
      if (v163)
      {
        v54 = [v163 uniquePid];
        v165 = *__error();
        v166 = _sa_logt();
        v156 = v484;
        v167 = v164;
        if (os_log_type_enabled(v166, OS_LOG_TYPE_INFO))
        {
          v168 = [v164 debugDescription];
          *v592 = 136315650;
          *&v592[4] = __s1;
          *&v592[12] = 2112;
          *&v592[14] = v168;
          *&v592[22] = 2048;
          *&v592[24] = v54;
          _os_log_impl(&dword_1E0E2F000, v166, OS_LOG_TYPE_INFO, "transitioning task %s with no uniquepid, assuming it's the predecessor with matching pid %@: using uniquepid %llu", v592, 0x20u);
        }
      }

      else
      {
        v167 = 0;
        v54 = v159 + 10000000000;
        v165 = *__error();
        v166 = _sa_logt();
        if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
        {
          *v592 = 136315394;
          *&v592[4] = __s1;
          *&v592[12] = 2048;
          *&v592[14] = v159 + 10000000000;
          _os_log_impl(&dword_1E0E2F000, v166, OS_LOG_TYPE_DEFAULT, "WARNING: transitioning task %s with no uniquepid and no predecessor task, faking uniquepid %llu", v592, 0x16u);
        }

        v156 = v484;
      }

      *__error() = v165;
      v31 = v497;
    }

    v17 = v492;
    if (__dst != v33)
    {
      memmove(__dst, v33, 0x3CuLL);
      v33 = __dst;
    }

    v52 = v493;
    *&__dst[0] = v54;
  }

  if ((a7 & 1) == 0 && v54 == -1)
  {
    v151 = *__error();
    v152 = _sa_logt();
    v171 = os_log_type_enabled(v152, OS_LOG_TYPE_ERROR);
    if (v156)
    {
      if (v18)
      {
        if (v171)
        {
          *v592 = 136315650;
          *&v592[4] = __s1;
          *&v592[12] = 1024;
          *&v592[14] = v493;
          *&v592[18] = 2048;
          *&v592[20] = v500;
          v172 = "No uniquepid for transitioning task %s [%d] in task container %llu";
          goto LABEL_319;
        }

LABEL_328:
        v42 = v519;
        v43 = a6;
LABEL_329:
        v44 = __base;

        *__error() = v151;
        goto LABEL_10;
      }

      if (!v171)
      {
        goto LABEL_328;
      }

      *v592 = 134217984;
      *&v592[4] = v500;
      v172 = "No uniquepid for delta task in task container %llu";
      v182 = v152;
      v183 = 12;
    }

    else
    {
      if (!v171)
      {
        goto LABEL_328;
      }

      *v592 = 136315650;
      *&v592[4] = __s1;
      *&v592[12] = 1024;
      *&v592[14] = v493;
      *&v592[18] = 2048;
      *&v592[20] = v500;
      v172 = "No uniquepid for task %s [%d] in task container %llu";
LABEL_319:
      v182 = v152;
      v183 = 28;
    }

    _os_log_error_impl(&dword_1E0E2F000, v182, OS_LOG_TYPE_ERROR, v172, v592, v183);
    goto LABEL_328;
  }

  v483 = v33;
  v496 = v31;
  v479 = a9;
  if (!a7)
  {
    v180 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{v54, v35, v36, v37, v38, v39}];
    v181 = [a10 containsObject:v180];

    if (!v181)
    {
      v477 = a12;
      if (v493)
      {
        v184 = v54 == 0;
      }

      else
      {
        v184 = 1;
      }

      LODWORD(v17) = v184;
      v67 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v54];
      [a10 addObject:v67];

      LODWORD(v478) = v485;
      v178 = a1;
      v185 = v519;
      v16 = v504;
      v179 = v503;
      goto LABEL_370;
    }

LABEL_315:
    v151 = *__error();
    v152 = _sa_logt();
    v17 = v492;
    if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
    {
      *v592 = 136315394;
      *&v592[4] = __s1;
      *&v592[12] = 2048;
      *&v592[14] = v54;
      v153 = "Already saw task %s unique pid %llu in this stackshot, ignoring second container";
      v154 = v152;
      v155 = 22;
LABEL_331:
      _os_log_error_impl(&dword_1E0E2F000, v154, OS_LOG_TYPE_ERROR, v153, v592, v155);
    }

    goto LABEL_316;
  }

  v16 = a11;
  v173 = [MEMORY[0x1E696AD98] numberWithInt:{v52, v35, v36, v37, v38, v39}];
  v174 = [a11 containsObject:v173];

  if (v174)
  {
    goto LABEL_315;
  }

  v477 = a12;
  if (v493)
  {
    v175 = v54 == 0;
  }

  else
  {
    v175 = 1;
  }

  LODWORD(v17) = v175;
  v176 = [MEMORY[0x1E696AD98] numberWithInt:?];
  [a11 addObject:v176];

  if (v156)
  {
    v186 = *__error();
    v187 = _sa_logt();
    if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
    {
      *v592 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v187, OS_LOG_TYPE_ERROR, "no task_struct when backfilling kperf", v592, 2u);
    }

    *__error() = v186;
    _SASetCrashLogMessage(4650, "no task_struct when backfilling kperf", v188, v189, v190, v191, v192, v193, v463);
    _os_crash();
    __break(1u);
  }

  LODWORD(v67) = a9;
  if (v585 != __src)
  {
    memmove(v585, __src, 0x78uLL);
    __src = v585;
  }

  v177 = *&v585[8];
  *v585 = -1;
  LODWORD(v478) = *&v585[8] & 0xFCFF0C43;
  *&v585[8] &= 0x79FFCFF0C43uLL;
  v178 = a1;
  v179 = v503;
  if (a9)
  {
    if (*(a9 + 8))
    {
      LODWORD(v478) = v177 & 0xFCFF0C43;
      *&v585[8] = v177 & 0x71FFCFF0C43;
    }

    HIDWORD(v588) = 0;
    DWORD1(v589) = 0;
    if (!v513 || (*(a9 + 9) & 1) != 0)
    {
      v513 = 0;
      goto LABEL_357;
    }

LABEL_354:
    if (&v565 != v513)
    {
      v565 = *v513;
      v513 = &v565;
    }

    LODWORD(v565) = 0x80000000;
    *(&v565 + 1) = 0x8000000080000000;
    goto LABEL_357;
  }

LABEL_352:
  HIDWORD(v588) = 0;
  DWORD1(v589) = 0;
  if (v513)
  {
    v178 = a1;
    v179 = v503;
    goto LABEL_354;
  }

  v513 = 0;
  v178 = a1;
  v179 = v503;
LABEL_357:
  if (v511)
  {
    v390 = *__error();
    v391 = _sa_logt();
    if (os_log_type_enabled(v391, OS_LOG_TYPE_ERROR))
    {
      *v592 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v391, OS_LOG_TYPE_ERROR, "taskTerminatedThreadsInstructionCycles non-NULL when primary data is kperf", v592, 2u);
    }

    *__error() = v390;
    _SASetCrashLogMessage(4685, "taskTerminatedThreadsInstructionCycles non-NULL when primary data is kperf", v392, v393, v394, v395, v396, v397, v463);
    _os_crash();
    __break(1u);
    goto LABEL_723;
  }

  if (v477)
  {
LABEL_723:
    v398 = *__error();
    v399 = _sa_logt();
    if (os_log_type_enabled(v399, OS_LOG_TYPE_ERROR))
    {
      *v592 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v399, OS_LOG_TYPE_ERROR, "importanceDonations non-NULL when primary data is kperf", v592, 2u);
    }

    *__error() = v398;
    _SASetCrashLogMessage(4686, "importanceDonations non-NULL when primary data is kperf", v400, v401, v402, v403, v404, v405, v463);
    _os_crash();
    __break(1u);
    goto LABEL_726;
  }

  v232 = [v178 osProductName];
  v233 = [v232 isEqualToString:@"Mac OS X"];

  if (v233)
  {
    v234 = [v178 osBuildVersion];
    v67 = v234;
    v235 = @"18A230";
LABEL_367:
    v241 = [v234 compare:v235 options:65];

    if (v241 == -1)
    {
      *&v588 = 0;
      *(&v587 + 1) = 0;
    }
  }

  else
  {
    v236 = [v178 osProductName];
    v237 = [v236 isEqualToString:@"iPhone OS"];

    if (v237)
    {
      v234 = [v178 osBuildVersion];
      v67 = v234;
      v235 = @"16A230";
      goto LABEL_367;
    }

    v238 = [v178 osProductName];
    v239 = [v238 isEqualToString:@"Watch OS"];

    if (v239)
    {
      v234 = [v178 osBuildVersion];
      v67 = v234;
      v235 = @"16R230";
      goto LABEL_367;
    }

    v67 = [v178 osProductName];
    v240 = [v67 isEqualToString:@"Apple TVOS"];

    if (v240)
    {
      v234 = [v178 osBuildVersion];
      v67 = v234;
      v235 = @"16J230";
      goto LABEL_367;
    }
  }

  v185 = v519;
  v16 = v504;
LABEL_370:
  if (__s1)
  {
    if (!strcmp(__s1, "unknown"))
    {
      if (__src)
      {
        if (v585 != __src)
        {
          memmove(v585, __src, 0x78uLL);
          __src = v585;
        }

        v242 = v590 + 8;
      }

      else
      {
        if (!v483)
        {
          goto LABEL_738;
        }

        if (__dst != v483)
        {
          memmove(__dst, v483, 0x3CuLL);
          v483 = __dst;
        }

        __src = 0;
        v242 = &__dst[1] + 12;
      }

      __s1 = 0;
      *v242 = 0u;
      *(v242 + 1) = 0u;
    }
  }

  else
  {
    __s1 = 0;
  }

  v561[0] = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v561[1] = 3221225472;
  v561[2] = __286__SASampleStore__parseKCDataTaskContainer_timestampOfSample_sampleIndex_sharedCaches_frameIterator_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_taskUniquePidsInThisSample_taskPidsInThisSample_importanceDonations_rPidForJetsamCoalitionId_port_label_info_array_exclaveInfo___block_invoke;
  v561[3] = &__block_descriptor_33_e38_B24__0__dyld_uuid_info_64_Q_16C__8_I16l;
  LODWORD(v474) = v17;
  v562 = v17;
  v17 = MEMORY[0x1E12EBE50](v561);
  LOBYTE(v476) = (v17[2])(v17, v521, &v563 + 4);
  v475 = v17;
  LOBYTE(v17) = (v17[2])(v17, v185, &v563);
  if (v16)
  {
    if (__base)
    {
      mergesort_b(__base, v16, 0x38uLL, &__block_literal_global_348);
      goto LABEL_385;
    }

LABEL_393:
    v253 = *__error();
    v34 = _sa_logt();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v592 = 67109120;
      *&v592[4] = v504;
      _os_log_error_impl(&dword_1E0E2F000, v34, OS_LOG_TYPE_ERROR, "%d aot infos, but NULL array", v592, 8u);
    }

    *__error() = v253;
    _SASetCrashLogMessage(4790, "%d aot infos, but NULL array", v254, v255, v256, v257, v258, v259, v504);
    _os_crash();
    __break(1u);
    goto LABEL_396;
  }

LABEL_385:
  if (!*(v178 + 240))
  {
    v245 = *__error();
    v246 = _sa_logt();
    if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
    {
      *v592 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v246, OS_LOG_TYPE_ERROR, "Unknown system architecture when parsing task", v592, 2u);
    }

    *__error() = v245;
    _SASetCrashLogMessage(4806, "Unknown system architecture when parsing task", v247, v248, v249, v250, v251, v252, v463);
    _os_crash();
    __break(1u);
    goto LABEL_393;
  }

  if (!v179)
  {
    goto LABEL_398;
  }

  v243 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v179];
  v244 = [v501 objectForKeyedSubscript:v243];

  v502 = v244;
  if (!v244)
  {
LABEL_396:
    LODWORD(v67) = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_747;
    }

    goto LABEL_397;
  }

  LODWORD(v67) = 0;
LABEL_389:
  v185 = v519;
  v16 = v504;
LABEL_408:
  v260 = v506;
LABEL_409:
  v261 = v34;
  while (1)
  {
    if ((v478 & 0x10000000) != 0)
    {
      if (!v261)
      {
        if (v260)
        {
          LODWORD(v503) = 0;
          v504 = 0;
          LODWORD(v267) = 0;
          LODWORD(v266) = 0;
          v506 = 0;
          v268 = *v260 | ((v260[1] & 0xFFFFFF) << 32);
LABEL_422:
          v268 = SAArchitectureForTranslatedTask(v268);
        }

        else
        {
          LODWORD(v503) = 0;
          v504 = 0;
          v506 = 0;
          LODWORD(v266) = 0;
          LODWORD(v267) = 0;
          v268 = 0;
        }

        LODWORD(v265) = 1;
        goto LABEL_426;
      }

      isa = v261->isa;
      LODWORD(v265) = 1;
    }

    else
    {
      if (!v261)
      {
        if (v260)
        {
          LODWORD(v503) = 0;
          v504 = 0;
          v506 = 0;
          LODWORD(v266) = 0;
          LODWORD(v265) = 0;
          LODWORD(v267) = 0;
          v268 = *v260 | ((v260[1] & 0xFFFFFF) << 32);
          goto LABEL_426;
        }

        LODWORD(v503) = 0;
        v504 = 0;
        v506 = 0;
        LODWORD(v266) = 0;
        LODWORD(v265) = 0;
        LODWORD(v267) = 0;
LABEL_425:
        v268 = 0;
        goto LABEL_426;
      }

      isa = v261->isa;
      v265 = v261->isa & 1;
    }

    v266 = (isa >> 1) & 1;
    v267 = (isa >> 2) & 1;
    v506 = (isa >> 3) & 1;
    v503 = (isa >> 4) & 1;
    v504 = (isa >> 5) & 1;
    if (!v260)
    {
      goto LABEL_425;
    }

    v268 = *v260 | ((v260[1] & 0xFFFFFF) << 32);
    if (v265)
    {
      goto LABEL_422;
    }

LABEL_426:
    LODWORD(v493) = v265;
    if (__src)
    {
      if (v16)
      {
        v269 = 0;
      }

      else
      {
        v269 = v265;
      }

      v16 = v185;
      v270 = [(SASampleStore *)a1 taskForKCDataTask:v521 loadInfos:HIDWORD(v563) numLoadInfos:v476 loadInfosIsPartial:v185 textExecLoadInfos:v563 numTextExecLoadInfos:v17 textExecLoadInfosIsPartial:v268 architecture:newValue timestamp:v502 sharedCache:v269 needAOTInfo:?];
      goto LABEL_441;
    }

    if ((v18 & 1) == 0)
    {
      break;
    }

    if (v483)
    {
      if (v16)
      {
        v271 = 0;
      }

      else
      {
        v271 = v265;
      }

      v16 = v185;
      v270 = [SASampleStore taskForKCDataTransitioningTask:a1 loadInfos:v483 numLoadInfos:v521 loadInfosIsPartial:HIDWORD(v563) textExecLoadInfos:v476 numTextExecLoadInfos:v185 textExecLoadInfosIsPartial:v563 architecture:v17 timestamp:newValue sharedCache:v502 needAOTInfo:v271];
      goto LABEL_441;
    }

LABEL_729:
    v414 = *__error();
    v415 = _sa_logt();
    if (os_log_type_enabled(v415, OS_LOG_TYPE_ERROR))
    {
      *v592 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v415, OS_LOG_TYPE_ERROR, "no task_struct, task_delta_struct, nor task_transitioning_struct", v592, 2u);
    }

    *__error() = v414;
    _SASetCrashLogMessage(4891, "no task_struct, task_delta_struct, nor task_transitioning_struct", v416, v417, v418, v419, v420, v421, v463);
    _os_crash();
    __break(1u);
LABEL_732:
    v422 = *__error();
    v423 = _sa_logt();
    if (os_log_type_enabled(v423, OS_LOG_TYPE_ERROR))
    {
      *v592 = 67109120;
      *&v592[4] = v16;
      _os_log_error_impl(&dword_1E0E2F000, v423, OS_LOG_TYPE_ERROR, "%d delta threads when parsing stackshot in kperf", v592, 8u);
    }

    *__error() = v422;
    _SASetCrashLogMessage(5167, "%d delta threads when parsing stackshot in kperf", v424, v425, v426, v427, v428, v429, v16);
    _os_crash();
    __break(1u);
LABEL_735:
    v430 = *__error();
    v431 = _sa_logt();
    if (os_log_type_enabled(v431, OS_LOG_TYPE_ERROR))
    {
      v432 = *(a1 + 440);
      *v592 = 67109376;
      *&v592[4] = v16;
      *&v592[8] = 2048;
      *&v592[10] = v432;
      _os_log_error_impl(&dword_1E0E2F000, v431, OS_LOG_TYPE_ERROR, "%d delta threads when dataStyle %llu", v592, 0x12u);
    }

    *__error() = v430;
    v465 = *(a1 + 440);
    _SASetCrashLogMessage(5168, "%d delta threads when dataStyle %llu", v433, v434, v435, v436, v437, v438, v16);
    _os_crash();
    __break(1u);
LABEL_738:
    v439 = *__error();
    v440 = _sa_logt();
    if (os_log_type_enabled(v440, OS_LOG_TYPE_ERROR))
    {
      *v592 = 136315138;
      *&v592[4] = __s1;
      _os_log_error_impl(&dword_1E0E2F000, v440, OS_LOG_TYPE_ERROR, "no task nor transitioning task, but have p_comm %s", v592, 0xCu);
    }

    *__error() = v439;
    _SASetCrashLogMessage(4727, "no task nor transitioning task, but have p_comm %s", v441, v442, v443, v444, v445, v446, __s1);
    _os_crash();
    __break(1u);
LABEL_741:
    v447 = *__error();
    v448 = _sa_logt();
    if (os_log_type_enabled(v448, OS_LOG_TYPE_ERROR))
    {
      *v592 = 67109120;
      *&v592[4] = v16;
      _os_log_error_impl(&dword_1E0E2F000, v448, OS_LOG_TYPE_ERROR, "%d nonrunnable tids when parsing stackshot in kperf", v592, 8u);
    }

    *__error() = v447;
    _SASetCrashLogMessage(5257, "%d nonrunnable tids when parsing stackshot in kperf", v449, v450, v451, v452, v453, v454, v16);
    _os_crash();
    __break(1u);
LABEL_744:
    v455 = *__error();
    v34 = _sa_logt();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v456 = *(a1 + 440);
      *v592 = 67109376;
      *&v592[4] = v16;
      *&v592[8] = 2048;
      *&v592[10] = v456;
      _os_log_error_impl(&dword_1E0E2F000, v34, OS_LOG_TYPE_ERROR, "%d nonrunnable tids when dataStyle %llu", v592, 0x12u);
    }

    *__error() = v455;
    v466 = *(a1 + 440);
    _SASetCrashLogMessage(5258, "%d nonrunnable tids when dataStyle %llu", v457, v458, v459, v460, v461, v462, v16);
    _os_crash();
    __break(1u);
LABEL_747:
    *v592 = 67109120;
    *&v592[4] = v503;
    _os_log_fault_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_FAULT, "No shared cache with id %u", v592, 8u);
LABEL_397:

    *__error() = v67;
    v178 = a1;
    v185 = v519;
    v16 = v504;
LABEL_398:
    if (!uuid_is_null(&v581 + 8))
    {
      v263 = [(SASampleStore *)v178 sharedCacheWithUUID:v581 slide:v583 slidBaseAddress:?];
LABEL_407:
      v502 = v263;
      LODWORD(v67) = 0;
      goto LABEL_408;
    }

    if ((v478 & 0x40000000) != 0)
    {
      v263 = *(v178 + 1184);
      goto LABEL_407;
    }

    if ((v478 & 0x80000000) != 0)
    {
      v298 = *__error();
      v299 = _sa_logt();
      if (os_log_type_enabled(v299, OS_LOG_TYPE_ERROR))
      {
        *v592 = 136315394;
        *&v592[4] = __s1;
        *&v592[12] = 1024;
        *&v592[14] = v493;
        _os_log_error_impl(&dword_1E0E2F000, v299, OS_LOG_TYPE_ERROR, "Task %s [%d] is using non-system shared cache, but stackshot has no shared cache info", v592, 0x12u);
      }

      LODWORD(v67) = 0;
      v502 = 0;
      *__error() = v298;
      goto LABEL_389;
    }

    v260 = v506;
    if ((v478 & 0x20000000) != 0)
    {
      v502 = 0;
      LODWORD(v67) = (v485 & 8 | v483) == 0;
      goto LABEL_409;
    }

    v502 = 0;
    LODWORD(v67) = 0;
    v261 = v34;
    if (__src && (v474 & 1) == 0)
    {
      v262 = *(v178 + 1184);
      v260 = v506;
      v502 = v262;
      v261 = v34;
      LODWORD(v67) = 0;
    }
  }

  if (v16)
  {
    v272 = 0;
  }

  else
  {
    v272 = v265;
  }

  v16 = v185;
  v270 = [(SASampleStore *)a1 taskForKCDataDeltaTask:*(v498 + 8) loadInfos:v521 numLoadInfos:HIDWORD(v563) loadInfosIsPartial:v476 textExecLoadInfos:v185 numTextExecLoadInfos:v563 textExecLoadInfosIsPartial:v17 timestamp:newValue sharedCache:v502 needAOTInfo:v272];
LABEL_441:
  v17 = v270;
  if (v67)
  {
    v273 = [v270 sharedCache];

    if (v273)
    {
      v274 = *__error();
      v275 = _sa_logt();
      if (os_log_type_enabled(v275, OS_LOG_TYPE_FAULT))
      {
        __s1 = [v17 sharedCache];
        v388 = [__s1 debugDescription];
        v389 = [v17 debugDescription];
        *v592 = 138412546;
        *&v592[4] = v388;
        *&v592[12] = 2112;
        *&v592[14] = v389;
        _os_log_fault_impl(&dword_1E0E2F000, v275, OS_LOG_TYPE_FAULT, "shared cache previously %@, though task %@ now has no shared cache", v592, 0x16u);
      }

      *__error() = v274;
      v16 = v519;
      if (v17)
      {
        objc_setProperty_atomic(v17, v276, 0, 264);
        goto LABEL_448;
      }
    }

    else if (v17)
    {
LABEL_448:
      *(v17 + 74) = 1;
    }
  }

  LODWORD(v67) = a13;
  if (v266)
  {
    v277 = a1;
    if (v17)
    {
      *(v17 + 71) = 1;
      goto LABEL_452;
    }
  }

  else
  {
LABEL_452:
    if (v17)
    {
      v278 = v267;
    }

    else
    {
      v278 = 0;
    }

    if (v278 == 1)
    {
      *(v17 + 75) = 1;
    }

    v277 = a1;
    if (v506)
    {
      if (!v17)
      {
        goto LABEL_470;
      }

      *(v17 + 76) = 1;
    }

    if (v17)
    {
      v279 = v503;
    }

    else
    {
      v279 = 0;
    }

    if (v279 == 1)
    {
      *(v17 + 77) = 1;
    }

    if (v17)
    {
      v280 = v504;
    }

    else
    {
      v280 = 0;
    }

    if (v280 == 1)
    {
      *(v17 + 78) = 1;
    }
  }

LABEL_470:
  v281 = v505;
  if (a13 && v505)
  {
    v282 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v505];
    v67 = [a13 objectForKeyedSubscript:v282];

    if (v67)
    {
      v283 = [v67 intValue];
      if (v283 != -1 && v17)
      {
        *(v17 + 22) = v283;
      }
    }

    else
    {
      v284 = *__error();
      v285 = _sa_logt();
      if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
      {
        v286 = [v17 debugDescription];
        *v592 = 138412546;
        *&v592[4] = v286;
        *&v592[12] = 2048;
        *&v592[14] = v505;
        _os_log_impl(&dword_1E0E2F000, v285, OS_LOG_TYPE_DEFAULT, "WARNING: Task %@ has jetsam coalition id %llu, but stackshot has no info for that coalition", v592, 0x16u);
      }

      *__error() = v284;
    }

    v16 = v519;
  }

  if (![*(v277 + 24) count])
  {
    goto LABEL_485;
  }

  v67 = [v17 taskStates];
  if ([v67 count])
  {
LABEL_484:

    goto LABEL_485;
  }

  v287 = [v17 execTimestamp];
  if (v287)
  {
    goto LABEL_483;
  }

  if ((a7 & 1) == 0)
  {
    if ((*(v277 + 270) & 1) == 0 && (*(v277 + 271) & 1) == 0)
    {

      goto LABEL_514;
    }

LABEL_483:

    goto LABEL_484;
  }

  v293 = *(v277 + 16);
  v294 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "pid")}];
  v295 = [v293 objectForKeyedSubscript:v294];
  v296 = [v295 count];

  v16 = v519;
  if (v296 < 2)
  {
    goto LABEL_485;
  }

LABEL_514:
  if (v17)
  {
    objc_setProperty_atomic(v17, v297, newValue, 232);
  }

LABEL_485:
  v288 = v521;
  LODWORD(v506) = (v478 & 0x10) != 0 || __src && *(__src + 14) || (v18 & 1) == 0 && *(v498 + 48);
  if (a8)
  {
    v513 = 0;
    v45 = v518;
    v18 = a6;
    goto LABEL_551;
  }

  if (!a7)
  {
    goto LABEL_523;
  }

  if (!__src)
  {
LABEL_726:
    v406 = *__error();
    v407 = _sa_logt();
    if (os_log_type_enabled(v407, OS_LOG_TYPE_ERROR))
    {
      *v592 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v407, OS_LOG_TYPE_ERROR, "no task_struct when backfilling kperf", v592, 2u);
    }

    *__error() = v406;
    _SASetCrashLogMessage(4957, "no task_struct when backfilling kperf", v408, v409, v410, v411, v412, v413, v464);
    _os_crash();
    __break(1u);
    goto LABEL_729;
  }

  if (a4)
  {
    v289 = 0;
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v290 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v290 = a4 - 1;
    }

    v291 = *(v277 + 232);
    v292 = 0;
    if (HIDWORD(v291) && v291)
    {
      v289 = *(__src + 2);
      if (v291 == HIDWORD(v291))
      {
        v292 = *(__src + 3);
      }

      else
      {
        v289 = __udivti3();
        v300 = *(__src + 3);
        v292 = __udivti3();
      }
    }

    if (v479)
    {
      v302 = *(v479 + 8) ^ 1;
      v303 = *(v479 + 9);
    }

    else
    {
      v303 = 0;
      v302 = 1;
    }

    v304 = 0x80000000;
    if ((v303 & 1) == 0 && v513)
    {
      v304 = *(v513 + 1);
    }

    v301 = *(__src + 1);
    [(SASampleStore *)v277 backfillTask:v17 lastSampleIndex:v290 timestamp:newValue haveSnap:1 terminatedThreadsUserTimeInNs:v289 terminatedThreadsSystemTimeInNs:v292 terminatedThreadsCycles:0 terminatedThreadsInstructions:0 suspendCount:*(__src + 14) pageins:*(__src + 16) isDarwinBG:(v301 & 0x40) != 0 isForeground:(v301 & 0x400) != 0 isBoosted:(v301 & 0x800) != 0 isDirty:BYTE2(v301) & 1 isRunningBoardActive:BYTE5(v301) & 1 hasRunningBoardAssertion:(v301 & 0x40000000000) != 0 haveWQFlags:(v301 & 0x80000) != 0 wqExceededTotalThreadLimit:(v301 & 0x40000) != 0 wqExceededConstrainedThreadLimit:(v301 & 0x20000) != 0 haveCoopAndActiveConstrWQFlags:(v301 & 0x80000) != 0 wqExceededCooperativeThreadLimit:(v301 & 0x2000000000) != 0 wqExceededActiveConstrainedThreadLimit:(v301 & 0x4000000000) != 0 haveMem:*(__src + 5) != 0 taskSizeInBytes:*(__src + 5) haveLatencyQos:1 latencyQos:*(__src + 20) haveRunawayMitigated:v302 & 1 isRunawayMitigated:(v301 & 0x8000000000) != 0 effectiveJetsamPriority:v304];
  }

LABEL_523:
  v305 = [v17 taskStates];
  v306 = [v305 lastObject];

  v520 = v16;
  if (v306)
  {
    v307 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "pid")}];
    v67 = [v477 objectForKeyedSubscript:v307];
    v308 = *(v277 + 232);
    if (__src)
    {
      v309 = v306;
      v310 = v306;
      v311 = v511;
      v312 = __src;
      v313 = [(SATaskState *)v310 correspondsToKCDataTask:v511 terminatedThreadsInstructionCycles:v513 memoryStatus:v308 machTimebase:v67 donatingUniquePids:?];

      if (v313)
      {
        goto LABEL_538;
      }

LABEL_528:
      v315 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "pid")}];
      v67 = [v477 objectForKeyedSubscript:v315];
      v316 = [SATaskState stateWithKCDataTask:v312 terminatedThreadsInstructionCycles:v311 memoryStatus:v513 machTimebase:*(v277 + 232) donatingUniquePids:v67 startTimestamp:newValue endTimestamp:newValue startSampleIndex:a4 endSampleIndex:a4];

LABEL_534:
      v18 = a6;
      v16 = v520;
      if (v17)
      {
        goto LABEL_535;
      }

      goto LABEL_536;
    }

    v309 = v306;
    v317 = v306;
    if (v18)
    {
      v311 = v511;
      v318 = v307;
      v319 = [(SATaskState *)v317 correspondsToKCDataTransitioningTask:v483 terminatedThreadsInstructionCycles:v511 memoryStatus:v513 machTimebase:v308 donatingUniquePids:v67];

      if (v319)
      {
LABEL_538:
        objc_setProperty_atomic(v309, v314, newValue, 56);
        v309[9] = a4;
        v18 = a6;
        v16 = v520;
        goto LABEL_539;
      }

LABEL_533:
      v67 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "pid")}];
      v320 = [v477 objectForKeyedSubscript:v67];
      v316 = [SATaskState stateWithKCDataTransitioningTask:v483 terminatedThreadsInstructionCycles:v311 memoryStatus:v513 machTimebase:*(v277 + 232) donatingUniquePids:v320 startTimestamp:newValue endTimestamp:newValue startSampleIndex:a4 endSampleIndex:a4];

      goto LABEL_534;
    }

    v311 = v511;
    v321 = [(SATaskState *)v306 correspondsToKCDataDeltaTask:v498 terminatedThreadsInstructionCycles:v511 memoryStatus:v513 machTimebase:v308 donatingUniquePids:v67];

    if (v321)
    {
      goto LABEL_538;
    }
  }

  else
  {
    v309 = 0;
    v311 = v511;
    v312 = __src;
    if (__src)
    {
      goto LABEL_528;
    }

    if (v18)
    {
      goto LABEL_533;
    }
  }

  v67 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "pid")}];
  v384 = [v477 objectForKeyedSubscript:v67];
  v316 = [SATaskState stateWithKCDataDeltaTask:v498 terminatedThreadsInstructionCycles:v311 memoryStatus:v513 machTimebase:*(v277 + 232) donatingUniquePids:v384 startTimestamp:newValue endTimestamp:newValue startSampleIndex:a4 endSampleIndex:a4];

  if (v513)
  {
    goto LABEL_534;
  }

  v16 = v520;
  if (v309)
  {
    v385 = [v309 memoryLimitMB];
    if (v316)
    {
      v316[7] = v385;
      v316[8] = [v309 effectiveJetsamPriority];
      v316[9] = [v309 requestedJetsamPriority];
      v316[10] = [v309 assertionJetsamPriority];
    }

    else
    {
      [v309 effectiveJetsamPriority];
      [v309 requestedJetsamPriority];
      [v309 assertionJetsamPriority];
    }
  }

  v18 = a6;
  if (v17)
  {
LABEL_535:
    [v17[1] addObject:v316];
    [v17[1] count];
  }

LABEL_536:

LABEL_539:
  if (v474)
  {
    v513 = v17;
    v322 = [v513 binaryLoadInfos];
    [v18 setKernelBinaryLoadInfos:v322];

    v45 = v518;
  }

  else
  {
    v323 = [v17 binaryLoadInfos];
    [v18 setUserBinaryLoadInfos:v323];

    if (v17)
    {
      v324 = *(v17 + 79);
    }

    else
    {
      v324 = 0;
    }

    [v18 setAssumeUserBinaryLoadInfosContainMainBinary:v324 & 1];
    v325 = [v17 sharedCache];
    [v18 setSharedCache:v325];

    if (v493)
    {
      v326 = -[SASampleStore addressTranslationsForPid:](v277, [v17 pid]);
      [v18 setAddressTranslations:v326];
    }

    [(SASampleStore *)v277 lastTaskWithPid:?];
    v513 = v45 = v518;
    if (!v513)
    {
      v513 = [SATask taskWithPid:a7 << 63 >> 63 uniquePid:0 name:0 sharedCache:?];
      [(SASampleStore *)v277 addTask:v513];
    }
  }

  if (*(v277 + 268) == 1 && !v564)
  {
    v327 = [v17 mainThread];
    v564 = [v327 threadId];
  }

  v288 = v521;
LABEL_551:
  if (v288)
  {
    free(v288);
  }

  HIDWORD(v563) = 0;
  if (v16)
  {
    free(v16);
  }

  LODWORD(v563) = 0;
  if (__base)
  {
    free(__base);
  }

  v328 = v22[1];
  v329 = *v22 + (*v22)[1];
  v330 = v329 + 16;
  *v22 = (v329 + 16);
  v331 = v329 + 32;
  if (v331 <= v328)
  {
    v521 = a15;
    v519 = a14;
    __base = a16;
    v505 = v533;
    v511 = v541;
    while (1)
    {
      if (&v331[v330[1]] > v328 || *v330 == -242132755)
      {
        goto LABEL_558;
      }

      v355 = objc_autoreleasePoolPush();
      KCLogIter(*v22, v22[1], 0);
      v356 = *v22;
      v357 = **v22;
      if ((v357 & 0xFFFFFFF0) == 0x20)
      {
        v358 = 17;
      }

      else
      {
        v358 = **v22;
      }

      if ((v358 - 1) >= 6)
      {
        v359 = v356 + 4;
      }

      else
      {
        v359 = *v22 + 12;
      }

      if (v358 > 19)
      {
        if (v358 == 2332)
        {
          if (uuid_is_null(v356 + 24))
          {
            LODWORD(v67) = *__error();
            v364 = _sa_logt();
            if (os_log_type_enabled(v364, OS_LOG_TYPE_ERROR))
            {
              *v592 = 0;
              _os_log_error_impl(&dword_1E0E2F000, v364, OS_LOG_TYPE_ERROR, "Kernel cache UUID is all zeros", v592, 2u);
            }

            *__error() = v67;
          }

          else
          {
            v559 = 0u;
            v560 = 0u;
            v557 = 0u;
            v558 = 0u;
            v368 = *(v277 + 128);
            v369 = [v368 countByEnumeratingWithState:&v557 objects:v580 count:16];
            if (v369)
            {
              v370 = v369;
              v67 = *v558;
LABEL_631:
              v371 = 0;
              while (1)
              {
                if (*v558 != v67)
                {
                  objc_enumerationMutation(v368);
                }

                v372 = *(*(&v557 + 1) + 8 * v371);
                if ([v372 matchesUUID:v356 + 6 loadAddress:*v359])
                {
                  break;
                }

                if (v370 == ++v371)
                {
                  v370 = [v368 countByEnumeratingWithState:&v557 objects:v580 count:16];
                  if (v370)
                  {
                    goto LABEL_631;
                  }

                  goto LABEL_637;
                }
              }

              v375 = v372;

              if (v375)
              {
                goto LABEL_652;
              }
            }

            else
            {
LABEL_637:
            }

            v376 = uuidForBytes((v356 + 6));
            v375 = [SAKernelCache kernelCacheWithUUID:v376 loadAddress:*v359];

            [*(a1 + 128) addObject:v375];
LABEL_652:

            v45 = v518;
          }
        }

        else if (v358 == 20)
        {
          v386 = v45;
          v387 = *(v356 + 1);
          if (v500 != v387)
          {
            v382 = *__error();
            v383 = _sa_logt();
            if (os_log_type_enabled(v383, OS_LOG_TYPE_ERROR))
            {
              *v592 = 134218240;
              *&v592[4] = v500;
              *&v592[12] = 2048;
              *&v592[14] = v387;
              _os_log_error_impl(&dword_1E0E2F000, v383, OS_LOG_TYPE_ERROR, "Container end with wrong ID (%llu != %llu)", v592, 0x16u);
            }

            v46 = 7;
            v18 = a6;
            v45 = v386;
            goto LABEL_710;
          }

          v46 = 0;
          v18 = a6;
          v45 = v386;
LABEL_711:
          objc_autoreleasePoolPop(v355);
          if (!v46)
          {
            goto LABEL_559;
          }

          goto LABEL_586;
        }

        goto LABEL_694;
      }

      v360 = v22[1];
      if (v358 == 17)
      {
        break;
      }

      if (v358 != 19)
      {
        goto LABEL_694;
      }

      if ((v356 + 4) > v360 || (v361 = v356[1], v361 < 4) || v357 != 19 || v356 + v361 + 16 > v360)
      {
        v382 = *__error();
        v383 = _sa_logt();
        if (os_log_type_enabled(v383, OS_LOG_TYPE_ERROR))
        {
          *v592 = 67109120;
          *&v592[4] = v499;
          _os_log_error_impl(&dword_1E0E2F000, v383, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: subcontainer of container type %u is invalid", v592, 8u);
        }

        v46 = 1;
LABEL_709:
        v18 = a6;
LABEL_710:

        *__error() = v382;
        goto LABEL_711;
      }

      v362 = v356[4];
      if (v362 == 2356)
      {
        v46 = SkipToContainerEnd(v22, 0);
        v18 = a6;
      }

      else
      {
        v18 = a6;
        if (v362 == 2308)
        {
          v363 = [(SASampleStore *)a1 _parseKCDataThreadContainer:v22 timestampOfSample:newValue sampleIndex:a4 task:v17 kernelTask:v513 frameIterator:a6 mainThreadID:v564 primaryDataIsKPerf:a7 addStaticInfoOnly:a8 ktraceDataUnavailable:v492 threadIDsInThisTaskThisSample:v45 dispatchQueueIDsInThisTaskThisSample:v506 taskIsSuspended:v496 waitInfos:v509 numWaitInfos:v523 turnstileInfos:v508 numTurnstileInfos:v467 port_label_info_array:a14 exclaveInfo:a15, a16];
        }

        else
        {
          v363 = SkipToContainerEnd(v22, 1);
        }

        v46 = v363;
      }

      objc_autoreleasePoolPop(v355);
      if (v46)
      {
        goto LABEL_586;
      }

LABEL_695:
      v328 = v22[1];
      v381 = *v22 + (*v22)[1];
      v330 = v381 + 16;
      *v22 = (v381 + 16);
      v331 = v381 + 32;
      v277 = a1;
      if (v331 > v328)
      {
        goto LABEL_558;
      }
    }

    if ((v356 + 4) > v360 || (v365 = v356[1], v356 + v365 + 16 > v360) || v357 != 17 && (v357 & 0xFFFFFFF0) != 0x20)
    {
LABEL_698:
      v382 = *__error();
      v383 = _sa_logt();
      if (os_log_type_enabled(v383, OS_LOG_TYPE_ERROR))
      {
        *v592 = 0;
        v46 = 2;
        _os_log_error_impl(&dword_1E0E2F000, v383, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: array is invalid", v592, 2u);
      }

      else
      {
        v46 = 2;
      }

      goto LABEL_709;
    }

    v16 = *(v356 + 1);
    if (v16)
    {
      if (v357 == 17)
      {
        v366 = HIDWORD(v16);
        if (SHIDWORD(v16) <= 2313)
        {
          if (SHIDWORD(v16) <= 2073)
          {
            if (HIDWORD(v16) == 48)
            {
              v367 = 20;
            }

            else
            {
              if (HIDWORD(v16) != 49)
              {
                goto LABEL_698;
              }

              v367 = 24;
            }

            goto LABEL_664;
          }

          if (HIDWORD(v16) != 2074)
          {
            if (HIDWORD(v16) != 2311)
            {
              goto LABEL_698;
            }

            v367 = 4;
            goto LABEL_664;
          }
        }

        else if (SHIDWORD(v16) <= 2315)
        {
          if (HIDWORD(v16) != 2314)
          {
            goto LABEL_661;
          }
        }

        else if (HIDWORD(v16) != 2316)
        {
          if (HIDWORD(v16) != 2317)
          {
            if (HIDWORD(v16) != 2369)
            {
              goto LABEL_698;
            }

            v367 = 48;
            goto LABEL_664;
          }

LABEL_661:
          v367 = 16;
LABEL_664:
          if (v365 / v367 < v16 || v365 % v16 >= 0x10)
          {
            goto LABEL_698;
          }

LABEL_666:
          v373 = 8;
          if (v366 <= 2314)
          {
            if (v366 <= 2310)
            {
              if ((v366 - 48) >= 2 && v366 != 2074)
              {
                goto LABEL_640;
              }

              goto LABEL_694;
            }

            if (v366 == 2311)
            {
              goto LABEL_694;
            }

            if (v366 != 2314)
            {
              goto LABEL_640;
            }

            goto LABEL_679;
          }

          if (v366 > 2316)
          {
            if (v366 == 2369)
            {
              v373 = 48;
              goto LABEL_681;
            }

            if (v366 != 2317)
            {
              goto LABEL_640;
            }
          }

          else if (v366 != 2315)
          {
            goto LABEL_679;
          }

          v373 = 16;
          goto LABEL_679;
        }

        v367 = 8;
        goto LABEL_664;
      }

      v374 = v365 - (**v22 & 0xF);
      if (v365 < (**v22 & 0xFu))
      {
        goto LABEL_698;
      }

      if (v374 < v16)
      {
        goto LABEL_698;
      }

      v373 = v374 / v16;
      if (v374 % v16)
      {
        goto LABEL_698;
      }

      v366 = HIDWORD(v16);
    }

    else
    {
      if (v365)
      {
        goto LABEL_698;
      }

      v366 = HIDWORD(v16);
      if (v357 == 17)
      {
        goto LABEL_666;
      }

LABEL_640:
      v373 = 0;
    }

LABEL_679:
    if (v366 == 2327)
    {
      if ((a8 & 1) == 0)
      {
        if (a7)
        {
          goto LABEL_741;
        }

        if (*(a1 + 440) == 1)
        {
          goto LABEL_744;
        }

        if (v16)
        {
          LODWORD(v67) = 0;
          v379 = MEMORY[0x1E69E9820];
          v16 = v16;
          do
          {
            v532[0] = v379;
            v532[1] = v19;
            v533[0] = __286__SASampleStore__parseKCDataTaskContainer_timestampOfSample_sampleIndex_sharedCaches_frameIterator_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_taskUniquePidsInThisSample_taskPidsInThisSample_importanceDonations_rPidForJetsamCoalitionId_port_label_info_array_exclaveInfo___block_invoke_360;
            v533[1] = &unk_1E86F5768;
            v533[2] = a1;
            v538 = v564;
            v534 = v492;
            v535 = v17;
            v536 = newValue;
            v539 = a4;
            v537 = v45;
            __286__SASampleStore__parseKCDataTaskContainer_timestampOfSample_sampleIndex_sharedCaches_frameIterator_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_taskUniquePidsInThisSample_taskPidsInThisSample_importanceDonations_rPidForJetsamCoalitionId_port_label_info_array_exclaveInfo___block_invoke_360(v532, v380, (v359 + v67));

            LODWORD(v67) = v67 + v373;
            --v16;
          }

          while (v16);
        }
      }

      goto LABEL_694;
    }

    if (v366 != 2369)
    {
LABEL_694:
      objc_autoreleasePoolPop(v355);
      v18 = a6;
      goto LABEL_695;
    }

LABEL_681:
    if ((a8 & 1) == 0)
    {
      if (a7)
      {
        goto LABEL_732;
      }

      if (*(a1 + 440) == 1)
      {
        goto LABEL_735;
      }

      if (v16)
      {
        LODWORD(v67) = 0;
        v377 = MEMORY[0x1E69E9820];
        v16 = v16;
        do
        {
          v540[0] = v377;
          v540[1] = v19;
          v541[0] = __286__SASampleStore__parseKCDataTaskContainer_timestampOfSample_sampleIndex_sharedCaches_frameIterator_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_taskUniquePidsInThisSample_taskPidsInThisSample_importanceDonations_rPidForJetsamCoalitionId_port_label_info_array_exclaveInfo___block_invoke_356;
          v541[1] = &unk_1E86F5740;
          v541[2] = a1;
          v547 = v564;
          v553 = v373;
          v554 = v509;
          v548 = v496;
          v549 = a14;
          v555 = v508;
          v550 = a15;
          v551 = v523;
          v542 = v492;
          v543 = newValue;
          v552 = a4;
          v544 = v17;
          v545 = v513;
          v556 = v506;
          v546 = v45;
          __286__SASampleStore__parseKCDataTaskContainer_timestampOfSample_sampleIndex_sharedCaches_frameIterator_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_taskUniquePidsInThisSample_taskPidsInThisSample_importanceDonations_rPidForJetsamCoalitionId_port_label_info_array_exclaveInfo___block_invoke_356(v540, v378, (v359 + v67));

          LODWORD(v67) = v67 + v373;
          --v16;
        }

        while (v16);
      }
    }

    goto LABEL_694;
  }

LABEL_558:
  v46 = 0;
LABEL_559:
  if ((a8 & 1) == 0)
  {
    if ((a7 & 1) == 0)
    {
      v332 = objc_alloc(MEMORY[0x1E695DFA8]);
      v333 = [v17 threads];
      v334 = [v333 allKeys];
      v335 = [v332 initWithArray:v334];

      [v335 minusSet:v492];
      v530 = 0u;
      v531 = 0u;
      v528 = 0u;
      v529 = 0u;
      v336 = v335;
      v337 = [v336 countByEnumeratingWithState:&v528 objects:v579 count:16];
      if (v337)
      {
        v338 = v337;
        v339 = *v529;
        do
        {
          for (i = 0; i != v338; ++i)
          {
            if (*v529 != v339)
            {
              objc_enumerationMutation(v336);
            }

            v341 = *(*(&v528 + 1) + 8 * i);
            v342 = [v17 threads];
            v343 = [v342 objectForKeyedSubscript:v341];

            v344 = [v343 exitTimestamp];

            if (v344)
            {
              v346 = 1;
            }

            else
            {
              v346 = v343 == 0;
            }

            if (!v346)
            {
              objc_setProperty_atomic(v343, v345, newValue, 40);
            }
          }

          v338 = [v336 countByEnumeratingWithState:&v528 objects:v579 count:16];
        }

        while (v338);
      }
    }

    v526 = 0u;
    v527 = 0u;
    v524 = 0u;
    v525 = 0u;
    v347 = v518;
    v348 = [v347 countByEnumeratingWithState:&v524 objects:v578 count:16];
    if (v348)
    {
      v349 = v348;
      v350 = *v525;
      do
      {
        for (j = 0; j != v349; ++j)
        {
          if (*v525 != v350)
          {
            objc_enumerationMutation(v347);
          }

          v352 = *(*(&v524 + 1) + 8 * j);
          if ([v347 countForObject:v352] >= 2)
          {
            v353 = [v17 dispatchQueues];
            v354 = [v353 objectForKeyedSubscript:v352];
            if (v354)
            {
              v354[24] = 1;
            }
          }
        }

        v349 = [v347 countByEnumeratingWithState:&v524 objects:v578 count:16];
      }

      while (v349);
    }

    v46 = 0;
    v45 = v518;
  }

LABEL_586:
  if (v496)
  {
    free(v496);
  }

  if (v523)
  {
    free(v523);
  }

  [v18 clearTaskData];

  v17 = v492;
LABEL_21:

  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

- (uint64_t)_parseKCDataSharedCacheContainer:(void *)a3 sharedCaches:
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = (*a2)[4];
  if (v7 != 2370)
  {
    v39 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v53 = v7;
      _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, "bad container type %u", buf, 8u);
    }

    *__error() = v39;
    _SASetCrashLogMessage(6041, "bad container type %u", v40, v41, v42, v43, v44, v45, v7);
    _os_crash();
    __break(1u);
LABEL_52:
    v46 = *(v5 + 4);
    v47 = *v5;
    v49 = v5[10];
    v48 = v5[11];
    v50 = [v7 debugDescription];
    *buf = 67110658;
    *v53 = v49;
    *&v53[4] = 1040;
    *&v53[6] = 16;
    *v54 = 2096;
    *&v54[2] = v3;
    v55 = 2048;
    v56 = v46;
    v57 = 2048;
    v58 = v47;
    v59 = 1024;
    v60 = v48;
    v61 = 2114;
    v62 = v50;
    _os_log_fault_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_FAULT, "Shared cache info id %d: %{uuid_t}.16P slid base address 0x%llx, slide 0x%llx, flags 0x%x doesn't match existing %{public}@", buf, 0x3Cu);

LABEL_29:
    *__error() = v4;
    goto LABEL_35;
  }

  v9 = *(v6 + 1);
  v10 = v6 + v6[1];
  v11 = v10 + 16;
  v12 = a2[1];
  *a2 = (v10 + 16);
  v13 = v10 + 32;
  if (v13 > v12)
  {
LABEL_41:
    v35 = *__error();
    v36 = _sa_logt();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_ERROR, "no shared cache info at shared cache container end", buf, 2u);
    }

    v26 = 0;
    *__error() = v35;
    goto LABEL_44;
  }

  v5 = 0;
  while (1)
  {
    if (&v13[v11[1]] > v12 || *v11 == -242132755)
    {
LABEL_25:
      if (!v5)
      {
        goto LABEL_41;
      }

      goto LABEL_26;
    }

    v16 = objc_autoreleasePoolPush();
    KCLogIter(*a2, a2[1], 0);
    v17 = *a2;
    v18 = **a2;
    v19 = (v18 & 0xFFFFFFF0) == 0x20 ? 17 : **a2;
    if (v19 != 19)
    {
      break;
    }

    v20 = a2[1];
    v21 = v17 + 4;
    if ((v17 + 4) > v20 || ((v22 = v17[1], v23 = v21 + v22, v22 >= 4) ? (v24 = v18 == 19) : (v24 = 0), v24 ? (v25 = v23 > v20) : (v25 = 1), v25))
    {
      v32 = *__error();
      v33 = _sa_logt();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v53 = 2370;
        _os_log_error_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: subcontainer of container type %u is invalid", buf, 8u);
      }

      v26 = 1;
      goto LABEL_48;
    }

    v26 = SkipToContainerEnd(a2, 1);
    objc_autoreleasePoolPop(v16);
    if (v26)
    {
      goto LABEL_44;
    }

LABEL_24:
    v12 = a2[1];
    v27 = *a2 + (*a2)[1];
    v11 = v27 + 16;
    *a2 = (v27 + 16);
    v13 = v27 + 32;
    if (v13 > v12)
    {
      goto LABEL_25;
    }
  }

  if (v19 == 2371)
  {
    v5 = v17 + 4;
    goto LABEL_14;
  }

  if (v19 != 20)
  {
LABEL_14:
    objc_autoreleasePoolPop(v16);
    goto LABEL_24;
  }

  v34 = *(v17 + 1);
  if (v9 != v34)
  {
    v32 = *__error();
    v33 = _sa_logt();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v53 = v9;
      *&v53[8] = 2048;
      *v54 = v34;
      _os_log_error_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_ERROR, "Container end with wrong ID (%llu != %llu)", buf, 0x16u);
    }

    v26 = 7;
LABEL_48:

    *__error() = v32;
    objc_autoreleasePoolPop(v16);
    goto LABEL_44;
  }

  objc_autoreleasePoolPop(v16);
  if (!v5)
  {
    goto LABEL_41;
  }

LABEL_26:
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5[10]];
  v7 = [a3 objectForKeyedSubscript:v28];

  v3 = v5 + 2;
  if (v7)
  {
    if (([v7 matchesUUID:v5 + 2 slide:*v5 slidBaseAddress:*(v5 + 4)] & 1) == 0)
    {
      v4 = *__error();
      v29 = _sa_logt();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_52;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v30 = [(SASampleStore *)a1 sharedCacheWithUUID:*v5 slide:*(v5 + 4) slidBaseAddress:?];
    v7 = v30;
    if (v30)
    {
      *(v30 + 28) = v5[11];
      *(v30 + 32) = v5[10];
    }

    else
    {
      v51 = v5[10];
    }

    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [a3 setObject:v7 forKeyedSubscript:v31];
  }

  if (v5[11])
  {
    objc_storeStrong((a1 + 1184), v7);
  }

LABEL_35:

  v26 = 0;
LABEL_44:
  v37 = *MEMORY[0x1E69E9840];
  return v26;
}

void __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(SASampleStore *)*(a1 + 32) lastTaskWithUniquePid:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 taskStates];
    v8 = [v7 lastObject];

    if (v8)
    {
      objc_setProperty_atomic(v8, v9, *(a1 + 40), 56);
      v8[9] = *(a1 + 56);
    }

    v10 = [v6 threads];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke_2;
    v18[3] = &unk_1E86F5648;
    v11 = *(a1 + 56);
    v18[4] = *(a1 + 40);
    v18[5] = v11;
    [v10 enumerateKeysAndObjectsUsingBlock:v18];
  }

  else
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = *a3;
      *buf = 134217984;
      v20 = v17;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "Non-runnable task %llu from stackshot before any regular task struct", buf, 0xCu);
    }

    *__error() = v12;
  }

  v14 = *(a1 + 48);
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*a3];
  [v14 addObject:v15];

  v16 = *MEMORY[0x1E69E9840];
}

void __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 exitTimestamp];

  if (!v5)
  {
    v6 = [a3 threadStates];
    self = [v6 lastObject];

    if (self)
    {
      objc_setProperty_atomic(self, v7, *(a1 + 32), 56);
      [(SAThreadState *)self setEndSampleIndex:?];
    }
  }
}

void __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke_299(uint64_t a1, void *a2)
{
  v3 = [a2 threads];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke_2_300;
  v4[3] = &__block_descriptor_40_e35_v32__0__NSNumber_8__SAThread_16_B24l;
  v4[4] = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke_2_300(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 exitTimestamp];

  if (!v5)
  {
    v6 = [a3 threadStates];
    v11 = [v6 lastObject];

    v7 = v11;
    if (v11)
    {
      v8 = [v11 endSampleIndex] >= *(a1 + 32);
      v7 = v11;
      if (!v8)
      {
        v10 = [v11 endTimestamp];
        if (a3)
        {
          objc_setProperty_atomic(a3, v9, v10, 40);
        }

        v7 = v11;
      }
    }
  }
}

void __138__SASampleStore__addKCDataStackshot_timestamp_sampleIndex_shouldSkipSampleOut_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 exitTimestamp];
  if (v5)
  {
    v6 = v5;
    goto LABEL_4;
  }

  v7 = [a3 threadStates];
  v8 = [v7 lastObject];
  obja = [v8 endTimestamp];

  v6 = obja;
  if (obja)
  {
LABEL_4:
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    obj = v6;
    if (v10)
    {
      if (![v10 lt:?])
      {
LABEL_8:
        v11 = obj;
        goto LABEL_9;
      }

      v9 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v9 + 40), obj);
    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:
}

BOOL __286__SASampleStore__parseKCDataTaskContainer_timestampOfSample_sampleIndex_sharedCaches_frameIterator_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_taskUniquePidsInThisSample_taskPidsInThisSample_importanceDonations_rPidForJetsamCoalitionId_port_label_info_array_exclaveInfo___block_invoke(uint64_t a1, unsigned __int8 *__base, unsigned int *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = __base + 8;
  do
  {
    v10 = *(v9 - 1);
    if (v10)
    {
      if (v7 != v8)
      {
        v11 = &__base[24 * v8];
        *v11 = v10;
        uuid_copy(v11 + 8, v9);
        v3 = *a3;
      }

      ++v8;
    }

    ++v7;
    v9 += 24;
  }

  while (v7 < v3);
  if (v3 == v8)
  {
    v12 = 0;
    if (!v8)
    {
      return v12;
    }
  }

  else
  {
    v12 = v8 != 0;
    *a3 = v8;
    if (!v8)
    {
      return v12;
    }
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    mergesort_b(__base, v8, 0x18uLL, &__block_literal_global_341);
  }

  return v12;
}

uint64_t __286__SASampleStore__parseKCDataTaskContainer_timestampOfSample_sampleIndex_sharedCaches_frameIterator_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_taskUniquePidsInThisSample_taskPidsInThisSample_importanceDonations_rPidForJetsamCoalitionId_port_label_info_array_exclaveInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (*a3 <= *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a3 < *a2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t __286__SASampleStore__parseKCDataTaskContainer_timestampOfSample_sampleIndex_sharedCaches_frameIterator_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_taskUniquePidsInThisSample_taskPidsInThisSample_importanceDonations_rPidForJetsamCoalitionId_port_label_info_array_exclaveInfo___block_invoke_346(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a2 + 8);
  v5 = v3 >= v4;
  if (v3 <= v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

- (id)addressTranslationsForPid:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 328);
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (!v6)
    {
      if (!*(a1 + 328))
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
        v8 = *(a1 + 328);
        *(a1 + 328) = v7;
      }

      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
      v9 = *(a1 + 328);
      v10 = [MEMORY[0x1E696AD98] numberWithInt:a2];
      [v9 setObject:v6 forKeyedSubscript:v10];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __286__SASampleStore__parseKCDataTaskContainer_timestampOfSample_sampleIndex_sharedCaches_frameIterator_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_taskUniquePidsInThisSample_taskPidsInThisSample_importanceDonations_rPidForJetsamCoalitionId_port_label_info_array_exclaveInfo___block_invoke_356(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 128) <= 0x3Fu)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  v6 = *a3;
  if (*(*(a1 + 32) + 268) == 1 && v6 != *(a1 + 80))
  {
    return;
  }

  v7 = *(a1 + 132);
  if (!v7)
  {
LABEL_10:
    v8 = 0;
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v8 = *(a1 + 88);
  while (*(v8 + 8) != v6)
  {
    v8 += 31;
    if (!--v7)
    {
      goto LABEL_10;
    }
  }

  if (!*(v8 + 25))
  {
    goto LABEL_11;
  }

  v17 = *(a1 + 96);
  if (!v17)
  {
    goto LABEL_11;
  }

  v9 = *(a1 + 104);
  while (**v9 != *(v8 + 25))
  {
    v9 += 2;
    if (!--v17)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v10 = *(a1 + 136);
  if (v10)
  {
    v11 = *(a1 + 112);
    while (*v11 != v6)
    {
      v11 += 28;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }

    if (*(v11 + 26))
    {
      v18 = *(a1 + 96);
      if (v18)
      {
        v12 = *(a1 + 104);
        while (**v12 != *(v11 + 26))
        {
          v12 += 2;
          if (!--v18)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

LABEL_17:
  v12 = 0;
LABEL_18:
  v13 = *(a1 + 40);
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
  [v13 addObject:v14];

  v15 = [(SASampleStore *)*(a1 + 32) addKCDataThreadV4:0 threadV2:v5 deltaThreadV3:a3 deltaThreadV2:*(a1 + 48) timestamp:*(a1 + 120) sampleIndex:0 stack:0 threadExclavesInfo:0 threadName:0 dispatchQueueLabel:v8 waitInfo:v9 waitInfoPortLabelInfo:v11 turnstileInfo:v12 turnstileInfoPortLabelInfo:0 instructionCycles:*(a1 + 56) task:*(a1 + 64) kernelTask:*(a1 + 140) taskIsSuspended:?];
  if (v15)
  {
    v16 = *(a1 + 72);
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
    [v16 addObject:v19];
  }
}

void __286__SASampleStore__parseKCDataTaskContainer_timestampOfSample_sampleIndex_sharedCaches_frameIterator_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_taskUniquePidsInThisSample_taskPidsInThisSample_importanceDonations_rPidForJetsamCoalitionId_port_label_info_array_exclaveInfo___block_invoke_360(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (*(*(a1 + 32) + 268) != 1 || v5 == *(a1 + 72))
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    [v6 addObject:v7];

    v8 = [*(a1 + 48) threads];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*a3];
    v18 = [v8 objectForKeyedSubscript:v9];

    v10 = v18;
    if (v18)
    {
      v11 = [v18 threadStates];
      v12 = [v11 lastObject];

      if (v12)
      {
        objc_setProperty_atomic(v12, v13, *(a1 + 56), 56);
        [(SAThreadState *)v12 setEndSampleIndex:?];
        v14 = [v12 dispatchQueue];
        v15 = [v14 identifier];

        if (v15)
        {
          v16 = *(a1 + 64);
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
          [v16 addObject:v17];
        }
      }

      v10 = v18;
    }
  }
}

- (uint64_t)_parseKCDataThreadContainer:(void *)a3 timestampOfSample:(unint64_t)a4 sampleIndex:(void *)a5 task:(uint64_t)a6 kernelTask:(NSObject *)a7 frameIterator:(void *)a8 mainThreadID:(char)a9 primaryDataIsKPerf:(char)a10 addStaticInfoOnly:(void *)a11 ktraceDataUnavailable:(void *)a12 threadIDsInThisTaskThisSample:(char)a13 dispatchQueueIDsInThisTaskThisSample:(uint64_t)a14 taskIsSuspended:(unsigned int)a15 waitInfos:(uint64_t)a16 numWaitInfos:(unsigned int)a17 turnstileInfos:(int)a18 numTurnstileInfos:(unsigned int)a19 port_label_info_array:(void *)a20 exclaveInfo:(void *)a21
{
  v23 = a21;
  v24 = a17;
  v25 = a15;
  v242 = *MEMORY[0x1E69E9840];
  v26 = *a2;
  v27 = (*a2)[4];
  if (v27 != 2308)
  {
    v144 = *__error();
    v180 = _sa_logt();
    if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__dst) = 67109120;
      DWORD1(__dst) = v27;
      _os_log_error_impl(&dword_1E0E2F000, v180, OS_LOG_TYPE_ERROR, "bad container type %u", &__dst, 8u);
    }

    *__error() = v144;
    _SASetCrashLogMessage(5452, "bad container type %u", v181, v182, v183, v184, v185, v186, v27);
    _os_crash();
    __break(1u);
    goto LABEL_346;
  }

  v28 = a2[1];
  v29 = *(v26 + 1);
  if (*(a1 + 268) == 1 && v29 != a8)
  {
    v30 = *MEMORY[0x1E69E9840];

    return SkipToContainerEnd(a2, 1);
  }

  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  __dst = 0u;
  v235 = 0u;
  v32 = v26 + v26[1];
  v33 = v32 + 16;
  *a2 = (v32 + 16);
  v34 = v32 + 32;
  if (v34 > v28)
  {
    v227 = 0;
    __src = 0;
    v223 = 0;
    v35 = 0;
    v214 = 0;
    v217 = 0;
    v218 = 0;
    v219 = 0;
    v220 = 0;
LABEL_186:
    v110 = v223;
    if (!(v223 | __src) && !v227 && !v35)
    {
      v111 = *__error();
      v112 = _sa_logt();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v112, OS_LOG_TYPE_ERROR, "no thread_snap at thread container end", buf, 2u);
      }

      *__error() = v111;
      [a7 clearThreadData];
      v61 = 2;
      goto LABEL_337;
    }

    v113 = v227;
    if (!v227)
    {
      v113 = v35;
    }

    if (__src)
    {
      v113 = __src;
    }

    if (v223)
    {
      v113 = v223;
    }

    v114 = *v113;
    v115 = 0x1E696A000uLL;
    if (v220)
    {
      v116 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v220];
      v117 = [a21 objectForKeyedSubscript:v116];

      v118 = [SAThreadExclavesInfo alloc];
      if (v118)
      {
        v119 = [(SAThreadExclavesInfo *)v118 initWithCallstacks:v117];
        v120 = v119;
        if (v119)
        {
          *(v119 + 2) = v220[3];
        }
      }

      else
      {
        v120 = 0;
      }
    }

    else
    {
      v120 = 0;
    }

    v121 = [a7 exclaveInsertionIndex];
    if (v121 == [a7 numKernelFrames])
    {
      [a7 setExclaveInsertionIndex:0];
    }

    if (!a9)
    {
      v221 = v120;
LABEL_301:
      v162 = v35;
      v163 = 0;
      if (a14)
      {
        v164 = 0;
        if (a15)
        {
          v163 = a14;
          while (*(v163 + 8) != v114)
          {
            v163 += 31;
            if (!--v25)
            {
              v163 = 0;
LABEL_315:
              v164 = 0;
              goto LABEL_317;
            }
          }

          v165 = *(v163 + 25);
          if (!*(v163 + 25))
          {
            goto LABEL_315;
          }

          if (a19)
          {
            v166 = a19;
            v164 = a20;
            while (**v164 != v165)
            {
              v164 += 2;
              if (!--v166)
              {
                goto LABEL_312;
              }
            }
          }

          else
          {
LABEL_312:
            v167 = *__error();
            v168 = _sa_logt();
            if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v231) = v165;
              _os_log_error_impl(&dword_1E0E2F000, v168, OS_LOG_TYPE_ERROR, "No port label info for id %d", buf, 8u);
            }

            v164 = 0;
            *__error() = v167;
            v115 = 0x1E696A000;
          }
        }
      }

      else
      {
        v164 = 0;
      }

LABEL_317:
      v169 = v115;
      v170 = 0;
      if (a16)
      {
        v171 = 0;
        if (v24)
        {
          v170 = a16;
          while (*v170 != v114)
          {
            v170 += 28;
            if (!--v24)
            {
              v170 = 0;
LABEL_331:
              v171 = 0;
              goto LABEL_333;
            }
          }

          v172 = *(v170 + 26);
          if (!*(v170 + 26))
          {
            goto LABEL_331;
          }

          if (a19)
          {
            v173 = a19;
            v171 = a20;
            while (**v171 != v172)
            {
              v171 += 2;
              if (!--v173)
              {
                goto LABEL_328;
              }
            }
          }

          else
          {
LABEL_328:
            v225 = *__error();
            v174 = _sa_logt();
            if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v231) = v172;
              _os_log_error_impl(&dword_1E0E2F000, v174, OS_LOG_TYPE_ERROR, "No port label info for id %d", buf, 8u);
            }

            v171 = 0;
            *__error() = v225;
          }
        }
      }

      else
      {
        v171 = 0;
      }

LABEL_333:
      v175 = v169;
      v176 = [*(v169 + 3480) numberWithUnsignedLongLong:v114];
      [a11 addObject:v176];

      v177 = [(SASampleStore *)a1 addKCDataThreadV4:v110 threadV2:__src deltaThreadV3:v227 deltaThreadV2:v162 timestamp:a3 sampleIndex:a4 stack:a7 threadExclavesInfo:v221 threadName:v217 dispatchQueueLabel:v218 waitInfo:v163 waitInfoPortLabelInfo:v164 turnstileInfo:v170 turnstileInfoPortLabelInfo:v171 instructionCycles:v219 task:a5 kernelTask:a6 taskIsSuspended:a13];
      if (v177)
      {
        v178 = [*(v175 + 3480) numberWithUnsignedLongLong:v177];
        [a12 addObject:v178];
      }

      [a7 clearThreadData];
      v120 = v221;
      goto LABEL_336;
    }

    if (v223 | __src)
    {
      if (!v223 || &__dst == v223)
      {
        p_dst = __src;
        if (__src && &__dst != __src)
        {
          v240 = 0u;
          v241 = 0u;
          v238 = 0u;
          v239 = 0u;
          v236 = 0u;
          v237 = 0u;
          __dst = 0u;
          v235 = 0u;
          memmove(&__dst, __src, 0x68uLL);
          p_dst = &__dst;
        }
      }

      else
      {
        memmove(&__dst, v223, 0x80uLL);
        v110 = &__dst;
        p_dst = __src;
      }

      v208 = v35;
      v241 &= 0xE000000u;
      *&v236 = 0;
      *&v238 = v238 & 0x1EFFC;
      *(&v239 + 1) = DWORD2(v239) & 0xFFFFFFFB;
      if (v110 | p_dst)
      {
        __src = p_dst;
        if (v110)
        {
          v123 = v110;
        }

        else
        {
          v123 = p_dst;
        }

        v224 = *(v123 + 40);
        if (v218)
        {
          v124 = [a5 dispatchQueues];
          v125 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v224];
          v126 = [v124 objectForKeyedSubscript:v125];

          if (v126)
          {
            v127 = [v126 dispatchQueueLabel];

            if (!v127)
            {
              v129 = SANSStringForCString(v218);
              if (v129)
              {
                objc_setProperty_atomic_copy(v126, v128, v129, 32);
              }
            }
          }
        }

        v130 = [a5 threads];
        v131 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v114];
        v132 = [v130 objectForKeyedSubscript:v131];

        if (!v132 && (a10 & 1) == 0)
        {
          v132 = [SAThread threadWithId:v114];
          v133 = a5;
          v134 = [a5 execTimestamp];

          if (v134)
          {
            v136 = [a5 execTimestamp];
            if (v132)
            {
              objc_setProperty_atomic(v132, v135, v136, 32);
            }

            v133 = a5;
          }

          [(SATask *)v133 addThread:v132];
        }

        v137 = __src;
        if (v110)
        {
          v138 = v110;
        }

        else
        {
          v138 = __src;
        }

        v213 = v138;
        v139 = *(v138 + 64);
        if (v132)
        {
          if ((v139 & 0x2000) != 0)
          {
            v140 = [a5 mainThread];

            v137 = __src;
            if (!v140)
            {
              v132[17] = 1;
              if (a5)
              {
                objc_setProperty_atomic(a5, v141, v132, 272);
                v137 = __src;
              }
            }
          }
        }

        if (a10)
        {
          [a7 clearThreadData];

LABEL_336:
          v61 = 0;
          goto LABEL_337;
        }

        if (v110)
        {
          v142 = v110;
        }

        else
        {
          v142 = v137;
        }

        [a7 setContinuation:*(v142 + 16)];
        v143 = (v139 & 0x8080) != 0 || [a5 pid] && !-[NSObject hasUserStack](a7, "hasUserStack");
        [a7 setIsUserStackTruncated:v143];
        [a7 setIsSwiftAsyncStackTruncated:(v139 >> 16) & 1];
        [a7 setIsKernelStackTruncated:(v139 >> 14) & 1];
        if ([a5 pid])
        {
          v229[0] = 0;
          v145 = [(SATask *)a5 leafFrameAfterAddingStack:a7 leafOfCRootFramesReplacedBySwiftAsync:v229];
          v146 = v229[0];
        }

        else
        {
          v145 = 0;
          v146 = 0;
        }

        v210 = [(SATask *)a6 leafFrameAfterAddingStack:a7 leafOfCRootFramesReplacedBySwiftAsync:0];
        if (!v110)
        {
          goto LABEL_265;
        }

        v147 = *(a1 + 248);
        if (v147 <= 4)
        {
          if (!v147)
          {
LABEL_265:
            LOBYTE(v148) = 125;
            goto LABEL_266;
          }

          if (v147 == 4)
          {
LABEL_261:
            v148 = (*(v110 + 112) >> 25) & 7;
LABEL_266:
            v221 = v120;
            if (v146)
            {
              v149 = -1;
            }

            else
            {
              v149 = 0;
            }

            if (a4)
            {
              v206 = v149;
              v209 = v146;
              v150 = 0;
              if (a4 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v151 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v151 = a4 - 1;
              }

              if (v110)
              {
                v152 = v110;
              }

              else
              {
                v152 = __src;
              }

              v153 = *(a1 + 232);
              v154 = 0;
              if (HIDWORD(v153) && v153)
              {
                v150 = *(v152 + 56);
                if (v153 == HIDWORD(v153))
                {
                  v155 = __src;
                  if (v110)
                  {
                    v155 = v110;
                  }

                  v154 = *(v155 + 48);
                }

                else
                {
                  v150 = __udivti3();
                  v156 = __src;
                  if (v110)
                  {
                    v156 = v110;
                  }

                  v157 = *(v156 + 48);
                  v154 = __udivti3();
                }
              }

              if (v110)
              {
                v158 = v110;
              }

              else
              {
                v158 = __src;
              }

              if (v219)
              {
                v159 = *v219;
                v160 = v219[1];
              }

              else
              {
                v159 = 0;
                v160 = 0;
              }

              v115 = 0x1E696A000uLL;
              v161 = __src;
              if (v110)
              {
                v161 = v110;
              }

              v204 = v150;
              v146 = v209;
              [(SASampleStore *)a1 backfillThread:v132 inTask:a5 lastSampleIndex:v151 timestamp:a3 haveName:v214 & 1 name:v217 haveDispatchQueueId:1 dispatchQueueId:v224 dispatchQueueLabel:v218 leafKernelFrame:v210 hasExclaveInKernelStack:v221 != 0 haveUserStack:1 leafUserFrame:v145 swiftTaskId:v206 leafOfCRootFramesReplacedBySwiftAsync:v209 threadExclavesInfo:v221 haveSched:1 systemCpuTimeNs:v204 userCpuTimeNs:v154 basePriority:*(v158 + 96) scheduledPriority:*(v158 + 98) state:*(v158 + 88) threadQos:*(v158 + 100) threadRequestedQos:*(v158 + 101) threadRequestedQosOverride:*(v158 + 102) threadQosPromote:v148 haveCycIns:v219 != 0 instructions:v159 cycles:v160 haveSnap:1 ioTier:*(v161 + 103) isIOPassive:(*(v213 + 64) & 0x20) != 0 isDarwinBG:(*(v213 + 64) & 0x10) != 0 isSuspended:a13 | ((*(v213 + 64) & 0x40u) >> 6) isGlobalForcedIdle:BYTE1(*(v213 + 64)) & 1 isIdleWorkQueue:0 lastMadeRunnableTime:0 isOnCore:0 isOnCoreForLastSampleIndex:0 cpuNum:0xFFFFFFFF];
            }

            v35 = v208;
            goto LABEL_301;
          }
        }

        else if (v147 == 5 || v147 == 6 || v147 == 7)
        {
          goto LABEL_261;
        }

        SAComplainAboutUnknownThreadPolicyVersion(v147);
        goto LABEL_265;
      }
    }

    else
    {
      v187 = *__error();
      v188 = _sa_logt();
      if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v188, OS_LOG_TYPE_ERROR, "no thread_snap when primary data is kperf", buf, 2u);
      }

      *__error() = v187;
      _SASetCrashLogMessage(5769, "no thread_snap when primary data is kperf", v189, v190, v191, v192, v193, v194, v203);
      _os_crash();
      __break(1u);
    }

    v195 = *__error();
    v196 = _sa_logt();
    if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v196, OS_LOG_TYPE_ERROR, "no thread_snap when backfilling kperf", buf, 2u);
    }

    *__error() = v195;
    _SASetCrashLogMessage(5788, "no thread_snap when backfilling kperf", v197, v198, v199, v200, v201, v202, v203);
    _os_crash();
    __break(1u);
  }

  v227 = 0;
  __src = 0;
  v223 = 0;
  v35 = 0;
  v214 = 0;
  v217 = 0;
  v218 = 0;
  v219 = 0;
  v220 = 0;
  while (1)
  {
    if (&v34[v33[1]] > v28 || *v33 == -242132755)
    {
      goto LABEL_186;
    }

    v36 = objc_autoreleasePoolPush();
    KCLogIter(*a2, a2[1], 0);
    v37 = *a2;
    v38 = **a2;
    if ((v38 & 0xFFFFFFF0) == 0x20)
    {
      v39 = 17;
    }

    else
    {
      v39 = **a2;
    }

    if ((v39 - 1) > 5)
    {
      if (v39 <= 2309)
      {
        if (v39 != 17 && v39 != 19)
        {
          goto LABEL_31;
        }

        v41 = v37[1];
        v45 = v41;
LABEL_36:
        v40 = (v37 + 4);
        goto LABEL_37;
      }

      if (v39 == 2310)
      {
        v41 = v37[1];
        if (v41 == 112 && (v37[2] & 0x8F) == 0)
        {
          v45 = 104;
          goto LABEL_36;
        }
      }

      else
      {
        if (v39 != 2312)
        {
LABEL_31:
          v41 = v37[1];
          goto LABEL_34;
        }

        v41 = v37[1];
        if (v41 == 32 && (v37[2] & 0x8F) == 0)
        {
          v45 = 24;
          goto LABEL_36;
        }
      }

LABEL_34:
      v47 = v37[2] & 0xF;
      v43 = v41 >= v47;
      v45 = v41 - v47;
      if (!v43)
      {
        v45 = 0;
      }

      goto LABEL_36;
    }

    v40 = (v37 + 12);
    v41 = v37[1];
    v42 = v37[2] & 0xF;
    v43 = v41 >= v42;
    v44 = v41 - v42;
    if (!v43)
    {
      v44 = 0;
    }

    v45 = v44 - 32;
LABEL_37:
    if (v39 > 2338)
    {
      if (v39 > 2353)
      {
        switch(v39)
        {
          case 2354:
            [a7 setSwiftAsyncStitchIndex:*v40];
            break;
          case 2369:
            v62 = v227;
            if (v45 > 0x3F)
            {
              v62 = v40;
            }

            v227 = v62;
            if (v45 <= 0x3F)
            {
              v35 = v40;
            }

            break;
          case 2376:
            [a7 setExclaveInsertionIndex:v40[2]];
            v220 = v40;
            break;
        }

        goto LABEL_184;
      }

      if (v39 == 2339)
      {
        v219 = v40;
      }

      else if (v39 == 2344)
      {
        if (v45)
        {
          if (!*(v40 + v45 - 1))
          {
            if (*v40)
            {
              v218 = v40;
              goto LABEL_184;
            }

            v48 = v36;
            v49 = v35;
            v52 = *__error();
            v53 = _sa_logt();
            if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_92;
            }

            *buf = 0;
            v54 = v53;
            v55 = "WARNING: Empty dispatch queue label";
            goto LABEL_56;
          }

          v48 = v36;
          v49 = v35;
          v52 = *__error();
          v53 = _sa_logt();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v54 = v53;
            v55 = "WARNING: dispatch queue label non NULL-terminated";
LABEL_56:
            v56 = 2;
LABEL_91:
            _os_log_impl(&dword_1E0E2F000, v54, OS_LOG_TYPE_DEFAULT, v55, buf, v56);
          }
        }

        else
        {
          v48 = v36;
          v49 = v35;
          v52 = *__error();
          v53 = _sa_logt();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v231) = 0;
            v54 = v53;
            v55 = "WARNING: invalid dispatch queue label (size %d)";
            v56 = 8;
            goto LABEL_91;
          }
        }

LABEL_92:

        *__error() = v52;
LABEL_93:
        v35 = v49;
        v36 = v48;
        v24 = a17;
      }

LABEL_184:
      objc_autoreleasePoolPop(v36);
      goto LABEL_185;
    }

    if (v39 > 19)
    {
      if (v39 == 2310)
      {
        v66 = v223;
        if (v45 > 0x7F)
        {
          v66 = v40;
        }

        v223 = v66;
        v67 = __src;
        if (v45 <= 0x7F)
        {
          v67 = v40;
        }

        __src = v67;
        goto LABEL_184;
      }

      if (v39 == 2313)
      {
        if (!*(v40 + v45 - 1))
        {
          v214 = 1;
          v217 = v40;
          goto LABEL_184;
        }

        v48 = v36;
        v49 = v35;
        v50 = *__error();
        v51 = _sa_logt();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E0E2F000, v51, OS_LOG_TYPE_DEFAULT, "WARNING: thread name non NULL-terminated", buf, 2u);
        }

        *__error() = v50;
        v214 = 1;
        goto LABEL_93;
      }

      if (v39 != 20)
      {
        goto LABEL_184;
      }

      context = v36;
      v23 = *(v37 + 1);
      v21 = v29;
      if (v29 == v23)
      {
        objc_autoreleasePoolPop(context);
        goto LABEL_186;
      }

      LODWORD(v24) = *__error();
      v144 = _sa_logt();
      v180 = a7;
      if (!os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
      {
LABEL_341:
        v61 = 7;
        goto LABEL_286;
      }

LABEL_346:
      *buf = 134218240;
      v231 = v21;
      v232 = 2048;
      v233 = v23;
      _os_log_error_impl(&dword_1E0E2F000, v144, OS_LOG_TYPE_ERROR, "Container end with wrong ID (%llu != %llu)", buf, 0x16u);
      goto LABEL_341;
    }

    v57 = a2[1];
    if (v39 == 17)
    {
      context = v36;
      v207 = v35;
      if ((v37 + 4) > v57 || v37 + v41 + 16 > v57 || v38 != 17 && (v38 & 0xFFFFFFF0) != 0x20)
      {
LABEL_248:
        LODWORD(v24) = *__error();
        v144 = _sa_logt();
        if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v61 = 2;
          _os_log_error_impl(&dword_1E0E2F000, v144, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: array is invalid", buf, 2u);
        }

        else
        {
          v61 = 2;
        }

        goto LABEL_285;
      }

      v63 = *(v37 + 1);
      if (v63)
      {
        if (v38 != 17)
        {
          v43 = v41 >= (**a2 & 0xFu);
          v68 = v41 - (**a2 & 0xF);
          if (!v43)
          {
            goto LABEL_248;
          }

          if (v68 < v63)
          {
            goto LABEL_248;
          }

          v69 = v68 / v63;
          if (v68 % v63)
          {
            goto LABEL_248;
          }

          v64 = HIDWORD(v63);
          goto LABEL_133;
        }

        v64 = HIDWORD(v63);
        if (SHIDWORD(v63) <= 2313)
        {
          if (SHIDWORD(v63) <= 2073)
          {
            if (HIDWORD(v63) == 48)
            {
              v65 = 20;
            }

            else
            {
              if (HIDWORD(v63) != 49)
              {
                goto LABEL_248;
              }

              v65 = 24;
            }

            goto LABEL_121;
          }

          if (HIDWORD(v63) != 2074)
          {
            if (HIDWORD(v63) != 2311)
            {
              goto LABEL_248;
            }

            v65 = 4;
            goto LABEL_121;
          }
        }

        else if (SHIDWORD(v63) <= 2315)
        {
          if (HIDWORD(v63) != 2314)
          {
            goto LABEL_118;
          }
        }

        else if (HIDWORD(v63) != 2316)
        {
          if (HIDWORD(v63) != 2317)
          {
            if (HIDWORD(v63) != 2369)
            {
              goto LABEL_248;
            }

            v65 = 48;
            goto LABEL_121;
          }

LABEL_118:
          v65 = 16;
LABEL_121:
          if (v41 / v65 < v63 || v41 % v63 >= 0x10)
          {
            goto LABEL_248;
          }

LABEL_123:
          v70 = v64 - 7;
          if ((v64 - 2311) <= 0x3A)
          {
            if (((1 << v70) & 0x28) != 0)
            {
              v69 = 8;
            }

            else
            {
              if (((1 << v70) & 0x50) == 0)
              {
                if (((1 << v70) & 0x400000000000001) == 0)
                {
                  goto LABEL_127;
                }

LABEL_129:
                v35 = v207;
                goto LABEL_184;
              }

              v69 = 16;
            }

LABEL_133:
            if (v64 <= 2322)
            {
              if (v64 > 2315)
              {
                if (v64 == 2316)
                {
                  v93 = malloc_type_calloc(v63, 8uLL, 0x100004000313F17uLL);
                  v81 = v93;
                  if (v63)
                  {
                    v94 = 0;
                    v95 = 0;
                    v96 = MEMORY[0x1E69E9820];
                    do
                    {
                      v229[21] = v96;
                      v229[22] = 3221225472;
                      v229[23] = __350__SASampleStore__parseKCDataThreadContainer_timestampOfSample_sampleIndex_task_kernelTask_frameIterator_mainThreadID_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_threadIDsInThisTaskThisSample_dispatchQueueIDsInThisTaskThisSample_taskIsSuspended_waitInfos_numWaitInfos_turnstileInfos_numTurnstileInfos_port_label_info_array_exclaveInfo___block_invoke_5;
                      v229[24] = &__block_descriptor_40_e39_v20__0I8r__stack_snapshot_frame32_II_12l;
                      *&v93[v95] = *(v40 + v94);
                      v95 += 8;
                      v94 += v69;
                    }

                    while (8 * v63 != v95);
                    v229[25] = v93;
                  }

                  goto LABEL_182;
                }

                if (v64 == 2317)
                {
                  v80 = malloc_type_calloc(v63, 8uLL, 0x100004000313F17uLL);
                  v81 = v80;
                  if (v63)
                  {
                    v82 = 0;
                    v83 = 0;
                    v84 = MEMORY[0x1E69E9820];
                    do
                    {
                      v229[11] = v84;
                      v229[12] = 3221225472;
                      v229[13] = __350__SASampleStore__parseKCDataThreadContainer_timestampOfSample_sampleIndex_task_kernelTask_frameIterator_mainThreadID_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_threadIDsInThisTaskThisSample_dispatchQueueIDsInThisTaskThisSample_taskIsSuspended_waitInfos_numWaitInfos_turnstileInfos_numTurnstileInfos_port_label_info_array_exclaveInfo___block_invoke_7;
                      v229[14] = &__block_descriptor_40_e39_v20__0I8r__stack_snapshot_frame64_QQ_12l;
                      *&v80[v83] = *(v40 + v82);
                      v83 += 8;
                      v82 += v69;
                    }

                    while (8 * v63 != v83);
                    v229[15] = v80;
                  }

                  goto LABEL_182;
                }

LABEL_183:
                v35 = v207;
                v36 = context;
                goto LABEL_184;
              }

              if (v64 == 2314)
              {
                v89 = malloc_type_calloc(v63, 8uLL, 0x100004000313F17uLL);
                v76 = v89;
                if (v63)
                {
                  v90 = 0;
                  v91 = 0;
                  v92 = MEMORY[0x1E69E9820];
                  do
                  {
                    v229[41] = v92;
                    v229[42] = 3221225472;
                    v229[43] = __350__SASampleStore__parseKCDataThreadContainer_timestampOfSample_sampleIndex_task_kernelTask_frameIterator_mainThreadID_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_threadIDsInThisTaskThisSample_dispatchQueueIDsInThisTaskThisSample_taskIsSuspended_waitInfos_numWaitInfos_turnstileInfos_numTurnstileInfos_port_label_info_array_exclaveInfo___block_invoke;
                    v229[44] = &__block_descriptor_40_e39_v20__0I8r__stack_snapshot_frame32_II_12l;
                    *&v89[v91] = *(v40 + v90);
                    v91 += 8;
                    v90 += v69;
                  }

                  while (8 * v63 != v91);
                  v229[45] = v89;
                }
              }

              else
              {
                if (v64 != 2315)
                {
                  goto LABEL_183;
                }

                v75 = malloc_type_calloc(v63, 8uLL, 0x100004000313F17uLL);
                v76 = v75;
                if (v63)
                {
                  v77 = 0;
                  v78 = 0;
                  v79 = MEMORY[0x1E69E9820];
                  do
                  {
                    v229[31] = v79;
                    v229[32] = 3221225472;
                    v229[33] = __350__SASampleStore__parseKCDataThreadContainer_timestampOfSample_sampleIndex_task_kernelTask_frameIterator_mainThreadID_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_threadIDsInThisTaskThisSample_dispatchQueueIDsInThisTaskThisSample_taskIsSuspended_waitInfos_numWaitInfos_turnstileInfos_numTurnstileInfos_port_label_info_array_exclaveInfo___block_invoke_3;
                    v229[34] = &__block_descriptor_40_e39_v20__0I8r__stack_snapshot_frame64_QQ_12l;
                    *&v75[v78] = *(v40 + v77);
                    v78 += 8;
                    v77 += v69;
                  }

                  while (8 * v63 != v78);
                  v229[35] = v75;
                }
              }
            }

            else
            {
              if (v64 > 2324)
              {
                if (v64 == 2325)
                {
                  v97 = malloc_type_calloc(v63, 8uLL, 0x100004000313F17uLL);
                  v81 = v97;
                  if (v63)
                  {
                    v98 = 0;
                    v99 = 0;
                    v100 = MEMORY[0x1E69E9820];
                    do
                    {
                      v229[16] = v100;
                      v229[17] = 3221225472;
                      v229[18] = __350__SASampleStore__parseKCDataThreadContainer_timestampOfSample_sampleIndex_task_kernelTask_frameIterator_mainThreadID_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_threadIDsInThisTaskThisSample_dispatchQueueIDsInThisTaskThisSample_taskIsSuspended_waitInfos_numWaitInfos_turnstileInfos_numTurnstileInfos_port_label_info_array_exclaveInfo___block_invoke_6;
                      v229[19] = &__block_descriptor_40_e13_v20__0I8r_I12l;
                      *&v97[v99] = *(v40 + v98);
                      v99 += 8;
                      v98 += v69;
                    }

                    while (8 * v63 != v99);
                    v229[20] = v97;
                  }
                }

                else
                {
                  if (v64 != 2326)
                  {
                    if (v64 == 2355)
                    {
                      v71 = malloc_type_calloc(v63, 8uLL, 0x100004000313F17uLL);
                      if (v63)
                      {
                        v72 = 0;
                        v73 = 0;
                        v74 = MEMORY[0x1E69E9820];
                        do
                        {
                          v229[1] = v74;
                          v229[2] = 3221225472;
                          v229[3] = __350__SASampleStore__parseKCDataThreadContainer_timestampOfSample_sampleIndex_task_kernelTask_frameIterator_mainThreadID_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_threadIDsInThisTaskThisSample_dispatchQueueIDsInThisTaskThisSample_taskIsSuspended_waitInfos_numWaitInfos_turnstileInfos_numTurnstileInfos_port_label_info_array_exclaveInfo___block_invoke_9;
                          v229[4] = &__block_descriptor_40_e13_v20__0I8r_Q12l;
                          *&v71[v73] = *(v40 + v72);
                          v73 += 8;
                          v72 += v69;
                        }

                        while (8 * v63 != v73);
                        v229[5] = v71;
                      }

                      [a7 setSwiftAsyncFrames:v71];
                      [a7 setNumSwiftAsyncFrames:v63];
                    }

                    goto LABEL_183;
                  }

                  v105 = malloc_type_calloc(v63, 8uLL, 0x100004000313F17uLL);
                  v81 = v105;
                  if (v63)
                  {
                    v106 = 0;
                    v107 = 0;
                    v108 = MEMORY[0x1E69E9820];
                    do
                    {
                      v229[6] = v108;
                      v229[7] = 3221225472;
                      v229[8] = __350__SASampleStore__parseKCDataThreadContainer_timestampOfSample_sampleIndex_task_kernelTask_frameIterator_mainThreadID_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_threadIDsInThisTaskThisSample_dispatchQueueIDsInThisTaskThisSample_taskIsSuspended_waitInfos_numWaitInfos_turnstileInfos_numTurnstileInfos_port_label_info_array_exclaveInfo___block_invoke_8;
                      v229[9] = &__block_descriptor_40_e13_v20__0I8r_Q12l;
                      *&v105[v107] = *(v40 + v106);
                      v107 += 8;
                      v106 += v69;
                    }

                    while (8 * v63 != v107);
                    v229[10] = v105;
                  }
                }

LABEL_182:
                [a7 setUserFrames:v81];
                [a7 setNumUserFrames:v63];
                goto LABEL_183;
              }

              if (v64 == 2323)
              {
                v101 = malloc_type_calloc(v63, 8uLL, 0x100004000313F17uLL);
                v76 = v101;
                if (v63)
                {
                  v102 = 0;
                  v103 = 0;
                  v104 = MEMORY[0x1E69E9820];
                  do
                  {
                    v229[36] = v104;
                    v229[37] = 3221225472;
                    v229[38] = __350__SASampleStore__parseKCDataThreadContainer_timestampOfSample_sampleIndex_task_kernelTask_frameIterator_mainThreadID_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_threadIDsInThisTaskThisSample_dispatchQueueIDsInThisTaskThisSample_taskIsSuspended_waitInfos_numWaitInfos_turnstileInfos_numTurnstileInfos_port_label_info_array_exclaveInfo___block_invoke_2;
                    v229[39] = &__block_descriptor_40_e13_v20__0I8r_I12l;
                    *&v101[v103] = *(v40 + v102);
                    v103 += 8;
                    v102 += v69;
                  }

                  while (8 * v63 != v103);
                  v229[40] = v101;
                }
              }

              else
              {
                v85 = malloc_type_calloc(v63, 8uLL, 0x100004000313F17uLL);
                v76 = v85;
                if (v63)
                {
                  v86 = 0;
                  v87 = 0;
                  v88 = MEMORY[0x1E69E9820];
                  do
                  {
                    v229[26] = v88;
                    v229[27] = 3221225472;
                    v229[28] = __350__SASampleStore__parseKCDataThreadContainer_timestampOfSample_sampleIndex_task_kernelTask_frameIterator_mainThreadID_primaryDataIsKPerf_addStaticInfoOnly_ktraceDataUnavailable_threadIDsInThisTaskThisSample_dispatchQueueIDsInThisTaskThisSample_taskIsSuspended_waitInfos_numWaitInfos_turnstileInfos_numTurnstileInfos_port_label_info_array_exclaveInfo___block_invoke_4;
                    v229[29] = &__block_descriptor_40_e13_v20__0I8r_Q12l;
                    *&v85[v87] = *(v40 + v86);
                    v87 += 8;
                    v86 += v69;
                  }

                  while (8 * v63 != v87);
                  v229[30] = v85;
                }
              }
            }

            [a7 setKernelFrames:v76];
            [a7 setNumKernelFrames:v63];
            goto LABEL_183;
          }

LABEL_127:
          if ((v64 - 48) < 2 || v64 == 2074)
          {
            goto LABEL_129;
          }

LABEL_130:
          v69 = 0;
          goto LABEL_133;
        }

        v65 = 8;
        goto LABEL_121;
      }

      if (v41)
      {
        goto LABEL_248;
      }

      v64 = HIDWORD(v63);
      if (v38 == 17)
      {
        goto LABEL_123;
      }

      goto LABEL_130;
    }

    if (v39 != 19)
    {
      goto LABEL_184;
    }

    v58 = v37 + 4;
    if (v58 > v57 || v41 < 4 || v38 != 19 || v58 + v41 > v57)
    {
      break;
    }

    v59 = SkipToContainerEnd(a2, 1);
    v60 = v36;
    v61 = v59;
    objc_autoreleasePoolPop(v60);
    if (v61)
    {
      v180 = a7;
      goto LABEL_287;
    }

LABEL_185:
    v28 = a2[1];
    v109 = *a2 + (*a2)[1];
    v33 = v109 + 16;
    *a2 = (v109 + 16);
    v34 = v109 + 32;
    if (v34 > v28)
    {
      goto LABEL_186;
    }
  }

  context = v36;
  LODWORD(v24) = *__error();
  v144 = _sa_logt();
  if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v231) = 2308;
    _os_log_error_impl(&dword_1E0E2F000, v144, OS_LOG_TYPE_ERROR, "Error parsing kcdata buffer: subcontainer of container type %u is invalid", buf, 8u);
  }

  v61 = 1;
LABEL_285:
  v180 = a7;
LABEL_286:

  *__error() = v24;
  objc_autoreleasePoolPop(context);
LABEL_287:
  [v180 clearThreadData];
LABEL_337:
  v179 = *MEMORY[0x1E69E9840];
  return v61;
}

BOOL __99__SASampleStore_parseKCDataExclavesContainer_exclaveInfo_primaryDataIsKPerf_ktraceDataUnavailable___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 address];
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    *a3 = 1;
  }

  return v5 == v6;
}

BOOL __99__SASampleStore_parseKCDataExclavesContainer_exclaveInfo_primaryDataIsKPerf_ktraceDataUnavailable___block_invoke_382(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 address];
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    *a3 = 1;
  }

  return v5 == v6;
}

void __65__SASampleStore_parseKCDataExclavesIPCStackContainer_callstacks___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v3 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v3 insertObject:v6 atIndex:0];
  }

  else
  {
    v4 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "0 frame in exclave stack, ignoring", buf, 2u);
    }

    *__error() = v4;
  }
}

void __68__SASampleStore_parseKCDataExclavesTextLayoutContainer_textLayouts___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [[SAKCDataExclaveTextLayoutSegment alloc] initWithInfo:a3];
  [v3 addObject:v4];
}

void __44__SASampleStore_resampleTruncatedBacktraces__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 lastObject];
  if ([v4 pid] != -1 && objc_msgSend(v4, "pid"))
  {
    v5 = [v4 exitTimestamp];
    if (v5 || (v6 = getpid(), v6 == [v4 pid]))
    {

      goto LABEL_6;
    }

    if (_AvoidSuspendingPid([v4 pid]))
    {
      goto LABEL_6;
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    v33 = 0;
    v7 = [v4 threads];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __44__SASampleStore_resampleTruncatedBacktraces__block_invoke_2;
    v27[3] = &unk_1E86F6000;
    v27[4] = &v28;
    [v7 enumerateKeysAndObjectsUsingBlock:v27];

    if (!v29[5])
    {
LABEL_20:
      _Block_object_dispose(&v28, 8);

      goto LABEL_6;
    }

    v8 = [v4 binaryLoadInfos];
    [*(a1 + 32) setUserBinaryLoadInfos:v8];

    if (v4)
    {
      v9 = v4[79];
    }

    else
    {
      v9 = 0;
    }

    [*(a1 + 32) setAssumeUserBinaryLoadInfosContainMainBinary:v9 & 1];
    v10 = [v4 sharedCache];
    [*(a1 + 32) setSharedCache:v10];

    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = *(v11 + 240);
      if (v4)
      {
LABEL_13:
        objc_copyStruct(&dest, v4 + 288, 8, 1, 0);
        if (v12)
        {
          if (dest)
          {
            CSArchitectureGetFamily();
            CSArchitectureGetFamily();
            if ((CSArchitectureMatchesArchitecture() & 1) == 0)
            {
              v13 = -[SASampleStore addressTranslationsForPid:](*(a1 + 40), [v4 pid]);
              [*(a1 + 32) setAddressTranslations:v13];
            }
          }
        }
      }
    }

    else
    {
      v12 = 0;
      if (v4)
      {
        goto LABEL_13;
      }
    }

    v14 = [v4 pid];
    v15 = [v29[5] allKeys];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __44__SASampleStore_resampleTruncatedBacktraces__block_invoke_3;
    v22 = &unk_1E86F5860;
    v25 = &v28;
    v23 = *(a1 + 32);
    v16 = v4;
    v17 = *(a1 + 48);
    v24 = v16;
    v26 = v17;
    v18 = SAResampleThreads(v14, v15, &v19);

    if (!v18)
    {
      ++*(*(*(a1 + 56) + 8) + 24);
    }

    [*(a1 + 32) clearTaskData];

    goto LABEL_20;
  }

LABEL_6:
}

void __44__SASampleStore_resampleTruncatedBacktraces__block_invoke_2(uint64_t a1, const char *a2, id self)
{
  if (!self)
  {
    Property = 0;
LABEL_7:
    v8 = Property;

    if (v8)
    {
      return;
    }

    v9 = [self threadStates];
    v10 = [v9 lastObject];
    v28 = [v10 leafUserFrame];

    v11 = v28;
    if (v28)
    {
      while (1)
      {
        v29 = v11;
        v12 = v11 ? v11[4] : 0;
        v13 = v12;

        if (!v13)
        {
          break;
        }

        if (v29)
        {
          v14 = v29[4];
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        v11 = v15;
      }

      v16 = [v29 isTruncatedBacktraceFrame];
      v6 = v29;
      if (v16)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v6 = 0;
    }

    v30 = v6;
    v17 = [self threadStates];
    v18 = [v17 lastObject];
    v19 = [v18 leafOfCRootFramesReplacedBySwiftAsync];

    if (!v19)
    {
      v6 = 0;
      goto LABEL_3;
    }

    while (1)
    {
      v31 = v19;
      v20 = v19 ? v19[4] : 0;
      v21 = v20;

      if (!v21)
      {
        break;
      }

      if (v31)
      {
        v22 = v31[4];
      }

      else
      {
        v22 = 0;
      }

      v19 = v22;
    }

    v23 = [v31 isTruncatedBacktraceFrame];
    v6 = v31;
    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_30:
    v32 = v6;
    v24 = *(*(*(a1 + 32) + 8) + 40);
    if (!v24)
    {
      v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
      v26 = *(*(a1 + 32) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v24 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v24 setObject:self forKeyedSubscript:a2];
    v6 = v32;
    goto LABEL_3;
  }

  v6 = objc_getProperty(self, a2, 48, 1);
  if (!v6)
  {
    Property = objc_getProperty(self, 0, 56, 1);
    goto LABEL_7;
  }

LABEL_3:
}

void __44__SASampleStore_resampleTruncatedBacktraces__block_invoke_3(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v33 = a2;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "bad tid 0x%llx", buf, 0xCu);
    }

    *__error() = v23;
    _SASetCrashLogMessage(7092, "bad tid 0x%llx", v25, v26, v27, v28, v29, v30, a2);
    _os_crash();
    __break(1u);
  }

  [*(a1 + 32) setUserFrames:{malloc_type_calloc(a4, 8uLL, 0x100004000313F17uLL)}];
  memcpy([*(a1 + 32) userFrames], a3, 8 * a4);
  [*(a1 + 32) setNumUserFrames:a4];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v31 = 0;
  v13 = [(SATask *)v11 leafFrameAfterAddingStack:v12 leafOfCRootFramesReplacedBySwiftAsync:&v31];
  v15 = v31;
  if (v13)
  {
    objc_setProperty_atomic(v10, v14, v13, 48);
    objc_setProperty_atomic(v10, v16, v15, 56);
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  else
  {
    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = [*(a1 + 40) debugDescription];
      v21 = [v10 debugDescription];
      v22 = [*(a1 + 32) numUserFrames];
      *buf = 138412802;
      v33 = v20;
      v34 = 2112;
      v35 = v21;
      v36 = 2048;
      v37 = v22;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "%@ %@ unable to add resampled stack with %lu frames", buf, 0x20u);
    }

    *__error() = v17;
  }

  [*(a1 + 32) clearThreadData];

  v19 = *MEMORY[0x1E69E9840];
}

- (int)addMicrostackshotsFromFile:(id)a3 ofTypes:(unsigned int)a4 inTimeRangeStart:(double)a5 end:(double)a6 onlyPid:(int)a7 onlyTid:(unint64_t)a8 statistics:(id)a9
{
  v12 = [(SASampleStore *)a5 filterBlockForMicrostackshotTypes:a6 startTime:SASampleStore endTime:a4 pid:a7 tid:a8];
  LODWORD(a9) = [(SASampleStore *)self addMicrostackshotsFromFile:a3 statistics:a9 filterBlock:v12];

  return a9;
}

+ (id)filterBlockForMicrostackshotTypes:(uint64_t)a3 startTime:(int)a4 endTime:(int)a5 pid:(uint64_t)a6 tid:
{
  objc_opt_self();
  if ((a4 & 0xFFFFFFFB) == 0 && a1 == 0.0 && a2 == 0.0 && a5 < 0 && !a6)
  {
    v11 = 0;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__SASampleStore_filterBlockForMicrostackshotTypes_startTime_endTime_pid_tid___block_invoke;
    v13[3] = &__block_descriptor_64_e30_Q16__0__SAMicrostackshotInfo_8l;
    *&v13[4] = a2;
    *&v13[5] = a1;
    v14 = a4 & 0xFFFFFFFB;
    v15 = a5;
    v13[6] = a6;
    v11 = MEMORY[0x1E12EBE50](v13);
  }

  return v11;
}

- (int)addMicrostackshotsFromFile:(id)a3 statistics:(id)a4 filterBlock:(id)a5
{
  v67 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [a3 UTF8String];
  if (!v10)
  {
    *__error() = 22;
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Unable to convert microstackshots path to C string";
LABEL_31:
      v28 = v25;
      v29 = 2;
      goto LABEL_32;
    }

LABEL_33:

    *__error() = v24;
    LODWORD(v18) = -1;
    goto LABEL_48;
  }

  v11 = open(v10, 0);
  if (v11 == -1)
  {
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = *__error();
      *buf = 67109120;
      *v66 = v27;
      v26 = "Unable to open microstackshots file: %{errno}d";
      v28 = v25;
      v29 = 8;
LABEL_32:
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, v26, buf, v29);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v12 = gzdopen(v11, "r");
  if (!v12)
  {
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Unable to gzdopen microstackshots file";
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  v13 = v12;
  v14 = malloc_type_calloc(1uLL, 0x20000uLL, 0xE2C95E21uLL);
  if (!v14)
  {
    goto LABEL_57;
  }

  v15 = v14;
  v16 = gzread(v13, v14, 0x20000u);
  if (v16 < 1)
  {
    LODWORD(v18) = 0;
    goto LABEL_39;
  }

  v17 = 0;
  LODWORD(v18) = 0;
  v19 = 0x20000;
  v62 = v13;
  while (1)
  {
    v20 = v17 + v16;
    if (v20)
    {
      break;
    }

    v17 = 0;
LABEL_22:
    v16 = gzread(v13, (v15 + v17), v19 - v17);
    if (v16 <= 0)
    {
      if (v17)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }
  }

  __size = v19;
  v13 = 0;
  while (1)
  {
    v17 = v20 - v13;
    v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v13 + v15 length:v20 - v13 freeWhenDone:0];
    v22 = [(SASampleStore *)self _addMicrostackshotFromData:v21 statistics:a4 filterBlock:a5];
    if (v22 <= 0)
    {
      break;
    }

    v13 = (v13 + v22);
    if (v20 < v13)
    {
      v15 = *__error();
      v18 = _sa_logt();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v66 = v13;
        *&v66[8] = 2048;
        *&v66[10] = v20;
        _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "parsed beyond end of microstackshots buffer: %lu > %lu", buf, 0x16u);
      }

      *__error() = v15;
      _SASetCrashLogMessage(7191, "parsed beyond end of microstackshots buffer: %lu > %lu", v39, v40, v41, v42, v43, v44, v13);
      _os_crash();
      __break(1u);
LABEL_52:
      v45 = *__error();
      *buf = 67109120;
      *v66 = v45;
      v34 = "Error while reading microstackshots file: %{errno}d";
      v35 = a4;
      v36 = 8;
LABEL_53:
      _os_log_error_impl(&dword_1E0E2F000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
      goto LABEL_46;
    }

    LODWORD(v18) = v18 + 1;

    v17 = v20 - v13;
    if (v20 <= v13)
    {
      goto LABEL_16;
    }
  }

  if ((v22 & 0x8000000000000000) == 0)
  {

LABEL_16:
    v19 = __size;
    if (!v17)
    {
      goto LABEL_21;
    }

    if (v13)
    {
      memmove(v15, v13 + v15, v17);
LABEL_21:
      v13 = v62;
      goto LABEL_22;
    }

    v19 = 2 * __size;
    v23 = reallocf(v15, 2 * __size);
    if (v23)
    {
      v15 = v23;
      goto LABEL_21;
    }

    v46 = *__error();
    v47 = _sa_logt();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v66 = 2 * __size;
      _os_log_error_impl(&dword_1E0E2F000, v47, OS_LOG_TYPE_ERROR, "realloc of size %lu failed", buf, 0xCu);
    }

    *__error() = v46;
    _SASetCrashLogMessage(7204, "realloc of size %lu failed", v48, v49, v50, v51, v52, v53, v19);
    _os_crash();
    __break(1u);
LABEL_57:
    v54 = *__error();
    v55 = _sa_logt();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v66 = 0x20000;
      _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "calloc of %d failed", buf, 8u);
    }

    *__error() = v54;
    _SASetCrashLogMessage(7157, "calloc of %d failed", v56, v57, v58, v59, v60, v61, 0);
    _os_crash();
    __break(1u);
  }

  if (!v18)
  {
    LODWORD(v18) = -1;
  }

  v17 = v20;
  v13 = v62;
LABEL_38:
  [a4 setBytes_not_microstackshots:{objc_msgSend(a4, "bytes_not_microstackshots") + v17}];
LABEL_39:
  if (v16 == -1)
  {
    errnum = 0;
    v30 = gzerror(v13, &errnum);
    v31 = errnum;
    LODWORD(v20) = *__error();
    a4 = _sa_logt();
    v32 = os_log_type_enabled(a4, OS_LOG_TYPE_ERROR);
    if (v31 == -1)
    {
      if (v32)
      {
        goto LABEL_52;
      }
    }

    else if (v32)
    {
      v33 = "";
      if (v30)
      {
        v33 = v30;
      }

      *buf = 67109378;
      *v66 = errnum;
      *&v66[4] = 2080;
      *&v66[6] = v33;
      v34 = "Error while reading microstackshots file: %d %s";
      v35 = a4;
      v36 = 18;
      goto LABEL_53;
    }

LABEL_46:

    *__error() = v20;
  }

  free(v15);
  gzclose(v13);
LABEL_48:
  v37 = *MEMORY[0x1E69E9840];
  return v18;
}

- (uint64_t)_addMicrostackshotFromData:(void *)a3 statistics:(uint64_t)a4 filterBlock:
{
  v265 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = 0;
    goto LABEL_53;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [a2 bytes];
  v10 = [a2 length];
  v11 = v10;
  if (!*(a1 + 440))
  {
    *(a1 + 440) = 1;
  }

  *(a1 + 432) |= 4uLL;
  if (v10 > 26)
  {
    if (*v9 != 835010577)
    {
      goto LABEL_51;
    }

    if (v10 <= 0x13F)
    {
      if (qword_1EDD02F78 != -1)
      {
        dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
      }

      if (byte_1EDD02EF3 != 1)
      {
        goto LABEL_50;
      }

      v12 = *__error();
      v13 = _sa_logt();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      *buf = 134217984;
      *v261 = v11;
      v15 = "Partial microstackshot (%lu), requesting more data";
LABEL_55:
      _os_log_debug_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_DEBUG, v15, buf, 0xCu);
      goto LABEL_9;
    }

    if (*(v9 + 27) != -557122643)
    {
      goto LABEL_51;
    }

    v16 = v9 + v10;
    v17 = v9 + 320;
    v18 = *(v9 + 107);
    if (*(v9 + 31))
    {
      if ((v18 & 1) == 0)
      {
LABEL_20:
        v19 = 0;
        v20 = 20;
        goto LABEL_23;
      }
    }

    else if ((v18 & 2) == 0)
    {
      goto LABEL_20;
    }

    v19 = 1;
    v20 = 24;
LABEL_23:
    v21 = *(v9 + 83);
    v22 = v17 + v20 * v21;
    if (v16 < v22)
    {
      if (qword_1EDD02F78 != -1)
      {
        dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
      }

      if (byte_1EDD02EF3 != 1)
      {
        goto LABEL_50;
      }

      v12 = *__error();
      v13 = _sa_logt();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      *buf = 134217984;
      *v261 = v11;
      v15 = "Partial microstackshot (%lu), requesting more data";
      goto LABEL_55;
    }

    if (v16 < v22 + 316)
    {
      if (qword_1EDD02F78 != -1)
      {
        dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
      }

      if (byte_1EDD02EF3 != 1)
      {
        goto LABEL_50;
      }

      v12 = *__error();
      v13 = _sa_logt();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      *buf = 134217984;
      *v261 = v11;
      v15 = "Partial microstackshot (%lu), requesting more data";
      goto LABEL_55;
    }

    if (*v22 == -17958194)
    {
      if ((*(v22 + 68) & 4) != 0)
      {
        v23 = (v22 + 324);
      }

      else
      {
        v23 = (v22 + 316);
      }

      v24 = 2;
      if ((*(v22 + 68) & 2) != 0)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v26 = &v23[*(v22 + 4) << v25];
      if (*(v22 + 68))
      {
        v24 = 3;
      }

      v27 = &v26[*(v22 + 8) << v24];
      if (v16 < v27)
      {
        if (qword_1EDD02F78 != -1)
        {
          dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
        }

        if (byte_1EDD02EF3 != 1)
        {
          goto LABEL_50;
        }

        v12 = *__error();
        v13 = _sa_logt();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_9;
        }

        *buf = 134217984;
        *v261 = v11;
        v15 = "Partial microstackshot (%lu), requesting more data";
        goto LABEL_55;
      }

      __src = (v9 + 320);
      v236 = *(v9 + 107);
      v217 = v26;
      v213 = (v22 + 316);
      v214 = v23;
      v227 = *(v22 + 68);
      v254 = v17 + v20 * v21;
      if (__strlcpy_chk() == 16)
      {
        __strlcpy_chk();
      }

      v30 = *(v9 + 8) - *MEMORY[0x1E695E468] + *(v9 + 16) / 1000000.0;
      v234 = *(v9 + 111);
      v238 = *(v9 + 119);
      if ((*(v9 + 24) & 0x10) == 0)
      {
        v232 = 0;
LABEL_93:
        v224 = (*(a1 + 488) & 1) != 0 && v30 > SATimeOfBootForLiveMachine();
        v14 = v27 - v9;
        v47 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:v30];
        v48 = *(a1 + 48);
        v229 = (a1 + 48);
        v253 = v47;
        if (!v48 || ![v48 ge:v47])
        {
          v219 = 0;
          v244 = 0;
          goto LABEL_135;
        }

        __basea = v19;
        v215 = [(SASampleStore *)a1 lastTaskWithPid:?];
        v242 = [v215 threads];
        v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v254 + 28)];
        v50 = [v242 objectForKeyedSubscript:v49];

        v206 = v50;
        v51 = [v50 threadStates];
        v52 = [v51 lastObject];

        v208 = v52;
        if (v52)
        {
          v53 = [v52 endTimestamp];
          [v53 wallTime];
          v55 = v54;
          [v253 wallTime];
          v57 = v56;

          if (v55 >= v57)
          {
            v47 = v253;
            v210 = [v206 firstThreadStateOnOrAfterTime:v253 sampleIndex:0x7FFFFFFFFFFFFFFFLL];
            v72 = [v210 endTimestamp];
            [v72 wallTime];
            v74 = v73;
            [v253 wallTime];
            v76 = v75;

            if (v74 == v76)
            {
              if (qword_1EDD02F78 != -1)
              {
                dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
              }

              if (byte_1EDD02EF3 != 1)
              {
                v219 = 0;
                v244 = 2;
                goto LABEL_133;
              }

              v66 = *__error();
              v67 = _sa_logt();
              v244 = 2;
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
              {
                v199 = *(v9 + 31);
                v248 = *(v254 + 28);
                *v77.i64 = v30;
                v222 = _CopyStringForTime(3, v77);
                [*v229 wallTime];
                v192 = v191 - v30;
                v204 = [v208 endTimestamp];
                [v204 wallTime];
                *buf = 136316418;
                *v261 = v264;
                *&v261[8] = 1024;
                *&v261[10] = v199;
                *&v261[14] = 2048;
                *&v261[16] = v248;
                *&v261[24] = 2112;
                *&v261[26] = v222;
                *&v261[34] = 2048;
                *&v261[36] = v192;
                v262 = 2048;
                v263 = v193 - v30;
                v244 = 2;
                _os_log_debug_impl(&dword_1E0E2F000, v67, OS_LOG_TYPE_DEBUG, "Not including duplicate microstackshot for %s [%d] thread 0x%llx at %@ (by %fs overall, %fs for this thread)", buf, 0x3Au);
              }

              v219 = 0;
            }

            else
            {
              v66 = *__error();
              v67 = _sa_logt();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                v197 = *(v9 + 31);
                v220 = *(v254 + 28);
                *v80.i64 = v30;
                v246 = _CopyStringForTime(3, v80);
                [*v229 wallTime];
                v186 = v185 - v30;
                v202 = [v208 endTimestamp];
                [v202 wallTime];
                *buf = 136316418;
                *v261 = v264;
                *&v261[8] = 1024;
                *&v261[10] = v197;
                *&v261[14] = 2048;
                *&v261[16] = v220;
                *&v261[24] = 2112;
                *&v261[26] = v246;
                *&v261[34] = 2048;
                *&v261[36] = v186;
                v262 = 2048;
                v263 = v187 - v30;
                _os_log_error_impl(&dword_1E0E2F000, v67, OS_LOG_TYPE_ERROR, "Not including out-of-order microstackshot for %s [%d] thread 0x%llx at %@ (by %fs overall, %fs for this thread)", buf, 0x3Au);
              }

              v219 = 0;
              v244 = 4;
            }

LABEL_132:

            *__error() = v66;
            v47 = v253;
LABEL_133:
            v19 = __basea;
            v60 = v210;
            goto LABEL_134;
          }
        }

        v58 = [v215 taskStates];
        v59 = [v58 lastObject];

        v60 = v59;
        v47 = v253;
        v210 = v60;
        if (v60)
        {
          v61 = [v60 endTimestamp];
          [v61 wallTime];
          v63 = v62;
          [v253 wallTime];
          v65 = v64;

          v60 = v210;
          if (v63 >= v65)
          {
            if (qword_1EDD02F78 != -1)
            {
              dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
              v60 = v210;
            }

            v19 = __basea;
            if (byte_1EDD02EF3 != 1)
            {
              v244 = 0;
              v219 = 1;
              goto LABEL_134;
            }

            v66 = *__error();
            v67 = _sa_logt();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              v198 = *(v9 + 31);
              v221 = *(v254 + 28);
              *v78.i64 = v30;
              v247 = _CopyStringForTime(3, v78);
              [*v229 wallTime];
              v189 = v188 - v30;
              v203 = [v208 endTimestamp];
              [v203 wallTime];
              *buf = 136316418;
              *v261 = v264;
              *&v261[8] = 1024;
              *&v261[10] = v198;
              *&v261[14] = 2048;
              *&v261[16] = v221;
              *&v261[24] = 2112;
              *&v261[26] = v247;
              *&v261[34] = 2048;
              *&v261[36] = v189;
              v262 = 2048;
              v263 = v30 - v190;
              _os_log_debug_impl(&dword_1E0E2F000, v67, OS_LOG_TYPE_DEBUG, "Out-of-order microstackshot for %s [%d] thread 0x%llx at %@ (by %fs overall) is still after latest microstackshot for that thread by %fs (out of order for task)", buf, 0x3Au);
            }

            v244 = 0;
            v219 = 1;
            goto LABEL_132;
          }
        }

        if (v208)
        {
          v19 = __basea;
          if (qword_1EDD02F78 != -1)
          {
            dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
            v60 = v210;
          }

          if (byte_1EDD02EF3 != 1)
          {
            v219 = 0;
            v244 = 0;
LABEL_134:

LABEL_135:
            if (v21)
            {
              v81 = malloc_type_calloc(v21, 0x18uLL, 0x1000040504FFAC1uLL);
              __baseb = v81;
              if (v19)
              {
                memmove(v81, __src, v20 * v21);
              }

              else
              {
                v82 = v81 + 8;
                v83 = (v9 + 324);
                v84 = v21;
                do
                {
                  *(v82 - 1) = *(v83 - 1);
                  uuid_copy(v82, v83);
                  v82 += 24;
                  v83 += 20;
                  --v84;
                }

                while (v84);
              }

              v85 = 0;
              v86 = 0;
              v87 = __baseb + 8;
              do
              {
                if (!uuid_is_null(v87))
                {
                  v88 = *(v87 - 1);
                  if (v88)
                  {
                    if (v85 != v86)
                    {
                      v89 = &__baseb[24 * v86];
                      *v89 = v88;
                      uuid_copy(v89 + 8, v87);
                    }

                    ++v86;
                  }
                }

                ++v85;
                v87 += 24;
              }

              while (v21 != v85);
              v90 = v21 - v86;
              v216 = v21 != v86;
              if (v21 == v86)
              {
                v86 = v21;
                goto LABEL_157;
              }

              v47 = v253;
              if (v86)
              {
                if (qword_1EDD02F78 != -1)
                {
                  dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
                }

                if (byte_1EDD02EF3 != 1)
                {
                  goto LABEL_158;
                }

                v91 = *__error();
                v92 = _sa_logt();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109376;
                  *v261 = v90;
                  *&v261[4] = 1024;
                  *&v261[6] = v86;
                  _os_log_debug_impl(&dword_1E0E2F000, v92, OS_LOG_TYPE_DEBUG, "%d load infos were null (%d non-null)", buf, 0xEu);
                }

                *__error() = v91;
LABEL_157:
                v47 = v253;
LABEL_158:
                if (*(v9 + 31))
                {
                  mergesort_b(__baseb, v86, 0x18uLL, &__block_literal_global_479);
                }

                v93 = 0;
                v94 = __baseb;
                v95 = v244;
                goto LABEL_178;
              }

              if (qword_1EDD02F78 != -1)
              {
                dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
              }

              if (byte_1EDD02EF3 == 1)
              {
                v96 = *__error();
                v97 = _sa_logt();
                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  *v261 = v21;
                  _os_log_debug_impl(&dword_1E0E2F000, v97, OS_LOG_TYPE_DEBUG, "All %d load infos were null", buf, 8u);
                }

                *__error() = v96;
              }

              __src = __baseb;
            }

            else
            {
              __baseb = 0;
            }

            v95 = v244;
            if (([a1 keepMicrostackshotsWithoutLoadInfo] & 1) == 0 && *(v9 + 31))
            {
              ++*(a1 + 344);
              if (qword_1EDD02F78 != -1)
              {
                dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
              }

              if (byte_1EDD02EF3 == 1)
              {
                v98 = *__error();
                v99 = _sa_logt();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
                {
                  v182 = *(v9 + 31);
                  *v100.i64 = v30;
                  v183 = _CopyStringForTime(3, v100);
                  *buf = 136315650;
                  *v261 = v264;
                  *&v261[8] = 1024;
                  *&v261[10] = v182;
                  *&v261[14] = 2112;
                  *&v261[16] = v183;
                  _os_log_debug_impl(&dword_1E0E2F000, v99, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %s [%d] at %@ due to no load info", buf, 0x1Cu);

                  v95 = v244;
                }

                *__error() = v98;
              }

              v95 |= 8uLL;
              goto LABEL_179;
            }

            v86 = 0;
            v216 = 0;
            v93 = 1;
            v94 = __src;
LABEL_178:
            if (v95)
            {
LABEL_179:
              [(SAMicrostackshotStatistics *)a3 addMicro:v9 task:v9 + 27 thread:v254 size:v14 errors:v95];
              if (__baseb)
              {
                free(__baseb);
              }

LABEL_335:

              goto LABEL_52;
            }

            __srca = v94;
            if (a4)
            {
              v101 = *(a1 + 384);
              if (!v101)
              {
                v102 = objc_alloc_init(SAMicrostackshotInfo);
                v103 = *(a1 + 384);
                *(a1 + 384) = v102;

                v101 = *(a1 + 384);
              }

              v211 = [a1 bootCycles];
              v104 = [v211 lastObject];
              v201 = *(v9 + 24);
              v207 = *(v9 + 31);
              v209 = SANSStringForCString(v264);
              if ((v93 & 1) != 0 || !*(v9 + 31))
              {
                v108 = v101;
                v107 = v209;
                [(SAMicrostackshotInfo *)v108 setBootinfo:v104 microSnapshotFlags:v201 wallTime:v207 processID:v209 processName:0 processMainBinaryUUID:v234 processResourceCoalitionID:*(v254 + 28) threadID:v30 threadOnBehalfOfProximatePid:SHIDWORD(v238) threadOnBehalfOfOriginPid:v238];
              }

              else
              {
                v105 = uuidForBytes((__srca + 1));
                v106 = v101;
                v107 = v209;
                [(SAMicrostackshotInfo *)v106 setBootinfo:v104 microSnapshotFlags:v201 wallTime:v207 processID:v209 processName:v105 processMainBinaryUUID:v234 processResourceCoalitionID:*(v254 + 28) threadID:v30 threadOnBehalfOfProximatePid:SHIDWORD(v238) threadOnBehalfOfOriginPid:v238];
              }

              v109 = (*(a4 + 16))(a4, *(a1 + 384));
              v110 = [(SAMicrostackshotInfo *)*(a1 + 384) clear];
              v47 = v253;
              if ((v109 - 1) <= 1)
              {
                [a3 setNum_microstackshots_filtered_out:{objc_msgSend(a3, "num_microstackshots_filtered_out", v110) + 1}];
                [a3 setBytes_microstackshots_filtered_out:{objc_msgSend(a3, "bytes_microstackshots_filtered_out") + v14}];
                if (__baseb)
                {
                  free(__baseb);
                }

                if (v109 == 2)
                {
                  v14 = -1;
                }

                goto LABEL_335;
              }
            }

            [(SAMicrostackshotStatistics *)a3 addMicro:v9 task:v9 + 27 thread:v254 size:v14 errors:0];
            if (v232)
            {
              if (*(a1 + 1096) - 1 >= v232)
              {
                *(a1 + 1096) = v232;
              }

              if (*(a1 + 1104) < v232)
              {
                *(a1 + 1104) = v232;
              }
            }

            if (uuid_is_null((v9 + 59)))
            {
              v212 = 0;
            }

            else
            {
              v212 = [(SASampleStore *)a1 sharedCacheWithUUID:*(v9 + 75) slide:-1 slidBaseAddress:?];
            }

            v111 = v236;
            if (*(a1 + 488))
            {
              if (!*(a1 + 240))
              {
                [a1 gatherMachineArchitecture];
                v111 = v236;
              }

              if (!*(a1 + 232) || !*(a1 + 236))
              {
                mach_timebase_info((a1 + 232));
                v111 = v236;
              }

              if (!*(a1 + 424) || !*(a1 + 428))
              {
                [(SASampleStore *)a1 gatherHWPageSize];
                [(SASampleStore *)a1 gatherVMPageSize];
LABEL_226:
                v111 = v236;
              }
            }

            else if ((*(a1 + 352) & 1) == 0)
            {
              v112 = MEMORY[0x1E69E9848];
              if (!*(a1 + 240))
              {
                v113 = *__error();
                v114 = _sa_logt();
                if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1E0E2F000, v114, OS_LOG_TYPE_DEFAULT, "WARNING: Machine architecture unknown for microstackshots, task architectures will be unknown", buf, 2u);
                }

                *__error() = v113;
                fwrite("Machine architecture unknown for microstackshots, task architectures will be unknown\n", 0x55uLL, 1uLL, *v112);
                *(a1 + 352) = 1;
                v111 = v236;
              }

              if (!*(a1 + 232) || !*(a1 + 236))
              {
                v115 = *__error();
                v116 = _sa_logt();
                if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1E0E2F000, v116, OS_LOG_TYPE_DEFAULT, "WARNING: Mach timebase unknown for microstackshots, cpu times will be unknown", buf, 2u);
                }

                *__error() = v115;
                fwrite("Mach timebase unknown for microstackshots, cpu times will be unknown\n", 0x45uLL, 1uLL, *v112);
                *(a1 + 352) = 1;
                v111 = v236;
              }

              if (!*(a1 + 424) || !*(a1 + 428))
              {
                v117 = *__error();
                v118 = _sa_logt();
                if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1E0E2F000, v118, OS_LOG_TYPE_DEFAULT, "WARNING: Page sizes unknown for microstackshots, task footprints will be unknown", buf, 2u);
                }

                *__error() = v117;
                fwrite("Page sizes unknown for microstackshots, task footprints will be unknown\n", 0x48uLL, 1uLL, *v112);
                *(a1 + 352) = 1;
                goto LABEL_226;
              }
            }

            if ((v111 & 0x10000000) != 0)
            {
              v119 = *(a1 + 240);
              v120 = (a1 + 48);
              if (v119)
              {
                v121 = SAArchitectureForTranslatedTask(v119);
              }

              else
              {
                v121 = 0;
              }
            }

            else
            {
              v121 = 0;
              v120 = (a1 + 48);
            }

            v122 = *(a1 + 40);
            if (!v122 || [v122 gt:v47])
            {
              objc_storeStrong((a1 + 40), v47);
            }

            if (!*v120 || [*v120 lt:v47])
            {
              objc_storeStrong(v120, v47);
            }

            ++*(a1 + 32);
            v123 = [(SASampleStore *)a1 taskForMicrostackshotTask:v264 taskName:__srca loadInfos:v86 numLoadInfos:v212 sharedCache:v216 loadInfosIsPartial:v47 timestamp:v121 architecture:(v236 & 0x10000000) != 0 needAOTInfo:v224 isFromCurrentBoot:?];
            v124 = v123;
            if (v234 && v123)
            {
              *(v123 + 144) = v234;
            }

            v125 = [SATaskState stateWithStackshotTaskV1:*(a1 + 232) machTimebase:*(a1 + 424) hwPageSize:v47 startTimestamp:v47 endTimestamp:0x7FFFFFFFFFFFFFFFLL startSampleIndex:0x7FFFFFFFFFFFFFFFLL endSampleIndex:?];
            if (v219)
            {
              [(SATask *)v124 addOutOfOrderState:v125];
            }

            else if (v124)
            {
              [*(v124 + 8) addObject:v125];
              [*(v124 + 8) count];
            }

            v235 = v125;
            v126 = [v124 threads];
            v127 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v254 + 28)];
            v128 = [v126 objectForKeyedSubscript:v127];

            if (!v128)
            {
              v128 = [SAThread threadWithId:?];
              [(SATask *)v124 addThread:v128];
            }

            v129 = objc_alloc_init(SAFrameIterator);
            [(SAFrameIterator *)v129 setBacktracer:2];
            v130 = *(v9 + 31);
            v131 = [v124 binaryLoadInfos];
            if (v130)
            {
              [(SAFrameIterator *)v129 setUserBinaryLoadInfos:v131];

              if (v124)
              {
                v132 = *(v124 + 79);
              }

              else
              {
                v132 = 0;
              }

              [(SAFrameIterator *)v129 setAssumeUserBinaryLoadInfosContainMainBinary:v132 & 1];
              v133 = [v124 sharedCache];
              [(SAFrameIterator *)v129 setSharedCache:v133];

              if ((v236 & 0x10000000) == 0)
              {
LABEL_254:
                __srcb = v128;
                v134 = 0x100004000313F17;
                v135 = v254;
                v136 = *(v254 + 8);
                if (v136)
                {
                  v137 = *(v254 + 74);
                  v139 = (v137 + 1) < 2u || v136 <= v137;
                  v230 = v139;
                  if (v139)
                  {
                    v140 = v136;
                  }

                  else
                  {
                    v140 = *(v254 + 74);
                  }

                  if (v139)
                  {
                    v141 = 0;
                  }

                  else
                  {
                    v141 = v136 - v137;
                  }

                  v142 = malloc_type_calloc(v140, 8uLL, 0x100004000313F17uLL);
                  v143 = v142;
                  if (*(v254 + 68))
                  {
                    memcpy(v142, v217, 8 * v140);
                  }

                  else if (v140)
                  {
                    v144 = v217;
                    v145 = v142;
                    v146 = v140;
                    do
                    {
                      v147 = *v144++;
                      *v145++ = v147;
                      --v146;
                    }

                    while (v146);
                  }

                  [(SAFrameIterator *)v129 setUserFrames:v143];
                  [(SAFrameIterator *)v129 setNumUserFrames:v140];
                  if (v141)
                  {
                    v148 = malloc_type_calloc(v141, 8uLL, 0x100004000313F17uLL);
                    v149 = v148;
                    if (*(v254 + 68))
                    {
                      memcpy(v148, &v217[8 * v137], 8 * v141);
                    }

                    else
                    {
                      v150 = &v217[4 * v137];
                      v151 = v148;
                      v152 = v141;
                      do
                      {
                        v153 = *v150;
                        v150 += 4;
                        *v151++ = v153;
                        --v152;
                      }

                      while (v152);
                    }

                    [(SAFrameIterator *)v129 setSwiftAsyncFrames:v149];
                    [(SAFrameIterator *)v129 setNumSwiftAsyncFrames:v141];
                    [(SAFrameIterator *)v129 setSwiftAsyncStitchIndex:v140];
                  }

                  v47 = v253;
                  v135 = v254;
                }

                else
                {
                  v230 = 1;
                }

                v154 = v232;
                if (*(v135 + 4))
                {
                  if ([v124 pid])
                  {
                    if (qword_1EDD02F00 != -1)
                    {
                      dispatch_once(&qword_1EDD02F00, &__block_literal_global_486);
                    }

                    v237 = 0;
                  }

                  else
                  {
                    v237 = v124;
                  }

                  v155 = malloc_type_calloc(*(v254 + 4), 8uLL, 0x100004000313F17uLL);
                  v156 = v155;
                  v157 = *(v254 + 4);
                  if ((*(v254 + 68) & 2) != 0)
                  {
                    memcpy(v155, v214, 8 * v157);
                  }

                  else
                  {
                    v158 = v214;
                    if (v157)
                    {
                      v159 = v155;
                      do
                      {
                        v160 = *v158++;
                        *v159++ = v160;
                        --v157;
                      }

                      while (v157);
                    }
                  }

                  [(SAFrameIterator *)v129 setKernelFrames:v156];
                  [(SAFrameIterator *)v129 setNumKernelFrames:*(v254 + 4)];
                }

                else
                {
                  v237 = 0;
                }

                if (*(v9 + 31))
                {
                  v259 = 0;
                  v161 = [(SATask *)v124 leafFrameAfterAddingStack:v129 leafOfCRootFramesReplacedBySwiftAsync:&v259];
                  v162 = v259;
                }

                else
                {
                  v162 = 0;
                  v161 = 0;
                }

                v233 = [(SATask *)v237 leafFrameAfterAddingStack:v129 leafOfCRootFramesReplacedBySwiftAsync:0];
                v163 = [SAThreadStateMicrostackshot stateWithMicrostackshot:v9 thread:v254 startTimestamp:v47 endTimestamp:v47 startSampleIndex:0x7FFFFFFFFFFFFFFFLL endSampleIndex:0x7FFFFFFFFFFFFFFFLL leafUserFrame:v161 leafOfCRootFramesReplacedBySwiftAsync:v162 leafKernelFrame:v233 machTimebase:*(a1 + 232) pmiCycleInterval:v154];
                v164 = v163;
                v165 = __srcb;
                if (v238 != -1)
                {
                  if (!v163)
                  {
LABEL_305:
                    if (__srcb)
                    {
                      [__srcb[1] addObject:v163];
                      v239 = ([__srcb[1] count] - 1);
                    }

                    else
                    {
                      v239 = 0;
                    }

                    v245 = v162;
                    v225 = v161;
                    if ((v227 & 4) != 0)
                    {
                      v166 = [v124 dispatchQueues];
                      v167 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v213];
                      v168 = [v166 objectForKeyedSubscript:v167];

                      if (!v168)
                      {
                        v168 = [SADispatchQueue dispatchQueueWithId:?];
                        [(SATask *)v124 addDispatchQueue:v168];
                      }

                      v169 = [(SARecipeState *)SADispatchQueueState stateWithThread:v239 threadStateIndex:?];
                      if (v168)
                      {
                        if (v168[24])
                        {
                          v170 = 0;
                        }

                        else
                        {
                          v170 = v168 + 24;
                        }

                        [(SARecipe *)v168 addState:v169 hasConcurrentExecution:v170];
                      }

                      v165 = __srcb;
                      v47 = v253;
                      v162 = v245;
                    }

                    if (v230)
                    {
                      if (v164)
                      {
                        objc_storeWeak(v164 + 15, 0);
                      }
                    }

                    else
                    {
                      v171 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:-1];
                      v172 = [v124 swiftTasks];
                      v173 = [v172 objectForKeyedSubscript:v171];

                      if (!v173)
                      {
                        v173 = [(SADispatchQueue *)SASwiftTask dispatchQueueWithId:?];
                        [(SATask *)v124 addSwiftTask:v173];
                      }

                      if (v164)
                      {
                        objc_storeWeak(v164 + 15, v173);
                      }

                      v174 = [(SARecipeState *)SASwiftTaskState stateWithThread:v239 threadStateIndex:?];
                      if (v173)
                      {
                        [v173[1] addObject:v174];
                        [v173[1] count];
                      }

                      v165 = __srcb;
                      v47 = v253;
                      v162 = v245;
                    }

                    if (__baseb)
                    {
                      free(__baseb);
                    }

                    if (qword_1EDD02F78 != -1)
                    {
                      dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
                    }

                    if (byte_1EDD02EF3 == 1)
                    {
                      v175 = *__error();
                      v176 = _sa_logt();
                      if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
                      {
                        v179 = *(v9 + 24);
                        v180 = *(v9 + 31);
                        __basec = *(v254 + 28);
                        *v177.i64 = v30;
                        v181 = _CopyStringForTime(3, v177);
                        *buf = 67110146;
                        *v261 = v179;
                        *&v261[4] = 2080;
                        *&v261[6] = v264;
                        *&v261[14] = 1024;
                        *&v261[16] = v180;
                        v165 = __srcb;
                        v47 = v253;
                        *&v261[20] = 2048;
                        *&v261[22] = __basec;
                        *&v261[30] = 2112;
                        *&v261[32] = v181;
                        _os_log_debug_impl(&dword_1E0E2F000, v176, OS_LOG_TYPE_DEBUG, "Including 0x%x microstackshot for %s [%d] thread 0x%llx at %@", buf, 0x2Cu);
                      }

                      *__error() = v175;
                      v161 = v225;
                      v162 = v245;
                    }

                    goto LABEL_335;
                  }

                  *(v163 + 28) = v238;
                }

                if (HIDWORD(v238) != 0xFFFFFFFF && v163)
                {
                  *(v163 + 32) = HIDWORD(v238);
                }

                goto LABEL_305;
              }

              v131 = -[SASampleStore addressTranslationsForPid:](a1, [v124 pid]);
              [(SAFrameIterator *)v129 setAddressTranslations:v131];
            }

            else
            {
              [(SAFrameIterator *)v129 setKernelBinaryLoadInfos:v131];
            }

            goto LABEL_254;
          }

          v66 = *__error();
          v67 = _sa_logt();
          if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_127;
          }

          v196 = *(v9 + 31);
          v218 = *(v254 + 28);
          *v68.i64 = v30;
          v243 = _CopyStringForTime(3, v68);
          [*v229 wallTime];
          v70 = v69 - v30;
          v200 = [v208 endTimestamp];
          [v200 wallTime];
          *buf = 136316418;
          *v261 = v264;
          *&v261[8] = 1024;
          *&v261[10] = v196;
          *&v261[14] = 2048;
          *&v261[16] = v218;
          *&v261[24] = 2112;
          *&v261[26] = v243;
          *&v261[34] = 2048;
          *&v261[36] = v70;
          v262 = 2048;
          v263 = v30 - v71;
          _os_log_debug_impl(&dword_1E0E2F000, v67, OS_LOG_TYPE_DEBUG, "Out-of-order microstackshot for %s [%d] thread 0x%llx at %@ (by %fs overall) is still after latest microstackshot for that thread by %fs", buf, 0x3Au);
        }

        else
        {
          if (qword_1EDD02F78 != -1)
          {
            v195 = v60;
            dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
            v60 = v195;
          }

          if (byte_1EDD02EF3 != 1)
          {
            v219 = 0;
            v244 = 0;
            v19 = __basea;
            goto LABEL_134;
          }

          v66 = *__error();
          v67 = _sa_logt();
          if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_127;
          }

          v205 = *(v9 + 31);
          v223 = *(v254 + 28);
          *v79.i64 = v30;
          v243 = _CopyStringForTime(3, v79);
          [*v229 wallTime];
          *buf = 136316162;
          *v261 = v264;
          *&v261[8] = 1024;
          *&v261[10] = v205;
          *&v261[14] = 2048;
          *&v261[16] = v223;
          *&v261[24] = 2112;
          *&v261[26] = v243;
          *&v261[34] = 2048;
          *&v261[36] = v194 - v30;
          _os_log_debug_impl(&dword_1E0E2F000, v67, OS_LOG_TYPE_DEBUG, "Out-of-order microstackshot for %s [%d] thread 0x%llx at %@ (by %fs overall) first sample for this thread", buf, 0x30u);
        }

LABEL_127:
        v219 = 0;
        v244 = 0;
        goto LABEL_132;
      }

      if (*(v9 + 224) == 4)
      {
        v232 = *(v9 + 228);
      }

      else
      {
        v232 = 0;
      }

      v31 = *(v9 + 236);
      if (v31)
      {
        __base = v19;
        v32 = *(a1 + 376);
        if (v31 >= v32 + 1)
        {
          v33 = v31 - (v32 + 1);
        }

        else
        {
          v33 = 0;
        }

        *(a1 + 376) = v31;
        v34 = (a1 + 368);
        v35 = *(a1 + 368);
        if (v35 <= 0.0)
        {
          v36 = 0.0;
        }

        else
        {
          v36 = v30 - v35;
        }

        if (v32 && v31 > v32 + 1)
        {
          v252 = (a1 + 368);
          v240 = *__error();
          v37 = _sa_logt();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38.i64[0] = *v252;
            v231 = _CopyStringForTime(0, v38);
            *v178.i64 = v30;
            v226 = _CopyStringForTime(0, v178);
            *buf = 134218498;
            *v261 = v33;
            *&v261[8] = 2112;
            *&v261[10] = v231;
            *&v261[18] = 2112;
            *&v261[20] = v226;
            _os_log_error_impl(&dword_1E0E2F000, v37, OS_LOG_TYPE_ERROR, "%llu missing PMI microstackshots between %@ and %@", buf, 0x20u);
          }

          *__error() = v240;
          *(a1 + 1112) += v33;
          goto LABEL_90;
        }

        if (v36 <= 300.0)
        {
          v19 = __base;
          goto LABEL_92;
        }

        v19 = __base;
        if (qword_1EDD02F78 != -1)
        {
          dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
        }

        if (byte_1EDD02EF3 != 1)
        {
          goto LABEL_92;
        }

        v252 = (a1 + 368);
        v41 = *__error();
        v42 = _sa_logt();
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
LABEL_89:

          *__error() = v41;
LABEL_90:
          v19 = __base;
          v34 = v252;
LABEL_92:
          *v34 = v30;
          goto LABEL_93;
        }

        v46.i64[0] = *v252;
        v241 = _CopyStringForTime(0, v46);
        *v184.i64 = v30;
        v228 = _CopyStringForTime(0, v184);
        *buf = 134218498;
        *v261 = v36;
        *&v261[8] = 2112;
        *&v261[10] = v241;
        *&v261[18] = 2112;
        *&v261[20] = v228;
        v45 = "%.0fs gap with no PMI microstackshots (but none missing) between %@ and %@";
      }

      else
      {
        v34 = (a1 + 368);
        v39 = *(a1 + 368);
        if (v39 <= 0.0)
        {
          v40 = 0.0;
        }

        else
        {
          v40 = v30 - v39;
        }

        if (v40 <= 300.0)
        {
          goto LABEL_92;
        }

        if (qword_1EDD02F78 != -1)
        {
          dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
        }

        if (byte_1EDD02EF3 != 1)
        {
          goto LABEL_92;
        }

        v252 = (a1 + 368);
        __base = v19;
        v41 = *__error();
        v42 = _sa_logt();
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_89;
        }

        v43.i64[0] = *v252;
        v241 = _CopyStringForTime(0, v43);
        *v44.i64 = v30;
        v228 = _CopyStringForTime(0, v44);
        *buf = 134218498;
        *v261 = v40;
        *&v261[8] = 2112;
        *&v261[10] = v241;
        *&v261[18] = 2112;
        *&v261[20] = v228;
        v45 = "%.0fs gap with no PMI microstackshots between %@ and %@";
      }

      _os_log_debug_impl(&dword_1E0E2F000, v42, OS_LOG_TYPE_DEBUG, v45, buf, 0x20u);

      goto LABEL_89;
    }

LABEL_51:
    v14 = [(SASampleStore *)a1 handleNonMicrostackshotData:v9 bufSize:v11 statistics:a3];
    goto LABEL_52;
  }

  if (qword_1EDD02F78 != -1)
  {
    dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
  }

  if (byte_1EDD02EF3 != 1)
  {
LABEL_50:
    v14 = 0;
    goto LABEL_52;
  }

  v12 = *__error();
  v13 = _sa_logt();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v261 = v11;
    v15 = "Partial microstackshot (%{iec-bytes}lu), requesting more data";
    goto LABEL_55;
  }

LABEL_9:

  v14 = 0;
  *__error() = v12;
LABEL_52:
  objc_autoreleasePoolPop(v8);
LABEL_53:
  v28 = *MEMORY[0x1E69E9840];
  return v14;
}

- (int64_t)addMicrostackshotsFromData:(id)a3 ofTypes:(unsigned int)a4 inTimeRangeStart:(double)a5 end:(double)a6 onlyPid:(int)a7 onlyTid:(unint64_t)a8 statistics:(id)a9
{
  v12 = [(SASampleStore *)a5 filterBlockForMicrostackshotTypes:a6 startTime:SASampleStore endTime:a4 pid:a7 tid:a8];
  v13 = [(SASampleStore *)self addMicrostackshotsFromData:a3 statistics:a9 filterBlock:v12];

  return v13;
}

- (int64_t)addMicrostackshotsFromData:(id)a3 statistics:(id)a4 filterBlock:(id)a5
{
  v9 = 0;
  if ([a3 length])
  {
    while (1)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:objc_msgSend(a3 length:"bytes") + v9 freeWhenDone:{objc_msgSend(a3, "length") - v9, 0}];
      v11 = [(SASampleStore *)self _addMicrostackshotFromData:v10 statistics:a4 filterBlock:a5];
      v12 = v11;
      if (v11 <= 0)
      {
        break;
      }

      v9 += v11;

      if (v9 >= [a3 length])
      {
        return v9;
      }
    }

    if (v12)
    {
      v13 = v9 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      return v12;
    }
  }

  return v9;
}

- (uint64_t)handleNonMicrostackshotData:(unint64_t)a3 bufSize:(void *)a4 statistics:
{
  v4 = a2;
  v5 = 0;
  v6 = 0;
  v192 = *MEMORY[0x1E69E9840];
  location = (a1 + 528);
  p_cache = SAMicrostackshotStatistics.cache;
  v162 = a3;
  while (1)
  {
    v8 = a3 - v6;
    if (a3 - v6 < 4)
    {
LABEL_182:
      if (qword_1EDD02F78 != -1)
      {
        dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
      }

      if (*(p_cache + 3827) == 1)
      {
        v123 = *__error();
        v124 = _sa_logt();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *v191 = v5;
          *&v191[8] = 2048;
          *&v191[10] = v6 - v5;
          _os_log_debug_impl(&dword_1E0E2F000, v124, OS_LOG_TYPE_DEBUG, "Parsed %{iec-bytes}lu of non-MS data, %{iec-bytes}lu of invalid data", buf, 0x16u);
        }

        *__error() = v123;
      }

      [a4 setBytes_other_data:{objc_msgSend(a4, "bytes_other_data") + v5}];
      [a4 setBytes_not_microstackshots:{v6 - v5 + objc_msgSend(a4, "bytes_not_microstackshots")}];
      v125 = *MEMORY[0x1E69E9840];
      return v6;
    }

    if (v6)
    {
      v9 = *(v4 + v6);
      if (v9 == 835010577)
      {
        goto LABEL_182;
      }
    }

    else
    {
      v9 = *v4;
    }

    if (v9 != -1342106384 && v9 != 1271888501 && v9 != -742165608)
    {
      goto LABEL_79;
    }

    if (v8 < 0x10)
    {
      goto LABEL_182;
    }

    v12 = v4 + v6;
    v13 = *(v4 + v6 + 4);
    v165 = v4 + v6;
    if (v13 <= 0xF)
    {
      v14 = *__error();
      v15 = _sa_logt();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *v165;
        v17 = *(v165 + 1);
        *buf = 67109376;
        *v191 = v16;
        *&v191[4] = 1024;
        *&v191[6] = v17;
        _os_log_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_INFO, "Found invalid chunk 0x%x length %u", buf, 0xEu);
      }

      *__error() = v14;
      v4 = a2;
      a3 = v162;
      goto LABEL_79;
    }

    if (v8 < v13)
    {
      goto LABEL_182;
    }

    if (v9 == 1271888501)
    {
      if (qword_1EDD02F78 != -1)
      {
        dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
        v12 = v4 + v6;
        a3 = v162;
      }

      if (*(p_cache + 3827) == 1)
      {
        v18 = *__error();
        v19 = _sa_logt();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_DEBUG, "Ignoring systemstats backwards compatibility chunk", buf, 2u);
        }

        *__error() = v18;
        v4 = a2;
        a3 = v162;
        v12 = v165;
      }

      v20 = *(v12 + 1);
      v6 += (v20 - 1);
      v5 += v20;
      goto LABEL_79;
    }

    v21 = a1;
    v22 = *(a1 + 356);
    if (v22)
    {
      if (v9 == v22)
      {
        v23 = [*(a1 + 360) length];
      }

      else
      {
        v24 = *__error();
        v25 = _sa_logt();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v103 = [*(a1 + 360) length];
          v104 = *(a1 + 356);
          *buf = 134218240;
          *v191 = v103;
          *&v191[8] = 1024;
          *&v191[10] = v104;
          _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "Previous %{iec-bytes}lu chunk 0x%x missing needed followup chunk", buf, 0x12u);
        }

        *__error() = v24;
        v21 = a1;
        *(a1 + 356) = 0;
        v26 = *(a1 + 360);
        *(a1 + 360) = 0;

        v23 = 0;
      }

      v12 = v165;
    }

    else
    {
      v23 = 0;
    }

    v153 = (*(v12 + 1) - 16);
    v27 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v12 + 16 length:v153 freeWhenDone:0];
    v28 = *(v21 + 360);
    if (v28)
    {
      v29 = v27;
      [v28 appendData:?];
      v30 = *(v21 + 360);

      v27 = v30;
    }

    v31 = v165;
    v159 = v27;
    if (*(v165 + 2))
    {
      if (v27 != *(a1 + 360))
      {
        v32 = [v27 mutableCopy];
        v33 = *(a1 + 360);
        *(a1 + 360) = v32;

        v31 = v165;
        v27 = v159;
        *(a1 + 356) = *v165;
      }

      if (qword_1EDD02F78 != -1)
      {
        dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
        v31 = v165;
        v27 = v159;
      }

      if (*(p_cache + 3827) == 1)
      {
        v34 = *__error();
        v35 = _sa_logt();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v105 = *v165;
          v106 = [*(a1 + 360) length];
          *buf = 67109632;
          *v191 = v153;
          *&v191[4] = 1024;
          *&v191[6] = v105;
          p_cache = (SAMicrostackshotStatistics + 16);
          *&v191[10] = 2048;
          *&v191[12] = v106;
          _os_log_debug_impl(&dword_1E0E2F000, v35, OS_LOG_TYPE_DEBUG, "Captured %{iec-bytes}u of 0x%x (%{iec-bytes}lu total), waiting for needed following chunk", buf, 0x18u);
        }

        *__error() = v34;
        v27 = v159;
        v31 = v165;
      }

      v36 = *(v31 + 1);
      goto LABEL_49;
    }

    *(a1 + 356) = 0;
    v37 = *(a1 + 360);
    *(a1 + 360) = 0;

    if (*v165 != -1342106384)
    {
      break;
    }

    v184 = 0;
    v42 = [MEMORY[0x1E696AE40] propertyListWithData:v159 options:0 format:0 error:&v184];
    v151 = v184;
    if (!v42)
    {
      goto LABEL_71;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v46 = *__error();
      v47 = _sa_logt();
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      ClassName = object_getClassName(v42);
      *v185 = 136315138;
      v186 = ClassName;
      v48 = v47;
      v49 = "SystemStats boot info dict isn't a dictionary: %s";
      v50 = 12;
LABEL_168:
      _os_log_error_impl(&dword_1E0E2F000, v48, OS_LOG_TYPE_ERROR, v49, v185, v50);
      goto LABEL_70;
    }

    v43 = DictGetNumber(v42, @"walltime");
    [v43 doubleValue];
    v45 = v44;

    if (v45 == 0.0)
    {
      v46 = *__error();
      v47 = _sa_logt();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *v185 = 0;
        v48 = v47;
        v49 = "No wall time in boot info";
        v50 = 2;
        goto LABEL_168;
      }

LABEL_70:

      *__error() = v46;
LABEL_71:

LABEL_72:
LABEL_73:
      v54 = *__error();
      v55 = _sa_logt();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v191 = v153;
        _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "Invalid data following boot info header (%{iec-bytes}u)", buf, 8u);
      }

      *__error() = v54;
LABEL_76:
      v4 = a2;
      goto LABEL_77;
    }

    v150 = v42;
    v56 = DictGetString(v42, @"uuid");
    v149 = v56;
    if (!v56)
    {
      v107 = *__error();
      v108 = _sa_logt();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        *v185 = 0;
        v109 = v108;
        v110 = "No boot UUID in boot info";
        v111 = 2;
        goto LABEL_181;
      }

LABEL_166:

      *__error() = v107;
      goto LABEL_72;
    }

    v148 = uuidForString(v56);
    if (!v148)
    {
      v107 = *__error();
      v108 = _sa_logt();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        *v185 = 138412290;
        v186 = v149;
        v109 = v108;
        v110 = "Boot UUID in boot info invalid (%@)";
        v111 = 12;
LABEL_181:
        _os_log_error_impl(&dword_1E0E2F000, v109, OS_LOG_TYPE_ERROR, v110, v185, v111);
      }

      goto LABEL_166;
    }

    v143 = DictGetString(v42, @"kernel_version");
    v57 = DictGetString(v42, @"os_product_name");
    v142 = DictGetString(v42, @"os_product_version");
    v141 = DictGetString(v42, @"os_product_version_extra");
    v140 = DictGetString(v42, @"os_build_version");
    v139 = DictGetString(v42, @"boot_args");
    v147 = DictGetString(v42, @"mach_timebase");
    v146 = DictGetString(v42, @"machine_arch");
    v145 = DictGetNumber(v42, @"hw_page_size");
    v144 = DictGetNumber(v42, @"vm_page_size");
    obj = v57;
    if (v57 && !*location)
    {
      objc_storeStrong(location, v57);
    }

    if (v147 && (!*(a1 + 232) || !*(a1 + 236)))
    {
      v58 = [v147 componentsSeparatedByString:@"/"];
      if ([v58 count] >= 2)
      {
        v59 = [v58 objectAtIndexedSubscript:0];
        *(a1 + 232) = [v59 intValue];

        v60 = [v58 objectAtIndexedSubscript:1];
        *(a1 + 236) = [v60 intValue];
      }
    }

    v61 = a1;
    if ([v146 length] && !*(a1 + 240))
    {
      [a1 setMachineArchitecture:v146];
      v61 = a1;
    }

    if (v145 && !*(v61 + 424))
    {
      v61 = a1;
      *(a1 + 424) = [v145 unsignedIntValue];
    }

    if (v144 && !*(v61 + 428))
    {
      v61 = a1;
      *(a1 + 428) = [v144 unsignedIntValue];
    }

    v136 = [[SABootInfo alloc] initWithUUID:v148 wallTime:v139 bootArgs:v143 kernelVersion:v142 osProductVersion:v141 osProductVersionExtra:v140 osBuildVersion:v45];
    [(SASampleStore *)v61 addBootCycle:v136];
    v168 = [SATask taskWithPid:0 uniquePid:0 name:0 sharedCache:?];
    [(SASampleStore *)v61 addTask:v168];
    objc_opt_class();
    v62 = DictGetArrayOfClass(v42, @"load_infos");
    v137 = [v62 count];
    if (v137)
    {
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v158 = v62;
      v164 = [v158 countByEnumeratingWithState:&v180 objects:buf count:16];
      if (v164)
      {
        v163 = *v181;
        v154 = v5;
        v155 = v6;
        v169 = v62;
        do
        {
          v63 = 0;
          do
          {
            if (*v181 != v163)
            {
              v64 = v63;
              objc_enumerationMutation(v158);
              v63 = v64;
            }

            v166 = v63;
            v65 = *(*(&v180 + 1) + 8 * v63);
            v66 = DictGetNumber(v65, @"pid");
            v167 = v66;
            if (!v66)
            {
              v67 = *__error();
              v68 = _sa_logt();
              if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_115;
              }

              *v185 = 0;
              v70 = v68;
              v71 = "Load info with no pid";
              v72 = 2;
              goto LABEL_160;
            }

            if ([v66 intValue])
            {
              v67 = *__error();
              v68 = _sa_logt();
              if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
LABEL_115:

                *__error() = v67;
                goto LABEL_157;
              }

              v69 = [v167 intValue];
              *v185 = 67109120;
              LODWORD(v186) = v69;
              v70 = v68;
              v71 = "Load info for unexpected pid %d";
              v72 = 8;
LABEL_160:
              _os_log_error_impl(&dword_1E0E2F000, v70, OS_LOG_TYPE_ERROR, v71, v185, v72);
              goto LABEL_115;
            }

            v73 = DictGetString(v65, @"main_binary_uuid");
            v157 = v73;
            if (v73)
            {
              v173 = uuidForString(v73);
            }

            else
            {
              v173 = 0;
            }

            objc_opt_class();
            v74 = DictGetArrayOfClass(v65, @"load_info_entries");
            v171 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v74, "count")}];
            v176 = 0u;
            v177 = 0u;
            v178 = 0u;
            v179 = 0u;
            v75 = v74;
            v76 = [v75 countByEnumeratingWithState:&v176 objects:v189 count:16];
            if (v76)
            {
              v77 = v76;
              v78 = *v177;
              v170 = v75;
              v172 = *v177;
              do
              {
                v79 = 0;
                v174 = v77;
                do
                {
                  if (*v177 != v78)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v80 = *(*(&v176 + 1) + 8 * v79);
                  v81 = DictGetString(v80, @"uuid");
                  v82 = v81;
                  if (v81)
                  {
                    v83 = uuidForString(v81);
                    if (v83)
                    {
                      v84 = DictGetString(v80, @"segment");
                      v85 = DictGetNumber(v80, @"load_address");
                      if (v85)
                      {
                        v86 = DictGetString(v80, @"path");
                        v87 = DictGetNumber(v80, @"length");
                        if ([v86 isAbsolutePath])
                        {
                          v88 = v86;
                        }

                        else
                        {
                          v88 = 0;
                        }

                        v89 = [SABinary binaryWithUUID:v83 absolutePath:v88];
                        v175 = v87;
                        v90 = [v87 unsignedLongLongValue];
                        if (v84)
                        {
                          v91 = [(SABinary *)v89 segmentWithName:v84 length:v90 offsetIntoBinary:0x7FFFFFFFFFFFFFFFLL];
                          if (v91)
                          {
                            v92 = v91;
                            v93 = +[SABinaryLoadInfo binaryLoadInfoWithSegment:loadAddress:isInKernelAddressSpace:exclave:](SABinaryLoadInfo, v91, [v85 unsignedLongLongValue], 1, 0);
                            goto LABEL_143;
                          }
                        }

                        else
                        {
                          [(SABinary *)v89 applyLength:v90];
                        }

                        v93 = +[SABinaryLoadInfo binaryLoadInfoWithBinary:loadAddress:isInKernelAddressSpace:exclave:](SABinaryLoadInfo, v89, [v85 unsignedLongLongValue], 1, 0);
                        v92 = 0;
LABEL_143:
                        [v171 addObject:v93];
                        if (v173)
                        {
                          if ([v173 isEqual:v83])
                          {
                            [(SASampleStore *)v168 setEndTime:v89];

                            goto LABEL_146;
                          }
                        }

                        else
                        {
LABEL_146:
                          v173 = 0;
                        }

                        v62 = v169;
                        v75 = v170;
                      }

                      else
                      {
                        v98 = *__error();
                        v99 = _sa_logt();
                        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                        {
                          *v185 = 138412546;
                          v100 = @"(entire binary)";
                          if (v84)
                          {
                            v100 = v84;
                          }

                          v186 = v82;
                          v187 = 2112;
                          v188 = v100;
                          _os_log_error_impl(&dword_1E0E2F000, v99, OS_LOG_TYPE_ERROR, "No load address for load info entry %@ segment %@", v185, 0x16u);
                        }

                        *__error() = v98;
                      }

                      v78 = v172;
                      v77 = v174;
                    }

                    else
                    {
                      v96 = *__error();
                      v97 = _sa_logt();
                      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                      {
                        *v185 = 138412290;
                        v186 = v82;
                        _os_log_error_impl(&dword_1E0E2F000, v97, OS_LOG_TYPE_ERROR, "Bad UUID for load info entry: %@", v185, 0xCu);
                      }

                      *__error() = v96;
                    }

                    goto LABEL_150;
                  }

                  v94 = *__error();
                  v95 = _sa_logt();
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                  {
                    *v185 = 0;
                    _os_log_error_impl(&dword_1E0E2F000, v95, OS_LOG_TYPE_ERROR, "No UUID for load info entry", v185, 2u);
                  }

                  *__error() = v94;
LABEL_150:

                  ++v79;
                }

                while (v77 != v79);
                v101 = [v75 countByEnumeratingWithState:&v176 objects:v189 count:16];
                v77 = v101;
              }

              while (v101);
            }

            [(SATask *)v168 addImageInfos:v171];
            v5 = v154;
            v6 = v155;
            p_cache = (SAMicrostackshotStatistics + 16);
LABEL_157:

            v63 = v166 + 1;
          }

          while (v166 + 1 != v164);
          v102 = [v158 countByEnumeratingWithState:&v180 objects:buf count:16];
          v164 = v102;
        }

        while (v102);
      }
    }

    else
    {
      v114 = *__error();
      v115 = _sa_logt();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        *v185 = 138543362;
        v186 = v148;
        _os_log_error_impl(&dword_1E0E2F000, v115, OS_LOG_TYPE_ERROR, "No kernel load infos for boot %{public}@", v185, 0xCu);
      }

      *__error() = v114;
    }

    if (!v137)
    {
      goto LABEL_73;
    }

    if (qword_1EDD02F78 != -1)
    {
      dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
    }

    v27 = v159;
    v116 = v165;
    if (*(p_cache + 3827) == 1)
    {
      v117 = *__error();
      v118 = _sa_logt();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
      {
        v119 = [a1 bootCycles];
        v120 = [v119 lastObject];
        v121 = [v120 uuid];
        v122 = [v121 UUIDString];
        *buf = 138412290;
        *v191 = v122;
        _os_log_debug_impl(&dword_1E0E2F000, v118, OS_LOG_TYPE_DEBUG, "Parsed boot info in microstackshots stream for %@", buf, 0xCu);

        p_cache = (SAMicrostackshotStatistics + 16);
      }

      *__error() = v117;
      v27 = v159;
      v116 = v165;
    }

    v36 = *(v116 + 1);
LABEL_49:
    v6 += (v36 - 1);
    v5 += v36;
    v4 = a2;
LABEL_78:

    a3 = v162;
LABEL_79:
    if (++v6 >= a3)
    {
      goto LABEL_182;
    }
  }

  if (*v165 == -742165608)
  {
    v38 = [MEMORY[0x1E696AE40] propertyListWithData:v159 options:0 format:0 error:0];

    if (v38)
    {
      [SASharedCache addDSCSymData:v159];
      if (qword_1EDD02F78 != -1)
      {
        dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
      }

      if (*(p_cache + 3827) == 1)
      {
        v39 = *__error();
        v40 = _sa_logt();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v112 = [v159 length];
          *buf = 134217984;
          *v191 = v112;
          _os_log_debug_impl(&dword_1E0E2F000, v40, OS_LOG_TYPE_DEBUG, "Parsed %{iec-bytes}lu dscysm data in microstackshots stream", buf, 0xCu);
        }

        *__error() = v39;
      }

      v41 = *(v165 + 1);
      v6 += (v41 - 1);
      v5 += v41;
      goto LABEL_76;
    }

    v51 = *__error();
    v52 = _sa_logt();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v53)
      {
        *buf = 67109376;
        *v191 = v153;
        *&v191[4] = 2048;
        *&v191[6] = v23;
        _os_log_error_impl(&dword_1E0E2F000, v52, OS_LOG_TYPE_ERROR, "Invalid data following dscsym header (%{iec-bytes}u), lost %{iec-bytes}lu of data in the preceding chunk!", buf, 0x12u);
      }

      *__error() = v51;
      p_cache = (SAMicrostackshotStatistics + 16);
      goto LABEL_76;
    }

    v4 = a2;
    if (v53)
    {
      *buf = 67109120;
      *v191 = v153;
      _os_log_error_impl(&dword_1E0E2F000, v52, OS_LOG_TYPE_ERROR, "Invalid data following dscsym header (%{iec-bytes}u)", buf, 8u);
    }

    *__error() = v51;
    p_cache = (SAMicrostackshotStatistics + 16);
LABEL_77:
    v27 = v159;
    goto LABEL_78;
  }

  v127 = *__error();
  v128 = _sa_logt();
  if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
  {
    v129 = *v165;
    *buf = 67109120;
    *v191 = v129;
    _os_log_error_impl(&dword_1E0E2F000, v128, OS_LOG_TYPE_ERROR, "Missing case for systemstats micro chunk %u", buf, 8u);
  }

  *__error() = v127;
  _SASetCrashLogMessage(7625, "Missing case for systemstats micro chunk %u", v130, v131, v132, v133, v134, v135, *v165);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t __77__SASampleStore_filterBlockForMicrostackshotTypes_startTime_endTime_pid_tid___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4 == 0.0 || ([a2 wallTime], v4 >= v5))
  {
    v15 = *(a1 + 40);
    if (v15 == 0.0 || ([a2 wallTime], v15 <= v16))
    {
      if (*(a1 + 56) && ([a2 microSnapshotFlags] & *(a1 + 56)) == 0)
      {
        if (qword_1EDD02F78 != -1)
        {
          dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
        }

        if (byte_1EDD02EF3 == 1)
        {
          v6 = *__error();
          v7 = _sa_logt();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v17 = [a2 processName];
            v33 = [a2 processID];
            [a2 wallTime];
            v20 = _CopyStringForTime(3, v34);
            v35 = [a2 microSnapshotFlags];
            v36 = *(a1 + 56);
            v43 = 138413314;
            v44 = v17;
            v45 = 1024;
            v46 = v33;
            v47 = 2112;
            v48 = v20;
            v49 = 2048;
            v50 = *&v35;
            v51 = 1024;
            LODWORD(v52) = v36;
            v23 = "Not including microstackshot for %@ [%d] at %@ due to being wrong type (0x%llx, requested 0x%x)";
            v24 = v7;
            v25 = 44;
            goto LABEL_38;
          }

LABEL_39:
          v8 = 1;
LABEL_40:

          *__error() = v6;
          goto LABEL_42;
        }
      }

      else
      {
        v26 = *(a1 + 60);
        if (v26 < 0 || v26 == [a2 processID])
        {
          v27 = *(a1 + 48);
          if (!v27 || v27 == [a2 threadID])
          {
            v8 = 0;
            goto LABEL_42;
          }

          if (qword_1EDD02F78 != -1)
          {
            dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
          }

          if (byte_1EDD02EF3 == 1)
          {
            v6 = *__error();
            v7 = _sa_logt();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
            {
              v17 = [a2 processName];
              v37 = [a2 processID];
              [a2 wallTime];
              v20 = _CopyStringForTime(3, v38);
              v39 = [a2 threadID];
              v40 = *(a1 + 48);
              v43 = 138413314;
              v44 = v17;
              v45 = 1024;
              v46 = v37;
              v47 = 2112;
              v48 = v20;
              v49 = 2048;
              v50 = *&v39;
              v51 = 2048;
              v52 = v40;
              v23 = "Not including microstackshot for %@ [%d] at %@ due to being wrong thread (0x%llx, requested 0x%llx)";
              v24 = v7;
              v25 = 48;
              goto LABEL_38;
            }

            goto LABEL_39;
          }
        }

        else
        {
          if (qword_1EDD02F78 != -1)
          {
            dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
          }

          if (byte_1EDD02EF3 == 1)
          {
            v6 = *__error();
            v7 = _sa_logt();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
            {
              v28 = [a2 processName];
              v29 = [a2 processID];
              [a2 wallTime];
              v31 = _CopyStringForTime(3, v30);
              v32 = *(a1 + 60);
              v43 = 138413058;
              v44 = v28;
              v45 = 1024;
              v46 = v29;
              v47 = 2112;
              v48 = v31;
              v49 = 1024;
              LODWORD(v50) = v32;
              _os_log_debug_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] at %@ due to being wrong pid (requested %d)", &v43, 0x22u);
            }

            goto LABEL_39;
          }
        }
      }
    }

    else
    {
      if (qword_1EDD02F78 != -1)
      {
        dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
      }

      if (byte_1EDD02EF3 == 1)
      {
        v6 = *__error();
        v7 = _sa_logt();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v17 = [a2 processName];
          v18 = [a2 processID];
          [a2 wallTime];
          v20 = _CopyStringForTime(3, v19);
          v21 = *(a1 + 40);
          [a2 wallTime];
          v43 = 138413058;
          v44 = v17;
          v45 = 1024;
          v46 = v18;
          v47 = 2112;
          v48 = v20;
          v49 = 2048;
          v50 = v21 - v22;
          v23 = "Not including microstackshot for %@ [%d] at %@ due to being too early (%fs)";
          v24 = v7;
          v25 = 38;
LABEL_38:
          _os_log_debug_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_DEBUG, v23, &v43, v25);

          goto LABEL_39;
        }

        goto LABEL_39;
      }
    }

    v8 = 1;
    goto LABEL_42;
  }

  if (qword_1EDD02F78 != -1)
  {
    dispatch_once(&qword_1EDD02F78, &__block_literal_global_2073);
  }

  if (byte_1EDD02EF3 == 1)
  {
    v6 = *__error();
    v7 = _sa_logt();
    v8 = 2;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = [a2 processName];
      v10 = [a2 processID];
      [a2 wallTime];
      v12 = _CopyStringForTime(3, v11);
      [a2 wallTime];
      v14 = v13 - *(a1 + 32);
      v43 = 138413058;
      v44 = v9;
      v45 = 1024;
      v46 = v10;
      v47 = 2112;
      v48 = v12;
      v49 = 2048;
      v50 = v14;
      v8 = 2;
      _os_log_debug_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] at %@ due to being too late (%fs)", &v43, 0x26u);
    }

    goto LABEL_40;
  }

  v8 = 2;
LABEL_42:
  v41 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __67__SASampleStore__addMicrostackshotFromData_statistics_filterBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a3 <= *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a3 < *a2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

int *__67__SASampleStore__addMicrostackshotFromData_statistics_filterBlock___block_invoke_484()
{
  v0 = *__error();
  v1 = _sa_logt();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_1E0E2F000, v1, OS_LOG_TYPE_FAULT, "Kernel callstacks for non-kernel tasks in microstackshots is unsupported", v3, 2u);
  }

  result = __error();
  *result = v0;
  return result;
}

void __57__SASampleStore_findCpuSignalHandlerStackLeafKernelFrame__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    if (([v3 isEqualToString:@"cpu_signal_handler"] & 1) != 0 || (v5 = objc_msgSend(v6, "isEqualToString:", @"sync_iss_to_iks"), v4 = v6, v5))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
      v4 = v6;
      **(a1 + 48) = 1;
    }
  }
}

void __28__SASampleStore_symbolicate__block_invoke_505(uint64_t a1, void *a2)
{
  v3 = [a2 instruction];
  v7 = [v3 binary];

  v4 = v7;
  if (v7)
  {
    v5 = (*(*(a1 + 32) + 488) >> 1) & 1;
    v6 = *(a1 + 48);
    (*(*(a1 + 40) + 16))();
    v4 = v7;
  }
}

void __28__SASampleStore_symbolicate__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [a3 threadStates];
  v4 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v37 = *v43;
    do
    {
      v6 = 0;
      do
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * v6);
        v9 = [v7 leafKernelFrame];
        if (v9)
        {
          do
          {
            v10 = [v9 instruction];
            v11 = [v10 binary];

            if (v11)
            {
              v12 = ((*(*(a1 + 32) + 488) >> 1) & 1u) - 1;
              v13 = *(a1 + 48);
              (*(*(a1 + 40) + 16))();
            }

            v14 = v9[4];
            v15 = v14;

            v9 = v15;
          }

          while (v14);
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        if (v7)
        {
          Property = objc_getProperty(v7, v8, 184, 1);
          v18 = Property;
          if (Property)
          {
            Property = objc_getProperty(Property, v17, 16, 1);
          }
        }

        else
        {
          v18 = 0;
          Property = 0;
        }

        v19 = Property;

        v20 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v20)
        {
          v22 = v20;
          v23 = *v39;
          do
          {
            v24 = 0;
            do
            {
              if (*v39 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(*(&v38 + 1) + 8 * v24);
              if (v25)
              {
                v26 = objc_getProperty(v25, v21, 16, 1);
                if (v26)
                {
                  do
                  {
                    v27 = [v26 instruction];
                    v28 = [v27 binary];

                    if (v28)
                    {
                      v29 = (*(*(a1 + 32) + 488) >> 1) & 1;
                      v30 = *(a1 + 48);
                      (*(*(a1 + 40) + 16))();
                    }

                    v31 = v26[4];
                    v32 = v31;

                    v26 = v32;
                  }

                  while (v31);
                }
              }

              ++v24;
            }

            while (v24 != v22);
            v33 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
            v22 = v33;
          }

          while (v33);
        }

        ++v6;
      }

      while (v6 != v5);
      v34 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      v5 = v34;
    }

    while (v34);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (uint64_t)addAddressTranslations:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!*(result + 328))
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a2, "count")}];
      v5 = *(v3 + 328);
      *(v3 + 328) = v4;
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__SASampleStore_addAddressTranslations___block_invoke;
    v6[3] = &unk_1E86F5A10;
    v6[4] = v3;
    return [a2 enumerateKeysAndObjectsUsingBlock:v6];
  }

  return result;
}

void __40__SASampleStore_addAddressTranslations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = -[SASampleStore addressTranslationsForPid:](*(a1 + 32), [a2 intValue]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__SASampleStore_addAddressTranslations___block_invoke_2;
  v9[3] = &unk_1E86F59E8;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = a2;
  v8 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
}

int *__40__SASampleStore_addAddressTranslations___block_invoke_2(id *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  result = [a3 unsignedLongLongValue];
  if (!result)
  {
LABEL_8:
    v14 = *MEMORY[0x1E69E9840];
    return result;
  }

  v7 = [a1[4] objectForKeyedSubscript:a2];
  if (v7)
  {
    v8 = v7;
    v9 = [a1[4] objectForKeyedSubscript:a2];
    if ([v9 unsignedLongLongValue])
    {
      v10 = [a1[4] objectForKeyedSubscript:a2];
      v11 = [v10 isEqual:a3];

      if ((v11 & 1) == 0)
      {
        v12 = *__error();
        v13 = _sa_logt();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          v17 = -[SASampleStore lastTaskWithPid:](a1[5], [a1[6] intValue]);
          v18 = [v17 debugDescription];
          v19 = [a2 unsignedLongLongValue];
          v20 = [a3 unsignedLongLongValue];
          v21 = [a1[4] objectForKeyedSubscript:a2];
          v22 = 138413058;
          v23 = v18;
          v24 = 2048;
          v25 = v19;
          v26 = 2048;
          v27 = v20;
          v28 = 2048;
          v29 = [v21 unsignedLongLongValue];
          _os_log_fault_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_FAULT, "%@: libktrace translation 0x%llx -> 0x%llx mismatch with existing translation -> 0x%llx", &v22, 0x2Au);
        }

        result = __error();
        *result = v12;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v15 = a1[4];
  v16 = *MEMORY[0x1E69E9840];

  return [v15 setObject:a3 forKeyedSubscript:a2];
}

void __31__SASampleStore_gatherKextStat__block_invoke()
{
  v0 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_514);
  v1 = qos_class_self();
  v2 = dispatch_get_global_queue(v1, 0);
  dispatch_async(v2, v0);

  v3 = dispatch_time(0, 2000000000);
  if (dispatch_block_wait(v0, v3))
  {
    v4 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_DEFAULT, "WARNING: Timed out waiting for kextstat", v6, 2u);
    }

    *__error() = v4;
  }
}

void __31__SASampleStore_gatherKextStat__block_invoke_2()
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = -1;
  v21 = xmmword_1E86F5A30;
  v0 = SASpawnPlatformBinaryWithSigningIdentifier("/usr/sbin/kextstat", "com.apple.kextstat", &v21, 0, 0, 0, &v16, 0, 0, 0, 0);
  if (v0 < 1)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 67109378;
      v18 = v12;
      v19 = 2080;
      v20 = v14;
      _os_log_debug_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_DEBUG, "Unable to run kextstat: %d %s", buf, 0x12u);
    }

    *__error() = v9;
  }

  else
  {
    v1 = v0;
    v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v3 = malloc_type_calloc(0x40uLL, 0x400uLL, 0x1F77E75CuLL);
    v4 = MEMORY[0x1E69E9AC8];
    v5 = read(v16, v3, *MEMORY[0x1E69E9AC8] - 1);
    if (v5 >= 1)
    {
      do
      {
        *(v3 + v5) = 0;
        v6 = SANSStringForCString(v3);
        if (v6)
        {
          [v2 appendString:v6];
        }

        else
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __31__SASampleStore_gatherKextStat__block_invoke_3;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = v3;
          if (qword_1EDD02F18 != -1)
          {
            dispatch_once(&qword_1EDD02F18, block);
          }
        }

        v5 = read(v16, v3, *v4 - 1);
      }

      while (v5 > 0);
    }

    waitpid(v1, 0, 0);
    free(v3);
    if ([v2 length])
    {
      v7 = [v2 copy];
      v8 = qword_1EDD02F08;
      qword_1EDD02F08 = v7;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

int *__31__SASampleStore_gatherKextStat__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _sa_logt();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315138;
    v8 = v6;
    _os_log_error_impl(&dword_1E0E2F000, v3, OS_LOG_TYPE_ERROR, "Unable to convert kextstat output to NSString: %s", &v7, 0xCu);
  }

  result = __error();
  *result = v2;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __33__SASampleStore_gatherOsVersions__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, id obj)
{
  objc_storeStrong((*(a1 + 32) + 528), obj);
  objc_storeStrong((*(a1 + 32) + 536), a2);
  objc_storeStrong((*(a1 + 32) + 544), a3);
  v9 = (*(a1 + 32) + 552);

  objc_storeStrong(v9, a4);
}

- (void)setMachineArchitecture:(id)a3
{
  v5 = a3;
  ArchitectureForName = [a3 UTF8String];
  if (ArchitectureForName)
  {
    [a3 UTF8String];
    ArchitectureForName = CSArchitectureGetArchitectureForName();
  }

  self->_arch = ArchitectureForName;
}

void __36__SASampleStore_gatherHardwareModel__block_invoke()
{
  v0 = dispatch_semaphore_create(0);
  v1 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SASampleStore_gatherHardwareModel__block_invoke_2;
  block[3] = &unk_1E86F5698;
  v2 = v0;
  v8 = v2;
  dispatch_async(v1, block);

  v3 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v2, v3))
  {
    v4 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "Timed out waiting for MobileGestalt", v6, 2u);
    }

    *__error() = v4;
  }
}

intptr_t __36__SASampleStore_gatherHardwareModel__block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      *__error() = v9;
      goto LABEL_11;
    }

    v11 = *__error();
    *buf = 67109120;
    LODWORD(v31) = v11;
    v12 = "Unable to get current device from MG: %d";
LABEL_29:
    _os_log_fault_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_FAULT, v12, buf, 8u);
    goto LABEL_10;
  }

  v3 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();
  v4 = qword_1EDD02F20;
  qword_1EDD02F20 = v3;

  if (!qword_1EDD02F20)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v27 = *__error();
    *buf = 67109120;
    LODWORD(v31) = v27;
    v12 = "Unable to get hw model from MG: %d";
    goto LABEL_29;
  }

  v5 = [qword_1EDD02F20 length];
  v6 = *__error();
  v7 = _sa_logt();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = qword_1EDD02F20;
      _os_log_debug_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_DEBUG, "Got hw model %@ from MG", buf, 0xCu);
    }

    *__error() = v6;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_FAULT, "0-length product type from MG", buf, 2u);
    }

    *__error() = v6;
    v22 = qword_1EDD02F20;
    qword_1EDD02F20 = 0;
  }

LABEL_11:

  if (!qword_1EDD02F20)
  {
    v15 = MGCopyAnswerWithError();
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFStringGetTypeID())
      {
        v18 = qword_1EDD02F20;
        qword_1EDD02F20 = v16;

        if (![qword_1EDD02F20 length])
        {
          v19 = *__error();
          v20 = _sa_logt();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_FAULT, "0-length product type", buf, 2u);
          }

          *__error() = v19;
          v21 = qword_1EDD02F20;
          qword_1EDD02F20 = 0;
        }
      }

      else
      {
        v25 = *__error();
        v26 = _sa_logt();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          v28 = CFGetTypeID(v16);
          v29 = CFCopyTypeIDDescription(v28);
          *buf = 138412290;
          v31 = v29;
          _os_log_fault_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_FAULT, "Product type not a string (%@)", buf, 0xCu);
        }

        *__error() = v25;
        CFRelease(v16);
      }
    }

    else
    {
      v23 = *__error();
      v24 = _sa_logt();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        LODWORD(v31) = 0;
        _os_log_fault_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_FAULT, "Unable to get product type: %d", buf, 8u);
      }

      *__error() = v23;
    }
  }

  result = dispatch_semaphore_signal(*(a1 + 32));
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_populateFromKtraceMachineInfo:(int)a3 is64bit:
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = [a1 hardwareModel];

    if (!v5)
    {
      v6 = ktrace_machine_product();
      if (v6 || (v6 = ktrace_machine_model()) != 0)
      {
        v7 = SANSStringForCString(v6);
        [a1 setHardwareModel:v7];
      }
    }

    if (![a1 numActiveCPUs])
    {
      active = ktrace_machine_active_cpus();
      if (active)
      {
        [a1 setNumActiveCPUs:active];
      }
    }

    if (![a1 memSize])
    {
      v9 = ktrace_machine_memory_size();
      if (v9)
      {
        [a1 setMemSize:v9];
      }
    }

    if (![a1 hwPageSize])
    {
      v10 = ktrace_machine_hw_page_size();
      if (v10)
      {
        [a1 setHwPageSize:v10];
      }
    }

    if (![a1 vmPageSize])
    {
      v11 = ktrace_machine_vm_page_size();
      if (v11)
      {
        [a1 setVmPageSize:v11];
      }
    }

    v12 = [a1 osProductName];

    if (!v12)
    {
      v13 = ktrace_machine_os_name();
      if (v13)
      {
        v14 = SANSStringForCString(v13);
        [a1 setOsProductName:v14];
      }
    }

    v15 = [a1 osProductVersion];

    if (!v15)
    {
      v16 = ktrace_machine_os_version();
      if (v16)
      {
        v17 = SANSStringForCString(v16);
        [a1 setOsProductVersion:v17];
      }
    }

    v18 = [a1 osProductVersionExtra];

    if (!v18)
    {
      v19 = ktrace_machine_os_version_extra();
      if (v19)
      {
        v20 = SANSStringForCString(v19);
        [a1 setOsProductVersionExtra:v20];
      }
    }

    v21 = [a1 osBuildVersion];

    if (!v21)
    {
      v23 = ktrace_machine_os_build();
      if (v23)
      {
        v24 = SANSStringForCString(v23);
        [a1 setOsBuildVersion:v24];
      }
    }

    if (!*(a1 + 240))
    {
      v25 = ktrace_machine_cpu_type();
      v26 = ktrace_machine_cpu_subtype();
      v27 = v25 & 0xFEFFFFFF;
      if (a3)
      {
        v27 |= 0x1000000uLL;
      }

      *(a1 + 240) = v27 | ((v26 & 0xFFFFFF) << 32);
    }

    if (!objc_getProperty(a1, v22, 1192, 1))
    {
      v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(a1 + 420)];
      if (*(a1 + 420))
      {
        v30 = 0;
        *&v29 = 67109376;
        v43 = v29;
        do
        {
          v31 = ktrace_machine_cpu_cluster();
          if (v31)
          {
            v32 = v31;
            v33 = *__error();
            v34 = _sa_logt();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = v43;
              v45 = v30;
              v46 = 1024;
              v47 = v32;
              v35 = v34;
              v36 = "Unable to determine cluster for cpu %u: %{errno}d";
LABEL_47:
              _os_log_error_impl(&dword_1E0E2F000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0xEu);
            }
          }

          else
          {
            v37 = ktrace_machine_cluster_flags();
            if (!v37)
            {
              v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
              v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v30];
              [v28 setObject:v39 forKeyedSubscript:v40];

              goto LABEL_43;
            }

            v38 = v37;
            v33 = *__error();
            v34 = _sa_logt();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = v43;
              v45 = 0;
              v46 = 1024;
              v47 = v38;
              v35 = v34;
              v36 = "Unable to determine flags for cluster %u: %{errno}d";
              goto LABEL_47;
            }
          }

          *__error() = v33;
LABEL_43:
          v30 = (v30 + 1);
        }

        while (v30 < *(a1 + 420));
      }

      if ([v28 count])
      {
        objc_setProperty_atomic_copy(a1, v41, v28, 1192);
      }
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

int *__39__SASampleStore_gatherSharedCacheStats__block_invoke(uint64_t a1, char *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = open(a2, 0);
  if (v4 == -1)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v50.st_dev = 136315394;
      *&v50.st_mode = a2;
      WORD2(v50.st_ino) = 1024;
      *(&v50.st_ino + 6) = v11;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "failed to open shared cache file %s: %{errno}d", &v50, 0x12u);
    }

    goto LABEL_34;
  }

  v5 = v4;
  memset(&v50, 0, sizeof(v50));
  if (!fstat(v4, &v50))
  {
    if (((*MEMORY[0x1E69E9AC8] + 0x7FFFFFFLL) & -*MEMORY[0x1E69E9AC8]) != 0x8000000)
    {
      v33 = *__error();
      v34 = _sa_logt();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *MEMORY[0x1E69E9AC8];
        *buf = 67109376;
        *v45 = 0x8000000;
        *&v45[4] = 2048;
        *&v45[6] = v35;
        _os_log_error_impl(&dword_1E0E2F000, v34, OS_LOG_TYPE_ERROR, "MAX_CHUNK_SIZE 0x%x isn't a page multiple 0x%lx", buf, 0x12u);
      }

      *__error() = v33;
      v42 = *MEMORY[0x1E69E9AC8];
      _SASetCrashLogMessage(9846, "MAX_CHUNK_SIZE 0x%x isn't a page multiple 0x%lx", v36, v37, v38, v39, v40, v41, 0);
      _os_crash();
      __break(1u);
    }

    v43 = a2;
    st_size = v50.st_size;
    if (v50.st_size < 1)
    {
      v14 = 0;
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = st_size - v15;
        if (v16 >= 0x8000000)
        {
          v16 = 0x8000000;
        }

        v17 = (*MEMORY[0x1E69E9AC8] + v16 - 1) & -*MEMORY[0x1E69E9AC8];
        v18 = mmap(0, v17, 1, 1, v5, v15);
        if (v18 == -1)
        {
          v22 = *__error();
          v23 = _sa_logt();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v29 = *__error();
            *buf = 134218754;
            *v45 = v15;
            *&v45[8] = 2048;
            *&v45[10] = v17;
            v46 = 2080;
            v47 = v43;
            v48 = 1024;
            v49 = v29;
            _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "mmap of 0x%llx,0x%zx of shared cache file %s failed: %{errno}d", buf, 0x26u);
          }

          *__error() = v22;
        }

        else
        {
          v19 = v18;
          if (mincore(v18, v17, *(a1 + 48)))
          {
            v20 = *__error();
            v21 = _sa_logt();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v28 = *__error();
              *buf = 134218754;
              *v45 = v15;
              *&v45[8] = 2048;
              *&v45[10] = v17;
              v46 = 2080;
              v47 = v43;
              v48 = 1024;
              v49 = v28;
              _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "mincore of 0x%llx,0x%zx of shared cache file %s failed: %{errno}d", buf, 0x26u);
            }

            *__error() = v20;
            munmap(v19, v17);
          }

          else
          {
            if (munmap(v19, v17))
            {
              v24 = *__error();
              v25 = _sa_logt();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v30 = *__error();
                *buf = 134218754;
                *v45 = v15;
                *&v45[8] = 2048;
                *&v45[10] = v17;
                v46 = 2080;
                v47 = v43;
                v48 = 1024;
                v49 = v30;
                _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "munmap of 0x%llx,0x%zx of shared cache file %s failed: %{errno}d", buf, 0x26u);
              }

              *__error() = v24;
            }

            v26 = v17 / *MEMORY[0x1E69E9AC8];
            if (*MEMORY[0x1E69E9AC8] <= v17)
            {
              v27 = 0;
              do
              {
                v14 += *(*(a1 + 48) + v27++) & 1;
              }

              while (v27 < v26);
            }

            v13 += v26;
          }
        }

        v15 += 0x8000000;
        st_size = v50.st_size;
      }

      while (v15 < v50.st_size);
    }

    close(v5);
    *(*(*(a1 + 32) + 8) + 24) += v14;
    *(*(*(a1 + 40) + 8) + 24) += v13;
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *v45 = v43;
      *&v45[8] = 2048;
      *&v45[10] = v14;
      v46 = 2048;
      v47 = v13;
      _os_log_debug_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_DEBUG, "shared cache file %s has %llu/%llu pages resident", buf, 0x20u);
    }

LABEL_34:

    result = __error();
    *result = v9;
    goto LABEL_35;
  }

  v6 = *__error();
  v7 = _sa_logt();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v32 = *__error();
    *buf = 136315394;
    *v45 = a2;
    *&v45[8] = 1024;
    *&v45[10] = v32;
    _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "failed to fstat shared cache file %s: %{errno}d", buf, 0x12u);
  }

  *__error() = v6;
  result = close(v5);
LABEL_35:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void __45__SASampleStore_gatherNonDefaultFeatureFlags__block_invoke()
{
  v38 = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v1 = qword_1EDD02F38;
    qword_1EDD02F38 = v0;

    v2 = [MEMORY[0x1E699C0B0] shared];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [v2 domains];
    v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v24)
    {
      v23 = *v33;
      do
      {
        v3 = 0;
        do
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = v3;
          v4 = *(*(&v32 + 1) + 8 * v3);
          context = objc_autoreleasePoolPush();
          v5 = [v2 featuresForDomain:v4];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v27 = v5;
          v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v29;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v29 != v8)
                {
                  objc_enumerationMutation(v27);
                }

                v10 = *(*(&v28 + 1) + 8 * i);
                v11 = [v2 stateForFeature:v10 domain:v4 level:4];
                if (v11)
                {
                  v12 = [v2 defaultStateForFeature:v10 domain:v4];
                  v13 = v12;
                  if (!v12 || (v14 = [v12 value], v14 != objc_msgSend(v11, "value")) || objc_msgSend(v11, "value") == 1 && is_apple_internal_setting() && (objc_msgSend(0, "objectForKeyedSubscript:", v4), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "containsObject:", v10), v15, v16))
                  {
                    if ([v11 value] == 1)
                    {
                      v17 = MEMORY[0x1E695E118];
                    }

                    else
                    {
                      v17 = MEMORY[0x1E695E110];
                    }

                    v18 = qword_1EDD02F38;
                    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", v4, v10];
                    [v18 setObject:v17 forKeyedSubscript:v19];
                  }
                }
              }

              v7 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v7);
          }

          objc_autoreleasePoolPop(context);
          v3 = v26 + 1;
        }

        while (v26 + 1 != v24);
        v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v24);
    }

    [v2 invalidateCache];
    if (![qword_1EDD02F38 count])
    {
      v20 = qword_1EDD02F38;
      qword_1EDD02F38 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

intptr_t __29__SASampleStore_gatherTrials__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v2 = getTRIAllocationStatusClass_softClass;
  v39 = getTRIAllocationStatusClass_softClass;
  if (!getTRIAllocationStatusClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v41 = __getTRIAllocationStatusClass_block_invoke;
    v42 = &unk_1E86F5F18;
    v43 = &v36;
    __getTRIAllocationStatusClass_block_invoke(&buf);
    v2 = v37[3];
  }

  v3 = v2;
  _Block_object_dispose(&v36, 8);
  if (objc_opt_class())
  {
    v4 = [v2 defaultProvider];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __29__SASampleStore_gatherTrials__block_invoke_2;
    v33[3] = &unk_1E86F5A98;
    v6 = v5;
    v34 = v6;
    v7 = [v4 enumerateActiveExperimentsForEnvironment:0 error:&v35 block:v33];
    v8 = v35;
    v9 = *__error();
    v10 = _sa_logt();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v6 count];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v12;
        _os_log_debug_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_DEBUG, "Found %lu active trial experiments", &buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "Unable to determine active trial experiments: %@", &buf, 0xCu);
    }

    *__error() = v9;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);

    v32 = 0;
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __29__SASampleStore_gatherTrials__block_invoke_549;
    v30 = &unk_1E86F5AE8;
    v14 = v13;
    v31 = v14;
    v15 = [v4 enumerateActiveRolloutsWithError:&v32 block:&v27];
    v16 = v32;
    v17 = *__error();
    v18 = _sa_logt();
    v19 = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = [v14 count];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v20;
        _os_log_debug_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_DEBUG, "Found %lu active trial rollouts", &buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "Unable to determine active trial rollouts: %@", &buf, 0xCu);
    }

    *__error() = v17;
    v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [v21 setObject:v6 forKeyedSubscript:0x1F5BC2440];
    [v21 setObject:v14 forKeyedSubscript:0x1F5BC2460];
    v23 = [v21 copy];
    v24 = *(a1 + 32);
    if (v24)
    {
      objc_setProperty_atomic(v24, v22, v23, 632);
    }
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void __29__SASampleStore_gatherTrials__block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [a2 experimentId];
  v6 = [v5 copy];
  [v4 setObject:v6 forKeyedSubscript:0x1F5BC2480];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "deploymentId")}];
  [v4 setObject:v7 forKeyedSubscript:0x1F5BC24A0];

  v8 = [a2 treatmentId];
  v9 = [v8 copy];
  [v4 setObject:v9 forKeyedSubscript:0x1F5BC24E0];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [a2 namespaces];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v16, "compatibilityVersion")}];
        v18 = [v16 name];
        [v10 setObject:v17 forKeyedSubscript:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v19 = [v10 copy];
  [v4 setObject:v19 forKeyedSubscript:0x1F5BC24C0];

  v20 = *(a1 + 32);
  v21 = [v4 copy];
  [v20 addObject:v21];

  v22 = *MEMORY[0x1E69E9840];
}

void __29__SASampleStore_gatherTrials__block_invoke_549(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [a2 rolloutId];
  v6 = [v5 copy];
  [v4 setObject:v6 forKeyedSubscript:0x1F5BC2500];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "deploymentId")}];
  [v4 setObject:v7 forKeyedSubscript:0x1F5BC24A0];

  v8 = [a2 rampId];
  v9 = [v8 copy];
  [v4 setObject:v9 forKeyedSubscript:0x1F5BC2520];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = [a2 factorPackIds];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __29__SASampleStore_gatherTrials__block_invoke_2_550;
  v16[3] = &unk_1E86F5AC0;
  v17 = v10;
  v12 = v10;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];

  v13 = [v12 copy];
  [v4 setObject:v13 forKeyedSubscript:0x1F5BC2540];

  v14 = *(a1 + 32);
  v15 = [v4 copy];
  [v14 addObject:v15];
}

- (void)addPowerModeTransition:(void *)a1
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    if (!a1[11])
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      v5 = v3[11];
      v3[11] = v4;
    }

    v6 = [a2 timestamp];
    [v6 wallTime];
    v8 = v7;

    v9 = v3[11];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __40__SASampleStore_addPowerModeTransition___block_invoke;
    v22[3] = &__block_descriptor_40_e31_q16__0__SAPowerModeTransition_8l;
    *&v22[4] = v8;
    v10 = SABinarySearchArray(v9, 1280, v22);
    if (v10 >= [v3[11] count])
    {
      goto LABEL_9;
    }

    v11 = [v3[11] objectAtIndexedSubscript:v10];
    v12 = [v11 timestamp];
    [v12 wallTime];
    v14 = v13;

    if (v14 == v8)
    {
      v15 = *__error();
      v16 = _sa_logt();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v19 = [v3[11] objectAtIndexedSubscript:v10];
        v20 = [v19 timestamp];
        v21 = [v20 debugDescription];
        *buf = 138543362;
        v24 = v21;
        _os_log_debug_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_DEBUG, "Already have a power mode transition at %{public}@", buf, 0xCu);
      }

      *__error() = v15;
      a1 = [v3[11] objectAtIndexedSubscript:v10];
    }

    else
    {
LABEL_9:
      [v3[11] insertObject:a2 atIndex:v10];
      a1 = a2;
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return a1;
}

uint64_t __40__SASampleStore_addPowerModeTransition___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 timestamp];
  [v3 wallTime];
  v5 = v4;

  v6 = *(a1 + 32);
  if (v5 <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t __30__SASampleStore_gatherGPUInfo__block_invoke(uint64_t a1)
{
  Group = IOReportChannelGetGroup();
  if (IOReportChannelGetFormat() == 1 && CFStringCompare(Group, @"Internal Statistics", 0) == kCFCompareEqualTo)
  {
    ChannelName = IOReportChannelGetChannelName();
    if (CFEqual(ChannelName, @"GPU Restart Count"))
    {
      v4 = 40;
      v5 = 32;
LABEL_7:
      *(*(*(a1 + v5) + 8) + 24) = IOReportSimpleGetIntegerValue();
      *(*(*(a1 + v4) + 8) + 24) = 1;
      goto LABEL_8;
    }

    if (CFEqual(ChannelName, @"Last GPU Restart"))
    {
      v4 = 56;
      v5 = 48;
      goto LABEL_7;
    }
  }

LABEL_8:
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && (*(*(*(a1 + 56) + 8) + 24) & 1) != 0)
  {
    return 273;
  }

  else
  {
    return 0;
  }
}

void __42__SASampleStore_gatherUnknownProcessNames__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 threads];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__SASampleStore_gatherUnknownProcessNames__block_invoke_2;
  v4[3] = &unk_1E86F5B80;
  v5 = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __42__SASampleStore_gatherUnknownProcessNames__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [a3 threadStates];
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __42__SASampleStore_gatherUnknownProcessNames__block_invoke_3;
        v12[3] = &unk_1E86F5B58;
        v13 = *(a1 + 32);
        v9 = MEMORY[0x1E12EBE50](v12);
        v9[2](v9, [v8 originPid]);
        v9[2](v9, [v8 proximatePid]);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __42__SASampleStore_gatherUnknownProcessNames__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 != -1)
  {
    v4 = [*(a1 + 32) tasksByPid];
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = [v6 count];

    if (!v7)
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      if (qword_1EDD02F40 != -1)
      {
        dispatch_once(&qword_1EDD02F40, &__block_literal_global_574);
      }

      if ((_MergedGlobals_3 & 1) == 0)
      {
        proc_name(a2, v12, 0x21u);
        if (LOBYTE(v12[0]))
        {
          v8 = SANSStringForCString(v12);
          v9 = *(*(*(a1 + 40) + 8) + 40);
          v10 = [MEMORY[0x1E696AD98] numberWithInt:a2];
          [v9 setObject:v8 forKeyedSubscript:v10];
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __52__SASampleStore_gatherUnknownResourceCoalitionNames__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [a2 resourceCoalitionID];
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = v4;
  v6 = [a2 resourceCoalitionName];
  if (!v6)
  {
    if (![(SATask *)a2 isFromCurrentBootCycle])
    {
LABEL_28:
      v27 = *MEMORY[0x1E69E9840];
      return;
    }

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      if (a2)
      {
        objc_setProperty_atomic(a2, v11, v10, 152);
      }

      goto LABEL_27;
    }

    v12 = xpc_coalition_copy_info();
    v13 = v12;
    if (!v12)
    {
      v19 = *__error();
      v20 = _sa_logt();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v28 = [a2 name];
        *v29 = 134218498;
        *&v29[4] = v5;
        *&v29[12] = 2112;
        *&v29[14] = v28;
        *&v29[22] = 1024;
        v30 = [a2 pid];
        _os_log_debug_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_DEBUG, "No info for rcid %llu (used by %@ [%d])", v29, 0x1Cu);
      }

      *__error() = v19;
      goto LABEL_26;
    }

    string = xpc_dictionary_get_string(v12, *MEMORY[0x1E69E9DF8]);
    if (string)
    {
      v15 = string;
      v16 = *__error();
      v17 = _sa_logt();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      *v29 = 134218242;
      *&v29[4] = v5;
      *&v29[12] = 2080;
      *&v29[14] = v15;
      v18 = "RCID %llu has bundleid:%s";
    }

    else
    {
      v15 = xpc_dictionary_get_string(v13, *MEMORY[0x1E69E9E00]);
      v16 = *__error();
      v17 = _sa_logt();
      v21 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      if (!v15)
      {
        if (v21)
        {
          *v29 = 134217984;
          *&v29[4] = v5;
          _os_log_debug_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_DEBUG, "RCID %llu has no bundleid/name", v29, 0xCu);
        }

        *__error() = v16;
        goto LABEL_26;
      }

      if (!v21)
      {
LABEL_19:

        *__error() = v16;
        v22 = SANSStringForCString(v15);
        if (v22)
        {
          v24 = v22;
          if (a2)
          {
            objc_setProperty_atomic(a2, v23, v22, 152);
          }

          v25 = *(a1 + 32);
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{v5, *v29, *&v29[16]}];
          [v25 setObject:v24 forKeyedSubscript:v26];
        }

LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      *v29 = 134218242;
      *&v29[4] = v5;
      *&v29[12] = 2080;
      *&v29[14] = v15;
      v18 = "RCID %llu has name:%s";
    }

    _os_log_debug_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_DEBUG, v18, v29, 0x16u);
    goto LABEL_19;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __43__SASampleStore_gatherOSCryptexFileExtents__block_invoke()
{
  v43 = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    v0 = [MEMORY[0x1E69AD9A0] sharedDataAccessor];
    v34 = 0;
    v1 = [v0 copyPathForPersonalizedData:11 error:&v34];
    v2 = v34;

    if (v1)
    {
      v3 = [v1 fileSystemRepresentation];
      if (!v3)
      {
        v14 = *__error();
        v15 = _sa_logt();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v42.st_dev = 138412290;
          *&v42.st_mode = v1;
          _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "Unable to get fileSystemRepresentation for cryptex path %@", &v42, 0xCu);
        }

        *__error() = v14;
        goto LABEL_23;
      }

      v4 = v3;
      v5 = open(v3, 0, 0);
      if (v5 < 0)
      {
        v16 = *__error();
        v17 = _sa_logt();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v33 = *__error();
          v42.st_dev = 136315394;
          *&v42.st_mode = v4;
          WORD2(v42.st_ino) = 1024;
          *(&v42.st_ino + 6) = v33;
          _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "FileExtent: error opening %s: %{errno}d", &v42, 0x12u);
        }

        v18 = __error();
        v11 = 0;
        *v18 = v16;
        goto LABEL_20;
      }

      v6 = v5;
      memset(&v42, 0, sizeof(v42));
      if (fstat(v5, &v42))
      {
        v7 = *__error();
        v8 = _sa_logt();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v32 = *__error();
        *buf = 136315394;
        v39 = v4;
        v40 = 1024;
        LODWORD(v41) = v32;
        v24 = "FileExtent: failed to get file size for %s: %{errno}d";
        v25 = v8;
        v26 = 18;
      }

      else
      {
        st_size = v42.st_size;
        if (v42.st_size)
        {
          if (v42.st_size < 1)
          {
            v10 = 0;
            goto LABEL_9;
          }

          v10 = 0;
          v23 = 0;
          while (1)
          {
            v35 = 0;
            v36 = st_size - v23;
            v37 = v23;
            if (fcntl(v6, 65, &v35))
            {
              v7 = *__error();
              v27 = _sa_logt();
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_38;
              }

              v28 = *__error();
              *buf = 67109120;
              LODWORD(v39) = v28;
              v29 = "FileExtent: error in fcntl(): %{errno}d";
              v30 = v27;
              v31 = 8;
              goto LABEL_42;
            }

            if (!v36)
            {
              break;
            }

            v23 += v36;
            ++v10;
            if (v23 >= st_size)
            {
              goto LABEL_9;
            }
          }

          v7 = *__error();
          v27 = _sa_logt();
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          *buf = 134218240;
          v39 = v23;
          v40 = 2048;
          v41 = st_size;
          v29 = "FileExtent: 0 contigbytes fcntl() at offset %lld out of %lld";
          v30 = v27;
          v31 = 22;
LABEL_42:
          _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
LABEL_38:

          v9 = __error();
LABEL_8:
          *v9 = v7;
LABEL_9:
          close(v6);
          v11 = v10;
LABEL_20:
          qword_1EDD02F50 = v11;
          v19 = *__error();
          v20 = _sa_logt();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v42.st_dev = 67109378;
            *&v42.st_mode = qword_1EDD02F50;
            LOWORD(v42.st_ino) = 2080;
            *(&v42.st_ino + 2) = v4;
            _os_log_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_INFO, "Shared cache fragmentation OS Cryptex File Extents count is %d for file: (%s)", &v42, 0x12u);
          }

          *__error() = v19;
LABEL_23:

          goto LABEL_24;
        }

        v7 = *__error();
        v8 = _sa_logt();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
LABEL_7:

          v9 = __error();
          v10 = 0;
          goto LABEL_8;
        }

        *buf = 136315138;
        v39 = v4;
        v24 = "FileExtent: no extents for %s (empty file)\n";
        v25 = v8;
        v26 = 12;
      }

      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      goto LABEL_7;
    }
  }

  else
  {
    v2 = 0;
  }

  v12 = *__error();
  v13 = _sa_logt();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v42.st_dev = 138412290;
    *&v42.st_mode = v2;
    _os_log_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_INFO, "Unable to get path for MSUDA_CRYPTEX1_OS_CRYPTEX: (%@)", &v42, 0xCu);
  }

  *__error() = v12;
LABEL_24:

  v21 = *MEMORY[0x1E69E9840];
}

id __40__SASampleStore_gatherRootInstalledInfo__block_invoke()
{
  *buf = 0;
  v23 = buf;
  v24 = 0x2050000000;
  v0 = qword_1EDD02F80;
  v25 = qword_1EDD02F80;
  if (!qword_1EDD02F80)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getDUSessionClass_block_invoke;
    v19 = &unk_1E86F5F18;
    v20 = buf;
    __getDUSessionClass_block_invoke(&v16);
    v0 = *(v23 + 3);
  }

  v1 = v0;
  _Block_object_dispose(buf, 8);
  *buf = 0;
  v23 = buf;
  v24 = 0x2050000000;
  v2 = qword_1EDD02F88;
  v25 = qword_1EDD02F88;
  if (!qword_1EDD02F88)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getDURootClass_block_invoke;
    v19 = &unk_1E86F5F18;
    v20 = buf;
    __getDURootClass_block_invoke(&v16);
    v2 = *(v23 + 3);
  }

  v3 = v2;
  _Block_object_dispose(buf, 8);
  if (objc_opt_class() && objc_opt_class())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    v4 = dispatch_semaphore_create(0);
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__SASampleStore_gatherRootInstalledInfo__block_invoke_2;
    block[3] = &unk_1E86F5C18;
    v14 = &v16;
    v15 = v0;
    v6 = v4;
    v13 = v6;
    dispatch_async(v5, block);

    v7 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v6, v7))
    {
      v8 = *__error();
      v9 = _sa_logt();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "Timed out waiting for darwinup", buf, 2u);
      }

      v10 = 0;
      *__error() = v8;
    }

    else
    {
      v10 = *(v17 + 40);
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __40__SASampleStore_gatherRootInstalledInfo__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(*(a1 + 48));
  v27 = 0;
  v3 = [v2 openAndReturnError:&v27];
  v4 = v27;
  v5 = v4;
  if (v3)
  {
    v26 = v4;
    v6 = [v2 allInstalledRootsAndReturnError:&v26];
    v7 = v26;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    if (v6)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        do
        {
          v13 = 0;
          do
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v22 + 1) + 8 * v13) name];
            [v8 addObject:v14];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v11);
      }
    }

    v15 = [v2 closeAndReturnError:{0, v22}];
    v16 = [v8 array];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v5 = v7;
  }

  else
  {
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "Error opening Darwinup session: %@", buf, 0xCu);
    }

    *__error() = v19;
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v21 = *MEMORY[0x1E69E9840];
}

void __40__SASampleStore_gatherRootInstalledInfo__block_invoke_631(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&v13, 0, 512);
  if (statfs("/", &v13))
  {
    v2 = *__error();
    v3 = _sa_logt();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v12[0] = 67109120;
      v12[1] = v11;
      _os_log_error_impl(&dword_1E0E2F000, v3, OS_LOG_TYPE_ERROR, "Unable to check for live filesystem, assuming not %{errno}d", v12, 8u);
    }

    *__error() = v2;
  }

  else
  {
    f_flags = v13.f_flags;
    v5 = *__error();
    v6 = _sa_logt();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if ((f_flags & 0x40000000) != 0)
    {
      if (v7)
      {
        LOWORD(v12[0]) = 0;
        _os_log_debug_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_DEBUG, "Booted from a snapshot, checking for roots installed once", v12, 2u);
      }

      *__error() = v5;
      v8 = (*(*(a1 + 32) + 16))();
      v9 = qword_1EDD02F58;
      qword_1EDD02F58 = v8;
    }

    else
    {
      if (v7)
      {
        LOWORD(v12[0]) = 0;
        _os_log_debug_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_DEBUG, "Booted from a live filesystem, may check for roots installed multiple times", v12, 2u);
      }

      *__error() = v5;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

intptr_t __32__SASampleStore_gatherModelInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v7 = _sa_logt();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v53 = [a2 count];
      _os_log_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_INFO, "Got information on %lu models", buf, 0xCu);
    }

    *__error() = v6;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = a2;
    v9 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v36 = *v46;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v45 + 1) + 8 * i);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v13 = [v12 loadedChanges];
          v14 = [v13 countByEnumeratingWithState:&v41 objects:v50 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v42;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v42 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v41 + 1) + 8 * j);
                v19 = [v18 timestamp];
                -[SATimestamp applyMachTimebase:](v19, [*(a1 + 32) machTimebase]);

                v20 = [v18 endTime];
                -[SATimestamp applyMachTimebase:](v20, [*(a1 + 32) machTimebase]);
              }

              v15 = [v13 countByEnumeratingWithState:&v41 objects:v50 count:16];
            }

            while (v15);
          }

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v21 = [v12 executions];
          v22 = [v21 countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v38;
            do
            {
              for (k = 0; k != v23; ++k)
              {
                if (*v38 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v37 + 1) + 8 * k);
                v27 = [v26 startTime];
                -[SATimestamp applyMachTimebase:](v27, [*(a1 + 32) machTimebase]);

                v28 = [v26 endTime];
                -[SATimestamp applyMachTimebase:](v28, [*(a1 + 32) machTimebase]);
              }

              v23 = [v21 countByEnumeratingWithState:&v37 objects:v49 count:16];
            }

            while (v23);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v10);
    }

    v29 = [obj copy];
    v30 = *(a1 + 32);
    v31 = *(v30 + 640);
    *(v30 + 640) = v29;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v34 = [a3 debugDescription];
      *buf = 138412290;
      v53 = v34;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "Unable to get model information: %@", buf, 0xCu);
    }

    *__error() = v6;
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)isAnyPowerMitigationEnabledAtTailspinCapture
{
  if (result)
  {
    v1 = result;
    if ([*(result + 1176) isEqualToString:@"Low"] & 1) != 0 || (objc_msgSend(*(v1 + 1176), "isEqualToString:", @"Medium") & 1) != 0 || (objc_msgSend(*(v1 + 1176), "isEqualToString:", @"High"))
    {
      return 1;
    }

    else
    {
      v2 = *(v1 + 1176);

      return [v2 isEqualToString:@"Extreme"];
    }
  }

  return result;
}

void __38__SASampleStore_iterateAllTimestamps___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [a2 execTimestamp];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [a2 execTimestamp];
    (*(v5 + 16))(v5, v6);
  }

  v7 = [a2 exitTimestamp];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [a2 exitTimestamp];
    (*(v8 + 16))(v8, v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [a2 taskStates];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = *(a1 + 32);
        v17 = [v15 startTimestamp];
        (*(v16 + 16))(v16, v17);

        v18 = *(a1 + 32);
        v19 = [v15 endTimestamp];
        (*(v18 + 16))(v18, v19);
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v20 = [a2 threads];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __38__SASampleStore_iterateAllTimestamps___block_invoke_2;
  v22[3] = &unk_1E86F5C90;
  v22[4] = *(a1 + 32);
  [v20 enumerateKeysAndObjectsUsingBlock:v22];

  v21 = *MEMORY[0x1E69E9840];
}

void __38__SASampleStore_iterateAllTimestamps___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [a3 creationTimestamp];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [a3 creationTimestamp];
    (*(v6 + 16))(v6, v7);
  }

  v8 = [a3 exitTimestamp];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [a3 exitTimestamp];
    (*(v9 + 16))(v9, v10);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [a3 threadStates];
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = *(a1 + 32);
        v18 = [v16 startTimestamp];
        (*(v17 + 16))(v17, v18);

        v19 = *(a1 + 32);
        v20 = [v16 endTimestamp];
        (*(v19 + 16))(v19, v20);

        v21 = [v16 timestampLastRan];

        if (v21)
        {
          v22 = *(a1 + 32);
          v23 = [v16 timestampLastRan];
          (*(v22 + 16))(v22, v23);
        }

        v24 = [v16 timestampLastMadeRunnable];

        if (v24)
        {
          v25 = *(a1 + 32);
          v26 = [v16 timestampLastMadeRunnable];
          (*(v25 + 16))(v25, v26);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)callTreeForTask:(id)a3 options:(id)a4
{
  v6 = [[SASamplePrinter alloc] initWithSampleStore:self];
  [(SASamplePrinter *)v6 setOptions:a4];
  v7 = [(SASamplePrinter *)v6 callTreeForTask:a3];

  return v7;
}

- (id)callTreesForThreadsInTask:(id)a3 options:(id)a4
{
  v6 = [[SASamplePrinter alloc] initWithSampleStore:self];
  [(SASamplePrinter *)v6 setOptions:a4];
  v7 = [(SASamplePrinter *)v6 callTreesForThreadsInTask:a3];

  return v7;
}

- (id)callTreeForThread:(id)a3 inTask:(id)a4 options:(id)a5
{
  v8 = [[SASamplePrinter alloc] initWithSampleStore:self];
  [(SASamplePrinter *)v8 setOptions:a5];
  v9 = [(SASamplePrinter *)v8 callTreeForThread:a3 inTask:a4];

  return v9;
}

- (id)callTreeForDispatchQueue:(id)a3 andThread:(id)a4 inTask:(id)a5 options:(id)a6
{
  v10 = [[SASamplePrinter alloc] initWithSampleStore:self];
  [(SASamplePrinter *)v10 setOptions:a6];
  v11 = [(SASamplePrinter *)v10 callTreeForDispatchQueue:a3 andThread:a4 inTask:a5];

  return v11;
}

- (id)callTreeForSwiftTask:(id)a3 thread:(id)a4 inTask:(id)a5 options:(id)a6
{
  v10 = [[SASamplePrinter alloc] initWithSampleStore:self];
  [(SASamplePrinter *)v10 setOptions:a6];
  v11 = [(SASamplePrinter *)v10 callTreeForSwiftTask:a3 thread:a4 inTask:a5];

  return v11;
}

- (id)callTreeForDispatchQueue:(id)a3 swiftTask:(id)a4 thread:(id)a5 inTask:(id)a6 options:(id)a7
{
  v12 = [[SASamplePrinter alloc] initWithSampleStore:self];
  [(SASamplePrinter *)v12 setOptions:a7];
  v13 = [(SASamplePrinter *)v12 callTreeForDispatchQueue:a3 swiftTask:a4 thread:a5 inTask:a6];

  return v13;
}

- (id)callTreeForExecutable:(id)a3 options:(id)a4
{
  v6 = [[SASamplePrinter alloc] initWithSampleStore:self];
  [(SASamplePrinter *)v6 setOptions:a4];
  v7 = [(SASamplePrinter *)v6 callTreeForExecutable:a3];

  return v7;
}

- (NSString)targetProcessAbsolutePath
{
  v2 = [(SATask *)self->_targetProcess mainBinaryPath];
  if ([v2 isAbsolutePath])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v255 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    [(SASampleStore *)self symbolicate];
    objc_autoreleasePoolPop(v5);
    v6 = objc_autoreleasePoolPush();
    [a3 encodeInteger:46 forKey:@"_PASampleTimeSeriesDataStore_Serialized_Version"];
    [a3 encodeInteger:46 forKey:@"_SASampleStore_Serialized_Version"];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *buf = 0;
    v236 = buf;
    v237 = 0x2020000000;
    v238 = 0;
    v234[0] = MEMORY[0x1E69E9820];
    v234[1] = 3221225472;
    v234[2] = __56__SASampleStore_SASampleStoreNSCoding__encodeWithCoder___block_invoke;
    v234[3] = &unk_1E86F5CE0;
    v234[4] = buf;
    [(SASampleStore *)self enumerateTasks:v234];
    v8 = *(v236 + 3);
    if (v8)
    {
      v9 = 8 * v8;
      v10 = malloc_type_malloc(8 * v8, 0x386C4221uLL);
      v233[0] = 0;
      v233[1] = v233;
      v233[2] = 0x2020000000;
      v233[3] = 0;
      v229[0] = MEMORY[0x1E69E9820];
      v229[1] = 3221225472;
      v229[2] = __56__SASampleStore_SASampleStoreNSCoding__encodeWithCoder___block_invoke_2;
      v229[3] = &unk_1E86F55D8;
      v232 = v10;
      v230 = v7;
      v231 = v233;
      [(SASampleStore *)self enumerateTasks:v229];
      [a3 encodeBytes:v10 length:v9 forKey:@"_tasks"];
      free(v10);

      _Block_object_dispose(v233, 8);
    }

    fanSpeeds = self->_fanSpeeds;
    if (fanSpeeds)
    {
      v12 = [(NSMutableArray *)fanSpeeds count];
      v227 = 0u;
      v228 = 0u;
      v225 = 0u;
      v226 = 0u;
      v13 = self->_fanSpeeds;
      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v225 objects:v254 count:16];
      if (v14)
      {
        v15 = *v226;
        do
        {
          v16 = 0;
          do
          {
            if (*v226 != v15)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v225 + 1) + 8 * v16++) addSelfToSerializationDictionary:v7];
          }

          while (v14 != v16);
          v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v225 objects:v254 count:16];
        }

        while (v14);
      }

      v17 = malloc_type_malloc(8 * v12, 0xB4AE801uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v17, v12, self->_fanSpeeds, v7);
      [a3 encodeBytes:v17 length:8 * v12 forKey:@"_fanSpeeds"];
      free(v17);
    }

    powerModeTransitions = self->_powerModeTransitions;
    if (powerModeTransitions)
    {
      v19 = [(NSMutableArray *)powerModeTransitions count];
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v20 = self->_powerModeTransitions;
      v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v221 objects:v253 count:16];
      if (v21)
      {
        v22 = *v222;
        do
        {
          v23 = 0;
          do
          {
            if (*v222 != v22)
            {
              objc_enumerationMutation(v20);
            }

            [*(*(&v221 + 1) + 8 * v23++) addSelfToSerializationDictionary:v7];
          }

          while (v21 != v23);
          v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v221 objects:v253 count:16];
        }

        while (v21);
      }

      v24 = malloc_type_malloc(8 * v19, 0x55B81CFuLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v24, v19, self->_powerModeTransitions, v7);
      [a3 encodeBytes:v24 length:8 * v19 forKey:@"_powerModeTransitions"];
      free(v24);
    }

    hidEvents = self->_hidEvents;
    if (hidEvents)
    {
      v26 = [(NSMutableArray *)hidEvents count];
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      v27 = self->_hidEvents;
      v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v217 objects:v252 count:16];
      if (v28)
      {
        v29 = *v218;
        do
        {
          v30 = 0;
          do
          {
            if (*v218 != v29)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v217 + 1) + 8 * v30++) addSelfToSerializationDictionary:v7];
          }

          while (v28 != v30);
          v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v217 objects:v252 count:16];
        }

        while (v28);
      }

      v31 = malloc_type_malloc(8 * v26, 0x1B00DB65uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v31, v26, self->_hidEvents, v7);
      [a3 encodeBytes:v31 length:8 * v26 forKey:@"_hidEvents"];
      free(v31);
    }

    gestures = self->_gestures;
    if (gestures)
    {
      v33 = [(NSMutableArray *)gestures count];
      v215 = 0u;
      v216 = 0u;
      v213 = 0u;
      v214 = 0u;
      v34 = self->_gestures;
      v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v213 objects:v251 count:16];
      if (v35)
      {
        v36 = *v214;
        do
        {
          v37 = 0;
          do
          {
            if (*v214 != v36)
            {
              objc_enumerationMutation(v34);
            }

            [*(*(&v213 + 1) + 8 * v37++) addSelfToSerializationDictionary:v7];
          }

          while (v35 != v37);
          v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v213 objects:v251 count:16];
        }

        while (v35);
      }

      v38 = malloc_type_malloc(8 * v33, 0x1C9EDBE8uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v38, v33, self->_gestures, v7);
      [a3 encodeBytes:v38 length:8 * v33 forKey:@"_gestures"];
      free(v38);
    }

    ioEvents = self->_ioEvents;
    if (ioEvents)
    {
      v40 = [(NSMutableArray *)ioEvents count];
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      v41 = self->_ioEvents;
      v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v209 objects:v250 count:16];
      if (v42)
      {
        v43 = *v210;
        do
        {
          v44 = 0;
          do
          {
            if (*v210 != v43)
            {
              objc_enumerationMutation(v41);
            }

            [*(*(&v209 + 1) + 8 * v44++) addSelfToSerializationDictionary:v7];
          }

          while (v42 != v44);
          v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v209 objects:v250 count:16];
        }

        while (v42);
      }

      v45 = malloc_type_malloc(8 * v40, 0xE72EDAD2uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v45, v40, self->_ioEvents, v7);
      [a3 encodeBytes:v45 length:8 * v40 forKey:@"_ioEvents"];
      free(v45);
    }

    nandGarbageCollectionEvents = self->_nandGarbageCollectionEvents;
    if (nandGarbageCollectionEvents)
    {
      v47 = [(NSMutableArray *)nandGarbageCollectionEvents count];
      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      v48 = self->_nandGarbageCollectionEvents;
      v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v205 objects:v249 count:16];
      if (v49)
      {
        v50 = *v206;
        do
        {
          v51 = 0;
          do
          {
            if (*v206 != v50)
            {
              objc_enumerationMutation(v48);
            }

            [*(*(&v205 + 1) + 8 * v51++) addSelfToSerializationDictionary:v7];
          }

          while (v49 != v51);
          v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v205 objects:v249 count:16];
        }

        while (v49);
      }

      v52 = malloc_type_malloc(8 * v47, 0x58247620uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v52, v47, self->_nandGarbageCollectionEvents, v7);
      [a3 encodeBytes:v52 length:8 * v47 forKey:@"_nandGarbageCollectionEvents"];
      free(v52);
    }

    memoryPressureEvents = self->_memoryPressureEvents;
    if (memoryPressureEvents)
    {
      v54 = [(NSMutableArray *)memoryPressureEvents count];
      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      v55 = self->_memoryPressureEvents;
      v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v201 objects:v248 count:16];
      if (v56)
      {
        v57 = *v202;
        do
        {
          v58 = 0;
          do
          {
            if (*v202 != v57)
            {
              objc_enumerationMutation(v55);
            }

            [*(*(&v201 + 1) + 8 * v58++) addSelfToSerializationDictionary:v7];
          }

          while (v56 != v58);
          v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v201 objects:v248 count:16];
        }

        while (v56);
      }

      v59 = malloc_type_malloc(8 * v54, 0x44419DDFuLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v59, v54, self->_memoryPressureEvents, v7);
      [a3 encodeBytes:v59 length:8 * v54 forKey:@"_memoryPressureEvents"];
      free(v59);
    }

    lostPerfEvents = self->_lostPerfEvents;
    if (lostPerfEvents)
    {
      v61 = [(NSMutableArray *)lostPerfEvents count];
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v62 = self->_lostPerfEvents;
      v63 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v197 objects:v247 count:16];
      if (v63)
      {
        v64 = *v198;
        do
        {
          v65 = 0;
          do
          {
            if (*v198 != v64)
            {
              objc_enumerationMutation(v62);
            }

            [*(*(&v197 + 1) + 8 * v65++) addSelfToSerializationDictionary:v7];
          }

          while (v63 != v65);
          v63 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v197 objects:v247 count:16];
        }

        while (v63);
      }

      v66 = malloc_type_malloc(8 * v61, 0x894B8D70uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v66, v61, self->_lostPerfEvents, v7);
      [a3 encodeBytes:v66 length:8 * v61 forKey:@"_lostPerfEvents"];
      free(v66);
    }

    sharedCaches = self->_sharedCaches;
    if (sharedCaches)
    {
      v68 = [(NSMutableArray *)sharedCaches count];
      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      v69 = self->_sharedCaches;
      v70 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v193 objects:v246 count:16];
      if (v70)
      {
        v71 = *v194;
        do
        {
          v72 = 0;
          do
          {
            if (*v194 != v71)
            {
              objc_enumerationMutation(v69);
            }

            [*(*(&v193 + 1) + 8 * v72++) addSelfToSerializationDictionary:v7];
          }

          while (v70 != v72);
          v70 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v193 objects:v246 count:16];
        }

        while (v70);
      }

      v73 = malloc_type_malloc(8 * v68, 0xDB2E6454uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v73, v68, self->_sharedCaches, v7);
      [a3 encodeBytes:v73 length:8 * v68 forKey:@"_sharedCaches"];
      free(v73);
    }

    kernelCaches = self->_kernelCaches;
    if (kernelCaches)
    {
      v75 = [(NSMutableArray *)kernelCaches count];
      v191 = 0u;
      v192 = 0u;
      v189 = 0u;
      v190 = 0u;
      v76 = self->_kernelCaches;
      v77 = [(NSMutableArray *)v76 countByEnumeratingWithState:&v189 objects:v245 count:16];
      if (v77)
      {
        v78 = *v190;
        do
        {
          v79 = 0;
          do
          {
            if (*v190 != v78)
            {
              objc_enumerationMutation(v76);
            }

            [*(*(&v189 + 1) + 8 * v79++) addSelfToSerializationDictionary:v7];
          }

          while (v77 != v79);
          v77 = [(NSMutableArray *)v76 countByEnumeratingWithState:&v189 objects:v245 count:16];
        }

        while (v77);
      }

      v80 = malloc_type_malloc(8 * v75, 0x79879198uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v80, v75, self->_kernelCaches, v7);
      [a3 encodeBytes:v80 length:8 * v75 forKey:@"_kernelCaches"];
      free(v80);
    }

    exclaves = self->_exclaves;
    if (exclaves)
    {
      v82 = [(NSMutableArray *)exclaves count];
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v83 = self->_exclaves;
      v84 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v185 objects:v244 count:16];
      if (v84)
      {
        v85 = *v186;
        do
        {
          v86 = 0;
          do
          {
            if (*v186 != v85)
            {
              objc_enumerationMutation(v83);
            }

            [*(*(&v185 + 1) + 8 * v86++) addSelfToSerializationDictionary:v7];
          }

          while (v84 != v86);
          v84 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v185 objects:v244 count:16];
        }

        while (v84);
      }

      v87 = malloc_type_malloc(8 * v82, 0x2C563834uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v87, v82, self->_exclaves, v7);
      [a3 encodeBytes:v87 length:8 * v82 forKey:@"_exclaves"];
      free(v87);
    }

    kperfTriggers = self->_kperfTriggers;
    if (kperfTriggers)
    {
      v89 = [(NSArray *)kperfTriggers count];
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v90 = self->_kperfTriggers;
      v91 = [(NSArray *)v90 countByEnumeratingWithState:&v181 objects:v243 count:16];
      if (v91)
      {
        v92 = *v182;
        do
        {
          v93 = 0;
          do
          {
            if (*v182 != v92)
            {
              objc_enumerationMutation(v90);
            }

            [*(*(&v181 + 1) + 8 * v93++) addSelfToSerializationDictionary:v7];
          }

          while (v91 != v93);
          v91 = [(NSArray *)v90 countByEnumeratingWithState:&v181 objects:v243 count:16];
        }

        while (v91);
      }

      v94 = malloc_type_malloc(8 * v89, 0x9B831A88uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v94, v89, self->_kperfTriggers, v7);
      [a3 encodeBytes:v94 length:8 * v89 forKey:@"_kperfTriggers"];
      free(v94);
    }

    models = self->_models;
    if (models)
    {
      v96 = [(NSArray *)models count];
      v179 = 0u;
      v180 = 0u;
      v177 = 0u;
      v178 = 0u;
      v97 = self->_models;
      v98 = [(NSArray *)v97 countByEnumeratingWithState:&v177 objects:v242 count:16];
      if (v98)
      {
        v99 = *v178;
        do
        {
          v100 = 0;
          do
          {
            if (*v178 != v99)
            {
              objc_enumerationMutation(v97);
            }

            [*(*(&v177 + 1) + 8 * v100++) addSelfToSerializationDictionary:v7];
          }

          while (v98 != v100);
          v98 = [(NSArray *)v97 countByEnumeratingWithState:&v177 objects:v242 count:16];
        }

        while (v98);
      }

      v101 = malloc_type_malloc(8 * v96, 0x6440EFDBuLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v101, v96, self->_models, v7);
      [a3 encodeBytes:v101 length:8 * v96 forKey:@"_models"];
      free(v101);
    }

    bootCycles = self->_bootCycles;
    if (bootCycles)
    {
      v103 = [(NSMutableArray *)bootCycles count];
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v104 = self->_bootCycles;
      v105 = [(NSMutableArray *)v104 countByEnumeratingWithState:&v173 objects:v241 count:16];
      if (v105)
      {
        v106 = *v174;
        do
        {
          v107 = 0;
          do
          {
            if (*v174 != v106)
            {
              objc_enumerationMutation(v104);
            }

            [*(*(&v173 + 1) + 8 * v107++) addSelfToSerializationDictionary:v7];
          }

          while (v105 != v107);
          v105 = [(NSMutableArray *)v104 countByEnumeratingWithState:&v173 objects:v241 count:16];
        }

        while (v105);
      }

      v108 = malloc_type_malloc(8 * v103, 0xCFCDED65uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v108, v103, self->_bootCycles, v7);
      [a3 encodeBytes:v108 length:8 * v103 forKey:@"_bootCycles"];
      free(v108);
    }

    v109 = self->_mountStatusTracker;
    v110 = v109;
    if (v109)
    {
      [(SAMountStatusTracker *)v109 addSelfToSerializationDictionary:v7];
      [a3 encodeInt64:SASerializableIndexForPointerFromSerializationDictionary(v110 forKey:{v7), @"_mountStatusTracker"}];
    }

    v111 = self->_wsDataStore;
    v112 = v111;
    if (v111)
    {
      [(SAWSUpdateDataStore *)v111 addSelfToSerializationDictionary:v7];
      [a3 encodeInt64:SASerializableIndexForPointerFromSerializationDictionary(v112 forKey:{v7), @"_wsDataStore"}];
    }

    v113 = self->_timeWhenTransitionedToSamplingAllProcesses;
    v114 = v113;
    if (v113)
    {
      [(SATimestamp *)v113 addSelfToSerializationDictionary:v7];
      [a3 encodeInt64:SASerializableIndexForPointerFromSerializationDictionary(v114 forKey:{v7), @"_timeWhenTransitionedToSamplingAllProcesses"}];
    }

    v115 = self->_timeWhenTransitionedToSamplingAllThreads;
    v116 = v115;
    if (v115)
    {
      [(SATimestamp *)v115 addSelfToSerializationDictionary:v7];
      [a3 encodeInt64:SASerializableIndexForPointerFromSerializationDictionary(v116 forKey:{v7), @"_timeWhenTransitionedToSamplingAllThreads"}];
    }

    v117 = self->_cpuSignalHandlerStackLeafKernelFrame;
    v118 = v117;
    if (v117)
    {
      [(SAFrame *)v117 addSelfToSerializationDictionary:v7];
      [a3 encodeInt64:SASerializableIndexForPointerFromSerializationDictionary(v118 forKey:{v7), @"_cpuSignalHandlerStackLeafKernelFrame"}];
    }

    v119 = self->_eventTimeRange;
    v120 = v119;
    if (v119)
    {
      [(SATimeRange *)v119 addSelfToSerializationDictionary:v7];
      [a3 encodeInt64:SASerializableIndexForPointerFromSerializationDictionary(v120 forKey:{v7), @"_eventTimeRange"}];
    }

    v121 = self->_timestampOfLastStackshot;
    v122 = v121;
    if (v121)
    {
      [(SATimestamp *)v121 addSelfToSerializationDictionary:v7];
      [a3 encodeInt64:SASerializableIndexForPointerFromSerializationDictionary(v122 forKey:{v7), @"_timestampOfLastStackshot"}];
    }

    sampleTimestamps = self->_sampleTimestamps;
    if (sampleTimestamps)
    {
      v124 = [(NSMutableArray *)sampleTimestamps count];
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v125 = self->_sampleTimestamps;
      v126 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v169 objects:v240 count:16];
      if (v126)
      {
        v127 = *v170;
        do
        {
          v128 = 0;
          do
          {
            if (*v170 != v127)
            {
              objc_enumerationMutation(v125);
            }

            [*(*(&v169 + 1) + 8 * v128++) addSelfToSerializationDictionary:v7];
          }

          while (v126 != v128);
          v126 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v169 objects:v240 count:16];
        }

        while (v126);
      }

      v129 = malloc_type_malloc(8 * v124, 0x43A93B2DuLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v129, v124, self->_sampleTimestamps, v7);
      [a3 encodeBytes:v129 length:8 * v124 forKey:@"_sampleTimestamps"];
      free(v129);
      sampleTimestamps = self->_sampleTimestamps;
    }

    if (![(NSMutableArray *)sampleTimestamps count])
    {
      [a3 encodeInt64:self->_numSamples forKey:@"_numSamples"];
      v130 = self->_startTime;
      v131 = v130;
      if (v130)
      {
        [(SATimestamp *)v130 addSelfToSerializationDictionary:v7];
        [a3 encodeInt64:SASerializableIndexForPointerFromSerializationDictionary(v131 forKey:{v7), @"_startTime"}];
      }

      v132 = self->_endTime;
      v133 = v132;
      if (v132)
      {
        [(SATimestamp *)v132 addSelfToSerializationDictionary:v7];
        [a3 encodeInt64:SASerializableIndexForPointerFromSerializationDictionary(v133 forKey:{v7), @"_endTime"}];
      }
    }

    v134 = self->_targetProcess;
    v135 = v134;
    if (v134)
    {
      [(SATask *)v134 addSelfToSerializationDictionary:v7];
      [a3 encodeInt64:SASerializableIndexForPointerFromSerializationDictionary(v135 forKey:{v7), @"_targetProcess"}];
    }

    targetProcesses = self->_targetProcesses;
    if (targetProcesses)
    {
      v137 = [(NSArray *)targetProcesses count];
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v138 = self->_targetProcesses;
      v139 = [(NSArray *)v138 countByEnumeratingWithState:&v165 objects:v239 count:16];
      if (v139)
      {
        v140 = *v166;
        do
        {
          v141 = 0;
          do
          {
            if (*v166 != v140)
            {
              objc_enumerationMutation(v138);
            }

            [*(*(&v165 + 1) + 8 * v141++) addSelfToSerializationDictionary:v7];
          }

          while (v139 != v141);
          v139 = [(NSArray *)v138 countByEnumeratingWithState:&v165 objects:v239 count:16];
        }

        while (v139);
      }

      v142 = malloc_type_malloc(8 * v137, 0x297EF442uLL);
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v142, v137, self->_targetProcesses, v7);
      [a3 encodeBytes:v142 length:8 * v137 forKey:@"_targetProcesses"];
      free(v142);
    }

    v143 = SASerializableNewDataBufferDictionaryFromSerializationDictionary(v7);

    [a3 encodeObject:v143 forKey:@"SerializedDataDictionary"];
    [a3 encodeDouble:@"_lastWakeTime" forKey:self->_lastWakeTime];
    [a3 encodeDouble:@"_attemptedSamplingInterval" forKey:self->_attemptedSamplingInterval];
    [a3 encodeObject:self->_kextStat forKey:@"_kextStat"];
    [a3 encodeObject:self->_customOutput forKey:@"_customOutput"];
    [a3 encodeObject:self->_kernelVersion forKey:@"_kernelVersion"];
    [a3 encodeObject:self->_osProductName forKey:@"_osProductName"];
    [a3 encodeObject:self->_osProductVersion forKey:@"_osProductVersion"];
    [a3 encodeObject:self->_osProductVersionExtra forKey:@"_osProductVersionExtra"];
    [a3 encodeObject:self->_osBuildVersion forKey:@"_osBuildVersion"];
    [a3 encodeInt32:self->_arch.cpu_type forKey:@"cpu_type"];
    [a3 encodeInt32:self->_arch.cpu_subtype forKey:@"cpu_subtype"];
    [a3 encodeInt32:self->_machTimebase.numer forKey:@"_machTimebase_numer"];
    [a3 encodeInt32:self->_machTimebase.denom forKey:@"_machTimebase_denom"];
    [a3 encodeInt32:self->_workQueueSoftThreadLimit forKey:@"_workQueueSoftThreadLimit"];
    [a3 encodeInt32:self->_workQueueHardThreadLimit forKey:@"_workQueueHardThreadLimit"];
    [a3 encodeObject:self->_hardwareModel forKey:@"_hardwareModel"];
    [a3 encodeInt32:self->_numActiveCPUs forKey:@"_numActiveCPUs"];
    [a3 encodeInt64:self->_memSize forKey:@"_memSize"];
    v145 = objc_getProperty(self, v144, 1192, 1);
    [a3 encodeObject:v145 forKey:@"_clusterFlagsForCPUNumMapping"];

    [a3 encodeInt32:self->_hwPageSize forKey:@"_hwPageSize"];
    [a3 encodeInt32:self->_vmPageSize forKey:@"_vmPageSize"];
    [a3 encodeObject:self->_bootArgs forKey:@"_bootArgs"];
    [a3 encodeObject:self->_systemAdvisoryLevels forKey:@"_systemAdvisoryLevels"];
    [a3 encodeObject:self->_homeVolumeSpace forKey:@"_homeVolumeSpace"];
    [a3 encodeObject:self->_nonDefaultFeatureFlags forKey:@"_nonDefaultFeatureFlags"];
    [a3 encodeInt32:LODWORD(self->_numOSCryptexFileExtents) forKey:@"_numOSCryptexFileExtents"];
    [a3 encodeBool:self->_isRootInstalled forKey:@"_isRootInstalled"];
    [a3 encodeObject:self->_installedRootNames forKey:@"_installedRootNames"];
    if (self->_appleInternalIsKnown)
    {
      [a3 encodeBool:self->_isAppleInternal forKey:@"_isAppleInternal"];
      if (self->_hasInternalCarryDeviceDistinction)
      {
        [a3 encodeBool:self->_isInternalCarryDevice forKey:@"_isInternalCarryDevice"];
      }
    }

    [a3 encodeObject:self->_automatedDeviceGroup forKey:@"_automatedDeviceGroup"];
    [a3 encodeInt64:self->_pmiCycleIntervalMin forKey:@"_pmiCycleIntervalMin"];
    [a3 encodeInt64:self->_pmiCycleIntervalMax forKey:@"_pmiCycleIntervalMax"];
    [a3 encodeInt64:self->_numPMIMicrostackshotsLost forKey:@"_numPMIMicrostackshotsLost"];
    [a3 encodeObject:self->_keyboardLanguages forKey:@"_keyboardLanguages"];
    [a3 encodeObject:self->_preferredLanguages forKey:@"_preferredLanguages"];
    [a3 encodeObject:self->_countryCode forKey:@"_countryCode"];
    if (self->_hasHardwareKeyboardInfo)
    {
      [a3 encodeBool:self->_hardwareKeyboard forKey:@"_hardwareKeyboard"];
    }

    [a3 encodeObject:self->_powerMitigationLevelAtTailspinCapture forKey:@"_powerMitigationLevelAtTailspinCapture"];
    [a3 encodeInt64:self->_numVnodesAllocated forKey:@"_numVnodesAllocated"];
    [a3 encodeInt64:self->_numVnodesFree forKey:@"_numVnodesFree"];
    [a3 encodeInt64:self->_numVnodesSoftLimit forKey:@"_numVnodesSoftLimit"];
    [a3 encodeInt64:self->_numVnodesHardLimit forKey:@"_numVnodesHardLimit"];
    [a3 encodeObject:self->_activeTrials forKey:@"_activeTrials"];
    [a3 encodeObject:self->_event forKey:@"_event"];
    [a3 encodeObject:self->_eventNote forKey:@"_eventNote"];
    [a3 encodeObject:self->_signature forKey:@"_signature"];
    [a3 encodeObject:self->_issueType forKey:@"_issueType"];
    [a3 encodeObject:self->_mitigationReason forKey:@"_mitigationReason"];
    [a3 encodeObject:self->_actionTaken forKey:@"_actionTaken"];
    [a3 encodeObject:self->_detector forKey:@"_detector"];
    [a3 encodeDouble:@"_extraDuration" forKey:self->_extraDuration];
    [a3 encodeObject:self->_durationNote forKey:@"_durationNote"];
    [a3 encodeObject:self->_stepsNote forKey:@"_stepsNote"];
    [a3 encodeInt32:self->_targetProcessId forKey:@"_targetProcessId"];
    [a3 encodeInt64:self->_targetThreadId forKey:@"_targetThreadId"];
    [a3 encodeInt64:self->_targetDispatchQueueId forKey:@"_targetDispatchQueueId"];
    [a3 encodeInt64:self->_targetHIDEventMachAbs forKey:@"_targetHIDEventMachAbs"];
    [a3 encodeInt64:self->_targetHIDEventEndMachAbs forKey:@"_targetHIDEventEndMachAbs"];
    targetMainBinaryUUID = self->_targetMainBinaryUUID;
    if (targetMainBinaryUUID)
    {
      [a3 encodeObject:targetMainBinaryUUID forKey:@"_targetMainBinaryUUID"];
    }

    [a3 encodeDouble:@"_cpuUsed" forKey:self->_cpuUsed];
    [a3 encodeDouble:@"_cpuDuration" forKey:self->_cpuDuration];
    [a3 encodeDouble:@"_cpuLimit" forKey:self->_cpuLimit];
    [a3 encodeDouble:@"_cpuLimitDuration" forKey:self->_cpuLimitDuration];
    [a3 encodeInt64:self->_numWakeups forKey:@"_numWakeups"];
    [a3 encodeDouble:@"_wakeupsDuration" forKey:self->_wakeupsDuration];
    [a3 encodeInt64:self->_numWakeupsLimit forKey:@"_numWakeupsLimit"];
    [a3 encodeDouble:@"_wakeupsLimitDuration" forKey:self->_wakeupsLimitDuration];
    [a3 encodeDouble:@"_reportTimeThreshold" forKey:self->_reportTimeThreshold];
    [a3 encodeInt64:self->_sharedCacheVirtualSizeInBytes forKey:@"_sharedCacheVirtualSizeInBytes"];
    [a3 encodeInt64:self->_sharedCacheResidentSizeInBytes forKey:@"_sharedCacheResidentSizeInBytes"];
    wrWorkflowName = self->_wrWorkflowName;
    if (wrWorkflowName)
    {
      [a3 encodeObject:wrWorkflowName forKey:@"_wrWorkflowName"];
      [a3 encodeObject:self->_wrError forKey:@"_wrError"];
      [a3 encodeObject:self->_wrDiagnosticName forKey:@"_wrDiagnosticName"];
      [a3 encodeDouble:@"_wrWorkflowTimeoutDuration" forKey:self->_wrWorkflowTimeoutDuration];
      [a3 encodeDouble:@"_wrWorkflowDurationThreshold" forKey:self->_wrWorkflowDurationThreshold];
      [a3 encodeDouble:@"_wrWorkflowDuration" forKey:self->_wrWorkflowDuration];
      [a3 encodeDouble:@"_wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold" forKey:self->_wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold];
      [a3 encodeDouble:@"_wrWorkflowDurationOmittingNetworkBoundIntervals" forKey:self->_wrWorkflowDurationOmittingNetworkBoundIntervals];
      [a3 encodeObject:self->_wrSignpostName forKey:@"_wrSignpostName"];
      [a3 encodeObject:self->_wrSignpostSubsystem forKey:@"_wrSignpostSubsystem"];
      [a3 encodeObject:self->_wrSignpostCategory forKey:@"_wrSignpostCategory"];
      [a3 encodeObject:self->_wrTriggeringSignpostName forKey:@"_wrTriggeringSignpostName"];
      [a3 encodeObject:self->_wrTriggeringSignpostSubsystem forKey:@"_wrTriggeringSignpostSubsystem"];
      [a3 encodeObject:self->_wrTriggeringSignpostCategory forKey:@"_wrTriggeringSignpostCategory"];
      [a3 encodeInt64:self->_wrSignpostCountThreshold forKey:@"_wrSignpostCountThreshold"];
      [a3 encodeInt64:self->_wrSignpostCount forKey:@"_wrSignpostCount"];
      [a3 encodeDouble:@"_wrSignpostDurationUnionThreshold" forKey:self->_wrSignpostDurationUnionThreshold];
      [a3 encodeDouble:@"_wrSignpostDurationUnion" forKey:self->_wrSignpostDurationUnion];
      [a3 encodeDouble:@"_wrSignpostDurationSumThreshold" forKey:self->_wrSignpostDurationSumThreshold];
      [a3 encodeDouble:@"_wrSignpostDurationSum" forKey:self->_wrSignpostDurationSum];
      [a3 encodeDouble:@"_wrSignpostDurationSingleThreshold" forKey:self->_wrSignpostDurationSingleThreshold];
      [a3 encodeDouble:@"_wrSignpostDurationSingle" forKey:self->_wrSignpostDurationSingle];
    }

    [a3 encodeInt64:self->_dataSource forKey:@"_dataSource"];
    [a3 encodeInt64:self->_dataStyle forKey:@"_dataStyle"];
    [a3 encodeObject:self->_reason forKey:@"_reason"];
    [a3 encodeBool:self->_hidEventsHaveHighFidelityTimelines forKey:@"_hidEventsHaveHighFidelityTimelines"];
    previousSAVersions = self->_previousSAVersions;
    if (previousSAVersions)
    {
      v149 = [(NSArray *)previousSAVersions mutableCopy];
    }

    else
    {
      v149 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    }

    v152 = v149;
    v153 = [MEMORY[0x1E696AD98] numberWithDouble:413.0];
    [v152 addObject:v153];

    [a3 encodeObject:v152 forKey:@"_previousSAVersions"];
    [a3 encodeInt64:self->_gpuRestartCount forKey:@"_gpuRestartCount"];
    [a3 encodeInt64:self->_gpuRestartLastMachAbs forKey:@"_gpuRestartLastMachAbs"];
    [a3 encodeBool:self->_hasEnterprisePersona forKey:@"_hasEnterprisePersona"];
    v154 = [(SATask *)self->_targetProcess bundleBuildVersion];
    [a3 encodeObject:v154 forKey:@"_targetProcessBundleVersion"];

    v155 = [(SATask *)self->_targetProcess bundleShortVersion];
    [a3 encodeObject:v155 forKey:@"_targetProcessBundleShortVersion"];

    v156 = [(SATask *)self->_targetProcess bundleBuildVersion];
    [a3 encodeObject:v156 forKey:@"_targetProcessBundleBuildVersion"];

    v157 = [(SATask *)self->_targetProcess bundleProjectName];
    [a3 encodeObject:v157 forKey:@"_targetProcessBundleProjectName"];

    v158 = [(SATask *)self->_targetProcess bundleSourceVersion];
    [a3 encodeObject:v158 forKey:@"_targetProcessBundleSourceVersion"];

    v159 = [(SATask *)self->_targetProcess bundleProductBuildVersion];
    [a3 encodeObject:v159 forKey:@"_targetProcessBundleProductBuildVersion"];

    v160 = [(SATask *)self->_targetProcess bundleIdentifier];
    [a3 encodeObject:v160 forKey:@"_targetProcessBundleId"];

    v161 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", -[SATask adamID](self->_targetProcess, "adamID")];
    [a3 encodeObject:v161 forKey:@"_targetProcessCommerceAppID"];

    v162 = [(SATask *)self->_targetProcess installerVersionID];
    [a3 encodeObject:v162 forKey:@"_targetProcessCommerceExternalID"];

    v163 = [(SATask *)self->_targetProcess vendorID];
    [a3 encodeObject:v163 forKey:@"_targetProcessVendorID"];

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v150 = *__error();
    v151 = _sa_logt();
    if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v151, OS_LOG_TYPE_ERROR, "Invalid encoder", buf, 2u);
    }

    *__error() = v150;
  }

  v164 = *MEMORY[0x1E69E9840];
}

uint64_t __56__SASampleStore_SASampleStoreNSCoding__encodeWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 addSelfToSerializationDictionary:*(a1 + 32)];
  result = SASerializableIndexForPointerFromSerializationDictionary(a2, *(a1 + 32));
  *(*(a1 + 48) + 8 * (*(*(*(a1 + 40) + 8) + 24))++) = result;
  return result;
}

- (SASampleStore)initWithCoder:(id)a3
{
  v682 = *MEMORY[0x1E69E9840];
  v609 = objc_autoreleasePoolPush();
  if (!a3)
  {
    v616 = self;
    v116 = *__error();
    v117 = _sa_logt();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v117, OS_LOG_TYPE_ERROR, "Invalid decoder", buf, 2u);
    }

    v118 = 0;
    *__error() = v116;
    goto LABEL_202;
  }

  v614 = a3;
  v638.receiver = self;
  v638.super_class = SASampleStore;
  v615 = [(SASampleStore *)&v638 init];

  if (!v615)
  {
    gSASerializationEncodedVersionBeingDecoded();
    IsEmbedded = gSASerializationEncodedDataIsEmbedded();
    v121 = v609;
LABEL_327:
    *v120 = 0;
    *IsEmbedded = 0;
    v118 = v615;
    v616 = v118;
    goto LABEL_328;
  }

  v615->_dataGatheringOptions = 0;
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_osProductVersion"];
  osProductVersion = v615->_osProductVersion;
  v615->_osProductVersion = v5;

  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_osProductVersionExtra"];
  osProductVersionExtra = v615->_osProductVersionExtra;
  v615->_osProductVersionExtra = v7;

  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_osBuildVersion"];
  osBuildVersion = v615->_osBuildVersion;
  v615->_osBuildVersion = v9;

  if ([a3 containsValueForKey:@"_SASampleStore_Serialized_Version"])
  {
    v607 = [a3 decodeIntegerForKey:@"_SASampleStore_Serialized_Version"];
    v605 = gSASerializationEncodedVersionBeingDecoded();
    *v605 = v607;
    v615->_dataSource = [a3 decodeInt64ForKey:@"_dataSource"];
    v615->_dataStyle = [a3 decodeInt64ForKey:@"_dataStyle"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [a3 decodeArrayOfObjectsOfClasses:v13 forKey:@"_previousSAVersions"];
    previousSAVersions = v615->_previousSAVersions;
    v615->_previousSAVersions = v14;

    if (!v615->_previousSAVersions)
    {
      v16 = MEMORY[0x1E695DEC8];
      v17 = [MEMORY[0x1E695DFB0] null];
      v18 = [v16 arrayWithObject:v17];
      v19 = v615->_previousSAVersions;
      v615->_previousSAVersions = v18;
    }

    v20 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_osProductName"];
    osProductName = v615->_osProductName;
    v615->_osProductName = v20;

    SAIsEmbeddedPlatform(v615->_osProductName);
    context = gSASerializationEncodedDataIsEmbedded();
    *context = v22;
    v23 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_reason"];
    reason = v615->_reason;
    v615->_reason = v23;

    [a3 decodeDoubleForKey:@"_lastWakeTime"];
    v615->_lastWakeTime = v25;
    [a3 decodeDoubleForKey:@"_attemptedSamplingInterval"];
    v615->_attemptedSamplingInterval = v26;
    v27 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_kextStat"];
    kextStat = v615->_kextStat;
    v615->_kextStat = v27;

    v29 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_customOutput"];
    customOutput = v615->_customOutput;
    v615->_customOutput = v29;

    v31 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_kernelVersion"];
    kernelVersion = v615->_kernelVersion;
    v615->_kernelVersion = v31;

    v615->_arch.cpu_type = [a3 decodeInt32ForKey:@"cpu_type"];
    v615->_arch.cpu_subtype = [a3 decodeInt32ForKey:@"cpu_subtype"];
    v615->_machTimebase.numer = [a3 decodeInt32ForKey:@"_machTimebase_numer"];
    v615->_machTimebase.denom = [a3 decodeInt32ForKey:@"_machTimebase_denom"];
    v615->_workQueueSoftThreadLimit = [a3 decodeInt32ForKey:@"_workQueueSoftThreadLimit"];
    v615->_workQueueHardThreadLimit = [a3 decodeInt32ForKey:@"_workQueueHardThreadLimit"];
    v33 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareModel"];
    hardwareModel = v615->_hardwareModel;
    v615->_hardwareModel = v33;

    v615->_numActiveCPUs = [a3 decodeInt32ForKey:@"_numActiveCPUs"];
    v615->_memSize = [a3 decodeInt64ForKey:@"_memSize"];
    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [a3 decodeObjectOfClasses:v37 forKey:@"_clusterFlagsForCPUNumMapping"];
    clusterFlagsForCPUNumMapping = v615->_clusterFlagsForCPUNumMapping;
    v615->_clusterFlagsForCPUNumMapping = v38;

    v615->_hwPageSize = [a3 decodeInt32ForKey:@"_hwPageSize"];
    v615->_vmPageSize = [a3 decodeInt32ForKey:@"_vmPageSize"];
    v40 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_bootArgs"];
    bootArgs = v615->_bootArgs;
    v615->_bootArgs = v40;

    v42 = MEMORY[0x1E695DFD8];
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = [v42 setWithObjects:{v43, v44, objc_opt_class(), 0}];
    v46 = [a3 decodeObjectOfClasses:v45 forKey:@"_systemAdvisoryLevels"];
    systemAdvisoryLevels = v615->_systemAdvisoryLevels;
    v615->_systemAdvisoryLevels = v46;

    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = [v48 setWithObjects:{v49, v50, objc_opt_class(), 0}];
    v52 = [a3 decodeObjectOfClasses:v51 forKey:@"_homeVolumeSpace"];
    homeVolumeSpace = v615->_homeVolumeSpace;
    v615->_homeVolumeSpace = v52;

    v54 = MEMORY[0x1E695DFD8];
    v55 = objc_opt_class();
    v56 = objc_opt_class();
    v57 = [v54 setWithObjects:{v55, v56, objc_opt_class(), 0}];
    v58 = [a3 decodeObjectOfClasses:v57 forKey:@"_nonDefaultFeatureFlags"];
    nonDefaultFeatureFlags = v615->_nonDefaultFeatureFlags;
    v615->_nonDefaultFeatureFlags = v58;

    v615->_numOSCryptexFileExtents = [a3 decodeInt32ForKey:@"_numOSCryptexFileExtents"];
    v60 = MEMORY[0x1E695DFD8];
    v61 = objc_opt_class();
    v62 = [v60 setWithObjects:{v61, objc_opt_class(), 0}];
    v63 = [a3 decodeObjectOfClasses:v62 forKey:@"_keyboardLanguages"];
    keyboardLanguages = v615->_keyboardLanguages;
    v615->_keyboardLanguages = v63;

    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
    v68 = [a3 decodeObjectOfClasses:v67 forKey:@"_preferredLanguages"];
    preferredLanguages = v615->_preferredLanguages;
    v615->_preferredLanguages = v68;

    v70 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_countryCode"];
    countryCode = v615->_countryCode;
    v615->_countryCode = v70;

    v615->_isRootInstalled = [a3 decodeBoolForKey:@"_isRootInstalled"];
    v72 = MEMORY[0x1E695DFD8];
    v73 = objc_opt_class();
    v74 = [v72 setWithObjects:{v73, objc_opt_class(), 0}];
    v75 = [a3 decodeObjectOfClasses:v74 forKey:@"_installedRootNames"];
    installedRootNames = v615->_installedRootNames;
    v615->_installedRootNames = v75;

    if ([(NSArray *)v615->_installedRootNames count])
    {
      v615->_isRootInstalled = 1;
    }

    v77 = MEMORY[0x1E695DFD8];
    v78 = objc_opt_class();
    v79 = objc_opt_class();
    v80 = objc_opt_class();
    v81 = [v77 setWithObjects:{v78, v79, v80, objc_opt_class(), 0}];
    v82 = [a3 decodeObjectOfClasses:v81 forKey:@"_activeTrials"];
    activeTrials = v615->_activeTrials;
    v615->_activeTrials = v82;

    if ([a3 containsValueForKey:@"_isAppleInternal"])
    {
      v615->_appleInternalIsKnown = 1;
      v615->_isAppleInternal = [a3 decodeBoolForKey:@"_isAppleInternal"];
      if ([a3 containsValueForKey:@"_isInternalCarryDevice"])
      {
        v615->_hasInternalCarryDeviceDistinction = 1;
        v615->_isInternalCarryDevice = [a3 decodeBoolForKey:@"_isInternalCarryDevice"];
      }
    }

    v84 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_automatedDeviceGroup"];
    automatedDeviceGroup = v615->_automatedDeviceGroup;
    v615->_automatedDeviceGroup = v84;

    v615->_pmiCycleIntervalMin = [a3 decodeInt64ForKey:@"_pmiCycleIntervalMin"];
    v615->_pmiCycleIntervalMax = [a3 decodeInt64ForKey:@"_pmiCycleIntervalMax"];
    v615->_numPMIMicrostackshotsLost = [a3 decodeInt64ForKey:@"_numPMIMicrostackshotsLost"];
    if ([a3 containsValueForKey:@"_hardwareKeyboard"])
    {
      v615->_hardwareKeyboard = [a3 decodeBoolForKey:@"_hardwareKeyboard"];
      v615->_hasHardwareKeyboardInfo = 1;
    }

    v86 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_powerMitigationLevelAtTailspinCapture"];
    powerMitigationLevelAtTailspinCapture = v615->_powerMitigationLevelAtTailspinCapture;
    v615->_powerMitigationLevelAtTailspinCapture = v86;

    v615->_numVnodesAllocated = [a3 decodeInt64ForKey:@"_numVnodesAllocated"];
    v615->_numVnodesFree = [a3 decodeInt64ForKey:@"_numVnodesFree"];
    v615->_numVnodesSoftLimit = [a3 decodeInt64ForKey:@"_numVnodesSoftLimit"];
    v615->_numVnodesHardLimit = [a3 decodeInt64ForKey:@"_numVnodesHardLimit"];
    [a3 decodeDoubleForKey:@"_cpuUsed"];
    v615->_cpuUsed = v88;
    [a3 decodeDoubleForKey:@"_cpuDuration"];
    v615->_cpuDuration = v89;
    [a3 decodeDoubleForKey:@"_cpuLimit"];
    v615->_cpuLimit = v90;
    [a3 decodeDoubleForKey:@"_cpuLimitDuration"];
    v615->_cpuLimitDuration = v91;
    v615->_numWakeups = [a3 decodeInt64ForKey:@"_numWakeups"];
    [a3 decodeDoubleForKey:@"_wakeupsDuration"];
    v615->_wakeupsDuration = v92;
    v615->_numWakeupsLimit = [a3 decodeInt64ForKey:@"_numWakeupsLimit"];
    [a3 decodeDoubleForKey:@"_wakeupsLimitDuration"];
    v615->_wakeupsLimitDuration = v93;
    [a3 decodeDoubleForKey:@"_reportTimeThreshold"];
    v615->_reportTimeThreshold = v94;
    v95 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_event"];
    event = v615->_event;
    v615->_event = v95;

    v97 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_eventNote"];
    eventNote = v615->_eventNote;
    v615->_eventNote = v97;

    v99 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_signature"];
    signature = v615->_signature;
    v615->_signature = v99;

    v101 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_issueType"];
    issueType = v615->_issueType;
    v615->_issueType = v101;

    v103 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_mitigationReason"];
    mitigationReason = v615->_mitigationReason;
    v615->_mitigationReason = v103;

    v105 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_actionTaken"];
    actionTaken = v615->_actionTaken;
    v615->_actionTaken = v105;

    v107 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_detector"];
    detector = v615->_detector;
    v615->_detector = v107;

    [a3 decodeDoubleForKey:@"_extraDuration"];
    v615->_extraDuration = v109;
    v110 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_durationNote"];
    durationNote = v615->_durationNote;
    v615->_durationNote = v110;

    v112 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_stepsNote"];
    stepsNote = v615->_stepsNote;
    v615->_stepsNote = v112;

    v615->_targetProcessId = [a3 decodeInt32ForKey:@"_targetProcessId"];
    v615->_targetHIDEventMachAbs = [a3 decodeInt64ForKey:@"_targetHIDEventMachAbs"];
    v615->_targetHIDEventEndMachAbs = [a3 decodeInt64ForKey:@"_targetHIDEventEndMachAbs"];
    v615->_targetThreadId = [a3 decodeInt64ForKey:@"_targetThreadId"];
    v615->_targetDispatchQueueId = [a3 decodeInt64ForKey:@"_targetDispatchQueueId"];
    v114 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_targetMainBinaryUUID"];
    targetMainBinaryUUID = v615->_targetMainBinaryUUID;
    v615->_targetMainBinaryUUID = v114;

    if ([a3 containsValueForKey:@"_hidEventsHaveHighFidelityTimelines"])
    {
      v615->_hidEventsHaveHighFidelityTimelines = [a3 decodeBoolForKey:@"_hidEventsHaveHighFidelityTimelines"];
    }

    else
    {
      v123 = [(SASampleStore *)v615 osProductName];
      v124 = SAIsEmbeddedPlatform(v123);

      if (v124)
      {
        v615->_hidEventsHaveHighFidelityTimelines = 0;
      }

      else
      {
        v615->_hidEventsHaveHighFidelityTimelines = 1;
      }
    }

    v615->_sharedCacheVirtualSizeInBytes = [a3 decodeInt64ForKey:@"_sharedCacheVirtualSizeInBytes"];
    v615->_sharedCacheResidentSizeInBytes = [a3 decodeInt64ForKey:@"_sharedCacheResidentSizeInBytes"];
    if ([a3 containsValueForKey:@"_wrWorkflowName"])
    {
      v242 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_wrWorkflowName"];
      wrWorkflowName = v615->_wrWorkflowName;
      v615->_wrWorkflowName = v242;

      v244 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_wrError"];
      wrError = v615->_wrError;
      v615->_wrError = v244;

      v246 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_wrDiagnosticName"];
      wrDiagnosticName = v615->_wrDiagnosticName;
      v615->_wrDiagnosticName = v246;

      [a3 decodeDoubleForKey:@"_wrWorkflowTimeoutDuration"];
      v615->_wrWorkflowTimeoutDuration = v248;
      [a3 decodeDoubleForKey:@"_wrWorkflowDurationThreshold"];
      v615->_wrWorkflowDurationThreshold = v249;
      [a3 decodeDoubleForKey:@"_wrWorkflowDuration"];
      v615->_wrWorkflowDuration = v250;
      [a3 decodeDoubleForKey:@"_wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold"];
      v615->_wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold = v251;
      [a3 decodeDoubleForKey:@"_wrWorkflowDurationOmittingNetworkBoundIntervals"];
      v615->_wrWorkflowDurationOmittingNetworkBoundIntervals = v252;
      v253 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_wrSignpostName"];
      wrSignpostName = v615->_wrSignpostName;
      v615->_wrSignpostName = v253;

      v255 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_wrSignpostSubsystem"];
      wrSignpostSubsystem = v615->_wrSignpostSubsystem;
      v615->_wrSignpostSubsystem = v255;

      v257 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_wrSignpostCategory"];
      wrSignpostCategory = v615->_wrSignpostCategory;
      v615->_wrSignpostCategory = v257;

      v259 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_wrTriggeringSignpostName"];
      wrTriggeringSignpostName = v615->_wrTriggeringSignpostName;
      v615->_wrTriggeringSignpostName = v259;

      v261 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_wrTriggeringSignpostSubsystem"];
      wrTriggeringSignpostSubsystem = v615->_wrTriggeringSignpostSubsystem;
      v615->_wrTriggeringSignpostSubsystem = v261;

      v263 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_wrTriggeringSignpostCategory"];
      wrTriggeringSignpostCategory = v615->_wrTriggeringSignpostCategory;
      v615->_wrTriggeringSignpostCategory = v263;

      v615->_wrSignpostCountThreshold = [a3 decodeInt64ForKey:@"_wrSignpostCountThreshold"];
      v615->_wrSignpostCount = [a3 decodeInt64ForKey:@"_wrSignpostCount"];
      [a3 decodeDoubleForKey:@"_wrSignpostDurationUnionThreshold"];
      v615->_wrSignpostDurationUnionThreshold = v265;
      [a3 decodeDoubleForKey:@"_wrSignpostDurationUnion"];
      v615->_wrSignpostDurationUnion = v266;
      [a3 decodeDoubleForKey:@"_wrSignpostDurationSumThreshold"];
      v615->_wrSignpostDurationSumThreshold = v267;
      [a3 decodeDoubleForKey:@"_wrSignpostDurationSum"];
      v615->_wrSignpostDurationSum = v268;
      [a3 decodeDoubleForKey:@"_wrSignpostDurationSingleThreshold"];
      v615->_wrSignpostDurationSingleThreshold = v269;
      [a3 decodeDoubleForKey:@"_wrSignpostDurationSingle"];
      v615->_wrSignpostDurationSingle = v270;
    }

    v615->_gpuRestartCount = [a3 decodeInt64ForKey:@"_gpuRestartCount"];
    v615->_gpuRestartLastMachAbs = [a3 decodeInt64ForKey:@"_gpuRestartLastMachAbs"];
    v615->_hasEnterprisePersona = [a3 decodeBoolForKey:@"_hasEnterprisePersona"];
    v271 = MEMORY[0x1E695DFD8];
    v272 = objc_opt_class();
    v273 = objc_opt_class();
    v274 = [v271 setWithObjects:{v272, v273, objc_opt_class(), 0}];
    v613 = [a3 decodeObjectOfClasses:v274 forKey:@"SerializedDataDictionary"];

    if (!v613)
    {
      v596 = [SAException exceptionWithName:@"Decoding failure" reason:@"nil dataDictionary" userInfo:0];
      objc_exception_throw(v596);
    }

    v611 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *buf = 0;
    v275 = a3;
    v276 = [a3 decodeBytesForKey:@"_tasks" returnedLength:buf];
    if (v276)
    {
      v277 = *buf;
      v278 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*buf >> 3];
      tasksByPid = v615->_tasksByPid;
      v615->_tasksByPid = v278;

      v280 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v277 >> 3];
      tasksByUniquePid = v615->_tasksByUniquePid;
      v615->_tasksByUniquePid = v280;

      v282 = objc_opt_class();
      SASerializableNewMutableArrayFromIndexList(v276, v277 >> 3, v611, v613, v282);
      v636 = 0u;
      v637 = 0u;
      v634 = 0u;
      v283 = v635 = 0u;
      v284 = [(NSMutableDictionary *)v283 countByEnumeratingWithState:&v634 objects:v671 count:16];
      if (v284)
      {
        v285 = *v635;
        do
        {
          for (i = 0; i != v284; ++i)
          {
            if (*v635 != v285)
            {
              objc_enumerationMutation(v283);
            }

            v287 = *(*(&v634 + 1) + 8 * i);
            [(SASampleStore *)v615 addTask:v287];
            [(SATask *)v287 fixupFrameInstructionsWithDataGatheringOptions:0 mightBeAlive:0 foundNewBinaryInfo:0 uuidsWithNewInstructions:v615->_additionalCSSymbolicatorFlags additionalCSSymbolicatorFlags:?];
          }

          v284 = [(NSMutableDictionary *)v283 countByEnumeratingWithState:&v634 objects:v671 count:16];
        }

        while (v284);
      }
    }

    else
    {
      v288 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
      v289 = v615->_tasksByPid;
      v615->_tasksByPid = v288;

      v290 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
      v283 = v615->_tasksByUniquePid;
      v615->_tasksByUniquePid = v290;
    }

    if ([v614 containsValueForKey:@"_targetProcess"])
    {
      v291 = [v614 decodeInt64ForKey:@"_targetProcess"];
      v292 = objc_opt_class();
      v293 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v291, v611, v613, v292, 0);
    }

    else
    {
      v293 = 0;
    }

    targetProcess = v615->_targetProcess;
    v615->_targetProcess = v293;

    v680[0] = 0;
    v295 = v614;
    v296 = [v614 decodeBytesForKey:@"_targetProcesses" returnedLength:v680];
    if (v296)
    {
      v297 = v680[0];
      v298 = objc_opt_class();
      v299 = SASerializableNewMutableArrayFromIndexList(v296, v297 >> 3, v611, v613, v298);
    }

    else
    {
      v299 = 0;
    }

    targetProcesses = v615->_targetProcesses;
    v615->_targetProcesses = v299;

    if (!v615->_targetProcess && v615->_targetProcessId != -1)
    {
      [(SASampleStore *)v615 findTargetProcessInTimeRange:?];
    }

    v301 = [(SASampleStore *)v615 lastTaskWithPid:?];
    v303 = v301;
    if (v301)
    {
      Property = objc_getProperty(v301, v302, 280, 1);
    }

    else
    {
      Property = 0;
    }

    v305 = Property;
    v306 = [v305 count] == 0;

    if (v306)
    {
      *buf = 0;
      v307 = v614;
      v308 = [v614 decodeBytesForKey:@"_rootKernelFrames" returnedLength:buf];
      if (v308)
      {
        v309 = *buf;
        v310 = objc_opt_class();
        v312 = SASerializableNewMutableSetFromIndexList(v308, v309 >> 3, v611, v613, v310);
        if (v303 || ([(NSMutableDictionary *)v615->_tasksByUniquePid count]? (v313 = 0) : (v313 = -1), [SATask taskWithPid:v313 uniquePid:0 name:0 sharedCache:?], v303 = objc_claimAutoreleasedReturnValue(), [(SASampleStore *)v615 addTask:v303], v303))
        {
          objc_setProperty_atomic(v303, v311, v312, 280);
        }

        [(SATask *)v303 fixupFrameInstructionsWithDataGatheringOptions:0 mightBeAlive:0 foundNewBinaryInfo:0 uuidsWithNewInstructions:v615->_additionalCSSymbolicatorFlags additionalCSSymbolicatorFlags:?];
      }
    }

    if (v607 <= 19 && v615->_targetProcess)
    {
      v314 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleVersion"];
      v315 = [(SATask *)v615->_targetProcess mainBinary];
      v317 = v315;
      if (v315)
      {
        objc_setProperty_atomic_copy(v315, v316, v314, 96);
      }

      v318 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleShortVersion"];
      v319 = [(SATask *)v615->_targetProcess mainBinary];
      v321 = v319;
      if (v319)
      {
        objc_setProperty_atomic_copy(v319, v320, v318, 104);
      }

      v323 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleBuildVersion"];
      v324 = v615->_targetProcess;
      if (v324)
      {
        objc_setProperty_atomic_copy(v324, v322, v323, 112);
      }

      v326 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleProjectName"];
      v327 = v615->_targetProcess;
      if (v327)
      {
        objc_setProperty_atomic_copy(v327, v325, v326, 120);
      }

      v329 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleSourceVersion"];
      v330 = v615->_targetProcess;
      if (v330)
      {
        objc_setProperty_atomic_copy(v330, v328, v329, 128);
      }

      v332 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleProductBuildVersion"];
      v333 = v615->_targetProcess;
      if (v333)
      {
        objc_setProperty_atomic_copy(v333, v331, v332, 136);
      }

      v334 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleId"];
      v335 = [(SATask *)v615->_targetProcess mainBinary];
      v337 = v335;
      if (v335)
      {
        objc_setProperty_atomic_copy(v335, v336, v334, 88);
      }

      v338 = v614;
      v339 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessCommerceAppID"];
      if (v339)
      {
        v340 = objc_alloc_init(MEMORY[0x1E696ADA0]);
        v341 = [v340 numberFromString:v339];
        v342 = v341;
        if (v341)
        {
          v343 = [v341 unsignedLongLongValue];
          v344 = v615->_targetProcess;
          if (v344)
          {
            v344->_adamID = v343;
          }
        }

        else
        {
          v418 = *__error();
          v419 = _sa_logt();
          if (os_log_type_enabled(v419, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *&buf[4] = v339;
            _os_log_fault_impl(&dword_1E0E2F000, v419, OS_LOG_TYPE_FAULT, "Unable to parse commerceAppID %@", buf, 0xCu);
          }

          *__error() = v418;
        }

        v338 = v614;
      }

      v421 = [v338 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessCommerceExternalID"];
      v422 = v615->_targetProcess;
      if (v422)
      {
        objc_setProperty_atomic_copy(v422, v420, v421, 168);
      }

      v424 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessVendorID"];
      v425 = v615->_targetProcess;
      if (v425)
      {
        objc_setProperty_atomic_copy(v425, v423, v424, 176);
      }
    }

    *buf = 0;
    v426 = v614;
    v427 = [v614 decodeBytesForKey:@"_fanSpeeds" returnedLength:buf];
    if (v427)
    {
      v428 = *buf;
      v429 = objc_opt_class();
      v430 = SASerializableNewMutableArrayFromIndexList(v427, v428 >> 3, v611, v613, v429);
    }

    else
    {
      v430 = 0;
    }

    fanSpeeds = v615->_fanSpeeds;
    v615->_fanSpeeds = v430;

    *buf = 0;
    v432 = v614;
    v433 = [v614 decodeBytesForKey:@"_powerModeTransitions" returnedLength:buf];
    if (v433)
    {
      v434 = *buf;
      v435 = objc_opt_class();
      v436 = SASerializableNewMutableArrayFromIndexList(v433, v434 >> 3, v611, v613, v435);
    }

    else
    {
      v436 = 0;
    }

    powerModeTransitions = v615->_powerModeTransitions;
    v615->_powerModeTransitions = v436;

    if (*v605 <= 33 && *context == 1)
    {
      *buf = 0;
      v438 = v614;
      v439 = [v614 decodeBytesForKey:@"_hidEvents" returnedLength:buf];
      if (!v439)
      {
        v442 = 0;
        goto LABEL_225;
      }
    }

    else
    {
      *buf = 0;
      v443 = v614;
      v439 = [v614 decodeBytesForKey:@"_hidEvents" returnedLength:buf];
      if (!v439)
      {
        v442 = 0;
        goto LABEL_225;
      }
    }

    v440 = *buf;
    v441 = objc_opt_class();
    v442 = SASerializableNewMutableArrayFromIndexList(v439, v440 >> 3, v611, v613, v441);
LABEL_225:
    hidEvents = v615->_hidEvents;
    v615->_hidEvents = v442;

    *buf = 0;
    v445 = v614;
    v446 = [v614 decodeBytesForKey:@"_gestures" returnedLength:buf];
    if (v446)
    {
      v447 = *buf;
      v448 = objc_opt_class();
      v449 = SASerializableNewMutableArrayFromIndexList(v446, v447 >> 3, v611, v613, v448);
    }

    else
    {
      v449 = 0;
    }

    gestures = v615->_gestures;
    v615->_gestures = v449;

    if (!v615->_gestures)
    {
      v451 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v452 = v615->_gestures;
      v615->_gestures = v451;
    }

    *buf = 0;
    v453 = v614;
    v454 = [v614 decodeBytesForKey:@"_ioEvents" returnedLength:buf];
    if (v454)
    {
      v455 = *buf;
      v456 = objc_opt_class();
      v457 = SASerializableNewMutableArrayFromIndexList(v454, v455 >> 3, v611, v613, v456);
    }

    else
    {
      v457 = 0;
    }

    ioEvents = v615->_ioEvents;
    v615->_ioEvents = v457;

    v459 = objc_alloc_init(MEMORY[0x1E695DF90]);
    ioEventsByTid = v615->_ioEventsByTid;
    v615->_ioEventsByTid = v459;

    v632 = 0u;
    v633 = 0u;
    v630 = 0u;
    v631 = 0u;
    v461 = v615->_ioEvents;
    v462 = [(NSMutableArray *)v461 countByEnumeratingWithState:&v630 objects:v670 count:16];
    if (v462)
    {
      v463 = *v631;
      do
      {
        for (j = 0; j != v462; ++j)
        {
          if (*v631 != v463)
          {
            objc_enumerationMutation(v461);
          }

          v465 = *(*(&v630 + 1) + 8 * j);
          v466 = v615->_ioEventsByTid;
          v467 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v465, "threadID")}];
          v468 = [(NSMutableDictionary *)v466 objectForKeyedSubscript:v467];

          if (v468)
          {
            [v468 addObject:v465];
          }

          else
          {
            v469 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v465, 0}];
            v470 = v615->_ioEventsByTid;
            v471 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v465, "threadID")}];
            [(NSMutableDictionary *)v470 setObject:v469 forKeyedSubscript:v471];
          }
        }

        v462 = [(NSMutableArray *)v461 countByEnumeratingWithState:&v630 objects:v670 count:16];
      }

      while (v462);
    }

    *buf = 0;
    v472 = v614;
    v473 = [v614 decodeBytesForKey:@"_nandGarbageCollectionEvents" returnedLength:buf];
    if (v473)
    {
      v474 = *buf;
      v475 = objc_opt_class();
      v476 = SASerializableNewMutableArrayFromIndexList(v473, v474 >> 3, v611, v613, v475);
    }

    else
    {
      v476 = 0;
    }

    nandGarbageCollectionEvents = v615->_nandGarbageCollectionEvents;
    v615->_nandGarbageCollectionEvents = v476;

    *buf = 0;
    v478 = v614;
    v479 = [v614 decodeBytesForKey:@"_memoryPressureEvents" returnedLength:buf];
    if (v479)
    {
      v480 = *buf;
      v481 = objc_opt_class();
      v482 = SASerializableNewMutableArrayFromIndexList(v479, v480 >> 3, v611, v613, v481);
    }

    else
    {
      v482 = 0;
    }

    memoryPressureEvents = v615->_memoryPressureEvents;
    v615->_memoryPressureEvents = v482;

    *buf = 0;
    v484 = v614;
    v485 = [v614 decodeBytesForKey:@"_lostPerfEvents" returnedLength:buf];
    if (v485)
    {
      v486 = *buf;
      v487 = objc_opt_class();
      v488 = SASerializableNewMutableArrayFromIndexList(v485, v486 >> 3, v611, v613, v487);
    }

    else
    {
      v488 = 0;
    }

    lostPerfEvents = v615->_lostPerfEvents;
    v615->_lostPerfEvents = v488;

    *buf = 0;
    v490 = v614;
    v491 = [v614 decodeBytesForKey:@"_sharedCaches" returnedLength:buf];
    if (v491)
    {
      v492 = *buf;
      v493 = objc_opt_class();
      v494 = SASerializableNewMutableArrayFromIndexList(v491, v492 >> 3, v611, v613, v493);
    }

    else
    {
      v494 = 0;
    }

    sharedCaches = v615->_sharedCaches;
    v615->_sharedCaches = v494;

    *buf = 0;
    v496 = v614;
    v497 = [v614 decodeBytesForKey:@"_kernelCaches" returnedLength:buf];
    if (v497)
    {
      v498 = *buf;
      v499 = objc_opt_class();
      v500 = SASerializableNewMutableArrayFromIndexList(v497, v498 >> 3, v611, v613, v499);
    }

    else
    {
      v500 = 0;
    }

    kernelCaches = v615->_kernelCaches;
    v615->_kernelCaches = v500;

    *buf = 0;
    v502 = v614;
    v503 = [v614 decodeBytesForKey:@"_exclaves" returnedLength:buf];
    if (v503)
    {
      v504 = *buf;
      v505 = objc_opt_class();
      v506 = SASerializableNewMutableArrayFromIndexList(v503, v504 >> 3, v611, v613, v505);
    }

    else
    {
      v506 = 0;
    }

    exclaves = v615->_exclaves;
    v615->_exclaves = v506;

    v508 = v615->_exclaves;
    if (v508)
    {
      v628 = 0u;
      v629 = 0u;
      v626 = 0u;
      v627 = 0u;
      v509 = v508;
      v510 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v626 objects:v669 count:16];
      if (v510)
      {
        v511 = *v627;
        do
        {
          for (k = 0; k != v510; ++k)
          {
            if (*v627 != v511)
            {
              objc_enumerationMutation(v509);
            }

            [(SAExclave *)*(*(&v626 + 1) + 8 * k) fixupFrameInstructionsWithNewInstructions:0 foundNewBinaryInfo:?];
          }

          v510 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v626 objects:v669 count:16];
        }

        while (v510);
      }
    }

    *buf = 0;
    v513 = v614;
    v514 = [v614 decodeBytesForKey:@"_kperfTriggers" returnedLength:buf];
    if (v514)
    {
      v515 = *buf;
      v516 = objc_opt_class();
      v517 = SASerializableNewMutableArrayFromIndexList(v514, v515 >> 3, v611, v613, v516);
    }

    else
    {
      v517 = 0;
    }

    kperfTriggers = v615->_kperfTriggers;
    v615->_kperfTriggers = v517;

    v519 = [(NSArray *)v615->_kperfTriggers copy];
    v520 = v615->_kperfTriggers;
    v615->_kperfTriggers = v519;

    *buf = 0;
    v521 = v614;
    v522 = [v614 decodeBytesForKey:@"_models" returnedLength:buf];
    if (v522)
    {
      v523 = *buf;
      v524 = objc_opt_class();
      v525 = SASerializableNewMutableArrayFromIndexList(v522, v523 >> 3, v611, v613, v524);
    }

    else
    {
      v525 = 0;
    }

    models = v615->_models;
    v615->_models = v525;

    v527 = [(NSArray *)v615->_models copy];
    v528 = v615->_models;
    v615->_models = v527;

    if (![v614 containsValueForKey:@"_mountStatusTracker"] || (v529 = objc_msgSend(v614, "decodeInt64ForKey:", @"_mountStatusTracker"), v529 == -1))
    {
      v531 = objc_alloc_init(SAMountStatusTracker);
    }

    else
    {
      v530 = objc_opt_class();
      v531 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v529, v611, v613, v530);
    }

    mountStatusTracker = v615->_mountStatusTracker;
    v615->_mountStatusTracker = v531;

    if ([v614 containsValueForKey:@"_wsDataStore"])
    {
      v533 = [v614 decodeInt64ForKey:@"_wsDataStore"];
      v534 = objc_opt_class();
      v535 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v533, v611, v613, v534, 0);
    }

    else
    {
      v535 = 0;
    }

    wsDataStore = v615->_wsDataStore;
    v615->_wsDataStore = v535;

    if ([v614 containsValueForKey:@"_timeWhenTransitionedToSamplingAllProcesses"])
    {
      v537 = [v614 decodeInt64ForKey:@"_timeWhenTransitionedToSamplingAllProcesses"];
      v538 = objc_opt_class();
      v539 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v537, v611, v613, v538, 0);
    }

    else
    {
      v539 = 0;
    }

    timeWhenTransitionedToSamplingAllProcesses = v615->_timeWhenTransitionedToSamplingAllProcesses;
    v615->_timeWhenTransitionedToSamplingAllProcesses = v539;

    if ([v614 containsValueForKey:@"_timeWhenTransitionedToSamplingAllThreads"])
    {
      v541 = [v614 decodeInt64ForKey:@"_timeWhenTransitionedToSamplingAllThreads"];
      v542 = objc_opt_class();
      v543 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v541, v611, v613, v542, 0);
    }

    else
    {
      v543 = 0;
    }

    timeWhenTransitionedToSamplingAllThreads = v615->_timeWhenTransitionedToSamplingAllThreads;
    v615->_timeWhenTransitionedToSamplingAllThreads = v543;

    if ([v614 containsValueForKey:@"_cpuSignalHandlerStackLeafKernelFrame"])
    {
      v545 = [v614 decodeInt64ForKey:@"_cpuSignalHandlerStackLeafKernelFrame"];
      v546 = objc_opt_class();
      v547 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v545, v611, v613, v546, 0);
    }

    else
    {
      v547 = 0;
    }

    cpuSignalHandlerStackLeafKernelFrame = v615->_cpuSignalHandlerStackLeafKernelFrame;
    v615->_cpuSignalHandlerStackLeafKernelFrame = v547;

    if ([v614 containsValueForKey:@"_eventTimeRange"])
    {
      v549 = [v614 decodeInt64ForKey:@"_eventTimeRange"];
      v550 = objc_opt_class();
      v551 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v549, v611, v613, v550, 0);
    }

    else
    {
      v551 = 0;
    }

    eventTimeRange = v615->_eventTimeRange;
    v615->_eventTimeRange = v551;

    if ([v614 containsValueForKey:@"_timestampOfLastStackshot"])
    {
      v553 = [v614 decodeInt64ForKey:@"_timestampOfLastStackshot"];
      v554 = objc_opt_class();
      v555 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v553, v611, v613, v554, 0);
    }

    else
    {
      v555 = 0;
    }

    timestampOfLastStackshot = v615->_timestampOfLastStackshot;
    v615->_timestampOfLastStackshot = v555;

    *buf = 0;
    v557 = v614;
    v558 = [v614 decodeBytesForKey:@"_bootCycles" returnedLength:buf];
    if (v558)
    {
      v559 = *buf;
      v560 = objc_opt_class();
      v561 = SASerializableNewMutableArrayFromIndexList(v558, v559 >> 3, v611, v613, v560);
    }

    else
    {
      v561 = 0;
    }

    bootCycles = v615->_bootCycles;
    v615->_bootCycles = v561;

    *buf = 0;
    v563 = v614;
    v564 = [v614 decodeBytesForKey:@"_sampleTimestamps" returnedLength:buf];
    if (v564)
    {
      v565 = *buf;
      v566 = objc_opt_class();
      v567 = SASerializableNewMutableArrayFromIndexList(v564, v565 >> 3, v611, v613, v566);
    }

    else
    {
      v567 = 0;
    }

    sampleTimestamps = v615->_sampleTimestamps;
    v615->_sampleTimestamps = v567;

    if (![(NSMutableArray *)v615->_sampleTimestamps count])
    {
      if ([v614 containsValueForKey:@"_startTime"])
      {
        v569 = [v614 decodeInt64ForKey:@"_startTime"];
        v570 = objc_opt_class();
        v571 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v569, v611, v613, v570, 0);
      }

      else
      {
        v571 = 0;
      }

      startTime = v615->_startTime;
      v615->_startTime = v571;

      if ([v614 containsValueForKey:@"_endTime"])
      {
        v573 = [v614 decodeInt64ForKey:@"_endTime"];
        v574 = objc_opt_class();
        v575 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v573, v611, v613, v574, 0);
      }

      else
      {
        v575 = 0;
      }

      endTime = v615->_endTime;
      v615->_endTime = v575;

      v615->_numSamples = [v614 decodeInt64ForKey:@"_numSamples"];
    }

    v615->_sampleOnlyMainThreads = 0;
    v615->_shouldGatherKextStat = 0;
    v577 = +[SABinaryLocator sharedBinaryLocator];
    binaryLocator = v615->_binaryLocator;
    v615->_binaryLocator = v577;

    if (v615->_machTimebase.denom && v615->_machTimebase.numer)
    {
      v624[0] = MEMORY[0x1E69E9820];
      v624[1] = 3221225472;
      v624[2] = __54__SASampleStore_SASampleStoreNSCoding__initWithCoder___block_invoke;
      v624[3] = &unk_1E86F55B0;
      v625 = v615;
      [(SASampleStore *)v625 iterateAllTimestamps:v624];
    }

    [v611 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_7];
    if (v607 <= 37)
    {
      v579 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v621[0] = MEMORY[0x1E69E9820];
      v621[1] = 3221225472;
      v621[2] = __54__SASampleStore_SASampleStoreNSCoding__initWithCoder___block_invoke_2;
      v621[3] = &unk_1E86F5D08;
      v622 = v615;
      v580 = v579;
      v623 = v580;
      [(SASampleStore *)v622 enumerateTasks:v621];
      v619 = 0u;
      v620 = 0u;
      v617 = 0u;
      v618 = 0u;
      v581 = v580;
      v582 = [v581 countByEnumeratingWithState:&v617 objects:v668 count:16];
      if (v582)
      {
        v583 = *v618;
        do
        {
          for (m = 0; m != v582; ++m)
          {
            if (*v618 != v583)
            {
              objc_enumerationMutation(v581);
            }

            [(SAThreadExclavesInfo *)*(*(&v617 + 1) + 8 * m) reverseOrderOfCallstacks];
          }

          v582 = [v581 countByEnumeratingWithState:&v617 objects:v668 count:16];
        }

        while (v582);
      }
    }

    if (v607 >= 47)
    {
      fprintf(*MEMORY[0x1E69E9848], "WARNING: Binary version %lu is newer than SASampleStore's decoder version %lu. Some data in the original report may not be available in the reparsed report\n", v607, 46);
    }

    v121 = v609;
    IsEmbedded = context;
    v120 = v605;
    goto LABEL_327;
  }

  contexta = objc_autoreleasePoolPush();
  v615->_dataGatheringOptions = 0;
  if (([a3 containsValueForKey:@"_PASampleTimeSeriesDataStore_Serialized_Version"] & 1) == 0)
  {
    *gSASerializationEncodedVersionBeingDecoded() = 1;
    goto LABEL_333;
  }

  v610 = [a3 decodeIntegerForKey:@"_PASampleTimeSeriesDataStore_Serialized_Version"];
  if (v610 >= 16)
  {
    v587 = *__error();
    v588 = _sa_logt();
    if (os_log_type_enabled(v588, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v672) = 134217984;
      *(&v672 + 4) = v610;
      _os_log_error_impl(&dword_1E0E2F000, v588, OS_LOG_TYPE_ERROR, "encodedVersion %ld for PAStyleCoder", &v672, 0xCu);
    }

    *__error() = v587;
    _SASetCrashLogMessage(12810, "encodedVersion %ld for PAStyleCoder", v589, v590, v591, v592, v593, v594, v610);
    _os_crash();
    __break(1u);
  }

  v602 = gSASerializationEncodedVersionBeingDecoded();
  *v602 = v610;
  if (v610 <= 7)
  {
LABEL_333:
    v595 = [SAException exceptionWithName:@"Decoding failure" reason:@"Encoded version too old" userInfo:0];
    objc_exception_throw(v595);
  }

  if ([a3 containsValueForKey:@"_osProductName"])
  {
    v122 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_osProductName"];
  }

  else
  {
    v122 = @"Mac OS X";
  }

  v125 = v615->_osProductName;
  v615->_osProductName = &v122->isa;

  SAIsEmbeddedPlatform(v615->_osProductName);
  v601 = gSASerializationEncodedDataIsEmbedded();
  *v601 = v126;
  if (![a3 containsValueForKey:@"_dataSource"])
  {
    v129 = 1;
    v128 = v615;
    goto LABEL_33;
  }

  v127 = [a3 decodeInt64ForKey:@"_dataSource"];
  if ((v127 & 2) != 0)
  {
    v615->_dataSource |= 1uLL;
  }

  v128 = v615;
  if ((v127 & 4) != 0)
  {
    v129 = v615->_dataSource | 2;
LABEL_33:
    v128->_dataSource = v129;
  }

  v128->_dataStyle = 2;
  v130 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_reason"];
  v131 = v615->_reason;
  v615->_reason = v130;

  v132 = 0.0;
  if (v610 >= 0xD)
  {
    [a3 decodeDoubleForKey:{@"_lastWakeTime", 0.0}];
  }

  v615->_lastWakeTime = v132;
  [a3 decodeDoubleForKey:@"_attemptedSamplingInterval"];
  v615->_attemptedSamplingInterval = v133;
  v134 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_kextStat"];
  v135 = v615->_kextStat;
  v615->_kextStat = v134;

  v136 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_kernelVersion"];
  v137 = v615->_kernelVersion;
  v615->_kernelVersion = v136;

  v138 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_osProductVersion"];
  v139 = v615->_osProductVersion;
  v615->_osProductVersion = v138;

  v140 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_osProductVersionExtra"];
  v141 = v615->_osProductVersionExtra;
  v615->_osProductVersionExtra = v140;

  v142 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_osBuildVersion"];
  v143 = v615->_osBuildVersion;
  v615->_osBuildVersion = v142;

  v608 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_machineArchitecture"];
  v144 = v608;
  [v608 UTF8String];
  v615->_arch = CSArchitectureGetArchitectureForName();
  v615->_workQueueSoftThreadLimit = [a3 decodeInt32ForKey:@"_workQueueSoftThreadLimit"];
  v615->_workQueueHardThreadLimit = [a3 decodeInt32ForKey:@"_workQueueHardThreadLimit"];
  v145 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareModel"];
  v146 = v615->_hardwareModel;
  v615->_hardwareModel = v145;

  v615->_numActiveCPUs = [a3 decodeInt32ForKey:@"_numActiveCPUs"];
  v147 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_bootArgs"];
  v148 = v615->_bootArgs;
  v615->_bootArgs = v147;

  v615->_targetThreadId = [a3 decodeInt64ForKey:@"_targetThreadId"];
  v149 = [a3 decodeInt32ForKey:@"_cpuPercent"];
  v150 = [a3 decodeInt32ForKey:@"_cpuDuration"];
  v615->_cpuDuration = v150;
  v615->_cpuUsed = v149 * v150 / 100.0;
  v615->_numWakeups = [a3 decodeInt32ForKey:@"_wakeupsPerSec"];
  v615->_wakeupsDuration = [a3 decodeInt32ForKey:@"_wakeupsDuration"];
  v151 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_event"];
  v152 = v615->_event;
  v615->_event = v151;

  v153 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_eventNote"];
  v154 = v615->_eventNote;
  v615->_eventNote = v153;

  v155 = v615->_eventTimeRange;
  v615->_eventTimeRange = 0;

  v156 = v615->_timestampOfLastStackshot;
  v615->_timestampOfLastStackshot = 0;

  v157 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_signature"];
  v158 = v615->_signature;
  v615->_signature = v157;

  v159 = v615->_actionTaken;
  v615->_actionTaken = 0;

  [a3 decodeDoubleForKey:@"_extraDuration"];
  v615->_extraDuration = v160;
  v161 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_durationNote"];
  v162 = v615->_durationNote;
  v615->_durationNote = v161;

  v163 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_stepsNote"];
  v164 = v615->_stepsNote;
  v615->_stepsNote = v163;

  v615->_targetProcessId = [a3 decodeInt32ForKey:@"_targetProcessId"];
  [a3 decodeDoubleForKey:@"_timeWhenTransitionedToSamplingAllProcesses"];
  if (v165 != 0.0)
  {
    v166 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:v165 machContTimeSec:0.0 wallTime:0.0];
    v167 = v615->_timeWhenTransitionedToSamplingAllThreads;
    v615->_timeWhenTransitionedToSamplingAllThreads = v166;
  }

  v168 = MEMORY[0x1E695DFD8];
  v169 = objc_opt_class();
  v170 = objc_opt_class();
  v171 = [v168 setWithObjects:{v169, v170, objc_opt_class(), 0}];
  v612 = [a3 decodeObjectOfClasses:v171 forKey:@"SerializedDataDictionary"];

  if (!v612)
  {
    v597 = [SAException exceptionWithName:@"Decoding failure" reason:@"nil dataDictionary" userInfo:0];
    objc_exception_throw(v597);
  }

  v667 = 0;
  v666 = 0;
  v665 = 0;
  v664 = 0;
  v663 = 0;
  v172 = a3;
  v173 = [a3 decodeBytesForKey:@"TimeInsensitiveTaskIndices" returnedLength:&v667];
  if ([a3 containsValueForKey:@"RootKernelFrames"])
  {
    v174 = a3;
    v175 = [a3 decodeBytesForKey:@"RootKernelFrames" returnedLength:&v666];
  }

  else
  {
    v175 = 0;
    v666 = 0;
  }

  v176 = a3;
  v177 = [a3 decodeBytesForKey:@"SampleDataIndices" returnedLength:&v665];
  v178 = a3;
  v179 = [a3 decodeBytesForKey:@"FanSpeedIndices" returnedLength:&v664];
  v180 = a3;
  v606 = [a3 decodeBytesForKey:@"HIDEventIndices" returnedLength:&v663];
  if ((v667 & 7) != 0)
  {
    v598 = @"Unexpected task index array length";
    goto LABEL_340;
  }

  if ((v665 & 7) != 0)
  {
    v598 = @"Unexpected sample index array length";
    goto LABEL_340;
  }

  if ((v664 & 7) != 0)
  {
    v598 = @"Unexpected fan index array length";
    goto LABEL_340;
  }

  if ((v663 & 7) != 0)
  {
    v598 = @"Unexpected hid event array length";
LABEL_340:
    v599 = [SAException exceptionWithName:@"Decoding failure" reason:v598 userInfo:0];
    objc_exception_throw(v599);
  }

  v181 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v173)
  {
    v182 = v667;
    if (v667)
    {
      v183 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v667 >> 3];
      v184 = v615->_tasksByPid;
      v615->_tasksByPid = v183;

      v185 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v182 >> 3];
      v186 = v615->_tasksByUniquePid;
      v615->_tasksByUniquePid = v185;

      v187 = v667;
      v188 = objc_opt_class();
      v189 = SASerializableNewMutableArrayFromIndexList(v173, v187 >> 3, v181, v612, v188);
      v661 = 0u;
      v662 = 0u;
      v659 = 0u;
      v660 = 0u;
      v190 = v189;
      v192 = [v190 countByEnumeratingWithState:&v659 objects:buf count:16];
      if (v192)
      {
        v193 = *v660;
        do
        {
          for (n = 0; n != v192; ++n)
          {
            if (*v660 != v193)
            {
              objc_enumerationMutation(v190);
            }

            v195 = *(*(&v659 + 1) + 8 * n);
            if (v195)
            {
              v195 = objc_getProperty(v195, v191, 8, 1);
            }

            v196 = v195;
            [(SASampleStore *)v615 addTask:v196];
          }

          v192 = [v190 countByEnumeratingWithState:&v659 objects:buf count:16];
        }

        while (v192);
      }

      [(SASampleStore *)v615 findTargetProcessInTimeRange:?];
    }
  }

  if (v175)
  {
    v197 = v666;
    v198 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v666 >> 3];
    v199 = objc_opt_class();
    v200 = SASerializableNewMutableSetFromIndexList(v175, v197 >> 3, v181, v612, v199);
    v657 = 0u;
    v658 = 0u;
    v655 = 0u;
    v656 = 0u;
    v201 = v200;
    v203 = [v201 countByEnumeratingWithState:&v655 objects:v680 count:16];
    if (v203)
    {
      v204 = *v656;
      do
      {
        for (ii = 0; ii != v203; ++ii)
        {
          if (*v656 != v204)
          {
            objc_enumerationMutation(v201);
          }

          v206 = *(*(&v655 + 1) + 8 * ii);
          if (v206)
          {
            v206 = objc_getProperty(v206, v202, 8, 1);
          }

          v207 = v206;
          [v198 addObject:v207];
        }

        v203 = [v201 countByEnumeratingWithState:&v655 objects:v680 count:16];
      }

      while (v203);
    }

    v209 = [(SASampleStore *)v615 lastTaskWithPid:?];
    if (v209 || ([(NSMutableDictionary *)v615->_tasksByUniquePid count]? (v210 = 0) : (v210 = -1), [SATask taskWithPid:v210 uniquePid:0 name:0 sharedCache:?], v209 = objc_claimAutoreleasedReturnValue(), [(SASampleStore *)v615 addTask:v209], v209))
    {
      objc_setProperty_atomic(v209, v208, v198, 280);
    }
  }

  if (v615->_targetProcess)
  {
    v211 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleVersion"];
    v212 = [(SATask *)v615->_targetProcess mainBinary];
    v214 = v212;
    if (v212)
    {
      objc_setProperty_atomic_copy(v212, v213, v211, 96);
    }

    v215 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleShortVersion"];
    v216 = [(SATask *)v615->_targetProcess mainBinary];
    v218 = v216;
    if (v216)
    {
      objc_setProperty_atomic_copy(v216, v217, v215, 104);
    }

    v220 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleBuildVersion"];
    v221 = v615->_targetProcess;
    if (v221)
    {
      objc_setProperty_atomic_copy(v221, v219, v220, 112);
    }

    v223 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleProjectName"];
    v224 = v615->_targetProcess;
    if (v224)
    {
      objc_setProperty_atomic_copy(v224, v222, v223, 120);
    }

    v226 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleSourceVersion"];
    v227 = v615->_targetProcess;
    if (v227)
    {
      objc_setProperty_atomic_copy(v227, v225, v226, 128);
    }

    v229 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleProductBuildVersion"];
    v230 = v615->_targetProcess;
    if (v230)
    {
      objc_setProperty_atomic_copy(v230, v228, v229, 136);
    }

    v231 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessBundleId"];
    v232 = [(SATask *)v615->_targetProcess mainBinary];
    v234 = v232;
    if (v232)
    {
      objc_setProperty_atomic_copy(v232, v233, v231, 88);
    }

    v235 = v614;
    v236 = [v614 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessCommerceAppID"];
    if (v236)
    {
      v237 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v238 = [v237 numberFromString:v236];
      v239 = v238;
      if (v238)
      {
        v240 = [v238 unsignedLongLongValue];
        v241 = v615->_targetProcess;
        if (v241)
        {
          v241->_adamID = v240;
        }
      }

      else
      {
        v345 = *__error();
        v346 = _sa_logt();
        if (os_log_type_enabled(v346, OS_LOG_TYPE_FAULT))
        {
          LODWORD(v672) = 138412290;
          *(&v672 + 4) = v236;
          _os_log_fault_impl(&dword_1E0E2F000, v346, OS_LOG_TYPE_FAULT, "Unable to parse commerceAppID %@", &v672, 0xCu);
        }

        *__error() = v345;
      }

      v235 = v614;
    }

    v348 = [v235 decodeObjectOfClass:objc_opt_class() forKey:@"_targetProcessCommerceExternalID"];
    v349 = v615->_targetProcess;
    if (v349)
    {
      objc_setProperty_atomic_copy(v349, v347, v348, 168);
    }
  }

  if (v177)
  {
    v350 = v665;
    if (v665)
    {
      v351 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v665 >> 3];
      v352 = v615->_sampleTimestamps;
      v615->_sampleTimestamps = v351;

      v353 = objc_opt_class();
      v354 = SASerializableNewMutableArrayFromIndexList(v177, v350 >> 3, v181, v612, v353);
      v653 = 0u;
      v654 = 0u;
      v651 = 0u;
      v652 = 0u;
      v355 = v354;
      v357 = [v355 countByEnumeratingWithState:&v651 objects:v679 count:16];
      if (v357)
      {
        v358 = *v652;
        do
        {
          for (jj = 0; jj != v357; ++jj)
          {
            if (*v652 != v358)
            {
              objc_enumerationMutation(v355);
            }

            v360 = *(*(&v651 + 1) + 8 * jj);
            v361 = v615->_sampleTimestamps;
            if (v360)
            {
              v360 = objc_getProperty(v360, v356, 8, 1);
            }

            v362 = v360;
            [(NSMutableArray *)v361 addObject:v362];
          }

          v357 = [v355 countByEnumeratingWithState:&v651 objects:v679 count:16];
        }

        while (v357);
      }
    }
  }

  if (v179)
  {
    v363 = v664 >> 3;
    v364 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v664 >> 3];
    v365 = v615->_fanSpeeds;
    v615->_fanSpeeds = v364;

    v366 = objc_opt_class();
    v367 = SASerializableNewMutableArrayFromIndexList(v179, v363, v181, v612, v366);
    v649 = 0u;
    v650 = 0u;
    v647 = 0u;
    v648 = 0u;
    v368 = v367;
    v370 = [v368 countByEnumeratingWithState:&v647 objects:v678 count:16];
    if (v370)
    {
      v371 = *v648;
      do
      {
        for (kk = 0; kk != v370; ++kk)
        {
          if (*v648 != v371)
          {
            objc_enumerationMutation(v368);
          }

          v373 = *(*(&v647 + 1) + 8 * kk);
          v374 = v615->_fanSpeeds;
          if (v373)
          {
            v373 = objc_getProperty(v373, v369, 8, 1);
          }

          v375 = v373;
          [(NSMutableArray *)v374 addObject:v375];
        }

        v370 = [v368 countByEnumeratingWithState:&v647 objects:v678 count:16];
      }

      while (v370);
    }
  }

  if (v606)
  {
    v376 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v663 >> 3];
    v377 = v615->_hidEvents;
    v615->_hidEvents = v376;

    v378 = v663;
    v379 = objc_opt_class();
    v380 = SASerializableNewMutableArrayFromIndexList(v606, v378 >> 3, v181, v612, v379);
    v645 = 0u;
    v646 = 0u;
    v643 = 0u;
    v644 = 0u;
    v381 = v380;
    v383 = [v381 countByEnumeratingWithState:&v643 objects:v677 count:16];
    if (v383)
    {
      v384 = *v644;
      do
      {
        for (mm = 0; mm != v383; ++mm)
        {
          if (*v644 != v384)
          {
            objc_enumerationMutation(v381);
          }

          v386 = *(*(&v643 + 1) + 8 * mm);
          v387 = v615->_hidEvents;
          if (v386)
          {
            v386 = objc_getProperty(v386, v382, 8, 1);
          }

          v388 = v386;
          [(NSMutableArray *)v387 addObject:v388];
        }

        v383 = [v381 countByEnumeratingWithState:&v643 objects:v677 count:16];
      }

      while (v383);
    }
  }

  v389 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v390 = v615->_gestures;
  v615->_gestures = v389;

  v391 = [v614 decodeInt64ForKey:@"SymbolDataStoreIndex"];
  v392 = objc_opt_class();
  v393 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v391, v181, v612, v392, 0);
  v394 = [v614 decodeInt64ForKey:@"MountStatusTrackerIndex"];
  v395 = objc_opt_class();
  v396 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v394, v181, v612, v395, 0);
  v398 = v396;
  if (!v396)
  {
    v600 = [SAException exceptionWithName:@"Decoding failure" reason:@"Could not deserialize mount status" userInfo:0];
    objc_exception_throw(v600);
  }

  v399 = objc_getProperty(v396, v397, 8, 1);
  objc_storeStrong(&v615->_mountStatusTracker, v399);
  if ([v614 containsValueForKey:@"WSUpdateDataStoreIndex"])
  {
    v400 = [v614 decodeInt64ForKey:@"WSUpdateDataStoreIndex"];
    v401 = objc_opt_class();
    v402 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v400, v181, v612, v401, 0);
  }

  else
  {
    v402 = 0;
  }

  v403 = v615->_wsDataStore;
  v615->_wsDataStore = v402;

  v615->_sampleOnlyMainThreads = 0;
  v615->_shouldGatherKextStat = 0;
  v404 = +[SABinaryLocator sharedBinaryLocator];
  v405 = v615->_binaryLocator;
  v615->_binaryLocator = v404;

  v615->_machTimebase = 0x100000001;
  v642[0] = MEMORY[0x1E69E9820];
  v642[1] = 3221225472;
  v642[2] = __61__SASampleStore_SASampleStoreNSCoding__initWithPAStyleCoder___block_invoke;
  v642[3] = &unk_1E86F55B0;
  v642[4] = v615;
  [(SASampleStore *)v615 iterateAllTimestamps:v642];
  if (v393)
  {
    v407 = objc_getProperty(v393, v406, 24, 1);
  }

  else
  {
    v407 = 0;
  }

  v408 = v407;

  if (v408)
  {
    v410 = objc_alloc(MEMORY[0x1E695DF70]);
    if (v393)
    {
      v411 = objc_getProperty(v393, v409, 24, 1);
    }

    else
    {
      v411 = 0;
    }

    v412 = v411;
    v413 = [v410 initWithObjects:{v412, 0}];
    v414 = v615->_kernelCaches;
    v615->_kernelCaches = v413;
  }

  *&v672 = 0;
  *(&v672 + 1) = &v672;
  v673 = 0x3032000000;
  v674 = __Block_byref_object_copy__0;
  v675 = __Block_byref_object_dispose__0;
  v676 = 0;
  v639[0] = MEMORY[0x1E69E9820];
  v639[1] = 3221225472;
  v639[2] = __61__SASampleStore_SASampleStoreNSCoding__initWithPAStyleCoder___block_invoke_2;
  v639[3] = &unk_1E86F5DA8;
  v639[4] = v615;
  v415 = v393;
  v640 = v415;
  v641 = &v672;
  [(SASampleStore *)v615 enumerateTasks:v639];
  if (*(*(&v672 + 1) + 40))
  {
    v416 = objc_alloc(MEMORY[0x1E695DFD8]);
    v417 = [v416 initWithObjects:{*(*(&v672 + 1) + 40), 0}];
    [SAFrame enumerateFrameTree:v417 block:&__block_literal_global_1942];
  }

  [v181 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_7];

  _Block_object_dispose(&v672, 8);
  objc_autoreleasePoolPop(contexta);
  *v602 = 0;
  *v601 = 0;
  v118 = v615;
  v616 = v118;
LABEL_202:
  v121 = v609;
LABEL_328:
  objc_autoreleasePoolPop(v121);

  v585 = *MEMORY[0x1E69E9840];
  return v118;
}

void __54__SASampleStore_SASampleStoreNSCoding__initWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 threads];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SASampleStore_SASampleStoreNSCoding__initWithCoder___block_invoke_3;
  v4[3] = &unk_1E86F5380;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __54__SASampleStore_SASampleStoreNSCoding__initWithCoder___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) dataSource] == 1)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = [a3 threadStates];
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v32;
      do
      {
        v10 = 0;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v31 + 1) + 8 * v10);
          if (v11)
          {
            Property = objc_getProperty(*(*(&v31 + 1) + 8 * v10), v7, 184, 1);
          }

          else
          {
            Property = 0;
          }

          v13 = Property;

          if (v13)
          {
            v14 = *(a1 + 40);
            if (v11)
            {
              v15 = objc_getProperty(v11, v7, 184, 1);
            }

            else
            {
              v15 = 0;
            }

            v16 = v15;
            [v14 addObject:v16];
          }

          ++v10;
        }

        while (v8 != v10);
        v17 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
        v8 = v17;
      }

      while (v17);
    }

    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  if (([*(a1 + 32) dataSource] & 2) == 0)
  {
    v19 = *(a1 + 32);
    v20 = *MEMORY[0x1E69E9840];

    [v19 dataSource];
    return;
  }

  v21 = [a3 threadStates];
  self = [v21 lastObject];

  if (!self)
  {
    v23 = 0;
    goto LABEL_29;
  }

  v23 = objc_getProperty(self, v22, 184, 1);
  if (!v23 || [self startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(self, "endSampleIndex") == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  v24 = [self endSampleIndex];
  v25 = [*(a1 + 32) sampleTimestamps];
  v26 = [v25 count] - 1;

  if (v24 == v26)
  {
    v28 = *(a1 + 40);
    v23 = objc_getProperty(self, v27, 184, 1);
    [v28 addObject:v23];
LABEL_29:
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __61__SASampleStore_SASampleStoreNSCoding__initWithPAStyleCoder___block_invoke_2(void *a1, uint64_t a2)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__SASampleStore_SASampleStoreNSCoding__initWithPAStyleCoder___block_invoke_3;
  v15[3] = &unk_1E86F5D30;
  v15[4] = a1[4];
  v15[5] = v16;
  [a2 enumerateTaskStatesBetweenStartTime:0 startSampleIndex:0x7FFFFFFFFFFFFFFFLL endTime:0 endSampleIndex:0x7FFFFFFFFFFFFFFFLL reverseOrder:0 block:v15];
  v4 = [a2 threads];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__SASampleStore_SASampleStoreNSCoding__initWithPAStyleCoder___block_invoke_4;
  v14[3] = &unk_1E86F5D80;
  v14[4] = a1[4];
  v14[5] = v16;
  [v4 enumerateKeysAndObjectsUsingBlock:v14];

  if (a2 && (objc_copyStruct(&dest, (a2 + 288), 8, 1, 0), dest) || ([(SATask *)a2 guessArchitectureGivenMachineArchitecture:*(a1[4] + 432) dataSource:?], a2))
  {
    objc_copyStruct(&dest, (a2 + 288), 8, 1, 0);
  }

  v6 = CSArchitectureIs32Bit();
  Property = a1[5];
  if (v6)
  {
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 16, 1);
    }

    v9 = Property;
    if (a2)
    {
LABEL_13:
      objc_setProperty_atomic(a2, v8, v9, 264);
    }
  }

  else
  {
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 8, 1);
    }

    v9 = Property;
    if (a2)
    {
      goto LABEL_13;
    }
  }

  v10 = [(SATask *)a2 removeStacksOutsideThisProcess];
  if (v10)
  {
    v11 = *(a1[6] + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (!v13)
    {
      objc_storeStrong(v12, v10);
    }
  }

  [(SATask *)a2 fixupFrameInstructionsWithDataGatheringOptions:0 mightBeAlive:0 foundNewBinaryInfo:0 uuidsWithNewInstructions:*(a1[4] + 408) additionalCSSymbolicatorFlags:?];

  _Block_object_dispose(v16, 8);
}

void __61__SASampleStore_SASampleStoreNSCoding__initWithPAStyleCoder___block_invoke_3(uint64_t a1, void *a2)
{
  while (1)
  {
    v4 = [a2 startTimestamp];
    v5 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24);
    if (v4 == v5)
    {
      break;
    }

    *(v6 + 24) = v7 + 1;
  }

  if (a2)
  {
    a2[8] = v7;
  }

  while (1)
  {
    v8 = [a2 endTimestamp];
    v9 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];

    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 24);
    if (v8 == v9)
    {
      break;
    }

    *(v10 + 24) = v11 + 1;
  }

  if (a2)
  {
    a2[9] = v11;
  }
}

uint64_t __61__SASampleStore_SASampleStoreNSCoding__initWithPAStyleCoder___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__SASampleStore_SASampleStoreNSCoding__initWithPAStyleCoder___block_invoke_5;
  v4[3] = &unk_1E86F5D58;
  v5 = *(a1 + 32);
  return [a3 enumerateThreadStatesBetweenStartTime:0 startSampleIndex:0x7FFFFFFFFFFFFFFFLL endTime:0 endSampleIndex:0x7FFFFFFFFFFFFFFFLL reverseOrder:0 block:v4];
}

uint64_t __61__SASampleStore_SASampleStoreNSCoding__initWithPAStyleCoder___block_invoke_5(uint64_t a1, void *a2)
{
  while (1)
  {
    v4 = [a2 startTimestamp];
    v5 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24);
    if (v4 == v5)
    {
      break;
    }

    *(v6 + 24) = v7 + 1;
  }

  [(SAThreadState *)a2 setStartSampleIndex:v7];
  while (1)
  {
    v8 = [a2 endTimestamp];
    v9 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];

    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 24);
    if (v8 == v9)
    {
      break;
    }

    *(v10 + 24) = v11 + 1;
  }

  return [(SAThreadState *)a2 setEndSampleIndex:v11];
}

void __61__SASampleStore_SASampleStoreNSCoding__initWithPAStyleCoder___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 32) = 0;
  }
}

- (void)setKeepStateBetweenSampleIndexes:(BOOL)a3
{
  if (a3)
  {
    v3 = *__error();
    v4 = _sa_logt();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_FAULT, "keepStateBetweenSampleIndexes is no longer supported", v5, 2u);
    }

    *__error() = v3;
  }
}

- (id)tidToPidDict
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__SASampleStore_KPerf__tidToPidDict__block_invoke;
  v6[3] = &unk_1E86F6098;
  v4 = v3;
  v7 = v4;
  [(SASampleStore *)self enumerateTasks:v6];

  return v4;
}

void __36__SASampleStore_KPerf__tidToPidDict__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 threads];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SASampleStore_KPerf__tidToPidDict__block_invoke_2;
  v5[3] = &unk_1E86F6070;
  v6 = *(a1 + 32);
  v7 = a2;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __36__SASampleStore_KPerf__tidToPidDict__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 40), "pid")}];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a3, "threadId")}];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (id)idleThreadSet
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SASampleStore_KPerf__idleThreadSet__block_invoke;
  v6[3] = &unk_1E86F6098;
  v4 = v3;
  v7 = v4;
  [(SASampleStore *)self enumerateTasks:v6];

  return v4;
}

void __37__SASampleStore_KPerf__idleThreadSet__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 threads];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__SASampleStore_KPerf__idleThreadSet__block_invoke_2;
  v4[3] = &unk_1E86F60C0;
  v5 = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __37__SASampleStore_KPerf__idleThreadSet__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 threadStates];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = *(a1 + 32);

    [v7 addObject:a2];
  }
}

- (id)existingTaskForEvent:(uint64_t)a3 inSession:(_DWORD *)a4 returningPid:
{
  v4 = a1;
  if (a1)
  {
    v7 = *(a2 + 88);
    if ((v7 & 0x80000000) != 0 && ((v8 = *(a2 + 40), pid_for_thread = ktrace_get_pid_for_thread(), pid_for_thread < 0) ? (v7 = 0xFFFFFFFFLL) : (v7 = pid_for_thread), pid_for_thread < 0 && !*(a2 + 40)))
    {
      v4 = 0;
      if (a4)
      {
LABEL_11:
        *a4 = v7;
      }
    }

    else
    {
      v10 = [(SASampleStore *)v4 lastTaskWithPid:v7 orTid:*(a2 + 40)];
      v4 = v10;
      if (v10)
      {
        LODWORD(v7) = [v10 pid];
      }

      if (a4)
      {
        goto LABEL_11;
      }
    }
  }

  return v4;
}

- (id)taskForPid:(void *)a3 andName:(void *)a4 didExecAtTimestamp:
{
  if (a1)
  {
    v8 = [(SASampleStore *)a1 lastTaskWithPid:a2];
    v9 = v8;
    if (v8)
    {
      if (!a4)
      {
        if (a3)
        {
          if (!v8[7])
          {
            v16 = [v8 name];
            if (!v16 || ([v9 name], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hasPrefix:", a3), v17, v16, (v18 & 1) == 0))
            {
              [(SATask *)v9 setName:a3];
            }
          }
        }

        v13 = v9;
        goto LABEL_22;
      }

      v10 = [v8 exitTimestamp];

      if (!v10)
      {
        [(SASampleStore *)a1 task:v9 exitedAtTimestamp:a4];
      }
    }

    v11 = [SATask taskWithPid:a2 uniquePid:-1 name:a3 sharedCache:0];
    v13 = v11;
    if (v11)
    {
      objc_setProperty_atomic(v11, v12, a4, 232);
    }

    [(SASampleStore *)a1 addTask:v13];
    if (([a1 dataGatheringOptions] & 2) == 0)
    {
LABEL_22:

      goto LABEL_23;
    }

    if (([a1 dataGatheringOptions] & 0x80) != 0)
    {
      v14 = [v13 binaryLoadInfos];
      if (![v14 count])
      {

LABEL_20:
        -[SATask gatherLoadInfoFromLiveProcessWithDataGatheringOptions:additionalCSSymbolicatorFlags:](v13, [a1 dataGatheringOptions], objc_msgSend(a1, "additionalCSSymbolicatorFlags"));
        goto LABEL_21;
      }

      v15 = [v13 pid];

      if (!v15)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    [(SATask *)v13 _gatherDataFromLiveProcessIsLate:0 mainBinaryPath:?];
    goto LABEL_22;
  }

  v13 = 0;
LABEL_23:

  return v13;
}

- (void)kperfSampleAtTimestamp:(int)a3 isPET:(id *)self state:(int)a5 ignore:
{
  v7 = newValue;
  v37 = *MEMORY[0x1E69E9840];
  if (self)
  {
    objc_setProperty_atomic(self, newValue, newValue, 88);
    if (qword_1EDD02FB0)
    {
      v29 = a3;
      v30 = a1;
      v31 = v7;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = self[1];
      v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v11)
      {
        v12 = *v33;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v10);
            }

            if (qword_1EDD02FB0)
            {
              v14 = *(*(&v32 + 1) + 8 * i);
              v15 = *__error();
              fprintf(qword_1EDD02FB0, "%'llu Clearing on-core state for thread 0x%llx \n", 0, [v14 unsignedLongLongValue]);
              *__error() = v15;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v11);
      }

      a1 = v30;
      v7 = v31;
      a3 = v29;
    }

    [self[1] removeAllObjects];
  }

  if ((a5 & 1) == 0)
  {
    if ([a1 dataStyle] == 1 || !objc_msgSend(a1, "dataStyle"))
    {
      v16 = [a1 numSamples];
      if (a1)
      {
        *(a1 + 32) = v16 + 1;
      }

      v17 = [a1 startTime];

      if (v17)
      {
        if (!a1)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (!a1)
        {
          goto LABEL_31;
        }

        objc_storeStrong((a1 + 40), v7);
      }

      objc_storeStrong((a1 + 48), v7);
      goto LABEL_31;
    }

    if (a3)
    {
      if (!a1)
      {
        goto LABEL_31;
      }

LABEL_30:
      [*(a1 + 24) addObject:v7];
      goto LABEL_31;
    }

    v18 = [a1 dataSource];
    if (a1 && v18 != 2)
    {
      goto LABEL_30;
    }
  }

LABEL_31:
  if (qword_1EDD02FB0)
  {
    v19 = *__error();
    v20 = qword_1EDD02FB0;
    v21 = [v7 machAbsTime];
    if (a3)
    {
      v22 = "PET";
    }

    else
    {
      v22 = "non-PET";
    }

    v23 = [a1 sampleTimestamps];
    v24 = [v23 count];
    v25 = [v7 debugDescription];
    v26 = [v25 UTF8String];
    v27 = "";
    if (a5)
    {
      v27 = " (ignored)";
    }

    fprintf(v20, "%'llu \n\n%s Sample %ld at %s%s\n\n", v21, v22, v24 - 1, v26, v27);

    *__error() = v19;
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (uint64_t)deadReckonSamplesBeforeTimestamp:(int)a3 timestampIsSampleEvent:(uint64_t)a4 kperfState:
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (qword_1EDD02FB8 != -1)
    {
      dispatch_once(&qword_1EDD02FB8, &__block_literal_global_2);
    }

    v6 = 0;
    if (a4)
    {
      if ((_MergedGlobals_4 & 1) == 0)
      {
        v6 = 0;
        v7 = *(a4 + 72);
        if (v7)
        {
          if (v7 < a2)
          {
            v6 = 0;
            while (!a3 || v7 + (*(a4 + 64) >> 1) < a2)
            {
              v8 = [SATimestamp timestampWithMachAbsTime:v7 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:0.0];
              v21 = 0u;
              v22 = 0u;
              v23 = 0u;
              v24 = 0u;
              v9 = [*(a4 + 24) reverseObjectEnumerator];
              v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
              if (v10)
              {
                v11 = *v22;
                while (2)
                {
                  for (i = 0; i != v10; ++i)
                  {
                    if (*v22 != v11)
                    {
                      objc_enumerationMutation(v9);
                    }

                    v13 = *(*(&v21 + 1) + 8 * i);
                    if (([v13 gt:v8] & 1) == 0)
                    {
                      [v8 guessMissingTimesBasedOnTimestamp:v13];

                      goto LABEL_22;
                    }
                  }

                  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
                  if (v10)
                  {
                    continue;
                  }

                  break;
                }
              }

              if (*(a4 + 16))
              {
                [v8 guessMissingTimesBasedOnTimestamp:?];
              }

              else
              {
                [v8 guessMissingTimesBasedOnTimestamp:{objc_getProperty(a4, v14, 88, 1)}];
              }

LABEL_22:
              [(SASampleStore *)a1 kperfSampleAtTimestamp:v8 isPET:1 state:a4 ignore:0];
              v6 = (v6 + 1);

              v7 += *(a4 + 64);
              if (v7 >= a2)
              {
                goto LABEL_27;
              }
            }

            if (qword_1EDD02FB0)
            {
              v15 = *__error();
              fprintf(qword_1EDD02FB0, "%'llu Not dead-reckoning sample at %llu due to real sample at %llu\n", a2, v7, a2);
              *__error() = v15;
            }

LABEL_27:
            *(a4 + 72) = v7;
            if (v6)
            {
              *(a4 + 32) = 1;
              if (qword_1EDD02FB0)
              {
                v16 = *__error();
                fprintf(qword_1EDD02FB0, "%'llu Dead reckoned %d samples\n", a2, v6);
                *__error() = v16;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

_BYTE *__91__SASampleStore_KPerf__deadReckonSamplesBeforeTimestamp_timestampIsSampleEvent_kperfState___block_invoke()
{
  result = getenv("SA_DEAD_RECKONING");
  if (result && *result == 48 && !result[1])
  {
    v1 = *__error();
    v2 = _sa_logt();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1E0E2F000, v2, OS_LOG_TYPE_DEFAULT, "Not dead-reckoning samples", v3, 2u);
    }

    result = __error();
    *result = v1;
    _MergedGlobals_4 = 1;
  }

  return result;
}

BOOL __55__SASampleStore_KPerf__backfillExclaveFromKPerf_state___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 address];
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    *a3 = 1;
  }

  return v5 == v6;
}

BOOL __55__SASampleStore_KPerf__backfillExclaveFromKPerf_state___block_invoke_99(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 address];
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    *a3 = 1;
  }

  return v5 == v6;
}

void __55__SASampleStore_KPerf__backfillExclaveFromKPerf_state___block_invoke_105(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = a2;
    if ([self needsExclave])
    {
      [self setNeedsExclave:0];
      if (self)
      {
        objc_setProperty_atomic(self, v8, *(a1 + 40), 184);
      }

      if (!a3 && qword_1EDD02FB0)
      {
        v9 = *__error();
        v10 = qword_1EDD02FB0;
        v11 = *(*(a1 + 56) + 8);
        v13 = [*(a1 + 32) threadId];
        Property = *(a1 + 40);
        if (Property)
        {
          Property = objc_getProperty(Property, v12, 16, 1);
        }

        v15 = Property;
        v17 = [v15 count];
        v18 = *(a1 + 40);
        if (v18)
        {
          v18 = objc_getProperty(v18, v16, 16, 1);
        }

        v19 = v18;
        v20 = [v19 lastObject];
        v22 = v20;
        if (v20)
        {
          v23 = objc_getProperty(v20, v21, 16, 1);
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
        fprintf(v10, "%'llu Thread 0x%llx exclave info (%lu exclaves, leaf frame 0x%llx) backfilled to all (%d) thread states (indexes %lu-%lu)\n", v11, v13, v17, [v24 address], *(*(*(a1 + 48) + 8) + 24) + 1, 0, *(*(*(a1 + 48) + 8) + 24));

        *__error() = v9;
      }

      ++*(*(*(a1 + 48) + 8) + 24);
    }

    else
    {
      if (*(*(*(a1 + 48) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
      {
        v27 = *__error();
        v28 = qword_1EDD02FB0;
        v29 = *(*(a1 + 56) + 8);
        v31 = [*(a1 + 32) threadId];
        v32 = *(a1 + 40);
        if (v32)
        {
          v32 = objc_getProperty(v32, v30, 16, 1);
        }

        v43 = v32;
        v34 = [v43 count];
        v35 = *(a1 + 40);
        if (v35)
        {
          v35 = objc_getProperty(v35, v33, 16, 1);
        }

        v36 = v35;
        v37 = [v36 lastObject];
        v39 = v37;
        v42 = v27;
        if (v37)
        {
          v40 = objc_getProperty(v37, v38, 16, 1);
        }

        else
        {
          v40 = 0;
        }

        v41 = v40;
        fprintf(v28, "%'llu Thread 0x%llx exclave info (%lu exclaves, leaf frame 0x%llx) backfilled to %d thread states (indexes %lu-%lu)\n", v29, v31, v34, [v41 address], *(*(*(a1 + 48) + 8) + 24), a3 + 1, *(*(*(a1 + 48) + 8) + 24) + a3);

        *__error() = v42;
      }

      *a4 = 1;
    }
  }

  else
  {
    if (qword_1EDD02FB0)
    {
      v25 = *__error();
      fprintf(qword_1EDD02FB0, "%'llu Thread 0x%llx ran into non-kperf state at index %lu, stopping\n", *(*(a1 + 56) + 8), [*(a1 + 32) threadId], a3);
      *__error() = v25;
    }

    *a4 = 1;
  }
}

- (void)kperfRecord:(void *)a3 state:(void *)a4 frameIterator:
{
  v414 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_347;
  }

  v4 = a3;
  context = objc_autoreleasePoolPush();
  if ((*a2 & 0x200000000) == 0)
  {
    if ((~*a2 & 0x2005) != 0)
    {
      if (qword_1EDD02FB0)
      {
        v63 = __error();
        v64 = *a2;
        if ((*a2 & 4) != 0)
        {
          v65 = *(a2 + 16);
        }

        else
        {
          v65 = 0;
        }

        v75 = qword_1EDD02FB0;
        if ((v64 & 2) != 0)
        {
          v77 = a2;
          v76 = *(a2 + 24);
        }

        else
        {
          v76 = -1;
          v77 = a2;
        }

        v78 = *v63;
        v79 = *(v77 + 8);
        if ((v64 & 0x10) != 0)
        {
          v80 = *(v77 + 48);
        }

        else
        {
          v80 = 0;
        }

        StringForKPDecodeContentBits(v77);
        fprintf(v75, "%'llu Thread 0x%llx core %d event 0x%x skipping kperf content 0x%llx: %s\n", v79, v65, v76, v80, v64, &qword_1EDD02FD0);
        *__error() = v78;
      }

      goto LABEL_346;
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v308 = *__error();
      v309 = _sa_logt();
      if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v309, OS_LOG_TYPE_ERROR, "0 tid", buf, 2u);
      }

      *__error() = v308;
      _SASetCrashLogMessage(946, "0 tid", v310, v311, v312, v313, v314, v315, v342);
      _os_crash();
      __break(1u);
      goto LABEL_351;
    }

    v7 = [a1 dataSource];
    v8 = *a2;
    if (v7 == 2)
    {
      if ((v8 & 0x20) == 0)
      {
        if (!qword_1EDD02FB0)
        {
          goto LABEL_346;
        }

        v9 = *__error();
        v10 = *(a2 + 8);
        if ((*a2 & 2) != 0)
        {
          v103 = *(a2 + 24);
        }

        fprintf(qword_1EDD02FB0, "%'llu WARNING: Thread 0x%llx core %d ignoring record without thread info\n");
LABEL_149:
        *__error() = v9;
        goto LABEL_346;
      }
    }

    else if ((v8 & 0x1000000C0) == 0)
    {
      if (!qword_1EDD02FB0)
      {
        goto LABEL_346;
      }

      v9 = *__error();
      v102 = *(a2 + 8);
      if ((*a2 & 2) != 0)
      {
        v113 = *(a2 + 24);
      }

      fprintf(qword_1EDD02FB0, "%'llu WARNING: Thread 0x%llx core %d ignoring record without a stack\n");
      goto LABEL_149;
    }

    if (v4 && (v68 = v4[1], [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6], v69 = objc_claimAutoreleasedReturnValue(), LODWORD(v68) = objc_msgSend(v68, "containsObject:", v69), v69, v68))
    {
      [(SAKPerfState *)v4 nextSampleForThread:v6 isOnCore:0];
      v389 = 1;
    }

    else
    {
      v389 = 0;
    }

    if ([a1 dataStyle] != 1)
    {
      if ([a1 dataStyle])
      {
        v81 = [a1 sampleTimestamps];
        v82 = [v81 count];

        if (!v82)
        {
          if (qword_1EDD02FB0)
          {
            LODWORD(v72) = *__error();
            fprintf(qword_1EDD02FB0, "%'llu No sampling point before kperfdata\n", *(a2 + 8));
            v74 = __error();
            goto LABEL_81;
          }

          goto LABEL_346;
        }
      }
    }

    if ((*a2 & 2) != 0)
    {
      v83 = *(a2 + 24);
    }

    else
    {
      v83 = -1;
    }

    v375 = v83;
    if (v4)
    {
      v84 = v4[5];
      v86 = (a2 + 8);
      v85 = *(a2 + 8);
      absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
      v89 = absolute_from_timestamp;
      v90 = v4[10];
      if (absolute_from_timestamp > v90)
      {
LABEL_99:
        v90 = v89;
        goto LABEL_121;
      }

      if ((v389 & 1) == 0)
      {
        v91 = absolute_from_timestamp;
        v92 = objc_getProperty(v4, v88, 88, 1);
        if (v92)
        {
          v94 = v92;
          v95 = objc_getProperty(v4, v93, 88, 1);
          v96 = [v95 machAbsTime];

          if (v91 <= v96)
          {
            if (!qword_1EDD02FB0)
            {
              v389 = 1;
              goto LABEL_128;
            }

            v97 = *__error();
            v98 = qword_1EDD02FB0;
            v99 = *v86;
            v101 = objc_getProperty(a3, v100, 88, 1);
            fprintf(v98, "%'llu Adjusting forward record timestamp %lld to %lld, and making on-core for most recent timer %lld \n", v99, v91, v90, [v101 machAbsTime]);

            v389 = 1;
LABEL_120:
            *__error() = v97;
            v89 = v91;
LABEL_121:
            v91 = v89;
            if (qword_1EDD02FB0)
            {
              v114 = *__error();
              v115 = qword_1EDD02FB0;
              if (v389)
              {
                v116 = "on";
              }

              else
              {
                v116 = "off";
              }

              v117 = v6;
              v119 = *a2;
              v118 = *(a2 + 8);
              StringForKPDecodeContentBits(a2);
              v343 = v119;
              v6 = v117;
              fprintf(v115, "%'llu Thread 0x%llx core %d parsing %s-core kperf with content 0x%llx: %s\n", v118, v117, v375, v116, v343, &qword_1EDD02FD0);
              *__error() = v114;
            }

            goto LABEL_126;
          }
        }
      }
    }

    else
    {
      v86 = (a2 + 8);
      v341 = *(a2 + 8);
      v89 = ktrace_get_absolute_from_timestamp();
      if (v89)
      {
        goto LABEL_99;
      }

      v90 = 0;
    }

    v91 = v89;
    if (!qword_1EDD02FB0)
    {
LABEL_126:
      if (!a3)
      {
        v89 = v91;
        goto LABEL_129;
      }

      v89 = v91;
LABEL_128:
      v120 = a3[5];
LABEL_129:
      pid_for_thread = ktrace_get_pid_for_thread();
      if ((pid_for_thread & 0x80000000) != 0)
      {
        if ((*a2 & 0x20) == 0)
        {
          if (!qword_1EDD02FB0)
          {
            goto LABEL_346;
          }

          v9 = *__error();
          v121 = *(a2 + 8);
          if ((*a2 & 2) != 0)
          {
            v136 = *(a2 + 24);
          }

          fprintf(qword_1EDD02FB0, "%'llu WARNING: Thread 0x%llx core %d unable to determine pid for thread: %d\n");
          goto LABEL_149;
        }

        pid_for_thread = *(a2 + 88);
        if ((pid_for_thread & 0x80000000) != 0)
        {
LABEL_357:
          v332 = *__error();
          v333 = _sa_logt();
          if (os_log_type_enabled(v333, OS_LOG_TYPE_ERROR))
          {
            v334 = *(a2 + 88);
            *buf = 67109120;
            *&buf[4] = v334;
            _os_log_error_impl(&dword_1E0E2F000, v333, OS_LOG_TYPE_ERROR, "rec->thread_info.pid is %d", buf, 8u);
          }

          *__error() = v332;
          _SASetCrashLogMessage(1012, "rec->thread_info.pid is %d", v335, v336, v337, v338, v339, v340, *(a2 + 88));
          _os_crash();
          __break(1u);
        }
      }

      v377 = v89;
      v380 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
      v122 = [(SASampleStore *)a1 lastTaskWithPid:?];
      if (!v122)
      {
        if (a3)
        {
          v123 = a3[5];
        }

        execname_for_thread = ktrace_get_execname_for_thread();
        if (execname_for_thread && *execname_for_thread)
        {
          v125 = SANSStringForCString(execname_for_thread);
        }

        else
        {
          v125 = 0;
        }

        v126 = [(SASampleStore *)a1 taskForPid:v125 andName:0 didExecAtTimestamp:?];

        v122 = v126;
      }

      v395 = v122;
      v127 = [v122 threads];
      v128 = [v127 objectForKeyedSubscript:v380];

      v393 = v128;
      if (v128)
      {
LABEL_157:
        v140 = [v395 binaryLoadInfos];
        [a4 setUserBinaryLoadInfos:v140];

        v141 = v395;
        if (v395)
        {
          v141 = v395[79];
        }

        [a4 setAssumeUserBinaryLoadInfosContainMainBinary:v141 & 1];
        v142 = [v395 sharedCache];
        [a4 setSharedCache:v142];

        v143 = [a1 sampleTimestamps];
        if ([v143 count])
        {
          v144 = [a1 sampleTimestamps];
          v376 = [v144 count] - 1;
        }

        else
        {
          v376 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (!v389)
        {
          goto LABEL_174;
        }

        Property = a3;
        if (a3)
        {
          Property = objc_getProperty(a3, v145, 88, 1);
        }

        v147 = Property;

        if (!v147)
        {
LABEL_174:
          if (a3)
          {
            v158 = a3[5];
          }

          [SATimestamp timestampWithMachAbsTime:v90 fromKtraceSession:?];
          v392 = v374 = 0;
LABEL_208:
          v209 = a3;
          if (*a2 & 0x200000) == 0 && ((*a2 & 0x1000) == 0 || (*(a2 + 6560)))
          {
            if (a3)
            {
              v210 = objc_getProperty(a3, v159, 48, 1);
            }

            else
            {
              v210 = 0;
            }

            v211 = v210;
            [MEMORY[0x1E696AD98] numberWithInt:pid_for_thread];
            v212 = v209 = a3;
            v213 = [v211 objectForKeyedSubscript:v212];
            if (v213)
            {
            }

            else
            {
              if (a3)
              {
                v215 = objc_getProperty(a3, v214, 56, 1);
              }

              else
              {
                v215 = 0;
              }

              v216 = v215;
              v217 = [MEMORY[0x1E696AD98] numberWithInt:pid_for_thread];
              v218 = [v216 objectForKeyedSubscript:v217];

              v209 = a3;
              if (!v218)
              {
                goto LABEL_277;
              }
            }
          }

          v219 = *a2;
          if ((*a2 & 0x200000) == 0)
          {
            ns_from_timestamp = 0;
            v225 = 0;
            v226 = 0;
            v227 = 0;
            v231 = 0;
            LOBYTE(v365) = 0;
            LOBYTE(v366) = 0;
            LOBYTE(v361) = 0;
            LOBYTE(v363) = 0;
            v359 = 0;
            v355 = 0;
            LOBYTE(v357) = 0;
            LOBYTE(v353) = 0;
            LODWORD(v232) = *a2;
            if ((v219 & 0x1000) == 0)
            {
              goto LABEL_238;
            }

            goto LABEL_236;
          }

          if (v209)
          {
            v220 = v209[5];
          }

          v221 = *(a2 + 6648);
          ns_from_timestamp = ktrace_get_ns_from_timestamp();
          if (v209)
          {
            v223 = v209[5];
          }

          v224 = *(a2 + 6656);
          v225 = ktrace_get_ns_from_timestamp();
          v226 = *(a2 + 6640);
          v227 = *(a2 + 6644);
          v228 = *(a2 + 6632);
          if ((v228 & 0x80) != 0)
          {
            v229 = *(a2 + 6632);
            v230 = v395;
            if (!v395 || (v395[68] = 1, v229 = *(a2 + 6632), (v229 & 0x100) == 0))
            {
LABEL_232:
              v231 = v228 & 1;
              v365 = (v228 >> 2) & 1;
              v366 = (v228 >> 1) & 1;
              v361 = (v229 >> 4) & 1;
              v363 = (v228 >> 3) & 1;
              v359 = (~v229 & 0x30) == 0;
              v355 = (~v229 & 0x50) == 0;
              v357 = (v229 >> 9) & 1;
              if ((v229 & 0x400) != 0 && v395)
              {
                v395[72] = 1;
                v229 = *(a2 + 6632);
              }

              v353 = (v229 >> 11) & 1;
              v232 = *a2;
              if ((*a2 & 0x1000) == 0)
              {
                goto LABEL_238;
              }

LABEL_236:
              if ((*(a2 + 6560) & 1) == 0)
              {
                v349 = *(a2 + 6568);
                v351 = 1;
                goto LABEL_239;
              }

LABEL_238:
              v351 = 0;
              v349 = 0;
LABEL_239:
              if ((v232 & 0x100000) != 0 && (v233 = (*(a2 + 6624) >> 9) & 7) != 0)
              {
                v347 = v233 | 0xFF0000;
              }

              else
              {
                v347 = 0;
              }

              v234 = a3;
              v369 = ns_from_timestamp;
              v372 = v225;
              if (a3)
              {
                v234 = objc_getProperty(a3, v159, 48, 1);
              }

              v235 = v219;
              v236 = v234;
              v237 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v395, "pid")}];
              v238 = [v236 objectForKeyedSubscript:v237];

              if (v238)
              {
                v378 = [v238 BOOLValue];
              }

              else
              {
                v378 = 0;
              }

              v240 = a3;
              if (a3)
              {
                v240 = objc_getProperty(a3, v239, 56, 1);
              }

              v241 = v240;
              v242 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v395, "pid")}];
              v243 = [v241 objectForKeyedSubscript:v242];

              if (v243)
              {
                v244 = [v243 intValue];
              }

              else
              {
                v244 = 0x80000000;
              }

              [(SASampleStore *)a1 backfillTask:v395 lastSampleIndex:v376 timestamp:v392 haveSnap:(*&v235 & 0x200000) != 0 terminatedThreadsUserTimeInNs:v369 terminatedThreadsSystemTimeInNs:v372 terminatedThreadsCycles:0 terminatedThreadsInstructions:0 suspendCount:v226 pageins:v227 isDarwinBG:v231 isForeground:v366 isBoosted:v365 isDirty:v363 isRunningBoardActive:v357 hasRunningBoardAssertion:v353 haveWQFlags:v361 wqExceededTotalThreadLimit:v359 wqExceededConstrainedThreadLimit:v355 haveCoopAndActiveConstrWQFlags:0 wqExceededCooperativeThreadLimit:0 wqExceededActiveConstrainedThreadLimit:0 haveMem:v351 taskSizeInBytes:v349 haveLatencyQos:(v232 & 0x100000) != 0 latencyQos:v347 haveRunawayMitigated:v238 != 0 isRunawayMitigated:v378 effectiveJetsamPriority:v244];
              v209 = a3;
              if (v238 || v244 != 0x80000000)
              {
                v245 = [v395 taskStates];
                v246 = [v245 lastObject];

                if (v246)
                {
                  if (v238)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) != 0 && (v246[139] & 1) == 0)
                    {
                      v251 = *__error();
                      v252 = _sa_logt();
                      if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 67109120;
                        *&buf[4] = v378;
                        _os_log_error_impl(&dword_1E0E2F000, v252, OS_LOG_TYPE_ERROR, "Backfilled runaway mitigated state change %d, but most recent task state has not been filled", buf, 8u);
                      }

                      v209 = a3;
                      *__error() = v251;
                    }

                    else if (v378 == [v246 isRunawayMitigated])
                    {
                      if (a3)
                      {
                        v248 = objc_getProperty(a3, v247, 48, 1);
                      }

                      else
                      {
                        v248 = 0;
                      }

                      v249 = v248;
                      v250 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v395, "pid")}];
                      [v249 setObject:0 forKeyedSubscript:v250];
                    }
                  }

                  if (v244 != 0x80000000)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v246 effectiveJetsamPriority] == 0x80000000)
                    {
                      v253 = *__error();
                      v254 = _sa_logt();
                      if (os_log_type_enabled(v254, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 67109120;
                        *&buf[4] = v244;
                        _os_log_error_impl(&dword_1E0E2F000, v254, OS_LOG_TYPE_ERROR, "Backfilled effectiveJetsamPriority %d, but most recent task state has not been filled", buf, 8u);
                      }

                      *__error() = v253;
                    }

                    else if ([v246 effectiveJetsamPriority] == v244)
                    {
                      if (v209)
                      {
                        v256 = objc_getProperty(v209, v255, 56, 1);
                      }

                      else
                      {
                        v256 = 0;
                      }

                      v257 = v256;
                      v258 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v395, "pid")}];
                      [v257 setObject:0 forKeyedSubscript:v258];
                    }
                  }
                }

                v209 = a3;
              }

LABEL_277:
              if (v209)
              {
                v259 = v209[5];
              }

              name_for_thread = ktrace_get_name_for_thread();
              v261 = name_for_thread;
              v262 = a2 + 4096;
              if (name_for_thread)
              {
                v263 = *name_for_thread != 0;
              }

              else
              {
                v263 = 0;
              }

              v264 = *a2;
              if ((*a2 & 0x800000) != 0)
              {
                v265 = *(a2 + 6688);
                if ((v264 & 0x10000000) != 0)
                {
                  if (*(a2 + 7088))
                  {
                    v266 = a2 + 7088;
                  }

                  else
                  {
                    v266 = 0;
                  }

                  if ((v264 & 0x40) != 0)
                  {
LABEL_288:
                    v267 = *(a2 + 2164);
                    if (v267)
                    {
                      [a4 setKernelFrames:{malloc_type_calloc(v267, 8uLL, 0x100004000313F17uLL)}];
                      memcpy([a4 kernelFrames], (a2 + 2168), 8 * *(a2 + 2164));
                      [a4 setNumKernelFrames:*(a2 + 2164)];
                      v268 = *(a2 + 7376);
                      v373 = v268 != 0;
                      if (v268)
                      {
                        if (v268 == *(a2 + 2164))
                        {
                          v269 = 0;
                        }

                        else
                        {
                          v269 = v268;
                        }

                        [a4 setExclaveInsertionIndex:v269];
                      }

                      if ((*(a2 + 2160) & 0x10) != 0)
                      {
                        [a4 setIsKernelStackTruncated:1];
                      }

                      v270 = [(SASampleStore *)a1 lastTaskWithPid:?];
                      if (!v270)
                      {
                        if (v209)
                        {
                          v271 = v209[5];
                        }

                        execname_for_pid = ktrace_get_execname_for_pid();
                        if (execname_for_pid && *execname_for_pid)
                        {
                          v273 = SANSStringForCString(execname_for_pid);
                        }

                        else
                        {
                          v273 = 0;
                        }

                        v270 = [(SASampleStore *)a1 taskForPid:v273 andName:0 didExecAtTimestamp:?];
                      }

                      v275 = [v270 binaryLoadInfos];
                      [a4 setKernelBinaryLoadInfos:v275];

                      v379 = [(SATask *)v270 leafFrameAfterAddingStack:a4 leafOfCRootFramesReplacedBySwiftAsync:0];

                      v274 = *a2;
                      v209 = a3;
                      goto LABEL_308;
                    }

LABEL_351:
                    v316 = *__error();
                    v317 = _sa_logt();
                    if (os_log_type_enabled(v317, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E0E2F000, v317, OS_LOG_TYPE_ERROR, "0 rec->kstack.nframes", buf, 2u);
                    }

                    *__error() = v316;
                    _SASetCrashLogMessage(1322, "0 rec->kstack.nframes", v318, v319, v320, v321, v322, v323, v342);
                    _os_crash();
                    __break(1u);
LABEL_354:
                    v324 = *__error();
                    v325 = _sa_logt();
                    if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E0E2F000, v325, OS_LOG_TYPE_ERROR, "0 rec->ustack.nframes", buf, 2u);
                    }

                    *__error() = v324;
                    _SASetCrashLogMessage(1362, "0 rec->ustack.nframes", v326, v327, v328, v329, v330, v331, v342);
                    _os_crash();
                    __break(1u);
                    goto LABEL_357;
                  }

LABEL_304:
                  v379 = 0;
                  v373 = 0;
                  LOBYTE(v274) = *a2;
LABEL_308:
                  v370 = v264;
                  if ((v274 & 0x80) == 0)
                  {
                    v384 = 0;
                    selfa = 0;
                    v276 = 0;
                    v277 = [v395 pid] == 0;
LABEL_325:
                    v281 = *a2;
                    v367 = v276;
                    if ((*a2 & 0x100000) != 0)
                    {
                      [a1 setHaveKPerfSched:1];
                      if (v209)
                      {
                        v282 = v209[5];
                      }

                      v283 = *(a2 + 6600);
                      v284 = v266;
                      v285 = v265;
                      v286 = v263;
                      v287 = ktrace_get_ns_from_timestamp();
                      if (v209)
                      {
                        v288 = v209[5];
                      }

                      v289 = *(a2 + 6608);
                      v290 = ktrace_get_ns_from_timestamp();
                      v291 = v287;
                      v263 = v286;
                      v265 = v285;
                      v266 = v284;
                      v262 = a2 + 4096;
                      v364 = *(a2 + 6620);
                      v360 = *(a2 + 6622);
                      v362 = *(a2 + 6616) & 0xFFFFFFFB;
                      v292 = *(a2 + 6624);
                      v356 = (v292 >> 3) & 7;
                      v358 = v292 & 7;
                      v354 = (v292 >> 6) & 7;
                      v293 = *a2;
                      if ((*a2 & 0x8000000) != 0)
                      {
                        v352 = *(a2 + 7080) & 7;
                      }

                      else
                      {
                        v352 = 0;
                      }
                    }

                    else
                    {
                      v290 = 0;
                      v291 = 0;
                      v364 = 0;
                      v360 = 0;
                      v362 = 0;
                      LOBYTE(v356) = 0;
                      v358 = 0;
                      v352 = 0;
                      LOBYTE(v354) = 0;
                      LODWORD(v293) = *a2;
                    }

                    v294 = v265;
                    v295 = v263;
                    if ((v293 & 0x4000000) != 0)
                    {
                      v296 = *(a2 + 7064);
                      v297 = *(a2 + 7072);
                    }

                    else
                    {
                      v296 = 0;
                      v297 = 0;
                    }

                    v298 = v266;
                    if ((v293 & 0x400000) != 0)
                    {
                      v344 = v290;
                      v345 = v291;
                      v350 = v294;
                      v348 = v295;
                      v346 = v261;
                      v299 = *(v262 + 2586);
                      v300 = *(a2 + 6664);
                      v301 = *(a2 + 6680) > 0;
                      if ((v300 & 4) != 0 && v393)
                      {
                        *(v393 + 16) = 1;
                      }

                      if (v209)
                      {
                        v302 = v209[5];
                      }

                      v303 = [SATimestamp timestampWithMachAbsTime:*(a2 + 6672) fromKtraceSession:?];
                      v304 = (v300 >> 1) & 1;
                      v305 = v300 & 1;
                      v306 = v303;
                      v291 = v345;
                      v261 = v346;
                      v295 = v348;
                      v294 = v350;
                      v290 = v344;
                    }

                    else
                    {
                      v299 = 0;
                      LOBYTE(v304) = 0;
                      v305 = 0;
                      v301 = 0;
                      v306 = 0;
                    }

                    [(SASampleStore *)a1 backfillThread:v393 inTask:v395 lastSampleIndex:v376 timestamp:v392 haveName:v295 name:v261 haveDispatchQueueId:(v370 >> 23) & 1 dispatchQueueId:v294 dispatchQueueLabel:v298 leafKernelFrame:v379 hasExclaveInKernelStack:v373 haveUserStack:v277 leafUserFrame:v384 swiftTaskId:v367 leafOfCRootFramesReplacedBySwiftAsync:selfa threadExclavesInfo:0 haveSched:(v281 & 0x100000) != 0 systemCpuTimeNs:v290 userCpuTimeNs:v291 basePriority:v364 scheduledPriority:v360 state:v362 threadQos:v358 threadRequestedQos:v356 threadRequestedQosOverride:v354 threadQosPromote:v352 haveCycIns:(v293 & 0x4000000) != 0 instructions:v296 cycles:v297 haveSnap:(v293 & 0x400000) != 0 ioTier:v299 isIOPassive:v304 isDarwinBG:v305 isSuspended:v301 isGlobalForcedIdle:0 isIdleWorkQueue:0 lastMadeRunnableTime:v306 isOnCore:v389 isOnCoreForLastSampleIndex:v374 cpuNum:v375];
                    [a4 clearThreadData];
                    [a4 clearTaskData];

                    goto LABEL_346;
                  }

                  v278 = *(a2 + 108);
                  if (v278)
                  {
                    [a4 setUserFrames:{malloc_type_calloc(v278, 8uLL, 0x100004000313F17uLL)}];
                    memcpy([a4 userFrames], (a2 + 112), 8 * *(a2 + 108));
                    [a4 setNumUserFrames:*(a2 + 108)];
                    if ((*(a2 + 104) & 0x10) != 0)
                    {
                      if ((*(a2 + 4) & 1) == 0 || ([a4 setIsSwiftAsyncStackTruncated:1], !*(a2 + 7328)))
                      {
                        [a4 setIsUserStackTruncated:1];
                      }
                    }

                    v279 = *(a2 + 104);
                    if ((v279 & 0x80) != 0)
                    {
                      v280 = [(SASampleStore *)a1 addressTranslationsForPid:?];
                      [a4 setAddressTranslations:v280];

                      v279 = *(a2 + 104);
                      v209 = a3;
                    }

                    if ((v279 & 0x100) != 0)
                    {
                      [a4 setCheckLR:1];
                    }

                    if (*(a2 + 4))
                    {
                      [a4 setSwiftAsyncFrames:{malloc_type_calloc(*(a2 + 7328), 8uLL, 0x100004000313F17uLL)}];
                      memcpy([a4 swiftAsyncFrames], (a2 + 112 + 8 * *(a2 + 7324)), 8 * *(a2 + 7328));
                      [a4 setNumSwiftAsyncFrames:*(a2 + 7328)];
                      [a4 setSwiftAsyncStitchIndex:*(a2 + 7320)];
                      if ([a4 numSwiftAsyncFrames])
                      {
                        v276 = -1;
                      }

                      else
                      {
                        v276 = 0;
                      }
                    }

                    else
                    {
                      v276 = 0;
                    }

                    v398 = 0;
                    v384 = [(SATask *)v395 leafFrameAfterAddingStack:a4 leafOfCRootFramesReplacedBySwiftAsync:&v398];
                    selfa = v398;
                    v277 = 1;
                    goto LABEL_325;
                  }

                  goto LABEL_354;
                }
              }

              else
              {
                v265 = 0;
              }

              v266 = 0;
              if ((v264 & 0x40) != 0)
              {
                goto LABEL_288;
              }

              goto LABEL_304;
            }
          }

          else
          {
            v229 = *(a2 + 6632);
            if ((v228 & 0x100) == 0)
            {
              goto LABEL_232;
            }

            v230 = v395;
            if (!v395)
            {
              goto LABEL_232;
            }
          }

          v230[69] = 1;
          v229 = *(a2 + 6632);
          goto LABEL_232;
        }

        v148 = [a1 sampleTimestamps];
        v149 = [v148 lastObject];

        if (!v149)
        {
          goto LABEL_170;
        }

        if (a3)
        {
          v151 = objc_getProperty(a3, v150, 88, 1);
          v152 = v151;
          if (v149 == v151)
          {

            v160 = v149;
            goto LABEL_180;
          }
        }

        else
        {
          v152 = 0;
        }

        v153 = [v149 machAbsTime];

        if (v153 < v89)
        {
LABEL_170:
          if (a3)
          {
            v154 = objc_getProperty(a3, v150, 88, 1);
          }

          else
          {
            v154 = 0;
          }

          v155 = v154;
          if (qword_1EDD02FB0)
          {
            v156 = *__error();
            fprintf(qword_1EDD02FB0, "%'llu Adjusting backward record timestamp %lld to %lld, to match the non-PET timer that triggered it\n", *v86, v377, [v155 machAbsTime]);
            v157 = 0;
            *__error() = v156;
          }

          else
          {
            v157 = 0;
          }

LABEL_190:
          v173 = [v393 threadStates];
          v174 = [v173 lastObject];
          v175 = [v174 endTimestamp];
          v176 = v175;
          v374 = v157;
          if (v175)
          {
            v177 = v175;
          }

          else
          {
            v177 = [v393 creationTimestamp];
          }

          if (v177 && [v177 gt:v155])
          {
            if (v157)
            {
              v178 = [v393 threadStates];
              if ([v178 count])
              {
                v179 = [v393 threadStates];
                v180 = [v179 lastObject];
                v181 = [v180 endSampleIndex];

                if (v181 != v376)
                {
                  v368 = v155;
                  v371 = v149;
                  v182 = *__error();
                  v183 = _sa_logt();
                  if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
                  {
                    v184 = [v393 debugDescription];
                    v185 = [v184 UTF8String];
                    v186 = [v393 threadStates];
                    v187 = [v186 lastObject];
                    v188 = [v187 debugDescription];
                    v189 = [v188 UTF8String];
                    v190 = [v371 debugDescription];
                    *buf = 136315906;
                    *&buf[4] = v185;
                    *&buf[12] = 2080;
                    *&buf[14] = v189;
                    *&buf[22] = 2048;
                    v410 = v376;
                    LOWORD(v411) = 2080;
                    *(&v411 + 2) = [v190 UTF8String];
                    _os_log_error_impl(&dword_1E0E2F000, v183, OS_LOG_TYPE_ERROR, "Thread %s state %s vs last sample index %lu timestamp %s", buf, 0x2Au);
                  }

                  *__error() = v182;
                  v191 = [v393 debugDescription];
                  v192 = v191;
                  v193 = [v191 UTF8String];
                  v194 = [v393 threadStates];
                  v195 = [v194 lastObject];
                  v196 = [v195 debugDescription];
                  v197 = v196;
                  [v196 UTF8String];
                  v198 = [v371 debugDescription];
                  v199 = v198;
                  [v198 UTF8String];
                  _SASetCrashLogMessage(1088, "Thread %s state %s vs last sample index %lu timestamp %s", v200, v201, v202, v203, v204, v205, v193);

                  v155 = v368;
                  v149 = v371;
                  _os_crash();
                  __break(1u);
                  goto LABEL_201;
                }
              }

              else
              {
              }
            }

            v392 = v177;

            if (qword_1EDD02FB0)
            {
              v208 = *__error();
              fprintf(qword_1EDD02FB0, "%'llu Adjusting forward record timestamp %lld to %lld, to match the last thread state\n", *v86, v377, [v392 machAbsTime]);
              v374 = 0;
              *__error() = v208;
            }

            else
            {
              v374 = 0;
            }

            goto LABEL_207;
          }

LABEL_201:
          v392 = v155;
LABEL_207:

          goto LABEL_208;
        }

        v162 = v149;
        if (!a3)
        {
          v163 = 0;
LABEL_181:
          v164 = v163;

          if (v149 == v164)
          {
            if (qword_1EDD02FB0)
            {
              v165 = *__error();
              fprintf(qword_1EDD02FB0, "%'llu Adjusting backward record timestamp %lld to %lld, to match the PET sample that triggered it\n", *v86, v377, [v149 machAbsTime]);
              v172 = __error();
LABEL_188:
              *v172 = v165;
            }
          }

          else if (qword_1EDD02FB0)
          {
            v165 = *__error();
            v166 = qword_1EDD02FB0;
            v167 = *v86;
            v169 = [v149 machAbsTime];
            v170 = a3;
            if (a3)
            {
              v170 = objc_getProperty(a3, v168, 88, 1);
            }

            v171 = v170;
            fprintf(v166, "%'llu Adjusting backward record timestamp %lld to %lld, to match the PET sample it straddles, even though the most recent on-cpu sample was at %lld\n", v167, v377, v169, [v171 machAbsTime]);

            v172 = __error();
            goto LABEL_188;
          }

          v157 = 1;
          v155 = v149;
          goto LABEL_190;
        }

LABEL_180:
        v163 = objc_getProperty(a3, v161, 88, 1);
        goto LABEL_181;
      }

      v129 = [a1 tasksByPid];
      v130 = [MEMORY[0x1E696AD98] numberWithInt:pid_for_thread];
      v131 = [v129 objectForKeyedSubscript:v130];

      if ([v131 count] >= 2)
      {
        v132 = [v131 objectAtIndexedSubscript:{objc_msgSend(v131, "count") - 2}];
        v133 = [v132 threads];
        v134 = [v133 objectForKeyedSubscript:v380];

        v393 = v134;
        if (v134)
        {
          v135 = v132;

          v395 = v135;
LABEL_156:

          goto LABEL_157;
        }
      }

      v393 = [SAThread threadWithId:v6];
      v137 = [v395 execTimestamp];

      if (v137)
      {
        v139 = [v395 execTimestamp];
        if (v393)
        {
          objc_setProperty_atomic(v393, v138, v139, 32);
        }
      }

      [(SATask *)v395 addThread:v393];
      goto LABEL_156;
    }

    v97 = *__error();
    fprintf(qword_1EDD02FB0, "%'llu Adjusting forward record timestamp %lld to %lld\n", *v86, v91, v90);
    goto LABEL_120;
  }

  if ([a1 dataStyle] != 1)
  {
    if ([a1 dataStyle])
    {
      v11 = [a1 sampleTimestamps];
      v12 = [v11 count];

      if (!v12)
      {
        goto LABEL_346;
      }
    }
  }

  v13 = a2;
  v382 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 7360)];
  if (!*(a2 + 7360))
  {
LABEL_55:
    v49 = [[SAThreadExclavesInfo alloc] initWithCallstacks:v382];
    v50 = *(a2 + 7344);
    if (v4)
    {
      v51 = v4[5];
    }

    v52 = *(a2 + 7344);
    v53 = ktrace_get_pid_for_thread();
    if ((v53 & 0x80000000) != 0)
    {
      v66 = *__error();
      v67 = _sa_logt();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = v53;
        *&buf[8] = 2048;
        *&buf[10] = v50;
        _os_log_error_impl(&dword_1E0E2F000, v67, OS_LOG_TYPE_ERROR, "Invalid pid [%d] for exclave info tid 0x%llu", buf, 0x12u);
      }

      *__error() = v66;
    }

    else
    {
      v54 = [(SASampleStore *)a1 lastTaskWithPid:v53];
      v55 = v54;
      if (v54)
      {
        v56 = [v54 threads];
        v57 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v50];
        v58 = [v56 objectForKeyedSubscript:v57];

        v399 = 0;
        v400 = &v399;
        v401 = 0x2020000000;
        v402 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __55__SASampleStore_KPerf__backfillExclaveFromKPerf_state___block_invoke_105;
        v410 = &unk_1E86F60E8;
        v413 = a2;
        v59 = v58;
        *&v411 = v59;
        v60 = v49;
        *(&v411 + 1) = v60;
        v412 = &v399;
        [v59 enumerateThreadStatesBetweenStartTime:0 startSampleIndex:0x7FFFFFFFFFFFFFFFLL endTime:0 endSampleIndex:0x7FFFFFFFFFFFFFFFLL reverseOrder:1 block:buf];
        if (!*(v400 + 6))
        {
          v61 = *__error();
          v62 = _sa_logt();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v206 = [v59 debugDescription];
            v207 = [v60 debugDescription];
            *v405 = 138412546;
            v406 = v206;
            v407 = 2112;
            v408 = v207;
            _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "No thread states in %@ need exclave info %@", v405, 0x16u);
          }

          *__error() = v61;
        }

        _Block_object_dispose(&v399, 8);
      }

      else
      {
        v70 = *__error();
        v71 = _sa_logt();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = v53;
          *&buf[8] = 2048;
          *&buf[10] = v50;
          _os_log_error_impl(&dword_1E0E2F000, v71, OS_LOG_TYPE_ERROR, "No task with pid [%d] for exclave info tid 0x%llx", buf, 0x12u);
        }

        *__error() = v70;
      }
    }

    if ((*a2 & 0x1000000C0) != 0)
    {
      LODWORD(v72) = *__error();
      v73 = _sa_logt();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_115;
      }

      goto LABEL_80;
    }

    goto LABEL_346;
  }

  v14 = 0;
  while (1)
  {
    v16 = [(SASampleStore *)a1 exclaveWithIdentifier:?];
    v390 = v14;
    v17 = *(v13 + 7368) + 2064 * v14;
    v18 = *(v17 + 12);
    if (v18)
    {
      break;
    }

    v27 = 0;
LABEL_51:
    v42 = [[SAExclaveCallstack alloc] initWithExclave:v16 leafFrame:v27];
    [v382 addObject:v42];
    if (qword_1EDD02FB0)
    {
      v43 = *__error();
      v44 = qword_1EDD02FB0;
      v45 = *(a2 + 8);
      v46 = *(a2 + 7360);
      v47 = [v42 debugDescription];
      v48 = v47;
      v391 = v390 + 1;
      fprintf(v44, "%'llu %zu/%zu %s\n", v45, v391, v46, [v47 UTF8String]);

      *__error() = v43;
    }

    else
    {
      v391 = v390 + 1;
    }

    v13 = a2;
    v14 = v391;
    v4 = a3;
    if (v391 >= *(a2 + 7360))
    {
      goto LABEL_55;
    }
  }

  v19 = 0;
  v20 = 0;
  v394 = v17 + 8;
  v397 = v17 + 16;
  v21 = -1;
  while (1)
  {
    v22 = *(v397 + 8 * (v18 + v21));
    if (v19)
    {
      break;
    }

    if (v16)
    {
      v28 = objc_getProperty(v16, v15, 48, 1);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v403[0] = MEMORY[0x1E69E9820];
    v403[1] = 3221225472;
    v403[2] = __55__SASampleStore_KPerf__backfillExclaveFromKPerf_state___block_invoke_99;
    v403[3] = &__block_descriptor_40_e21_B24__0__SAFrame_8_B16l;
    v403[4] = v22;
    v24 = [v29 objectsPassingTest:v403];
    v27 = [v24 anyObject];
LABEL_30:

    if (!v27)
    {
LABEL_31:
      v31 = [[SAExclaveFrame alloc] initWithExclave:v16];
      v32 = v31;
      v27 = v31;
      if (v31)
      {
        v31[2] = v22;
      }

      v33 = [v16 loadInfos];
      if (v33)
      {

        goto LABEL_36;
      }

      v34 = [v16 sharedCache];
      v35 = v34 == 0;

      if (!v35)
      {
LABEL_36:
        v37 = [v16 loadInfos];
        v38 = [v16 sharedCache];
        v39 = [SABinaryLoadInfo binaryLoadInfoForAddress:v22 inBinaryLoadInfos:v37 libraryCache:v38];
        if (v27)
        {
          objc_storeWeak(v32 + 3, v39);
        }
      }

      if (v27)
      {
        v27[4] = v19;
      }

      if (v19)
      {
        [(SAFrame *)v19 _addChildFrame:v27];
      }

      else
      {
        if (v16)
        {
          v40 = objc_getProperty(v16, v36, 48, 1);
        }

        else
        {
          v40 = 0;
        }

        v41 = v40;
        [v41 addObject:v27];
      }
    }

    ++v20;
    v18 = *(v394 + 4);
    --v21;
    v19 = v27;
    if (v20 >= v18)
    {
      goto LABEL_51;
    }
  }

  v23 = v19[5];
  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = v23;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
    v404[0] = MEMORY[0x1E69E9820];
    v404[1] = 3221225472;
    v404[2] = __55__SASampleStore_KPerf__backfillExclaveFromKPerf_state___block_invoke;
    v404[3] = &__block_descriptor_40_e21_B24__0__SAFrame_8_B16l;
    v404[4] = v22;
    v26 = [v25 objectsPassingTest:v404];
    v27 = [v26 anyObject];

LABEL_29:
    v29 = v24;
    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v24;
    if (v22 == [v30 address])
    {
      v27 = v30;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_29;
  }

  v73 = *__error();
  v72 = _sa_logt();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
  {
    ClassName = object_getClassName(v24);
    *buf = 136315138;
    *&buf[4] = ClassName;
    _os_log_error_impl(&dword_1E0E2F000, v72, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
  }

  *__error() = v73;
  v105 = object_getClassName(v24);
  _SASetCrashLogMessage(819, "child is %s", v106, v107, v108, v109, v110, v111, v105);
  _os_crash();
  __break(1u);
LABEL_115:
  v112 = *a2;
  *buf = 134217984;
  *&buf[4] = v112;
  _os_log_fault_impl(&dword_1E0E2F000, v73, OS_LOG_TYPE_FAULT, "Exclave callstack provided with other stack info: 0x%llx", buf, 0xCu);
LABEL_80:

  v74 = __error();
LABEL_81:
  *v74 = v72;
LABEL_346:
  objc_autoreleasePoolPop(context);
LABEL_347:
  v307 = *MEMORY[0x1E69E9840];
}

- (void)backfillTask:(unint64_t)a3 lastSampleIndex:(void *)a4 timestamp:(char)a5 haveSnap:(uint64_t)a6 terminatedThreadsUserTimeInNs:(uint64_t)a7 terminatedThreadsSystemTimeInNs:(uint64_t)a8 terminatedThreadsCycles:(uint64_t)a9 terminatedThreadsInstructions:(int)a10 suspendCount:(int)a11 pageins:(char)a12 isDarwinBG:(char)a13 isForeground:(char)a14 isBoosted:(char)a15 isDirty:(char)a16 isRunningBoardActive:(char)a17 hasRunningBoardAssertion:(char)a18 haveWQFlags:(char)a19 wqExceededTotalThreadLimit:(char)a20 wqExceededConstrainedThreadLimit:(char)a21 haveCoopAndActiveConstrWQFlags:(char)a22 wqExceededCooperativeThreadLimit:(char)a23 wqExceededActiveConstrainedThreadLimit:(char)a24 haveMem:(uint64_t)a25 taskSizeInBytes:(char)a26 haveLatencyQos:(int)a27 latencyQos:(char)a28 haveRunawayMitigated:(char)a29 isRunawayMitigated:(int)a30 effectiveJetsamPriority:
{
  if (a1)
  {
    v32 = [a2 exitTimestamp];

    if (v32)
    {
      v33 = [a2 exitTimestamp];
      v34 = [v33 lt:a4];

      v36 = v34 ^ 1;
      if (!a2)
      {
        v36 = 1;
      }

      if ((v36 & 1) == 0)
      {
        objc_setProperty_atomic(a2, v35, a4, 240);
      }
    }

    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = a4;
LABEL_25:
      v77 = v37;
      v50 = [SATaskState stateWithStartTimestamp:"stateWithStartTimestamp:endTimestamp:startSampleIndex:endSampleIndex:" endTimestamp:? startSampleIndex:? endSampleIndex:?];
      if ((a28 & 1) == 0)
      {
        v51 = [a2 taskStates];
        v52 = [v51 lastObject];

        if (v52)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) == 0 || (v52[139])
          {
            if (v50)
            {
              *(v50 + 139) = 1;
            }

            if ([v52 isRunawayMitigated])
            {
              v53 = [v50 ssFlags] | 0x8000000000;
            }

            else
            {
              v53 = [v50 ssFlags] & 0xFFFFFF7FFFFFFFFFLL;
            }

            if (v50)
            {
              *(v50 + 128) = v53;
            }
          }
        }
      }

      if (a30 == 0x80000000)
      {
        v60 = [a2 taskStates];
        v61 = [v60 lastObject];

        if (v61)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v61 effectiveJetsamPriority] != 0x80000000)
          {
            v62 = [v61 effectiveJetsamPriority];
            if (v50)
            {
              *(v50 + 32) = v62;
            }
          }
        }
      }

      if (a2)
      {
        [a2[1] addObject:v50];
        v63 = [a2[1] count] - 1;
      }

      else
      {
        v63 = 0;
      }

      if (qword_1EDD02FB0)
      {
        v71 = *__error();
        v72 = qword_1EDD02FB0;
        v64 = [a4 machAbsTime];
        v65 = [a2 pid];
        v66 = [v50 startSampleIndex];
        v67 = [v50 endSampleIndex];
        v68 = [v50 startTimestamp];
        v69 = [v68 machAbsTime];
        v70 = [v50 endTimestamp];
        fprintf(v72, "%'llu Created taskState (index %lu) for task [%d] (sample index %ld-%ld, machabs %llu-%llu)\n", v64, v63, v65, v66, v67, v69, [v70 machAbsTime]);

        *__error() = v71;
      }

LABEL_51:
      v108[0] = 0;
      v108[1] = v108;
      v108[2] = 0x2020000000;
      v109 = a5;
      v106[0] = 0;
      v106[1] = v106;
      v106[2] = 0x2020000000;
      v107 = a24;
      v104[0] = 0;
      v104[1] = v104;
      v104[2] = 0x2020000000;
      v105 = a26;
      v102[0] = 0;
      v102[1] = v102;
      v102[2] = 0x2020000000;
      v103 = a28;
      v100[0] = 0;
      v100[1] = v100;
      v100[2] = 0x2020000000;
      v101 = a30 != 0x80000000;
      v98[0] = 0;
      v98[1] = v98;
      v98[2] = 0x2020000000;
      v99 = 0;
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __593__SASampleStore_KPerfPrivate__backfillTask_lastSampleIndex_timestamp_haveSnap_terminatedThreadsUserTimeInNs_terminatedThreadsSystemTimeInNs_terminatedThreadsCycles_terminatedThreadsInstructions_suspendCount_pageins_isDarwinBG_isForeground_isBoosted_isDirty_isRunningBoardActive_hasRunningBoardAssertion_haveWQFlags_wqExceededTotalThreadLimit_wqExceededConstrainedThreadLimit_haveCoopAndActiveConstrWQFlags_wqExceededCooperativeThreadLimit_wqExceededActiveConstrainedThreadLimit_haveMem_taskSizeInBytes_haveLatencyQos_latencyQos_haveRunawayMitigated_isRunawayMitigated_effectiveJetsamPriority___block_invoke;
      v80[3] = &unk_1E86F6600;
      v80[14] = a7;
      v80[15] = a8;
      v81 = a10;
      v82 = a11;
      v85 = a12;
      v86 = a13;
      v87 = a14;
      v88 = a15;
      v89 = a18;
      v90 = a19;
      v91 = a20;
      v92 = a21;
      v93 = a22;
      v94 = a23;
      v95 = a16;
      v96 = a17;
      v80[8] = v98;
      v80[9] = v106;
      v80[16] = a9;
      v80[17] = a25;
      v80[10] = v104;
      v80[11] = v102;
      v97 = a29;
      v80[12] = v100;
      v80[13] = a6;
      v83 = a27;
      v84 = a30;
      v80[7] = v108;
      v80[5] = a2;
      v80[6] = a1;
      v80[4] = a4;
      [a2 enumerateTaskStatesBetweenStartTime:0 startSampleIndex:0x7FFFFFFFFFFFFFFFLL endTime:0 endSampleIndex:0x7FFFFFFFFFFFFFFFLL reverseOrder:1 block:v80];
      _Block_object_dispose(v98, 8);
      _Block_object_dispose(v100, 8);
      _Block_object_dispose(v102, 8);
      _Block_object_dispose(v104, 8);
      _Block_object_dispose(v106, 8);
      _Block_object_dispose(v108, 8);

      return;
    }

    v38 = [a2 taskStates];
    v39 = [v38 lastObject];

    if (v39)
    {
      if ([v39 endSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v40 = 0;
LABEL_18:
        v43 = [a1 sampleTimestamps];
        v44 = [v43 objectAtIndexedSubscript:v40];
        goto LABEL_21;
      }

      v40 = [v39 endSampleIndex] + 1;
      if (v40 <= a3)
      {
        goto LABEL_18;
      }

      v43 = a4;
    }

    else
    {
      v41 = [a2 execTimestamp];
      if (!v41)
      {
        v45 = [a1 sampleTimestamps];
        v46 = [v45 objectAtIndexedSubscript:0];

        v37 = v46;
        goto LABEL_25;
      }

      v40 = [a1 indexOfFirstSampleOnOrAfterTimestamp:v41];
      v42 = v41;
      v43 = v42;
      if (v40 <= a3)
      {
        v44 = v42;
LABEL_21:

        v37 = v44;
        if (v40 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_25;
        }

LABEL_22:
        v77 = v37;
        v47 = [a2 taskStates];
        v48 = [v47 count];

        if (v48)
        {
          if (qword_1EDD02FB0)
          {
            v49 = *__error();
            fprintf(qword_1EDD02FB0, "%'llu Not creating taskState for task [%d] at machabs %llu due to already having a task state for sample index %lu\n", [a4 machAbsTime], objc_msgSend(a2, "pid"), objc_msgSend(a4, "machAbsTime"), a3);
            *__error() = v49;
          }
        }

        else if (qword_1EDD02FB0)
        {
          v54 = *__error();
          v55 = qword_1EDD02FB0;
          v56 = [a4 machAbsTime];
          v57 = [a2 pid];
          v58 = [a4 machAbsTime];
          v59 = [a2 execTimestamp];
          fprintf(v55, "%'llu Not creating taskState for task [%d] at machabs %llu due to the task being created after sample index %lu at machabs %llu\n", v56, v57, v58, a3, [v59 machAbsTime]);

          *__error() = v54;
        }

        goto LABEL_51;
      }

      v39 = 0;
    }

    v37 = v43;
    goto LABEL_22;
  }
}

- (void)backfillThread:(void *)a3 inTask:(unint64_t)a4 lastSampleIndex:(void *)a5 timestamp:(char)a6 haveName:(_BYTE *)a7 name:(int)a8 haveDispatchQueueId:(uint64_t)a9 dispatchQueueId:(uint64_t)a10 dispatchQueueLabel:(void *)a11 leafKernelFrame:(unsigned __int8)a12 hasExclaveInKernelStack:(char)a13 haveUserStack:(void *)a14 leafUserFrame:(uint64_t)a15 swiftTaskId:(uint64_t)a16 leafOfCRootFramesReplacedBySwiftAsync:(uint64_t)a17 threadExclavesInfo:(char)a18 haveSched:(uint64_t)a19 systemCpuTimeNs:(uint64_t)a20 userCpuTimeNs:(int)a21 basePriority:(int)a22 scheduledPriority:(int)a23 state:(char)a24 threadQos:(char)a25 threadRequestedQos:(char)a26 threadRequestedQosOverride:(char)a27 threadQosPromote:(char)a28 haveCycIns:(uint64_t)a29 instructions:(uint64_t)a30 cycles:(char)a31 haveSnap:(char)a32 ioTier:(char)a33 isIOPassive:(char)a34 isDarwinBG:(char)a35 isSuspended:(char)a36 isGlobalForcedIdle:(char)a37 isIdleWorkQueue:(uint64_t)a38 lastMadeRunnableTime:(char)a39 isOnCore:(unsigned __int8)a40 isOnCoreForLastSampleIndex:(unsigned int)a41 cpuNum:
{
  v206 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_109;
  }

  v42 = [a2 exitTimestamp];

  if (a2 && v42)
  {
    objc_setProperty_atomic(a2, v43, a5, 40);
  }

  v44 = [a3 exitTimestamp];

  if (v44)
  {
    v45 = [a3 exitTimestamp];
    v46 = [v45 lt:a5];

    v48 = v46 ^ 1;
    if (!a3)
    {
      v48 = 1;
    }

    if ((v48 & 1) == 0)
    {
      objc_setProperty_atomic(a3, v47, a5, 240);
    }
  }

  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v143 = a5;
    v49 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_53;
  }

  v50 = [a2 threadStates];
  v51 = [v50 lastObject];

  v135 = v51;
  if (!v51)
  {
    v52 = [a2 creationTimestamp];
    if (v52)
    {
      v49 = [a1 indexOfFirstSampleOnOrAfterTimestamp:v52];
      if (v49 > a4)
      {
        v143 = a5;

        v53 = 0;
        goto LABEL_20;
      }

      v54 = [a1 sampleTimestamps];
      v143 = [v54 objectAtIndexedSubscript:v49];
    }

    else
    {
      v54 = [a1 sampleTimestamps];
      v143 = [v54 objectAtIndexedSubscript:0];
      v52 = 0;
      v49 = 0;
    }

    goto LABEL_25;
  }

  if ([v51 endSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v49 = [v51 endSampleIndex] + 1;
    if (v49 <= a4)
    {
      goto LABEL_21;
    }

    v143 = a5;
    v53 = v51;
LABEL_20:

    goto LABEL_50;
  }

  v49 = 0;
LABEL_21:
  v52 = [a1 sampleTimestamps];
  v143 = [v52 objectAtIndexedSubscript:v49];
LABEL_25:

  if (!a39 || v49 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v55 = v143;
    goto LABEL_49;
  }

  if (v49 < a4 || (a40 & 1) == 0)
  {
    v56 = [SAThreadStateKPerf stateWithStartTimestamp:v143 endTimestamp:a5 startSampleIndex:v49 endSampleIndex:a4 - a40];
    v58 = v56;
    if (a11)
    {
      if (v56)
      {
        objc_setProperty_atomic(v56, v57, a11, 80);
      }

      v59 = [a1 kperfTriggers];
      v60 = [v59 count];

      if (!v60)
      {
        *(a1 + 32) = [a1 numSamples] + 1;
        v61 = [a1 startTime];

        if (!v61)
        {
          objc_storeStrong((a1 + 40), v143);
        }

        objc_storeStrong((a1 + 48), a5);
      }
    }

    if (a12)
    {
      [v58 setNeedsExclave:1];
    }

    [(SAThreadState *)v58 setCpuNum:a41];
    if (a2)
    {
      [a2[1] addObject:v58];
      v131 = [a2[1] count] - 1;
    }

    else
    {
      v131 = 0;
    }

    if (a40)
    {
      v49 = a4;
    }

    else
    {
      v49 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v55 = a5;

    if (qword_1EDD02FB0)
    {
      v133 = v58;
      v127 = *__error();
      v129 = qword_1EDD02FB0;
      v128 = [v55 machAbsTime];
      v125 = [a2 threadId];
      v124 = [v58 startSampleIndex];
      v123 = [v58 endSampleIndex];
      v144 = [v58 startTimestamp];
      v62 = [v144 machAbsTime];
      v63 = [v58 endTimestamp];
      v64 = [v63 machAbsTime];
      v65 = [v58 leafKernelFrame];
      fprintf(v129, "%'llu Created off-core threadState (index %lu) for thread 0x%llx (sample index %ld-%ld, machabs %llu-%llu) with kernel stack (leaf frame 0x%llx) exclaves:%d due to on-core thread state applying to multiple sample indexes\n", v128, v131, v125, v124, v123, v62, v64, [v65 address], a12);

      v58 = v133;
      *__error() = v127;
    }

LABEL_49:
    v143 = v55;
    if (v49 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_53;
    }

LABEL_50:
    v66 = [a2 threadStates];
    v67 = [v66 count];

    if (v67)
    {
      if (qword_1EDD02FB0)
      {
        v68 = *__error();
        fprintf(qword_1EDD02FB0, "%'llu Not creating threadState for thread 0x%llx at machabs %llu due to already having a thread state for sample index %lu (kernel leaf frame 0x%llx, user leaf frame 0x%llx)\n", [a5 machAbsTime], objc_msgSend(a2, "threadId"), objc_msgSend(a5, "machAbsTime"), a4, objc_msgSend(a11, "address"), objc_msgSend(a14, "address"));
        *__error() = v68;
      }
    }

    else if (qword_1EDD02FB0)
    {
      v101 = *__error();
      v102 = qword_1EDD02FB0;
      v103 = [a5 machAbsTime];
      v104 = [a2 threadId];
      v105 = [a5 machAbsTime];
      v106 = [a2 creationTimestamp];
      fprintf(v102, "%'llu Not creating threadState for thread 0x%llx at machabs %llu due to the thread being created after sample index %lu at machabs %llu (kernel leaf frame 0x%llx, user leaf frame 0x%llx)\n", v103, v104, v105, a4, [v106 machAbsTime], objc_msgSend(a11, "address"), objc_msgSend(a14, "address"));

      *__error() = v101;
    }

    goto LABEL_78;
  }

  if (![v143 eq:a5])
  {
    v107 = *__error();
    v108 = _sa_logt();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      v109 = [v143 debugDescription];
      v110 = [v109 UTF8String];
      v111 = [a5 debugDescription];
      *buf = 136315394;
      *&buf[4] = v110;
      *&buf[12] = 2080;
      *&buf[14] = [v111 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v108, OS_LOG_TYPE_ERROR, "Start timestamp %s vs %s", buf, 0x16u);
    }

    *__error() = v107;
    v112 = [v143 debugDescription];
    v113 = v112;
    v114 = [v112 UTF8String];
    v115 = [a5 debugDescription];
    v116 = v115;
    [v115 UTF8String];
    _SASetCrashLogMessage(4580, "Start timestamp %s vs %s", v117, v118, v119, v120, v121, v122, v114);

    _os_crash();
    __break(1u);
  }

LABEL_53:
  if (a11 || !a17 || a39)
  {
    v70 = [SAThreadStateKPerf stateWithStartTimestamp:v143 endTimestamp:a5 startSampleIndex:v49 endSampleIndex:a4];
    [(SAThreadState *)v70 setCpuNum:a41];
    if (a39)
    {
      if (!v70)
      {
        if (a11)
        {
LABEL_64:
          v72 = [a1 kperfTriggers];
          v73 = [v72 count];

          if (!v73)
          {
            *(a1 + 32) = [a1 numSamples] + 1;
            v74 = [a1 startTime];

            if (!v74)
            {
              objc_storeStrong((a1 + 40), v143);
            }

            objc_storeStrong((a1 + 48), a5);
          }
        }

LABEL_68:
        if (a12)
        {
          [v70 setNeedsExclave:1];
        }

        if (a2)
        {
          [a2[1] addObject:v70];
          v136 = [a2[1] count] - 1;
        }

        else
        {
          v136 = 0;
        }

        if (qword_1EDD02FB0)
        {
          v130 = *__error();
          v134 = qword_1EDD02FB0;
          v132 = [a5 machAbsTime];
          if ([v70 isRunning])
          {
            v75 = "on";
          }

          else
          {
            v75 = "off";
          }

          v76 = [a2 threadId];
          v77 = [v70 startSampleIndex];
          v78 = [v70 endSampleIndex];
          v79 = [v70 startTimestamp];
          v80 = [v79 machAbsTime];
          v81 = [v70 endTimestamp];
          v82 = [v81 machAbsTime];
          v83 = [v70 leafKernelFrame];
          fprintf(v134, "%'llu Created %s-core threadState (index %lu) for thread 0x%llx (sample index %ld-%ld, machabs %llu-%llu) with kernel leaf frame 0x%llx exclaves:%d\n", v132, v75, v136, v76, v77, v78, v80, v82, [v83 address], a12);

          *__error() = v130;
        }

        goto LABEL_78;
      }

      v70[19] |= 0x40u;
    }

    if (a11)
    {
      if (v70)
      {
        objc_setProperty_atomic(v70, v71, a11, 80);
      }

      goto LABEL_64;
    }

    goto LABEL_68;
  }

  if (qword_1EDD02FB0)
  {
    v69 = *__error();
    fprintf(qword_1EDD02FB0, "%'llu Not creating threadState for thread 0x%llx at machabs %llu due to only have exclave info to backfill\n", [a5 machAbsTime], objc_msgSend(a2, "threadId"), objc_msgSend(a5, "machAbsTime"));
    *__error() = v69;
  }

LABEL_78:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v205 = a6;
  if (a7 && *a7)
  {
    v139 = SANSStringForCString(a7);
  }

  else
  {
    v139 = 0;
  }

  v84 = 0;
  v202[0] = 0;
  v202[1] = v202;
  v202[2] = 0x2020000000;
  v203 = a8;
  if (a9)
  {
    v141 = 0;
    if (a8)
    {
      v85 = [a3 dispatchQueues];
      v86 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a9];
      v84 = [v85 objectForKeyedSubscript:v86];

      if (!v84)
      {
        v84 = [SADispatchQueue dispatchQueueWithId:a9];
        [(SATask *)a3 addDispatchQueue:v84];
      }

      if (a10)
      {
        v87 = [v84 dispatchQueueLabel];
        v88 = v87 == 0;

        if (v88)
        {
          v90 = SANSStringForCString(a10);
          if (v90 && v84)
          {
            objc_setProperty_atomic_copy(v84, v89, v90, 32);
          }
        }
      }

      v141 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }
  }

  else
  {
    v141 = 0;
  }

  v200[0] = 0;
  v200[1] = v200;
  v200[2] = 0x2020000000;
  v201 = a15 != 0;
  if (a15)
  {
    v91 = [a3 swiftTasks];
    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a15];
    v93 = [v91 objectForKeyedSubscript:v92];

    if (!v93)
    {
      v93 = [(SADispatchQueue *)SASwiftTask dispatchQueueWithId:a15];
      [(SATask *)a3 addSwiftTask:v93];
    }

    v126 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v93 = 0;
    v126 = 0;
  }

  v198[0] = 0;
  v198[1] = v198;
  v198[2] = 0x2020000000;
  v199 = a13;
  v196[0] = 0;
  v196[1] = v196;
  v196[2] = 0x2020000000;
  v197 = a18;
  v194[0] = 0;
  v194[1] = v194;
  v194[2] = 0x2020000000;
  v195 = a28;
  v192[0] = 0;
  v192[1] = v192;
  v192[2] = 0x2020000000;
  v193 = a31;
  v190[0] = 0;
  v190[1] = v190;
  v190[2] = 0x2020000000;
  v191 = a17 != 0;
  v188[0] = 0;
  v188[1] = v188;
  v188[2] = 0x2020000000;
  v189 = 0;
  v149[0] = MEMORY[0x1E69E9820];
  v149[1] = 3221225472;
  v149[2] = __616__SASampleStore_KPerfPrivate__backfillThread_inTask_lastSampleIndex_timestamp_haveName_name_haveDispatchQueueId_dispatchQueueId_dispatchQueueLabel_leafKernelFrame_hasExclaveInKernelStack_haveUserStack_leafUserFrame_swiftTaskId_leafOfCRootFramesReplacedBySwiftAsync_threadExclavesInfo_haveSched_systemCpuTimeNs_userCpuTimeNs_basePriority_scheduledPriority_state_threadQos_threadRequestedQos_threadRequestedQosOverride_threadQosPromote_haveCycIns_instructions_cycles_haveSnap_ioTier_isIOPassive_isDarwinBG_isSuspended_isGlobalForcedIdle_isIdleWorkQueue_lastMadeRunnableTime_isOnCore_isOnCoreForLastSampleIndex_cpuNum___block_invoke;
  v149[3] = &unk_1E86F65D8;
  v149[4] = a5;
  v149[5] = a2;
  v161 = buf;
  newValuea = v139;
  v150 = newValuea;
  v162 = v188;
  v163 = v202;
  v94 = v84;
  v151 = v94;
  v95 = v141;
  v164 = v198;
  v152 = v95;
  v153 = a14;
  v154 = a16;
  v155 = a1;
  v96 = v143;
  v156 = v96;
  v165 = v200;
  v170 = a15;
  v97 = v93;
  v157 = v97;
  v98 = v126;
  v175 = a23;
  v176 = a21;
  v177 = a22;
  v178 = a24;
  v179 = a25;
  v180 = a26;
  v181 = a27;
  v172 = a20;
  v173 = a29;
  v174 = a30;
  v167 = v194;
  v168 = v192;
  v182 = a32;
  v183 = a33;
  v184 = a35;
  v185 = a34;
  v186 = a37;
  v187 = a36;
  v158 = v98;
  v159 = a38;
  v171 = a19;
  v169 = v190;
  v166 = v196;
  v160 = a17;
  [a2 enumerateThreadStatesBetweenStartTime:0 startSampleIndex:0x7FFFFFFFFFFFFFFFLL endTime:0 endSampleIndex:0x7FFFFFFFFFFFFFFFLL reverseOrder:1 block:v149];
  if (v94 && [v95 count])
  {
    if (v94[24])
    {
      v99 = 0;
    }

    else
    {
      v99 = v94 + 24;
    }

    [(SARecipe *)v94 addStates:v95 hasConcurrentExecution:v99];
  }

  if (v97 && [v98 count])
  {
    [(SARecipe *)v97 addStates:v98 hasConcurrentExecution:0];
  }

  _Block_object_dispose(v188, 8);
  _Block_object_dispose(v190, 8);
  _Block_object_dispose(v192, 8);
  _Block_object_dispose(v194, 8);
  _Block_object_dispose(v196, 8);
  _Block_object_dispose(v198, 8);

  _Block_object_dispose(v200, 8);
  _Block_object_dispose(v202, 8);

  _Block_object_dispose(buf, 8);
LABEL_109:
  v100 = *MEMORY[0x1E69E9840];
}

- (id)applySharedCacheToTask:(uint64_t)a3 uuid:(uint64_t)a4 slide:(uint64_t)a5 slidBaseAddress:
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = [a2 sharedCache];
    v11 = v10;
    if (!v10)
    {
      v12 = [(SASampleStore *)a1 sharedCacheWithUUID:a3 slide:a4 slidBaseAddress:a5];
      if (a2)
      {
        if (a2[74])
        {
          v14 = *__error();
          v15 = _sa_logt();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            v26 = [v12 debugDescription];
            v27 = [a2 debugDescription];
            v32 = 138412546;
            *v33 = v26;
            *&v33[8] = 2112;
            *&v33[10] = v27;
            _os_log_fault_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_FAULT, "shared cache %@, though task %@ has no shared cache", &v32, 0x16u);
          }

          v16 = 0;
          *__error() = v14;
          goto LABEL_24;
        }

        objc_setProperty_atomic(a2, v13, v12, 264);
      }

      v20 = v12;
      v12 = v20;
LABEL_23:
      v16 = v20;
LABEL_24:

      goto LABEL_25;
    }

    if ([v10 matchesUUID:a3 slide:a4 slidBaseAddress:a5])
    {
      v12 = 0;
LABEL_22:
      v20 = v11;
      goto LABEL_23;
    }

    v12 = uuidForBytes(a3);
    v17 = [v11 uuid];
    v18 = [v17 isEqual:v12];

    if (v18)
    {
      v19 = [v11 slidBaseAddress];
      if (a5 != -1 && v19 == -1)
      {
        [(SASharedCache *)v11 setSlidBaseAddress:a5];
        goto LABEL_22;
      }

      v21 = [v11 slide];
      if (a4 != -1 && v21 == -1)
      {
        [(SASharedCache *)v11 setSlide:a4];
        goto LABEL_22;
      }

      v22 = *__error();
      v23 = _sa_logt();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v28 = [a2 sharedCache];
        v29 = [v28 debugDescription];
        v32 = 68158722;
        *v33 = 16;
        *&v33[4] = 2096;
        *&v33[6] = a3;
        *&v33[14] = 2048;
        *&v33[16] = a4;
        v34 = 2048;
        v35 = a5;
        v36 = 2112;
        v37 = v29;
        _os_log_fault_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_FAULT, "Mismatching shared cache %{uuid_t}.16P slide 0x%llx slideBaseAddress 0x%llx, but task already has %@", &v32, 0x30u);
      }
    }

    else
    {
      v22 = *__error();
      v23 = _sa_logt();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v30 = [a2 sharedCache];
        v31 = [v30 debugDescription];
        v32 = 68158722;
        *v33 = 16;
        *&v33[4] = 2096;
        *&v33[6] = a3;
        *&v33[14] = 2048;
        *&v33[16] = a4;
        v34 = 2048;
        v35 = a5;
        v36 = 2112;
        v37 = v31;
        _os_log_fault_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_FAULT, "Mismatching shared cache %{uuid_t}.16P slide 0x%llx slideBaseAddress 0x%llx, but task already has %@", &v32, 0x30u);
      }
    }

    *__error() = v22;
    goto LABEL_22;
  }

  v16 = 0;
LABEL_25:
  v24 = *MEMORY[0x1E69E9840];

  return v16;
}

- (uint64_t)checkDyldInfoCompletion:(uint64_t)result
{
  v39 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (*(self + 9) == 1)
    {
      v3 = result;
      if ((*(self + 10) & 1) != 0 || self[5] + 1 <= 1)
      {
        v4 = objc_getProperty(self, self, 48, 1);
        if (v4 || self[5] + 1 < 2)
        {
        }

        else
        {
          v33 = objc_getProperty(self, v5, 24, 1);
          if (v33)
          {
            v34 = self[4];

            if (v34)
            {
              v35 = *__error();
              v36 = _sa_logt();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v37 = [self debugDescription];
                *buf = 136315138;
                *&buf[4] = [v37 UTF8String];
                _os_log_error_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_ERROR, "bad complete dyld info: %s", buf, 0xCu);
              }

              *__error() = v35;
              goto LABEL_31;
            }
          }
        }

        if (qword_1EDD02FB0)
        {
          v7 = *__error();
          v8 = qword_1EDD02FB0;
          v9 = [self debugDescription];
          fprintf(v8, "%'llu %s\n\n", 0, [v9 UTF8String]);

          *__error() = v7;
        }

        v10 = objc_getProperty(self, v6, 16, 1);
        v11 = self[4];
        v13 = objc_getProperty(self, v12, 24, 1);
        v14 = v13;
        if (self[1])
        {
          *buf = 0uLL;
          [v13 getUUIDBytes:buf];
          v15 = [(SASampleStore *)v3 applySharedCacheToTask:v10 uuid:buf slide:-1 slidBaseAddress:v11];
        }

        else
        {
          v16 = [v10 sharedCache];
          v18 = v16;
          if (!v16 || [v16 startAddress] == -1 || v11 < objc_msgSend(v18, "startAddress") || v11 >= objc_msgSend(v18, "endAddress"))
          {
            v19 = objc_getProperty(self, v17, 48, 1);
            if (v19 && (v21 = v19, v22 = [objc_getProperty(self v20], v21, v22))
            {
              Property = objc_getProperty(self, v23, 48, 1);
              v25 = SACachedNSString(Property);
            }

            else
            {
              v25 = 0;
            }

            if ([v25 isAbsolutePath])
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }

            v27 = [SABinary binaryWithUUID:v14 absolutePath:v26];
            v28 = +[SABinaryLoadInfo binaryLoadInfoWithBinary:loadAddress:isInKernelAddressSpace:exclave:](SABinaryLoadInfo, v27, v11, [v10 pid] == 0, 0);
            v29 = [v27 path];

            if (v25 && !v29 && v27)
            {
              objc_setProperty_atomic_copy(v27, v30, v25, 80);
            }

            v31 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v28, 0}];
            [(SATask *)v10 addImageInfos:v31];
          }
        }

LABEL_31:
        result = 1;
        goto LABEL_32;
      }
    }

    result = 0;
  }

LABEL_32:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_addKPerfDataFromKTraceSession:(uint64_t)a3 afterMachAbsTime:(uint64_t)a4 beforeMachAbsTime:(int)a5 petTimerID:(uint64_t)a6 ktraceDataUnavailable:
{
  v38 = objc_alloc_init(SAFrameIterator);
  [(SAFrameIterator *)v38 setBacktracer:1];
  v36 = a6;
  objc_opt_self();
  v12 = [SAKPerfState alloc];
  if (v12)
  {
    v188.receiver = v12;
    v188.super_class = SAKPerfState;
    v13 = objc_msgSendSuper2(&v188, sel_init);
    v14 = v13;
    if (v13)
    {
      v13[5] = a2;
      *(v13 + 9) = a5;
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v16 = v14[1];
      v14[1] = v15;

      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v18 = v14[3];
      v14[3] = v17;

      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = v14[6];
      v14[6] = v19;

      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v22 = v14[7];
      v14[7] = v21;
    }
  }

  else
  {
    v14 = 0;
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v188.receiver = 0;
  v188.super_class = &v188;
  v189 = 0x2020000000;
  v190 = 0;
  [a1 kPerfPETSampleIntervalLimit];
  v25 = v24;
  v26 = [a1 machTimebase];
  v27 = 0;
  if (HIDWORD(v26))
  {
    if (v26)
    {
      v27 = (v25 * 1000000000.0);
      if (HIDWORD(v26) != v26)
      {
        v27 = __udivti3();
      }
    }
  }

  v179 = MEMORY[0x1E69E9820];
  v180 = 3221225472;
  v181 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke;
  v182 = &unk_1E86F6110;
  v186 = a4;
  v187 = a3;
  v185 = a2;
  v183 = a1;
  v184 = v14;
  ktrace_events_range();
  v168 = MEMORY[0x1E69E9820];
  v169 = 3221225472;
  v170 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_2;
  v171 = &unk_1E86F6138;
  v175 = a2;
  v176 = a4;
  v177 = a3;
  v178 = v27;
  v174 = &v188;
  v172 = a1;
  v173 = v184;
  ktrace_events_single();
  v159 = MEMORY[0x1E69E9820];
  v160 = 3221225472;
  v161 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_3;
  v162 = &unk_1E86F6110;
  v166 = a4;
  v167 = a3;
  v165 = a2;
  v163 = a1;
  v164 = v173;
  ktrace_events_single();
  v149 = MEMORY[0x1E69E9820];
  v150 = 3221225472;
  v151 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_4;
  v152 = &unk_1E86F6160;
  v156 = a2;
  v157 = a4;
  v158 = a3;
  v153 = v23;
  v154 = a1;
  v155 = v164;
  ktrace_events_single();
  v141 = MEMORY[0x1E69E9820];
  v142 = 3221225472;
  v143 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_162;
  v144 = &unk_1E86F6188;
  v146 = a2;
  v147 = a4;
  v148 = a3;
  v145 = v155;
  ktrace_events_single();
  v131 = MEMORY[0x1E69E9820];
  v132 = 3221225472;
  v133 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_2_163;
  v134 = &unk_1E86F61B0;
  v139 = a4;
  v140 = a3;
  v138 = a2;
  v135 = a1;
  v136 = v145;
  v137 = v38;
  ktrace_kperf();
  v122 = MEMORY[0x1E69E9820];
  v123 = 3221225472;
  v124 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_167;
  v125 = &unk_1E86F6110;
  v129 = a4;
  v130 = a3;
  v128 = a2;
  v126 = a1;
  v127 = v136;
  ktrace_events_single();
  v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v35 = v137;
  v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v111 = MEMORY[0x1E69E9820];
  v112 = 3221225472;
  v113 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_2_168;
  v114 = &unk_1E86F61D8;
  v120 = a4;
  v121 = a3;
  v119 = a2;
  v115 = a1;
  v116 = v28;
  v117 = v37;
  v118 = v127;
  ktrace_events_single();
  v105 = MEMORY[0x1E69E9820];
  v106 = 3221225472;
  v107 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_3_171;
  v108 = &unk_1E86F6200;
  v109 = a1;
  v110 = v118;
  ktrace_events_single();
  v95 = MEMORY[0x1E69E9820];
  v96 = 3221225472;
  v97 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_4_172;
  v98 = &unk_1E86F6160;
  v102 = a2;
  v103 = a4;
  v104 = a3;
  v34 = v117;
  v99 = v34;
  v100 = a1;
  v101 = v110;
  ktrace_events_single();
  v85 = MEMORY[0x1E69E9820];
  v86 = 3221225472;
  v87 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_5;
  v88 = &unk_1E86F6160;
  v92 = a2;
  v93 = a4;
  v94 = a3;
  v89 = v116;
  v90 = a1;
  v91 = v101;
  ktrace_events_single();
  v75 = MEMORY[0x1E69E9820];
  v76 = 3221225472;
  v77 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_6;
  v78 = &unk_1E86F6160;
  v82 = a2;
  v83 = a4;
  v84 = a3;
  v29 = v89;
  v79 = v29;
  v80 = a1;
  v81 = v91;
  ktrace_events_single();
  v66 = MEMORY[0x1E69E9820];
  v67 = 3221225472;
  v68 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_7;
  v69 = &unk_1E86F6110;
  v73 = a4;
  v74 = a3;
  v72 = a2;
  v70 = a1;
  v71 = v81;
  ktrace_events_single();
  v56 = MEMORY[0x1E69E9820];
  v57 = 3221225472;
  v58 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_8;
  v59 = &unk_1E86F6160;
  v64 = a4;
  v65 = a3;
  v63 = a2;
  v60 = a1;
  v30 = v71;
  v61 = v30;
  v31 = v153;
  v62 = v31;
  ktrace_events_range();
  if (!v36 || (*(v36 + 8) & 1) == 0)
  {
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_9;
    v50 = &unk_1E86F6110;
    v54 = a4;
    v55 = a3;
    v53 = a2;
    v51 = a1;
    v52 = v30;
    ktrace_events_single();

    if (!v36)
    {
      goto LABEL_12;
    }
  }

  if ((*(v36 + 9) & 1) == 0)
  {
LABEL_12:
    v42[5] = MEMORY[0x1E69E9820];
    v42[6] = 3221225472;
    v42[7] = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_10;
    v42[8] = &unk_1E86F6110;
    v45 = a4;
    v46 = a3;
    v44 = a2;
    v42[9] = a1;
    v43 = v30;
    ktrace_events_single();
  }

  v32 = [a1 osProductName];
  v33 = SAIsEmbeddedPlatform(v32);

  if (a1)
  {
    a1[404] = v33 ^ 1;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_11;
  v42[3] = &unk_1E86F6228;
  v42[4] = a1;
  [SAGesture parseKTrace:a2 embedded:v33 findingGestureAndHIDEvents:v42];
  v41[5] = MEMORY[0x1E69E9820];
  v41[6] = 3221225472;
  v41[7] = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_12;
  v41[8] = &unk_1E86F6250;
  v41[9] = a1;
  +[SAIOEvent parseKTrace:findingIOEvents:];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_13;
  v41[3] = &unk_1E86F6278;
  v41[4] = a1;
  [SANANDGarbageCollectionEvent parseKTrace:a2 findingGarbageCollectionEvents:v41];
  +[SAMemoryPressureEvent parseKTrace:findingMemoryPressureEvents:];
  +[SALostPerfEvent parseKTrace:findingLostPerfEvents:];
  v39 = v30;
  v40 = v31;
  ktrace_events_single();

  _Block_object_dispose(&v188, 8);
}

unint64_t __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[6];
  v5 = *a2;
  result = ktrace_get_absolute_from_timestamp();
  if (result < a1[7])
  {
    v7 = result;
    if (result >= a1[8])
    {
      v8 = *(a2 + 12) >> 2 == 155238400 && a2[2] != 0;
      result = [(SASampleStore *)a1[4] deadReckonSamplesBeforeTimestamp:v8 timestampIsSampleEvent:a1[5] kperfState:?];
      if (result)
      {
        v9 = a1[5];
        if (v9)
        {
          *(v9 + 80) = v7;
        }
      }
    }
  }

  return result;
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_2(void *a1, int *a2)
{
  v4 = a1[7];
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp < a1[8])
  {
    v7 = absolute_from_timestamp;
    if (absolute_from_timestamp >= a1[9])
    {
      if (*(a2 + 2) && (v8 = a1[10]) != 0)
      {
        v9 = *(a1[6] + 8);
        v10 = *(v9 + 24);
        if (absolute_from_timestamp >= v10)
        {
          if (!v10)
          {
            *(v9 + 24) = absolute_from_timestamp;
            v8 = a1[10];
            v9 = *(a1[6] + 8);
            v10 = *(v9 + 24);
          }

          v11 = 0;
          *(v9 + 24) = v8 + v10;
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
      }

      v13 = a1[4];
      v12 = a1[5];
      if (!v13)
      {
        goto LABEL_39;
      }

      v15 = *(a2 + 1);
      v14 = *(a2 + 2);
      v16 = *(a2 + 3);
      if (v12)
      {
        v17 = *(v12 + 36);
        v19 = v15 == v17 || v14 != 0;
        if (v17 >= 0)
        {
          v20 = v19;
        }

        else
        {
          v20 = v14 != 0;
        }

        v21 = *(v12 + 40);
        v22 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
        if (!v20)
        {
          v26 = 0;
          goto LABEL_37;
        }

        if (*(v12 + 32))
        {
          v23 = [v13 sampleTimestamps];
          v24 = [v23 lastObject];

          if (v24 && (v25 = [v24 machAbsTime], v25 + (v16 >> 1) >= objc_msgSend(v22, "machAbsTime")))
          {
            if (qword_1EDD02FB0)
            {
              v31 = *__error();
              v27 = qword_1EDD02FB0;
              v32 = [v22 machAbsTime];
              v33 = [v22 debugDescription];
              v30 = [v33 UTF8String];
              v28 = [v24 debugDescription];
              fprintf(v27, "%'llu Ignoring PET Sample at %s due to existing PET sample at %s (%lld before most recent event with period %llu)\n\n", v32, v30, [v28 UTF8String], objc_msgSend(v22, "machAbsTime") - objc_msgSend(v24, "machAbsTime"), v16);

              *__error() = v31;
            }

            LOBYTE(v26) = 1;
          }

          else
          {
            LOBYTE(v26) = 0;
          }

          *(v12 + 32) = 0;
        }

        else
        {
          LOBYTE(v26) = 0;
        }
      }

      else
      {
        v22 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
        v26 = 0;
        if (v15 && !v14)
        {
          goto LABEL_37;
        }
      }

      v29 = [v22 machAbsTime];
      if (v12)
      {
        *(v12 + 64) = v16;
        *(v12 + 72) = v29 + v16;
      }

      if (v26)
      {
        goto LABEL_38;
      }

      v26 = 1;
LABEL_37:
      [(SASampleStore *)v13 kperfSampleAtTimestamp:v22 isPET:v26 state:v12 ignore:v11];
LABEL_38:

      v12 = a1[5];
LABEL_39:
      if (v12)
      {
        *(v12 + 80) = v7;
      }
    }
  }
}

unint64_t __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_3(void *a1, uint64_t *a2)
{
  v4 = a1[6];
  v5 = *a2;
  result = ktrace_get_absolute_from_timestamp();
  if (result < a1[7])
  {
    v7 = result;
    if (result >= a1[8])
    {
      result = a1[5];
      if (a1[4])
      {
        [(SAKPerfState *)result nextSampleForThread:1 isOnCore:?];
        if (qword_1EDD02FB0)
        {
          v8 = *__error();
          fprintf(qword_1EDD02FB0, "%'llu PERF_TMR_Handler on thread 0x%llx core %d\n", *a2, a2[5], *(a2 + 13));
          *__error() = v8;
        }

        result = a1[5];
      }

      if (result)
      {
        *(result + 80) = v7;
      }
    }
  }

  return result;
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_4(void *a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a1[7];
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp < a1[8] && absolute_from_timestamp >= a1[9])
  {
    v7 = a1[4];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 40)];
    v9 = [v7 objectForKeyedSubscript:v8];

    v11 = *(a2 + 48);
    if ((v11 & 1) == 0)
    {
      if (!v9)
      {
LABEL_53:

        goto LABEL_54;
      }

      if (objc_getProperty(v9, v10, 48, 1))
      {
        v13 = KTraceStringFromArguments(a1[7], a2, 1u);
        if (v13)
        {
          [objc_getProperty(v9 v12];
        }

        else if (qword_1EDD02FB0)
        {
          v18 = *__error();
          v19 = qword_1EDD02FB0;
          v20 = *a2;
          v21 = *(a2 + 40);
          v22 = [v9 debugDescription];
          fprintf(v19, "%'llu WARNING: Continuation for dyld info is empty string on thread 0x%llx: %s\n", v20, v21, [v22 UTF8String]);

          *__error() = v18;
        }
      }

LABEL_49:
      if ((*(a2 + 48) & 2) != 0)
      {
        if (v9)
        {
          *(v9 + 10) = 1;
          if ([(SASampleStore *)a1[5] checkDyldInfoCompletion:v9])
          {
            v50 = a1[4];
            v51 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 40)];
            [v50 setObject:0 forKeyedSubscript:v51];
          }
        }
      }

      goto LABEL_53;
    }

    if (*(a2 + 8) && (*(a2 + 8) & 0xFFFF0000) != 0x1F050000 || (v11 & 2) != 0 && !*(a2 + 24))
    {
      goto LABEL_53;
    }

    v14 = *(a2 + 16);
    if (v9)
    {
      v15 = *(v9 + 40);
      if (v15)
      {
        v16 = v15 == v14;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = v9;
        goto LABEL_37;
      }

      v23 = a1[4];
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 40)];
      [v23 setObject:0 forKeyedSubscript:v24];
    }

    *buf = -1;
    v25 = a1[6];
    if (v25)
    {
      v26 = *(v25 + 40);
    }

    else
    {
      v26 = 0;
    }

    v27 = [(SASampleStore *)a1[5] existingTaskForEvent:a2 inSession:v26 returningPid:buf];
    v28 = v27;
    if ((*buf & 0x80000000) != 0)
    {
      if (qword_1EDD02FB0)
      {
        v34 = *__error();
        fprintf(qword_1EDD02FB0, "%'llu WARNING: Unable to determine pid for dyld string on thread 0x%llx: %d\n", *a2, *(a2 + 40), *buf);
        *__error() = v34;
      }

      v9 = 0;
      goto LABEL_53;
    }

    if (!v27)
    {
      v29 = a1[6];
      if (v29)
      {
        v30 = *(v29 + 40);
      }

      v31 = *(a2 + 40);
      execname_for_thread = ktrace_get_execname_for_thread();
      if (execname_for_thread && *execname_for_thread)
      {
        v33 = SANSStringForCString(execname_for_thread);
      }

      else
      {
        v33 = 0;
      }

      v28 = [(SASampleStore *)a1[5] taskForPid:v33 andName:0 didExecAtTimestamp:?];
    }

    v17 = [[SADyldInfo alloc] initWithTask:v28];
    v35 = a1[4];
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 40)];
    [v35 setObject:v17 forKeyedSubscript:v36];

    if (!v17)
    {
      v9 = 0;
      v37 = 1;
      goto LABEL_38;
    }

LABEL_37:
    v37 = 0;
    v17[5] = v14;
    v9 = v17;
LABEL_38:
    v39 = KTraceStringFromArguments(a1[7], a2, 3u);
    if (!v39)
    {
      if (qword_1EDD02FB0)
      {
        v40 = *__error();
        v41 = qword_1EDD02FB0;
        v42 = *a2;
        v43 = *(a2 + 40);
        v44 = [v9 debugDescription];
        v45 = v44;
        fprintf(v41, "%'llu WARNING: Start for dyld info is empty string on thread 0x%llx: %s\n", v42, v43, [v44 UTF8String]);

        *__error() = v40;
      }

      v39 = objc_alloc_init(MEMORY[0x1E696AD60]);
    }

    if ((v37 & 1) == 0)
    {
      if (objc_getProperty(v9, v38, 48, 1))
      {
        v47 = *__error();
        v48 = _sa_logt();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          Property = objc_getProperty(v9, v49, 48, 1);
          *buf = 138412546;
          v55 = Property;
          v56 = 2112;
          v57 = v39;
          _os_log_debug_impl(&dword_1E0E2F000, v48, OS_LOG_TYPE_DEBUG, "Throwing out previous path %@ for new path %@", buf, 0x16u);
        }

        *__error() = v47;
      }

      objc_setProperty_atomic(v9, v46, v39, 48);
      *(v9 + 10) = 0;
    }

    goto LABEL_49;
  }

LABEL_54:
  v52 = *MEMORY[0x1E69E9840];
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_162(void *a1, int *a2)
{
  v4 = a1[5];
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp < a1[6] && absolute_from_timestamp >= a1[7])
  {
    v7 = a1[5];
    v12 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
    v8 = a1[4];
    if (v8)
    {
      if (![v8[3] count] && objc_getProperty(v8, v9, 88, 1))
      {
        Property = objc_getProperty(v8, v10, 88, 1);
        objc_storeStrong(v8 + 2, Property);
      }

      [v8[3] addObject:v12];
    }
  }
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_2_163(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      v4 = *(a1 + 56);
      v5 = *(a2 + 8);
      absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
      if (absolute_from_timestamp < *(a1 + 64))
      {
        v7 = absolute_from_timestamp;
        if (absolute_from_timestamp >= *(a1 + 72))
        {
          [(SASampleStore *)*(a1 + 32) kperfRecord:a2 state:*(a1 + 40) frameIterator:*(a1 + 48)];
          v8 = *(a1 + 40);
          if (v8)
          {
            if (v7 > *(v8 + 80))
            {
              *(v8 + 80) = v7;
            }
          }
        }
      }
    }
  }

  else
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "NULL rec", v17, 2u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(2160, "NULL rec", v11, v12, v13, v14, v15, v16, v17[0]);
    _os_crash();
    __break(1u);
  }
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_167(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp < a1[7] && absolute_from_timestamp >= a1[8] && (*(a2 + 8) & 1) == 0)
  {
    v7 = a1[4];
    if (v7)
    {
      v8 = a1[5];
      if (v8)
      {
        v9 = *(v8 + 40);
      }

      else
      {
        v9 = 0;
      }

      v10 = [(SASampleStore *)v7 existingTaskForEvent:a2 inSession:v9 returningPid:0];
      if (v10)
      {
        v20 = v10;
        v11 = [v10 threads];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 40)];
        v13 = [v11 objectForKeyedSubscript:v12];

        if (v13)
        {
          v14 = [v13 threadStates];
          v15 = [v14 lastObject];

          if (v15)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v15 filledUserStack] & 1) == 0)
            {
              if (qword_1EDD02FB0)
              {
                v16 = *__error();
                v17 = qword_1EDD02FB0;
                v18 = *a2;
                v19 = [v20 debugDescription];
                fprintf(v17, "%'llu WARNING: KPerf had an error getting user stack for task %s thread 0x%llx\n", v18, [v19 UTF8String], *(a2 + 40));

                *__error() = v16;
              }

              [v15 setFilledUserStack:1];
            }
          }
        }

        v10 = v20;
      }
    }
  }
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_2_168(uint64_t a1, int *a2)
{
  v4 = *(a1 + 64);
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp < *(a1 + 72))
  {
    v7 = absolute_from_timestamp;
    if (absolute_from_timestamp >= *(a1 + 80))
    {
      v22 = -1;
      v8 = [(SASampleStore *)*(a1 + 32) existingTaskForEvent:a2 inSession:*(a1 + 64) returningPid:&v22];
      v9 = v22;
      if ((v22 & 0x80000000) != 0)
      {
        if (qword_1EDD02FB0)
        {
          v21 = *__error();
          fprintf(qword_1EDD02FB0, "%'llu WARNING: Unable to determine old pid for TRACE_DATA_NEWTHREAD on thread 0x%llx: %d\n", *a2, *(a2 + 5), v22);
          *__error() = v21;
        }
      }

      else
      {
        v10 = *(a2 + 1);
        v11 = a2[4];
        if (v22 == v11 && *(a2 + 3))
        {
          v12 = [MEMORY[0x1E696AD98] numberWithInt:v22];
          v13 = *(a1 + 40);
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
          [v13 setObject:v12 forKeyedSubscript:v14];
        }

        else
        {
          v12 = objc_alloc_init(SANewThreadInfo);
          v15 = *(a1 + 64);
          v16 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
          v18 = v16;
          if (v12)
          {
            objc_setProperty_atomic(v12, v17, v16, 16);

            v12->_newTid = v10;
            v12->_oldPid = v9;
            v12->_newPid = v11;
          }

          else
          {
          }

          v19 = *(a1 + 48);
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 5)];
          [v19 setObject:v12 forKeyedSubscript:v14];
        }

        v20 = *(a1 + 56);
        if (v20)
        {
          *(v20 + 80) = v7;
        }
      }
    }
  }
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_3_171(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = [(SASampleStore *)*(a1 + 32) lastTaskWithPid:v3];
  if (!v5)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 40);
    }

    execname_for_pid = ktrace_get_execname_for_pid();
    if (execname_for_pid && *execname_for_pid)
    {
      v9 = SANSStringForCString(execname_for_pid);
    }

    else
    {
      v9 = 0;
    }

    v10 = [(SASampleStore *)*(a1 + 32) taskForPid:v3 andName:v9 didExecAtTimestamp:0];

    v5 = v10;
  }

  if ((v4 & 2) != 0 && v5)
  {
    v5[71] = 1;
  }
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_4_172(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp >= a1[8])
  {
    return;
  }

  v7 = absolute_from_timestamp;
  if (absolute_from_timestamp < a1[9])
  {
    return;
  }

  v8 = a1[4];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2[5]];
  self = [v8 objectForKeyedSubscript:v9];

  v10 = self;
  if (self)
  {
    v11 = KTraceStringFromArguments(a1[7], a2, 1u);
    v13 = v11;
    if (v11)
    {
      v14 = SACachedNSString(v11);

      v13 = v14;
    }

    v15 = a1[5];
    if (!v15)
    {
      goto LABEL_35;
    }

    v44 = self[3];
    v16 = *(self + 2);
    v17 = *(self + 3);
    newValue = objc_getProperty(self, v12, 16, 1);
    if (v16 == v17)
    {
      v18 = [(SASampleStore *)v15 taskForPid:v16 andName:v13 didExecAtTimestamp:0];
      if (qword_1EDD02FB0)
      {
        v19 = *__error();
        v20 = qword_1EDD02FB0;
        v21 = [newValue machAbsTime];
        v22 = [v18 debugDescription];
        fprintf(v20, "%'llu %s creating thread 0x%llx\n", v21, [v22 UTF8String], v44);

        *__error() = v19;
      }

LABEL_29:
      v27 = v18;
LABEL_30:
      v33 = [v27 threads];
      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v44];
      v35 = [v33 objectForKeyedSubscript:v34];

      if (!v35)
      {
        v36 = [SAThread threadWithId:v44];
        v38 = v36;
        if (v36)
        {
          objc_setProperty_atomic(v36, v37, newValue, 32);
        }

        [(SATask *)v27 addThread:v38];
      }

LABEL_35:
      v39 = a1[4];
      v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2[5]];
      [v39 setObject:0 forKeyedSubscript:v40];

      v10 = self;
      goto LABEL_36;
    }

    v23 = [(SASampleStore *)v15 lastTaskWithPid:v17];
    v18 = v23;
    if (v23)
    {
      v24 = [v23 exitTimestamp];
      if (v24)
      {

        if (v17)
        {
          v43 = v16 == 0;
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (v17)
      {
        if (!v16)
        {
          if (qword_1EDD02FB0)
          {
            v42 = *__error();
            fprintf(qword_1EDD02FB0, "%'llu kernel creating thread 0x%llx in process [%d]\n", [newValue machAbsTime], v44, v17);
            v26 = 0;
            *__error() = v42;
          }

          else
          {
            v26 = 0;
          }

          v43 = 1;
LABEL_21:
          v27 = [(SASampleStore *)v15 taskForPid:v17 andName:v13 didExecAtTimestamp:v26];

          v28 = v43;
          if (!v27)
          {
            v28 = 1;
          }

          if ((v28 & 1) == 0)
          {
            v27[21] = v16;
          }

          goto LABEL_30;
        }

        v43 = 0;
LABEL_18:
        if (qword_1EDD02FB0)
        {
          v25 = *__error();
          fprintf(qword_1EDD02FB0, "%'llu [%d] creating thread 0x%llx in new process [%d]\n", [newValue machAbsTime], v16, v44, v17);
          *__error() = v25;
        }

        v26 = newValue;
        goto LABEL_21;
      }

      v18 = [(SASampleStore *)v15 taskForPid:v13 andName:0 didExecAtTimestamp:?];
    }

    if (qword_1EDD02FB0)
    {
      v29 = *__error();
      v30 = qword_1EDD02FB0;
      v31 = [newValue machAbsTime];
      v32 = [v18 debugDescription];
      fprintf(v30, "%'llu Task [%d] creating thread 0x%llx in other process %s\n", v31, v16, v44, [v32 UTF8String]);

      *__error() = v29;
    }

    goto LABEL_29;
  }

LABEL_36:
  v41 = a1[6];
  if (v41)
  {
    *(v41 + 80) = v7;
  }
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_5(void *a1, int *a2)
{
  v4 = a1[7];
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp >= a1[8])
  {
    return;
  }

  v7 = absolute_from_timestamp;
  if (absolute_from_timestamp < a1[9])
  {
    return;
  }

  v8 = a1[4];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 5)];
  v39 = [v8 objectForKeyedSubscript:v9];

  if (v39)
  {
    v10 = [v39 intValue];
    v11 = v10;
    v13 = a1 + 6;
    v12 = a1[6];
    v14 = a1[5];
    v40 = v10;
    if (v14)
    {
      if (v10 != -1)
      {
        v15 = [(SASampleStore *)v14 lastTaskWithPid:v10];
        if (v11 < 0)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }

LABEL_11:
      if (v12)
      {
        v17 = *(v12 + 40);
      }

      else
      {
        v17 = 0;
      }

      v15 = [(SASampleStore *)v14 existingTaskForEvent:a2 inSession:v17 returningPid:&v40];
      if ((v40 & 0x80000000) != 0)
      {
LABEL_8:
        if (qword_1EDD02FB0)
        {
          v16 = *__error();
          fprintf(qword_1EDD02FB0, "%'llu WARNING: Unable to determine pid for exec on thread 0x%llx: %d\n", *a2, *(a2 + 5), v40);
          *__error() = v16;
        }

LABEL_28:

        goto LABEL_29;
      }

LABEL_14:
      if (v12)
      {
        v18 = *(v12 + 40);
      }

      else
      {
        v18 = 0;
      }

      v38 = v15;
      v19 = KTraceStringFromArguments(v18, a2, 1u);
      if (v12)
      {
        v20 = *(v12 + 40);
      }

      v21 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
      v22 = [(SASampleStore *)v14 taskForPid:v40 andName:v19 didExecAtTimestamp:v21];
      if (v15)
      {
        v23 = [v15 ppid];
        if (v22)
        {
          v22[21] = v23;
        }
      }

      v24 = [SAThread threadWithId:?];
      v26 = v24;
      if (v24)
      {
        v24[17] = 1;
        objc_setProperty_atomic(v24, v25, v21, 32);
      }

      [(SATask *)v22 addThread:v26];
      if (v22)
      {
        objc_setProperty_atomic(v22, v27, v26, 272);
      }

      if (qword_1EDD02FB0)
      {
        v36 = v21;
        v37 = v19;
        v34 = *__error();
        v35 = qword_1EDD02FB0;
        v28 = *a2;
        v29 = [v38 debugDescription];
        v30 = [v29 UTF8String];
        v31 = [v22 debugDescription];
        fprintf(v35, "%'llu %s exec'ed %s\n", v28, v30, [v31 UTF8String]);

        *__error() = v34;
        v21 = v36;
        v19 = v37;
      }

      v15 = v38;
      goto LABEL_28;
    }
  }

  else
  {
    v13 = a1 + 6;
    v12 = a1[6];
    v14 = a1[5];
    v40 = -1;
    if (v14)
    {
      goto LABEL_11;
    }
  }

LABEL_29:
  v32 = a1[4];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 5)];
  [v32 setObject:0 forKeyedSubscript:v33];

  if (*v13)
  {
    *(*v13 + 80) = v7;
  }
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_6(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a1[7];
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp >= a1[8])
  {
    goto LABEL_27;
  }

  v7 = absolute_from_timestamp;
  if (absolute_from_timestamp < a1[9])
  {
    goto LABEL_27;
  }

  v8 = a1[4];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 40)];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = a1[4];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 40)];
    [v11 setObject:0 forKeyedSubscript:v12];

    goto LABEL_25;
  }

  v13 = a1[5];
  if (v13)
  {
    v14 = a1[6];
    v15 = [(SASampleStore *)a1[5] lastTaskWithPid:*(a2 + 40) orTid:?];
    if (!v15)
    {
      v20 = *__error();
      v21 = _sa_logt();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        if (v14)
        {
          v27 = *(v14 + 40);
        }

        else
        {
          v27 = 0;
        }

        v28 = *(a2 + 40);
        v29 = KTraceStringFromArguments(v27, a2, 1u);
        v30 = 134218242;
        v31 = v28;
        v32 = 2112;
        v33 = v29;
        _os_log_debug_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_DEBUG, "No task with thread 0x%llx at exit for name %@", &v30, 0x16u);
      }

      *__error() = v20;
      goto LABEL_24;
    }

    if (v14)
    {
      v16 = *(v14 + 40);
    }

    else
    {
      v16 = 0;
    }

    v17 = KTraceStringFromArguments(v16, a2, 1u);
    v18 = [v15 name];
    v19 = v18;
    if (v17)
    {
      if (v15[7] && v18)
      {
        if (([v17 hasPrefix:v18] & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (!v18)
      {
LABEL_18:
        [(SATask *)v15 setName:v17];
        goto LABEL_19;
      }

      if (([v19 hasPrefix:v17] & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    v22 = [v15 exitTimestamp];

    if (!v22)
    {
      if (v14)
      {
        v23 = *(v14 + 40);
      }

      v24 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
      [(SASampleStore *)v13 task:v15 exitedAtTimestamp:v24];
    }

LABEL_24:
  }

LABEL_25:
  v25 = a1[6];
  if (v25)
  {
    *(v25 + 80) = v7;
  }

LABEL_27:
  v26 = *MEMORY[0x1E69E9840];
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_7(void *a1, int *a2)
{
  v4 = a1[6];
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp < a1[7])
  {
    v7 = absolute_from_timestamp;
    if (absolute_from_timestamp >= a1[8])
    {
      v9 = a1[4];
      v8 = a1[5];
      if (v9)
      {
        v10 = *(a2 + 1);
        if (v8)
        {
          v11 = *(v8 + 40);
        }

        v12 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
        v13 = [(SASampleStore *)v9 lastTaskWithPid:v10 orTid:?];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 exitTimestamp];

          if (!v15)
          {
            v16 = [v14 threads];
            v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
            v18 = [v16 objectForKeyedSubscript:v17];

            if (v18)
            {
              objc_setProperty_atomic(v18, v19, v12, 40);
            }
          }
        }

        else if (qword_1EDD02FB0)
        {
          v20 = *__error();
          fprintf(qword_1EDD02FB0, "%'llu Thread 0x%llx exited, but we don't have a task with that thread!\n", *a2, v10);
          *__error() = v20;
        }

        v8 = a1[5];
      }

      if (v8)
      {
        *(v8 + 80) = v7;
      }
    }
  }
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_8(void *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v99 = *MEMORY[0x1E69E9840];
  v4 = a1[7];
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp < v3[8])
  {
    v7 = absolute_from_timestamp;
    if (absolute_from_timestamp >= v3[9])
    {
      v8 = v3[4];
      v9 = v3[5];
      if (v8)
      {
        v10 = v3[6];
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2[5]];
        v94 = v10;
        self = [v10 objectForKeyedSubscript:v11];

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        switch(*(v2 + 12) >> 2)
        {
          case 0:
          case 5:
            goto LABEL_29;
          case 1:
          case 6:
            goto LABEL_8;
          case 2:
          case 7:
            goto LABEL_47;
          case 3:
          case 8:
            goto LABEL_15;
          case 4:
          case 9:
            goto LABEL_22;
          case 10:
            v13 = 1;
LABEL_29:
            uu = *(v2 + 1);
            if (uuid_is_null(&uu))
            {
              v18 = self;
              if (!qword_1EDD02FB0)
              {
                goto LABEL_71;
              }

              goto LABEL_49;
            }

            if (self && !objc_getProperty(self, v34, 24, 1))
            {
              if (objc_getProperty(self, v35, 48, 1))
              {
                goto LABEL_92;
              }

              v7 = *__error();
              v63 = _sa_logt();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                v2 = [self debugDescription];
                v64 = v2;
                *buf = 136315138;
                v97 = [v2 UTF8String];
                _os_log_error_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_ERROR, "No uuid and no path for dyld info %s", buf, 0xCu);
              }

              *__error() = v7;
              v3 = [self debugDescription];
              v65 = v3;
              v66 = [v3 UTF8String];
              _SASetCrashLogMessage(1744, "No uuid and no path for dyld info %s", v67, v68, v69, v70, v71, v72, v66);

              _os_crash();
              __break(1u);
              goto LABEL_85;
            }

            *buf = -1;
            if (v9)
            {
              v36 = *(v9 + 40);
            }

            else
            {
              v36 = 0;
            }

            v37 = [(SASampleStore *)v8 existingTaskForEvent:v2 inSession:v36 returningPid:buf];
            v38 = v37;
            if ((*buf & 0x80000000) != 0)
            {
              v18 = self;
              if (qword_1EDD02FB0)
              {
                v61 = *__error();
                fprintf(qword_1EDD02FB0, "%'llu WARNING: Unable to determine pid for dyld on thread 0x%llx: %d\n", *v2, v2[5], *buf);
                *__error() = v61;
              }

              goto LABEL_71;
            }

            if (v37)
            {
              goto LABEL_91;
            }

            if (v9)
            {
              v39 = *(v9 + 40);
            }

            v40 = v2[5];
            execname_for_thread = ktrace_get_execname_for_thread();
            if (execname_for_thread && *execname_for_thread)
            {
              v42 = SANSStringForCString(execname_for_thread);
              goto LABEL_90;
            }

            goto LABEL_89;
          case 11:
            v14 = 1;
LABEL_8:
            v19 = v94;
            v18 = self;
            if (!self || (v20 = objc_getProperty(self, v12, 24, 1)) == 0 || (v21 = *(self + 8) & 1, v20, v14 != v21))
            {
              if (qword_1EDD02FB0)
              {
                v23 = *__error();
                v24 = *v2;
                fprintf(qword_1EDD02FB0, "%'llu WARNING: Missing first dyld tracepoint on thread 0x%llx\n", *v2, v2[5]);
                *__error() = v23;
              }

              goto LABEL_27;
            }

            v56 = v2[2];
            v57 = *(self + 5);
            if (!v57 || v57 == v56)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 12:
            v15 = 1;
LABEL_47:
            uu = vuzp1q_s32(*(v2 + 1), *(v2 + 3));
            if (uuid_is_null(&uu))
            {
              v18 = self;
              if (qword_1EDD02FB0)
              {
LABEL_49:
                v46 = *__error();
                v47 = *v2;
                fprintf(qword_1EDD02FB0, "%'llu WARNING: null UUID in dyld tracepoint on thread 0x%llx\n", *v2, v2[5]);
                *__error() = v46;
              }

              goto LABEL_71;
            }

            if (self && !objc_getProperty(self, v45, 24, 1))
            {
LABEL_85:
              if (!objc_getProperty(self, v48, 48, 1))
              {
                v7 = *__error();
                v73 = _sa_logt();
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  v2 = [self debugDescription];
                  v74 = v2;
                  v75 = [v2 UTF8String];
                  *buf = 136315138;
                  v97 = v75;
                  _os_log_error_impl(&dword_1E0E2F000, v73, OS_LOG_TYPE_ERROR, "No uuid and no path for dyld info %s", buf, 0xCu);
                }

                *__error() = v7;
                v3 = [self debugDescription];
                v76 = v3;
                v77 = [v3 UTF8String];
                _SASetCrashLogMessage(1819, "No uuid and no path for dyld info %s", v78, v79, v80, v81, v82, v83, v77);

                _os_crash();
                __break(1u);
LABEL_89:
                v42 = 0;
LABEL_90:
                v38 = [(SASampleStore *)v8 taskForPid:v42 andName:0 didExecAtTimestamp:?];

LABEL_91:
                v84 = [[SADyldInfo alloc] initWithTask:v38];

                v85 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2[5]];
                [v94 setObject:v84 forKeyedSubscript:v85];

                self = v84;
LABEL_92:
                v86 = uuidForBytes(&uu);
                v88 = v86;
                if (self)
                {
                  objc_setProperty_atomic(self, v87, v86, 24);

                  *(self + 4) = v2[3];
                  *(self + 8) = v13;
                  goto LABEL_5;
                }

                goto LABEL_101;
              }
            }

            else
            {
              *buf = -1;
              if (v9)
              {
                v49 = *(v9 + 40);
              }

              else
              {
                v49 = 0;
              }

              v50 = [(SASampleStore *)v8 existingTaskForEvent:v2 inSession:v49 returningPid:buf];
              v51 = v50;
              if ((*buf & 0x80000000) != 0)
              {
                v18 = self;
                if (qword_1EDD02FB0)
                {
                  v62 = *__error();
                  fprintf(qword_1EDD02FB0, "%'llu WARNING: Unable to determine pid for dyld on thread 0x%llx: %d\n", *v2, v2[5], *buf);
                  *__error() = v62;
                }

                goto LABEL_71;
              }

              if (!v50)
              {
                if (v9)
                {
                  v52 = *(v9 + 40);
                }

                v53 = v2[5];
                v54 = ktrace_get_execname_for_thread();
                if (v54 && *v54)
                {
                  v55 = SANSStringForCString(v54);
                }

                else
                {
                  v55 = 0;
                }

                v51 = [(SASampleStore *)v8 taskForPid:v55 andName:0 didExecAtTimestamp:?];
              }

              v89 = [[SADyldInfo alloc] initWithTask:v51];

              v90 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2[5]];
              [v94 setObject:v89 forKeyedSubscript:v90];

              self = v89;
            }

            v86 = uuidForBytes(&uu);
            v92 = v86;
            if (self)
            {
              objc_setProperty_atomic(self, v91, v86, 24);

              *(self + 8) = v15;
              goto LABEL_5;
            }

LABEL_101:

LABEL_5:
            v19 = v94;
            v18 = self;
            if (self)
            {
              goto LABEL_69;
            }

            goto LABEL_71;
          case 13:
            v16 = 1;
LABEL_15:
            v19 = v94;
            v18 = self;
            if (self)
            {
              v25 = objc_getProperty(self, v12, 24, 1);
              if (v25)
              {
                v26 = *(self + 8) & 1;

                if (v16 == v26)
                {
                  *(self + 4) = v2[1];
                  goto LABEL_69;
                }
              }
            }

            if (qword_1EDD02FB0)
            {
              v27 = *__error();
              v28 = *v2;
              fprintf(qword_1EDD02FB0, "%'llu WARNING: Missing first dyld tracepoint on thread 0x%llx\n", *v2, v2[5]);
              *__error() = v27;
            }

            goto LABEL_27;
          case 14:
            v17 = 1;
LABEL_22:
            v19 = v94;
            v18 = self;
            if (self && (v29 = objc_getProperty(self, v12, 24, 1)) != 0 && (v30 = *(self + 8) & 1, v29, v17 == v30))
            {
              v56 = v2[2];
              v58 = *(self + 5);
              if (v58 && v58 != v56)
              {
LABEL_67:
                objc_setProperty_atomic(v18, v22, 0, 48);
                *(v18 + 10) = 0;
              }

LABEL_68:
              *(v18 + 5) = v56;
              *(v18 + 9) = 1;
LABEL_69:
              if ([(SASampleStore *)v8 checkDyldInfoCompletion:v18])
              {
                v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2[5]];
                [v19 setObject:0 forKeyedSubscript:v59];
              }
            }

            else
            {
              if (qword_1EDD02FB0)
              {
                v31 = *__error();
                v32 = *v2;
                fprintf(qword_1EDD02FB0, "%'llu WARNING: Missing first dyld tracepoint on thread 0x%llx\n", *v2, v2[5]);
                *__error() = v31;
              }

LABEL_27:
              v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2[5]];
              [v19 setObject:0 forKeyedSubscript:v33];
            }

LABEL_71:

            v9 = v3[5];
            break;
          case 15:
          case 16:
          case 17:
          case 18:
            goto LABEL_5;
          default:
            v18 = self;
            v43 = *__error();
            v44 = _sa_logt();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
            {
              v93 = *(v2 + 12);
              uu.i32[0] = 67109120;
              uu.i32[1] = v93;
              _os_log_fault_impl(&dword_1E0E2F000, v44, OS_LOG_TYPE_FAULT, "Unknown dyld tracepoint 0x%x", &uu, 8u);
            }

            *__error() = v43;
            goto LABEL_71;
        }
      }

      if (v9)
      {
        *(v9 + 80) = v7;
      }
    }
  }

  v60 = *MEMORY[0x1E69E9840];
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_9(uint64_t a1, int *a2)
{
  v4 = *(a1 + 48);
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp < *(a1 + 56))
  {
    v7 = absolute_from_timestamp;
    if (absolute_from_timestamp >= *(a1 + 64))
    {
      v8 = a2[12];
      if ((v8 & 3) != 0)
      {
        v9 = a2[2];
        v10 = [(SASampleStore *)*(a1 + 32) lastTaskWithPid:v9];
        if (!v10)
        {
          v11 = *(a1 + 40);
          if (v11)
          {
            v12 = *(v11 + 40);
          }

          execname_for_pid = ktrace_get_execname_for_pid();
          if (execname_for_pid && *execname_for_pid)
          {
            v14 = SANSStringForCString(execname_for_pid);
          }

          else
          {
            v14 = 0;
          }

          v30 = v14;
          v15 = [(SASampleStore *)*(a1 + 32) taskForPid:v9 andName:v14 didExecAtTimestamp:0];

          v10 = v15;
        }

        v31 = v10;
        v16 = v8 & 1;
        if (qword_1EDD02FB0)
        {
          v17 = *__error();
          v18 = qword_1EDD02FB0;
          v19 = [v31 debugDescription];
          fprintf(v18, "%'llu %s changed runaway mitigation %d -> %d\n", v7, [v19 UTF8String], v16 == 0, v16);

          *__error() = v17;
        }

        [(SASampleStore *)*(a1 + 32) deadReckonSamplesBeforeTimestamp:v7 timestampIsSampleEvent:0 kperfState:*(a1 + 40)];
        v20 = [*(a1 + 32) sampleTimestamps];
        if ([v20 count])
        {
          v21 = [*(a1 + 32) sampleTimestamps];
          v22 = [v21 count] - 1;
        }

        else
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v23 = *(a1 + 48);
        v24 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
        [(SASampleStore *)*(a1 + 32) backfillTask:v31 lastSampleIndex:v22 timestamp:v24 haveSnap:0 terminatedThreadsUserTimeInNs:0 terminatedThreadsSystemTimeInNs:0 terminatedThreadsCycles:0 terminatedThreadsInstructions:0 suspendCount:0 pageins:0 isDarwinBG:0 isForeground:0 isBoosted:0 isDirty:0 isRunningBoardActive:0 hasRunningBoardAssertion:0 haveWQFlags:0 wqExceededTotalThreadLimit:0 wqExceededConstrainedThreadLimit:0 haveCoopAndActiveConstrWQFlags:0 wqExceededCooperativeThreadLimit:0 wqExceededActiveConstrainedThreadLimit:0 haveMem:0 taskSizeInBytes:0 haveLatencyQos:0 latencyQos:0 haveRunawayMitigated:1 isRunawayMitigated:v16 == 0 effectiveJetsamPriority:0x80000000];
        v26 = [MEMORY[0x1E696AD98] numberWithBool:v16];
        Property = *(a1 + 40);
        if (Property)
        {
          Property = objc_getProperty(Property, v25, 48, 1);
        }

        v28 = Property;
        v29 = [MEMORY[0x1E696AD98] numberWithInt:v9];
        [v28 setObject:v26 forKeyedSubscript:v29];
      }
    }
  }
}

void __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_10(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 48);
  v5 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp < *(a1 + 56))
  {
    v7 = absolute_from_timestamp;
    if (absolute_from_timestamp >= *(a1 + 64) && (a2[6] & 3) == 0)
    {
      v8 = *(a2 + 2);
      v9 = *(a2 + 4);
      v10 = *(a2 + 6);
      v11 = [(SASampleStore *)*(a1 + 32) lastTaskWithPid:v8];
      if (!v11)
      {
        v12 = *(a1 + 40);
        if (v12)
        {
          v13 = *(v12 + 40);
        }

        execname_for_pid = ktrace_get_execname_for_pid();
        if (execname_for_pid && *execname_for_pid)
        {
          v15 = SANSStringForCString(execname_for_pid);
        }

        else
        {
          v15 = 0;
        }

        v30 = v15;
        v16 = [(SASampleStore *)*(a1 + 32) taskForPid:v8 andName:v15 didExecAtTimestamp:0];

        v11 = v16;
      }

      v31 = v11;
      if (qword_1EDD02FB0)
      {
        v17 = *__error();
        v18 = qword_1EDD02FB0;
        v19 = [v31 debugDescription];
        fprintf(v18, "%'llu %s changed jetsam priority %d -> %d\n", v7, [v19 UTF8String], v10, v9);

        *__error() = v17;
      }

      [(SASampleStore *)*(a1 + 32) deadReckonSamplesBeforeTimestamp:v7 timestampIsSampleEvent:0 kperfState:*(a1 + 40)];
      v20 = [*(a1 + 32) sampleTimestamps];
      if ([v20 count])
      {
        v21 = [*(a1 + 32) sampleTimestamps];
        v22 = [v21 count] - 1;
      }

      else
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v23 = *(a1 + 48);
      v24 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
      [(SASampleStore *)*(a1 + 32) backfillTask:v31 lastSampleIndex:v22 timestamp:v24 haveSnap:0 terminatedThreadsUserTimeInNs:0 terminatedThreadsSystemTimeInNs:0 terminatedThreadsCycles:0 terminatedThreadsInstructions:0 suspendCount:0 pageins:0 isDarwinBG:0 isForeground:0 isBoosted:0 isDirty:0 isRunningBoardActive:0 hasRunningBoardAssertion:0 haveWQFlags:0 wqExceededTotalThreadLimit:0 wqExceededConstrainedThreadLimit:0 haveCoopAndActiveConstrWQFlags:0 wqExceededCooperativeThreadLimit:0 wqExceededActiveConstrainedThreadLimit:0 haveMem:0 taskSizeInBytes:0 haveLatencyQos:0 latencyQos:0 haveRunawayMitigated:0 isRunawayMitigated:0 effectiveJetsamPriority:v10];
      v26 = [MEMORY[0x1E696AD98] numberWithInt:v9];
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v25, 56, 1);
      }

      v28 = Property;
      v29 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      [v28 setObject:v26 forKeyedSubscript:v29];
    }
  }
}

uint64_t __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_11(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (a2)
  {
    v5 = *(result + 32);
    if (v5)
    {
      result = [*(v5 + 72) addObject:a2];
    }
  }

  if (a3)
  {
    v6 = *(v4 + 32);
    if (v6)
    {
      v7 = *(v6 + 64);

      return [v7 addObject:a3];
    }
  }

  return result;
}

uint64_t __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_13(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [*(v2 + 104) addObject:a2];
  }

  return result;
}

uint64_t __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_14(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [*(v2 + 112) addObject:a2];
  }

  return result;
}

uint64_t __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_15(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [*(v2 + 120) addObject:a2];
  }

  return result;
}

unint64_t __123__SASampleStore_KPerf___addKPerfDataFromKTraceSession_afterMachAbsTime_beforeMachAbsTime_petTimerID_ktraceDataUnavailable___block_invoke_16(uint64_t a1, int *a2)
{
  v4 = *(a1 + 56);
  v5 = *a2;
  result = ktrace_get_absolute_from_timestamp();
  if (result < *(a1 + 64))
  {
    v7 = result;
    if (result >= *(a1 + 72))
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(a1 + 40);
        v10 = [*(a1 + 32) startTime];
        if (v10)
        {
          if (v9)
          {
            v11 = *(v9 + 40);
          }

          v41 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:?];
          [v41 wallTime];
          v13 = _CopyStringForTime(3, v12);
          if ([v8 dataStyle] == 1 || !objc_msgSend(v8, "dataStyle"))
          {
            v26 = *MEMORY[0x1E69E9848];
            [v41 machAbsTimeSeconds];
            v28 = v27;
            [v10 machAbsTimeSeconds];
            v30 = v29;
            v31 = [(__CFString *)v13 UTF8String];
            if (v9)
            {
              v32 = *(v9 + 40);
            }

            v33 = *a2;
            absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
            if (v9)
            {
              v35 = *(v9 + 40);
            }

            v36 = *a2;
            continuous_from_timestamp = ktrace_get_continuous_from_timestamp();
            fprintf(v26, "Warning: Lost trace events, dropping all samples (%.2fs) before %s (machabs %llu / machcont %llu)\n", v28 - v30, v31, absolute_from_timestamp, continuous_from_timestamp);
          }

          else
          {
            v40 = *MEMORY[0x1E69E9848];
            v14 = [v8 sampleTimestamps];
            v39 = [v14 count];
            [v41 machAbsTimeSeconds];
            v16 = v15;
            [v10 machAbsTimeSeconds];
            v18 = v17;
            v19 = [(__CFString *)v13 UTF8String];
            if (v9)
            {
              v20 = *(v9 + 40);
            }

            v21 = *a2;
            v22 = ktrace_get_absolute_from_timestamp();
            if (v9)
            {
              v23 = *(v9 + 40);
            }

            v24 = *a2;
            v25 = ktrace_get_continuous_from_timestamp();
            fprintf(v40, "Warning: Lost trace events, dropping first %lu samples (%.2fs) before %s (machabs %llu / machcont %llu)\n", v39, v16 - v18, v19, v22, v25);
          }
        }

        [(SASampleStore *)v8 removeAllData];
      }

      result = [*(a1 + 48) removeAllObjects];
      v38 = *(a1 + 40);
      if (v38)
      {
        *(v38 + 80) = v7;
      }
    }
  }

  return result;
}

- (id)loadInfosForKTSymbolOwners:(int)a3 isKernelSpace:(uint64_t)a4 excludeRange:(unint64_t)a5
{
  v183 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a2;
    v170 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*a2];
    v6 = *v5;
    if (v6)
    {
      v168 = 0;
      v165 = 0;
      v172 = &v5[v6];
      v7 = v5;
      while (1)
      {
        v9 = v7[1];
        ++v7;
        v8 = v9;
        v10 = objc_autoreleasePoolPush();
        v11 = (v7 + v8);
        v12 = (v7 + v8 - *(v7 + v8));
        v13 = *v12;
        if (v13 < 5 || !v12[2] || (v13 >= 7 ? (v14 = *(v11 + v12[2]) == 1) : (v14 = 0), !v14 || (v15 = v12[3]) == 0))
        {
          if (byte_1EDD02FA9 == 1)
          {
            v22 = *__error();
            v23 = _sa_logt();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v28 = (v11 - *v11);
              if (*v28 >= 0xBu && (v29 = v28[5]) != 0)
              {
                v30 = *(v11 + v29);
              }

              else
              {
                v30 = -1;
              }

              *uu = 134217984;
              *&uu[4] = v30;
              _os_log_debug_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_DEBUG, "SAKTSYM No macho for symbol owner at 0x%llx", uu, 0xCu);
            }

            *__error() = v22;
          }

          goto LABEL_20;
        }

        v16 = v11 + v15 + *(v11 + v15);
        v17 = &v16[-*v16];
        if (*v17 < 5u || (v18 = *(v17 + 2)) == 0)
        {
          if (byte_1EDD02FA9 == 1)
          {
            v24 = *__error();
            v25 = _sa_logt();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v50 = (v11 - *v11);
              if (*v50 >= 0xBu && (v51 = v50[5]) != 0)
              {
                v52 = *(v11 + v51);
              }

              else
              {
                v52 = -1;
              }

              *uu = 134217984;
              *&uu[4] = v52;
              _os_log_debug_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_DEBUG, "SAKTSYM No UUID for symbol owner at 0x%llx", uu, 0xCu);
            }

            v26 = __error();
            v27 = 0;
            *v26 = v24;
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_198;
        }

        *uu = 0;
        *&uu[8] = 0;
        uuid_parse(&v16[v18 + 4 + *&v16[v18]], uu);
        v19 = &v16[-*v16];
        if (*v19 >= 7u && (v20 = *(v19 + 3)) != 0)
        {
          v21 = SANSStringForCString(&v16[v20 + 4 + *&v16[v20]]);
        }

        else
        {
          v21 = 0;
        }

        v31 = uuidForBytes(uu);
        if ([v21 isAbsolutePath])
        {
          v32 = v21;
        }

        else
        {
          v32 = 0;
        }

        self = [SABinary binaryWithUUID:v31 absolutePath:v32];

        v33 = [self path];
        if (v33)
        {
          v34 = 1;
        }

        else
        {
          v34 = v21 == 0;
        }

        v35 = !v34;

        if (v35)
        {
          if (self)
          {
            objc_setProperty_atomic_copy(self, v36, v21, 80);
          }

          if (byte_1EDD02FA9 == 1)
          {
            v37 = *__error();
            v38 = _sa_logt();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = [self debugDescription];
              *buf = 138412290;
              v182 = v39;
              _os_log_impl(&dword_1E0E2F000, v38, OS_LOG_TYPE_DEFAULT, "WARNING: SAKTSYM Used relative path for binary %@", buf, 0xCu);
            }

            *__error() = v37;
          }
        }

        v27 = self;
        if (self)
        {
          break;
        }

LABEL_198:

LABEL_20:
        objc_autoreleasePoolPop(v10);
        v5 = v7;
        if (v7 == v172)
        {
          goto LABEL_207;
        }
      }

      v40 = &v16[-*v16];
      if (*v40 < 0x15u || (v41 = *(v40 + 10)) == 0)
      {
LABEL_65:
        v55 = (v11 - *v11);
        v56 = *v55;
        if (v56 < 0xD)
        {
          v163 = 1;
          if (v56 < 9)
          {
            goto LABEL_162;
          }
        }

        else
        {
          if (v55[6])
          {
            v57 = *(v11 + v55[6]) == 0;
          }

          else
          {
            v57 = 1;
          }

          v163 = v57;
        }

        v58 = v55[4];
        if (v58)
        {
          if (*(v11 + v58 + *(v11 + v58)))
          {
            v158 = [v170 count];
            v59 = *(v11 - *v11 + 8);
            v60 = *(v11 + v59);
            v61 = *(v11 + v59 + v60);
            if (v61)
            {
              v62 = 0;
              v164 = 0;
              v169 = 4 * v61;
              v63 = v5 + v59 + v8 + v60;
              v167 = -1;
              v159 = -1;
              while (1)
              {
                v64 = *&v63[v62 + 8];
                v65 = &v63[v62 + v64];
                v66 = v64 - *(v65 + 2);
                v67 = &v63[v62 + v66];
                v68 = *(v67 + 4);
                if (v68 >= 5 && (v69 = *(v67 + 6)) != 0)
                {
                  v70 = &v63[v62 + 12 + v64 + v69 + *&v63[v62 + 8 + v64 + v69]];
                }

                else
                {
                  v70 = 0;
                }

                v71 = (v11 + *(v11 - *v11 + 8));
                if (*(v71 + *v71) == 1)
                {
                  if (v167 == -1)
                  {
                    if (v68 >= 7 && (v94 = *&v63[v62 + 14 + v66]) != 0)
                    {
                      v95 = *&v63[v62 + 8 + v64 + v94];
                    }

                    else
                    {
                      v95 = -1;
                    }

                    v167 = v95;
                    if (v70)
                    {
                      goto LABEL_85;
                    }

                    goto LABEL_125;
                  }

                  v72 = *__error();
                  v73 = _sa_logt();
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
                  {
                    v109 = [self debugDescription];
                    v110 = &v63[v62 + v64 - *(v65 + 2)];
                    if (*(v110 + 4) >= 7u && (v111 = *(v110 + 7)) != 0)
                    {
                      v112 = *&v63[v62 + 8 + v64 + v111];
                    }

                    else
                    {
                      v112 = -1;
                    }

                    *uu = 138413058;
                    *&uu[4] = v109;
                    *&uu[12] = 2048;
                    *&uu[14] = v167;
                    *&uu[22] = 2048;
                    *v179 = v112;
                    *&v179[8] = 2082;
                    v180 = v70;
                    v155 = v109;
                    _os_log_fault_impl(&dword_1E0E2F000, v73, OS_LOG_TYPE_FAULT, "SAKTSYM %@: ktrace claimed 1 segment, but after 0x%llx here's another: 0x%llx %{public}s", uu, 0x2Au);
                  }

                  *__error() = v72;
                }

                if (v70)
                {
                  goto LABEL_85;
                }

LABEL_125:
                if (!a3 || (v98 = *(a1 + 240), !CSArchitectureIsArm64()) || (v99 = (v11 + *(v11 - *v11 + 8)), *(v99 + *v99) != 1))
                {
                  if (byte_1EDD02FA9 == 1)
                  {
                    v102 = *__error();
                    v103 = _sa_logt();
                    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                    {
                      v114 = &v63[v62 + v64 - *(v65 + 2)];
                      if (*(v114 + 4) >= 0xFu && (v115 = *(v114 + 11)) != 0)
                      {
                        v116 = *&v63[v62 + 8 + v64 + v115];
                      }

                      else
                      {
                        v116 = -1;
                      }

                      v120 = [self debugDescription];
                      *uu = 134218242;
                      *&uu[4] = v116;
                      *&uu[12] = 2112;
                      *&uu[14] = v120;
                      _os_log_debug_impl(&dword_1E0E2F000, v103, OS_LOG_TYPE_DEBUG, "SAKTSYM No name for segment at offset 0x%llx into %@", uu, 0x16u);
                    }

                    *__error() = v102;
                  }

                  goto LABEL_136;
                }

                if (qword_1EDD02FC0 != -1)
                {
                  dispatch_once(&qword_1EDD02FC0, &__block_literal_global_186);
                }

                v70 = "__TEXT_EXEC";
                if (byte_1EDD02FA9 == 1)
                {
                  v100 = *__error();
                  v101 = _sa_logt();
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
                  {
                    v121 = &v63[v62 + v64 - *(v65 + 2)];
                    if (*(v121 + 4) >= 0xFu && (v122 = *(v121 + 11)) != 0)
                    {
                      v123 = *&v63[v62 + 8 + v64 + v122];
                    }

                    else
                    {
                      v123 = -1;
                    }

                    v157 = v123;
                    v124 = [self debugDescription];
                    *uu = 134218242;
                    *&uu[4] = v157;
                    *&uu[12] = 2112;
                    *&uu[14] = v124;
                    _os_log_debug_impl(&dword_1E0E2F000, v101, OS_LOG_TYPE_DEBUG, "SAKTSYM No name for segment at offset 0x%llx into %@, assuming TEXT_EXEC", uu, 0x16u);
                  }

                  *__error() = v100;
                  v70 = "__TEXT_EXEC";
                }

LABEL_85:
                if (SAShouldIgnoreSegmentWithCName(v70))
                {
                  ++v164;
                }

                else
                {
                  v74 = strncmp(v70, "__TEXT", 6uLL);
                  v75 = *(v65 + 2);
                  if (!v74)
                  {
                    v104 = &v63[v62 + v64 - v75];
                    if (*(v104 + 4) < 7u || (v105 = *(v104 + 7)) == 0 || (v106 = *&v63[v62 + 8 + v64 + v105], v106 == -1))
                    {
                      if (byte_1EDD02FA9 == 1)
                      {
                        v107 = *__error();
                        v108 = _sa_logt();
                        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
                        {
                          v119 = [self debugDescription];
                          *uu = 138412290;
                          *&uu[4] = v119;
                          v156 = v119;
                          _os_log_debug_impl(&dword_1E0E2F000, v108, OS_LOG_TYPE_DEBUG, "SAKTSYM TEXT segment has no address for %@", uu, 0xCu);
                        }

                        *__error() = v107;
                        v75 = *(v65 + 2);
                      }
                    }

                    else
                    {
                      v159 = v106;
                    }
                  }

                  v76 = v75;
                  v77 = *&v63[v62 + 8 + v64 - v75];
                  if (v77 < 0xF || !*&v63[v62 + 22 + v64 - v76] || (v78 = *&v63[v62 + 8 + v64 + *&v63[v62 + 22 + v64 - v76]], v78 == -1))
                  {
                    v79 = (v11 - *v11);
                    if (*v79 >= 0xDu && (v80 = v79[6]) != 0 && ((v81 = *(v11 + v80), v77 >= 7) ? (v82 = v81 == 0) : (v82 = 1), !v82 && (v83 = *&v63[v62 + 14 + v64 - v76]) != 0))
                    {
                      v84 = *&v63[v62 + 8 + v64 + v83];
                      if (v159 == -1 || v84 == -1)
                      {
                        v78 = 0x7FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v78 = v84 - v159;
                      }
                    }

                    else
                    {
                      v78 = 0x7FFFFFFFFFFFFFFFLL;
                    }
                  }

                  v86 = SANSStringForCString(v70);
                  v87 = &v63[v62 + v64 - *(v65 + 2)];
                  if (*(v87 + 4) >= 9u && (v88 = *(v87 + 8)) != 0)
                  {
                    v89 = *&v63[v62 + 8 + v64 + v88];
                  }

                  else
                  {
                    v89 = 0;
                  }

                  v90 = [(SABinary *)self segmentWithCleanName:v86 length:v89 offsetIntoBinary:v78];

                  if (v163)
                  {
                    v91 = v64 - *(v65 + 2);
                    if (*&v63[v62 + 8 + v91] < 7u || (v92 = *&v63[v62 + 14 + v91]) == 0 || (v93 = *&v63[v62 + 8 + v64 + v92], v93 == -1))
                    {
                      if (byte_1EDD02FA9 == 1)
                      {
                        v96 = *__error();
                        v97 = _sa_logt();
                        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                        {
                          v117 = [self debugDescription];
                          v118 = [v90 debugDescription];
                          *uu = 138412546;
                          *&uu[4] = v117;
                          *&uu[12] = 2112;
                          *&uu[14] = v118;
                          _os_log_debug_impl(&dword_1E0E2F000, v97, OS_LOG_TYPE_DEBUG, "SAKTSYM symbol owner %@ not contiguous, but segment %@ has no load address", uu, 0x16u);
                        }

                        *__error() = v96;
                      }
                    }

                    else if (v93 - a4 >= a5)
                    {
                      v113 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v90 loadAddress:v93 isInKernelAddressSpace:a3 exclave:0];
                      [v170 addObject:v113];
                    }

                    else
                    {
                      ++v168;
                    }
                  }
                }

LABEL_136:
                v62 += 4;
                if (v169 == v62)
                {
                  goto LABEL_173;
                }
              }
            }

            v164 = 0;
            v159 = -1;
            v167 = -1;
LABEL_173:
            if ((v163 & 1) == 0)
            {
              goto LABEL_180;
            }

            if (v158 == [v170 count])
            {
              v127 = (v11 + *(v11 - *v11 + 8));
              if (*(v127 + *v127) != v164)
              {
                if (byte_1EDD02FA9 == 1)
                {
                  v128 = *__error();
                  v129 = _sa_logt();
                  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
                  {
                    v148 = [self debugDescription];
                    v149 = (v11 + *(v11 - *v11 + 8));
                    LODWORD(v149) = *(v149 + *v149);
                    *uu = 138412546;
                    *&uu[4] = v148;
                    *&uu[12] = 1024;
                    *&uu[14] = v149;
                    _os_log_debug_impl(&dword_1E0E2F000, v129, OS_LOG_TYPE_DEBUG, "SAKTSYM symbol owner %@ not contiguous, but no segments (of %d) have name/load addresses", uu, 0x12u);
                  }

                  *__error() = v128;
                }

                goto LABEL_180;
              }
            }

            goto LABEL_197;
          }

          if (byte_1EDD02FA9 != 1)
          {
LABEL_170:
            if ((v163 & 1) == 0)
            {
              v167 = -1;
              v159 = -1;
LABEL_180:
              v175 = 0u;
              v176 = 0u;
              v173 = 0u;
              v174 = 0u;
              v130 = v170;
              v131 = [v130 countByEnumeratingWithState:&v173 objects:v177 count:16];
              if (v131)
              {
                v132 = *v174;
                while (2)
                {
                  for (i = 0; i != v131; ++i)
                  {
                    if (*v174 != v132)
                    {
                      objc_enumerationMutation(v130);
                    }

                    v134 = *(*(&v173 + 1) + 8 * i);
                    v135 = [v134 binary];
                    v136 = v135 == self;

                    if (v136)
                    {
                      v138 = *__error();
                      v139 = _sa_logt();
                      if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                      {
                        v143 = [v134 debugDescription];
                        *uu = 138412290;
                        *&uu[4] = v143;
                        _os_log_error_impl(&dword_1E0E2F000, v139, OS_LOG_TYPE_ERROR, "SAKTSYM symbol owner contiguous, but already have binary in load infos: %@", uu, 0xCu);
                      }

                      *__error() = v138;
                      goto LABEL_197;
                    }
                  }

                  v131 = [v130 countByEnumeratingWithState:&v173 objects:v177 count:16];
                  if (v131)
                  {
                    continue;
                  }

                  break;
                }
              }

              if (v159 == -1)
              {
                v137 = v167;
              }

              else
              {
                v137 = v159;
              }

              if (v137 == -1)
              {
                if (byte_1EDD02FA9 == 1)
                {
                  v140 = *__error();
                  v141 = _sa_logt();
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
                  {
                    v147 = [self debugDescription];
                    *uu = 138412290;
                    *&uu[4] = v147;
                    _os_log_debug_impl(&dword_1E0E2F000, v141, OS_LOG_TYPE_DEBUG, "SAKTSYM symbol owner %@ contiguous, but has no load address", uu, 0xCu);
                  }

                  *__error() = v140;
                }
              }

              else if (v137 - a4 >= a5)
              {
                v142 = [SABinaryLoadInfo binaryLoadInfoWithBinary:v137 loadAddress:a3 isInKernelAddressSpace:0 exclave:?];
                [v130 addObject:v142];
              }

              else
              {
                ++v165;
              }
            }

LABEL_197:
            v27 = self;
            goto LABEL_198;
          }

          v125 = *__error();
          v126 = _sa_logt();
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
          {
            v145 = [self debugDescription];
            *uu = 138412290;
            *&uu[4] = v145;
            _os_log_debug_impl(&dword_1E0E2F000, v126, OS_LOG_TYPE_DEBUG, "SAKTSYM symbol owner %@ not contiguous, but has zero segments", uu, 0xCu);
          }

LABEL_169:

          *__error() = v125;
          goto LABEL_170;
        }

LABEL_162:
        if (byte_1EDD02FA9 != 1)
        {
          goto LABEL_170;
        }

        v125 = *__error();
        v126 = _sa_logt();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
        {
          v144 = [self debugDescription];
          *uu = 138412290;
          *&uu[4] = v144;
          _os_log_debug_impl(&dword_1E0E2F000, v126, OS_LOG_TYPE_DEBUG, "SAKTSYM symbol owner %@ not contiguous, but has no segments", uu, 0xCu);
        }

        goto LABEL_169;
      }

      v42 = &v16[v41 + 4 + *&v16[v41]];
      v43 = SANSStringForCString(v42);
      if (v43)
      {
        v44 = [self bundleIdentifier];
        v45 = v44 == 0;

        if (v45)
        {
          v53 = SANSStringForCString(v42);
          objc_setProperty_atomic_copy(self, v54, v53, 88);

          goto LABEL_64;
        }

        v46 = [self bundleIdentifier];
        v47 = [v46 isEqualToString:v43];

        if (v47)
        {
LABEL_64:

          goto LABEL_65;
        }

        v48 = *__error();
        v49 = _sa_logt();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          v146 = [self debugDescription];
          *uu = 136315394;
          *&uu[4] = v42;
          *&uu[12] = 2112;
          *&uu[14] = v146;
          _os_log_fault_impl(&dword_1E0E2F000, v49, OS_LOG_TYPE_FAULT, "SAKTSYM Mismatched bundle id %s with existing binary %@", uu, 0x16u);
        }
      }

      else
      {
        v48 = *__error();
        v49 = _sa_logt();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          *uu = 136315138;
          *&uu[4] = v42;
          _os_log_fault_impl(&dword_1E0E2F000, v49, OS_LOG_TYPE_FAULT, "SAKTSYM Unable to get string for bundle id %s", uu, 0xCu);
        }
      }

      *__error() = v48;
      goto LABEL_64;
    }

    v165 = 0;
    v168 = 0;
LABEL_207:
    if ((v168 > 0 || v165 > 0) && byte_1EDD02FA9 == 1)
    {
      v150 = *__error();
      v151 = _sa_logt();
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
      {
        *uu = 67109888;
        *&uu[4] = v168;
        *&uu[8] = 1024;
        *&uu[10] = v165;
        *&uu[14] = 2048;
        *&uu[16] = a4;
        *v179 = 2048;
        *&v179[2] = a4 + a5;
        _os_log_debug_impl(&dword_1E0E2F000, v151, OS_LOG_TYPE_DEBUG, "SAKTSYM %d segments and %d binaries excluded due to range 0x%llx-0x%llx", uu, 0x22u);
      }

      *__error() = v150;
    }

    objc_opt_self();
    [v170 sortUsingComparator:&__block_literal_global_361];
    v152 = [v170 copy];
  }

  else
  {
    v152 = 0;
  }

  v153 = *MEMORY[0x1E69E9840];

  return v152;
}

void __116__SASampleStore_KPerf__addLoadInfoFromKTrace_lastKTraceEventTimestamp_checkForNewLoadInfosEvenWithExistingLoadInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v493 = *MEMORY[0x1E69E9840];
  v4 = [(SASampleStore *)*(a1 + 32) _lastTaskOnOrBeforeTimestamp:a3 inTasks:?];
  v475 = v4;
  if (!v4)
  {
    if (byte_1EDD02FA9 == 1)
    {
      v7 = *__error();
      v8 = _sa_logt();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v404 = [a2 intValue];
        v405 = [*(a1 + 40) debugDescription];
        *buf = 67109378;
        *&buf[4] = v404;
        *&buf[8] = 2112;
        *&buf[10] = v405;
        _os_log_debug_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_DEBUG, "SAKTSYM No tasks with pid %d before last ktrace timestamp %@", buf, 0x12u);
      }

      goto LABEL_12;
    }

LABEL_29:

    v16 = *MEMORY[0x1E69E9840];
    return;
  }

  if ([v4 pid])
  {
    v5 = [v475 binaryLoadInfos];
    if ([v5 count])
    {
      v6 = *(a1 + 56);

      if ((v6 & 1) == 0)
      {
        if (byte_1EDD02FA9 == 1)
        {
          v7 = *__error();
          v8 = _sa_logt();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v409 = [v475 name];
            *buf = 138412546;
            *&buf[4] = v409;
            *&buf[12] = 1024;
            *&buf[14] = [v475 pid];
            _os_log_debug_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] Already have load info, not checking libktrace", buf, 0x12u);
          }

LABEL_12:

          *__error() = v7;
          goto LABEL_29;
        }

        goto LABEL_29;
      }
    }

    else
    {
    }
  }

  v9 = *(a1 + 48);
  [v475 pid];
  v10 = ktrace_dumpbuffer_address_space_pid();
  v471 = v10;
  if (!v10)
  {
    if (byte_1EDD02FA9 != 1)
    {
LABEL_28:

      goto LABEL_29;
    }

    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v408 = [v475 name];
      *buf = 138412546;
      *&buf[4] = v408;
      *&buf[12] = 1024;
      *&buf[14] = [v475 pid];
      _os_log_debug_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] libktrace doesn't have load info", buf, 0x12u);
    }

LABEL_27:

    *__error() = v14;
    goto LABEL_28;
  }

  if (qword_1EDD02FC8 != -1)
  {
    dispatch_once(&qword_1EDD02FC8, &__block_literal_global_192);
  }

  if (byte_1EDD02FAA != 1)
  {
    goto LABEL_311;
  }

  v11 = [v10 bytes];
  v12 = [v10 length];
  v13 = v12;
  *buf = v11;
  *&buf[8] = v12;
  *&buf[16] = xmmword_1E0F28270;
  *&buf[32] = 0;
  LOBYTE(v489) = 1;
  if (v12 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2280, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  if (v12 < 8)
  {
    goto LABEL_21;
  }

  if (strncmp(v11 + 4, "SYMB", 4uLL))
  {
    goto LABEL_21;
  }

  v17 = *v11;
  if (v17 < 1)
  {
    goto LABEL_21;
  }

  if (v13 - 1 < v17)
  {
    goto LABEL_21;
  }

  v18 = &v11[v17];
  if (!flatbuffers::Verifier::VerifyTableStart(buf, &v11[v17]) || !flatbuffers::Table::VerifyOffset(&v11[v17], buf, 4u))
  {
    goto LABEL_21;
  }

  v19 = &v18[-*v18];
  if (*v19 >= 5u)
  {
    v20 = *(v19 + 2);
    if (v20)
    {
      if (!flatbuffers::Verifier::VerifyVectorOrString(buf, &v18[v20 + *&v18[v20]], 4uLL, 0))
      {
        goto LABEL_21;
      }

      v21 = &v18[-*v18];
      if (*v21 >= 5u)
      {
        v22 = *(v21 + 2);
        if (v22)
        {
          v23 = *&v18[v22];
          v462 = &v18[v22 + v23];
          if (*v462)
          {
            v24 = 0;
            v25 = &v11[v17 + v23 + v22];
            v26 = &v11[v17 + v22 + v23];
            v473 = (v26 + 16);
            log = v25 + 1;
            v468 = (v26 + 8);
            v476 = v25 + 2;
            do
            {
              v463 = v24;
              v27 = &v462[4 * v24 + 4];
              v460 = *v27;
              v28 = &v27[v460];
              if (!flatbuffers::Verifier::VerifyTableStart(buf, &v27[v460]))
              {
                goto LABEL_21;
              }

              v29 = (v28 - *v28);
              v30 = *v29;
              if (v30 >= 5 && v29[2] && (*&buf[8] < 2uLL || *&buf[8] - 1 < v28 + v29[2] - *buf))
              {
                goto LABEL_21;
              }

              if (!flatbuffers::Table::VerifyOffset(v28, buf, 6u))
              {
                goto LABEL_21;
              }

              if (v30 < 7)
              {
                if (v30 < 5)
                {
                  goto LABEL_100;
                }
              }

              else if (v29[3])
              {
                v31 = (v28 + v29[3] + *(v28 + v29[3]));
                goto LABEL_52;
              }

              v31 = 0;
LABEL_52:
              if (v29[2])
              {
                v32 = *(v28 + v29[2]);
                if (v32 == 3)
                {
                  if (v31 && !FlatbufferSymbols::DyldSharedCacheMetadata::Verify(v31, buf))
                  {
                    goto LABEL_21;
                  }
                }

                else if (v32 == 2)
                {
                  if (v31 && !FlatbufferSymbols::MachoMetadata::Verify(v31, buf))
                  {
                    goto LABEL_21;
                  }
                }

                else if (v32 == 1 && v31 != 0)
                {
                  if (!flatbuffers::Verifier::VerifyTableStart(buf, v31) || !flatbuffers::Table::VerifyOffset(v31, buf, 4u))
                  {
                    goto LABEL_21;
                  }

                  v34 = (v31 - *v31);
                  if (*v34 >= 5u && (v35 = v34[2]) != 0)
                  {
                    v36 = v31 + v35 + *(v31 + v35);
                  }

                  else
                  {
                    v36 = 0;
                  }

                  if (!flatbuffers::Verifier::VerifyString(buf, v36))
                  {
                    goto LABEL_21;
                  }

                  v37 = (v31 - *v31);
                  v38 = *v37;
                  if (v38 >= 7 && (v37[3] && (*&buf[8] < 9uLL || *&buf[8] - 8 < v31 + v37[3] - *buf) || v38 >= 9 && v37[4] && (*&buf[8] < 9uLL || *&buf[8] - 8 < v31 + v37[4] - *buf)))
                  {
                    goto LABEL_21;
                  }

                  if (!flatbuffers::Table::VerifyOffset(v31, buf, 0xAu))
                  {
                    goto LABEL_21;
                  }

                  v39 = v38 >= 0xB && v37[5] ? v31 + v37[5] + *(v31 + v37[5]) : 0;
                  if (!flatbuffers::Verifier::VerifyString(buf, v39) || !flatbuffers::Table::VerifyOffset(v31, buf, 0xCu))
                  {
                    goto LABEL_21;
                  }

                  v40 = (v31 - *v31);
                  if (*v40 < 0xDu)
                  {
                    goto LABEL_93;
                  }

                  v41 = v40[6];
                  if (!v41)
                  {
                    goto LABEL_93;
                  }

                  if (!flatbuffers::Verifier::VerifyVectorOrString(buf, v31 + v41 + *(v31 + v41), 4uLL, 0))
                  {
                    goto LABEL_21;
                  }

                  v42 = (v31 - *v31);
                  if (*v42 >= 0xDu && (v43 = v42[6]) != 0)
                  {
                    v44 = (v31 + v43 + *(v31 + v43));
                  }

                  else
                  {
LABEL_93:
                    v44 = 0;
                  }

                  if (!flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::TranslatedImageInfo>(buf, v44))
                  {
                    goto LABEL_21;
                  }

                  if (!flatbuffers::Table::VerifyOffset(v31, buf, 0xEu))
                  {
                    goto LABEL_21;
                  }

                  v45 = (v31 - *v31);
                  if (*v45 >= 0xFu)
                  {
                    v46 = v45[7];
                    if (v46)
                    {
                      if (!FlatbufferSymbols::TimeRange::Verify((v31 + v46 + *(v31 + v46)), buf))
                      {
                        goto LABEL_21;
                      }
                    }
                  }

                  --*&buf[16];
                }
              }

LABEL_100:
              if (!flatbuffers::Table::VerifyOffset(v28, buf, 8u))
              {
                goto LABEL_21;
              }

              v47 = (v28 - *v28);
              if (*v47 >= 9u)
              {
                v48 = v47[4];
                if (v48)
                {
                  if (!flatbuffers::Verifier::VerifyVectorOrString(buf, v28 + v48 + *(v28 + v48), 4uLL, 0))
                  {
                    goto LABEL_21;
                  }

                  v49 = (v28 - *v28);
                  if (*v49 >= 9u)
                  {
                    v50 = v49[4];
                    if (v50)
                    {
                      v51 = *(v28 + v50);
                      v448 = (v28 + v50 + v51);
                      if (*v448)
                      {
                        v52 = 0;
                        v458 = v476 + v460 + v51 + v50;
                        v454 = &v473[v460 + v50 + v51];
                        while (1)
                        {
                          v53 = v52;
                          v54 = &v448[v52 + 1];
                          v55 = *v54;
                          v56 = &v54[v55];
                          if (!flatbuffers::Verifier::VerifyTableStart(buf, &v54[v55]))
                          {
                            goto LABEL_21;
                          }

                          v57 = (v56 - *v56);
                          v58 = *v57;
                          if (v58 >= 5 && v57[2] && (*&buf[8] < 2uLL || *&buf[8] - 1 < v56 + v57[2] - *buf))
                          {
                            goto LABEL_21;
                          }

                          if (!flatbuffers::Table::VerifyOffset(v56, buf, 6u))
                          {
                            goto LABEL_21;
                          }

                          if (v58 < 7)
                          {
                            break;
                          }

                          if (!v57[3])
                          {
                            goto LABEL_118;
                          }

                          v59 = (v56 + v57[3] + *(v56 + v57[3]));
LABEL_119:
                          if (v57[2] && v59 && *(v56 + v57[2]) == 1 && !FlatbufferSymbols::MachoMetadata::Verify(v59, buf))
                          {
                            goto LABEL_21;
                          }

LABEL_123:
                          if (!flatbuffers::Table::VerifyOffset(v56, buf, 8u))
                          {
                            goto LABEL_21;
                          }

                          v60 = *v56;
                          v61 = *(v56 - v60);
                          if (v61 < 9)
                          {
                            goto LABEL_259;
                          }

                          if (!*(v56 - v60 + 8))
                          {
                            v64 = -v60;
                            goto LABEL_243;
                          }

                          if (!flatbuffers::Verifier::VerifyVectorOrString(buf, v56 + *(v56 - v60 + 8) + *(v56 + *(v56 - v60 + 8)), 4uLL, 0))
                          {
                            goto LABEL_21;
                          }

                          v62 = *v56;
                          v63 = v56 - v62;
                          v61 = *(v56 - v62);
                          if (v61 < 9)
                          {
                            goto LABEL_259;
                          }

                          v64 = -v62;
                          v65 = *(v63 + 4);
                          if (!v65)
                          {
                            goto LABEL_243;
                          }

                          v66 = *(v56 + v65);
                          v437 = (v56 + v65 + v66);
                          if (!*v437)
                          {
                            goto LABEL_243;
                          }

                          v440 = (v458 + v55 + v66 + v65);
                          v443 = 0;
                          v435 = &v454[v55 + v65 + v66];
                          do
                          {
                            v67 = &v437[v443 + 1];
                            v432 = *v67;
                            v451 = &v67[v432];
                            if (!flatbuffers::Verifier::VerifyTableStart(buf, &v67[v432]) || !flatbuffers::Table::VerifyOffset(v451, buf, 4u))
                            {
                              goto LABEL_21;
                            }

                            v68 = (v451 - *v451);
                            if (*v68 >= 5u && (v69 = v68[2]) != 0)
                            {
                              v70 = v451 + v69 + *(v451 + v69);
                            }

                            else
                            {
                              v70 = 0;
                            }

                            if (!flatbuffers::Verifier::VerifyString(buf, v70))
                            {
                              goto LABEL_21;
                            }

                            v71 = (v451 - *v451);
                            v72 = *v71;
                            if (v72 >= 7 && (v71[3] && (*&buf[8] < 9uLL || *&buf[8] - 8 < v451 + v71[3] - *buf) || v72 >= 9 && v71[4] && (*&buf[8] < 9uLL || *&buf[8] - 8 < v451 + v71[4] - *buf)))
                            {
                              goto LABEL_21;
                            }

                            if (!flatbuffers::Table::VerifyOffset(v451, buf, 0xAu))
                            {
                              goto LABEL_21;
                            }

                            if (v72 >= 0xB && v71[5])
                            {
                              if (!flatbuffers::Verifier::VerifyVectorOrString(buf, v451 + v71[5] + *(v451 + v71[5]), 4uLL, 0))
                              {
                                goto LABEL_21;
                              }

                              v73 = (v451 - *v451);
                              if (*v73 >= 0xBu)
                              {
                                v74 = v73[5];
                                if (v74)
                                {
                                  v75 = v451 + v74;
                                  v76 = *(v451 + v74);
                                  if (*(v451 + v74 + v76))
                                  {
                                    v77 = 0;
                                    v78 = (v440 + v432 + v76 + v74);
                                    while ((FlatbufferSymbols::Symbol::Verify((v78 + *v78), buf) & 1) != 0)
                                    {
                                      ++v77;
                                      ++v78;
                                      if (v77 >= *&v75[v76])
                                      {
                                        goto LABEL_156;
                                      }
                                    }

                                    goto LABEL_21;
                                  }
                                }
                              }
                            }

LABEL_156:
                            if (!flatbuffers::Table::VerifyOffset(v451, buf, 0xCu))
                            {
                              goto LABEL_21;
                            }

                            v79 = (v451 - *v451);
                            v80 = *v79;
                            if (v80 >= 0xD)
                            {
                              if (v79[6])
                              {
                                v81 = (v451 + v79[6] + *(v451 + v79[6]));
                                v82 = v81 - *buf;
                                if ((v81 - *buf) & 3) != 0 && (v489)
                                {
                                  goto LABEL_21;
                                }

                                if (*&buf[8] < 5uLL)
                                {
                                  goto LABEL_21;
                                }

                                if (*&buf[8] - 4 < v82)
                                {
                                  goto LABEL_21;
                                }

                                v83 = *v81;
                                if (v83 > 0x7FFFFFFE)
                                {
                                  goto LABEL_21;
                                }

                                v84 = v83 + 4;
                                v86 = *&buf[8] >= v84;
                                v85 = *&buf[8] - v84;
                                v86 = v85 != 0 && v86 && v85 >= v82;
                                if (!v86)
                                {
                                  goto LABEL_21;
                                }
                              }

                              if (v80 >= 0xF && (v79[7] && (*&buf[8] < 9uLL || *&buf[8] - 8 < v451 + v79[7] - *buf) || v80 >= 0x11 && (v79[8] && (*&buf[8] < 2uLL || *&buf[8] - 1 < v451 + v79[8] - *buf) || v80 >= 0x13 && (v79[9] && (*&buf[8] < 2uLL || *&buf[8] - 1 < v451 + v79[9] - *buf) || v80 >= 0x15 && v79[10] && (*&buf[8] < 2uLL || *&buf[8] - 1 < v451 + v79[10] - *buf)))))
                              {
                                goto LABEL_21;
                              }
                            }

                            if (!flatbuffers::Table::VerifyOffset(v451, buf, 0x16u))
                            {
                              goto LABEL_21;
                            }

                            if (v80 >= 0x17 && v79[11])
                            {
                              if (!flatbuffers::Verifier::VerifyVectorOrString(buf, v451 + v79[11] + *(v451 + v79[11]), 4uLL, 0))
                              {
                                goto LABEL_21;
                              }

                              v87 = (v451 - *v451);
                              if (*v87 >= 0x17u)
                              {
                                v88 = v87[11];
                                if (v88)
                                {
                                  v429 = v451 + v88;
                                  v434 = *(v451 + v88);
                                  if (*(v451 + v88 + v434))
                                  {
                                    v430 = 0;
                                    v89 = v440 + v88 + v432;
                                    v433 = &v435[v432 + v88];
                                    do
                                    {
                                      v90 = &v89[v434];
                                      v91 = *&v89[v434];
                                      if (!flatbuffers::Verifier::VerifyTableStart(buf, &v89[v434 + v91]) || !flatbuffers::Table::VerifyOffset(&v90[v91], buf, 4u))
                                      {
                                        goto LABEL_21;
                                      }

                                      v92 = v91 - *&v89[v434 + v91];
                                      if (*&v89[v434 + v92] >= 5u && (v93 = *&v89[v434 + 4 + v92]) != 0)
                                      {
                                        v94 = &v89[v434 + v91 + v93 + *&v89[v434 + v91 + v93]];
                                      }

                                      else
                                      {
                                        v94 = 0;
                                      }

                                      if (!flatbuffers::Verifier::VerifyString(buf, v94))
                                      {
                                        goto LABEL_21;
                                      }

                                      v431 = v91 - *&v89[v434 + v91];
                                      v95 = *&v89[v434 + v431];
                                      if (v95 >= 7 && (*&v89[v434 + 6 + v431] && (*&buf[8] < 9uLL || *&buf[8] - 8 < &v433[v434 + v91 + *&v89[v434 + 6 + v431] - *buf]) || v95 >= 9 && *&v89[v434 + 8 + v431] && (*&buf[8] < 9uLL || *&buf[8] - 8 < &v433[v434 + v91 + *&v89[v434 + 8 + v431] - *buf])))
                                      {
                                        goto LABEL_21;
                                      }

                                      if (!flatbuffers::Table::VerifyOffset(&v90[v91], buf, 0xAu))
                                      {
                                        goto LABEL_21;
                                      }

                                      if (v95 >= 0xB && *&v89[v434 + 10 + v431])
                                      {
                                        v96 = *&v89[v434 + 10 + v431];
                                        v97 = v91 + v96 + *&v89[v434 + v91 + v96];
                                        v98 = &v433[v434 + v97 - *buf];
                                        if (v98 & 3) != 0 && (v489)
                                        {
                                          goto LABEL_21;
                                        }

                                        if (*&buf[8] < 5uLL)
                                        {
                                          goto LABEL_21;
                                        }

                                        if (*&buf[8] - 4 < v98)
                                        {
                                          goto LABEL_21;
                                        }

                                        v99 = *&v89[v434 + v97];
                                        if (v99 > 0x7FFFFFFE)
                                        {
                                          goto LABEL_21;
                                        }

                                        v100 = v99 + 4;
                                        v86 = *&buf[8] >= v100;
                                        v101 = *&buf[8] - v100;
                                        if (v101 == 0 || !v86 || v101 < v98)
                                        {
                                          goto LABEL_21;
                                        }
                                      }

                                      --*&buf[16];
                                      v89 += 4;
                                      v433 += 4;
                                    }

                                    while (++v430 < *&v429[v434]);
                                  }
                                }
                              }
                            }

                            if (!flatbuffers::Table::VerifyOffset(v451, buf, 0x18u))
                            {
                              goto LABEL_21;
                            }

                            v103 = (v451 - *v451);
                            if (*v103 < 0x19u)
                            {
                              goto LABEL_229;
                            }

                            v104 = v103[12];
                            if (!v104)
                            {
                              goto LABEL_229;
                            }

                            if (!flatbuffers::Verifier::VerifyVectorOrString(buf, v451 + v104 + *(v451 + v104), 4uLL, 0))
                            {
                              goto LABEL_21;
                            }

                            v105 = (v451 - *v451);
                            if (*v105 >= 0x19u && (v106 = v105[12]) != 0)
                            {
                              v107 = (v451 + v106 + *(v451 + v106));
                            }

                            else
                            {
LABEL_229:
                              v107 = 0;
                            }

                            if (!flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SymbolNameEntry>(buf, v107) || !flatbuffers::Table::VerifyOffset(v451, buf, 0x1Au))
                            {
                              goto LABEL_21;
                            }

                            v108 = (v451 - *v451);
                            if (*v108 < 0x1Bu)
                            {
                              goto LABEL_238;
                            }

                            v109 = v108[13];
                            if (!v109)
                            {
                              goto LABEL_238;
                            }

                            if (!flatbuffers::Verifier::VerifyVectorOrString(buf, v451 + v109 + *(v451 + v109), 4uLL, 0))
                            {
                              goto LABEL_21;
                            }

                            v110 = (v451 - *v451);
                            if (*v110 >= 0x1Bu && (v111 = v110[13]) != 0)
                            {
                              v112 = (v451 + v111 + *(v451 + v111));
                            }

                            else
                            {
LABEL_238:
                              v112 = 0;
                            }

                            if ((flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SymbolNameEntry>(buf, v112) & 1) == 0)
                            {
                              goto LABEL_21;
                            }

                            --*&buf[16];
                            v440 = (v440 + 4);
                            ++v443;
                            v435 += 4;
                          }

                          while (v443 < *v437);
                          v113 = *v56;
                          v64 = -v113;
                          v61 = *(v56 - v113);
LABEL_243:
                          if (v61 >= 0xB)
                          {
                            v114 = (v56 + v64);
                            if (v114[5])
                            {
                              if (*&buf[8] < 9uLL || *&buf[8] - 8 < v56 + v114[5] - *buf)
                              {
                                goto LABEL_21;
                              }
                            }

                            if (v61 >= 0xD && (v114[6] && (*&buf[8] < 2uLL || *&buf[8] - 1 < v56 + v114[6] - *buf) || v61 >= 0xF && (v114[7] && (*&buf[8] < 2uLL || *&buf[8] - 1 < v56 + v114[7] - *buf) || v61 >= 0x11 && v114[8] && (*&buf[8] < 5uLL || *&buf[8] - 4 < v56 + v114[8] - *buf))))
                            {
                              goto LABEL_21;
                            }
                          }

LABEL_259:
                          --*&buf[16];
                          v52 = v53 + 1;
                          v454 += 4;
                          v458 += 4;
                          if (v53 + 1 >= *v448)
                          {
                            goto LABEL_260;
                          }
                        }

                        if (v58 < 5)
                        {
                          goto LABEL_123;
                        }

LABEL_118:
                        v59 = 0;
                        goto LABEL_119;
                      }
                    }
                  }
                }
              }

LABEL_260:
              if (!flatbuffers::Table::VerifyOffset(v28, buf, 0xAu))
              {
                goto LABEL_21;
              }

              v115 = (v28 - *v28);
              if (*v115 >= 0xBu)
              {
                v116 = v115[5];
                if (v116)
                {
                  if (!flatbuffers::Verifier::VerifyVectorOrString(buf, v28 + v116 + *(v28 + v116), 4uLL, 0))
                  {
                    goto LABEL_21;
                  }

                  v117 = (v28 - *v28);
                  if (*v117 >= 0xBu)
                  {
                    v118 = v117[5];
                    if (v118)
                    {
                      v119 = *(v28 + v118);
                      v449 = v28 + v118;
                      if (*(v28 + v118 + v119))
                      {
                        v120 = 0;
                        v459 = &v468[v460 + v118];
                        v121 = v118 + v460;
                        v122 = log + v121;
                        v461 = v476 + v121;
                        while (1)
                        {
                          v123 = &v122[v119];
                          v124 = *&v122[v119];
                          if (!flatbuffers::Verifier::VerifyTableStart(buf, &v122[v119 + v124]))
                          {
                            goto LABEL_21;
                          }

                          v455 = *&v122[v119 + v124];
                          v125 = v124 - v455;
                          v126 = *&v123[v124 - v455];
                          if (v126 >= 5 && *&v122[v119 + 4 + v125] && (*&buf[8] < 2uLL || *&buf[8] - 1 < &v459[v119 + v124 + *&v122[v119 + 4 + v125] - *buf]))
                          {
                            goto LABEL_21;
                          }

                          if (!flatbuffers::Table::VerifyOffset(&v123[v124], buf, 6u))
                          {
                            goto LABEL_21;
                          }

                          if (v126 < 7)
                          {
                            break;
                          }

                          if (!*&v122[v119 + 6 + v125])
                          {
                            goto LABEL_278;
                          }

                          v127 = v124 + *&v122[v119 + 6 + v125];
                          v128 = &v122[v119 + v127 + *&v122[v119 + v127]];
LABEL_279:
                          v129 = -v455;
                          if (*&v122[v119 + 4 + v125] && v128 && v122[v119 + v124 + *&v122[v119 + 4 + v125]] == 1)
                          {
                            if (!FlatbufferSymbols::DyldSharedCacheMetadata::Verify(v128, buf))
                            {
                              goto LABEL_21;
                            }

                            v130 = *&v122[v119 + v124];
                            v129 = -v130;
                            v126 = *&v122[v119 + v124 - v130];
                          }

                          if (v126 >= 9)
                          {
                            v131 = *(v461 + v119 + v129 + v124);
                            if (v131)
                            {
                              if (*&buf[8] < 9uLL || *&buf[8] - 8 < &v459[v119 + v124 + v131 - *buf])
                              {
                                goto LABEL_21;
                              }
                            }
                          }

LABEL_288:
                          --*&buf[16];
                          ++v120;
                          v459 += 4;
                          v122 += 4;
                          v461 += 4;
                          if (v120 >= *&v449[v119])
                          {
                            goto LABEL_289;
                          }
                        }

                        if (v126 < 5)
                        {
                          goto LABEL_288;
                        }

LABEL_278:
                        v128 = 0;
                        goto LABEL_279;
                      }
                    }
                  }
                }
              }

LABEL_289:
              --*&buf[16];
              v24 = v463 + 1;
              v476 = (v476 + 4);
              v473 += 4;
              log = (log + 4);
              v468 += 4;
            }

            while (v463 + 1 < *v462);
          }
        }
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(&v11[v17], buf, 6u))
  {
LABEL_21:
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v406 = [v475 name];
      v407 = [v475 pid];
      *uu = 138412546;
      *&uu[4] = v406;
      *&uu[12] = 1024;
      *&uu[14] = v407;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "SAKTSYM %@ [%d] libktrace load info failed verification", uu, 0x12u);
    }

    goto LABEL_27;
  }

  v132 = &v18[-*v18];
  if (*v132 >= 7u)
  {
    v133 = *(v132 + 3);
    if (v133)
    {
      if (flatbuffers::Verifier::VerifyVectorOrString(buf, &v18[v133 + *&v18[v133]], 4uLL, 0))
      {
        v134 = &v18[-*v18];
        if (*v134 >= 7u)
        {
          v135 = *(v134 + 3);
          if (v135)
          {
            v136 = &v18[v135];
            v137 = *&v18[v135];
            if (*&v18[v135 + v137])
            {
              v138 = 0;
              v139 = &v11[v17 + 4 + v135];
              v140 = v136;
              while (1)
              {
                v141 = &v140[v137];
                v143 = &v140[v137 + 4];
                v142 = *v143;
                if (!flatbuffers::Verifier::VerifyTableStart(buf, &v143[v142]))
                {
                  goto LABEL_21;
                }

                v144 = v142 - *&v141[v142 + 4];
                v145 = *&v141[v144 + 4];
                if (v145 >= 5 && *&v140[v137 + 8 + v144] && (*&buf[8] < 5uLL || *&buf[8] - 4 < v137 + v139 + v142 + *&v140[v137 + 8 + v144] - *buf))
                {
                  goto LABEL_21;
                }

                if (!flatbuffers::Table::VerifyOffset(&v143[v142], buf, 6u))
                {
                  goto LABEL_21;
                }

                if (v145 >= 7 && *&v140[v137 + 10 + v144])
                {
                  v146 = v142 + *&v140[v137 + 10 + v144];
                  v147 = &v140[v137 + 4 + v146 + *&v140[v137 + 4 + v146]];
                }

                else
                {
                  v147 = 0;
                }

                if (!flatbuffers::Verifier::VerifyString(buf, v147))
                {
                  goto LABEL_21;
                }

                --*&buf[16];
                ++v138;
                v139 += 4;
                v140 += 4;
                if (v138 >= *&v136[v137])
                {
                  goto LABEL_310;
                }
              }
            }
          }
        }

        goto LABEL_310;
      }

      goto LABEL_21;
    }
  }

LABEL_310:
  v10 = v471;
LABEL_311:
  v148 = [v10 bytes];
  v149 = *v148;
  v150 = *(v148 + v149 - *(v148 + v149) + 4);
  v151 = (v148 + v149 + v150);
  v152 = *v151;
  v153 = v151 + v152;
  v154 = *(v151 + v152);
  if (!v154)
  {
    goto LABEL_28;
  }

  v474 = &v153[4 * v154];
  v155 = v148 + v150 + v149 + v152;
  v156 = v153 + 12;
  while (1)
  {
    v157 = *(v153 + 1);
    v477 = v153 + 4;
    v158 = &v153[v157 + 4];
    v159 = *v158;
    v160 = -v159;
    v161 = &v158[-v159];
    v162 = *v161;
    if (v162 < 5 || !*(v161 + 2))
    {
      goto LABEL_494;
    }

    if (v162 < 7 || v158[*(v161 + 2)] != 1)
    {
      goto LABEL_494;
    }

    v164 = *(v161 + 3);
    if (!v164)
    {
      goto LABEL_494;
    }

    v165 = &v158[v164 + *&v158[v164]];
    v166 = &v165[-*v165];
    if (*v166 >= 7u)
    {
      v167 = *(v166 + 3);
      if (v167)
      {
        v168 = *&v165[v167];
        if (v168 != -1)
        {
          break;
        }
      }
    }

    if (byte_1EDD02FA9 == 1)
    {
      v180 = *__error();
      v181 = _sa_logt();
      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
      {
        v249 = [v475 name];
        v250 = [v475 pid];
        v251 = &v165[-*v165];
        if (*v251 < 5u)
        {
          v252 = 0;
        }

        else
        {
          v252 = *(v251 + 2);
          if (v252)
          {
            v252 += &v165[*&v165[v252]];
          }
        }

        *buf = 138412802;
        *&buf[4] = v249;
        *&buf[12] = 1024;
        *&buf[14] = v250;
        *&buf[18] = 2080;
        *&buf[20] = v252 + 4;
        _os_log_debug_impl(&dword_1E0E2F000, v181, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] process %s missing pid", buf, 0x1Cu);
      }

      goto LABEL_334;
    }

LABEL_512:
    v155 += 4;
    v156 += 4;
    v153 = v477;
    if (v477 == v474)
    {
      goto LABEL_28;
    }
  }

  if ([v475 pid] == v168)
  {
    v169 = &v165[-*v165];
    if (*v169 >= 0xBu && (v170 = *(v169 + 5)) != 0)
    {
      v171 = &v165[v170 + *&v165[v170]];
      *uu = 0;
      *&uu[8] = 0;
      uuid_parse(v171 + 4, uu);
      v172 = uuidForBytes(uu);
      v173 = [v475 mainBinary];
      v469 = v172;
      v174 = v173 == 0;

      if (!v174)
      {
        v175 = [v475 mainBinary];
        v176 = [v175 uuid];
        v177 = [v176 isEqual:v469];

        if ((v177 & 1) == 0)
        {
          v178 = *__error();
          v179 = _sa_logt();
          if (os_log_type_enabled(v179, OS_LOG_TYPE_FAULT))
          {
            v359 = [v475 name];
            v360 = [v475 pid];
            v361 = [v475 mainBinary];
            v362 = [v361 debugDescription];
            *buf = 138413058;
            *&buf[4] = v359;
            *&buf[12] = 1024;
            *&buf[14] = v360;
            *&buf[18] = 2112;
            *&buf[20] = v469;
            *&buf[28] = 2112;
            *&buf[30] = v362;
            _os_log_fault_impl(&dword_1E0E2F000, v179, OS_LOG_TYPE_FAULT, "SAKTSYM %@ [%d] Mismatched main binary %@ with existing %@", buf, 0x26u);
          }

          *__error() = v178;
          goto LABEL_512;
        }
      }
    }

    else
    {
      v469 = 0;
    }

    v182 = &v158[-*v158];
    if (*v182 >= 0xBu && (v183 = *(v182 + 5)) != 0)
    {
      v184 = *&v158[v183];
      v185 = *&v158[v183 + v184];
      if (v185)
      {
        v186 = 0;
        v187 = 4 * v185;
        v188 = &v155[v157 + v184 + v183];
        v450 = &v156[v157 + v183 + v184];
        loga = 1;
        do
        {
          v189 = *&v188[v186 + 8];
          v190 = &v188[v186 + v189];
          v191 = v189 - *(v190 + 2);
          v192 = &v188[v186 + v191];
          v193 = *(v192 + 4);
          if (v193 >= 5 && (v194 = *(v192 + 6)) != 0 && ((v195 = v188[v189 + 8 + v194 + v186], v193 >= 7) ? (v196 = v195 == 1) : (v196 = 0), v196 && (v197 = &v188[v186 + v191], v198 = *(v197 + 7), *(v197 + 7))))
          {
            v199 = *&v188[v189 + 8 + v198 + v186];
            v200 = v189 + v198 + v199;
            v201 = *&v188[v186 + 8 + v200];
            v202 = &v188[v186 + v200 - v201];
            v203 = *(v202 + 4);
            if (v203 < 5 || !*(v202 + 6))
            {
              if (byte_1EDD02FA9 != 1)
              {
                goto LABEL_361;
              }

              v210 = *__error();
              v211 = _sa_logt();
              if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
              {
                v223 = [v475 name];
                v224 = [v475 pid];
                *buf = 138412546;
                *&buf[4] = v223;
                *&buf[12] = 1024;
                *&buf[14] = v224;
                _os_log_debug_impl(&dword_1E0E2F000, v211, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] No shared cache UUID", buf, 0x12u);
              }

              goto LABEL_360;
            }

            v452 = *&v188[v189 + 8 + v198 + v199 + v186 + *(v202 + 6)];
            v456 = *(v202 + 6);
            if (v193 > 8)
            {
              v204 = *&v188[v186 + 16 + v191];
              if (v204)
              {
                v205 = *&v188[v189 + 8 + v204 + v186];
                if (v205 != -1)
                {
                  v444 = *&v188[v189 + 8 + v198 + v186];
                  if (v203 >= 0x15)
                  {
                    v206 = v189 + v198 + v199;
                    v207 = *&v188[v186 + 28 + v206 - v201];
                    if (v207)
                    {
                      v208 = *&v188[v206 + 8 + v186 + v207];
                      if (v208 != -1)
                      {
                        v209 = v208 + v205;
                        goto LABEL_376;
                      }
                    }
                  }

                  if (byte_1EDD02FA9 == 1)
                  {
                    v446 = *__error();
                    v217 = _sa_logt();
                    if (os_log_type_enabled(v217, OS_LOG_TYPE_DEBUG))
                    {
                      v442 = v217;
                      v231 = [v475 name];
                      v232 = [v475 pid];
                      v233 = &v188[v189 - *(v190 + 2) + v186];
                      if (*(v233 + 4) >= 9u && (v234 = *(v233 + 8)) != 0)
                      {
                        v235 = *&v188[v189 + 8 + v234 + v186];
                      }

                      else
                      {
                        v235 = -1;
                      }

                      *buf = 138413058;
                      *&buf[4] = v231;
                      *&buf[12] = 1024;
                      *&buf[14] = v232;
                      *&buf[18] = 2080;
                      *&buf[20] = &v450[v186 + v452 + v189 + v198 + v444 + v456];
                      *&buf[28] = 2048;
                      *&buf[30] = v235;
                      _os_log_debug_impl(&dword_1E0E2F000, v442, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] Shared cache %s with slide 0x%llx has no unslid base address", buf, 0x26u);

                      v217 = v442;
                    }

                    *__error() = v446;
                    v447 = -1;
                    v199 = v444;
                  }

                  else
                  {
                    v209 = -1;
LABEL_376:
                    v447 = v209;
                  }

                  if (loga)
                  {
                    *buf = 0;
                    *&buf[8] = 0;
                    uuid_parse(&v188[v186 + 12 + v189 + v198 + v199 + v456 + v452], buf);
                    v218 = &v188[v189 - *(v190 + 2) + v186];
                    if (*(v218 + 4) < 9u)
                    {
                      v221 = -1;
                      v220 = v447;
                    }

                    else
                    {
                      v219 = *(v218 + 8);
                      v220 = v447;
                      if (v219)
                      {
                        v221 = *&v188[v189 + 8 + v219 + v186];
                      }

                      else
                      {
                        v221 = -1;
                      }
                    }

                    v226 = [(SASampleStore *)*(a1 + 32) applySharedCacheToTask:v475 uuid:buf slide:v221 slidBaseAddress:v220];
                    loga = 0;
                    goto LABEL_361;
                  }

                  v441 = *__error();
                  v222 = _sa_logt();
                  if (os_log_type_enabled(v222, OS_LOG_TYPE_FAULT))
                  {
                    logb = v222;
                    v227 = [v475 name];
                    v436 = [v475 pid];
                    v228 = &v188[v189 - *(v190 + 2) + v186];
                    if (*(v228 + 4) >= 9u && (v229 = *(v228 + 8)) != 0)
                    {
                      v230 = *&v188[v189 + 8 + v229 + v186];
                    }

                    else
                    {
                      v230 = -1;
                    }

                    v439 = [v475 sharedCache];
                    v236 = [v439 debugDescription];
                    *buf = 138413570;
                    *&buf[4] = v227;
                    *&buf[12] = 1024;
                    *&buf[14] = v436;
                    *&buf[18] = 2080;
                    *&buf[20] = &v450[v186 + v452 + v189 + v198 + v444 + v456];
                    *&buf[28] = 2048;
                    *&buf[30] = v230;
                    *&buf[38] = 2048;
                    v489 = v447;
                    v490 = 2112;
                    v237 = v236;
                    v491 = v236;
                    _os_log_fault_impl(&dword_1E0E2F000, logb, OS_LOG_TYPE_FAULT, "SAKTSYM %@ [%d] Ignoring second shared cache %s slide 0x%llx slideBaseAddress 0x%llx (existing %@)", buf, 0x3Au);

                    v222 = logb;
                  }

                  v215 = __error();
                  loga = 0;
                  v216 = v441;
LABEL_371:
                  *v215 = v216;
                  goto LABEL_361;
                }
              }
            }

            if (byte_1EDD02FA9 == 1)
            {
              v445 = *__error();
              v214 = _sa_logt();
              if (os_log_type_enabled(v214, OS_LOG_TYPE_DEBUG))
              {
                v438 = [v475 name];
                v225 = [v475 pid];
                *buf = 138412802;
                *&buf[4] = v438;
                *&buf[12] = 1024;
                *&buf[14] = v225;
                *&buf[18] = 2080;
                *&buf[20] = &v450[v186 + v452 + v189 + v198 + v199 + v456];
                _os_log_debug_impl(&dword_1E0E2F000, v214, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] Shared cache %s with no slide", buf, 0x1Cu);
              }

              v215 = __error();
              v216 = v445;
              goto LABEL_371;
            }
          }

          else if (byte_1EDD02FA9 == 1)
          {
            v210 = *__error();
            v211 = _sa_logt();
            if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
            {
              v212 = [v475 name];
              v213 = [v475 pid];
              *buf = 138412546;
              *&buf[4] = v212;
              *&buf[12] = 1024;
              *&buf[14] = v213;
              _os_log_debug_impl(&dword_1E0E2F000, v211, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] No shared cache metadata", buf, 0x12u);
            }

LABEL_360:

            *__error() = v210;
          }

LABEL_361:
          v186 += 4;
        }

        while (v187 != v186);
      }
    }

    else if (byte_1EDD02FA9 == 1)
    {
      v238 = *__error();
      v239 = _sa_logt();
      if (os_log_type_enabled(v239, OS_LOG_TYPE_DEBUG))
      {
        v253 = [v475 name];
        v254 = [v475 pid];
        *buf = 138412546;
        *&buf[4] = v253;
        *&buf[12] = 1024;
        *&buf[14] = v254;
        _os_log_debug_impl(&dword_1E0E2F000, v239, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] No shared cache", buf, 0x12u);
      }

      *__error() = v238;
    }

    objc_copyStruct(buf, (v475 + 288), 8, 1, 0);
    v240 = v469;
    if (!*buf)
    {
      v241 = &v158[-*v158];
      v242 = *v241;
      if (v242 >= 5)
      {
        if (*(v241 + 2))
        {
          if (v242 >= 7 && v158[*(v241 + 2)] == 2)
          {
            v244 = *(v241 + 3);
            if (v244)
            {
              v245 = &v158[v244 + *&v158[v244]];
              v246 = &v245[-*v245];
              v247 = *v246;
              if (v247 < 0xD)
              {
                v248 = 0;
              }

              else
              {
                v248 = *(v246 + 6);
                if (*(v246 + 6))
                {
                  v248 = (v248 + v245 + *(v248 + v245));
                }
              }

              v255 = (v248 - *v248);
              if (*v255 >= 7u && (v256 = v255[3]) != 0)
              {
                v257 = *(v248 + v256);
              }

              else
              {
                v257 = 0;
              }

              if (v247 >= 0xD && (v258 = *(v246 + 6)) != 0)
              {
                v259 = &v245[v258 + *&v245[v258]];
              }

              else
              {
                v259 = 0;
              }

              v260 = &v259[-*v259];
              if (*v260 >= 9u && (v261 = *(v260 + 4)) != 0)
              {
                v262 = (*&v259[v261] & 0xFFFFFF) << 32;
              }

              else
              {
                v262 = 0;
              }

              *buf = v262 | v257;
              objc_copyStruct((v475 + 288), buf, 8, 1, 0);
              if (byte_1EDD02FA9 == 1)
              {
                v263 = *__error();
                v264 = _sa_logt();
                if (os_log_type_enabled(v264, OS_LOG_TYPE_DEBUG))
                {
                  v386 = [v475 name];
                  v387 = [v475 pid];
                  objc_copyStruct(uu, (v475 + 288), 8, 1, 0);
                  FamilyName = CSArchitectureGetFamilyName();
                  *buf = 138412802;
                  *&buf[4] = v386;
                  *&buf[12] = 1024;
                  *&buf[14] = v387;
                  *&buf[18] = 2082;
                  *&buf[20] = FamilyName;
                  _os_log_debug_impl(&dword_1E0E2F000, v264, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] Applied architecture %{public}s", buf, 0x1Cu);
                }

                *__error() = v263;
                v240 = v469;
              }
            }
          }
        }
      }
    }

    v265 = &v158[-*v158];
    if (*v265 < 9u || !*(v265 + 4))
    {
      if (byte_1EDD02FA9 != 1)
      {
        v273 = 0;
        goto LABEL_475;
      }

      v271 = *__error();
      v272 = _sa_logt();
      if (os_log_type_enabled(v272, OS_LOG_TYPE_DEBUG))
      {
        v349 = [v475 name];
        v350 = [v475 pid];
        *buf = 138412546;
        *&buf[4] = v349;
        *&buf[12] = 1024;
        *&buf[14] = v350;
        _os_log_debug_impl(&dword_1E0E2F000, v272, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] No symbol owners", buf, 0x12u);
      }

      v273 = 0;
      *__error() = v271;
LABEL_474:
      v240 = v469;
LABEL_475:
      if (!v240)
      {
        if (byte_1EDD02FA9 == 1)
        {
          v295 = *__error();
          v296 = _sa_logt();
          if (os_log_type_enabled(v296, OS_LOG_TYPE_DEBUG))
          {
            v355 = [v475 name];
            v356 = [v475 pid];
            v357 = [v475 mainBinaryLoadInfo];
            v358 = [v357 debugDescription];
            *buf = 138412802;
            *&buf[4] = v355;
            *&buf[12] = 1024;
            *&buf[14] = v356;
            *&buf[18] = 2112;
            *&buf[20] = v358;
            _os_log_debug_impl(&dword_1E0E2F000, v296, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] No main binary (assuming %@)", buf, 0x1Cu);
          }

          v240 = v469;
          *__error() = v295;
        }

        goto LABEL_493;
      }

      v288 = [SABinary binaryWithUUID:v240 absolutePath:v273];
      if ([v475 pid])
      {
        v289 = [v475 mainBinary];
        v290 = v289 == 0;

        if (!v290)
        {
          v291 = [v475 mainBinary];
          v292 = v291 == v288;

          if (v292)
          {
            goto LABEL_492;
          }

          [(SASampleStore *)v475 setEndTime:v288];
          if (byte_1EDD02FA9 != 1)
          {
            goto LABEL_492;
          }

          v293 = *__error();
          v294 = _sa_logt();
          if (os_log_type_enabled(v294, OS_LOG_TYPE_DEBUG))
          {
            v371 = [v475 name];
            v372 = [v475 pid];
            v373 = [v288 debugDescription];
            *buf = 138412802;
            *&buf[4] = v371;
            *&buf[12] = 1024;
            *&buf[14] = v372;
            *&buf[18] = 2112;
            *&buf[20] = v373;
            _os_log_debug_impl(&dword_1E0E2F000, v294, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] Main binary non-lowest %@", buf, 0x1Cu);
          }

          goto LABEL_491;
        }

        [(SASampleStore *)v475 setEndTime:v288];
        if (byte_1EDD02FA9 == 1)
        {
          v293 = *__error();
          v294 = _sa_logt();
          if (os_log_type_enabled(v294, OS_LOG_TYPE_DEBUG))
          {
            v374 = [v475 name];
            v375 = [v475 pid];
            v376 = [v288 debugDescription];
            *buf = 138412802;
            *&buf[4] = v374;
            *&buf[12] = 1024;
            *&buf[14] = v375;
            *&buf[18] = 2112;
            *&buf[20] = v376;
            _os_log_debug_impl(&dword_1E0E2F000, v294, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] Main binary %@", buf, 0x1Cu);
          }

LABEL_491:

          *__error() = v293;
        }
      }

      else
      {
        [(SASampleStore *)v475 setEndTime:v288];
      }

LABEL_492:

      v240 = v469;
LABEL_493:

      v160 = -*v158;
LABEL_494:
      v297 = &v158[v160];
      v298 = *v297;
      if (v298 < 5 || !*(v297 + 2))
      {
        goto LABEL_512;
      }

      if (v298 < 7 || v158[*(v297 + 2)] != 3)
      {
        goto LABEL_512;
      }

      v300 = *(v297 + 3);
      if (!v300)
      {
        goto LABEL_512;
      }

      v301 = &v158[v300 + *&v158[v300]];
      v302 = (v301 - *v301);
      if (*v302 < 5u || (v303 = v302[2]) == 0)
      {
        if (byte_1EDD02FA9 == 1)
        {
          v305 = *__error();
          v306 = _sa_logt();
          if (os_log_type_enabled(v306, OS_LOG_TYPE_DEBUG))
          {
            v322 = [v475 name];
            v323 = [v475 pid];
            *buf = 138412546;
            *&buf[4] = v322;
            *&buf[12] = 1024;
            *&buf[14] = v323;
            _os_log_debug_impl(&dword_1E0E2F000, v306, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] Shared cache with no UUID", buf, 0x12u);
          }

          *__error() = v305;
        }

        goto LABEL_512;
      }

      v304 = v301 + v303 + *(v301 + v303);
      *uu = 0;
      *&uu[8] = 0;
      uuid_parse(v304 + 4, uu);
      if (uuid_is_null(uu))
      {
        if (byte_1EDD02FA9 != 1)
        {
          goto LABEL_512;
        }

        v180 = *__error();
        v181 = _sa_logt();
        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
        {
          v345 = [v475 name];
          v346 = [v475 pid];
          v347 = (v301 - *v301);
          if (*v347 < 5u)
          {
            v348 = 0;
          }

          else
          {
            v348 = v347[2];
            if (v348)
            {
              v348 += v301 + *(v301 + v348);
            }
          }

          *buf = 138412802;
          *&buf[4] = v345;
          *&buf[12] = 1024;
          *&buf[14] = v346;
          *&buf[18] = 2082;
          *&buf[20] = v348 + 4;
          _os_log_debug_impl(&dword_1E0E2F000, v181, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] Shared cache %{public}s with empty uuid", buf, 0x1Cu);
        }

        goto LABEL_334;
      }

      v307 = &v158[-*v158];
      if (*v307 < 9u || (v308 = *(v307 + 4)) == 0)
      {
        if (byte_1EDD02FA9 != 1)
        {
          goto LABEL_512;
        }

        v180 = *__error();
        v181 = _sa_logt();
        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
        {
          v351 = [v475 name];
          v352 = [v475 pid];
          v353 = (v301 - *v301);
          if (*v353 < 5u)
          {
            v354 = 0;
          }

          else
          {
            v354 = v353[2];
            if (v354)
            {
              v354 += v301 + *(v301 + v354);
            }
          }

          *buf = 138412802;
          *&buf[4] = v351;
          *&buf[12] = 1024;
          *&buf[14] = v352;
          *&buf[18] = 2082;
          *&buf[20] = v354 + 4;
          _os_log_debug_impl(&dword_1E0E2F000, v181, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] Shared cache %{public}s with no symbol owners", buf, 0x1Cu);
        }

        goto LABEL_334;
      }

      v470 = v301;
      if (*&v158[v308 + *&v158[v308]])
      {
        v480 = 0u;
        v481 = 0u;
        v478 = 0u;
        v479 = 0u;
        v309 = [*(a1 + 32) sharedCaches];
        v310 = [v309 countByEnumeratingWithState:&v478 objects:v486 count:16];
        if (v310)
        {
          v311 = 0;
          v312 = *v479;
          do
          {
            for (i = 0; i != v310; ++i)
            {
              if (*v479 != v312)
              {
                objc_enumerationMutation(v309);
              }

              v314 = *(*(&v478 + 1) + 8 * i);
              *buf = 0;
              *&buf[8] = 0;
              v315 = [v314 uuid];
              [v315 getUUIDBytes:buf];

              if (!uuid_compare(buf, uu))
              {
                v316 = v314;

                v311 = v316;
              }
            }

            v310 = [v309 countByEnumeratingWithState:&v478 objects:v486 count:16];
          }

          while (v310);

          if (v311)
          {
            v317 = [v311 binaryLoadInfos];
            v318 = [v317 count] == 0;

            if (!v318)
            {
              if (byte_1EDD02FA9 == 1)
              {
                v319 = *__error();
                v320 = _sa_logt();
                if (os_log_type_enabled(v320, OS_LOG_TYPE_DEBUG))
                {
                  v393 = [v475 name];
                  v394 = [v475 pid];
                  v395 = [v311 debugDescription];
                  *buf = 138412802;
                  *&buf[4] = v393;
                  *&buf[12] = 1024;
                  *&buf[14] = v394;
                  *&buf[18] = 2112;
                  *&buf[20] = v395;
                  _os_log_debug_impl(&dword_1E0E2F000, v320, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] Already have load infos for %@", buf, 0x1Cu);
                }

                *__error() = v319;
              }

              v321 = v311;
LABEL_567:

              goto LABEL_512;
            }

            v324 = 0;
LABEL_541:
            v325 = [v311 slide];
            if ((v324 & 1) != 0 || [v311 slidBaseAddress] == -1)
            {
              v333 = (v470 - *v470);
              if (*v333 >= 0x15u && (v334 = v333[10]) != 0)
              {
                v335 = *(v470 + v334);
                if (v335 == -1)
                {
                  v326 = -1;
                }

                else
                {
                  v326 = v335 + v325;
                }
              }

              else
              {
                v326 = -1;
              }
            }

            else
            {
              v326 = [v311 slidBaseAddress];
              v327 = (v470 - *v470);
              if (*v327 >= 0x15u)
              {
                v328 = v327[10];
                if (v328)
                {
                  v329 = *(v470 + v328);
                  if (v329 != -1)
                  {
                    v330 = [v311 slidBaseAddress];
                    if (v329 != [v311 slide] + v330)
                    {
                      v331 = *__error();
                      v332 = _sa_logt();
                      if (os_log_type_enabled(v332, OS_LOG_TYPE_FAULT))
                      {
                        v399 = [v311 debugDescription];
                        v400 = v399;
                        v401 = (v470 - *v470);
                        if (*v401 >= 0x15u && (v402 = v401[10]) != 0)
                        {
                          v403 = *(v470 + v402);
                        }

                        else
                        {
                          v403 = -1;
                        }

                        *buf = 138412546;
                        *&buf[4] = v399;
                        *&buf[12] = 2048;
                        *&buf[14] = v403;
                        _os_log_fault_impl(&dword_1E0E2F000, v332, OS_LOG_TYPE_FAULT, "SAKTSYM kt says shared cache %@ has unslid base address 0x%llx", buf, 0x16u);
                      }

                      *__error() = v331;
                    }
                  }
                }
              }
            }

            v336 = &v158[-*v158];
            if (*v336 >= 9u && (v337 = *(v336 + 4)) != 0)
            {
              v338 = &v158[v337 + *&v158[v337]];
            }

            else
            {
              v338 = 0;
            }

            v339 = [(SASampleStore *)*(a1 + 32) loadInfosForKTSymbolOwners:v338 isKernelSpace:0 excludeRange:0, 0];
            if ([v339 count])
            {
              v340 = uuidForBytes(uu);
              v321 = v311;
              +[SASharedCache applyBinaryLoadInfos:sharedCacheUUID:slide:slidBaseAddress:](SASharedCache, v339, v340, [v311 slide], v326);

              if (byte_1EDD02FA9 == 1)
              {
                v341 = *__error();
                v342 = _sa_logt();
                if (os_log_type_enabled(v342, OS_LOG_TYPE_DEBUG))
                {
                  v381 = [v475 name];
                  v382 = [v475 pid];
                  v383 = (v470 - *v470);
                  if (*v383 >= 5u && (v384 = v383[2]) != 0)
                  {
                    v385 = v470 + v384 + *(v470 + v384);
                  }

                  else
                  {
                    v385 = 0;
                  }

                  v397 = [v339 count];
                  v398 = &v158[*&v158[-*v158 + 8]];
                  LODWORD(v398) = *&v398[*v398];
                  *buf = 138413314;
                  *&buf[4] = v381;
                  *&buf[12] = 1024;
                  *&buf[14] = v382;
                  *&buf[18] = 2080;
                  *&buf[20] = v385 + 4;
                  *&buf[28] = 2048;
                  *&buf[30] = v397;
                  *&buf[38] = 1024;
                  LODWORD(v489) = v398;
                  _os_log_debug_impl(&dword_1E0E2F000, v342, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] shared cache %s: added %lu load infos from %d symbol owners", buf, 0x2Cu);
                }

                *__error() = v341;
              }
            }

            else
            {
              v321 = v311;
              if (byte_1EDD02FA9 == 1)
              {
                v343 = *__error();
                v344 = _sa_logt();
                if (os_log_type_enabled(v344, OS_LOG_TYPE_DEBUG))
                {
                  v389 = [v475 name];
                  v390 = [v475 pid];
                  v391 = (v470 - *v470);
                  if (*v391 < 5u)
                  {
                    v392 = 0;
                  }

                  else
                  {
                    v392 = v391[2];
                    if (v392)
                    {
                      v392 += v470 + *(v470 + v392);
                    }
                  }

                  v396 = &v158[*&v158[-*v158 + 8]];
                  LODWORD(v396) = *&v396[*v396];
                  *buf = 138413058;
                  *&buf[4] = v389;
                  *&buf[12] = 1024;
                  *&buf[14] = v390;
                  *&buf[18] = 2080;
                  *&buf[20] = v392 + 4;
                  *&buf[28] = 1024;
                  *&buf[30] = v396;
                  _os_log_debug_impl(&dword_1E0E2F000, v344, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] shared cache %s: no load infos from %d symbol owners", buf, 0x22u);
                }

                *__error() = v343;
              }
            }

            goto LABEL_567;
          }
        }

        else
        {

          v311 = 0;
        }

        v324 = 1;
        goto LABEL_541;
      }

      if (byte_1EDD02FA9 == 1)
      {
        v180 = *__error();
        v181 = _sa_logt();
        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
        {
          v377 = [v475 name];
          v378 = [v475 pid];
          v379 = (v301 - *v301);
          if (*v379 < 5u)
          {
            v380 = 0;
          }

          else
          {
            v380 = v379[2];
            if (v380)
            {
              v380 += v301 + *(v301 + v380);
            }
          }

          *buf = 138412802;
          *&buf[4] = v377;
          *&buf[12] = 1024;
          *&buf[14] = v378;
          *&buf[18] = 2082;
          *&buf[20] = v380 + 4;
          _os_log_debug_impl(&dword_1E0E2F000, v181, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] Shared cache %{public}s with zero symbol owners", buf, 0x1Cu);
        }

LABEL_334:

        *__error() = v180;
        goto LABEL_512;
      }

      goto LABEL_512;
    }

    v266 = [v475 sharedCache];
    v267 = v266;
    v453 = v266;
    if (!v266 || [v266 startAddress] == -1)
    {
      v268 = 0;
      v270 = 0;
    }

    else
    {
      v268 = [v267 startAddress];
      v269 = [v267 endAddress];
      v270 = v269 - [v267 startAddress];
    }

    v274 = &v158[-*v158];
    if (*v274 >= 9u && (v275 = *(v274 + 4)) != 0)
    {
      v276 = &v158[v275 + *&v158[v275]];
    }

    else
    {
      v276 = 0;
    }

    v277 = -[SASampleStore loadInfosForKTSymbolOwners:isKernelSpace:excludeRange:](*(a1 + 32), v276, [v475 pid] == 0, v268, v270);
    v457 = v277;
    if ([(SATask *)v475 addImageInfos:v277])
    {
      if (byte_1EDD02FA9)
      {
        v278 = *__error();
        v279 = _sa_logt();
        if (os_log_type_enabled(v279, OS_LOG_TYPE_DEBUG))
        {
          v363 = [v475 name];
          v364 = [v475 pid];
          v365 = [v457 count];
          v366 = &v158[*&v158[-*v158 + 8]];
          LODWORD(v366) = *&v366[*v366];
          *buf = 138413058;
          *&buf[4] = v363;
          *&buf[12] = 1024;
          *&buf[14] = v364;
          *&buf[18] = 2048;
          *&buf[20] = v365;
          *&buf[28] = 1024;
          *&buf[30] = v366;
          _os_log_debug_impl(&dword_1E0E2F000, v279, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] added %lu load infos from %d symbol owners", buf, 0x22u);
        }

LABEL_457:

        v277 = v457;
        *__error() = v278;
        v240 = v469;
      }
    }

    else if (byte_1EDD02FA9)
    {
      v278 = *__error();
      v279 = _sa_logt();
      if (os_log_type_enabled(v279, OS_LOG_TYPE_DEBUG))
      {
        v367 = [v475 name];
        v368 = [v475 pid];
        v369 = [v457 count];
        v370 = &v158[*&v158[-*v158 + 8]];
        LODWORD(v370) = *&v370[*v370];
        *buf = 138413058;
        *&buf[4] = v367;
        *&buf[12] = 1024;
        *&buf[14] = v368;
        *&buf[18] = 2048;
        *&buf[20] = v369;
        *&buf[28] = 1024;
        *&buf[30] = v370;
        _os_log_debug_impl(&dword_1E0E2F000, v279, OS_LOG_TYPE_DEBUG, "SAKTSYM %@ [%d] %lu load infos from %d symbol owners (nothing new)", buf, 0x22u);
      }

      goto LABEL_457;
    }

    if (v240)
    {
      v484 = 0u;
      v485 = 0u;
      v482 = 0u;
      v483 = 0u;
      v280 = v277;
      v281 = [v280 countByEnumeratingWithState:&v482 objects:v487 count:16];
      if (v281)
      {
        logc = *v483;
LABEL_461:
        v282 = 0;
        while (1)
        {
          if (*v483 != logc)
          {
            objc_enumerationMutation(v280);
          }

          v283 = *(*(&v482 + 1) + 8 * v282);
          v284 = [v283 binary];
          v285 = [v284 uuid];
          v286 = [v285 isEqual:v469];

          if (v286)
          {
            break;
          }

          if (v281 == ++v282)
          {
            v281 = [v280 countByEnumeratingWithState:&v482 objects:v487 count:16];
            if (v281)
            {
              goto LABEL_461;
            }

            goto LABEL_470;
          }
        }

        v287 = [v283 binary];
        v273 = [v287 path];

        if ([v273 isAbsolutePath])
        {
          goto LABEL_471;
        }
      }

LABEL_470:
      v273 = 0;
LABEL_471:

      v277 = v457;
    }

    else
    {
      v273 = 0;
    }

    goto LABEL_474;
  }

  v410 = *__error();
  v411 = _sa_logt();
  if (os_log_type_enabled(v411, OS_LOG_TYPE_ERROR))
  {
    v412 = &v165[-*v165];
    if (*v412 >= 7u && (v413 = *(v412 + 3)) != 0)
    {
      v414 = *&v165[v413];
    }

    else
    {
      v414 = -1;
    }

    v415 = [v475 debugDescription];
    v416 = v415;
    v417 = [v415 UTF8String];
    *buf = 67109378;
    *&buf[4] = v414;
    *&buf[8] = 2080;
    *&buf[10] = v417;
    _os_log_error_impl(&dword_1E0E2F000, v411, OS_LOG_TYPE_ERROR, "ktrace flatbuffer returned data for pid %d when asking for %s", buf, 0x12u);
  }

  *__error() = v410;
  v418 = &v165[-*v165];
  if (*v418 >= 7u && (v419 = *(v418 + 3)) != 0)
  {
    v420 = *&v165[v419];
  }

  else
  {
    LOBYTE(v420) = -1;
  }

  v421 = [v475 debugDescription];
  v422 = v421;
  [v421 UTF8String];
  _SASetCrashLogMessage(2824, "ktrace flatbuffer returned data for pid %d when asking for %s", v423, v424, v425, v426, v427, v428, v420);

  _os_crash();
  __break(1u);
}

char *__116__SASampleStore_KPerf__addLoadInfoFromKTrace_lastKTraceEventTimestamp_checkForNewLoadInfosEvenWithExistingLoadInfo___block_invoke_190()
{
  result = getenv("SA_VERIFY_FLATBUFFERS");
  if (result && (*result != 48 || result[1]))
  {
    byte_1EDD02FAA = 1;
  }

  return result;
}

+ (BOOL)canOpenFileAsKTraceFile:(const char *)a3 errorOut:(id *)a4
{
  if (!ktrace_session_create())
  {
    if (a4)
    {
      v6 = @"Unable to allocate ktrace_session";
      goto LABEL_7;
    }

    return 0;
  }

  v5 = ktrace_set_file();
  ktrace_session_destroy();
  if (v5)
  {
    if (a4)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable set file as ktrace: %d", v5];
      v7 = v6;
LABEL_7:
      result = 0;
      *a4 = v6;
      return result;
    }

    return 0;
  }

  return 1;
}

- (BOOL)parseStackshotsFromKTraceFile:(const char *)a3 warningsOut:(id)a4 errorOut:(id *)a5
{
  v9 = 0;
  if (a5)
  {
    v6 = &v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SASampleStore *)self _parseKTraceFile:a3 stackshotsOnly:1 afterMachAbsTime:0 warningsOut:a4 errorOut:v6];
  if (a5)
  {
    *a5 = v9;
  }

  return v7;
}

- (uint64_t)_parseKTraceFile:(int)a3 stackshotsOnly:(uint64_t)a4 afterMachAbsTime:(void *)a5 warningsOut:(void *)a6 errorOut:
{
  v284 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_169:
    v14 = 0;
    goto LABEL_31;
  }

  context = objc_autoreleasePoolPush();
  v142 = a3;
  if ([SASampleStore(KPerf) _parseKTraceFile:stackshotsOnly:afterMachAbsTime:warningsOut:errorOut:]::onceToken != -1)
  {
    dispatch_once(&[SASampleStore(KPerf) _parseKTraceFile:stackshotsOnly:afterMachAbsTime:warningsOut:errorOut:]::onceToken, &__block_literal_global_205);
  }

  v145 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v144 = objc_alloc_init(SAKTraceDataUnavailable);
  v268 = 0;
  v269 = &v268;
  v270 = 0x3032000000;
  v271 = __Block_byref_object_copy__1;
  v272 = __Block_byref_object_dispose__1;
  v273 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v266[0] = 0;
  v266[1] = v266;
  v266[2] = 0x3032000000;
  v266[3] = __Block_byref_object_copy__1;
  v266[4] = __Block_byref_object_dispose__1;
  v267 = 0;
  v262 = 0;
  v263 = &v262;
  v264 = 0x2020000000;
  v265 = 0;
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v261 = 0;
  v254 = 0;
  v255 = &v254;
  v256 = 0x2020000000;
  v257 = 0;
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v253 = -1;
  v244 = 0;
  v245 = &v244;
  v246 = 0x3032000000;
  v247 = __Block_byref_object_copy__1;
  v248 = __Block_byref_object_dispose__1;
  v249 = 0;
  v10 = ktrace_session_create();
  if (!v10)
  {
    if (a6)
    {
      v14 = 0;
      v15 = *a6;
      v16 = @"Unable to allocate ktrace_session";
LABEL_11:
      *a6 = v16;
LABEL_12:

LABEL_30:
      _Block_object_dispose(&v244, 8);

      _Block_object_dispose(&v250, 8);
      _Block_object_dispose(&v254, 8);
      _Block_object_dispose(&v258, 8);
      _Block_object_dispose(&v262, 8);
      _Block_object_dispose(v266, 8);

      _Block_object_dispose(&v268, 8);
      objc_autoreleasePoolPop(context);
LABEL_31:
      v27 = *MEMORY[0x1E69E9840];
      return v14;
    }

LABEL_29:
    v14 = 0;
    goto LABEL_30;
  }

  ktrace_set_execnames_enabled();
  ktrace_session_set_event_names_enabled();
  ktrace_session_set_event_names_enabled();
  qos_class_self();
  ktrace_set_collection_qos();
  v11 = ktrace_set_file();
  if (v11)
  {
    if (a6)
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to set file as ktrace: %d", v11];
      v13 = *a6;
      *a6 = v12;
    }

    ktrace_session_destroy();
    goto LABEL_29;
  }

  v139 = a4;
  v140 = a6;
  v17 = dispatch_semaphore_create(0);
  v237 = MEMORY[0x1E69E9820];
  v238 = 3221225472;
  v239 = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_219;
  v240 = &unk_1E86F6318;
  v243 = v10;
  v241 = a1;
  v18 = v17;
  v242 = v18;
  ktrace_set_completion_handler();
  v231 = MEMORY[0x1E69E9820];
  v232 = 3221225472;
  v233 = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_2;
  v234 = &unk_1E86F6340;
  v236 = &v262;
  v235 = a5;
  ktrace_chunks();
  v19 = a5;
  v221 = MEMORY[0x1E69E9820];
  v222 = 3221225472;
  v223 = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_3;
  v224 = &unk_1E86F6368;
  v227 = &v262;
  v228 = &v258;
  v229 = &v244;
  v230 = &v254;
  v225 = a1;
  v226 = a5;
  ktrace_chunks();
  v215 = MEMORY[0x1E69E9820];
  v216 = 3221225472;
  v217 = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_231;
  v218 = &unk_1E86F6390;
  v219 = a5;
  v220 = a1;
  ktrace_chunks();
  v208 = MEMORY[0x1E69E9820];
  v209 = 3221225472;
  v210 = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_257;
  v211 = &unk_1E86F63B8;
  v214 = &v262;
  v212 = a5;
  v138 = v145;
  v213 = v138;
  ktrace_chunks();
  v141 = a5;
  if ((v142 & 1) == 0)
  {
    v204[6] = MEMORY[0x1E69E9820];
    v204[7] = 3221225472;
    v204[8] = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_2_268;
    v204[9] = &unk_1E86F63E0;
    v204[10] = a5;
    v205 = v144;
    v206 = a1;
    v207 = &v250;
    ktrace_chunks();

    v19 = a5;
  }

  v204[0] = MEMORY[0x1E69E9820];
  v204[1] = 3221225472;
  v204[2] = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_276;
  v204[3] = &unk_1E86F6340;
  v204[5] = &v262;
  v204[4] = v19;
  v20 = MEMORY[0x1E12EBE50](v204);
  ktrace_chunks();
  ktrace_chunks();
  v203[0] = MEMORY[0x1E69E9820];
  v203[1] = 3221225472;
  v203[2] = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_2_283;
  v203[3] = &unk_1E86F6408;
  v203[5] = &v262;
  v203[4] = a5;
  v203[6] = &v268;
  v21 = MEMORY[0x1E12EBE50](v203);
  ktrace_chunks();
  ktrace_chunks();
  ktrace_chunks();
  v197 = MEMORY[0x1E69E9820];
  v198 = 3221225472;
  v199 = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_290;
  v200 = &unk_1E86F6390;
  v201 = a5;
  v202 = a1;
  ktrace_chunks();
  v190 = MEMORY[0x1E69E9820];
  v191 = 3221225472;
  v192 = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_2_294;
  v193 = &unk_1E86F6408;
  v196 = v266;
  v195 = &v262;
  v194 = a5;
  ktrace_chunks();
  v22 = qos_class_self();
  v23 = dispatch_get_global_queue(v22, 0);
  v24 = ktrace_start();

  if (v24)
  {
    if (v140)
    {
      v136 = v24;
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to ktrace_start session: %d"];
      v26 = *v140;
      *v140 = v25;
    }

    ktrace_session_destroy();
  }

  else
  {
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    ktrace_session_destroy();
    if (*(v263 + 24) == 1 && (v259[3] & 1) == 0)
    {
      *(v255 + 24) = 1;
    }

    if ((v142 & 1) == 0 && ![a1 dataStyle])
    {
      if (*(v263 + 24) == 1)
      {
        a1[54] = [a1 dataSource] | 2;
        a1[55] = 3;
      }

      else
      {
        a1[54] = [a1 dataSource] | 8;
        a1[55] = 1;
        if (v144)
        {
          v144->_runawayMitigation = 1;
          v144->_effectiveJetsamPriority = 1;
        }
      }
    }
  }

  if (v24)
  {
    goto LABEL_29;
  }

  v29 = v139;
  a6 = v140;
  if (([a1 dataSource] & 2) != 0 && (v255[3] & 1) == 0)
  {
    v137 = [a1 kPerfPETParsePastLastStackshot];
  }

  else
  {
    v137 = 1;
  }

  if (([a1 dataSource] & 2) != 0 && !objc_msgSend(v269[5], "count"))
  {
    if (v140)
    {
      v14 = 0;
      v15 = *v140;
      v16 = @"No stackshot for PET data";
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  v30 = objc_alloc(MEMORY[0x1E695DF70]);
  v149 = [v30 initWithCapacity:{objc_msgSend(v269[5], "count")}];
  if (![v269[5] count])
  {
    goto LABEL_74;
  }

  if (!v149)
  {
    v107 = *__error();
    v108 = _sa_logt();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v281) = 0;
      _os_log_error_impl(&dword_1E0E2F000, v108, OS_LOG_TYPE_ERROR, "nil stackshotMachAbsTimes_out", &v281, 2u);
    }

    *__error() = v107;
    _SASetCrashLogMessage(2540, "nil stackshotMachAbsTimes_out", v109, v110, v111, v112, v113, v114, v136);
    _os_crash();
    __break(1u);
    goto LABEL_166;
  }

  v31 = v269[5];
  if ([v149 count])
  {
LABEL_166:
    v115 = *__error();
    v116 = _sa_logt();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
    {
      v117 = [v149 count];
      LODWORD(v281) = 134217984;
      *(&v281 + 4) = v117;
      _os_log_error_impl(&dword_1E0E2F000, v116, OS_LOG_TYPE_ERROR, "%lu stackshotMachAbsTimes_out.count", &v281, 0xCu);
    }

    *__error() = v115;
    v118 = [v149 count];
    _SASetCrashLogMessage(2541, "%lu stackshotMachAbsTimes_out.count", v119, v120, v121, v122, v123, v124, v118);
    _os_crash();
    __break(1u);
    goto LABEL_169;
  }

  v277 = 0u;
  v276 = 0u;
  v275 = 0u;
  v274 = 0u;
  obj = v31;
  v32 = [obj countByEnumeratingWithState:&v274 objects:&v281 count:16];
  if (v32)
  {
    *(&v148 + 1) = 0;
    DWORD1(v148) = 0;
    v33 = *v275;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v275 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v274 + 1) + 8 * i);
        v36 = v35;
        v37 = [v35 bytes];
        v38 = v37 + [v35 length];
        while (1)
        {
          v39 = v37 + 4;
          if ((v37 + 4) > v38)
          {
            break;
          }

          if (v39 + v37[1] > v38)
          {
            break;
          }

          v40 = *v37;
          if (*v37 == -242132755)
          {
            break;
          }

          if ((v40 & 0xFFFFFFF0) == 0x20)
          {
            v40 = 17;
          }

          if (v40 == 50)
          {
            if (v37[5] && v37[4])
            {
              DWORD1(v148) = v37[4];
              *(&v148 + 1) = v37[5];
            }

            else
            {
              v42 = *__error();
              v43 = _sa_logt();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v44 = v37[4];
                v45 = v37[5];
                *buf = 67109376;
                *&buf[4] = v44;
                *&buf[8] = 1024;
                *&buf[10] = v45;
                _os_log_error_impl(&dword_1E0E2F000, v43, OS_LOG_TYPE_ERROR, "Bad mach timebase: %d/%d", buf, 0xEu);
              }

              *__error() = v42;
            }
          }

          else if (v40 == 51)
          {
            v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v37 + 2)];
            [v149 addObject:v41];
          }

          v37 = (v39 + v37[1]);
        }
      }

      v32 = [obj countByEnumeratingWithState:&v274 objects:&v281 count:16];
    }

    while (v32);
  }

  else
  {
    *(&v148 + 1) = 0;
    DWORD1(v148) = 0;
  }

  v46 = [v149 lastObject];
  if (![v46 unsignedLongLongValue] || !DWORD2(v148))
  {

LABEL_80:
    if (v140)
    {
      v14 = 0;
      v54 = *v140;
      *v140 = @"No timestamp / timebase in stackshot";
LABEL_129:

      goto LABEL_130;
    }

LABEL_86:
    v14 = 0;
LABEL_130:
    v15 = v149;
    goto LABEL_12;
  }

  if (!DWORD1(v148))
  {
    goto LABEL_80;
  }

  [a1 setMachTimebase:(v148 >> 32)];
  v29 = v139;
  a6 = v140;
  if (v139)
  {
    v47 = v149;
    while ([v47 count])
    {
      v48 = [v149 firstObject];
      v49 = [v48 unsignedLongLongValue] < v29;

      v29 = v139;
      a6 = v140;
      if (!v49)
      {
        break;
      }

      v47 = v149;
      [v149 removeObjectAtIndex:0];
      [v269[5] removeObjectAtIndex:0];
    }
  }

LABEL_74:
  v50 = ktrace_session_create();
  if (!v50)
  {
    if (a6)
    {
      v14 = 0;
      v54 = *a6;
      *a6 = @"Unable to allocate ktrace_session";
      goto LABEL_129;
    }

    goto LABEL_86;
  }

  ktrace_set_execnames_enabled();
  ktrace_session_set_event_names_enabled();
  ktrace_session_set_event_names_enabled();
  qos_class_self();
  ktrace_set_collection_qos();
  v15 = v149;
  v51 = ktrace_set_file();
  if (v51)
  {
    if (a6)
    {
      v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable set file as ktrace: %d", v51];
      v53 = *a6;
      *a6 = v52;

      v15 = v149;
    }

    ktrace_session_destroy();
    v14 = 0;
    goto LABEL_12;
  }

  v55 = dispatch_semaphore_create(0);
  *&v281 = 0;
  *(&v281 + 1) = &v281;
  v282 = 0x2020000000;
  v283 = 0;
  v183 = MEMORY[0x1E69E9820];
  v184 = 3221225472;
  v185 = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_3_307;
  v186 = &unk_1E86F6430;
  v188 = v50;
  v189 = v29;
  v187 = &v281;
  ktrace_events_all();
  *&v274 = 0;
  *(&v274 + 1) = &v274;
  v275 = 0x2020000000uLL;
  v167 = MEMORY[0x1E69E9820];
  v168 = 3221225472;
  v169 = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_4;
  v170 = &unk_1E86F6518;
  v171 = a1;
  v54 = v55;
  v172 = v54;
  v173 = v138;
  v176 = v266;
  v177 = &v274;
  v182 = v142;
  v178 = &v268;
  v56 = v149;
  v174 = v56;
  v57 = v144;
  v175 = v57;
  v181 = v50;
  v179 = &v281;
  v180 = &v262;
  ktrace_set_completion_handler();
  if (v142)
  {
    ktrace_chunks();
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v58 = v269[5];
    v59 = [v58 countByEnumeratingWithState:&v150 objects:v278 count:16];
    if (v59)
    {
      v60 = *v151;
      do
      {
        for (j = 0; j != v59; ++j)
        {
          if (*v151 != v60)
          {
            objc_enumerationMutation(v58);
          }

          [a1 addKCDataStackshot:*(*(&v150 + 1) + 8 * j)];
        }

        v59 = [v58 countByEnumeratingWithState:&v150 objects:v278 count:16];
      }

      while (v59);
    }
  }

  else
  {
    if ([v269[5] count])
    {
      if (v137)
      {
        v62 = -1;
      }

      else
      {
        v63 = [v56 lastObject];
        v62 = [v63 unsignedLongLongValue];
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v64 = [v56 objectAtIndexedSubscript:*(*(&v274 + 1) + 24)];
      v65 = [v64 unsignedLongLongValue];

      v280 = v65;
      v154 = MEMORY[0x1E69E9820];
      v155 = 3221225472;
      v156 = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_320;
      v157 = &unk_1E86F6540;
      v164 = v50;
      v165 = v139;
      v161 = buf;
      v158 = a1;
      v162 = &v274;
      v163 = &v268;
      v159 = v57;
      v160 = v56;
      v166 = v137;
      ktrace_events_all();

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v62 = -1;
    }

    [(SASampleStore *)a1 _addKPerfDataFromKTraceSession:v50 afterMachAbsTime:v139 beforeMachAbsTime:v62 petTimerID:*(v251 + 6) ktraceDataUnavailable:v57];
  }

  v66 = qos_class_self();
  v67 = dispatch_get_global_queue(v66, 0);
  v68 = ktrace_start();

  if (v68)
  {
    if (v140)
    {
      v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to ktrace_start session: %d", v68];
      v70 = *v140;
      *v140 = v69;
    }

    ktrace_session_destroy();
    goto LABEL_107;
  }

  dispatch_semaphore_wait(v54, 0xFFFFFFFFFFFFFFFFLL);
  v71 = v140;
  if (v142)
  {
    goto LABEL_109;
  }

  v77 = [a1 dataSource];
  if (!v141)
  {
    goto LABEL_109;
  }

  if ((v77 & 2) == 0)
  {
    goto LABEL_109;
  }

  v78 = [a1 endTime];
  v79 = v78 == 0;

  v71 = v140;
  if (v79)
  {
    goto LABEL_109;
  }

  v80 = [a1 endTime];
  v81 = [v80 machAbsTime];

  v82 = *(*(&v274 + 1) + 24);
  if (v82)
  {
    v83 = [v56 objectAtIndexedSubscript:v82 - 1];
    v84 = [v83 unsignedLongLongValue];

    v71 = v140;
    if (v84 >= v81)
    {
      goto LABEL_109;
    }

    if (v84)
    {
      v85 = *(*(&v281 + 1) + 24);
      v86 = [a1 machTimebase];
      v87 = 0;
      if (HIDWORD(v86))
      {
        if (v86)
        {
          v87 = v85 - v84;
          if (v86 != HIDWORD(v86))
          {
            v87 = __udivti3();
          }
        }
      }

      v88 = [SATimestamp timestampWithMachAbsTime:v84 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:0.0];
      v89 = [a1 indexOfLastSampleOnOrBeforeTimestamp:v88];

      v90 = *(*(&v274 + 1) + 24);
      v91 = v87 / 1000000000.0;
      if (v90 < [v269[5] count])
      {
        v92 = [v56 objectAtIndexedSubscript:*(*(&v274 + 1) + 24)];
        v93 = [v92 unsignedLongLongValue];
        v94 = *(*(&v281 + 1) + 24);
        v95 = [a1 machTimebase];
        v96 = 0;
        if (HIDWORD(v95))
        {
          if (v95)
          {
            v96 = v93 - v94;
            if (v95 != HIDWORD(v95))
            {
              v96 = __udivti3();
            }
          }
        }

        v97 = objc_alloc(MEMORY[0x1E696AEC0]);
        v98 = [a1 sampleTimestamps];
        v99 = [v97 initWithFormat:@"KTrace data ended %.1fs before the next stackshot (%.1fs after the previous stackshot). Data for the last %lu samples will be missing for any threads/tasks after the point at which they stopped using any cpu time", v96 / 1000000000.0, *&v91, objc_msgSend(v98, "count") - v89];
        [v141 addObject:v99];
        goto LABEL_161;
      }

      v71 = v140;
      if ((v137 & 1) == 0)
      {
        v106 = objc_alloc(MEMORY[0x1E696AEC0]);
        v98 = [a1 sampleTimestamps];
        v99 = [v106 initWithFormat:@"KTrace data ended %.1fs after the last stackshot. Data for the last %lu samples will be missing for any threads/tasks after the point at which they stopped using any cpu time", *&v91, objc_msgSend(v98, "count") - v89];
        [v141 addObject:v99];
LABEL_161:

LABEL_162:
        v71 = v140;
      }

LABEL_109:
      ktrace_session_destroy();
      if (v245[5] && [a1 targetProcessId] == -1)
      {
        [a1 setTargetProcessId:{objc_msgSend(v245[5], "intValue")}];
      }

      if ([a1 dataStyle] == 1 || !objc_msgSend(a1, "dataStyle"))
      {
        if ([a1 isEmpty])
        {
          if (v71)
          {
            v74 = @"No samples";
LABEL_122:
            v75 = *v71;
            *v71 = v74;
          }

LABEL_107:
          v14 = 0;
LABEL_128:

          _Block_object_dispose(&v274, 8);
          _Block_object_dispose(&v281, 8);
          goto LABEL_129;
        }
      }

      else
      {
        v72 = [a1 sampleTimestamps];
        v73 = [v72 count] == 0;

        v71 = v140;
        if (v73)
        {
          if (v140)
          {
            v74 = @"No PET samples";
            if (v142)
            {
              v74 = @"No stackshots";
            }

            goto LABEL_122;
          }

          goto LABEL_107;
        }
      }

      if (([a1 dataSource] & 2) != 0 && v137 && objc_msgSend(v56, "count"))
      {
        v76 = [v56 lastObject];
        -[SASampleStore forwardFillFromLastStackshot:](a1, [v76 unsignedLongLongValue]);
      }

      [a1 postprocess];
      v14 = 1;
      goto LABEL_128;
    }

    v100 = *(*(&v274 + 1) + 24);
  }

  else
  {
    v71 = v140;
    if (!v81)
    {
      goto LABEL_109;
    }

    v100 = 0;
  }

  if (v100 < [v269[5] count])
  {
    v101 = [v56 objectAtIndexedSubscript:*(*(&v274 + 1) + 24)];
    v102 = [v101 unsignedLongLongValue];
    v103 = *(*(&v281 + 1) + 24);
    v104 = [a1 machTimebase];
    v105 = 0;
    if (HIDWORD(v104))
    {
      if (v104)
      {
        v105 = v102 - v103;
        if (v104 != HIDWORD(v104))
        {
          v105 = __udivti3();
        }
      }
    }

    if (v105 / 1000000000.0 <= 0.001)
    {
      v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"KTrace data ended %fs before the stackshot. Data will be missing/incomplete for any threads/tasks after the point at which they stopped using any cpu time", v105 / 1000000000.0];
    }

    else
    {
      v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"KTrace data ended %.3fs before the stackshot. Data will be missing/incomplete for any threads/tasks after the point at which they stopped using any cpu time", v105 / 1000000000.0];
    }

    [v141 addObject:v98];
    goto LABEL_162;
  }

  v125 = *__error();
  v126 = _sa_logt();
  if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
  {
    v127 = *(*(&v274 + 1) + 24);
    v128 = [v56 count];
    *buf = 134218240;
    *&buf[4] = v127;
    *&buf[12] = 2048;
    *&buf[14] = v128;
    _os_log_error_impl(&dword_1E0E2F000, v126, OS_LOG_TYPE_ERROR, "nextStackshotIndex %lu, %lu stackshots", buf, 0x16u);
  }

  *__error() = v125;
  v129 = *(*(&v274 + 1) + 24);
  [v56 count];
  _SASetCrashLogMessage(4197, "nextStackshotIndex %lu, %lu stackshots", v130, v131, v132, v133, v134, v135, v129);
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)parseKTraceFile:(const char *)a3 warningsOut:(id)a4 errorOut:(id *)a5
{
  v9 = 0;
  if (a5)
  {
    v6 = &v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SASampleStore *)self _parseKTraceFile:a3 stackshotsOnly:0 afterMachAbsTime:0 warningsOut:a4 errorOut:v6];
  if (a5)
  {
    *a5 = v9;
  }

  return v7;
}

char *__94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = getenv("SA_PRINT_KPERF");
  if ((v0 || (v0 = getenv("SA_DEBUG_KPERF")) != 0) && (*v0 != 48 || v0[1]))
  {
    strcpy(__filename, "/var/tmp/SAKPerfLog.");
    v10 = time(0);
    localtime_r(&v10, &v11);
    v1 = strftime(&__filename[20], 0x3ECuLL, "%Y-%m-%d-%T", &v11);
    v2 = getpid();
    snprintf(&__filename[v1 + 20], 1004 - v1, ".%d.txt", v2);
    qword_1EDD02FB0 = fopen(__filename, "w");
    if (qword_1EDD02FB0)
    {
      fprintf(*MEMORY[0x1E69E9848], "Logging kperf parsing to %s\n", __filename);
      v3 = *__error();
      v4 = _sa_logt();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v13 = __filename;
        _os_log_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_DEFAULT, "Logging kperf parsing to %{public}s", buf, 0xCu);
      }
    }

    else
    {
      v3 = *__error();
      v4 = _sa_logt();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = *__error();
        v8 = __error();
        v9 = strerror(*v8);
        *buf = 136446722;
        v13 = __filename;
        v14 = 1024;
        v15 = v7;
        v16 = 2080;
        v17 = v9;
        _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "Unable to open %{public}s: %d %s", buf, 0x1Cu);
      }
    }

    *__error() = v3;
  }

  result = getenv("SA_LOG_KTSYM");
  if ((result || (result = getenv("SA_DEBUG_KTSYM")) != 0) && (*result != 48 || result[1]))
  {
    byte_1EDD02FA9 = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

intptr_t __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_219(void *a1)
{
  v2 = a1[6];
  machine = ktrace_get_machine();
  if (machine)
  {
    v4 = machine;
    v5 = a1[4];
    v6 = a1[6];
    is_kernel_64_bit = ktrace_is_kernel_64_bit();
    [(SASampleStore *)v5 _populateFromKtraceMachineInfo:v4 is64bit:is_kernel_64_bit];
  }

  v8 = a1[5];

  return dispatch_semaphore_signal(v8);
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v2 = DictForChunkViaNSPropertyList();
  v4 = v2;
  if (v2)
  {
    [SABinary addSymbolsFromTailspin:v2];
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      [v3 addObject:@"Unable to get dict for tailspin symbols chunk"];
    }
  }
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_3(void *a1)
{
  v122 = *MEMORY[0x1E69E9840];
  *(*(a1[6] + 8) + 24) = 1;
  *(*(a1[7] + 8) + 24) = 1;
  v2 = DictForChunkViaNSPropertyList();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:0x1F5BBF7C0];
    v5 = *(a1[8] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = DictGetNumber(v3, @"IsShutdownTrace");
    v8 = v7;
    if (v7)
    {
      *(*(a1[9] + 8) + 24) = [v7 BOOLValue];
    }

    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = DictGetDictOfClasses(v3, 0x1F5BBF7E0, v9, v10);
    if (v12)
    {
      v13 = a1[4];
      if (v13)
      {
        objc_setProperty_atomic(v13, v11, v12, 608);
      }
    }

    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = DictGetDictOfClasses(v3, 0x1F5BBF880, v14, v15);

    if (v16)
    {
      v18 = a1[4];
      if (v18)
      {
        objc_setProperty_atomic(v18, v17, v16, 616);
      }
    }

    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = DictGetDictOfClasses(v3, 0x1F5BBF900, v19, v20);

    if (v21)
    {
      v23 = a1[4];
      if (v23)
      {
        objc_setProperty_atomic(v23, v22, v21, 624);
      }
    }

    v24 = DictGetNumber(v3, 0x1F5BBF9A0);

    if (v24)
    {
      v25 = [v24 BOOLValue];
      v26 = a1[4];
      if (v26)
      {
        *(v26 + 396) = v25;
      }
    }

    objc_opt_class();
    v28 = DictGetArrayOfClass(v3, 0x1F5BBF9C0);
    if (v28)
    {
      v29 = a1[4];
      if (v29)
      {
        objc_setProperty_atomic(v29, v27, v28, 656);
        v29 = a1[4];
      }

      v30 = [v29 installedRootNames];
      v31 = [v30 count];

      if (v31)
      {
        v32 = a1[4];
        if (v32)
        {
          *(v32 + 396) = 1;
        }
      }
    }

    v33 = DictGetNumber(v3, 0x1F5BBF920);

    if (v33)
    {
      v34 = [v33 intValue];
      v35 = a1[4];
      if (v35)
      {
        *(v35 + 648) = v34;
      }
    }

    v36 = DictGetNumber(v3, 0x1F5BBF9E0);

    if (v36)
    {
      v37 = [v36 BOOLValue];
      v38 = a1[4];
      if (v38)
      {
        *(v38 + 397) = v37;
        v39 = a1[4];
        if (v39)
        {
          *(v39 + 398) = 1;
        }
      }
    }

    v40 = DictGetNumber(v3, 0x1F5BBFA00);

    if (v40)
    {
      v41 = [v40 BOOLValue];
      v42 = a1[4];
      if (v42)
      {
        *(v42 + 399) = v41;
        v43 = a1[4];
        if (v43)
        {
          *(v43 + 400) = 1;
        }
      }
    }

    newValue = DictGetString(v3, 0x1F5BBFA20);
    if (newValue)
    {
      v45 = a1[4];
      if (v45)
      {
        objc_setProperty_atomic(v45, v44, newValue, 664);
      }
    }

    v46 = DictGetDict(v3, 0x1F5BBF940);

    if (v46)
    {
      v47 = DictGetNumber(v46, 0x1F5BBF960);
      v48 = DictGetNumber(v46, 0x1F5BBF980);
      v49 = v48;
      if (v47)
      {
        if (!v48 || ([v48 doubleValue], v50 == 0.0))
        {
          v52 = 0;
        }

        else
        {
          [v49 doubleValue];
          v52 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:v51];
        }

        v54 = a1[4];
        v55 = -[SAPowerModeTransition initWithLowPowerMode:timestamp:]([SAPowerModeTransition alloc], [v47 BOOLValue], v52);
        v56 = [(SASampleStore *)v54 addPowerModeTransition:v55];
      }

      else
      {
        v57 = *__error();
        v58 = _sa_logt();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v115 = [0 debugDescription];
          [v49 debugDescription];
          *buf = 138412546;
          v119 = v115;
          v121 = v120 = 2112;
          v114 = v121;
          _os_log_error_impl(&dword_1E0E2F000, v58, OS_LOG_TYPE_ERROR, "Invalid power mode transition from tailspin. lowPowerModeNum:%@ transitionTimeNum:%@", buf, 0x16u);
        }

        *__error() = v57;
      }
    }

    v59 = DictGetDict(v3, 0x1F5BBFA40);

    v60 = v59;
    if (v59)
    {
      v62 = DictGetString(v59, 0x1F5BBFA60);
      v63 = a1[4];
      if (v63)
      {
        objc_setProperty_atomic(v63, v61, v62, 1176);
      }
    }

    objc_opt_class();
    v64 = DictGetArrayOfClass(v3, 0x1F5BBFA80);

    v66 = v64;
    if (v64)
    {
      v67 = a1[4];
      if (v67)
      {
        objc_setProperty_atomic(v67, v65, v64, 672);
      }
    }

    objc_opt_class();
    v68 = DictGetArrayOfClass(v3, 0x1F5BBFAA0);

    v70 = v68;
    if (v68)
    {
      v71 = a1[4];
      if (v71)
      {
        objc_setProperty_atomic(v71, v69, v68, 680);
      }
    }

    v72 = DictGetString(v3, 0x1F5BBFAC0);

    newValuea = v72;
    if (v72)
    {
      v74 = a1[4];
      if (v74)
      {
        objc_setProperty_atomic(v74, v73, v72, 688);
      }
    }

    v75 = DictGetNumber(v3, 0x1F5BBFAE0);

    v76 = v75;
    if (v75)
    {
      v77 = [v75 BOOLValue];
      v78 = a1[4];
      if (v78)
      {
        *(v78 + 402) = v77;
        v79 = a1[4];
        if (v79)
        {
          *(v79 + 401) = 1;
        }
      }
    }

    v80 = DictGetDict(v3, 0x1F5BBFB00);

    v81 = v80;
    if (!v80)
    {
      goto LABEL_85;
    }

    v82 = DictGetNumber(v80, 0x1F5BBFB20);
    v83 = DictGetNumber(v80, 0x1F5BBFB40);
    v84 = DictGetNumber(v80, 0x1F5BBFB60);
    v85 = DictGetNumber(v80, 0x1F5BBFB80);
    if (!v82 || !v83 || !v84)
    {
      goto LABEL_84;
    }

    v86 = [v82 unsignedLongLongValue];
    v87 = a1[4];
    if (v87)
    {
      *(v87 + 1136) = v86;
    }

    v88 = [v83 unsignedLongLongValue];
    v89 = a1[4];
    if (v89)
    {
      *(v89 + 1144) = v88;
    }

    v90 = [v84 unsignedLongLongValue];
    v91 = a1[4];
    if (v91)
    {
      *(v91 + 1152) = v90;
    }

    if (v85)
    {
      v92 = [v85 unsignedIntValue];
      v93 = a1[4];
      if (v92)
      {
        if (v93)
        {
          v94 = 2 * *(v93 + 1152);
LABEL_83:
          *(v93 + 1160) = v94;
          goto LABEL_84;
        }

        goto LABEL_84;
      }
    }

    else
    {
      v93 = a1[4];
    }

    if (v93)
    {
      v94 = *(v93 + 1152);
      goto LABEL_83;
    }

LABEL_84:

LABEL_85:
    v95 = DictGetDict(v3, 0x1F5BBFBA0);

    v96 = v95;
    if (v95)
    {
      v97 = DictGetNumber(v95, 0x1F5BBFBC0);
      v98 = DictGetNumber(v95, 0x1F5BBFBE0);
      if (v98 && v97)
      {
        v99 = [v97 unsignedLongLongValue];
        v100 = a1[4];
        if (v100)
        {
          *(v100 + 600) = v99;
        }

        v101 = [v98 unsignedLongLongValue];
        v102 = a1[4];
        if (v102)
        {
          *(v102 + 592) = v101;
        }
      }
    }

    v103 = DictGetNumber(v3, 0x1F5BBFC00);

    v104 = v103;
    if (v103)
    {
      v105 = [v103 unsignedLongLongValue];
      v106 = a1[4];
      if (v106)
      {
        *(v106 + 696) = v105;
      }
    }

    v107 = DictGetNumber(v3, 0x1F5BBFC20);

    if (v107)
    {
      v108 = [v107 unsignedLongLongValue];
      v109 = a1[4];
      if (v109)
      {
        *(v109 + 704) = v108;
      }
    }

    v110 = DictGetNumber(v3, 0x1F5BBFC40);

    if (v110)
    {
      v111 = [v110 BOOLValue];
      v112 = a1[4];
      if (v112)
      {
        *(v112 + 403) = v111;
      }
    }

    goto LABEL_103;
  }

  v53 = a1[5];
  if (v53)
  {
    [v53 addObject:@"Unable to get dict for tailspin metadata chunk"];
  }

LABEL_103:

  v113 = *MEMORY[0x1E69E9840];
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_231(uint64_t a1)
{
  v109 = *MEMORY[0x1E69E9840];
  newValue = DictForChunkViaNSPropertyList();
  if (!newValue)
  {
    v32 = *__error();
    v33 = _sa_logt();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_ERROR, "Unable to get dict for tailspin metadata chunk", buf, 2u);
    }

    *__error() = v32;
    v34 = *(a1 + 32);
    if (v34)
    {
      [v34 addObject:@"Unable to get dict for tailspin metadata chunk"];
    }

    goto LABEL_116;
  }

  objc_opt_class();
  v81 = DictGetArrayOfClass(newValue, @"experiments");
  if (v81)
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = v81;
    v75 = [obj countByEnumeratingWithState:&v97 objects:v108 count:16];
    if (v75)
    {
      v77 = *v98;
      do
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v98 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v1 = *(*(&v97 + 1) + 8 * i);
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v2 = v1;
          v3 = [v2 countByEnumeratingWithState:&v93 objects:v107 count:16];
          if (v3)
          {
            v4 = *v94;
            do
            {
              v5 = 0;
              do
              {
                if (*v94 != v4)
                {
                  objc_enumerationMutation(v2);
                }

                v6 = *(*(&v93 + 1) + 8 * v5);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v7 = [v2 objectForKeyedSubscript:v6];
                  if ([v6 isEqualToString:@"namespace_ids"])
                  {
                    v8 = objc_opt_class();
                    v9 = objc_opt_class();
                    v10 = DictGetDictOfClasses(v2, @"namespace_ids", v8, v9);
                    LODWORD(v8) = v10 == 0;

                    if (v8)
                    {
                      v35 = *__error();
                      v36 = _sa_logt();
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_ERROR, "Bad type in trial experiments dict: namespaces value is invalid", buf, 2u);
                      }

                      *__error() = v35;
                      v38 = *(a1 + 32);
                      if (v38)
                      {
                        [v38 addObject:@"Bad type in trial experiments dict: namespaces value is invalid"];
                      }

                      goto LABEL_114;
                    }
                  }

                  else if ([v6 isEqualToString:@"experiment_id"])
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v43 = *__error();
                      v44 = _sa_logt();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                      {
                        ClassName = object_getClassName(v7);
                        *buf = 136315138;
                        v104 = ClassName;
                        _os_log_error_impl(&dword_1E0E2F000, v44, OS_LOG_TYPE_ERROR, "Bad type in trial experiments dict: experiment is %s", buf, 0xCu);
                      }

                      *__error() = v43;
                      v46 = *(a1 + 32);
                      if (v46)
                      {
                        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Bad type in trial experiments dict: experiment is %s", object_getClassName(v7)];
                        [v46 addObject:v22];
                        goto LABEL_113;
                      }

                      goto LABEL_114;
                    }
                  }

                  else if ([v6 isEqualToString:@"deployment_id"])
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v52 = *__error();
                      v53 = _sa_logt();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                      {
                        v71 = object_getClassName(v7);
                        *buf = 136315138;
                        v104 = v71;
                        _os_log_error_impl(&dword_1E0E2F000, v53, OS_LOG_TYPE_ERROR, "Bad type in trial experiments dict: deployment is %s", buf, 0xCu);
                      }

                      *__error() = v52;
                      v55 = *(a1 + 32);
                      if (v55)
                      {
                        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Bad type in trial experiments dict: deployment is %s", object_getClassName(v7)];
                        [v55 addObject:v22];
                        goto LABEL_113;
                      }

                      goto LABEL_114;
                    }
                  }

                  else if ([v6 isEqualToString:@"treatment_id"])
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v60 = *__error();
                      v61 = _sa_logt();
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                      {
                        v73 = object_getClassName(v7);
                        *buf = 136315138;
                        v104 = v73;
                        _os_log_error_impl(&dword_1E0E2F000, v61, OS_LOG_TYPE_ERROR, "Bad type in trial experiments dict: treatment is %s", buf, 0xCu);
                      }

                      *__error() = v60;
                      v63 = *(a1 + 32);
                      if (v63)
                      {
                        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Bad type in trial experiments dict: treatment is %s", object_getClassName(v7)];
                        [v63 addObject:v22];
                        goto LABEL_113;
                      }

                      goto LABEL_114;
                    }
                  }

                  else
                  {
                    v13 = *__error();
                    v14 = _sa_logt();
                    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v104 = v6;
                      _os_log_debug_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_DEBUG, "Unknown key in experiments dict %@, ignoring", buf, 0xCu);
                    }

                    *__error() = v13;
                  }
                }

                else
                {
                  v11 = *__error();
                  v12 = _sa_logt();
                  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
                  {
                    v15 = object_getClassName(v6);
                    *buf = 138412546;
                    v104 = v6;
                    v105 = 2080;
                    v106 = v15;
                    _os_log_debug_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_DEBUG, "Unknown key in experiments dict %@ (%s), ignoring", buf, 0x16u);
                  }

                  *__error() = v11;
                }

                ++v5;
              }

              while (v3 != v5);
              v3 = [v2 countByEnumeratingWithState:&v93 objects:v107 count:16];
            }

            while (v3);
          }
        }

        v75 = [obj countByEnumeratingWithState:&v97 objects:v108 count:16];
      }

      while (v75);
    }
  }

  objc_opt_class();
  obj = DictGetArrayOfClass(newValue, @"rollouts");
  if (!obj)
  {
LABEL_74:
    v31 = *(a1 + 40);
    if (v31)
    {
      objc_setProperty_atomic(v31, v16, newValue, 632);
    }

    goto LABEL_115;
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v2 = obj;
  v76 = [v2 countByEnumeratingWithState:&v89 objects:v102 count:16];
  if (!v76)
  {
    goto LABEL_73;
  }

  v78 = *v90;
LABEL_41:
  v80 = 0;
LABEL_42:
  if (*v90 != v78)
  {
    objc_enumerationMutation(v2);
  }

  v17 = *(*(&v89 + 1) + 8 * v80);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v7 = v17;
  v18 = [v7 countByEnumeratingWithState:&v85 objects:v101 count:16];
  if (!v18)
  {
    goto LABEL_71;
  }

  v19 = *v86;
LABEL_46:
  v20 = 0;
  while (1)
  {
    if (*v86 != v19)
    {
      objc_enumerationMutation(v7);
    }

    v21 = *(*(&v85 + 1) + 8 * v20);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = *__error();
      v27 = _sa_logt();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v30 = object_getClassName(v21);
        *buf = 138412546;
        v104 = v21;
        v105 = 2080;
        v106 = v30;
        _os_log_debug_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_DEBUG, "Unknown key in rollouts dict %@ (%s), ignoring", buf, 0x16u);
      }

      *__error() = v26;
      goto LABEL_69;
    }

    v22 = [v7 objectForKeyedSubscript:v21];
    if ([v21 isEqualToString:@"factor_pack_ids"])
    {
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v25 = DictGetDictOfClasses(v7, @"factor_pack_ids", v23, v24);
      LODWORD(v23) = v25 == 0;

      if (v23)
      {
        v39 = *__error();
        v40 = _sa_logt();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v40, OS_LOG_TYPE_ERROR, "Bad type in trial rollouts dict: trial factor packs value is invalid", buf, 2u);
        }

        *__error() = v39;
        v42 = *(a1 + 32);
        if (v42)
        {
          [v42 addObject:@"Bad type in trial rollouts dict: trial factor packs value is invalid"];
        }

        goto LABEL_113;
      }

      goto LABEL_68;
    }

    if ([v21 isEqualToString:@"rollout_id"])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v47 = *__error();
        v48 = _sa_logt();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v70 = object_getClassName(v22);
          *buf = 136315138;
          v104 = v70;
          _os_log_error_impl(&dword_1E0E2F000, v48, OS_LOG_TYPE_ERROR, "Bad type in trial rollouts dict: rollout is %s", buf, 0xCu);
        }

        *__error() = v47;
        v50 = *(a1 + 32);
        if (!v50)
        {
          goto LABEL_113;
        }

        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Bad type in trial rollouts dict: rollout is %s", object_getClassName(v22)];
        [v50 addObject:v51];
        goto LABEL_112;
      }

      goto LABEL_68;
    }

    if ([v21 isEqualToString:@"deployment_id"])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v56 = *__error();
        v57 = _sa_logt();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v72 = object_getClassName(v22);
          *buf = 136315138;
          v104 = v72;
          _os_log_error_impl(&dword_1E0E2F000, v57, OS_LOG_TYPE_ERROR, "Bad type in trial rollouts dict: deployment is %s", buf, 0xCu);
        }

        *__error() = v56;
        v59 = *(a1 + 32);
        if (!v59)
        {
          goto LABEL_113;
        }

        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Bad type in trial rollouts dict: deployment is %s", object_getClassName(v22)];
        [v59 addObject:v51];
LABEL_112:

        goto LABEL_113;
      }

      goto LABEL_68;
    }

    if (![v21 isEqualToString:@"ramp_id"])
    {
      v28 = *__error();
      v29 = _sa_logt();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v104 = v21;
        _os_log_debug_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_DEBUG, "Unknown key in experiments dict %@, ignoring", buf, 0xCu);
      }

      *__error() = v28;
      goto LABEL_68;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

LABEL_68:

LABEL_69:
    if (v18 == ++v20)
    {
      v18 = [v7 countByEnumeratingWithState:&v85 objects:v101 count:16];
      if (v18)
      {
        goto LABEL_46;
      }

LABEL_71:

      if (++v80 == v76)
      {
        v76 = [v2 countByEnumeratingWithState:&v89 objects:v102 count:16];
        if (!v76)
        {
LABEL_73:

          goto LABEL_74;
        }

        goto LABEL_41;
      }

      goto LABEL_42;
    }
  }

  v64 = *__error();
  v65 = _sa_logt();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    v74 = object_getClassName(v22);
    *buf = 136315138;
    v104 = v74;
    _os_log_error_impl(&dword_1E0E2F000, v65, OS_LOG_TYPE_ERROR, "Bad type in trial rollouts dict: ramp is %s", buf, 0xCu);
  }

  *__error() = v64;
  v67 = *(a1 + 32);
  if (v67)
  {
    v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Bad type in trial rollouts dict: ramp is %s", object_getClassName(v22)];
    [v67 addObject:v51];
    goto LABEL_112;
  }

LABEL_113:

LABEL_114:
LABEL_115:

LABEL_116:
  v68 = *MEMORY[0x1E69E9840];
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_257(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  ktrace_chunk_size();
  v2 = ktrace_chunk_copy_cfdata();
  if (v2)
  {
    v3 = v2;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v2 options:0 format:0 error:0];

    if (v6)
    {
      [*(a1 + 40) addObject:?];
    }

    else
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        [v5 addObject:@"Unable to deserialize dictionary from tailspin process info chunk"];
      }
    }
  }

  else
  {
    v4 = *(a1 + 32);
    if (v4)
    {

      [v4 addObject:@"Unable to get data for tailspin process info chunk"];
    }
  }
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_2_268(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  if (ktrace_config_create())
  {
    typefilter = ktrace_config_kdebug_get_typefilter();
    v3 = typefilter;
    if (!typefilter || (*(typefilter + 1218) & 0x40) != 0)
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        *(v7 + 8) = 0;
      }

      if (!typefilter)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = *__error();
      v5 = _sa_logt();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.receiver) = 0;
        _os_log_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_DEFAULT, "Missing tracecodes to track runaway mitigation", &buf, 2u);
      }

      *__error() = v4;
      v6 = *(a1 + 40);
      if (v6)
      {
        *(v6 + 8) = 1;
      }
    }

    if ((*(v3 + 128) & 4) == 0)
    {
      v8 = *__error();
      v9 = _sa_logt();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.receiver) = 0;
        _os_log_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_DEFAULT, "Missing tracecodes to track effective jetsam priority", &buf, 2u);
      }

      *__error() = v8;
      v10 = *(a1 + 40);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = 1;
      goto LABEL_18;
    }

LABEL_16:
    v10 = *(a1 + 40);
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = 0;
LABEL_18:
    *(v10 + 9) = v11;
LABEL_19:
    reason = ktrace_config_get_reason();
    if (reason && *reason)
    {
      v13 = SANSStringForCString(reason);
      [*(a1 + 48) setReason:v13];
    }

    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pet_mode = ktrace_config_kperf_get_pet_mode();
    if (pet_mode)
    {
      if (pet_mode == 2)
      {
        *(*(*(a1 + 56) + 8) + 24) = ktrace_config_kperf_get_pet_timer_id();
        if ((*(*(*(a1 + 56) + 8) + 24) & 0x80000000) != 0)
        {
          v15 = *__error();
          v16 = _sa_logt();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.receiver) = 0;
            _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "Unable to get lightweight PET timer, treating as non-PET", &buf, 2u);
          }

          *__error() = v15;
          v17 = *(a1 + 32);
          if (v17)
          {
            [v17 addObject:{@"Unable to get lightweight PET timer, treating ktrace data as non-PET"}];
          }
        }
      }

      else
      {
        v20 = *__error();
        v21 = _sa_logt();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.receiver) = 0;
          _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "Non-lightweight PET not supported, treating as non-PET", &buf, 2u);
        }

        *__error() = v20;
      }
    }

    timer_count = ktrace_config_kperf_get_timer_count();
    if (!timer_count)
    {
      goto LABEL_78;
    }

    v24 = 0;
    v25 = 0;
    *&v23 = 67109632;
    v55 = v23;
    while (1)
    {
      timer_period_ns = ktrace_config_kperf_get_timer_period_ns();
      if (!timer_period_ns)
      {
        break;
      }

      timer_action_id = ktrace_config_kperf_get_timer_action_id();
      if (!timer_action_id)
      {
        v36 = *__error();
        v37 = _sa_logt();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.receiver) = 67109120;
          HIDWORD(buf.receiver) = v25;
          _os_log_error_impl(&dword_1E0E2F000, v37, OS_LOG_TYPE_ERROR, "KPerf timer %d has no action, ignoring", &buf, 8u);
        }

LABEL_52:

        v38 = __error();
        goto LABEL_59;
      }

      action_samplers = ktrace_config_kperf_get_action_samplers();
      if ((action_samplers & 0xC) != 0)
      {
        v29 = *(*(*(a1 + 56) + 8) + 24);
        if (v29 < 0 || v25 != v29)
        {
          v40 = [SAKPerfTrigger alloc];
          if (v40)
          {
            buf.receiver = v40;
            buf.super_class = SAKPerfTrigger;
            v41 = objc_msgSendSuper2(&buf, sel_init);
            v42 = v41;
            if (v41)
            {
              v41[1] = 2;
              v41[2] = timer_period_ns;
              v41[3] = action_samplers;
            }
          }

          else
          {
            v42 = 0;
          }

          [v56 addObject:{v42, v55}];
        }

        else
        {
          [*(a1 + 48) kPerfPETSampleIntervalLimit];
          v31 = v30 * 1000000000.0;
          if (timer_period_ns <= v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = timer_period_ns;
          }

          v33 = [SAKPerfTrigger alloc];
          if (v33)
          {
            buf.receiver = v33;
            buf.super_class = SAKPerfTrigger;
            v34 = objc_msgSendSuper2(&buf, sel_init);
            v35 = v34;
            if (v34)
            {
              v34[1] = 1;
              v34[2] = v32;
              v34[3] = action_samplers;
            }
          }

          else
          {
            v35 = 0;
          }

          v24 = v35;
          [v56 addObject:v35];
        }

        goto LABEL_60;
      }

      v36 = *__error();
      v39 = _sa_logt();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        buf.receiver = __PAIR64__(v25, v55);
        LOWORD(buf.super_class) = 1024;
        *(&buf.super_class + 2) = timer_action_id;
        HIWORD(buf.super_class) = 2048;
        v58 = action_samplers;
        _os_log_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_INFO, "KPerf timer %d (action %d) doesn't sample callstacks (0x%llx), ignoring", &buf, 0x18u);
      }

      v38 = __error();
LABEL_59:
      *v38 = v36;
LABEL_60:
      if (timer_count == ++v25)
      {
        if (v24)
        {
          if ([v56 count] >= 2)
          {
            v43 = *__error();
            v44 = _sa_logt();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf.receiver) = 0;
              _os_log_error_impl(&dword_1E0E2F000, v44, OS_LOG_TYPE_ERROR, "Parsing both PET and non-PET data is not supported, parsing only PET data", &buf, 2u);
            }

            *__error() = v43;
            [v56 removeAllObjects];
            [v56 addObject:v24];
          }

          v45 = *(a1 + 48);
          v46 = [v45 dataSource];
          if (v45)
          {
            v45[54] = v46 | 2;
          }

          v47 = *(a1 + 48);
          if (v47)
          {
            *(v47 + 440) = 3;
          }

          [*(a1 + 48) setAttemptedSamplingInterval:{objc_msgSend(v24, "timerPeriodNs") / 1000000000.0}];
          goto LABEL_89;
        }

LABEL_78:
        v48 = *(a1 + 48);
        v49 = [v48 dataSource];
        if (v48)
        {
          v48[54] = v49 | 8;
        }

        v50 = *(a1 + 48);
        if (v50)
        {
          *(v50 + 440) = 1;
        }

        if ([v56 count] == 1)
        {
          v51 = [v56 firstObject];
          if ([v51 type] == 2)
          {
            [*(a1 + 48) setAttemptedSamplingInterval:{objc_msgSend(v51, "timerPeriodNs") / 1000000000.0}];
          }
        }

        v52 = *(a1 + 40);
        if (v52 && (*(v52 + 8) = 1, (v53 = *(a1 + 40)) != 0))
        {
          v24 = 0;
          *(v53 + 9) = 1;
        }

        else
        {
          v24 = 0;
        }

LABEL_89:
        [*(a1 + 48) setKperfTriggers:v56];
        ktrace_config_destroy();

LABEL_90:
        v54 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    v36 = *__error();
    v37 = _sa_logt();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.receiver) = 67109120;
      HIDWORD(buf.receiver) = v25;
      _os_log_impl(&dword_1E0E2F000, v37, OS_LOG_TYPE_INFO, "KPerf timer %d has 0 period, ignoring", &buf, 8u);
    }

    goto LABEL_52;
  }

  v18 = *(a1 + 32);
  if (!v18)
  {
    goto LABEL_90;
  }

  v19 = *MEMORY[0x1E69E9840];

  [v18 addObject:@"Unable to parse ktrace config chunk"];
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_276(uint64_t a1)
{
  if (ktrace_chunk_tag() == 36869)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  ktrace_chunk_size();
  v2 = ktrace_chunk_copy_cfdata();
  if (v2)
  {
    v4 = v2;
    [SASharedCache addDSCSymData:v2];
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {

      [v3 addObject:@"Unable to get data for dscsym chunk"];
    }
  }
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_2_283(void *a1)
{
  if (ktrace_chunk_tag() == 36864)
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  ktrace_chunk_size();
  v2 = ktrace_chunk_copy_cfdata();
  if (v2)
  {
    v3 = v2;
    if (ktrace_chunk_tag() == 36864)
    {
      v4 = SAGetStackshotDataFromTailspinStackshotChunk(v3);

      v3 = v4;
    }

    if ([v3 length])
    {
      [*(*(a1[6] + 8) + 40) addObject:v3];
    }

    else
    {
      v6 = *__error();
      v7 = _sa_logt();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "0-length stackshot chunk", v8, 2u);
      }

      *__error() = v6;
    }
  }

  else
  {
    v5 = a1[4];
    if (v5)
    {

      [v5 addObject:@"Unable to get data for stackshot chunk"];
    }
  }
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_290(uint64_t a1)
{
  v2 = DictForChunkViaNSUnarchiver();
  v4 = v2;
  if (v2)
  {
    [(SASampleStore *)*(a1 + 40) addAddressTranslations:v2];
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      [v3 addObject:@"Unable to get data for address translation chunk"];
    }
  }
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_2_294(void *a1)
{
  *(*(a1[5] + 8) + 24) = 1;
  v2 = DictForChunkViaNSUnarchiver();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = a1[4];
    if (v5)
    {

      [v5 addObject:@"Unable to get data for resampled stacks chunk"];
    }
  }
}

unint64_t __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_3_307(void *a1, uint64_t *a2)
{
  v3 = a1[5];
  v4 = *a2;
  result = ktrace_get_absolute_from_timestamp();
  if (result >= a1[6])
  {
    *(*(a1[4] + 8) + 24) = result;
  }

  return result;
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_4(uint64_t a1)
{
  v126 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) dataStyle] == 1 || !objc_msgSend(*(a1 + 32), "dataStyle"))
  {
    if (![*(a1 + 32) isEmpty])
    {
      goto LABEL_4;
    }
  }

  else
  {
    v2 = [*(a1 + 32) sampleTimestamps];
    v3 = [v2 count];

    if (v3)
    {
LABEL_4:
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v4 = *(a1 + 48);
      v5 = [v4 countByEnumeratingWithState:&v114 objects:v125 count:16];
      if (v5)
      {
        v6 = *v115;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v115 != v6)
            {
              objc_enumerationMutation(v4);
            }

            [*(a1 + 32) addProcessInfoFromTailspin:*(*(&v114 + 1) + 8 * i)];
          }

          v5 = [v4 countByEnumeratingWithState:&v114 objects:v125 count:16];
        }

        while (v5);
      }

      if (*(*(*(a1 + 72) + 8) + 40))
      {
        v8 = objc_alloc_init(SAFrameIterator);
        [(SAFrameIterator *)v8 setBacktracer:3];
        v9 = *(*(*(a1 + 72) + 8) + 40);
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_5;
        v112[3] = &unk_1E86F6480;
        v112[4] = *(a1 + 32);
        v10 = v8;
        v113 = v10;
        [v9 enumerateKeysAndObjectsUsingBlock:v112];
      }

      if ((*(a1 + 120) & 1) == 0)
      {
        if ([*(a1 + 32) dataStyle] == 3 || objc_msgSend(*(a1 + 32), "dataStyle") == 4)
        {
          [*(a1 + 32) enumerateTasks:&__block_literal_global_311];
        }

        [*(a1 + 32) enumerateTasks:&__block_literal_global_314];
        v11 = *(*(*(a1 + 80) + 8) + 24);
        if (v11 < [*(*(*(a1 + 88) + 8) + 40) count])
        {
          for (j = *(*(*(a1 + 80) + 8) + 24); j < [*(*(*(a1 + 88) + 8) + 40) count]; ++j)
          {
            v13 = [*(a1 + 56) objectAtIndexedSubscript:j];
            v14 = [v13 unsignedLongLongValue];

            v15 = [SATimestamp timestampWithMachAbsTime:v14 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:0.0];
            if ([*(a1 + 32) dataStyle] != 3 || (objc_msgSend(*(a1 + 32), "sampleTimestamps"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count") == 0, v16, v17))
            {
              v20 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = [*(a1 + 32) sampleTimestamps];
              v19 = [v18 count];

              v20 = v19 - 1;
            }

            if (qword_1EDD02FB0)
            {
              v21 = *__error();
              fprintf(qword_1EDD02FB0, "%'llu Parsing stackshot %lu (past end of ktrace data)\n", v14, j);
              *__error() = v21;
            }

            v22 = *(a1 + 32);
            v23 = [*(*(*(a1 + 88) + 8) + 40) objectAtIndexedSubscript:j];
            [(SASampleStore *)v22 _addKCDataStackshot:v23 timestamp:v15 sampleIndex:v20 shouldSkipSampleOut:0 primaryDataIsKPerf:1u addStaticInfoOnly:1 ktraceDataUnavailable:*(a1 + 64)];

            v24 = [*(a1 + 32) endTime];
            v25 = v24 == 0;

            if (!v25)
            {
              v26 = [*(a1 + 32) endTime];
              [v15 guessMissingTimesBasedOnTimestamp:v26];
            }

            if (qword_1EDD02FB0)
            {
              v27 = *__error();
              fprintf(qword_1EDD02FB0, "%'llu Done parsing ending stackshot %lu (past end of ktrace data)\n", v14, j);
              *__error() = v27;
            }
          }
        }
      }

      v82 = +[SATimestamp timestampWithMachAbsTime:machContTime:wallTime:machTimebase:](SATimestamp, "timestampWithMachAbsTime:machContTime:wallTime:machTimebase:", *(*(*(a1 + 96) + 8) + 24), 0, [*(a1 + 32) machTimebase], 0.0);
      v28 = *(a1 + 32);
      if (v28)
      {
        v29 = *(a1 + 112);
        v30 = *(*(*(a1 + 104) + 8) + 24);
        v31 = objc_autoreleasePoolPush();
        v32 = [v28 tasksByPid];
        v118[0] = MEMORY[0x1E69E9820];
        v118[1] = 3221225472;
        v118[2] = __116__SASampleStore_KPerf__addLoadInfoFromKTrace_lastKTraceEventTimestamp_checkForNewLoadInfosEvenWithExistingLoadInfo___block_invoke;
        v118[3] = &unk_1E86F62F0;
        v118[4] = v28;
        v118[5] = v82;
        v119 = v30 ^ 1;
        v118[6] = v29;
        [v32 enumerateKeysAndObjectsUsingBlock:v118];

        objc_autoreleasePoolPop(v31);
        v33 = *(a1 + 32);
      }

      else
      {
        v33 = 0;
      }

      v34 = [v33 sharedCaches];
      v35 = [v34 count] == 0;

      if (!v35)
      {
        v36 = [*(a1 + 32) tasksByPid];
        v111[0] = MEMORY[0x1E69E9820];
        v111[1] = 3221225472;
        v111[2] = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_5_319;
        v111[3] = &unk_1E86F64F0;
        v111[4] = *(a1 + 32);
        [v36 enumerateKeysAndObjectsUsingBlock:v111];
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v37 = [*(a1 + 32) hidEvents];
      obj = v37;
      v38 = [v37 countByEnumeratingWithState:&v107 objects:v124 count:16];
      if (v38)
      {
        v87 = *v108;
        do
        {
          v89 = v38;
          for (k = 0; k != v89; ++k)
          {
            if (*v108 != v87)
            {
              objc_enumerationMutation(obj);
            }

            v40 = *(*(&v107 + 1) + 8 * k);
            v103 = 0u;
            v104 = 0u;
            v105 = 0u;
            v106 = 0u;
            v41 = [v40 steps];
            v42 = [v41 countByEnumeratingWithState:&v103 objects:v123 count:16];
            if (v42)
            {
              v43 = *v104;
              do
              {
                for (m = 0; m != v42; ++m)
                {
                  if (*v104 != v43)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v45 = *(*(&v103 + 1) + 8 * m);
                  if ([v45 pid] == -1 && objc_msgSend(v45, "tid"))
                  {
                    v46 = *(a1 + 32);
                    v47 = [v45 tid];
                    v48 = [v45 timestamp];
                    v49 = [(SASampleStore *)v46 taskWithPid:v47 orTid:v48 atTimestamp:?];

                    if (v49)
                    {
                      v50 = [v49 pid];
                      if (v45)
                      {
                        v45[3] = v50;
                      }
                    }
                  }
                }

                v42 = [v41 countByEnumeratingWithState:&v103 objects:v123 count:16];
              }

              while (v42);
            }
          }

          v37 = obj;
          v38 = [obj countByEnumeratingWithState:&v107 objects:v124 count:16];
        }

        while (v38);
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v51, 72, 1);
      }

      v80 = Property;
      v78 = [v80 countByEnumeratingWithState:&v99 objects:v122 count:16];
      if (v78)
      {
        v79 = *v100;
        do
        {
          v81 = 0;
          do
          {
            if (*v100 != v79)
            {
              objc_enumerationMutation(v80);
            }

            v54 = *(*(&v99 + 1) + 8 * v81);
            v95 = 0u;
            v96 = 0u;
            v97 = 0u;
            v98 = 0u;
            if (v54)
            {
              v55 = objc_getProperty(v54, v53, 8, 1);
            }

            else
            {
              v55 = 0;
            }

            v90 = v54;
            v83 = v55;
            v56 = [v83 countByEnumeratingWithState:&v95 objects:v121 count:16];
            if (v56)
            {
              v84 = *v96;
              do
              {
                obja = v56;
                for (n = 0; n != obja; n = n + 1)
                {
                  if (*v96 != v84)
                  {
                    objc_enumerationMutation(v83);
                  }

                  v58 = *(*(&v95 + 1) + 8 * n);
                  v91 = 0u;
                  v92 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  v88 = v58;
                  v59 = [v58 steps];
                  v60 = [v59 countByEnumeratingWithState:&v91 objects:v120 count:16];
                  if (v60)
                  {
                    v61 = *v92;
                    do
                    {
                      for (ii = 0; ii != v60; ++ii)
                      {
                        if (*v92 != v61)
                        {
                          objc_enumerationMutation(v59);
                        }

                        v63 = *(*(&v91 + 1) + 8 * ii);
                        if ([v63 pid] == -1 && objc_msgSend(v63, "tid"))
                        {
                          v64 = *(a1 + 32);
                          v65 = [v63 tid];
                          v66 = [v63 timestamp];
                          v67 = [(SASampleStore *)v64 taskWithPid:v65 orTid:v66 atTimestamp:?];

                          if (v67)
                          {
                            v68 = [v67 pid];
                            if (v63)
                            {
                              v63[3] = v68;
                            }
                          }
                        }
                      }

                      v60 = [v59 countByEnumeratingWithState:&v91 objects:v120 count:16];
                    }

                    while (v60);
                  }

                  if (v90)
                  {
                    if (v90[4] == -1)
                    {
                      v69 = [v88 steps];
                      v70 = [v69 lastObject];
                      v71 = [v70 pid] == -1;

                      if (!v71)
                      {
                        v72 = [v88 steps];
                        v73 = [v72 lastObject];
                        v90[4] = [v73 pid];
                      }
                    }
                  }
                }

                v56 = [v83 countByEnumeratingWithState:&v95 objects:v121 count:16];
              }

              while (v56);
            }

            ++v81;
          }

          while (v81 != v78);
          v74 = [v80 countByEnumeratingWithState:&v99 objects:v122 count:16];
          v78 = v74;
        }

        while (v74);
      }

      dispatch_semaphore_signal(*(a1 + 40));
      v75 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  v76 = *(a1 + 40);
  v77 = *MEMORY[0x1E69E9840];

  dispatch_semaphore_signal(v76);
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = -[SASampleStore lastTaskWithPid:](*(a1 + 32), [a2 intValue]);
      v7 = v6;
      if (v6)
      {
        v8 = [v6 binaryLoadInfos];
        [*(a1 + 40) setUserBinaryLoadInfos:v8];

        [*(a1 + 40) setAssumeUserBinaryLoadInfosContainMainBinary:v7[79] & 1];
        v9 = [v7 sharedCache];
        [*(a1 + 40) setSharedCache:v9];

        v10 = *(a1 + 32);
        if (v10)
        {
          v11 = *(v10 + 240);
        }

        else
        {
          v11 = 0;
        }

        objc_copyStruct(&dest, v7 + 288, 8, 1, 0);
        if (v11 && dest)
        {
          CSArchitectureGetFamily();
          CSArchitectureGetFamily();
          if ((CSArchitectureMatchesArchitecture() & 1) == 0)
          {
            v12 = -[SASampleStore addressTranslationsForPid:](*(a1 + 32), [v7 pid]);
            [*(a1 + 40) setAddressTranslations:v12];
          }
        }

        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_6;
        v13[3] = &unk_1E86F6458;
        v14 = v7;
        v15 = *(a1 + 40);
        [a3 enumerateKeysAndObjectsUsingBlock:v13];
        [*(a1 + 40) clearTaskData];
      }
    }
  }
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [*(a1 + 32) threads];
      v7 = [v6 objectForKeyedSubscript:a2];

      if (v7)
      {
        Property = objc_getProperty(v7, v8, 48, 1);
      }

      else
      {
        Property = 0;
      }

      v10 = Property;

      if (!v10)
      {
        v11 = malloc_type_calloc([a3 count], 8uLL, 0x100004000313F17uLL);
        for (i = 0; i < [a3 count]; ++i)
        {
          v13 = [a3 objectAtIndexedSubscript:i];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            free(v11);

            goto LABEL_18;
          }

          *(v11 + i) = [v13 unsignedLongLongValue];
        }

        [*(a1 + 40) setUserFrames:v11];
        [*(a1 + 40) setNumUserFrames:{objc_msgSend(a3, "count")}];
        v15 = [(SATask *)*(a1 + 32) leafFrameAfterAddingStack:0 leafOfCRootFramesReplacedBySwiftAsync:?];
        if (v15)
        {
          if (v7)
          {
            objc_setProperty_atomic(v7, v14, v15, 48);
          }
        }

        else
        {
          v16 = *__error();
          v17 = _sa_logt();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v19 = [*(a1 + 32) debugDescription];
            v20 = [v19 UTF8String];
            v21 = [v7 debugDescription];
            v22 = [v21 UTF8String];
            v23 = [*(a1 + 40) numUserFrames];
            v24 = 136315650;
            v25 = v20;
            v26 = 2080;
            v27 = v22;
            v28 = 2048;
            v29 = v23;
            _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "%s %s unable to add resampled stack with %lu frames", &v24, 0x20u);
          }

          *__error() = v16;
        }

        [*(a1 + 40) clearThreadData];
      }

LABEL_18:
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_2_312(uint64_t a1, void *a2)
{
  v3 = [a2 threads];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_3_315;
  v4[3] = &unk_1E86F60C0;
  v4[4] = a2;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_3_315(uint64_t a1, uint64_t a2, void *a3)
{
  if ([*(a1 + 32) pid])
  {
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x3032000000;
    v6[3] = __Block_byref_object_copy__1;
    v6[4] = __Block_byref_object_dispose__1;
    v7 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_4_316;
    v5[3] = &unk_1E86F64C8;
    v5[4] = *(a1 + 32);
    v5[5] = v6;
    [a3 enumerateThreadStatesBetweenStartTime:0 startSampleIndex:0x7FFFFFFFFFFFFFFFLL endTime:0 endSampleIndex:0x7FFFFFFFFFFFFFFFLL reverseOrder:1 block:v5];
    _Block_object_dispose(v6, 8);
  }
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_4_316(uint64_t a1, void *a2)
{
  v4 = [a2 leafUserFrame];

  if (!v4)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = [(SATask *)*(a1 + 32) truncatedUserStackFrameSwiftAsync:?];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    if (a2)
    {

      objc_setProperty_atomic(a2, v5, v6, 64);
    }
  }
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_5_319(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  if ([a2 intValue] && objc_msgSend(a2, "intValue") != -1)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v4 = [a3 reverseObjectEnumerator];
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v62 objects:v73 count:16];
    if (!v6)
    {
      goto LABEL_50;
    }

    v54 = 0;
    v7 = *v63;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v63 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v62 + 1) + 8 * i);
        if (!v9 || (v9[74] & 1) == 0)
        {
          v10 = [*(*(&v62 + 1) + 8 * i) sharedCache];
          v11 = v10 == 0;

          if (v11)
          {
            if (v5)
            {
              v13 = *__error();
              v14 = _sa_logt();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                v50 = [v9 debugDescription];
                v16 = [v5 uuid];
                v17 = [v16 UUIDString];
                v18 = [v5 slide];
                *buf = 138412802;
                v68 = v50;
                v69 = 2112;
                v70 = v17;
                v71 = 2048;
                v72 = v18;
                _os_log_debug_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_DEBUG, "%@: guessing shared cache based on later tasks with the same pid: UUID:%@ slide=0x%0llX", buf, 0x20u);
              }

              *__error() = v13;
              if (v9)
              {
                objc_setProperty_atomic(v9, v15, v5, 264);
              }
            }

            else
            {
              v54 = 1;
            }
          }

          else
          {
            v12 = [v9 sharedCache];

            v5 = v12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v6);

    if (v54)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v4 = a3;
      v19 = [v4 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (!v19)
      {
        goto LABEL_50;
      }

      v20 = *v59;
      while (1)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v59 != v20)
          {
            objc_enumerationMutation(v4);
          }

          v22 = *(*(&v58 + 1) + 8 * j);
          if (!v22 || (v22[74] & 1) == 0)
          {
            v23 = [*(*(&v58 + 1) + 8 * j) sharedCache];
            v24 = v23 == 0;

            if (v24)
            {
              if (!v5)
              {
                Property = *(a1 + 32);
                if (Property)
                {
                  Property = objc_getProperty(Property, v25, 1184, 1);
                }

                v30 = Property;
                v31 = v30 == 0;

                v33 = *(a1 + 32);
                if (v31)
                {
                  v38 = [v33 sharedCaches];
                  v34 = [v38 firstObject];

                  v39 = *__error();
                  v40 = _sa_logt();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                  {
                    v57 = [v22 debugDescription];
                    v52 = [v34 uuid];
                    v46 = [v52 UUIDString];
                    v47 = [v34 slide];
                    *buf = 138412802;
                    v68 = v57;
                    v69 = 2112;
                    v70 = v46;
                    v71 = 2048;
                    v72 = v47;
                    _os_log_debug_impl(&dword_1E0E2F000, v40, OS_LOG_TYPE_DEBUG, "%@: guessing first shared cache: UUID:%@ slide=0x%0llX", buf, 0x20u);
                  }

                  *__error() = v39;
                  if (v22)
                  {
LABEL_46:
                    objc_setProperty_atomic(v22, v37, v34, 264);
                  }
                }

                else
                {
                  if (v33)
                  {
                    v33 = objc_getProperty(v33, v32, 1184, 1);
                  }

                  v34 = v33;
                  v35 = *__error();
                  v36 = _sa_logt();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                  {
                    v56 = [v22 debugDescription];
                    v51 = [v34 uuid];
                    v44 = [v51 UUIDString];
                    v45 = [v34 slide];
                    *buf = 138412802;
                    v68 = v56;
                    v69 = 2112;
                    v70 = v44;
                    v71 = 2048;
                    v72 = v45;
                    _os_log_debug_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_DEBUG, "%@: guessing native shared cache: UUID:%@ slide=0x%0llX", buf, 0x20u);
                  }

                  *__error() = v35;
                  if (v22)
                  {
                    goto LABEL_46;
                  }
                }

                continue;
              }

              v26 = *__error();
              v27 = _sa_logt();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                v55 = [v22 debugDescription];
                v41 = [v5 uuid];
                v42 = [v41 UUIDString];
                v43 = [v5 slide];
                *buf = 138412802;
                v68 = v55;
                v69 = 2112;
                v70 = v42;
                v71 = 2048;
                v72 = v43;
                _os_log_debug_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_DEBUG, "%@: guessing shared cache based on earlier tasks with the same pid: UUID:%@ slide=0x%0llX", buf, 0x20u);
              }

              *__error() = v26;
              if (v22)
              {
                objc_setProperty_atomic(v22, v28, v5, 264);
              }
            }
          }
        }

        v19 = [v4 countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (!v19)
        {
LABEL_50:

          break;
        }
      }
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

void __94__SASampleStore_KPerf___parseKTraceFile_stackshotsOnly_afterMachAbsTime_warningsOut_errorOut___block_invoke_320(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 80);
  v4 = *a2;
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  if (absolute_from_timestamp >= *(a1 + 88) && absolute_from_timestamp >= *(*(*(a1 + 56) + 8) + 24))
  {
    v22 = [SATimestamp timestampWithMachAbsTime:"timestampWithMachAbsTime:machAbsTimeSec:machContTime:machContTimeSec:wallTime:" machAbsTimeSec:0.0 machContTime:0.0 machContTimeSec:0.0 wallTime:?];
    v6 = [*(a1 + 32) dataStyle];
    if (v6 == 3)
    {
      v8 = [*(a1 + 32) sampleTimestamps];
      v7 = [v8 count];
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (qword_1EDD02FB0)
    {
      v9 = *__error();
      v10 = *(*(*(a1 + 56) + 8) + 24);
      fprintf(qword_1EDD02FB0, "%'llu Parsing stackshot %lu\n", v10, *(*(*(a1 + 64) + 8) + 24));
      *__error() = v9;
    }

    v11 = *(a1 + 32);
    v12 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 64) + 8) + 24)];
    v13 = [(SASampleStore *)v11 _addKCDataStackshot:v12 timestamp:v22 sampleIndex:v7 shouldSkipSampleOut:0 primaryDataIsKPerf:1u addStaticInfoOnly:v6 != 3 ktraceDataUnavailable:*(a1 + 40)];

    if (qword_1EDD02FB0)
    {
      v14 = *__error();
      v15 = *(*(*(a1 + 56) + 8) + 24);
      fprintf(qword_1EDD02FB0, "%'llu Done parsing stackshot %lu\n", v15, *(*(*(a1 + 64) + 8) + 24));
      *__error() = v14;
    }

    v16 = [*(a1 + 32) endTime];

    if (v16)
    {
      v17 = [*(a1 + 32) endTime];
      [v22 guessMissingTimesBasedOnTimestamp:v17];
    }

    if (v6 == 3)
    {
      if (v13)
      {
        v18 = *(a1 + 32);
        if (v18)
        {
          [*(v18 + 24) addObject:v22];
        }
      }
    }

    v19 = ++*(*(*(a1 + 64) + 8) + 24);
    if (v19 >= [*(a1 + 48) count])
    {
      if (*(a1 + 96))
      {
        *(*(*(a1 + 56) + 8) + 24) = -1;
      }

      else
      {
        v21 = *(a1 + 80);
        ktrace_end();
      }
    }

    else
    {
      v20 = [*(a1 + 48) objectAtIndexedSubscript:*(*(*(a1 + 64) + 8) + 24)];
      *(*(*(a1 + 56) + 8) + 24) = [v20 unsignedLongLongValue];
    }
  }
}

- (void)forwardFillFromLastStackshot:(void *)a1
{
  v38 = *MEMORY[0x1E69E9840];
  if ([a1 dataSource] != 2)
  {
    v21 = *__error();
    v22 = _sa_logt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v37 = [a1 dataSource];
      _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "data source 0x%llx", buf, 0xCu);
    }

    *__error() = v21;
    v23 = [a1 dataSource];
    _SASetCrashLogMessage(4263, "data source 0x%llx", v24, v25, v26, v27, v28, v29, v23);
    _os_crash();
    __break(1u);
  }

  v4 = [a1 sampleTimestamps];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [a1 sampleTimestamps];
    v7 = [v6 count];

    v8 = [a1 sampleTimestamps];
    v9 = [v8 lastObject];

    if ([v9 machAbsTime] <= a2)
    {
LABEL_14:

      goto LABEL_15;
    }

    v10 = [SATimestamp timestampWithMachAbsTime:a2 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:0.0];
    v11 = [a1 indexOfLastSampleOnOrBeforeTimestamp:v10];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_DEFAULT, "WARNING: Cannot forward-fill from last stackshot because there was no KPerf sample before the stackshot", buf, 2u);
      }

      *__error() = v12;
      goto LABEL_13;
    }

    v14 = [a1 sampleTimestamps];
    v15 = [v14 objectAtIndexedSubscript:v11];

    if ([v15 machAbsTime] == a2)
    {
      if (!v11)
      {
        v19 = *__error();
        v20 = _sa_logt();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_DEFAULT, "WARNING: Cannot forward-fill from last stackshot because there was no KPerf sample before the stackshot", buf, 2u);
        }

        *__error() = v19;
        goto LABEL_12;
      }

      v16 = [a1 sampleTimestamps];
      v17 = [v16 objectAtIndexedSubscript:v11 - 1];

      v15 = v17;
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __53__SASampleStore_KPerf__forwardFillFromLastStackshot___block_invoke;
    v30[3] = &unk_1E86F65B0;
    v34 = a2;
    v31 = v9;
    v32 = a1;
    v35 = v7 - 1;
    v15 = v15;
    v33 = v15;
    [a1 enumerateTasks:v30];

LABEL_12:
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
  v18 = *MEMORY[0x1E69E9840];
}

void __53__SASampleStore_KPerf__forwardFillFromLastStackshot___block_invoke(uint64_t a1, NSObject *a2)
{
  v2 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v4 = [a2 exitTimestamp];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  if ([v4 machAbsTime] <= *(a1 + 56))
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (![v5 lt:*(a1 + 32)])
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [*(a1 + 40) indexOfLastSampleOnOrBeforeTimestamp:v6];
  v8 = v7;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v7 > *(a1 + 64))
  {
    v9 = *__error();
    v2 = _sa_logt();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 64);
      *buf = 134218240;
      v37 = v8;
      v38 = 2048;
      v39 = v10;
      _os_log_error_impl(&dword_1E0E2F000, v2, OS_LOG_TYPE_ERROR, "%lu < %lu", buf, 0x16u);
    }

    *__error() = v9;
    v27 = *(a1 + 64);
    _SASetCrashLogMessage(4313, "%lu < %lu", v11, v12, v13, v14, v15, v16, v8);
    _os_crash();
    __break(1u);
LABEL_9:
    v8 = *(a1 + 64);
    v6 = *(a1 + 32);
  }

  v17 = [v2 taskStates];
  v18 = [v17 lastObject];

  if (v18)
  {
    v19 = [v18 startTimestamp];
    v20 = [v19 lt:*(a1 + 48)];

    if (v20)
    {
      v18[9] = v8;
      objc_setProperty_atomic(v18, v21, v6, 56);
    }
  }

  v22 = [v2 threads];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __53__SASampleStore_KPerf__forwardFillFromLastStackshot___block_invoke_356;
  v28[3] = &unk_1E86F6588;
  v33 = *(a1 + 56);
  v23 = v6;
  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v29 = v23;
  v30 = v24;
  v34 = *(a1 + 64);
  v35 = v8;
  v31 = v25;
  v32 = v2;
  [v22 enumerateKeysAndObjectsUsingBlock:v28];

  v6 = v23;
LABEL_15:

  v26 = *MEMORY[0x1E69E9840];
}

void __53__SASampleStore_KPerf__forwardFillFromLastStackshot___block_invoke_356(uint64_t a1, uint64_t a2, void *a3)
{
  v121 = *MEMORY[0x1E69E9840];
  v5 = [a3 exitTimestamp];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  if ([v5 machAbsTime] > *(a1 + 64))
  {
    if ([v6 lt:*(a1 + 32)])
    {
      newValue = v6;
      v7 = [*(a1 + 40) indexOfLastSampleOnOrBeforeTimestamp:?];
      v8 = v7;
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      if (v7 <= *(a1 + 72) && v7 <= *(a1 + 80))
      {
LABEL_11:
        v19 = [a3 threadStates];
        v20 = [v19 lastObject];

        if (v20 && ([v20 startTimestamp], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "lt:", *(a1 + 48)), v21, v22))
        {
          [(SAThreadState *)v20 setEndSampleIndex:v8];
          objc_setProperty_atomic(v20, v23, newValue, 56);
        }

        else
        {
          v24 = [a3 threadStates];
          if ([v24 count] >= 2)
          {
            v25 = [v20 leafUserFrame];
            if (!v25)
            {
              v27 = [*(a1 + 56) pid];

              if (v27)
              {
                v28 = [v20 cpuTimeNs];
                if (v28)
                {
                  v29 = [a3 threadStates];
                  v30 = [v29 count];

                  while (1)
                  {
                    v31 = v30 - 1;
                    if (v30 == 1)
                    {
                      break;
                    }

                    v32 = [a3 threadStates];
                    v33 = v30 - 2;
                    v34 = [v32 objectAtIndexedSubscript:v33];
                    v35 = [v34 cpuTimeNs];

                    if (v35 < v28)
                    {
                      break;
                    }

                    v36 = [a3 threadStates];
                    v37 = [v36 objectAtIndexedSubscript:v33];
                    v38 = [v37 leafUserFrame];

                    v30 = v31;
                    if (v38)
                    {
                      if (v31 == 0x8000000000000000)
                      {
                        goto LABEL_18;
                      }

                      v39 = [a3 threadStates];
                      v24 = [v39 objectAtIndexedSubscript:v31 - 1];

                      v25 = [v24 leafUserFrame];
                      v112 = [v24 leafOfCRootFramesReplacedBySwiftAsync];
                      obj = [v24 dispatchQueue];
                      v40 = [v24 swiftTask];
                      while (1)
                      {
                        v41 = [a3 threadStates];
                        v42 = [v41 count];

                        if (v31 >= v42)
                        {
                          break;
                        }

                        v43 = [a3 threadStates];
                        v44 = [v43 objectAtIndexedSubscript:v31];

                        v46 = [v44 leafUserFrame];
                        if (v46)
                        {
                          v47 = [v44 leafUserFrame];

                          if (v47 != v25)
                          {
                            v106 = *__error();
                            v53 = _sa_logt();
                            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                            {
                              v109 = [v44 leafUserFrame];
                              v54 = [v109 debugDescription];
                              v55 = [v54 UTF8String];
                              v56 = [v25 debugDescription];
                              v57 = [v56 UTF8String];
                              *buf = 136315394;
                              v116 = v55;
                              v117 = 2080;
                              v118 = v57;
                              _os_log_error_impl(&dword_1E0E2F000, v53, OS_LOG_TYPE_ERROR, "threadState.leafUserFrame %s != leafUserFrame %s", buf, 0x16u);
                            }

                            *__error() = v106;
                            v58 = [v44 leafUserFrame];
                            v59 = [v58 debugDescription];
                            v60 = v59;
                            v61 = [v59 UTF8String];
                            v62 = [v25 debugDescription];
                            v63 = v62;
                            [v62 UTF8String];
                            _SASetCrashLogMessage(4398, "threadState.leafUserFrame %s != leafUserFrame %s", v64, v65, v66, v67, v68, v69, v61);

                            _os_crash();
                            __break(1u);
LABEL_49:
                            v107 = *__error();
                            v70 = _sa_logt();
                            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                            {
                              v110 = [v44 dispatchQueue];
                              v71 = [v110 debugDescription];
                              v72 = [v71 UTF8String];
                              v73 = [obj debugDescription];
                              v74 = [v73 UTF8String];
                              *buf = 136315394;
                              v116 = v72;
                              v117 = 2080;
                              v118 = v74;
                              _os_log_error_impl(&dword_1E0E2F000, v70, OS_LOG_TYPE_ERROR, "threadState.dispatchQueue %s != dispatchQueue %s", buf, 0x16u);
                            }

                            *__error() = v107;
                            v75 = [v44 dispatchQueue];
                            v76 = [v75 debugDescription];
                            v77 = v76;
                            v78 = [v76 UTF8String];
                            v79 = [obj debugDescription];
                            v80 = v79;
                            [v79 UTF8String];
                            _SASetCrashLogMessage(4401, "threadState.dispatchQueue %s != dispatchQueue %s", v81, v82, v83, v84, v85, v86, v78);

                            _os_crash();
                            __break(1u);
LABEL_52:
                            v108 = *__error();
                            v87 = _sa_logt();
                            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                            {
                              v111 = [v44 swiftTask];
                              v88 = [v111 debugDescription];
                              v89 = [v88 UTF8String];
                              v90 = [v40 debugDescription];
                              v91 = [v90 UTF8String];
                              *buf = 136315394;
                              v116 = v89;
                              v117 = 2080;
                              v118 = v91;
                              _os_log_error_impl(&dword_1E0E2F000, v87, OS_LOG_TYPE_ERROR, "threadState.swiftTask %s != swiftTask %s", buf, 0x16u);
                            }

                            *__error() = v108;
                            v92 = [v44 swiftTask];
                            v93 = [v92 debugDescription];
                            v94 = v93;
                            v95 = [v93 UTF8String];
                            v96 = [v40 debugDescription];
                            v97 = v96;
                            [v96 UTF8String];
                            _SASetCrashLogMessage(4403, "threadState.swiftTask %s != swiftTask %s", v98, v99, v100, v101, v102, v103, v95);

                            _os_crash();
                            __break(1u);
                          }
                        }

                        if (v44)
                        {
                          objc_setProperty_atomic(v44, v45, v25, 64);
                          objc_setProperty_atomic(v44, v48, v112, 72);
                        }

                        v49 = [v44 dispatchQueue];
                        if (v49)
                        {
                          v50 = [v44 dispatchQueue];

                          if (v50 != obj)
                          {
                            goto LABEL_49;
                          }
                        }

                        if (v44)
                        {
                          objc_storeWeak(v44 + 14, obj);
                        }

                        v51 = [v44 swiftTask];
                        if (v51)
                        {
                          v52 = [v44 swiftTask];

                          if (v52 != v40)
                          {
                            goto LABEL_52;
                          }
                        }

                        if (v44)
                        {
                          objc_storeWeak(v44 + 15, v40);
                        }

                        ++v31;
                      }

                      goto LABEL_16;
                    }
                  }
                }
              }

              goto LABEL_18;
            }

LABEL_16:
          }
        }

LABEL_18:

        goto LABEL_20;
      }

      v9 = *__error();
      v10 = _sa_logt();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 72);
        v12 = *(a1 + 80);
        *buf = 134218496;
        v116 = v8;
        v117 = 2048;
        v118 = v11;
        v119 = 2048;
        v120 = v12;
        _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "%lu < %lu, < %lu", buf, 0x20u);
      }

      *__error() = v9;
      v104 = *(a1 + 72);
      v105 = *(a1 + 80);
      _SASetCrashLogMessage(4347, "%lu < %lu, < %lu", v13, v14, v15, v16, v17, v18, v8);
      _os_crash();
      __break(1u);
    }

LABEL_10:
    v8 = *(a1 + 80);
    newValue = *(a1 + 32);
    goto LABEL_11;
  }

  newValue = 0;
LABEL_20:

  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)parseStackshotsFromKTraceFile:(const char *)a3 afterMachAbsTime:(unint64_t)a4 warningsOut:(id)a5 errorOut:(id *)a6
{
  v10 = 0;
  if (a6)
  {
    v7 = &v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SASampleStore *)self _parseKTraceFile:a3 stackshotsOnly:1 afterMachAbsTime:a4 warningsOut:a5 errorOut:v7];
  if (a6)
  {
    *a6 = v10;
  }

  return v8;
}

- (BOOL)parseKTraceFile:(const char *)a3 afterMachAbsTime:(unint64_t)a4 warningsOut:(id)a5 errorOut:(id *)a6
{
  v10 = 0;
  if (a6)
  {
    v7 = &v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SASampleStore *)self _parseKTraceFile:a3 stackshotsOnly:0 afterMachAbsTime:a4 warningsOut:a5 errorOut:v7];
  if (a6)
  {
    *a6 = v10;
  }

  return v8;
}

void __616__SASampleStore_KPerfPrivate__backfillThread_inTask_lastSampleIndex_timestamp_haveName_name_haveDispatchQueueId_dispatchQueueId_dispatchQueueLabel_leafKernelFrame_hasExclaveInKernelStack_haveUserStack_leafUserFrame_swiftTaskId_leafOfCRootFramesReplacedBySwiftAsync_threadExclavesInfo_haveSched_systemCpuTimeNs_userCpuTimeNs_basePriority_scheduledPriority_state_threadQos_threadRequestedQos_threadRequestedQosOverride_threadQosPromote_haveCycIns_instructions_cycles_haveSnap_ioTier_isIOPassive_isDarwinBG_isSuspended_isGlobalForcedIdle_isIdleWorkQueue_lastMadeRunnableTime_isOnCore_isOnCoreForLastSampleIndex_cpuNum___block_invoke(uint64_t a1, void *a2, char *a3, _BYTE *a4)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = a2;
    v143 = v8;
    if (*(*(*(a1 + 136) + 8) + 24) == 1)
    {
      if ([v8 filledName])
      {
        if (*(*(*(a1 + 144) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
        {
          v10 = *__error();
          v11 = qword_1EDD02FB0;
          v12 = [*(a1 + 32) machAbsTime];
          v13 = [*(a1 + 40) threadId];
          v14 = [v143 name];
          v15 = [v14 UTF8String];
          v16 = "no name";
          if (v15)
          {
            v16 = v15;
          }

          fprintf(v11, "%'llu Thread 0x%llx thread name %s backfilled to %d thread states (indexes %lu-%lu)\n", v12, v13, v16, *(*(*(a1 + 144) + 8) + 24), a3 + 1, &a3[*(*(*(a1 + 144) + 8) + 24)]);

          *__error() = v10;
        }

        v17 = 0;
        *(*(*(a1 + 136) + 8) + 24) = 0;
      }

      else
      {
        [v143 setFilledName:1];
        if (v143)
        {
          objc_setProperty_atomic_copy(v143, v25, *(a1 + 48), 104);
        }

        v17 = 1;
        if (!a3 && qword_1EDD02FB0)
        {
          v26 = *__error();
          v27 = qword_1EDD02FB0;
          v28 = [*(a1 + 32) machAbsTime];
          v29 = [*(a1 + 40) threadId];
          v30 = [v143 name];
          v31 = [v30 UTF8String];
          v32 = "no name";
          if (v31)
          {
            v32 = v31;
          }

          fprintf(v27, "%'llu Thread 0x%llx thread name %s backfilled to all (%d) thread states (indexes %lu-%lu)\n", v28, v29, v32, *(*(*(a1 + 144) + 8) + 24) + 1, 0, *(*(*(a1 + 144) + 8) + 24));

          *__error() = v26;
          v17 = 1;
        }
      }
    }

    else
    {
      v17 = 0;
    }

    if (*(*(*(a1 + 152) + 8) + 24) == 1)
    {
      if ([v143 filledDispatchQueue])
      {
        if (*(*(*(a1 + 144) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
        {
          v20 = *__error();
          v21 = qword_1EDD02FB0;
          v22 = [*(a1 + 32) machAbsTime];
          v23 = [*(a1 + 40) threadId];
          v24 = *(a1 + 56);
          if (v24)
          {
            v24 = [v24 identifier];
          }

          fprintf(v21, "%'llu Thread 0x%llx dispatch queue %lld backfilled to %d thread states (indexes %lu-%lu)\n", v22, v23, v24, *(*(*(a1 + 144) + 8) + 24), a3 + 1, &a3[*(*(*(a1 + 144) + 8) + 24)]);
          *__error() = v20;
        }

        *(*(*(a1 + 152) + 8) + 24) = 0;
      }

      else
      {
        [v143 setFilledDispatchQueue:1];
        v33 = *(a1 + 56);
        if (v143)
        {
          objc_storeWeak((v143 + 112), v33);
          v33 = *(a1 + 56);
        }

        if (v33)
        {
          v34 = [(SARecipeState *)SADispatchQueueState stateWithThread:a3 threadStateIndex:?];
          [*(a1 + 64) insertObject:v34 atIndex:0];
        }

        v17 = 1;
        if (!a3 && qword_1EDD02FB0)
        {
          v35 = *__error();
          v36 = qword_1EDD02FB0;
          v37 = [*(a1 + 32) machAbsTime];
          v38 = [*(a1 + 40) threadId];
          v39 = *(a1 + 56);
          if (v39)
          {
            v39 = [v39 identifier];
          }

          fprintf(v36, "%'llu Thread 0x%llx dispatch queue %lld backfilled to all (%d) thread states (indexes %lu-%lu)\n", v37, v38, v39, *(*(*(a1 + 144) + 8) + 24) + 1, 0, *(*(*(a1 + 144) + 8) + 24));
          *__error() = v35;
          v17 = 1;
        }
      }
    }

    if (*(*(*(a1 + 160) + 8) + 24) != 1)
    {
LABEL_65:
      if (*(*(*(a1 + 168) + 8) + 24) == 1)
      {
        if ([v143 filledSwiftTask])
        {
          if (*(*(*(a1 + 144) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
          {
            v53 = *__error();
            v54 = qword_1EDD02FB0;
            v55 = [*(a1 + 32) machAbsTime];
            v56 = [*(a1 + 40) threadId];
            v57 = *(a1 + 104);
            if (v57)
            {
              v57 = [v57 identifier];
            }

            fprintf(v54, "%'llu Thread 0x%llx swift task %lld backfilled to %d thread states (indexes %lu-%lu)\n", v55, v56, v57, *(*(*(a1 + 144) + 8) + 24), a3 + 1, &a3[*(*(*(a1 + 144) + 8) + 24)]);
            *__error() = v53;
          }

          *(*(*(a1 + 168) + 8) + 24) = 0;
        }

        else
        {
          [v143 setFilledSwiftTask:1];
          v58 = *(a1 + 104);
          if (v143)
          {
            objc_storeWeak((v143 + 120), v58);
            v58 = *(a1 + 104);
          }

          if (v58)
          {
            v59 = [(SARecipeState *)SASwiftTaskState stateWithThread:a3 threadStateIndex:?];
            [*(a1 + 112) insertObject:v59 atIndex:0];
          }

          v17 = 1;
          if (!a3 && qword_1EDD02FB0)
          {
            v60 = *__error();
            v61 = qword_1EDD02FB0;
            v62 = [*(a1 + 32) machAbsTime];
            v63 = [*(a1 + 40) threadId];
            v64 = *(a1 + 104);
            if (v64)
            {
              v64 = [v64 identifier];
            }

            fprintf(v61, "%'llu Thread 0x%llx swift task %lld backfilled to all (%d) thread states (indexes %lu-%lu)\n", v62, v63, v64, *(*(*(a1 + 144) + 8) + 24) + 1, 0, *(*(*(a1 + 144) + 8) + 24));
            *__error() = v60;
            v17 = 1;
          }
        }
      }

      if (*(*(*(a1 + 176) + 8) + 24) == 1)
      {
        if ([v143 filledScheduling])
        {
          if (*(*(*(a1 + 144) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
          {
            v66 = *__error();
            fprintf(qword_1EDD02FB0, "%'llu Thread 0x%llx sched info (cpu time %lld (%lld + %lld), state 0x%x, priority %d (%d), qos %d, rqos %d, qoso %d, qosp %d) backfilled to %d thread states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "threadId"), *(a1 + 224) + *(a1 + 216), *(a1 + 216), *(a1 + 224), *(a1 + 248), *(a1 + 256), *(a1 + 252), *(a1 + 260), *(a1 + 261), *(a1 + 262), *(a1 + 263), *(*(*(a1 + 144) + 8) + 24), a3 + 1, &a3[*(*(*(a1 + 144) + 8) + 24)]);
            *__error() = v66;
          }

          *(*(*(a1 + 176) + 8) + 24) = 0;
        }

        else
        {
          [v143 setFilledScheduling:1];
          if (v143)
          {
            *(v143 + 144) = *(a1 + 216);
            *(v143 + 136) = *(a1 + 224);
            *(v143 + 40) = *(a1 + 248);
          }

          [(SAThreadState *)v143 setBasePriority:?];
          [(SAThreadState *)v143 setScheduledPriority:?];
          v67 = *(a1 + 260);
          if (v67 != 125)
          {
            [(SAThreadState *)v143 setThreadQos:v67];
          }

          v68 = *(a1 + 261);
          if (v68 != 125)
          {
            [(SAThreadState *)v143 setThreadRequestedQos:v68];
          }

          v69 = *(a1 + 262);
          if (v69 != 125)
          {
            [(SAThreadState *)v143 setThreadRequestedQosOverride:v69];
          }

          v70 = *(a1 + 263);
          if (v70 != 125)
          {
            [(SAThreadState *)v143 setThreadQosPromote:v70];
          }

          v17 = 1;
          if (!a3 && qword_1EDD02FB0)
          {
            v71 = *__error();
            fprintf(qword_1EDD02FB0, "%'llu Thread 0x%llx sched info (cpu time %lld (%lld + %lld), state 0x%x, priority %d (%d), qos %d, rqos %d, qoso %d, qosp %d) backfilled to all (%d) thread states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "threadId"), *(a1 + 224) + *(a1 + 216), *(a1 + 216), *(a1 + 224), *(a1 + 248), *(a1 + 256), *(a1 + 252), *(a1 + 260), *(a1 + 261), *(a1 + 262), *(a1 + 263), *(*(*(a1 + 144) + 8) + 24) + 1, 0, *(*(*(a1 + 144) + 8) + 24));
            *__error() = v71;
            v17 = 1;
          }
        }
      }

      if (*(*(*(a1 + 184) + 8) + 24) == 1)
      {
        if ([v143 filledCyclesInstructions])
        {
          if (*(*(*(a1 + 144) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
          {
            v73 = *__error();
            fprintf(qword_1EDD02FB0, "%'llu Thread 0x%llx thread instructions (%llu) cycles (%llu) backfilled to %d thread states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "threadId"), *(a1 + 232), *(a1 + 240), *(*(*(a1 + 144) + 8) + 24), a3 + 1, &a3[*(*(*(a1 + 144) + 8) + 24)]);
            *__error() = v73;
          }

          *(*(*(a1 + 184) + 8) + 24) = 0;
        }

        else
        {
          [v143 setFilledCyclesInstructions:1];
          if (v143)
          {
            *(v143 + 152) = *(a1 + 232);
            *(v143 + 160) = *(a1 + 240);
          }

          v17 = 1;
          if (!a3 && qword_1EDD02FB0)
          {
            v74 = *__error();
            fprintf(qword_1EDD02FB0, "%'llu Thread 0x%llx thread instructions (%llu) cycles (%llu) backfilled to all (%d) thread states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "threadId"), *(a1 + 232), *(a1 + 240), *(*(*(a1 + 144) + 8) + 24) + 1, 0, *(*(*(a1 + 144) + 8) + 24));
            *__error() = v74;
            v17 = 1;
          }
        }
      }

      if (*(*(*(a1 + 192) + 8) + 24) == 1)
      {
        if ([v143 filledSnapshot])
        {
          if (*(*(*(a1 + 144) + 8) + 24) >= 1 && qword_1EDD02FB0)
          {
            v140 = a4;
            v132 = *__error();
            v137 = qword_1EDD02FB0;
            v134 = [*(a1 + 32) machAbsTime];
            v131 = [*(a1 + 40) threadId];
            v75 = *(a1 + 264);
            v76 = *(a1 + 265);
            v77 = *(a1 + 266);
            v78 = *(a1 + 267);
            v79 = *(a1 + 268);
            v80 = *(a1 + 269);
            v81 = [*(a1 + 120) debugDescription];
            fprintf(v137, "%'llu Thread 0x%llx snapshot info (io tier %d, passive %d, suspended %d, darwinbg %d, idlewq %d, gfi %d, runnable %s) backfilled to %d thread states (indexes %lu-%lu)\n", v134, v131, v75, v76, v77, v78, v79, v80, [v81 UTF8String], *(*(*(a1 + 144) + 8) + 24), a3 + 1, &a3[*(*(*(a1 + 144) + 8) + 24)]);

            *__error() = v132;
            a4 = v140;
          }

          *(*(*(a1 + 192) + 8) + 24) = 0;
        }

        else
        {
          [v143 setFilledSnapshot:1];
          if (v143)
          {
            *(v143 + 24) = *(a1 + 264);
            if (*(a1 + 265))
            {
              v83 = 0x80;
            }

            else
            {
              v83 = 0;
            }

            v84 = v83 & 0x80 | *(v143 + 11) & 0x7F;
            *(v143 + 11) = v84;
            if (*(a1 + 266))
            {
              v85 = 64;
            }

            else
            {
              v85 = 0;
            }

            *(v143 + 11) = v85 | v84 & 0xBF;
            if (*(a1 + 267))
            {
              v86 = 64;
            }

            else
            {
              v86 = 0;
            }

            v87 = *(v143 + 15) & 0xBF | v86;
            *(v143 + 15) = v87;
            if (*(a1 + 268))
            {
              v88 = 0x80;
            }

            else
            {
              v88 = 0;
            }

            *(v143 + 15) = v88 & 0x80 | v87 & 0x7F;
          }

          if (*(a1 + 269) == 1)
          {
            v89 = *(a1 + 40);
            if (v89)
            {
              *(v89 + 16) = 1;
            }
          }

          if (v143)
          {
            v90 = *(a1 + 120);
            if (v90)
            {
              objc_setProperty_atomic(v143, v82, v90, 176);
            }
          }

          v17 = 1;
          if (!a3 && qword_1EDD02FB0)
          {
            v141 = a4;
            v133 = *__error();
            v138 = qword_1EDD02FB0;
            v135 = [*(a1 + 32) machAbsTime];
            v91 = [*(a1 + 40) threadId];
            v92 = *(a1 + 264);
            v93 = *(a1 + 265);
            v94 = *(a1 + 266);
            v95 = *(a1 + 267);
            v96 = *(a1 + 268);
            v97 = *(a1 + 269);
            v98 = [*(a1 + 120) debugDescription];
            fprintf(v138, "%'llu Thread 0x%llx snapshot info (io tier %d, passive %d, suspended %d, darwinbg %d, idlewq %d, gfi %d, runnable %s) backfilled to all (%d) thread states (indexes %lu-%lu)\n", v135, v91, v92, v93, v94, v95, v96, v97, [v98 UTF8String], *(*(*(a1 + 144) + 8) + 24) + 1, 0, *(*(*(a1 + 144) + 8) + 24));

            *__error() = v133;
            v17 = 1;
            a4 = v141;
          }
        }
      }

      if (*(*(*(a1 + 200) + 8) + 24) == 1)
      {
        if ([v143 needsExclave])
        {
          [v143 setNeedsExclave:0];
          if (v143)
          {
            objc_setProperty_atomic(v143, v99, *(a1 + 128), 184);
          }

          if (!a3 && qword_1EDD02FB0)
          {
            v100 = *__error();
            v101 = qword_1EDD02FB0;
            v102 = [*(a1 + 32) machAbsTime];
            v104 = [*(a1 + 40) threadId];
            Property = *(a1 + 128);
            if (Property)
            {
              Property = objc_getProperty(Property, v103, 16, 1);
            }

            v106 = Property;
            v108 = [v106 count];
            v109 = *(a1 + 128);
            if (v109)
            {
              v109 = objc_getProperty(v109, v107, 16, 1);
            }

            v110 = v109;
            v111 = [v110 lastObject];
            v113 = v111;
            if (v111)
            {
              v114 = objc_getProperty(v111, v112, 16, 1);
            }

            else
            {
              v114 = 0;
            }

            v115 = v114;
            fprintf(v101, "%'llu Thread 0x%llx exclave info (%lu exclaves, leaf frame 0x%llx) backfilled to all (%d) thread states (indexes %lu-%lu)\n", v102, v104, v108, [v115 address], *(*(*(a1 + 144) + 8) + 24) + 1, 0, *(*(*(a1 + 144) + 8) + 24));

            *__error() = v100;
          }

          goto LABEL_171;
        }

        if (*(*(*(a1 + 144) + 8) + 24) >= 1 && qword_1EDD02FB0)
        {
          v116 = *__error();
          v117 = qword_1EDD02FB0;
          v118 = [*(a1 + 32) machAbsTime];
          v120 = [*(a1 + 40) threadId];
          v121 = *(a1 + 128);
          if (v121)
          {
            v121 = objc_getProperty(v121, v119, 16, 1);
          }

          v139 = v121;
          v123 = [v139 count];
          v124 = *(a1 + 128);
          v142 = a4;
          if (v124)
          {
            v124 = objc_getProperty(v124, v122, 16, 1);
          }

          v125 = v124;
          v126 = [v125 lastObject];
          v128 = v126;
          v136 = v116;
          if (v126)
          {
            v129 = objc_getProperty(v126, v127, 16, 1);
          }

          else
          {
            v129 = 0;
          }

          v130 = v129;
          fprintf(v117, "%'llu Thread 0x%llx exclave info (%lu exclaves, leaf frame 0x%llx) backfilled to %d thread states (indexes %lu-%lu)\n", v118, v120, v123, [v130 address], *(*(*(a1 + 144) + 8) + 24), a3 + 1, &a3[*(*(*(a1 + 144) + 8) + 24)]);

          a4 = v142;
          *__error() = v136;
        }

        *(*(*(a1 + 200) + 8) + 24) = 0;
      }

      if ((v17 & 1) == 0)
      {
        *a4 = 1;
LABEL_175:

        return;
      }

LABEL_171:
      if ([*(a1 + 88) dataStyle] != 3)
      {
        *(*(*(a1 + 136) + 8) + 24) = 0;
        *(*(*(a1 + 176) + 8) + 24) = 0;
        *(*(*(a1 + 184) + 8) + 24) = 0;
        *(*(*(a1 + 192) + 8) + 24) = 0;
      }

      ++*(*(*(a1 + 144) + 8) + 24);
      goto LABEL_175;
    }

    if ([v143 filledUserStack])
    {
      if (*(*(*(a1 + 144) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
      {
        v41 = *__error();
        fprintf(qword_1EDD02FB0, "%'llu Thread 0x%llx user stack (leaf frame 0x%llx, swift async leaf 0x%llx) backfilled to %d thread states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "threadId"), objc_msgSend(*(a1 + 72), "address"), objc_msgSend(*(a1 + 80), "address"), *(*(*(a1 + 144) + 8) + 24), a3 + 1, &a3[*(*(*(a1 + 144) + 8) + 24)]);
        *__error() = v41;
      }

      *(*(*(a1 + 160) + 8) + 24) = 0;
      v42 = *(*(a1 + 168) + 8);
      if (*(v42 + 24) == 1 && *(a1 + 208) == -1)
      {
        *(v42 + 24) = 0;
      }

      goto LABEL_65;
    }

    [v143 setFilledUserStack:1];
    if (v143)
    {
      objc_setProperty_atomic(v143, v43, *(a1 + 72), 64);
      v44 = (a1 + 80);
      objc_setProperty_atomic(v143, v45, *(a1 + 80), 72);
      if (!a3)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v44 = (a1 + 80);
      if (!a3)
      {
LABEL_54:
        if (qword_1EDD02FB0)
        {
          v46 = *__error();
          fprintf(qword_1EDD02FB0, "%'llu Thread 0x%llx user stack (leaf frame 0x%llx, swift async leaf 0x%llx) backfilled to all (%d) thread states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "threadId"), objc_msgSend(*(a1 + 72), "address"), objc_msgSend(*v44, "address"), *(*(*(a1 + 144) + 8) + 24) + 1, 0, *(*(*(a1 + 144) + 8) + 24));
          *__error() = v46;
        }
      }
    }

    v47 = [*(a1 + 88) kperfTriggers];
    if ([v47 count])
    {
    }

    else
    {
      v48 = [v143 leafKernelFrame];

      if (!v48)
      {
        v49 = *(a1 + 88);
        v50 = [v49 numSamples];
        if (v49)
        {
          v49[4] = v50 + 1;
        }

        v51 = [*(a1 + 88) startTime];

        if (!v51)
        {
          [(SAFrame *)*(a1 + 88) setChildFrameOrFrames:?];
        }

        [(SASampleStore *)*(a1 + 88) setEndTime:?];
      }
    }

    v17 = 1;
    goto LABEL_65;
  }

  if (qword_1EDD02FB0)
  {
    v18 = *__error();
    fprintf(qword_1EDD02FB0, "%'llu Thread 0x%llx ran into non-kperf state at index %lu, stopping\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "threadId"), a3);
    *__error() = v18;
  }

  *a4 = 1;
}

void __593__SASampleStore_KPerfPrivate__backfillTask_lastSampleIndex_timestamp_haveSnap_terminatedThreadsUserTimeInNs_terminatedThreadsSystemTimeInNs_terminatedThreadsCycles_terminatedThreadsInstructions_suspendCount_pageins_isDarwinBG_isForeground_isBoosted_isDirty_isRunningBoardActive_hasRunningBoardAssertion_haveWQFlags_wqExceededTotalThreadLimit_wqExceededConstrainedThreadLimit_haveCoopAndActiveConstrWQFlags_wqExceededCooperativeThreadLimit_wqExceededActiveConstrainedThreadLimit_haveMem_taskSizeInBytes_haveLatencyQos_latencyQos_haveRunawayMitigated_isRunawayMitigated_effectiveJetsamPriority___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = a2;
    v9 = *(*(a1 + 56) + 8);
    v56 = v8;
    if (*(v9 + 24) != 1)
    {
      v18 = 0;
      goto LABEL_65;
    }

    if (v8)
    {
      if (v8[136])
      {
        if (*(*(*(a1 + 64) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
        {
          v11 = *__error();
          v12 = qword_1EDD02FB0;
          v13 = [*(a1 + 32) machAbsTime];
          v14 = [*(a1 + 40) pid];
          if (*(a1 + 164) == 1)
          {
            v15 = *(a1 + 165);
            v16 = *(a1 + 166);
          }

          else
          {
            v15 = 0;
            v16 = 0;
          }

          if (*(a1 + 167) == 1)
          {
            v36 = *(a1 + 168);
            v37 = *(a1 + 169);
          }

          else
          {
            v36 = 0;
            v37 = 0;
          }

          fprintf(v12, "%'llu task [%d] state (terminated cpu %llu, terminated instruction %llu, terminated cycles %llu, suspend count %d, pageins %u, darwinBG %d, foreground %d, boosted %d, dirty %d, isRunningBoardActive %d, hasRunningBoardAssertion %d, wq total %d, wq constrained %d wq cooperative %d wq active constrained %d) backfilled to %d task states (indexes %lu-%lu)\n", v13, v14, *(a1 + 112) + *(a1 + 104), *(a1 + 128), *(a1 + 120), *(a1 + 144), *(a1 + 148), *(a1 + 160), *(a1 + 161), *(a1 + 162), *(a1 + 163), *(a1 + 170), *(a1 + 171), v15, v16, v36, v37, *(*(*(a1 + 64) + 8) + 24), a3 + 1, *(*(*(a1 + 64) + 8) + 24) + a3);
          *__error() = v11;
          v9 = *(*(a1 + 56) + 8);
        }

        v18 = 0;
        *(v9 + 24) = 0;
        goto LABEL_65;
      }

      v8[136] = 1;
      *(v8 + 11) = *(a1 + 104);
      *(v8 + 12) = *(a1 + 112);
      *(v8 + 14) = *(a1 + 120);
      *(v8 + 13) = *(a1 + 128);
      *(v8 + 2) = *(a1 + 144);
      *(v8 + 4) = *(a1 + 148);
    }

    if (*(a1 + 160) == 1)
    {
      v19 = [v8 ssFlags];
      if (v56)
      {
        v56[16] = v19 | 0x40;
      }
    }

    if (*(a1 + 161) == 1)
    {
      v20 = [v56 ssFlags];
      if (v56)
      {
        v56[16] = v20 | 0x400;
      }
    }

    if (*(a1 + 162) == 1)
    {
      v21 = [v56 ssFlags];
      if (v56)
      {
        v56[16] = v21 | 0x800;
      }
    }

    if (*(a1 + 163) == 1)
    {
      v22 = [v56 ssFlags];
      if (v56)
      {
        v56[16] = v22 | 0x10000;
      }
    }

    if (*(a1 + 164) == 1)
    {
      v23 = [v56 ssFlags];
      if (v56)
      {
        v56[16] = v23 | 0x80000;
      }

      if (*(a1 + 165) == 1)
      {
        v24 = [v56 ssFlags];
        if (v56)
        {
          v56[16] = v24 | 0x40000;
        }
      }

      if (*(a1 + 166) == 1)
      {
        v25 = [v56 ssFlags];
        if (v56)
        {
          v56[16] = v25 | 0x20000;
        }
      }
    }

    if (*(a1 + 167) == 1)
    {
      if (*(a1 + 168) == 1)
      {
        v26 = [v56 ssFlags];
        if (v56)
        {
          v56[16] = v26 | 0x2000000000;
        }
      }

      if (*(a1 + 169) == 1)
      {
        v27 = [v56 ssFlags];
        if (v56)
        {
          v56[16] = v27 | 0x4000000000;
        }
      }
    }

    if (*(a1 + 170) == 1)
    {
      v28 = [v56 ssFlags];
      if (v56)
      {
        v56[16] = v28 | 0x10000000000;
      }
    }

    if (*(a1 + 171) == 1)
    {
      v29 = [v56 ssFlags];
      if (v56)
      {
        v56[16] = v29 | 0x40000000000;
      }
    }

    v18 = 1;
    if (!a3 && qword_1EDD02FB0)
    {
      v30 = *__error();
      v31 = qword_1EDD02FB0;
      v32 = [*(a1 + 32) machAbsTime];
      v33 = [*(a1 + 40) pid];
      if (*(a1 + 164) == 1)
      {
        v34 = *(a1 + 165);
        v35 = *(a1 + 166);
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      if (*(a1 + 167) == 1)
      {
        v38 = *(a1 + 168);
        v39 = *(a1 + 169);
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }

      fprintf(v31, "%'llu task [%d] state (terminated cpu %llu, terminated instruction %llu, terminated cycles %llu, suspend count %d, pageins %u, darwinBG %d, foreground %d, boosted %d, dirty %d, isRunningBoardActive %d, hasRunningBoardAssertion %d, wq total %d, wq constrained %d wq cooperative %d wq active constrained %d) backfilled to all (%d) task states (indexes %lu-%lu)\n", v32, v33, *(a1 + 112) + *(a1 + 104), *(a1 + 128), *(a1 + 120), *(a1 + 144), *(a1 + 148), *(a1 + 160), *(a1 + 161), *(a1 + 162), *(a1 + 163), *(a1 + 170), *(a1 + 171), v34, v35, v38, v39, *(*(*(a1 + 64) + 8) + 24) + 1, 0, *(*(*(a1 + 64) + 8) + 24));
      *__error() = v30;
      v18 = 1;
    }

LABEL_65:
    v40 = *(*(a1 + 72) + 8);
    if (*(v40 + 24) != 1)
    {
      goto LABEL_78;
    }

    if (v56)
    {
      if (*(v56 + 137))
      {
        if (*(*(*(a1 + 64) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
        {
          v42 = *__error();
          fprintf(qword_1EDD02FB0, "%'llu task [%d] size %llu backfilled to %d task states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "pid"), *(a1 + 136), *(*(*(a1 + 64) + 8) + 24), a3 + 1, *(*(*(a1 + 64) + 8) + 24) + a3);
          *__error() = v42;
          v40 = *(*(a1 + 72) + 8);
        }

        *(v40 + 24) = 0;
        goto LABEL_78;
      }

      *(v56 + 137) = 1;
      v56[10] = *(a1 + 136);
    }

    v18 = 1;
    if (!a3 && qword_1EDD02FB0)
    {
      v43 = *__error();
      fprintf(qword_1EDD02FB0, "%'llu task [%d] size %llu backfilled to all (%d) task states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "pid"), *(a1 + 136), *(*(*(a1 + 64) + 8) + 24) + 1, 0, *(*(*(a1 + 64) + 8) + 24));
      *__error() = v43;
      v18 = 1;
    }

LABEL_78:
    v44 = *(*(a1 + 80) + 8);
    if (*(v44 + 24) != 1)
    {
      goto LABEL_91;
    }

    if (v56)
    {
      if (*(v56 + 138))
      {
        if (*(*(*(a1 + 64) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
        {
          v46 = *__error();
          fprintf(qword_1EDD02FB0, "%'llu task [%d] latency qos %d backfilled to %d task states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "pid"), *(a1 + 152), *(*(*(a1 + 64) + 8) + 24), a3 + 1, *(*(*(a1 + 64) + 8) + 24) + a3);
          *__error() = v46;
          v44 = *(*(a1 + 80) + 8);
        }

        *(v44 + 24) = 0;
        goto LABEL_91;
      }

      *(v56 + 138) = 1;
      *(v56 + 6) = *(a1 + 152);
    }

    v18 = 1;
    if (!a3 && qword_1EDD02FB0)
    {
      v47 = *__error();
      fprintf(qword_1EDD02FB0, "%'llu task [%d] latency qos %d backfilled to all (%d) task states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "pid"), *(a1 + 152), *(*(*(a1 + 64) + 8) + 24) + 1, 0, *(*(*(a1 + 64) + 8) + 24));
      *__error() = v47;
      v18 = 1;
    }

LABEL_91:
    v48 = *(*(a1 + 88) + 8);
    if (*(v48 + 24) != 1)
    {
      goto LABEL_109;
    }

    if (v56)
    {
      if (*(v56 + 139))
      {
        if (*(*(*(a1 + 64) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
        {
          v50 = *__error();
          fprintf(qword_1EDD02FB0, "%'llu task [%d] runaway mitigated %d backfilled to %d task states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "pid"), *(a1 + 172), *(*(*(a1 + 64) + 8) + 24), a3 + 1, *(*(*(a1 + 64) + 8) + 24) + a3);
          *__error() = v50;
          v48 = *(*(a1 + 88) + 8);
        }

        *(v48 + 24) = 0;
        goto LABEL_109;
      }

      *(v56 + 139) = 1;
    }

    if (*(a1 + 172) == 1)
    {
      v51 = [v56 ssFlags] | 0x8000000000;
    }

    else
    {
      v51 = [v56 ssFlags] & 0xFFFFFF7FFFFFFFFFLL;
    }

    if (v56)
    {
      v56[16] = v51;
    }

    v18 = 1;
    if (!a3 && qword_1EDD02FB0)
    {
      v52 = *__error();
      fprintf(qword_1EDD02FB0, "%'llu task [%d] runaway mitigated %d backfilled to all (%d) task states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "pid"), *(a1 + 172), *(*(*(a1 + 64) + 8) + 24) + 1, 0, *(*(*(a1 + 64) + 8) + 24));
      *__error() = v52;
      v18 = 1;
    }

LABEL_109:
    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      if ([v56 effectiveJetsamPriority] == 0x80000000)
      {
        if (v56)
        {
          *(v56 + 8) = *(a1 + 156);
        }

        if (!a3 && qword_1EDD02FB0)
        {
          v53 = *__error();
          fprintf(qword_1EDD02FB0, "%'llu task [%d] effective jetsam priority %d backfilled to all (%d) task states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "pid"), *(a1 + 156), *(*(*(a1 + 64) + 8) + 24) + 1, 0, *(*(*(a1 + 64) + 8) + 24));
          *__error() = v53;
        }

LABEL_123:
        if ([*(a1 + 48) dataStyle] == 3)
        {
          ++*(*(*(a1 + 64) + 8) + 24);
LABEL_126:

          return;
        }

LABEL_125:
        *a4 = 1;
        goto LABEL_126;
      }

      if (*(*(*(a1 + 64) + 8) + 24) >= 1 && qword_1EDD02FB0 != 0)
      {
        v55 = *__error();
        fprintf(qword_1EDD02FB0, "%'llu task [%d] effective jetsam priority %d backfilled to %d task states (indexes %lu-%lu)\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "pid"), *(a1 + 156), *(*(*(a1 + 64) + 8) + 24), a3 + 1, *(*(*(a1 + 64) + 8) + 24) + a3);
        *__error() = v55;
      }

      *(*(*(a1 + 96) + 8) + 24) = 0;
    }

    if (!v18)
    {
      goto LABEL_125;
    }

    goto LABEL_123;
  }

  if (qword_1EDD02FB0)
  {
    v17 = *__error();
    fprintf(qword_1EDD02FB0, "%'llu task [%d] ran into non-kperf state at index %lu, stopping\n", [*(a1 + 32) machAbsTime], objc_msgSend(*(a1 + 40), "pid"), a3);
    *__error() = v17;
  }

  *a4 = 1;
}

- (id)binaryFormat
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [[PASampleTimeSeriesDataStore alloc] initWithSampleStore:self];
  v29 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v29];
  v4 = v29;
  if (![v3 length])
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v26 = [v4 description];
      v27 = [v26 UTF8String];
      *buf = 136315138;
      v31 = v27;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "Unable to archive samples for binary format: %s", buf, 0xCu);
    }

    *__error() = v14;
    goto LABEL_13;
  }

  v5 = [v3 length];
  v6 = [v3 bytes];
  if (!v6)
  {
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "Unable to get bytes for binary format", buf, 2u);
    }

    *__error() = v16;
LABEL_13:

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = compressBound(v5);
  v28 = v8;
  v9 = malloc_type_malloc(v8 + 8, 0x100004000313F17uLL);
  v10 = compress(v9 + 8, &v28, v7, v5);

  v11 = *__error();
  v12 = _sa_logt();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v31 = v5;
      v32 = 2048;
      v33 = v8;
      v34 = 1024;
      LODWORD(v35) = v10;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "Unable to compress binary format of size %lu to estimated compressed size %lu: %d", buf, 0x1Cu);
    }

    *__error() = v11;
    free(v9);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v31 = v5;
    v32 = 2048;
    v33 = v28;
    v34 = 2048;
    v35 = (v5 - v28) * 100.0 / v5;
    _os_log_debug_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_DEBUG, "Compressed %lu binary data into %lu (%.0f%% savings)", buf, 0x20u);
  }

  *__error() = v11;
  *v9 = v5;
  v28 += 8;
  v21 = objc_alloc(MEMORY[0x1E695DF88]);
  v22 = [v21 initWithBytesNoCopy:v9 length:v28 freeWhenDone:1];
  v18 = v22;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "Unable to create NSData for compressed binary format", buf, 2u);
    }

    *__error() = v24;
    free(v9);
  }

LABEL_15:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BOOL)saveBinaryFormatToStream:(__sFILE *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(SASampleStore *)self binaryFormat];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 base64EncodedDataWithOptions:34];

    if (v6)
    {
      v7 = [v6 length];
      v8 = [v6 bytes];
      LOBYTE(v5) = 1;
      fwrite("Spindump binary format\n", 0x17uLL, 1uLL, a3);
      if (fwrite(v8, v7, 1uLL, a3) == 1)
      {
LABEL_8:

        goto LABEL_9;
      }

      v9 = *__error();
      v5 = _sa_logt();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v15[0] = 67109120;
        v15[1] = ferror(a3);
        v10 = "Unable to save binary format: %d";
        v11 = v5;
        v12 = 8;
LABEL_11:
        _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, v10, v15, v12);
      }
    }

    else
    {
      v9 = *__error();
      v5 = _sa_logt();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15[0]) = 0;
        v10 = "Unable to get bytes for binary format";
        v11 = v5;
        v12 = 2;
        goto LABEL_11;
      }
    }

    LOBYTE(v5) = 0;
    *__error() = v9;
    goto LABEL_8;
  }

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)sampleStoreForSpindumpFile:(const char *)a3
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_18;
  }

  v5 = open(a3, 0);
  if (v5 == -1)
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      v17 = 0;
      *__error() = v15;
      goto LABEL_19;
    }

    v25 = *__error();
    v62.st_dev = 136315394;
    *&v62.st_mode = a3;
    WORD2(v62.st_ino) = 1024;
    *(&v62.st_ino + 6) = v25;
    v26 = "Unable to open %s: %{errno}d";
    v27 = &v62;
    v28 = v16;
    v29 = 18;
LABEL_29:
    _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, v26, v27, v29);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = fdopen(v5, "r");
  if (!v7)
  {
    v18 = *__error();
    v19 = _sa_logt();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = *__error();
      v62.st_dev = 136315394;
      *&v62.st_mode = a3;
      WORD2(v62.st_ino) = 1024;
      *(&v62.st_ino + 6) = v30;
      _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "Unable to fopen %s: %{errno}d", &v62, 0x12u);
    }

    *__error() = v18;
    close(v6);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = malloc_type_malloc(0x800uLL, 0x3D56DEDFuLL);
  do
  {
    if (!fgets(v9, 2048, v8))
    {
      free(v9);
      v11 = *__error();
      v12 = _sa_logt();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      v62.st_dev = 136315138;
      *&v62.st_mode = a3;
      v24 = &v62;
LABEL_53:
      _os_log_debug_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_DEBUG, "Input file %s does not contain a binary format for spindump", v24, 0xCu);
      goto LABEL_17;
    }
  }

  while (strncmp("Spindump binary format", v9, 0x16uLL));
  free(v9);
  v10 = MEMORY[0x1E12EB5F0](v8);
  memset(&v62, 0, sizeof(v62));
  if (fstat(v6, &v62))
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *__error();
      v60 = 136315394;
      *v61 = a3;
      *&v61[8] = 1024;
      *&v61[10] = v13;
      v14 = "Unable to fstat %s: %{errno}d";
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (v62.st_size <= v10)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v60 = 136315138;
    *v61 = a3;
    v24 = &v60;
    goto LABEL_53;
  }

  v22 = mmap(0, v62.st_size, 1, 1, v6, 0);
  if ((v22 + 1) <= 1)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = *__error();
      v60 = 136315394;
      *v61 = a3;
      *&v61[8] = 1024;
      *&v61[10] = v23;
      v14 = "Unable to mmap %s: %{errno}d";
LABEL_10:
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, v14, &v60, 0x12u);
    }

LABEL_17:

    *__error() = v11;
    fclose(v8);
LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  v31 = v22;
  fclose(v8);
  st_size = v62.st_size;
  if (v10 >= v62.st_size)
  {
    v35 = v10;
    goto LABEL_62;
  }

  v33 = 0;
  v34 = 0;
  v35 = v10;
  v36 = v10;
  while (2)
  {
    v37 = v36 - v35;
    if (v34 && v37 > v34)
    {
      v40 = *__error();
      v41 = _sa_logt();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_60;
      }

      v60 = 134217984;
      *v61 = v36;
      v42 = "Found bad line length at %lld, ending scan";
      v43 = v41;
      v44 = 12;
      goto LABEL_59;
    }

    v38 = v31[v36];
    if ((v33 & 1) == 0)
    {
      if (((v38 & 0xDF) - 65) < 0x1Au || (v38 != 43 ? (v39 = (v38 - 47) >= 0xBu) : (v39 = 0), !v39))
      {
LABEL_49:
        v33 = 0;
LABEL_50:
        if (v62.st_size == ++v36)
        {
          goto LABEL_62;
        }

        continue;
      }
    }

    break;
  }

  if (v38 == 61)
  {
    v33 = 1;
    goto LABEL_50;
  }

  if (v31[v36] == 10)
  {
    if (v34)
    {
      if (v37 != v34)
      {
        st_size = v36 + 1;
        goto LABEL_62;
      }
    }

    else
    {
      v34 = v36 - v35;
    }

    v35 = v36 + 1;
    if (v33)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  v40 = *__error();
  v41 = _sa_logt();
  if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_60;
  }

  v60 = 67109376;
  *v61 = v38;
  *&v61[4] = 2048;
  *&v61[6] = v36;
  v42 = "Found invalid base64 character '%c' at %lld, ending scan";
  v43 = v41;
  v44 = 18;
LABEL_59:
  _os_log_debug_impl(&dword_1E0E2F000, v43, OS_LOG_TYPE_DEBUG, v42, &v60, v44);
LABEL_60:

  *__error() = v40;
LABEL_61:
  st_size = v35;
LABEL_62:
  v45 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&v31[v10] length:st_size - v10 freeWhenDone:0];
  if (!v45)
  {
    v49 = *__error();
    v50 = _sa_logt();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v60) = 0;
LABEL_84:
      _os_log_error_impl(&dword_1E0E2F000, v50, OS_LOG_TYPE_ERROR, "Unable to create NSData for base64 binary format", &v60, 2u);
    }

LABEL_66:

    *__error() = v49;
    munmap(v31, v62.st_size);
    goto LABEL_18;
  }

  v46 = v45;
  v47 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:v45 options:1];
  if (v47)
  {
    v48 = v47;
    goto LABEL_73;
  }

  v51 = st_size <= v35;
  v52 = st_size - v35;
  if (!v51)
  {
    v53 = malloc_type_calloc(v52 + 1, 1uLL, 0xFAF89334uLL);
    memmove(v53, &v31[v35], v52);
    v54 = *__error();
    v55 = _sa_logt();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      v60 = 136315138;
      *v61 = v53;
      _os_log_debug_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_DEBUG, "Possible extra text at end of base-64 encoded data, ignoring last line %s", &v60, 0xCu);
    }

    *__error() = v54;
    free(v53);
    v56 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&v31[v10] length:v35 - v10 freeWhenDone:0];

    if (v56)
    {
      v48 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:v56 options:1];
      v46 = v56;
      goto LABEL_73;
    }

    v49 = *__error();
    v50 = _sa_logt();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v60) = 0;
      goto LABEL_84;
    }

    goto LABEL_66;
  }

  v48 = 0;
LABEL_73:

  if (munmap(v31, v62.st_size))
  {
    v57 = *__error();
    v58 = _sa_logt();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = *__error();
      v60 = 67109120;
      *v61 = v59;
      _os_log_error_impl(&dword_1E0E2F000, v58, OS_LOG_TYPE_ERROR, "Unable to unmap file: %{errno}d", &v60, 8u);
    }

    *__error() = v57;
  }

  if (!v48)
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v60) = 0;
    v26 = "Unable to decode base64 binary format";
    v27 = &v60;
    v28 = v16;
    v29 = 2;
    goto LABEL_29;
  }

  v17 = [a1 sampleStoreForBinaryFormat:v48];

LABEL_19:
  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)sampleStoreForBinaryFormat:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v16 = "Nil data";
    v17 = v15;
    v18 = 2;
LABEL_14:
    _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_15;
  }

  v4 = [a3 length];
  v5 = [a3 bytes];
  v7 = (v5 + 1);
  v6 = *v5;
  if (*v5 == -1)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 134217984;
    v40 = -1;
    v16 = "Bad uncompressed size %llu";
    v17 = v15;
    v18 = 12;
    goto LABEL_14;
  }

  v8 = malloc_type_malloc(*v5, 0x9F0FC101uLL);
  if (!v8)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = *__error();
      *buf = 67109120;
      LODWORD(v40) = v19;
      v16 = "Unable to allocate buffer for binary format: %{errno}d";
      v17 = v15;
      v18 = 8;
      goto LABEL_14;
    }

LABEL_15:

    v20 = 0;
    *__error() = v14;
    goto LABEL_25;
  }

  v9 = v8;
  destLen = v6;
  v10 = uncompress(v8, &destLen, v7, v4 - 8);
  if (v10)
  {
    v11 = v10;
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v40) = v11;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "Unable to decompress binary format: %d", buf, 8u);
    }

LABEL_24:
    *__error() = v12;
    free(v9);
    v20 = 0;
    goto LABEL_25;
  }

  if (v6 != destLen)
  {
    v12 = *__error();
    v26 = _sa_logt();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v40 = destLen;
      v41 = 2048;
      v42 = v6;
      _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "Unexpected uncompressed size %lu, expected %llu", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v21 = objc_alloc(MEMORY[0x1E695DEF0]);
  v22 = [v21 initWithBytesNoCopy:v9 length:destLen freeWhenDone:1];
  if (v22)
  {
    v37 = 0;
    v23 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v22 error:&v37];
    v24 = v37;
    v25 = v24;
    if (v23)
    {

      v25 = [v23 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
      [v23 finishDecoding];
      if (v25)
      {
        v20 = [v25 sampleStore];
        [v20 setDataGatheringOptions:628];
      }

      else
      {
        v33 = *__error();
        v34 = _sa_logt();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v34, OS_LOG_TYPE_ERROR, "Unable to unarchive binary format", buf, 2u);
        }

        v25 = 0;
        v20 = 0;
        *__error() = v33;
      }
    }

    else
    {
      v31 = *__error();
      v32 = _sa_logt();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v35 = [v25 description];
        v36 = [v35 UTF8String];
        *buf = 136315138;
        v40 = v36;
        _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "Unable to unarchive: %s", buf, 0xCu);
      }

      v20 = 0;
      *__error() = v31;
    }
  }

  else
  {
    v29 = *__error();
    v30 = _sa_logt();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "Unable to create NSData for binary format", buf, 2u);
    }

    *__error() = v29;
    free(v9);
    v20 = 0;
  }

LABEL_25:
  v27 = *MEMORY[0x1E69E9840];

  return v20;
}

@end