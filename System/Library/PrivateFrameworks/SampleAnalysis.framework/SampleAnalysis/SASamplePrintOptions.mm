@interface SASamplePrintOptions
- (BOOL)aggregateProcessesByExecutable;
- (BOOL)aggregateStacksByProcess;
- (BOOL)aggregateStacksByThread;
- (BOOL)orderTasksBySampleCount;
- (BOOL)verbose;
- (SASamplePrintOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (uint64_t)callTreeAggregationResolved;
- (void)setAggregateProcessesByExecutable:(BOOL)executable;
- (void)setAggregateStacksByProcess:(BOOL)process;
- (void)setAggregateStacksByThread:(BOOL)thread;
- (void)setDisplayAllHIDEvents:(BOOL)events;
- (void)setDisplayTimestampsInCallTrees:(BOOL)trees;
- (void)setMicrostackshotsFormat:(BOOL)format;
- (void)setOmitFramesBelowPercentOfStackSamples:(char)samples;
- (void)setOmitStacksBelowPercentOfTaskSamples:(char)samples;
- (void)setOmitTasksBelowPercentOfTotalSamples:(char)samples;
- (void)setOrderTasksBySampleCount:(BOOL)count;
- (void)setPrintTargetHIDEvent:(BOOL)event;
- (void)setSystemstatsFormat:(BOOL)format;
@end

@implementation SASamplePrintOptions

- (SASamplePrintOptions)init
{
  v9.receiver = self;
  v9.super_class = SASamplePrintOptions;
  v2 = [(SASamplePrintOptions *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 35) = 257;
    v2[37] = 1;
    *(v2 + 14) = 0;
    v2[18] = 0;
    *(v2 + 19) = 1;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(v3 + 17);
    *(v3 + 17) = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = *(v3 + 18);
    *(v3 + 18) = v6;

    *(v3 + 4) = 0;
    v3[10] = 0;
    *(v3 + 23) = 0;
    *(v3 + 24) = 0;
    *(v3 + 38) = 16843009;
    *(v3 + 42) = 0x1000000;
    v3[46] = 0;
    *(v3 + 47) = 16843009;
    v3[51] = 1;
    *(v3 + 26) = 256;
    v3[54] = 0;
    *(v3 + 57) = 16777217;
    v3[65] = 1;
    *(v3 + 66) = 0;
    v3[70] = 0;
    *(v3 + 71) = 65537;
    v3[75] = 1;
    *(v3 + 26) = 13;
    *(v3 + 16) = 0;
    *(v3 + 21) = 0;
    *(v3 + 22) = 0;
    *(v3 + 19) = 0;
    *(v3 + 20) = 0;
    *(v3 + 23) = 0x1000000;
    *(v3 + 11) = 0;
    *(v3 + 19) = 0;
    *(v3 + 20) = 0;
    *(v3 + 27) = 0;
    v3[13] = 1;
  }

  return v3;
}

- (uint64_t)callTreeAggregationResolved
{
  if (result)
  {
    v1 = result;
    result = *(result + 152);
    if (!result)
    {
      if (*(v1 + 11))
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)orderTasksBySampleCount
{
  firstObject = [(NSMutableArray *)self->_processSortAttributes firstObject];
  v3 = [firstObject unsignedLongLongValue] == 11;

  return v3;
}

- (void)setOrderTasksBySampleCount:(BOOL)count
{
  firstObject = [(NSMutableArray *)self->_processSortAttributes firstObject];
  unsignedLongLongValue = [firstObject unsignedLongLongValue];

  if (count)
  {
    if (unsignedLongLongValue != 11)
    {
      processSortAttributes = self->_processSortAttributes;

      [(NSMutableArray *)processSortAttributes insertObject:&unk_1F5BDCB50 atIndex:0];
    }
  }

  else if (unsignedLongLongValue == 11)
  {
    do
    {
      [(NSMutableArray *)self->_processSortAttributes removeObjectAtIndex:0];
      firstObject2 = [(NSMutableArray *)self->_processSortAttributes firstObject];
      unsignedLongLongValue2 = [firstObject2 unsignedLongLongValue];
    }

    while (unsignedLongLongValue2 == 11);
  }
}

- (void)setPrintTargetHIDEvent:(BOOL)event
{
  v3 = 4;
  if (!event)
  {
    v3 = 0;
  }

  self->_hidEventDisplayOptions = self->_hidEventDisplayOptions & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setDisplayAllHIDEvents:(BOOL)events
{
  hidEventDisplayOptions = self->_hidEventDisplayOptions;
  v4 = hidEventDisplayOptions & 0xFFFFFFFFFFFFFFE7 | 8;
  v5 = hidEventDisplayOptions | 0x10;
  if (!events)
  {
    v5 = v4;
  }

  self->_hidEventDisplayOptions = v5;
}

- (void)setDisplayTimestampsInCallTrees:(BOOL)trees
{
  if (!trees)
  {
    v3 = 0;
LABEL_6:
    self->_callTreeTimestampsTimeDomain = v3;
    return;
  }

  if (!self->_callTreeTimestampsTimeDomain)
  {
    v3 = 1;
    goto LABEL_6;
  }
}

- (BOOL)aggregateStacksByThread
{
  if (self)
  {
    callTreeAggregation = self->_callTreeAggregation;
    if (!callTreeAggregation)
    {
      callTreeAggregation = 3;
      if (!self->_microstackshotsFormat)
      {
        callTreeAggregation = 1;
      }
    }
  }

  else
  {
    callTreeAggregation = 0;
  }

  return callTreeAggregation == 2;
}

- (void)setAggregateStacksByThread:(BOOL)thread
{
  if (thread)
  {
    v3 = 2;
  }

  else
  {
    if (self->_callTreeAggregation != 2)
    {
      return;
    }

    v3 = 0;
  }

  self->_callTreeAggregation = v3;
}

- (BOOL)aggregateStacksByProcess
{
  if (self)
  {
    callTreeAggregation = self->_callTreeAggregation;
    if (!callTreeAggregation)
    {
      callTreeAggregation = 3;
      if (!self->_microstackshotsFormat)
      {
        callTreeAggregation = 1;
      }
    }
  }

  else
  {
    callTreeAggregation = 0;
  }

  return callTreeAggregation == 3;
}

- (void)setAggregateStacksByProcess:(BOOL)process
{
  if (process)
  {
    v3 = 3;
  }

  else
  {
    if (self->_callTreeAggregation != 3)
    {
      return;
    }

    v3 = 0;
  }

  self->_callTreeAggregation = v3;
}

- (BOOL)aggregateProcessesByExecutable
{
  if (self)
  {
    taskAggregation = self->_taskAggregation;
    if (!taskAggregation)
    {
      taskAggregation = 1;
      if (self->_microstackshotsFormat)
      {
        taskAggregation = 2;
      }
    }
  }

  else
  {
    taskAggregation = 0;
  }

  return taskAggregation == 2;
}

- (void)setAggregateProcessesByExecutable:(BOOL)executable
{
  v3 = 1;
  if (executable)
  {
    v3 = 2;
  }

  self->_taskAggregation = v3;
}

- (BOOL)verbose
{
  if (self->_displayKernelFrames && self->_displayExclaveFrames && self->_displayUserFrames && self->_displayFrameAddresses && self->_displayDetailedCpuTime && self->_displayDetailedWallTime && self->_displayOffsetsFromUnnamedSymbols && self->_displayFullSourcePaths && self->_displaySymbolInformation && self->_displayBinaryImageAddresses && self->_displayBinaryImagesLackingNameOrPath && self->_displayRunningThreads && self->_displayRunnableThreads && self->_displayBlockedThreads && self->_displayCPUNumForRunningThreads && self->_displayCPUClusterInfoForRunningThreads && self->_displayCPUNumForNonRunningThreads && self->_displayThreadRunningState && self->_displayIdleWorkQueueThreads && self->_displayAllBinaries && self->_displayBlockedReasons && self->_displayBlockedReasonsLackingProcessOwners && self->_displayAddressesInBlockedReasons && self->_displayMultipleMatchingBlockedReasons && self->_displayEmptyBootArgs && self->_displayTasksWithZeroCount && self->_displayCallTreesWithZeroCount && self->_displayDifferentTypesOfSuspension && self->_displayAllTaskSizeChanges && self->_displayCodesigningIDsMatchingBundleIDs && self->_displayDefaultPowerModes && self->_displayIOInCallTrees && self->_displayEachIndividualIOInCallTrees && self->_displayOnBehalfOfInCallTrees && self->_displayQoSTransitionsBetweenUnspecifiedAndUnavailable && self->_displayTrialInformation && self->_swiftAsyncDisplayCRootCallstacks && self->_callTreeTimestampsTimeDomain == -1 && (~LODWORD(self->_hidEventDisplayOptions) & 0x12) == 0)
  {
    return (self->_hidEventDisplayOptions >> 2) & 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDisplayHeader:self->_displayHeader];
  [v4 setDisplayBody:self->_displayBody];
  [v4 setDisplayFooter:self->_displayFooter];
  [v4 setTabDelineateBinaryImageSections:self->_tabDelineateBinaryImageSections];
  [v4 setBinaryImagesBeforeStacks:self->_binaryImagesBeforeStacks];
  [v4 setPrintSpinSignatureStack:self->_printSpinSignatureStack];
  [v4 setPrintTargetThreadOnly:self->_printTargetThreadOnly];
  [v4 setPrintHeavyStacks:self->_printHeavyStacks];
  [v4 setPrintJson:self->_printJson];
  [v4 setForceOneBasedTimeIndexes:self->_forceOneBasedTimeIndexes];
  [v4 setShowThreadStateAsLeafFrame:self->_showThreadStateAsLeafFrame];
  [v4 setPatchTruncatedStacks:self->_patchTruncatedStacks];
  processSortAttributes = [v4 processSortAttributes];
  [processSortAttributes addObjectsFromArray:self->_processSortAttributes];

  callTreeSortAttributes = [v4 callTreeSortAttributes];
  [callTreeSortAttributes addObjectsFromArray:self->_callTreeSortAttributes];

  [v4 setOmitTasksBelowPercentOfTotalSamples:self->_omitTasksBelowPercentOfTotalSamples];
  [v4 setOmitStacksBelowPercentOfTaskSamples:self->_omitStacksBelowPercentOfTaskSamples];
  [v4 setOmitFramesBelowPercentOfStackSamples:self->_omitFramesBelowPercentOfStackSamples];
  [v4 setOmitTasksBelowSampleCount:self->_omitTasksBelowSampleCount];
  [v4 setOmitStacksBelowSampleCount:self->_omitStacksBelowSampleCount];
  [v4 setOmitFramesBelowSampleCount:self->_omitFramesBelowSampleCount];
  [v4 setDisplayKernelFrames:self->_displayKernelFrames];
  [v4 setDisplayExclaveFrames:self->_displayExclaveFrames];
  [v4 setDisplayUserFrames:self->_displayUserFrames];
  [v4 setDisplayFrameAddresses:self->_displayFrameAddresses];
  [v4 setDisplayDetailedCpuTime:self->_displayDetailedCpuTime];
  [v4 setDisplayDetailedWallTime:self->_displayDetailedWallTime];
  [v4 setDisplayOffsetsFromUnnamedSymbols:self->_displayOffsetsFromUnnamedSymbols];
  [v4 setDisplayFullSourcePaths:self->_displayFullSourcePaths];
  [v4 setDisplaySymbolInformation:self->_displaySymbolInformation];
  [v4 setDisplayBinaryImageAddresses:self->_displayBinaryImageAddresses];
  [v4 setDisplayBinaryImagesLackingNameOrPath:self->_displayBinaryImagesLackingNameOrPath];
  [v4 setDisplayRunningThreads:self->_displayRunningThreads];
  [v4 setDisplayRunnableThreads:self->_displayRunnableThreads];
  [v4 setDisplayBlockedThreads:self->_displayBlockedThreads];
  [v4 setDisplayCPUNumForRunningThreads:self->_displayCPUNumForRunningThreads];
  [v4 setDisplayCPUClusterInfoForRunningThreads:self->_displayCPUClusterInfoForRunningThreads];
  [v4 setDisplayCPUNumForNonRunningThreads:self->_displayCPUNumForNonRunningThreads];
  [v4 setDisplayThreadRunningState:self->_displayThreadRunningState];
  [v4 setDisplayIdleWorkQueueThreads:self->_displayIdleWorkQueueThreads];
  [v4 setDisplayAllBinaries:self->_displayAllBinaries];
  [v4 setDisplayBlockedReasons:self->_displayBlockedReasons];
  [v4 setDisplayBlockedReasonsLackingProcessOwners:self->_displayBlockedReasonsLackingProcessOwners];
  [v4 setDisplayAddressesInBlockedReasons:self->_displayAddressesInBlockedReasons];
  [v4 setDisplayMultipleMatchingBlockedReasons:self->_displayMultipleMatchingBlockedReasons];
  [v4 setDisplayEmptyBootArgs:self->_displayEmptyBootArgs];
  [v4 setDisplayTasksWithZeroCount:self->_displayTasksWithZeroCount];
  [v4 setDisplayCallTreesWithZeroCount:self->_displayCallTreesWithZeroCount];
  [v4 setDisplayDifferentTypesOfSuspension:self->_displayDifferentTypesOfSuspension];
  [v4 setDisplayAllTaskSizeChanges:self->_displayAllTaskSizeChanges];
  [v4 setDisplayCodesigningIDsMatchingBundleIDs:self->_displayCodesigningIDsMatchingBundleIDs];
  [v4 setDisplayDefaultPowerModes:self->_displayDefaultPowerModes];
  [v4 setDisplayIOInCallTrees:self->_displayIOInCallTrees];
  [v4 setDisplayEachIndividualIOInCallTrees:self->_displayEachIndividualIOInCallTrees];
  [v4 setDisplayOnBehalfOfInCallTrees:self->_displayOnBehalfOfInCallTrees];
  [v4 setDisplayQoSTransitionsBetweenUnspecifiedAndUnavailable:self->_displayQoSTransitionsBetweenUnspecifiedAndUnavailable];
  [v4 setDisplayTrialInformation:self->_displayTrialInformation];
  [v4 setCallTreeTimestampsTimeDomain:self->_callTreeTimestampsTimeDomain];
  [v4 setHidEventDisplayOptions:self->_hidEventDisplayOptions];
  [v4 setCallTreeAggregation:self->_callTreeAggregation];
  [v4 setSwiftAsyncCallTreeAggregation:self->_swiftAsyncCallTreeAggregation];
  [v4 setTaskAggregation:self->_taskAggregation];
  [v4 setAggregateFramesByOffsetIntoBinary:self->_aggregateFramesByOffsetIntoBinary];
  [v4 setSwiftAsyncDisplayCRootCallstacks:self->_swiftAsyncDisplayCRootCallstacks];
  [v4 setSwiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways:self->_swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways];
  [v4 setSwiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways:self->_swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways];
  [v4 setMicrostackshotsFormat:self->_microstackshotsFormat];
  [v4 setSystemstatsFormat:self->_systemstatsFormat];
  [v4 setIncludeUserIdleAndBatteryStateInStacks:self->_includeUserIdleAndBatteryStateInStacks];
  [v4 setOmitStacksOnBattery:self->_omitStacksOnBattery];
  [v4 setOmitStacksOnAC:self->_omitStacksOnAC];
  [v4 setOmitStacksWithUserIdle:self->_omitStacksWithUserIdle];
  [v4 setOmitStacksWithUserActive:self->_omitStacksWithUserActive];
  [v4 setOmitStacksWithECore:self->_omitStacksWithECore];
  [v4 setOmitStacksWithPCore:self->_omitStacksWithPCore];
  [v4 setOmitStacksBelowBasePriority:self->_omitStacksBelowBasePriority];
  [v4 setOmitStacksAboveBasePriority:self->_omitStacksAboveBasePriority];
  [v4 setOmitAbsoluteWallTimes:self->_omitAbsoluteWallTimes];
  [v4 setPrintProblematicProcessesAndThreads:self->_printProblematicProcessesAndThreads];
  v7 = [(NSSet *)self->_tidsToPrint copy];
  [v4 setTidsToPrint:v7];

  v8 = [(NSSet *)self->_pidsToPrint copy];
  [v4 setPidsToPrint:v8];

  v9 = [(NSSet *)self->_uniquePidsToPrint copy];
  [v4 setUniquePidsToPrint:v9];

  v10 = [(NSSet *)self->_processUUIDsToPrint copy];
  [v4 setProcessUUIDsToPrint:v10];

  return v4;
}

- (void)setOmitTasksBelowPercentOfTotalSamples:(char)samples
{
  samplesCopy = samples;
  v15 = *MEMORY[0x1E69E9840];
  if (samples >= 0x65)
  {
    v5 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = samplesCopy;
      _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "omitTasksBelowPercentOfTotalSamples %d", buf, 8u);
    }

    *__error() = v5;
    _SASetCrashLogMessage(15502, "omitTasksBelowPercentOfTotalSamples %d", v7, v8, v9, v10, v11, v12, samplesCopy);
    _os_crash();
    __break(1u);
  }

  self->_omitTasksBelowPercentOfTotalSamples = samples;
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setOmitStacksBelowPercentOfTaskSamples:(char)samples
{
  samplesCopy = samples;
  v15 = *MEMORY[0x1E69E9840];
  if (samples >= 0x65)
  {
    v5 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = samplesCopy;
      _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "omitStacksBelowPercentOfTaskSamples %d", buf, 8u);
    }

    *__error() = v5;
    _SASetCrashLogMessage(15511, "omitStacksBelowPercentOfTaskSamples %d", v7, v8, v9, v10, v11, v12, samplesCopy);
    _os_crash();
    __break(1u);
  }

  self->_omitStacksBelowPercentOfTaskSamples = samples;
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setOmitFramesBelowPercentOfStackSamples:(char)samples
{
  samplesCopy = samples;
  v15 = *MEMORY[0x1E69E9840];
  if (samples >= 0x65)
  {
    v5 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = samplesCopy;
      _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "omitFramesBelowPercentOfStackSamples %d", buf, 8u);
    }

    *__error() = v5;
    _SASetCrashLogMessage(15520, "omitFramesBelowPercentOfStackSamples %d", v7, v8, v9, v10, v11, v12, samplesCopy);
    _os_crash();
    __break(1u);
  }

  self->_omitFramesBelowPercentOfStackSamples = samples;
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setMicrostackshotsFormat:(BOOL)format
{
  self->_microstackshotsFormat = format;
  if (format)
  {
    self->_aggregateFramesByOffsetIntoBinary = 1;
    self->_displayThreadRunningState = 0;
    self->_showThreadStateAsLeafFrame = 1;
    self->_printHeavyStacks = 1;
    self->_displayTrialInformation = 0;
  }
}

- (void)setSystemstatsFormat:(BOOL)format
{
  if (format)
  {
    [(SASamplePrintOptions *)self setMicrostackshotsFormat:1];
    self->_displayIOInCallTrees = 0;
    self->_displayOnBehalfOfInCallTrees = 0;
  }

  self->_systemstatsFormat = format;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  processUUIDsToPrint = self->_processUUIDsToPrint;
  uniquePidsToPrint = self->_uniquePidsToPrint;
  pidsToPrint = self->_pidsToPrint;
  tidsToPrint = self->_tidsToPrint;
  printProblematicProcessesAndThreads = self->_printProblematicProcessesAndThreads;
  omitAbsoluteWallTimes = self->_omitAbsoluteWallTimes;
  omitStacksAboveBasePriority = self->_omitStacksAboveBasePriority;
  omitStacksBelowBasePriority = self->_omitStacksBelowBasePriority;
  omitStacksWithPCore = self->_omitStacksWithPCore;
  omitStacksWithECore = self->_omitStacksWithECore;
  omitStacksWithUserActive = self->_omitStacksWithUserActive;
  omitStacksWithUserIdle = self->_omitStacksWithUserIdle;
  omitStacksOnAC = self->_omitStacksOnAC;
  omitStacksOnBattery = self->_omitStacksOnBattery;
  includeUserIdleAndBatteryStateInStacks = self->_includeUserIdleAndBatteryStateInStacks;
  microstackshotsFormat = self->_microstackshotsFormat;
  systemstatsFormat = self->_systemstatsFormat;
  taskAggregation = self->_taskAggregation;
  aggregateFramesByOffsetIntoBinary = self->_aggregateFramesByOffsetIntoBinary;
  swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways = self->_swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways;
  swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways = self->_swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways;
  swiftAsyncCallTreeAggregation = self->_swiftAsyncCallTreeAggregation;
  swiftAsyncDisplayCRootCallstacks = self->_swiftAsyncDisplayCRootCallstacks;
  callTreeTimestampsTimeDomain = self->_callTreeTimestampsTimeDomain;
  callTreeAggregation = self->_callTreeAggregation;
  displayQoSTransitionsBetweenUnspecifiedAndUnavailable = self->_displayQoSTransitionsBetweenUnspecifiedAndUnavailable;
  displayTrialInformation = self->_displayTrialInformation;
  displayEachIndividualIOInCallTrees = self->_displayEachIndividualIOInCallTrees;
  displayOnBehalfOfInCallTrees = self->_displayOnBehalfOfInCallTrees;
  displayDefaultPowerModes = self->_displayDefaultPowerModes;
  displayIOInCallTrees = self->_displayIOInCallTrees;
  displayAllTaskSizeChanges = self->_displayAllTaskSizeChanges;
  displayCodesigningIDsMatchingBundleIDs = self->_displayCodesigningIDsMatchingBundleIDs;
  displayTasksWithZeroCount = self->_displayTasksWithZeroCount;
  displayMultipleMatchingBlockedReasons = self->_displayMultipleMatchingBlockedReasons;
  displayEmptyBootArgs = self->_displayEmptyBootArgs;
  v4 = objc_msgSend( v3,  "initWithFormat:",  @"displayHeader: %d\ndisplayBody: %d\ndisplayFooter: %d\ntabDelineateBinaryImageSections: %d\nbinaryImagesBeforeStacks: %d\nprintSpinSignatureStack: %d\nprintTargetThreadOnly: %d\nprintHeavyStacks: %d\nprintJson: %d\nforceOneBasedTimeIndexes: %d\nshowThreadStateAsLeafFrame: %d\npatchTruncatedStacks: %d\nomitTasksBelowPercentOfTotalSamples: %d\nomitStacksBelowPercentOfTaskSamples: %d\nomitFramesBelowPercentOfStackSamples: %d\nomitTasksBelowSampleCount: %lld\nomitStacksBelowSampleCount: %lld\nomitFramesBelowSampleCount: %lld\nprocessSortAttributes: %@\ncallTreeSortAttributes: %@\ndisplayKernelFrames: %d\ndisplayExclaveFrames: %d\ndisplayUserFrames: %d\ndisplayFrameAddresses: %d\ndisplayDetailedCpuTime: %d\ndisplayDetailedWallTime: %d\ndisplayOffsetsFromUnnamedSymbols: %d\ndisplayFullSourcePaths: %d\ndisplaySymbolInformation: %d\ndisplayBinaryImageAddresses: %d\ndisplayBinaryImagesLackingNameOrPath: %d\ndisplayRunningThreads: %d\ndisplayRunnableThreads: %d\ndisplayBlockedThreads: %d\ndisplayCPUNumForRunningThreads: %d\ndisplayCPUClusterInfoForRunningThreads: %d\ndisplayCPUNumForNonRunningThreads: %d\ndisplayThreadRunningState: %d\ndisplayIdleWorkQueueThreads: %d\ndisplayAllBinaries: %d\ndisplayBlockedReasons: %d\ndisplayBlockedReasonsLackingProcessOwners: %d\ndisplayAddressesInBlockedReasons: %d\ndisplayMultipleMatchingBlockedReasons: %d\ndisplayEmptyBootArgs: %d\nhidEventDisplayOptions: 0x%llx\ndisplayTasksWithZeroCount: %d\ndisplayAllTaskSizeChanges: %d\ndisplayCodesigningIDsMatchingBundleIDs: %d\ndisplayDefaultPowerModes: %d\ndisplayIOInCallTrees: %d\ndisplayEachIndividualIOInCallTrees: %d\ndisplayOnBehalfOfInCallTrees: %d\ndisplayQoSTransitionsBetweenUnspecifiedAndUnavailable: %d\ndisplayTrialInformation: %d\ncallTreeTimestampsTimeDomain: 0x%llx\ncallTreeAggregation: %llu\nswiftAsyncCallTreeAggregation: %llu\nswiftAsyncDisplayCRootCallstacks: %d\nswiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways: %d\nswiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways: %d\ntaskAggregation: %llu\naggregateFramesByOffsetIntoBinary: %d\nmicrostackshotsFormat: %d\nsystemstatsFormat: %d\nincludeUserIdleAndBatteryStateInStacks: %d\nomitStacksOnBattery: %d\nomitStacksOnAC: %d\nomitStacksWithUserIdle: %d\nomitStacksWithUserActive: %d\nomitStacksWithECore: %d\nomitStacksWithPCore: %d\nomitStacksBelowBasePriority: %d\nomitStacksAboveBasePriority: %d\nomitAbsoluteWallTimes: %d\nprintProblematicProcessesAndThreads: %d\ntidsToPrint: %@\npidsToPrint: %@\nuniquePidsToPrint: %@\nprocessUUIDsToPrint: %@\n",  self->_displayHeader,  self->_displayBody,  self->_displayFooter,  self->_tabDelineateBinaryImageSections,  self->_binaryImagesBeforeStacks,  self->_printSpinSignatureStack,  self->_printTargetThreadOnly,  self->_printHeavyStacks,  self->_printJson,  self->_forceOneBasedTimeIndexes,  self->_showThreadStateAsLeafFrame,  self->_patchTruncatedStacks,  self->_omitTasksBelowPercentOfTotalSamples,  self->_omitStacksBelowPercentOfTaskSamples,  self->_omitFramesBelowPercentOfStackSamples,  self->_omitTasksBelowSampleCount,  self->_omitStacksBelowSampleCount,  self->_omitFramesBelowSampleCount,  self->_processSortAttributes,  self->_callTreeSortAttributes,  self->_displayKernelFrames,  self->_displayExclaveFrames,  self->_displayUserFrames,  self->_displayFrameAddresses,  self->_displayDetailedCpuTime,  self->_displayDetailedWallTime,  self->_displayOffsetsFromUnnamedSymbols,  self->_displayFullSourcePaths,  self->_displaySymbolInformation,  self->_displayBinaryImageAddresses,  self->_displayBinaryImagesLackingNameOrPath,  self->_displayRunningThreads,  self->_displayRunnableThreads,  self->_displayBlockedThreads,  self->_displayCPUNumForRunningThreads,  self->_displayCPUClusterInfoForRunningThreads,  self->_displayCPUNumForNonRunningThreads,  self->_displayThreadRunningState,  self->_displayIdleWorkQueueThreads,  self->_displayAllBinaries,  self->_displayBlockedReasons,  self->_displayBlockedReasonsLackingProcessOwners,  self->_displayAddressesInBlockedReasons,  displayMultipleMatchingBlockedReasons,  displayEmptyBootArgs,  self->_hidEventDisplayOptions,
         displayTasksWithZeroCount,
         displayAllTaskSizeChanges,
         displayCodesigningIDsMatchingBundleIDs,
         displayDefaultPowerModes,
         displayIOInCallTrees,
         displayEachIndividualIOInCallTrees,
         displayOnBehalfOfInCallTrees,
         displayQoSTransitionsBetweenUnspecifiedAndUnavailable,
         displayTrialInformation,
         callTreeTimestampsTimeDomain,
         callTreeAggregation,
         swiftAsyncCallTreeAggregation,
         swiftAsyncDisplayCRootCallstacks,
         swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways);

  return v4;
}

@end