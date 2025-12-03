@interface SASamplePrinter
- (BOOL)frame:(uint64_t)frame matchesFrame:;
- (BOOL)printLaunchdThrottledProcessesToStream:(uint64_t)stream;
- (SASamplePrinter)initWithSampleStore:(id)store;
- (SAStack)stackForThread:(void *)thread threadStateIndexes:(void *)indexes task:(uint64_t)task taskSampleCount:(BOOL)count isTarget:;
- (__CFString)displayNameForDispatchQueue:(void *)queue;
- (__CFString)displayNameForPid:(uint64_t)pid aroundTimestamp:(uint64_t)timestamp includePid:(void *)includePid;
- (__CFString)displayNameForTask:(__CFString *)task;
- (__CFString)displayStringForResourceCoalition:(void *)coalition;
- (__CFString)rawNameForTask:(__CFString *)task;
- (__CFString)timeIndexDescriptionForStartSampleIndex:(unint64_t)index endSampleIndex:(unsigned int)sampleIndex formattedToLength:;
- (__CFString)timeIndexDescriptionForTimestamp:(uint64_t)timestamp;
- (double)timeSpentAsleepBetweenStartTimestamp:(void *)timestamp endTimestamp:;
- (id)_findIOBefore:(void *)before during:(void *)during after:(void *)after thread:(unint64_t)thread stateIndex:(void *)index inIO:(void *)o nextIO:;
- (id)architectureStringForTask:(uint64_t)task;
- (id)binaryImagesHitByTask:(uint64_t)task;
- (id)callTreeForDispatchQueue:(id)queue andThread:(id)thread inTask:(id)task;
- (id)callTreeForDispatchQueue:(id)queue swiftTask:(id)task thread:(id)thread inTask:(id)inTask;
- (id)callTreeForExecutable:(id)executable;
- (id)callTreeForSwiftTask:(id)task thread:(id)thread inTask:(id)inTask;
- (id)callTreeForTask:(id)task;
- (id)callTreeForThread:(id)thread inTask:(id)task;
- (id)callTreesForThreadsInTask:(id)task;
- (id)copyDescriptionForTimeRanges:(uint64_t)ranges;
- (id)displayNameForPid:(uint64_t)pid threadId:(void *)id timestamp:;
- (id)displayNameForTask:(int)task includePid:;
- (id)displayNameForTask:(uint64_t)task threadId:;
- (id)displayNameForTask:(void *)task thread:(void *)thread threadState:;
- (id)displayStringForOnBehalfOfForTasks:(unsigned int)tasks includePid:;
- (id)displayedBinaryLoadInfoForBinary:(uint64_t)binary segment:(void *)segment desiredLoadAddress:(uint64_t)address offsetIntoLoadInfo:(unint64_t)info isInKernelAddressSpace:(char)space exclave:(void *)exclave binariesToDisplay:(void *)display extraBinariesToDisplay:(void *)toDisplay;
- (id)displayedBinaryLoadInfoForLoadInfo:(uint64_t)info offsetIntoLoadInfo:(void *)loadInfo binariesToDisplay:(unint64_t)display extraBinariesToDisplay:(void *)toDisplay;
- (id)eventEndTimeWithWallTime;
- (id)eventStartTimeWithWallTime;
- (id)kernelVersionAtWallTime:(uint64_t)time;
- (id)sortedLoadInfosForBinaryImages:(uint64_t)images;
- (id)stacksForTask:(uint64_t)task taskSampleCount:;
- (id)stateChangeStringForThreadState:(unint64_t)state serialDispatchQueue:(unint64_t)queue swiftTaskStates:(void *)states thread:(void *)thread threadStateIndexes:(void *)indexes taskState:(void *)taskState task:(uint64_t)task iteratorIndex:(char)self0 missingStateIsInAnotherStack:(uint64_t)self1 numSamplesOmittedSincePreviousDisplayedSample:(void *)self2 sampleTimestamp:(void *)self3 previousSampleTimestamp:(void *)self4 previousDisplayedTimestamp:(void *)self5 previousTaskState:(void *)self6 previousThread:(void *)self7 previousThreadState:(char)self8 dispatchQueueChanges:(char)self9 swiftTaskChanges:(char)taskChanges priorityChanges:(char)priorityChanges nameChanges:(char)nameChanges threadChanges:(char)threadChanges isTimeJump:(void *)jump ioEventsSincePreviousThreadState:;
- (uint64_t)checkForBadOptions;
- (uint64_t)copyDescriptionForIOEvent:(void *)event;
- (uint64_t)copyDescriptionForIOEvents:(id *)events;
- (uint64_t)copyDescriptionForTruncatedLeafFrame:(uint64_t)frame otherCallTreeDescription:(void *)description binariesToDisplay:(void *)display extraBinariesToDisplay:;
- (uint64_t)hasTargetProcess;
- (uint64_t)highestPriorityInTask:(char)task useBasePriority:;
- (uint64_t)largestFootprintInTask:(void *)task;
- (uint64_t)numIOsForTask:(void *)task ioSize:;
- (uint64_t)printTaskHeaderForTask:(uint64_t)task specialDispatchQueueId:(uint64_t)id specialThreadId:(int)threadId omitSpecial:(int)special omitOther:;
- (uint64_t)shouldPrintTask:(unint64_t)task thread:(unint64_t)thread dispatchQueue:;
- (uint64_t)shouldPrintTimeOutsideSamplingRange:(uint64_t)range;
- (uint64_t)taskHasSwallowedAnExceptionNotedByHIException:(uint64_t)exception;
- (void)addHeaderForDispatchQueue:(void *)queue orSwiftTaskStates:(char *)states orThread:(void *)thread andThreadStateIndexes:(void *)indexes toStack:(void *)stack task:(uint64_t)task taskSampleCount:;
- (void)addStack:(void *)stack toStream:(uint64_t)stream sampleCount:(void *)count binariesToDisplay:(uint64_t)display primaryState:(int)state primaryMicrostackshotState:(char)microstackshotState onlyHeaviestStack:(char)heaviestStack isKernel:;
- (void)addStackForDispatchQueue:(void *)queue orSwiftTaskStates:(char *)states orThread:(void *)thread andThreadStateIndexes:(uint64_t)indexes task:(void *)task toRootObjects:(char)objects nameChanges:(char)changes dispatchQueueChanges:(char)self0 swiftTaskChanges:(char)self1 threadChanges:(char)self2 priorityChanges:(uint64_t)self3 microstackshotSummary:(unsigned __int8)self4 onlyHeaviestStack:(char)self5 includeState:;
- (void)addStackForSwiftTask:(unint64_t)task andThread:(uint64_t)thread task:(void *)a5 toRootObjects:;
- (void)addTaskHeaderToStream:(void *)stream displayName:(uint64_t)name pid:(void *)pid mainBinary:(void *)binary mainBinaryPath:(void *)path sharedCaches:(uint64_t)caches uid:(double)uid bundleIdentifier:(void *)self0 bundleVersion:(__int128)self1 bundleShortVersion:(void *)self2 bundleBuildVersion:(void *)self3 bundleProjectName:(void *)self4 bundleSourceVersion:(void *)self5 bundleProductBuildVersion:(uint64_t)self6 adamID:(void *)self7 installerVersionID:(char)self8 developerType:(void *)self9 appType:(char)appType isBeta:(void *)beta cohortID:(void *)cohortID vendorID:(void *)vendorID distributorID:(void *)distributorID codesigningID:(void *)codesigningID teamID:(void *)teamID resourceCoalitionSampleCounts:(void *)counts onBehalfOfProcesses:(void *)processes architectureString:(void *)string kernelVersion:(void *)stream0 parentName:(void *)stream1 responsibleName:(void *)stream2 taskExecedFromName:(void *)stream3 taskExecedToName:(void *)stream4 forkTimestamp:(void *)stream5 startTimestamp:(unint64_t)stream6 endTimestamp:(unint64_t)stream7 startSampleIndex:(unint64_t)stream8 endSampleIndex:(unint64_t)stream9 numSamples:(uint64_t)name0 totalNumSamples:(uint64_t)name1 numSamplesSuspended:(unint64_t)name2 numSamplesTerminated:(unint64_t)name3 startingTaskSize:(unint64_t)name4 endingTaskSize:(unint64_t)name5 maxTaskSize:(unint64_t)name6 startSampleIndexOfMaxTaskSize:(unsigned int)name7 endSampleIndexOfMaxTaskSize:(unint64_t)name8 numPageins:(unint64_t)name9 cpuTimeNs:(unint64_t)pid0 cpuInstructions:(unint64_t)pid1 cpuCycles:(unint64_t)pid2 nonThreadCpuTimeNs:(unint64_t)pid3 nonThreadCpuInstructions:(char)pid4 nonThreadCpuCycles:(char)pid5 usesSuddenTermination:(void *)pid6 allowsIdleExit:(void *)pid7 memoryLimitStr:(char)pid8 jetsamPriorityStr:(char)pid9 isTranslocated:(char)binary0 hardenedHeap:(char)binary1 mteCheckedAllocationsEnabled:(char)binary2 mteUserDataAllocationsTagged:(char)binary3 mteSoftModeEnabled:mteInheritanceTurnedOn:isRunningBoardManaged:isUnresponsive:timeOfLastResponse:numThreads:numIdleWorkQueueThreads:numOtherHiddenThreads:hieSwallowedException:numSamplesWQExceededConstrainedThreadLimit:numSamplesWQExceededTotalThreadLimit:numSamplesWQExceededCooperativeThreadLimit:numSamplesWQExceededActiveConstrainedThreadLimit:numSamplesTALEngaged:isRunawayMitigated:threadsDeadlocked:threadsBlockedByADeadlock:ioSize:numIOs:isReportHeader:;
- (void)avoidOverlapInBinaryLoadInfos:(int)infos onlyExclaves:(void *)exclaves inTask:;
- (void)copyDescriptionsForFrame:(void *)frame binariesToDisplay:(void *)display extraBinariesToDisplay:;
- (void)filterToDisplayTimeIndexStart:(unint64_t)start end:(unint64_t)end;
- (void)filterToMachAbsTimeRangeStart:(unint64_t)start end:(unint64_t)end;
- (void)filterToTimestampRangeStart:(id)start end:(id)end;
- (void)filterToWallTimeRangeStart:(double)start end:(double)end;
- (void)iterateDispatchQueue:(void *)queue orSwiftTaskStates:(void *)states orThread:(void *)thread threadStateIndexes:(unint64_t)indexes startingAtIndex:(uint64_t)index endingAfterTimestamp:(void *)timestamp task:(char)task stopAtTimeJumps:(uint64_t)self0 callback:;
- (void)printBinaryImagesForTask:(uint64_t)task;
- (void)printHIDEvent:(uint64_t)event;
- (void)printHeader;
- (void)printLoadInfos:(id *)infos;
- (void)printMultipleTasks:(uint64_t)tasks;
- (void)printReport;
- (void)printSingleStackForTasks:(uint64_t)tasks limitToDispatchQueueIds:(uint64_t)ids limitToThreadIds:(char)threadIds intersection:(uint64_t)intersection sampleCount:;
- (void)printStack:(void *)stack stream:;
- (void)printTask:(uint64_t)task specialDispatchQueueId:(uint64_t)id specialThreadId:(int)threadId omitSpecial:(int)special omitOther:;
- (void)printToMutableData:(id)data;
- (void)printToStream:(__sFILE *)stream;
- (void)setOptions:(id)options;
- (void)sortHeavyCallTree:(uint64_t)tree;
- (void)updateIndexes;
@end

@implementation SASamplePrinter

- (void)updateIndexes
{
  v58 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_40;
  }

  v3 = (self + 32);
  v2 = *(self + 32);
  if (v2 && *(self + 40) && ([v2 le:?] & 1) == 0)
  {
    v31 = *__error();
    v32 = _sa_logt();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [*(self + 32) debugDescription];
      uTF8String = [v33 UTF8String];
      v35 = [*(self + 40) debugDescription];
      *buf = 136315394;
      *&buf[4] = uTF8String;
      *&buf[12] = 2080;
      *&buf[14] = [v35 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "reportStartTime %s > reportEndTime %s", buf, 0x16u);
    }

    *__error() = v31;
    v36 = [*(self + 32) debugDescription];
    v37 = v36;
    uTF8String2 = [v36 UTF8String];
    v39 = [*(self + 40) debugDescription];
    v40 = v39;
    [v39 UTF8String];
    _SASetCrashLogMessage(1631, "reportStartTime %s > reportEndTime %s", v41, v42, v43, v44, v45, v46, uTF8String2);

    _os_crash();
    __break(1u);
  }

  if (*(self + 48) == 1)
  {
    startTime = [*(self + 168) startTime];
    endTime = [*(self + 168) endTime];
    v6 = *(self + 32);
    if (v6 && startTime && [v6 gt:startTime])
    {
      v7 = [*(self + 168) indexOfFirstSampleOnOrAfterTimestamp:*(self + 32)];
      *(self + 56) = v7;
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_18:
        v15 = *(self + 40);
        if (v15 && endTime && [v15 lt:endTime])
        {
          v16 = [*(self + 168) indexOfLastSampleOnOrBeforeTimestamp:*(self + 40)];
          *(self + 64) = v16;
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_25:
            v21 = *(self + 56);
            if (v21 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v22 = 0;
            }

            else
            {
              v22 = 0;
              v23 = *(self + 64);
              if (v23 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v24 = v23 >= v21;
                v25 = v23 - v21;
                if (v24)
                {
                  v22 = v25 + 1;
                }
              }
            }

            *(self + 72) = v22;

            goto LABEL_32;
          }

          sampleTimestamps = [*(self + 168) sampleTimestamps];
          lastObject = [sampleTimestamps objectAtIndexedSubscript:*(self + 64)];
        }

        else
        {
          sampleTimestamps2 = [*(self + 168) sampleTimestamps];
          *(self + 64) = [sampleTimestamps2 count] - 1;

          sampleTimestamps = [*(self + 168) sampleTimestamps];
          lastObject = [sampleTimestamps lastObject];
        }

        v20 = *(self + 40);
        *(self + 40) = lastObject;

        goto LABEL_25;
      }

      sampleTimestamps3 = [*(self + 168) sampleTimestamps];
      firstObject = [sampleTimestamps3 objectAtIndexedSubscript:*(self + 56)];
    }

    else
    {
      *(self + 56) = 0;
      sampleTimestamps3 = [*(self + 168) sampleTimestamps];
      firstObject = [sampleTimestamps3 firstObject];
    }

    v14 = *v3;
    *v3 = firstObject;

    goto LABEL_18;
  }

  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  *(self + 56) = vnegq_f64(v10);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v55 = __Block_byref_object_copy__4;
  v56 = __Block_byref_object_dispose__4;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__4;
  v52 = __Block_byref_object_dispose__4;
  v53 = 0;
  *(self + 72) = 0;
  v11 = *(self + 168);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __32__SASamplePrinter_updateIndexes__block_invoke;
  v47[3] = &unk_1E86F7438;
  v47[4] = self;
  v47[5] = buf;
  v47[6] = &v48;
  [v11 enumerateTasks:v47];
  v12 = *(*&buf[8] + 40);
  if (v12)
  {
    objc_storeStrong(v3, v12);
  }

  v13 = v49[5];
  if (v13)
  {
    objc_storeStrong((self + 40), v13);
  }

  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(buf, 8);
LABEL_32:
  if (*v3 && *(self + 40) && [*v3 le:?])
  {
    targetMainBinaryUUID = [*(self + 168) targetMainBinaryUUID];

    v27 = *(self + 168);
    if (targetMainBinaryUUID)
    {
      v28 = [SATimeRange timeRangeStart:*(self + 32) end:*(self + 40)];
      [(SASampleStore *)v27 findTargetProcessesInTimeRange:v28];
LABEL_39:

      goto LABEL_40;
    }

    if ([*(self + 168) targetProcessId] != -1)
    {
      v29 = *(self + 168);
      v28 = [SATimeRange timeRangeStart:*(self + 32) end:*(self + 40)];
      [(SASampleStore *)v29 findTargetProcessInTimeRange:v28];
      goto LABEL_39;
    }
  }

LABEL_40:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)printReport
{
  v521 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_13;
  }

  context = objc_autoreleasePoolPush();
  if (!*(self + 8))
  {
    v405 = *__error();
    v381 = _sa_logt();
    if (os_log_type_enabled(v381, OS_LOG_TYPE_ERROR))
    {
      *v511 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v381, OS_LOG_TYPE_ERROR, "nil stream", v511, 2u);
    }

    *__error() = v405;
    _SASetCrashLogMessage(2101, "nil stream", v406, v407, v408, v409, v410, v411, v436);
    _os_crash();
    __break(1u);
    goto LABEL_424;
  }

  if ([*(self + 168) isEmpty])
  {
    v3 = *(self + 8);
    v4 = @"No samples\n";
LABEL_11:
    [v3 appendString:v4];
    goto LABEL_12;
  }

  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    goto LABEL_12;
  }

  if (*(self + 48) == 1)
  {
    v5 = *(self + 56);
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v6 = *(self + 64);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL || v5 > v6)
    {
      goto LABEL_10;
    }
  }

  else if (!*(self + 72))
  {
LABEL_10:
    v3 = *(self + 8);
    v4 = @"No samples for specified time interval\n";
    goto LABEL_11;
  }

  if (!*(self + 32))
  {
    v412 = *__error();
    v413 = _sa_logt();
    if (os_log_type_enabled(v413, OS_LOG_TYPE_ERROR))
    {
      *v511 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v413, OS_LOG_TYPE_ERROR, "nil reportStartTime", v511, 2u);
    }

    *__error() = v412;
    _SASetCrashLogMessage(2123, "nil reportStartTime", v414, v415, v416, v417, v418, v419, v436);
    _os_crash();
    __break(1u);
    goto LABEL_428;
  }

  if (!*(self + 40))
  {
LABEL_428:
    v420 = *__error();
    v421 = _sa_logt();
    if (os_log_type_enabled(v421, OS_LOG_TYPE_ERROR))
    {
      *v511 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v421, OS_LOG_TYPE_ERROR, "nil reportEndTime", v511, 2u);
    }

    *__error() = v420;
    _SASetCrashLogMessage(2124, "nil reportEndTime", v422, v423, v424, v425, v426, v427, v436);
    _os_crash();
    __break(1u);
    goto LABEL_431;
  }

  [*(self + 168) symbolicate];
  v8 = *(self + 168);
  v481[0] = MEMORY[0x1E69E9820];
  v481[1] = 3221225472;
  v481[2] = __29__SASamplePrinter_preprocess__block_invoke;
  v481[3] = &unk_1E86F5BD0;
  selfCopy = self;
  v481[4] = self;
  [v8 enumerateTasks:v481];
  exclaves = [*(self + 168) exclaves];
  v10 = exclaves == 0;

  if (!v10)
  {
    v11 = [(SASampleStore *)*(self + 168) lastTaskWithPid:?];
    if (v11)
    {
      v12 = [(SASamplePrinter *)self binaryImagesHitByTask:v11];
      *v475 = MEMORY[0x1E69E9820];
      v476 = 3221225472;
      v477 = __29__SASamplePrinter_preprocess__block_invoke_2;
      v478 = &unk_1E86F7688;
      selfCopy2 = self;
      v13 = v12;
      v480 = v13;
      [(SATask *)v11 enumerateFrames:v475];
      v492 = 0u;
      v493 = 0u;
      v490 = 0u;
      v491 = 0u;
      exclaves2 = [*(self + 168) exclaves];
      v15 = [exclaves2 countByEnumeratingWithState:&v490 objects:&v507 count:16];
      if (v15)
      {
        v16 = *v491;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v491 != v16)
            {
              objc_enumerationMutation(exclaves2);
            }

            v18 = *(*(&v490 + 1) + 8 * i);
            v473[0] = MEMORY[0x1E69E9820];
            v473[1] = 3221225472;
            v473[2] = __29__SASamplePrinter_preprocess__block_invoke_3;
            v473[3] = &unk_1E86F7688;
            v473[4] = selfCopy;
            v474 = v13;
            [(SAExclave *)v18 enumerateFrames:v473];
          }

          v15 = [exclaves2 countByEnumeratingWithState:&v490 objects:&v507 count:16];
        }

        while (v15);
      }

      v19 = [(SASamplePrinter *)selfCopy sortedLoadInfosForBinaryImages:v13];
      [(SASamplePrinter *)selfCopy avoidOverlapInBinaryLoadInfos:v19 onlyExclaves:1 inTask:v11];
    }

    else
    {
      v20 = *__error();
      v21 = _sa_logt();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *v511 = 0;
        _os_log_fault_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_FAULT, "no kernel task, though there are exclaves", v511, 2u);
      }

      *__error() = v20;
    }
  }

  cpuSignalHandlerStackLeafKernelFrame = [*(selfCopy + 168) cpuSignalHandlerStackLeafKernelFrame];
  v23 = cpuSignalHandlerStackLeafKernelFrame == 0;

  if (v23)
  {
    [*(selfCopy + 168) findCpuSignalHandlerStackLeafKernelFrame];
  }

  [*(selfCopy + 168) attemptedSamplingInterval];
  v24 = selfCopy;
  if (v25 != 0.0 && *(selfCopy + 48) == 1 && ([*(selfCopy + 168) sampleTimestamps], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "count") > 1, v26, v24 = selfCopy, v27))
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = *(selfCopy + 104);
    *(selfCopy + 104) = v28;

    *(selfCopy + 96) = 0;
    v500 = 0u;
    v501 = 0u;
    v502 = 0u;
    v503 = 0u;
    sampleTimestamps = [*(selfCopy + 168) sampleTimestamps];
    v31 = [sampleTimestamps countByEnumeratingWithState:&v500 objects:v511 count:16];
    if (v31)
    {
      v32 = *v501;
      v33 = 0.0;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v501 != v32)
          {
            objc_enumerationMutation(sampleTimestamps);
          }

          v35 = *(*(&v500 + 1) + 8 * j);
          [v35 machAbsTimeSeconds];
          if (v33 > 0.0)
          {
            v37 = v36 - v33;
            v38 = *(selfCopy + 96);
            if (v38 > v37 || v38 == 0.0)
            {
              *(selfCopy + 96) = v37;
            }
          }

          [v35 machAbsTimeSeconds];
          v33 = v39;
        }

        v31 = [sampleTimestamps countByEnumeratingWithState:&v500 objects:v511 count:16];
      }

      while (v31);
    }

    v40 = *(selfCopy + 96);
    [*(selfCopy + 168) attemptedSamplingInterval];
    v41 = selfCopy;
    if (v40 < v42)
    {
      [*(selfCopy + 168) attemptedSamplingInterval];
      v41 = selfCopy;
      *(selfCopy + 96) = v43;
    }

    *&v495 = 0;
    *(&v495 + 1) = &v495;
    *&v496 = 0x3032000000;
    *(&v496 + 1) = __Block_byref_object_copy__4;
    *&v497 = __Block_byref_object_dispose__4;
    *(&v497 + 1) = 0;
    sampleTimestamps2 = [*(v41 + 168) sampleTimestamps];
    *&v486 = MEMORY[0x1E69E9820];
    *(&v486 + 1) = 3221225472;
    *&v487 = __37__SASamplePrinter_calculateTimeJumps__block_invoke;
    *(&v487 + 1) = &unk_1E86F73E8;
    *&v488 = v41;
    *(&v488 + 1) = &v495;
    [sampleTimestamps2 enumerateObjectsUsingBlock:&v486];

    _Block_object_dispose(&v495, 8);
  }

  else
  {
    v45 = *(v24 + 104);
    *(v24 + 104) = 0;
  }

  v46 = *(selfCopy + 136);
  location = (selfCopy + 136);
  *(selfCopy + 136) = 0;

  v47 = *(selfCopy + 144);
  *(selfCopy + 144) = 0;

  if ([*(selfCopy + 168) targetHIDEventMachAbs])
  {
    v488 = 0u;
    v489 = 0u;
    v486 = 0u;
    v487 = 0u;
    obj = [*(selfCopy + 168) hidEvents];
    v48 = [obj countByEnumeratingWithState:&v486 objects:v511 count:16];
    if (v48)
    {
      v49 = *v487;
      while (2)
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v487 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v51 = *(*(&v486 + 1) + 8 * k);
          hidEventTimestamp = [v51 hidEventTimestamp];
          machAbsTime = [hidEventTimestamp machAbsTime];
          if (machAbsTime == [*(selfCopy + 168) targetHIDEventMachAbs])
          {
            if ([*(selfCopy + 168) targetProcessId] == -1)
            {

LABEL_66:
              objc_storeStrong((selfCopy + 120), v51);
              v58 = *(selfCopy + 168);
              if (v58 && (*(v58 + 404) & 1) != 0)
              {
                v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v60 = *(selfCopy + 128);
                *(selfCopy + 128) = v59;

                v441 = objc_alloc_init(MEMORY[0x1E695DF90]);
                hidEventTimestamp2 = [v51 hidEventTimestamp];
                v62 = [*(selfCopy + 168) indexOfLastSampleOnOrBeforeTimestamp:hidEventTimestamp2];
                v505 = 0u;
                v506 = 0u;
                memset(v504, 0, sizeof(v504));
                steps = [*(selfCopy + 120) steps];
                v448 = [steps countByEnumeratingWithState:v504 objects:&v500 count:16];
                if (v448)
                {
                  v440 = 0;
                  v446 = **&v504[16];
                  do
                  {
                    v63 = 0;
                    v466 = hidEventTimestamp2;
                    do
                    {
                      if (**&v504[16] != v446)
                      {
                        v64 = v63;
                        objc_enumerationMutation(steps);
                        v63 = v64;
                      }

                      v453 = v63;
                      v65 = *(*&v504[8] + 8 * v63);
                      v66 = *(selfCopy + 168);
                      timestamp = [v65 timestamp];
                      v456 = [v66 indexOfLastSampleOnOrBeforeTimestamp:timestamp];

                      if (v456 != 0x7FFFFFFFFFFFFFFFLL && (v62 == 0x7FFFFFFFFFFFFFFFLL || v62 < v456))
                      {
                        v68 = *(selfCopy + 168);
                        v69 = [v65 pid];
                        v70 = [v65 tid];
                        timestamp2 = [v65 timestamp];
                        v450 = [(SASampleStore *)v68 taskWithPid:v69 orTid:v70 atTimestamp:timestamp2];

                        if (v450)
                        {
                          if (v62 == 0x7FFFFFFFFFFFFFFFLL)
                          {
                            v72 = 0;
                          }

                          else
                          {
                            v72 = v62 + 1;
                          }

                          v442 = v72;
                          if ([v65 tid])
                          {
                            threads = [v450 threads];
                            v74 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v65, "tid")}];
                            mainThread = [threads objectForKeyedSubscript:v74];

                            if (!mainThread)
                            {
                              v75 = *__error();
                              v76 = _sa_logt();
                              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                              {
                                v106 = [v65 tid];
                                v107 = [v450 debugDescription];
                                *buf = 134218242;
                                *&buf[4] = v106;
                                *&buf[12] = 2112;
                                *&buf[14] = v107;
                                _os_log_error_impl(&dword_1E0E2F000, v76, OS_LOG_TYPE_ERROR, "No thread %llu in %@ for hid event", buf, 0x16u);
                              }

                              mainThread = 0;
                              *__error() = v75;
                            }
                          }

                          else
                          {
                            mainThread = [v450 mainThread];
                            if (!mainThread)
                            {
                              v484 = 0u;
                              v485 = 0u;
                              v482 = 0u;
                              v483 = 0u;
                              threads2 = [v450 threads];
                              v82 = [threads2 countByEnumeratingWithState:&v482 objects:&v495 count:16];
                              if (v82)
                              {
                                mainThread = 0;
                                v83 = 0;
                                v84 = *v483;
                                do
                                {
                                  for (m = 0; m != v82; ++m)
                                  {
                                    if (*v483 != v84)
                                    {
                                      objc_enumerationMutation(threads2);
                                    }

                                    v86 = *(*(&v482 + 1) + 8 * m);
                                    v87 = [v86 firstThreadStateOnOrAfterTime:v466 sampleIndex:0x7FFFFFFFFFFFFFFFLL];
                                    timestamp3 = [v65 timestamp];
                                    v89 = [v86 lastThreadStateOnOrBeforeTime:timestamp3 sampleIndex:0x7FFFFFFFFFFFFFFFLL];

                                    if (v89)
                                    {
                                      v90 = v87 == 0;
                                    }

                                    else
                                    {
                                      v90 = 1;
                                    }

                                    if (!v90)
                                    {
                                      cpuTimeNs = [v89 cpuTimeNs];
                                      if (cpuTimeNs > [v87 cpuTimeNs])
                                      {
                                        cpuTimeNs2 = [v89 cpuTimeNs];
                                        if (v83 < cpuTimeNs2 - [v87 cpuTimeNs])
                                        {
                                          cpuTimeNs3 = [v89 cpuTimeNs];
                                          cpuTimeNs4 = [v87 cpuTimeNs];
                                          v95 = v86;

                                          v83 = cpuTimeNs3 - cpuTimeNs4;
                                          mainThread = v95;
                                        }
                                      }
                                    }
                                  }

                                  v82 = [threads2 countByEnumeratingWithState:&v482 objects:&v495 count:16];
                                }

                                while (v82);
                              }

                              else
                              {
                                mainThread = 0;
                              }
                            }
                          }

                          v96 = [SAHIDStepSample alloc];
                          v97 = [v65 tid];
                          timestamp4 = [v65 timestamp];
                          if (v96)
                          {
                            *buf = v96;
                            *&buf[8] = SAHIDStepSample;
                            v99 = objc_msgSendSuper2(buf, sel_init);
                            v96 = v99;
                            if (v99)
                            {
                              objc_storeStrong(&v99->_task, v450);
                              v96->_threadId = v97;
                              objc_storeStrong(&v96->_startTimestamp, v466);
                              objc_storeStrong(&v96->_endTimestamp, timestamp4);
                              v96->_startSampleIndex = v442;
                              v96->_endSampleIndex = v456;
                            }
                          }

                          [*(selfCopy + 128) addObject:v96];
                          v100 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v65, "tid")}];
                          v101 = [v441 objectForKeyedSubscript:v100];
                          unsignedLongValue = [v101 unsignedLongValue];

                          v103 = v456 - v442 + unsignedLongValue + 1;
                          v104 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v103];
                          v105 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v65, "tid")}];
                          [v441 setObject:v104 forKeyedSubscript:v105];

                          if (v103 > v440)
                          {
                            objc_storeStrong(location, v450);
                            objc_storeStrong((selfCopy + 144), mainThread);
                            v440 = v103;
                          }
                        }

                        else
                        {
                          v77 = *__error();
                          v78 = _sa_logt();
                          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                          {
                            v79 = [v65 pid];
                            v80 = [v65 tid];
                            *buf = 67109376;
                            *&buf[4] = v79;
                            *&buf[8] = 2048;
                            *&buf[10] = v80;
                            _os_log_impl(&dword_1E0E2F000, v78, OS_LOG_TYPE_INFO, "No process [%d] with thread %llu for hid event", buf, 0x12u);
                          }

                          *__error() = v77;
                        }

                        v62 = v456;
                      }

                      hidEventTimestamp2 = [v65 timestamp];

                      v63 = v453 + 1;
                      v466 = hidEventTimestamp2;
                    }

                    while (v453 + 1 != v448);
                    v448 = [steps countByEnumeratingWithState:v504 objects:&v500 count:16];
                  }

                  while (v448);
                }
              }

              goto LABEL_116;
            }

            steps2 = [v51 steps];
            lastObject = [steps2 lastObject];
            v56 = [lastObject pid];
            v57 = v56 == [*(selfCopy + 168) targetProcessId];

            if (v57)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }
        }

        v48 = [obj countByEnumeratingWithState:&v486 objects:v511 count:16];
        if (v48)
        {
          continue;
        }

        break;
      }
    }

LABEL_116:
  }

  timestampOfLastStackshot = [*(selfCopy + 168) timestampOfLastStackshot];
  uTF8String = selfCopy;
  if (timestampOfLastStackshot || *(selfCopy + 48) == 1 && ([*(selfCopy + 168) sampleTimestamps], v112 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v112, "lastObject"), timestampOfLastStackshot = objc_claimAutoreleasedReturnValue(), v112, uTF8String = selfCopy, timestampOfLastStackshot))
  {
    v110 = [SADependencyGraphNode dependencyGraphForThreadsInSampleStore:uTF8String[21] atTimestamp:timestampOfLastStackshot];
    v111 = *(selfCopy + 152);
    *(selfCopy + 152) = v110;

    uTF8String = selfCopy;
  }

  if ([uTF8String[2] printJson])
  {
    [uTF8String[1] appendString:@"{"];
  }

  if ([uTF8String[2] displayHeader])
  {
    [SASamplePrinter printHeader];
  }

  if (![uTF8String[2] displayBody])
  {
    goto LABEL_278;
  }

  if ([uTF8String[2] systemstatsFormat])
  {
    options = [uTF8String options];
    printJson = [options printJson];

    if (!printJson)
    {
      [*(selfCopy + 8) appendString:@"\nBinary Images:\n"];
      v115 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:512];
      *&v486 = MEMORY[0x1E69E9820];
      *(&v486 + 1) = 3221225472;
      *&v487 = __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke;
      *(&v487 + 1) = &unk_1E86F7A88;
      v116 = v115;
      *&v488 = v116;
      v117 = MEMORY[0x1E12EBE50](&v486);
      v118 = *(selfCopy + 168);
      *&v490 = MEMORY[0x1E69E9820];
      *(&v490 + 1) = 3221225472;
      *&v491 = __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_2;
      *(&v491 + 1) = &unk_1E86F7AD8;
      v443 = v117;
      *(&v492 + 1) = v443;
      v454 = v116;
      *&v492 = v454;
      [v118 enumerateTasks:&v490];
      allKeys = [v454 allKeys];
      v120 = [allKeys sortedArrayUsingComparator:&__block_literal_global_1971];

      v502 = 0u;
      v503 = 0u;
      v500 = 0u;
      v501 = 0u;
      v445 = v120;
      v449 = [v445 countByEnumeratingWithState:&v500 objects:v511 count:16];
      if (v449)
      {
        v121 = 0;
        v447 = *v501;
        do
        {
          v122 = 0;
          do
          {
            if (*v501 != v447)
            {
              v123 = v122;
              objc_enumerationMutation(v445);
              v122 = v123;
            }

            v451 = v122;
            v124 = *(*(&v500 + 1) + 8 * v122);
            v125 = [v454 objectForKeyedSubscript:v124];
            [v125 sortUsingComparator:&__block_literal_global_1974];
            v497 = 0u;
            v498 = 0u;
            v495 = 0u;
            v496 = 0u;
            v467 = v125;
            v460 = [v467 countByEnumeratingWithState:&v495 objects:&v507 count:16];
            if (v460)
            {
              v457 = *v496;
              while (2)
              {
                for (n = 0; n != v460; n = n + 1)
                {
                  if (*v496 != v457)
                  {
                    objc_enumerationMutation(v467);
                  }

                  v127 = *(*(&v495 + 1) + 8 * n);
                  binary = [v127 binary];
                  v129 = binary == v124;

                  if (!v129)
                  {
                    v168 = *__error();
                    v169 = _sa_logt();
                    if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
                    {
                      v170 = [v127 debugDescription];
                      v171 = v170;
                      uTF8String = [v170 UTF8String];
                      v172 = [v124 debugDescription];
                      v173 = v172;
                      uTF8String2 = [v172 UTF8String];
                      *v504 = 136315394;
                      *&v504[4] = uTF8String;
                      *&v504[12] = 2080;
                      *&v504[14] = uTF8String2;
                      _os_log_error_impl(&dword_1E0E2F000, v169, OS_LOG_TYPE_ERROR, "load info %s not using binary %s", v504, 0x16u);
                    }

                    *__error() = v168;
                    v175 = [v127 debugDescription];
                    v176 = v175;
                    uTF8String3 = [v175 UTF8String];
                    v178 = [v124 debugDescription];
                    v179 = v178;
                    [v178 UTF8String];
                    _SASetCrashLogMessage(9107, "load info %s not using binary %s", v180, v181, v182, v183, v184, v185, uTF8String3);

                    _os_crash();
                    __break(1u);
                    goto LABEL_193;
                  }

                  segment = [v127 segment];
                  isInKernelAddressSpace = [v127 isInKernelAddressSpace];
                  name = [segment name];
                  v133 = *(selfCopy + 88);
                  if (!v133)
                  {
                    v134 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:512];
                    v135 = *(selfCopy + 88);
                    *(selfCopy + 88) = v134;

                    v133 = *(selfCopy + 88);
                  }

                  v136 = [v133 objectForKeyedSubscript:v124];
                  if (!v136)
                  {
                    v136 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
                    [*(selfCopy + 88) setObject:v136 forKeyedSubscript:v124];
                  }

                  v137 = [MEMORY[0x1E696AD98] numberWithLong:v121];
                  if (name)
                  {
                    [v136 setObject:v137 forKeyedSubscript:name];
                  }

                  else
                  {
                    null = [MEMORY[0x1E695DFB0] null];
                    [v136 setObject:v137 forKeyedSubscript:null];
                  }

                  [*(selfCopy + 8) printWithFormat:@"%lu", v121];
                  v139 = *(selfCopy + 8);
                  if (isInKernelAddressSpace)
                  {
                    v140 = "*";
                  }

                  else
                  {
                    v140 = "";
                  }

                  bundleIdentifier = [v124 bundleIdentifier];
                  if (bundleIdentifier)
                  {
                    bundleIdentifier2 = [v124 bundleIdentifier];
                    v143 = SACopySanitizedString(bundleIdentifier2, 1, 0);
                    [v139 printWithFormat:@"\t%s%@", v140, v143];
                  }

                  else
                  {
                    [v139 printWithFormat:@"\t%s%@", v140, &stru_1F5BBF440];
                  }

                  [*(selfCopy + 8) appendString:@"\t"];
                  bundleVersion = [v124 bundleVersion];
                  bundleShortVersion = [v124 bundleShortVersion];
                  binaryVersion = [v124 binaryVersion];
                  v147 = binaryVersion;
                  if (bundleShortVersion || bundleVersion || binaryVersion)
                  {
                    if (bundleShortVersion)
                    {
                      v148 = *(selfCopy + 8);
                      v149 = SACopySanitizedString(bundleShortVersion, 1, 0);
                      [v148 appendString:v149];
                    }

                    if (bundleVersion | v147)
                    {
                      if (bundleVersion)
                      {
                        v150 = bundleVersion;
                      }

                      else
                      {
                        v150 = v147;
                      }

                      v151 = *(selfCopy + 8);
                      v152 = SACopySanitizedString(v150, 1, 0);
                      [v151 printWithFormat:@" (%@)", v152];
                    }
                  }

                  v153 = *(selfCopy + 8);
                  uuid = [v124 uuid];
                  uUIDString = [uuid UUIDString];
                  v156 = uUIDString;
                  v157 = &stru_1F5BBF440;
                  if (uUIDString)
                  {
                    v157 = uUIDString;
                  }

                  [v153 printWithFormat:@"\t<%@>", v157];

                  if (segment && [v467 count] == 1 && objc_msgSend(segment, "hasOffsetIntoBinary") && !objc_msgSend(segment, "offsetIntoBinary"))
                  {

                    segment = 0;
                  }

                  v158 = *(selfCopy + 8);
                  name2 = [segment name];
                  v160 = name2;
                  v161 = &stru_1F5BBF440;
                  if (name2)
                  {
                    v161 = name2;
                  }

                  [v158 printWithFormat:@"\t%@", v161];

                  [*(selfCopy + 8) appendString:@"\t"];
                  uTF8String = [v124 path];
                  if (uTF8String)
                  {
                    if ([*(selfCopy + 168) sanitizePaths])
                    {
                    }

                    v162 = *(selfCopy + 8);
                    v163 = SACopySanitizedString(uTF8String, 1, 0);
                    [v162 appendString:v163];
                  }

                  [*(selfCopy + 8) appendString:@"\n"];

                  ++v121;
                }

                v460 = [v467 countByEnumeratingWithState:&v495 objects:&v507 count:16];
                if (v460)
                {
                  continue;
                }

                break;
              }
            }

            v122 = v451 + 1;
          }

          while (v451 + 1 != v449);
          v449 = [v445 countByEnumeratingWithState:&v500 objects:v511 count:16];
        }

        while (v449);
      }

      uTF8String = selfCopy;
      goto LABEL_180;
    }

LABEL_431:
    v428 = *__error();
    v429 = _sa_logt();
    if (os_log_type_enabled(v429, OS_LOG_TYPE_ERROR))
    {
      *v511 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v429, OS_LOG_TYPE_ERROR, "printSystemStatsStyleBinaryImages doesn't support json output", v511, 2u);
    }

    *__error() = v428;
    _SASetCrashLogMessage(9014, "printSystemStatsStyleBinaryImages doesn't support json output", v430, v431, v432, v433, v434, v435, v436);
    _os_crash();
    __break(1u);
  }

LABEL_180:
  if ([uTF8String[2] printJson])
  {
    [uTF8String[1] appendString:{@", tasks:["}];
  }

  v164 = uTF8String[2];
  if (!v164 || (v165 = v164[21], v165 == 1) || !v165 && *(v164 + 11) != 1)
  {
    if (*location)
    {
      targetProcess = *location;
    }

    else
    {
LABEL_193:
      targetProcess = [uTF8String[21] targetProcess];
      uTF8String = selfCopy;
    }

    v186 = [MEMORY[0x1E695E0F0] mutableCopy];
    v187 = uTF8String[21];
    *&v490 = MEMORY[0x1E69E9820];
    *(&v490 + 1) = 3221225472;
    *&v491 = __41__SASamplePrinter_printTasksIndividually__block_invoke;
    *(&v491 + 1) = &unk_1E86F5418;
    v188 = targetProcess;
    *&v492 = v188;
    *(&v492 + 1) = uTF8String;
    v189 = v186;
    *&v493 = v189;
    [v187 enumerateTasks:&v490];
    processSortAttributes = [*(selfCopy + 16) processSortAttributes];
    *v504 = MEMORY[0x1E69E9820];
    *&v504[8] = 3221225472;
    *&v504[16] = __41__SASamplePrinter_printTasksIndividually__block_invoke_2;
    *&v504[24] = &unk_1E86F77F0;
    *&v505 = selfCopy;
    v191 = processSortAttributes;
    *(&v505 + 1) = v191;
    [v189 sortUsingComparator:v504];
    *&v482 = 0;
    *(&v482 + 1) = &v482;
    *&v483 = 0x2020000000;
    BYTE8(v483) = 1;
    *&v486 = MEMORY[0x1E69E9820];
    *(&v486 + 1) = 3221225472;
    *&v487 = __41__SASamplePrinter_printTasksIndividually__block_invoke_1480;
    *(&v487 + 1) = &unk_1E86F7818;
    *&v488 = selfCopy;
    *&v489 = &v482;
    v192 = v188;
    *(&v488 + 1) = v192;
    v193 = MEMORY[0x1E12EBE50](&v486);
    v194 = v193;
    if (v192)
    {
      (*(v193 + 16))(v193, v192);
    }

    v502 = 0u;
    v503 = 0u;
    v500 = 0u;
    v501 = 0u;
    targetProcesses = [*(selfCopy + 168) targetProcesses];
    v196 = [targetProcesses countByEnumeratingWithState:&v500 objects:v511 count:16];
    if (v196)
    {
      v197 = *v501;
      do
      {
        for (ii = 0; ii != v196; ++ii)
        {
          if (*v501 != v197)
          {
            objc_enumerationMutation(targetProcesses);
          }

          v194[2](v194, *(*(&v500 + 1) + 8 * ii));
        }

        v196 = [targetProcesses countByEnumeratingWithState:&v500 objects:v511 count:16];
      }

      while (v196);
    }

    v497 = 0u;
    v498 = 0u;
    v495 = 0u;
    v496 = 0u;
    v199 = v189;
    v200 = [v199 countByEnumeratingWithState:&v495 objects:&v507 count:16];
    if (v200)
    {
      v201 = *v496;
      do
      {
        for (jj = 0; jj != v200; ++jj)
        {
          if (*v496 != v201)
          {
            objc_enumerationMutation(v199);
          }

          v194[2](v194, *(*(&v495 + 1) + 8 * jj));
        }

        v200 = [v199 countByEnumeratingWithState:&v495 objects:&v507 count:16];
      }

      while (v200);
    }

    _Block_object_dispose(&v482, 8);
    goto LABEL_276;
  }

  if (*location)
  {
    targetProcess2 = *location;
  }

  else
  {
    targetProcess2 = [uTF8String[21] targetProcess];
    uTF8String = selfCopy;
  }

  v204 = uTF8String[21];
  v203 = uTF8String + 21;
  targetProcesses2 = [v204 targetProcesses];
  v206 = [*(selfCopy + 16) taskAggregation] == 3;
  v207 = objc_alloc(MEMORY[0x1E695DF90]);
  tasksByUniquePid = [*v203 tasksByUniquePid];
  v209 = [v207 initWithCapacity:{objc_msgSend(tasksByUniquePid, "count")}];

  v210 = *v203;
  *&v495 = MEMORY[0x1E69E9820];
  *(&v495 + 1) = 3221225472;
  *&v496 = __44__SASamplePrinter_printTasksWithAggregation__block_invoke;
  *(&v496 + 1) = &unk_1E86F7840;
  v468 = targetProcess2;
  *&v497 = v468;
  v461 = targetProcesses2;
  *(&v497 + 1) = v461;
  *&v498 = selfCopy;
  v499 = v206;
  v458 = v209;
  *(&v498 + 1) = v458;
  [v210 enumerateTasks:&v495];
  processSortAttributes2 = [*(selfCopy + 16) processSortAttributes];
  allValues = [v458 allValues];
  *&v482 = MEMORY[0x1E69E9820];
  *(&v482 + 1) = 3221225472;
  *&v483 = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_1486;
  *(&v483 + 1) = &unk_1E86F7868;
  *&v484 = selfCopy;
  v452 = processSortAttributes2;
  *(&v484 + 1) = v452;
  v455 = [allValues sortedArrayUsingComparator:&v482];

  if (!v468)
  {
    goto LABEL_224;
  }

  printJson2 = [*(selfCopy + 16) printJson];
  if (printJson2)
  {
    [*(selfCopy + 8) appendString:@"\n\n\n{"];
  }

  targetDispatchQueueId = [*(selfCopy + 168) targetDispatchQueueId];
  targetThreadId = [*(selfCopy + 168) targetThreadId];
  printTargetThreadOnly = [*(selfCopy + 16) printTargetThreadOnly];
  if (targetDispatchQueueId)
  {
    v217 = 0;
  }

  else
  {
    v217 = printTargetThreadOnly;
  }

  if (v217 != 1 || targetThreadId)
  {
    if (!(targetDispatchQueueId | targetThreadId))
    {
      [(SASamplePrinter *)selfCopy printTask:v468 specialDispatchQueueId:0 specialThreadId:0 omitSpecial:0 omitOther:0];
      goto LABEL_232;
    }

LABEL_226:
    [(SASamplePrinter *)selfCopy printTask:v468 specialDispatchQueueId:targetDispatchQueueId specialThreadId:targetThreadId omitSpecial:0 omitOther:1];
    printTargetThreadOnly2 = [*(selfCopy + 16) printTargetThreadOnly];
    v235 = selfCopy;
    if (printTargetThreadOnly2)
    {
      v236 = *(selfCopy + 168);
      if (!v236 || (*(v236 + 404) & 1) == 0 || !*(selfCopy + 120))
      {
LABEL_233:
        v233 = printJson2 ^ 1;
        if ([*(v235 + 16) printJson])
        {
          [*(selfCopy + 8) appendString:@"}"];
        }

        goto LABEL_235;
      }
    }

    [(SASamplePrinter *)selfCopy printTask:v468 specialDispatchQueueId:targetDispatchQueueId specialThreadId:targetThreadId omitSpecial:1 omitOther:0];
LABEL_232:
    v235 = selfCopy;
    goto LABEL_233;
  }

  mainThread2 = [v468 mainThread];
  targetThreadId = [mainThread2 threadId];

  if (targetThreadId)
  {
    goto LABEL_226;
  }

  v219 = *__error();
  v220 = _sa_logt();
  if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
  {
    v221 = [v468 debugDescription];
    v222 = v221;
    uTF8String4 = [v221 UTF8String];
    *v511 = 136315138;
    v512 = uTF8String4;
    _os_log_error_impl(&dword_1E0E2F000, v220, OS_LOG_TYPE_ERROR, "no target dispatch queue nor thread id, target task %s, but no main thread", v511, 0xCu);
  }

  *__error() = v219;
  v224 = [v468 debugDescription];
  v225 = v224;
  uTF8String5 = [v224 UTF8String];
  _SASetCrashLogMessage(6452, "no target dispatch queue nor thread id, target task %s, but no main thread", v227, v228, v229, v230, v231, v232, uTF8String5);

  _os_crash();
  __break(1u);
LABEL_224:
  v233 = 1;
LABEL_235:
  if (v461)
  {
    if ([*(selfCopy + 16) printJson])
    {
      v237 = selfCopy;
      if ((v233 & 1) == 0)
      {
        [*(selfCopy + 8) appendString:{@", "}];
        v237 = selfCopy;
      }

      [*(v237 + 8) appendString:@"\n\n\n{"];
      v233 = 0;
    }

    v238 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v492 = 0u;
    v493 = 0u;
    v490 = 0u;
    v491 = 0u;
    v239 = v461;
    v240 = [v239 countByEnumeratingWithState:&v490 objects:v511 count:16];
    if (v240)
    {
      v241 = *v491;
      do
      {
        for (kk = 0; kk != v240; ++kk)
        {
          if (*v491 != v241)
          {
            objc_enumerationMutation(v239);
          }

          v243 = *(*(&v490 + 1) + 8 * kk);
          mainBinary = [v243 mainBinary];
          uuid2 = [mainBinary uuid];
          v246 = uuid2;
          if (uuid2)
          {
            null2 = uuid2;
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
          }

          v248 = null2;

          v249 = [v238 objectForKeyedSubscript:v248];
          if (!v249)
          {
            v249 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v238 setObject:v249 forKeyedSubscript:v248];
          }

          [v249 addObject:v243];
        }

        v240 = [v239 countByEnumeratingWithState:&v490 objects:v511 count:16];
      }

      while (v240);
    }

    allValues2 = [v238 allValues];
    v251 = [allValues2 sortedArrayUsingComparator:&__block_literal_global_1492];

    v488 = 0u;
    v489 = 0u;
    v486 = 0u;
    v487 = 0u;
    v252 = v251;
    v253 = [v252 countByEnumeratingWithState:&v486 objects:&v507 count:16];
    if (v253)
    {
      v254 = *v487;
      do
      {
        for (mm = 0; mm != v253; ++mm)
        {
          if (*v487 != v254)
          {
            objc_enumerationMutation(v252);
          }

          [(SASamplePrinter *)selfCopy printMultipleTasks:?];
        }

        v253 = [v252 countByEnumeratingWithState:&v486 objects:&v507 count:16];
      }

      while (v253);
    }

    if ([*(selfCopy + 16) printJson])
    {
      [*(selfCopy + 8) appendString:@"}"];
    }
  }

  v505 = 0u;
  v506 = 0u;
  memset(v504, 0, sizeof(v504));
  v256 = v455;
  v257 = [v256 countByEnumeratingWithState:v504 objects:&v500 count:16];
  if (v257)
  {
    v258 = **&v504[16];
    do
    {
      for (nn = 0; nn != v257; ++nn)
      {
        if (**&v504[16] != v258)
        {
          objc_enumerationMutation(v256);
        }

        v260 = *(*&v504[8] + 8 * nn);
        if ([*(selfCopy + 16) printJson])
        {
          if ((v233 & 1) == 0)
          {
            [*(selfCopy + 8) appendString:{@", "}];
          }

          [*(selfCopy + 8) appendString:@"\n\n\n{"];
          v233 = 0;
        }

        [(SASamplePrinter *)selfCopy printMultipleTasks:v260];
        if ([*(selfCopy + 16) printJson])
        {
          [*(selfCopy + 8) appendString:@"}"];
        }
      }

      v257 = [v256 countByEnumeratingWithState:v504 objects:&v500 count:16];
    }

    while (v257);
  }

LABEL_276:
  uTF8String = selfCopy;
  if ([*(selfCopy + 16) printJson])
  {
    [*(selfCopy + 8) appendString:@"]"];
  }

LABEL_278:
  if (![uTF8String[2] displayFooter])
  {
    goto LABEL_405;
  }

  if ([uTF8String[2] printJson])
  {
    [uTF8String[1] appendString:{@", \n\nsharedcaches:["}];
    v507 = 0u;
    v508 = 0u;
    v509 = 0u;
    v510 = 0u;
    sharedCaches = [uTF8String[21] sharedCaches];
    v262 = [sharedCaches countByEnumeratingWithState:&v507 objects:v511 count:16];
    if (v262)
    {
      v263 = 1;
      v264 = *v508;
      do
      {
        for (i1 = 0; i1 != v262; ++i1)
        {
          if (*v508 != v264)
          {
            objc_enumerationMutation(sharedCaches);
          }

          v266 = *(*(&v507 + 1) + 8 * i1);
          null3 = [MEMORY[0x1E695DFB0] null];
          v268 = null3;
          if (v266 == null3)
          {
          }

          else
          {
            binaryLoadInfos = [v266 binaryLoadInfos];
            v270 = [binaryLoadInfos count] == 0;

            if (!v270)
            {
              if ((v263 & 1) == 0)
              {
                [*(selfCopy + 8) appendString:{@", \n\n"}];
              }

              [*(selfCopy + 8) appendString:@"{"];
              v271 = *(selfCopy + 8);
              uuid3 = [v266 uuid];
              uUIDString2 = [uuid3 UUIDString];
              SAJSONWriteDictionaryFirstEntry(v271, @"uuid", uUIDString2);

              v274 = *(selfCopy + 8);
              v275 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v266, "slide")}];
              SAJSONWriteDictionaryEntry(v274, @"slide", v275);

              v276 = *(selfCopy + 8);
              v277 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v266, "slidBaseAddress")}];
              SAJSONWriteDictionaryEntry(v276, @"slidBaseAddress", v277);

              v278 = *(selfCopy + 8);
              binaryLoadInfos2 = [v266 binaryLoadInfos];
              SAJSONWriteDictionaryEntry(v278, @"binaryLoadInfos", binaryLoadInfos2);

              [*(selfCopy + 8) appendString:@"}"];
              v263 = 0;
            }
          }
        }

        v262 = [sharedCaches countByEnumeratingWithState:&v507 objects:v511 count:16];
      }

      while (v262);
    }

    [*(selfCopy + 8) appendString:@"]\n\n"];
LABEL_404:
    uTF8String = selfCopy;
    goto LABEL_405;
  }

  kextStat = [uTF8String[21] kextStat];

  if (kextStat)
  {
    v281 = *(selfCopy + 8);
    kextStat2 = [*(selfCopy + 168) kextStat];
    [v281 printWithFormat:@"\n\nKextstat:\n%@", kextStat2];
  }

  v283 = selfCopy;
  if ([*(selfCopy + 16) displayAllBinaries])
  {
    v488 = 0u;
    v489 = 0u;
    v486 = 0u;
    v487 = 0u;
    sharedCaches2 = [*(selfCopy + 168) sharedCaches];
    v285 = [sharedCaches2 countByEnumeratingWithState:&v486 objects:&v507 count:16];
    if (!v285)
    {
      goto LABEL_308;
    }

    v286 = *v487;
    while (1)
    {
      for (i2 = 0; i2 != v285; ++i2)
      {
        if (*v487 != v286)
        {
          objc_enumerationMutation(sharedCaches2);
        }

        v288 = *(*(&v486 + 1) + 8 * i2);
        null4 = [MEMORY[0x1E695DFB0] null];
        if (v288 != null4)
        {
          binaryLoadInfos3 = [v288 binaryLoadInfos];
          v291 = [binaryLoadInfos3 count] == 0;

          if (v291)
          {
            continue;
          }

          v292 = *(selfCopy + 8);
          v293 = _shared_cache_display_string(v288);
          [v292 printWithFormat:@"\n\nShared Cache %@:\n", v293];

          null4 = [v288 binaryLoadInfos];
          [(SASamplePrinter *)selfCopy printLoadInfos:null4];
        }
      }

      v285 = [sharedCaches2 countByEnumeratingWithState:&v486 objects:&v507 count:16];
      if (!v285)
      {
LABEL_308:

        v283 = selfCopy;
        break;
      }
    }
  }

  if ([*(v283 + 16) displayTrialInformation])
  {
    activeTrials = [*(selfCopy + 168) activeTrials];
    v295 = activeTrials == 0;

    if (!v295)
    {
      printJson3 = [*(selfCopy + 16) printJson];
      v297 = *(selfCopy + 8);
      if (printJson3)
      {
        activeTrials2 = [*(selfCopy + 168) activeTrials];
        SAJSONWriteDictionaryEntry(v297, @"activeTrials", activeTrials2);
      }

      else
      {
        [*(selfCopy + 8) appendString:@"\n\n"];
        v505 = 0u;
        v506 = 0u;
        memset(v504, 0, sizeof(v504));
        activeTrials3 = [*(selfCopy + 168) activeTrials];
        v463 = [activeTrials3 objectForKeyedSubscript:0x1F5BC2440];

        v299 = [v463 countByEnumeratingWithState:v504 objects:&v500 count:16];
        if (v299)
        {
          v469 = **&v504[16];
          do
          {
            for (i3 = 0; i3 != v299; ++i3)
            {
              if (**&v504[16] != v469)
              {
                objc_enumerationMutation(v463);
              }

              v301 = *(*&v504[8] + 8 * i3);
              v302 = objc_opt_class();
              v303 = objc_opt_class();
              v304 = DictGetDictOfClasses(v301, 0x1F5BC24C0, v302, v303);
              v305 = v304;
              if (v304)
              {
                allKeys2 = [v304 allKeys];
                v307 = [allKeys2 sortedArrayUsingComparator:&__block_literal_global_11];
                v308 = [v307 componentsJoinedByString:{@", "}];
              }

              else
              {
                v308 = 0;
              }

              v309 = DictGetString(v301, 0x1F5BC2480);
              v310 = DictGetString(v301, 0x1F5BC24E0);
              v311 = @"unknown";
              if (v308)
              {
                v311 = v308;
              }

              [*(selfCopy + 8) printWithFormat:@"%-*s%@ (treatment:%@ namespaces:%@)\n", 18, "Trial Experiment: ", v309, v310, v311];
            }

            v299 = [v463 countByEnumeratingWithState:v504 objects:&v500 count:16];
          }

          while (v299);
        }

        v484 = 0u;
        v485 = 0u;
        v482 = 0u;
        v483 = 0u;
        activeTrials4 = [*(selfCopy + 168) activeTrials];
        v464 = [activeTrials4 objectForKeyedSubscript:0x1F5BC2460];

        v313 = [v464 countByEnumeratingWithState:&v482 objects:&v495 count:16];
        if (v313)
        {
          v470 = *v483;
          do
          {
            for (i4 = 0; i4 != v313; ++i4)
            {
              if (*v483 != v470)
              {
                objc_enumerationMutation(v464);
              }

              v315 = *(*(&v482 + 1) + 8 * i4);
              v316 = objc_opt_class();
              v317 = objc_opt_class();
              v318 = DictGetDictOfClasses(v315, 0x1F5BC2540, v316, v317);
              v319 = v318;
              if (v318)
              {
                allKeys3 = [v318 allKeys];
                v321 = [allKeys3 sortedArrayUsingComparator:&__block_literal_global_11];
                v322 = [v321 componentsJoinedByString:{@", "}];
              }

              else
              {
                v322 = 0;
              }

              v323 = DictGetString(v315, 0x1F5BC2500);
              v324 = DictGetString(v315, 0x1F5BC2520);
              v325 = @"none";
              if (v324)
              {
                v325 = v324;
              }

              v326 = @"unknown";
              if (v322)
              {
                v326 = v322;
              }

              [*(selfCopy + 8) printWithFormat:@"%-*s%@ (ramp:%@ namespaces:%@)\n", 18, "Trial Rollout: ", v323, v325, v326];
            }

            v313 = [v464 countByEnumeratingWithState:&v482 objects:&v495 count:16];
          }

          while (v313);
        }
      }
    }
  }

  v327 = *(selfCopy + 168);
  if (v327)
  {
    if (v327[404])
    {
      hidEventDisplayOptions = [*(selfCopy + 16) hidEventDisplayOptions];
      v327 = *(selfCopy + 168);
      if ((hidEventDisplayOptions & 0x18) != 0)
      {
        v492 = 0u;
        v493 = 0u;
        v490 = 0u;
        v491 = 0u;
        hidEvents = [v327 hidEvents];
        v330 = [hidEvents countByEnumeratingWithState:&v490 objects:v511 count:16];
        if (v330)
        {
          v331 = *v491;
          v332 = 1;
          do
          {
            for (i5 = 0; i5 != v330; ++i5)
            {
              if (*v491 != v331)
              {
                objc_enumerationMutation(hidEvents);
              }

              v334 = *(*(&v490 + 1) + 8 * i5);
              if (([*(selfCopy + 16) hidEventDisplayOptions] & 0x10) != 0)
              {
                goto LABEL_436;
              }

              if (([*(selfCopy + 16) hidEventDisplayOptions] & 4) != 0)
              {
                if ([*(selfCopy + 168) targetHIDEventMachAbs])
                {
                  hidEventTimestamp3 = [v334 hidEventTimestamp];
                  machAbsTime2 = [hidEventTimestamp3 machAbsTime];
                  LOBYTE(machAbsTime2) = machAbsTime2 == [*(selfCopy + 168) targetHIDEventMachAbs];

                  if (machAbsTime2)
                  {
                    continue;
                  }
                }
              }

              steps3 = [v334 steps];
              lastObject2 = [steps3 lastObject];
              timestamp5 = [lastObject2 timestamp];
              [timestamp5 machAbsTimeSeconds];
              v342 = v341;
              hidEventTimestamp4 = [v334 hidEventTimestamp];
              [hidEventTimestamp4 machAbsTimeSeconds];
              v345 = v344;

              v337 = v342 - v345;
              if (v342 - v345 >= 0.2)
              {
LABEL_436:
                steps4 = [v334 steps];
                lastObject3 = [steps4 lastObject];
                timestamp6 = [lastObject3 timestamp];
                v349 = [timestamp6 lt:*(selfCopy + 32)];

                if ((v349 & 1) == 0)
                {
                  steps5 = [v334 steps];
                  firstObject = [steps5 firstObject];
                  timestamp7 = [firstObject timestamp];
                  v353 = [timestamp7 gt:*(selfCopy + 40)];

                  if ((v353 & 1) == 0)
                  {
                    v354 = @"\n";
                    if (v332)
                    {
                      hidEventDisplayOptions2 = [*(selfCopy + 16) hidEventDisplayOptions];
                      v354 = @"\n\nAll HID events:\n";
                      if ((hidEventDisplayOptions2 & 0x10) == 0)
                      {
                        if (([*(selfCopy + 16) hidEventDisplayOptions] & 4) == 0 || (v356 = objc_msgSend(*(selfCopy + 168), "targetHIDEventMachAbs"), v354 = @"\n\nOther slow HID events:\n", !v356))
                        {
                          v354 = @"\n\nSlow HID events:\n";
                        }
                      }
                    }

                    [*(selfCopy + 8) appendString:v354];
                    [(SASamplePrinter *)selfCopy printHIDEvent:v334];
                    v332 = 0;
                  }
                }
              }
            }

            v330 = [hidEvents countByEnumeratingWithState:&v490 objects:v511 count:{16, v337}];
          }

          while (v330);
        }

        v327 = *(selfCopy + 168);
      }
    }
  }

  ioEvents = [v327 ioEvents];
  v358 = [ioEvents count] == 0;

  if (v358)
  {
    goto LABEL_399;
  }

  inited = init_io_histograms();
  v490 = 0u;
  v491 = 0u;
  v492 = 0u;
  v493 = 0u;
  ioEvents2 = [*(selfCopy + 168) ioEvents];
  v360 = [ioEvents2 countByEnumeratingWithState:&v490 objects:v511 count:16];
  if (!v360)
  {

    goto LABEL_398;
  }

  v361 = 0;
  v362 = *v491;
  while (2)
  {
    for (i6 = 0; i6 != v360; ++i6)
    {
      if (*v491 != v362)
      {
        objc_enumerationMutation(ioEvents2);
      }

      v364 = *(*(&v490 + 1) + 8 * i6);
      endTimestamp = [v364 endTimestamp];
      if (([*(selfCopy + 32) gt:endTimestamp] & 1) == 0)
      {
        if ([*(selfCopy + 40) lt:endTimestamp])
        {

          goto LABEL_388;
        }

        startTimestamp = [v364 startTimestamp];
        [endTimestamp machContTimeSeconds];
        if (v367 == 0.0 || ([startTimestamp machContTimeSeconds], v368 == 0.0))
        {
          [endTimestamp machAbsTimeSeconds];
          if (v372 == 0.0 || ([startTimestamp machAbsTimeSeconds], v373 == 0.0))
          {
            [endTimestamp wallTime];
            if (v375 == 0.0 || ([startTimestamp wallTime], v376 == 0.0))
            {
              v378 = 0;
              goto LABEL_383;
            }

            [endTimestamp wallTime];
            v370 = v377;
            [startTimestamp wallTime];
          }

          else
          {
            [endTimestamp machAbsTimeSeconds];
            v370 = v374;
            [startTimestamp machAbsTimeSeconds];
          }
        }

        else
        {
          [endTimestamp machContTimeSeconds];
          v370 = v369;
          [startTimestamp machContTimeSeconds];
        }

        v378 = ((v370 - v371) * 1000000.0);
LABEL_383:
        update_histograms_stats(inited, [v364 tier], objc_msgSend(v364, "size"), v378, objc_msgSend(v364, "isRead"));

        v361 = 1;
      }
    }

    v360 = [ioEvents2 countByEnumeratingWithState:&v490 objects:v511 count:16];
    if (v360)
    {
      continue;
    }

    break;
  }

LABEL_388:
  if (v361)
  {
    v379 = malloc_type_calloc(1uLL, 0x2000uLL, 0xE506F256uLL);
    if (print_io_histograms(inited, v379, 0x2000))
    {
      LODWORD(v380) = 0x2000;
      while (1)
      {
        free(v379);
        v380 = (2 * v380);
        if (v380 > 0x20000)
        {
          break;
        }

        v379 = malloc_type_calloc(1uLL, v380, 0x5C25DE1DuLL);
        if (!print_io_histograms(inited, v379, v380))
        {
          goto LABEL_393;
        }
      }

      LODWORD(v381) = *__error();
      v1 = _sa_logt();
      if (!os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
      {
LABEL_397:

        *__error() = v381;
        goto LABEL_398;
      }

LABEL_424:
      *v475 = 0;
      _os_log_fault_impl(&dword_1E0E2F000, v1, OS_LOG_TYPE_FAULT, "io histograms don't fit in 128KB", v475, 2u);
      goto LABEL_397;
    }

LABEL_393:
    if (v379)
    {
      [*(selfCopy + 8) printWithFormat:@"\n\n%s\n", v379];
      free(v379);
    }
  }

LABEL_398:
  free(inited);
LABEL_399:
  uTF8String = selfCopy;
  if (*(selfCopy + 48) == 1)
  {
    v382 = *(selfCopy + 168);
    v383 = *(selfCopy + 56);
    v384 = *(selfCopy + 64);
    forceOneBasedTimeIndexes = [*(selfCopy + 16) forceOneBasedTimeIndexes];
    v386 = v383 + 1;
    uTF8String = selfCopy;
    if (forceOneBasedTimeIndexes)
    {
      v386 -= *(selfCopy + 56);
    }

    if (v382)
    {
      [(SAWSUpdateDataStore *)v382[19] printFrameRateReportWithStartSampleIndex:v383 endSampleIndex:v384 startDisplayIndex:v386 sampleDataStore:v382 toStream:*(selfCopy + 8)];
      goto LABEL_404;
    }
  }

LABEL_405:
  customOutput = [uTF8String[21] customOutput];

  v388 = selfCopy;
  if (customOutput)
  {
    printJson4 = [*(selfCopy + 16) printJson];
    v390 = *(selfCopy + 8);
    if (printJson4)
    {
      customOutput2 = [*(selfCopy + 168) customOutput];
      SAJSONWriteDictionaryEntry(v390, @"customOutput", customOutput2);
    }

    else
    {
      [*(selfCopy + 8) printWithFormat:@"\n\nCustom Output:\n"];
      v392 = *(selfCopy + 8);
      customOutput2 = [*(selfCopy + 168) customOutput];
      [v392 appendString:customOutput2];
    }

    v388 = selfCopy;
  }

  if ([*(v388 + 16) printJson])
  {
    [*(v388 + 8) appendString:@"}"];
  }

  if (*(v388 + 112) == 1 && (*(v388 + 113) & 1) == 0)
  {
    v393 = *__error();
    v394 = _sa_logt();
    if (os_log_type_enabled(v394, OS_LOG_TYPE_FAULT))
    {
      v471 = [*(selfCopy + 16) debugDescription];
      targetProcessId = [*(selfCopy + 168) targetProcessId];
      targetProcess3 = [*(selfCopy + 168) targetProcess];
      v399 = [targetProcess3 debugDescription];
      targetThreadId2 = [*(selfCopy + 168) targetThreadId];
      targetProcess4 = [*(selfCopy + 168) targetProcess];
      threads3 = [targetProcess4 threads];
      v403 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(selfCopy + 168), "targetThreadId")}];
      v404 = [threads3 objectForKeyedSubscript:v403];
      *v511 = 138544386;
      v512 = v471;
      v513 = 1024;
      v514 = targetProcessId;
      v515 = 2114;
      v516 = v399;
      v517 = 2048;
      v518 = targetThreadId2;
      v519 = 2114;
      v520 = v404;
      _os_log_fault_impl(&dword_1E0E2F000, v394, OS_LOG_TYPE_FAULT, "Hit 65324447!\noptions: %{public}@\ntargetTask %d: %{public}@\ntargetThread 0x%llx: %{public}@", v511, 0x30u);
    }

    *__error() = v393;
  }

  v395 = +[SABinaryLocator sharedBinaryLocator];
  v396 = v395;
  if (v395 && v395[25] == 1)
  {
    [(SABinaryLocator *)v395 _saveMappings];
  }

  [v396 done];

LABEL_12:
  objc_autoreleasePoolPop(context);
LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
}

void __29__SASamplePrinter_preprocess__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = [(SASamplePrinter *)*(a1 + 32) binaryImagesHitByTask:a2];
    if ([*(v2 + 16) displayAllBinaries])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v5 = [a2 binaryLoadInfos];
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v20;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v19 + 1) + 8 * i);
            if ([v10 loadAddress])
            {
              v11 = [SASamplePrinter displayedBinaryLoadInfoForLoadInfo:v2 offsetIntoLoadInfo:v10 binariesToDisplay:0 extraBinariesToDisplay:v4];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);
      }
    }

    v12 = *(v2 + 16);
    if (v12)
    {
      v13 = *(v12 + 168);
      if (v13 != 1 && (v13 || *(v12 + 11) == 1))
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __34__SASamplePrinter_preprocessTask___block_invoke;
        v17[3] = &unk_1E86F76B0;
        v17[4] = a2;
        v17[5] = v2;
        v14 = v4;
        v18 = v14;
        [(SATask *)a2 enumerateFrames:v17];
        v15 = [(SASamplePrinter *)v2 sortedLoadInfosForBinaryImages:v14];
        [(SASamplePrinter *)v2 avoidOverlapInBinaryLoadInfos:v15 onlyExclaves:0 inTask:a2];
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (uint64_t)checkForBadOptions
{
  v124 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v14 = 0;
    goto LABEL_28;
  }

  if ([*(self + 16) callTreeAggregation] >= 4)
  {
    v9 = *(self + 8);
    if (!v9)
    {
      v12 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        callTreeAggregation = [*(self + 16) callTreeAggregation];
        *buf = 134217984;
        *&buf[4] = callTreeAggregation;
        _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "unknown callTreeAggregation %llu", buf, 0xCu);
      }

      goto LABEL_26;
    }

    callTreeAggregation2 = [*(self + 16) callTreeAggregation];
    v10 = @"unknown callTreeAggregation %llu";
  }

  else
  {
    if ([*(self + 16) swiftAsyncCallTreeAggregation] < 6)
    {
      v2 = *(self + 16);
      if (!v2 || (v3 = *(v2 + 168), v3 == 1) || !v3 && *(v2 + 11) != 1 || (v4 = *(v2 + 152), v4 == 3) || !v4 && (*(v2 + 11) & 1) != 0)
      {
        targetProcess = [*(self + 168) targetProcess];
        targetProcesses = [*(self + 168) targetProcesses];
        v7 = targetProcesses;
        if (targetProcess && targetProcesses)
        {
          v8 = *(self + 8);
          if (v8)
          {
            [v8 printWithFormat:@"Cannot target a single task and multiple tasks at the same time"];
          }

          else
          {
            v28 = *__error();
            v29 = _sa_logt();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, "Cannot target a single task and multiple tasks at the same time", buf, 2u);
            }

            *__error() = v28;
          }

          v14 = 1;
          goto LABEL_110;
        }

        if ([*(self + 168) targetDispatchQueueId])
        {
          if (targetProcess)
          {
            dispatchQueues = [targetProcess dispatchQueues];
            v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(self + 168), "targetDispatchQueueId")}];
            v19 = [dispatchQueues objectForKeyedSubscript:v18];

            if (v19)
            {
              if (![*(self + 168) targetThreadId])
              {
                goto LABEL_55;
              }

LABEL_39:
              threads = [targetProcess threads];
              v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(self + 168), "targetThreadId")}];
              v108 = [threads objectForKeyedSubscript:v21];

              if (!v108)
              {
                v35 = *(self + 8);
                if (v35)
                {
                  targetThreadId = [*(self + 168) targetThreadId];
                  v37 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                  [v35 printWithFormat:@"targeting thread 0x%llx in %@ but no such thread found", targetThreadId, v37];
                }

                else
                {
                  v57 = *__error();
                  v58 = _sa_logt();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    targetThreadId2 = [*(self + 168) targetThreadId];
                    v84 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                    *buf = 134218242;
                    *&buf[4] = targetThreadId2;
                    *&buf[12] = 2112;
                    *&buf[14] = v84;
                    _os_log_error_impl(&dword_1E0E2F000, v58, OS_LOG_TYPE_ERROR, "targeting thread 0x%llx in %@ but no such thread found", buf, 0x16u);
                  }

                  *__error() = v57;
                }

                v113 = 1;

                goto LABEL_109;
              }

              if (v19)
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                LOBYTE(v121) = 0;
                v22 = *(self + 32);
                v23 = *(self + 40);
                v24 = *(self + 56);
                v25 = *(self + 64);
                v110[0] = MEMORY[0x1E69E9820];
                v110[1] = 3221225472;
                v110[2] = __37__SASamplePrinter_checkForBadOptions__block_invoke;
                v110[3] = &unk_1E86F5D58;
                v19 = v19;
                v111 = v19;
                v112 = buf;
                [v108 enumerateThreadStatesBetweenStartTime:v22 startSampleIndex:v24 endTime:v23 endSampleIndex:v25 reverseOrder:0 block:v110];
                if ((*(*&buf[8] + 24) & 1) == 0)
                {
                  v54 = *(self + 8);
                  if (v54)
                  {
                    [v54 printWithFormat:@"Target dispatch queue %llu never runs on target thread 0x%llx", objc_msgSend(v19, "identifier"), objc_msgSend(v108, "threadId")];
                  }

                  else
                  {
                    v64 = *__error();
                    v65 = _sa_logt();
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                    {
                      identifier = [v19 identifier];
                      threadId = [v108 threadId];
                      *v118 = 134218240;
                      *&v118[4] = identifier;
                      *&v118[12] = 2048;
                      *&v118[14] = threadId;
                      _os_log_error_impl(&dword_1E0E2F000, v65, OS_LOG_TYPE_ERROR, "Target dispatch queue %llu never runs on target thread 0x%llx", v118, 0x16u);
                    }

                    *__error() = v64;
                  }

                  v113 = 1;

                  _Block_object_dispose(buf, 8);
                  goto LABEL_109;
                }

                _Block_object_dispose(buf, 8);
                v26 = 1;
                v27 = 1;
              }

              else
              {
                v27 = 0;
                v26 = 1;
              }

LABEL_64:
              targetMainBinaryUUID = [*(self + 168) targetMainBinaryUUID];
              v42 = targetMainBinaryUUID == 0;

              if (!v42 && v7 == 0)
              {
                v46 = *(self + 8);
                if (v46)
                {
                  targetMainBinaryUUID2 = [*(self + 168) targetMainBinaryUUID];
                  [v46 printWithFormat:@"targeting main binary %@, but no target tasks", targetMainBinaryUUID2];
                }

                else
                {
                  v51 = *__error();
                  v52 = _sa_logt();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    targetMainBinaryUUID3 = [*(self + 168) targetMainBinaryUUID];
                    *buf = 138412290;
                    *&buf[4] = targetMainBinaryUUID3;
                    _os_log_error_impl(&dword_1E0E2F000, v52, OS_LOG_TYPE_ERROR, "targeting main binary %@, but no target tasks", buf, 0xCu);
                  }

                  *__error() = v51;
                }

                goto LABEL_196;
              }

              if ([*(self + 168) targetHIDEventMachAbs] || objc_msgSend(*(self + 168), "targetHIDEventEndMachAbs"))
              {
                targetProcesses2 = [*(self + 168) targetProcesses];
                v44 = targetProcesses2 == 0;

                if (!v44)
                {
                  v45 = *(self + 8);
                  if (v45)
                  {
                    [v45 printWithFormat:@"targeting a HID event while targeting multiple processes"];
LABEL_196:
                    v113 = 1;

                    goto LABEL_109;
                  }

                  v62 = *__error();
                  v63 = _sa_logt();
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_ERROR, "targeting a HID event while targeting multiple processes", buf, 2u);
                  }

                  goto LABEL_195;
                }
              }

              if ([*(self + 16) printHeavyStacks])
              {
LABEL_73:
                if (((v26 | v27 | [*(self + 16) printTargetThreadOnly] ^ 1) & 1) == 0)
                {
                  if (targetProcess)
                  {
                    mainThread = [targetProcess mainThread];
                    v49 = mainThread == 0;

                    if (!v49)
                    {
                      goto LABEL_76;
                    }

                    v72 = *(self + 8);
                    if (v72)
                    {
                      v73 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                      [v72 printWithFormat:@"printTargetThreadOnly, but target task %@ has no main thread", v73];
                    }

                    else
                    {
                      v86 = *__error();
                      v87 = _sa_logt();
                      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                      {
                        v102 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                        *buf = 138412290;
                        *&buf[4] = v102;
                        _os_log_error_impl(&dword_1E0E2F000, v87, OS_LOG_TYPE_ERROR, "printTargetThreadOnly, but target task %@ has no main thread", buf, 0xCu);
                      }

                      *__error() = v86;
                    }
                  }

                  else
                  {
                    v68 = *(self + 8);
                    if (v68)
                    {
                      [v68 printWithFormat:@"printTargetThreadOnly, but no target task provided"];
                    }

                    else
                    {
                      v78 = *__error();
                      v79 = _sa_logt();
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1E0E2F000, v79, OS_LOG_TYPE_ERROR, "printTargetThreadOnly, but no target task provided", buf, 2u);
                      }

                      *__error() = v78;
                    }
                  }

                  v113 = 1;

                  goto LABEL_109;
                }

LABEL_76:
                if ([*(self + 16) systemstatsFormat])
                {
                  if ([*(self + 16) printJson])
                  {
                    v50 = *(self + 8);
                    if (v50)
                    {
                      [v50 printWithFormat:@"printJson not supported with systemstatsFormat"];
LABEL_178:
                      v113 = 1;

                      goto LABEL_109;
                    }

                    v80 = *__error();
                    v81 = _sa_logt();
                    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E0E2F000, v81, OS_LOG_TYPE_ERROR, "printJson not supported with systemstatsFormat", buf, 2u);
                    }

                    goto LABEL_177;
                  }

                  if ([*(self + 16) displayIOInCallTrees])
                  {
                    v69 = *(self + 8);
                    if (v69)
                    {
                      [v69 printWithFormat:@"displayIOInCallTrees not supported with systemstatsFormat"];
                      goto LABEL_178;
                    }

                    v80 = *__error();
                    v81 = _sa_logt();
                    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E0E2F000, v81, OS_LOG_TYPE_ERROR, "displayIOInCallTrees not supported with systemstatsFormat", buf, 2u);
                    }

LABEL_177:

                    *__error() = v80;
                    goto LABEL_178;
                  }

                  if ([*(self + 16) callTreeTimestampsTimeDomain] && objc_msgSend(*(self + 16), "callTreeTimestampsTimeDomain") != 1)
                  {
                    v92 = *(self + 8);
                    if (v92)
                    {
                      [v92 printWithFormat:@"callTreeTimestampsTimeDomain time domains other than kSATimeDomainWallTime not supported with systemstatsFormat"];
                      goto LABEL_178;
                    }

                    v80 = *__error();
                    v81 = _sa_logt();
                    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E0E2F000, v81, OS_LOG_TYPE_ERROR, "callTreeTimestampsTimeDomain time domains other than kSATimeDomainWallTime not supported with systemstatsFormat", buf, 2u);
                    }

                    goto LABEL_177;
                  }
                }

                if ([*(self + 16) swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways] && objc_msgSend(*(self + 16), "swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways"))
                {
                  v75 = *(self + 8);
                  if (v75)
                  {
                    [v75 printWithFormat:@"swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways and swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways both set"];
                    goto LABEL_178;
                  }

                  v80 = *__error();
                  v81 = _sa_logt();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1E0E2F000, v81, OS_LOG_TYPE_ERROR, "swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways and swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways both set", buf, 2u);
                  }

                  goto LABEL_177;
                }

                v113 = 0;

LABEL_109:
                v14 = v113;
LABEL_110:

                goto LABEL_28;
              }

              if ((*(self + 48) & 1) == 0)
              {
                v66 = *(self + 8);
                if (v66)
                {
                  [v66 printWithFormat:@"cannot display timeline format without time indexes"];
                  goto LABEL_196;
                }

                v62 = *__error();
                v63 = _sa_logt();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_ERROR, "cannot display timeline format without time indexes", buf, 2u);
                }

                goto LABEL_195;
              }

              if (([*(self + 16) displayBlockedThreads] & 1) == 0)
              {
                v67 = *(self + 8);
                if (v67)
                {
                  [v67 printWithFormat:@"cannot display timeline format without displaying blocked threads"];
                  goto LABEL_196;
                }

                v62 = *__error();
                v63 = _sa_logt();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_ERROR, "cannot display timeline format without displaying blocked threads", buf, 2u);
                }

                goto LABEL_195;
              }

              if (([*(self + 16) displayRunnableThreads] & 1) == 0)
              {
                v70 = *(self + 8);
                if (v70)
                {
                  [v70 printWithFormat:@"cannot display timeline format without displaying runnable threads"];
                  goto LABEL_196;
                }

                v62 = *__error();
                v63 = _sa_logt();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_ERROR, "cannot display timeline format without displaying runnable threads", buf, 2u);
                }

                goto LABEL_195;
              }

              if (([*(self + 16) displayRunningThreads] & 1) == 0)
              {
                v82 = *(self + 8);
                if (v82)
                {
                  [v82 printWithFormat:@"cannot display timeline format without displaying running threads"];
                  goto LABEL_196;
                }

                v62 = *__error();
                v63 = _sa_logt();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_ERROR, "cannot display timeline format without displaying running threads", buf, 2u);
                }

                goto LABEL_195;
              }

              v59 = *(self + 16);
              if (v59)
              {
                v60 = *(v59 + 152);
                if (v60 == 3 || !v60 && *(v59 + 11) == 1)
                {
                  v61 = *(self + 8);
                  if (v61)
                  {
                    [v61 printWithFormat:@"conflicting display options: kSAAggregateCallTreesByProcess and !printHeavyStacks"];
                    goto LABEL_196;
                  }

                  v62 = *__error();
                  v63 = _sa_logt();
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_ERROR, "conflicting display options: kSAAggregateCallTreesByProcess and !printHeavyStacks", buf, 2u);
                  }

LABEL_195:

                  *__error() = v62;
                  goto LABEL_196;
                }

                v88 = *(v59 + 160);
                if (v88)
                {
                  if (v88 != 2)
                  {
                    if (v88 == 4)
                    {
                      v89 = *(self + 8);
                      if (v89)
                      {
                        [v89 printWithFormat:@"conflicting display options: kSAAggregateSwiftAsyncCallTreesByProcess and !printHeavyStacks"];
                        goto LABEL_196;
                      }

                      v62 = *__error();
                      v63 = _sa_logt();
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_ERROR, "conflicting display options: kSAAggregateSwiftAsyncCallTreesByProcess and !printHeavyStacks", buf, 2u);
                      }

                      goto LABEL_195;
                    }

                    goto LABEL_182;
                  }

LABEL_180:
                  v93 = *(self + 8);
                  if (v93)
                  {
                    [v93 printWithFormat:@"conflicting display options: kSAAggregateSwiftAsyncCallTreesByBaseFunction and !printHeavyStacks"];
                    goto LABEL_196;
                  }

                  v62 = *__error();
                  v63 = _sa_logt();
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_ERROR, "conflicting display options: kSAAggregateSwiftAsyncCallTreesByBaseFunction and !printHeavyStacks", buf, 2u);
                  }

                  goto LABEL_195;
                }

                if (*(v59 + 14) == 1)
                {
                  goto LABEL_180;
                }
              }

LABEL_182:
              if (v19)
              {
                v94 = v26;
              }

              else
              {
                v94 = 1;
              }

              if ((v94 & 1) == 0 && [v19 hasConcurrentExecution])
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v121 = __Block_byref_object_copy__4;
                v122 = __Block_byref_object_dispose__4;
                v123 = 0;
                *v118 = 0;
                *&v118[8] = v118;
                *&v118[16] = 0x2020000000;
                v119 = 0;
                v95 = *(self + 32);
                v96 = *(self + 40);
                v97 = *(self + 56);
                v98 = *(self + 64);
                v109[0] = MEMORY[0x1E69E9820];
                v109[1] = 3221225472;
                v109[2] = __37__SASamplePrinter_checkForBadOptions__block_invoke_382;
                v109[3] = &unk_1E86F7460;
                v109[4] = buf;
                v109[5] = v118;
                [(SARecipe *)v19 enumerateStatesBetweenStartTime:v95 startSampleIndex:v97 endTime:v96 endSampleIndex:v98 reverseOrder:0 block:v109];
                if (*(*&v118[8] + 24) == 1)
                {
                  v99 = *(self + 8);
                  if (v99)
                  {
                    v100 = [SASamplePrinter displayNameForDispatchQueue:v19];
                    v101 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                    [v99 printWithFormat:@"cannot display timeline format with concurrent target dispatch queue %@ in %@", v100, v101];
                  }

                  else
                  {
                    v103 = *__error();
                    v104 = _sa_logt();
                    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                    {
                      v105 = [SASamplePrinter displayNameForDispatchQueue:v19];
                      v106 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                      *v114 = 138412546;
                      v115 = v105;
                      v116 = 2112;
                      v117 = v106;
                      _os_log_error_impl(&dword_1E0E2F000, v104, OS_LOG_TYPE_ERROR, "cannot display timeline format with concurrent target dispatch queue %@ in %@", v114, 0x16u);
                    }

                    *__error() = v103;
                  }

                  v113 = 1;
                  _Block_object_dispose(v118, 8);
                  _Block_object_dispose(buf, 8);

                  goto LABEL_109;
                }

                _Block_object_dispose(v118, 8);
                _Block_object_dispose(buf, 8);
              }

              goto LABEL_73;
            }

            v31 = *(self + 8);
            if (v31)
            {
              targetDispatchQueueId = [*(self + 168) targetDispatchQueueId];
              v33 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
              [v31 printWithFormat:@"targeting dispatch queue %llu in %@ but no such dispatch queue found", targetDispatchQueueId, v33];
            }

            else
            {
              v55 = *__error();
              v56 = _sa_logt();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                targetDispatchQueueId2 = [*(self + 168) targetDispatchQueueId];
                v77 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                *buf = 134218242;
                *&buf[4] = targetDispatchQueueId2;
                *&buf[12] = 2112;
                *&buf[14] = v77;
                _os_log_error_impl(&dword_1E0E2F000, v56, OS_LOG_TYPE_ERROR, "targeting dispatch queue %llu in %@ but no such dispatch queue found", buf, 0x16u);
              }

              *__error() = v55;
            }

LABEL_108:
            v113 = 1;
            goto LABEL_109;
          }

          v30 = *(self + 8);
          if (v30)
          {
            [v30 printWithFormat:@"targeting dispatch queue %llu, but no target task", objc_msgSend(*(self + 168), "targetDispatchQueueId")];
            goto LABEL_108;
          }

          v39 = *__error();
          v40 = _sa_logt();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            targetDispatchQueueId3 = [*(self + 168) targetDispatchQueueId];
            *buf = 134217984;
            *&buf[4] = targetDispatchQueueId3;
            _os_log_error_impl(&dword_1E0E2F000, v40, OS_LOG_TYPE_ERROR, "targeting dispatch queue %llu, but no target task", buf, 0xCu);
          }
        }

        else
        {
          if (![*(self + 168) targetThreadId])
          {
            v19 = 0;
LABEL_55:
            v26 = 0;
            v108 = 0;
            v27 = v19 != 0;
            goto LABEL_64;
          }

          if (targetProcess)
          {
            v19 = 0;
            goto LABEL_39;
          }

          v38 = *(self + 8);
          if (v38)
          {
            [v38 printWithFormat:@"targeting thread 0x%llx, but no target task", objc_msgSend(*(self + 168), "targetThreadId")];
            goto LABEL_108;
          }

          v39 = *__error();
          v40 = _sa_logt();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            targetThreadId3 = [*(self + 168) targetThreadId];
            *buf = 134217984;
            *&buf[4] = targetThreadId3;
            _os_log_error_impl(&dword_1E0E2F000, v40, OS_LOG_TYPE_ERROR, "targeting thread 0x%llx, but no target task", buf, 0xCu);
          }
        }

        *__error() = v39;
        goto LABEL_108;
      }

      v11 = *(self + 8);
      if (v11)
      {
        v10 = @"conflicting display options: aggregation of multiple task instances requires kSAAggregateCallTreesByProcess";
        goto LABEL_20;
      }

      v12 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "conflicting display options: aggregation of multiple task instances requires kSAAggregateCallTreesByProcess", buf, 2u);
      }

LABEL_26:

      *__error() = v12;
      goto LABEL_27;
    }

    v9 = *(self + 8);
    if (!v9)
    {
      v12 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        callTreeAggregation3 = [*(self + 16) callTreeAggregation];
        *buf = 134217984;
        *&buf[4] = callTreeAggregation3;
        _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "unknown swiftAsyncCallTreeAggregation %llu", buf, 0xCu);
      }

      goto LABEL_26;
    }

    callTreeAggregation2 = [*(self + 16) callTreeAggregation];
    v10 = @"unknown swiftAsyncCallTreeAggregation %llu";
  }

  v11 = v9;
LABEL_20:
  [v11 printWithFormat:v10, callTreeAggregation2];
LABEL_27:
  v14 = 1;
LABEL_28:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void __37__SASamplePrinter_calculateTimeJumps__block_invoke(uint64_t a1, id obj, uint64_t a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    if (-[SASamplePrinter timeSpentAsleepBetweenStartTimestamp:endTimestamp:](*(a1 + 32), v5, obj) > 0.0 || (v9 = *(a1 + 32)) != 0 && *(v9 + 96) > 0.0 && (v10 = *(*(*(a1 + 40) + 8) + 40), [obj machAbsTimeSeconds], v12 = v11, objc_msgSend(v10, "machAbsTimeSeconds"), v12 - v13 >= *(v9 + 96) * 10.0))
    {
      v7 = *(*(a1 + 32) + 104);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v7 addObject:v8];
    }
  }

  v14 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v14, obj);
}

- (void)printHeader
{
  v1 = MEMORY[0x1EEE9AC00]();
  v1684 = *MEMORY[0x1E69E9840];
  v1542 = v1;
  printJson = [*(v1 + 16) printJson];
  if (printJson)
  {
    v2 = *(v1 + 8);
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:67];
    SAJSONWriteDictionaryFirstEntry(v2, @"reportVersion", v3);

    v1 = v1542;
  }

  eventStartTimeWithWallTime = [(SASamplePrinter *)v1 eventStartTimeWithWallTime];
  if (eventStartTimeWithWallTime && ([*(v1542 + 16) omitAbsoluteWallTimes] & 1) == 0)
  {
    v21 = *(v1542 + 8);
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(*(v1542 + 8), @"startTime", eventStartTimeWithWallTime);
    }

    else
    {
      [eventStartTimeWithWallTime wallTime];
      v23 = v22;
      if ([*(v1542 + 16) displayDetailedWallTime])
      {
        v25 = 9;
      }

      else
      {
        v25 = 3;
      }

      v24.i64[0] = v23;
      v1384 = _CopyStringForTime(v25, v24);
      LOBYTE(v1379) = 18;
      [v21 printWithFormat:@"%-*s%@\n"];
    }
  }

  else
  {
    [*(v1542 + 8) printWithFormat:@"%-*sUNKNOWN\n", 18, "Date/Time: "];
  }

  eventEndTimeWithWallTime = [(SASamplePrinter *)v1542 eventEndTimeWithWallTime];
  v4 = eventStartTimeWithWallTime == 0;
  if (!eventEndTimeWithWallTime)
  {
    v4 = 1;
  }

  if (v4 || ([eventEndTimeWithWallTime wallTime], v6 = v5, objc_msgSend(eventStartTimeWithWallTime, "wallTime"), v6 <= v7) || (objc_msgSend(*(v1542 + 16), "omitAbsoluteWallTimes") & 1) != 0)
  {
    if (printJson)
    {
      goto LABEL_12;
    }

LABEL_32:
    v32 = (v1542 + 168);
    osProductName = [*(v1542 + 168) osProductName];
    v34 = osProductName;
    v35 = @"???";
    if (osProductName)
    {
      v35 = osProductName;
    }

    osBuildVersion3 = v35;

    osProductVersion = [*v32 osProductVersion];
    v37 = osProductVersion;
    v38 = @"???";
    if (osProductVersion)
    {
      v38 = osProductVersion;
    }

    v39 = v38;

    osBuildVersion = [*v32 osBuildVersion];
    v41 = osBuildVersion;
    v42 = @"???";
    if (osBuildVersion)
    {
      v42 = osBuildVersion;
    }

    v43 = v42;

    v18 = v1542;
    [*(v1542 + 8) printWithFormat:@"%-*s%@ %@", 18, "OS Version: ", osBuildVersion3, v39];
    LOBYTE(v1379) = v43;
    [*(v1542 + 8) printWithFormat:@" (Build %@)\n"];

    goto LABEL_39;
  }

  v26 = *(v1542 + 8);
  if (!printJson)
  {
    [eventEndTimeWithWallTime wallTime];
    v28 = v27;
    if ([*(v1542 + 16) displayDetailedWallTime])
    {
      v30 = 9;
    }

    else
    {
      v30 = 3;
    }

    v29.i64[0] = v28;
    v31 = _CopyStringForTime(v30, v29);
    [v26 printWithFormat:@"%-*s%@\n", 18, "End time: ", v31];

    goto LABEL_32;
  }

  SAJSONWriteDictionaryEntry(*(v1542 + 8), @"endTime", eventEndTimeWithWallTime);
LABEL_12:
  osProductName2 = [*(v1542 + 168) osProductName];

  if (osProductName2)
  {
    v9 = *(v1542 + 8);
    osProductName3 = [*(v1542 + 168) osProductName];
    SAJSONWriteDictionaryEntry(v9, @"osProductName", osProductName3);
  }

  osProductVersion2 = [*(v1542 + 168) osProductVersion];

  if (osProductVersion2)
  {
    v12 = *(v1542 + 8);
    osProductVersion3 = [*(v1542 + 168) osProductVersion];
    SAJSONWriteDictionaryEntry(v12, @"osProductVersion", osProductVersion3);
  }

  osProductVersionExtra = [*(v1542 + 168) osProductVersionExtra];

  if (osProductVersionExtra)
  {
    v15 = *(v1542 + 8);
    osProductVersionExtra2 = [*(v1542 + 168) osProductVersionExtra];
    SAJSONWriteDictionaryEntry(v15, @"osProductVersionExtra", osProductVersionExtra2);
  }

  osBuildVersion2 = [*(v1542 + 168) osBuildVersion];

  v18 = v1542;
  if (osBuildVersion2)
  {
    v19 = *(v1542 + 8);
    osBuildVersion3 = [*(v1542 + 168) osBuildVersion];
    SAJSONWriteDictionaryEntry(v19, @"osBuildVersion", osBuildVersion3);
    v18 = v1542;
LABEL_39:
  }

  v1488 = (v18 + 168);
  machineArchitecture = [*(v18 + 168) machineArchitecture];
  v1430 = machineArchitecture;
  if (machineArchitecture && [machineArchitecture length])
  {
    v45 = v1542;
    v46 = *(v1542 + 8);
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v46, @"arch", v1430);
      goto LABEL_49;
    }

    [v46 printWithFormat:@"%-*s%@\n", 18, "Architecture: ", v1430];
  }

  else
  {
    v45 = v1542;
    if (printJson)
    {
      goto LABEL_49;
    }
  }

  [*(v45 + 8) printWithFormat:@"%-*s%d\n", 18, "Report Version: ", 67];
  if ([*(v45 + 16) systemstatsFormat])
  {
    LOBYTE(v1379) = 18;
    [*(v45 + 8) printWithFormat:@"%-*scondensed\n"];
  }

LABEL_49:
  v47 = *(v45 + 184);
  if (!v47)
  {
    if ((*(v45 + 160) & 1) == 0)
    {
      v51 = (v18 + 168);
      if (printJson)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    v51 = (v18 + 168);
    if (printJson)
    {
      goto LABEL_55;
    }

    goto LABEL_57;
  }

  v48 = *(v45 + 8);
  uUIDString = [v47 UUIDString];
  v50 = uUIDString;
  if ((printJson & 1) == 0)
  {
    LOBYTE(v1379) = 18;
    [v48 printWithFormat:@"%-*s%@\n"];

    v45 = v1542;
    v51 = (v18 + 168);
    if ((*(v1542 + 160) & 1) == 0)
    {
LABEL_59:
      [*(v45 + 8) appendString:@"\n"];
      goto LABEL_60;
    }

LABEL_57:
    [*(v45 + 8) printWithFormat:@"%-*sYes\n", 18, "Share With Devs: "];
    goto LABEL_59;
  }

  SAJSONWriteDictionaryEntry(v48, @"incidentIdentifier", uUIDString);

  v45 = v1542;
  v51 = (v18 + 168);
  if (*(v1542 + 160))
  {
LABEL_55:
    SAJSONWriteDictionaryEntry(*(v45 + 8), @"shareWithAppDevs", MEMORY[0x1E695E118]);
  }

LABEL_60:
  if ([*v51 dataSource])
  {
    dataSource = [*v51 dataSource];
    v53 = dataSource & 1;
    v54 = v1672;
    if (dataSource)
    {
      strcpy(v1672, "Stackshots");
      v54 = &v1672[10];
    }

    if (([*v51 dataSource] & 2) != 0)
    {
      if (dataSource)
      {
        v54 += __snprintf_chk(v54, &v1673 - v54, 0, 0x80uLL, ", ");
        v51 = v1488;
      }

      v54 += snprintf(v54, &v1673 - v54, "KPerf Lightweight PET");
      v53 = 1;
    }

    if (([*v51 dataSource] & 4) != 0)
    {
      v55 = v1488;
      if (v53)
      {
        v54 += snprintf(v54, &v1673 - v54, ", ");
      }

      v54 += snprintf(v54, &v1673 - v54, "Microstackshots");
      v53 = 1;
    }

    else
    {
      v55 = v1488;
    }

    if (([*v55 dataSource] & 8) != 0)
    {
      v56 = v1488;
      if (v53)
      {
        v54 += snprintf(v54, &v1673 - v54, ", ");
      }

      v54 += snprintf(v54, &v1673 - v54, "KPerf non-PET");
      v53 = 1;
    }

    else
    {
      v56 = v1488;
    }

    dataSource2 = [*v56 dataSource];
    v45 = v1542;
    if ((dataSource2 & 0x10) != 0)
    {
      if (v53)
      {
        v54 += snprintf(v54, &v1673 - v54, ", ");
      }

      snprintf(v54, &v1673 - v54, "Custom callstacks");
    }
  }

  else
  {
    strcpy(v1672, "Unknown");
  }

  v60 = *(v45 + 8);
  teamID = (v45 + 8);
  uuid = v60;
  p_isa = &teamID->isa;
  if (printJson)
  {
    sharedCaches = SANSStringForCString(v1672);
    SAJSONWriteDictionaryEntry(uuid, @"dataSource", sharedCaches);
  }

  else
  {
    LOBYTE(v1379) = 18;
    [uuid printWithFormat:@"%-*s%s\n"];
    v1648 = 0u;
    v1647 = 0u;
    v1646 = 0u;
    v1645 = 0u;
    obj = [*v1488 kernelCaches];
    v62 = [obj countByEnumeratingWithState:&v1645 objects:v1671 count:16];
    if (v62)
    {
      v63 = *v1646;
      j = "Kernel Cache: ";
      teamID = @"%-*s0x%llx %@\n";
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v1646 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v65 = *(*(&v1645 + 1) + 8 * i);
          v66 = *p_isa;
          [v65 loadAddress];
          uuid = [v65 uuid];
          uUIDString2 = [uuid UUIDString];
          LOBYTE(v1379) = 18;
          [v66 printWithFormat:@"%-*s0x%llx %@\n"];
        }

        v62 = [obj countByEnumeratingWithState:&v1645 objects:v1671 count:16];
      }

      while (v62);
    }

    v1644 = 0u;
    v1643 = 0u;
    v1642 = 0u;
    v1641 = 0u;
    sharedCaches = [*v1488 sharedCaches];
    v67 = [sharedCaches countByEnumeratingWithState:&v1641 objects:v1670 count:16];
    if (v67)
    {
      v68 = *v1642;
      teamID = @"%-*s%@\n";
      do
      {
        for (j = 0; j != v67; ++j)
        {
          if (*v1642 != v68)
          {
            objc_enumerationMutation(sharedCaches);
          }

          v69 = *p_isa;
          uuid = _shared_cache_display_string(*(*(&v1641 + 1) + 8 * j));
          LOBYTE(v1379) = 18;
          [v69 printWithFormat:@"%-*s%@\n"];
        }

        v67 = [sharedCaches countByEnumeratingWithState:&v1641 objects:v1670 count:16];
      }

      while (v67);
    }
  }

  reason = [*v1488 reason];

  if (reason)
  {
    uuid = *p_isa;
    reason2 = [*v1488 reason];
    v72 = reason2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(uuid, @"reason", reason2);

      goto LABEL_105;
    }

    v1385 = SACopySanitizedString(reason2, 1, 0xFFuLL);
    LOBYTE(v1379) = 18;
    [uuid printWithFormat:@"%-*s%@\n"];

    goto LABEL_104;
  }

  if ((printJson & 1) == 0)
  {
LABEL_104:
    [*p_isa appendString:@"\n"];
  }

LABEL_105:
  if ([*v1488 targetHIDEventMachAbs])
  {
    v73 = *(v1542 + 120);
    if (v73)
    {
      hidEventTimestamp = [v73 hidEventTimestamp];
      steps = [*(v1542 + 120) steps];
      uuid = [steps lastObject];
      timestamp = [uuid timestamp];
    }

    else
    {
      uuid = [*v1488 targetHIDEventMachAbs];
      hidEventTimestamp = +[SATimestamp timestampWithMachAbsTime:machContTime:wallTime:machTimebase:](SATimestamp, "timestampWithMachAbsTime:machContTime:wallTime:machTimebase:", uuid, 0, [*v1488 machTimebase], 0.0);
      if ([*v1488 targetHIDEventEndMachAbs])
      {
        uuid = [*v1488 targetHIDEventEndMachAbs];
        timestamp = +[SATimestamp timestampWithMachAbsTime:machContTime:wallTime:machTimebase:](SATimestamp, "timestampWithMachAbsTime:machContTime:wallTime:machTimebase:", uuid, 0, [*v1488 machTimebase], 0.0);
      }

      else
      {
        timestamp = 0;
      }
    }
  }

  else
  {
    timestamp = 0;
    hidEventTimestamp = 0;
  }

  if (![(SASamplePrinter *)v1542 hasTargetProcess])
  {
    v1442 = 0;
    v82 = 0.0;
    goto LABEL_234;
  }

  targetProcesses = [*v1488 targetProcesses];
  if ([targetProcesses count])
  {
    if (printJson)
    {
      v75 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
      v1640 = 0u;
      v1639 = 0u;
      v1638 = 0u;
      v1637 = 0u;
      v76 = targetProcesses;
      teamID = [v76 countByEnumeratingWithState:&v1637 objects:v1669 count:16];
      if (teamID)
      {
        v77 = *v1638;
        do
        {
          for (k = 0; k != teamID; k = (k + 1))
          {
            if (*v1638 != v77)
            {
              objc_enumerationMutation(v76);
            }

            v79 = [(SASamplePrinter *)v1542 displayNameForTask:?];
            [v75 addObject:v79];
          }

          teamID = [v76 countByEnumeratingWithState:&v1637 objects:v1669 count:16];
        }

        while (teamID);
      }

      v80 = *p_isa;
      v81 = [v75 componentsJoinedByString:{@", "}];
      SAJSONWriteDictionaryEntry(v80, @"targetTasks", v81);

      goto LABEL_231;
    }

    lastObject = [targetProcesses lastObject];
    mainBinary = [lastObject mainBinary];

    v1449 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v1436 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
    v1433 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
    v1443 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
    obja = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
    v1519 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
    v1636 = 0u;
    v1635 = 0u;
    v1634 = 0u;
    v1633 = 0u;
    v1439 = targetProcesses;
    v1452 = [v1439 countByEnumeratingWithState:&v1633 objects:v1668 count:16];
    if (!v1452)
    {
      v1474 = 0;
      v1470 = 0;
      v1466 = 0;
      v1479 = 0;
      v1463 = 0;
      v1456 = 0;
LABEL_203:

      v1512 = [(SASamplePrinter *)v1542 displayStringForOnBehalfOfForTasks:v1439 includePid:0];
      if ([obja count])
      {
        uuid = [obja allObjects];
        v1498 = [uuid sortedArrayUsingComparator:&__block_literal_global_11];
      }

      else
      {
        v1498 = 0;
      }

      if ([v1519 count])
      {
        uuid = [v1519 allObjects];
        v1490 = [uuid sortedArrayUsingComparator:&__block_literal_global_11];
      }

      else
      {
        v1490 = 0;
      }

      if ([v1449 count])
      {
        allObjects = [v1449 allObjects];
        uuid = [allObjects sortedArrayUsingComparator:&__block_literal_global_11];
        v1484 = [uuid componentsJoinedByString:{@", "}];
      }

      else
      {
        v1484 = @"UNKNOWN PROCESS";
      }

      if ([v1436 count])
      {
        allObjects2 = [v1436 allObjects];
        uuid = [allObjects2 sortedArrayUsingComparator:&__block_literal_global_11];
        v1460 = [uuid componentsJoinedByString:{@", "}];
      }

      else
      {
        v1460 = 0;
      }

      if ([v1433 count])
      {
        allObjects3 = [v1433 allObjects];
        uuid = [allObjects3 sortedArrayUsingComparator:&__block_literal_global_11];
        v135 = [uuid componentsJoinedByString:{@", "}];
      }

      else
      {
        v135 = 0;
      }

      if (mainBinary)
      {
        lastObject2 = [v1439 lastObject];
        v1411 = *p_isa;
        path = [mainBinary path];
        uuid = path;
        v138 = @"UNKNOWN PATH";
        if (path)
        {
          v138 = path;
        }

        v1410 = v138;
      }

      else
      {
        lastObject2 = 0;
        v1411 = *p_isa;
        v1410 = @"MULTIPLE PATHS";
      }

      bundleIdentifier = [mainBinary bundleIdentifier];
      bundleVersion = [mainBinary bundleVersion];
      bundleShortVersion = [mainBinary bundleShortVersion];
      bundleBuildVersion = [lastObject2 bundleBuildVersion];
      bundleProjectName = [lastObject2 bundleProjectName];
      bundleSourceVersion = [lastObject2 bundleSourceVersion];
      bundleProductBuildVersion = [lastObject2 bundleProductBuildVersion];
      adamID = [lastObject2 adamID];
      installerVersionID = [lastObject2 installerVersionID];
      developerType = [lastObject2 developerType];
      appType = [lastObject2 appType];
      j = [lastObject2 isBeta];
      cohortID = [lastObject2 cohortID];
      vendorID = [lastObject2 vendorID];
      distributorID = [lastObject2 distributorID];
      codesigningID = [lastObject2 codesigningID];
      teamID = [lastObject2 teamID];
      if (lastObject2)
      {
        v142 = [(SASamplePrinter *)v1542 architectureStringForTask:lastObject2];
      }

      else
      {
        v142 = 0;
      }

      *&v1380 = bundleVersion;
      *(&v1380 + 1) = bundleShortVersion;
      -[SASamplePrinter addTaskHeaderToStream:displayName:pid:mainBinary:mainBinaryPath:sharedCaches:uid:bundleIdentifier:bundleVersion:bundleShortVersion:bundleBuildVersion:bundleProjectName:bundleSourceVersion:bundleProductBuildVersion:adamID:installerVersionID:developerType:appType:isBeta:cohortID:vendorID:distributorID:codesigningID:teamID:resourceCoalitionSampleCounts:onBehalfOfProcesses:architectureString:kernelVersion:parentName:responsibleName:taskExecedFromName:taskExecedToName:forkTimestamp:startTimestamp:endTimestamp:startSampleIndex:endSampleIndex:numSamples:totalNumSamples:numSamplesSuspended:numSamplesTerminated:startingTaskSize:endingTaskSize:maxTaskSize:startSampleIndexOfMaxTaskSize:endSampleIndexOfMaxTaskSize:numPageins:cpuTimeNs:cpuInstructions:cpuCycles:nonThreadCpuTimeNs:nonThreadCpuInstructions:nonThreadCpuCycles:usesSuddenTermination:allowsIdleExit:memoryLimitStr:jetsamPriorityStr:isTranslocated:hardenedHeap:mteCheckedAllocationsEnabled:mteUserDataAllocationsTagged:mteSoftModeEnabled:mteInheritanceTurnedOn:isRunningBoardManaged:isUnresponsive:timeOfLastResponse:numThreads:numIdleWorkQueueThreads:numOtherHiddenThreads:hieSwallowedException:numSamplesWQExceededConstrainedThreadLimit:numSamplesWQExceededTotalThreadLimit:numSamplesWQExceededCooperativeThreadLimit:numSamplesWQExceededActiveConstrainedThreadLimit:numSamplesTALEngaged:isRunawayMitigated:threadsDeadlocked:threadsBlockedByADeadlock:ioSize:numIOs:isReportHeader:](v1542, v1411, v1484, 0xFFFFFFFFLL, mainBinary, v1410, 0, 4294966982, 0.0, bundleIdentifier, v1380, bundleBuildVersion, bundleProjectName, bundleSourceVersion, bundleProductBuildVersion, adamID, installerVersionID, developerType, appType, j, cohortID, vendorID, codesigningID, teamID, v1443, v1512, v142, v1456, v1460, v135, 0, 0, 0, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0x7FFFFFFFFFFFFFFFuLL, 0, 0, 0, 0, 0, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0x7FFFFFFFFFFFFFFFuLL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, [lastObject2 isTranslocated], v1463 & 1, v1479 & 1, v1466 & 1, v1470 & 1, v1474 & 1);
      if (lastObject2)
      {
      }

      if (mainBinary)
      {
      }

      v143 = *p_isa;
      [v1439 count];
      LOBYTE(v1379) = 18;
      [v143 printWithFormat:@"%-*s%lu\n"];
      [*p_isa appendString:@"\n"];

      goto LABEL_231;
    }

    v1474 = 0;
    v1470 = 0;
    v1466 = 0;
    v1479 = 0;
    v1463 = 0;
    v1456 = 0;
    v1445 = *v1634;
LABEL_128:
    v85 = 0;
    while (1)
    {
      if (*v1634 != v1445)
      {
        v86 = v85;
        objc_enumerationMutation(v1439);
        v85 = v86;
      }

      v1459 = v85;
      v1511 = *(*(&v1633 + 1) + 8 * v85);
      startTimestamp = [v1511 startTimestamp];
      endTimestamp = [v1511 endTimestamp];
      if (!mainBinary)
      {
        mainBinary = 0;
        goto LABEL_143;
      }

      mainBinary2 = [v1511 mainBinary];
      v88 = mainBinary2;
      if (!mainBinary2)
      {
        goto LABEL_140;
      }

      uuid2 = [mainBinary2 uuid];
      uuid3 = [mainBinary uuid];
      if (([uuid2 isEqual:uuid3] & 1) == 0)
      {

LABEL_140:
        path6 = mainBinary;
        mainBinary = 0;
        goto LABEL_141;
      }

      path2 = [v88 path];
      if (!path2)
      {
        goto LABEL_188;
      }

      path3 = [mainBinary path];
      if (!path3)
      {
        break;
      }

      path4 = [v88 path];
      path5 = [mainBinary path];
      v95 = [path4 isEqual:path5];

      if ((v95 & 1) == 0)
      {
        goto LABEL_140;
      }

LABEL_189:
      path6 = [mainBinary path];
      if (!path6)
      {
        path7 = [v88 path];
        v126 = path7 == 0;

        if (v126)
        {
          goto LABEL_142;
        }

        v127 = v88;
        path6 = mainBinary;
        mainBinary = v127;
      }

LABEL_141:

LABEL_142:
LABEL_143:
      uuid = [(SASamplePrinter *)v1542 rawNameForTask:v1511];
      v97 = SACopySanitizedStringWhitespaceOnlyNullable(uuid);
      v98 = v97;
      v99 = @"UNKNOWN PROCESS";
      if (v97)
      {
        v99 = v97;
      }

      v1496 = v99;

      [v1449 addObject:v1496];
      ppid = [v1511 ppid];
      if (ppid != -1 && ppid != [v1511 pid])
      {
        v101 = [(SASampleStore *)*v1488 lastTaskWithPid:ppid onOrBeforeTimestamp:endTimestamp];
        if (v101)
        {
          v102 = v101;

          goto LABEL_150;
        }

        v102 = [(SASampleStore *)*v1488 firstTaskWithPid:ppid];

        if (v102)
        {
LABEL_150:
          v103 = [(SASamplePrinter *)v1542 displayNameForTask:v102];
          [v1436 addObject:v103];
        }

        else
        {
          v102 = [(SASamplePrinter *)v1542 displayNameForPid:ppid threadId:0 timestamp:startTimestamp];
          [v1436 addObject:v102];
        }
      }

      rpid = [v1511 rpid];
      if (rpid < 1 || rpid == [v1511 pid])
      {
        goto LABEL_159;
      }

      v105 = [(SASampleStore *)*v1488 lastTaskWithPid:rpid onOrBeforeTimestamp:endTimestamp];
      if (v105)
      {
        v106 = v105;
      }

      else
      {
        v106 = [(SASampleStore *)*v1488 firstTaskWithPid:rpid];

        if (!v106)
        {
          v106 = [(SASamplePrinter *)v1542 displayNameForPid:rpid threadId:0 timestamp:startTimestamp];
          [v1433 addObject:v106];
          goto LABEL_158;
        }
      }

      v107 = [(SASamplePrinter *)v1542 displayNameForTask:v106];
      [v1433 addObject:v107];

LABEL_158:
LABEL_159:
      if ([v1511 resourceCoalitionID])
      {
        v108 = [SASamplePrinter displayStringForResourceCoalition:v1511];
        [v1443 setObject:&unk_1F5BDCA90 forKeyedSubscript:v108];
      }

      v1632 = 0u;
      v1631 = 0u;
      v1630 = 0u;
      v1629 = 0u;
      threads = [v1511 threads];
      v110 = [threads countByEnumeratingWithState:&v1629 objects:v1667 count:16];
      if (v110)
      {
        v111 = *v1630;
        do
        {
          v112 = 0;
          do
          {
            if (*v1630 != v111)
            {
              objc_enumerationMutation(threads);
            }

            v113 = [*(v1542 + 152) objectForKeyedSubscript:*(*(&v1629 + 1) + 8 * v112)];
            v114 = v113;
            if (v113)
            {
              threadState = [v113 threadState];
              startTimestamp2 = [threadState startTimestamp];
              if ([startTimestamp2 gt:*(v1542 + 40)])
              {

LABEL_169:
                goto LABEL_171;
              }

              threadState2 = [v114 threadState];
              endTimestamp2 = [threadState2 endTimestamp];
              uuid = [endTimestamp2 lt:*(v1542 + 32)];

              if ((uuid & 1) == 0)
              {
                if ([v114 isPartOfADeadlock])
                {
                  uuid = [v114 thread];
                  threadState3 = [v114 threadState];
                  threadState = [(SASamplePrinter *)v1542 displayNameForTask:uuid thread:threadState3 threadState:?];

                  [obja addObject:threadState];
                  goto LABEL_169;
                }

                if ([v114 isBlockedByADeadlock])
                {
                  uuid = [v114 thread];
                  threadState4 = [v114 threadState];
                  threadState = [(SASamplePrinter *)v1542 displayNameForTask:uuid thread:threadState4 threadState:?];

                  [v1519 addObject:threadState];
                  goto LABEL_169;
                }
              }
            }

LABEL_171:

            ++v112;
          }

          while (v110 != v112);
          v121 = [threads countByEnumeratingWithState:&v1629 objects:v1667 count:16];
          v110 = v121;
        }

        while (v121);
      }

      if (![v1511 pid] && !v1456)
      {
        [startTimestamp wallTime];
        v123 = [(SASamplePrinter *)v1542 kernelVersionAtWallTime:v122];
        uuid = v123;
        if (!v123 || (SACopySanitizedString(v123, 1, 0), v1456 = objc_claimAutoreleasedReturnValue(), uuid, !v1456))
        {
          v1456 = @"???";
        }
      }

      hardenedHeap = [v1511 hardenedHeap];
      if (v1511)
      {
        v1479 |= v1511[75];
        v1466 |= v1511[76];
        v1470 |= v1511[77];
        v1474 |= v1511[78];
      }

      v1463 |= hardenedHeap;
      v85 = v1459 + 1;
      if (v1459 + 1 == v1452)
      {
        v128 = [v1439 countByEnumeratingWithState:&v1633 objects:v1668 count:16];
        v1452 = v128;
        if (!v128)
        {
          goto LABEL_203;
        }

        goto LABEL_128;
      }
    }

LABEL_188:
    goto LABEL_189;
  }

  v83 = *(v1542 + 136);
  if (v83)
  {
    targetProcess = v83;
  }

  else
  {
    targetProcess = [*v1488 targetProcess];

    if (!targetProcess)
    {
      v361 = *__error();
      v362 = _sa_logt();
      if (os_log_type_enabled(v362, OS_LOG_TYPE_ERROR))
      {
        targetProcessId = [*v1488 targetProcessId];
        *v1677 = 67109120;
        *&v1677[4] = targetProcessId;
        _os_log_error_impl(&dword_1E0E2F000, v362, OS_LOG_TYPE_ERROR, "No task for target pid %d", v1677, 8u);
      }

      v1442 = 0;
      *__error() = v361;
      goto LABEL_232;
    }
  }

  if (printJson)
  {
    v129 = *p_isa;
    v130 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(targetProcess, "pid")}];
    SAJSONWriteDictionaryEntry(v129, @"targetTaskPid", v130);

LABEL_231:
    v1442 = 0;
LABEL_232:
    v82 = 0.0;
    goto LABEL_233;
  }

  startTimestamp3 = [targetProcess startTimestamp];
  endTimestamp3 = [targetProcess endTimestamp];
  ppid2 = [targetProcess ppid];
  if (ppid2 == -1 || ppid2 == [targetProcess pid])
  {
    v1497 = 0;
  }

  else
  {
    v363 = [(SASampleStore *)*v1488 lastTaskWithPid:ppid2 onOrBeforeTimestamp:endTimestamp3];
    if (v363)
    {
      v364 = v363;
    }

    else
    {
      v364 = [(SASampleStore *)*v1488 firstTaskWithPid:ppid2];

      if (!v364)
      {
        v1497 = [(SASamplePrinter *)v1542 displayNameForPid:ppid2 threadId:0 timestamp:startTimestamp3];
        goto LABEL_1307;
      }
    }

    v1497 = [(SASamplePrinter *)v1542 displayNameForTask:v364];
  }

LABEL_1307:
  rpid2 = [targetProcess rpid];
  if (rpid2 < 1 || rpid2 == [targetProcess pid])
  {
    v1494 = 0;
  }

  else
  {
    v1154 = [(SASampleStore *)*v1488 lastTaskWithPid:rpid2 onOrBeforeTimestamp:endTimestamp3];
    if (v1154)
    {
      v1155 = v1154;
    }

    else
    {
      v1155 = [(SASampleStore *)*v1488 firstTaskWithPid:rpid2];

      if (!v1155)
      {
        v1494 = [(SASamplePrinter *)v1542 displayNameForPid:rpid2 threadId:0 timestamp:startTimestamp3];
        goto LABEL_1314;
      }
    }

    v1494 = [(SASamplePrinter *)v1542 displayNameForTask:v1155];
  }

LABEL_1314:
  if ([targetProcess resourceCoalitionID])
  {
    v1156 = [SASamplePrinter displayStringForResourceCoalition:targetProcess];
    v1665 = v1156;
    v1666 = &unk_1F5BDCA90;
    v1486 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1666 forKeys:&v1665 count:1];
  }

  else
  {
    v1486 = 0;
  }

  v1664 = targetProcess;
  v1157 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1664 count:1];
  v1481 = [(SASamplePrinter *)v1542 displayStringForOnBehalfOfForTasks:v1157 includePid:1u];

  v1628 = 0u;
  v1627 = 0u;
  v1626 = 0u;
  v1625 = 0u;
  threads2 = [targetProcess threads];
  v1159 = [threads2 countByEnumeratingWithState:&v1625 objects:v1663 count:16];
  if (!v1159)
  {
    v1516 = 0;
    objj = 0;
    goto LABEL_1340;
  }

  v1516 = 0;
  objj = 0;
  v1160 = *v1626;
  do
  {
    v1161 = 0;
    do
    {
      if (*v1626 != v1160)
      {
        objc_enumerationMutation(threads2);
      }

      v1162 = [*(v1542 + 152) objectForKeyedSubscript:*(*(&v1625 + 1) + 8 * v1161)];
      v1163 = v1162;
      if (v1162)
      {
        threadState5 = [v1162 threadState];
        startTimestamp4 = [threadState5 startTimestamp];
        if ([startTimestamp4 gt:*(v1542 + 40)])
        {

          goto LABEL_1325;
        }

        threadState6 = [v1163 threadState];
        endTimestamp4 = [threadState6 endTimestamp];
        v1168 = [endTimestamp4 lt:*(v1542 + 32)];

        if ((v1168 & 1) == 0)
        {
          if ([v1163 isPartOfADeadlock])
          {
            thread = [v1163 thread];
            threadState7 = [v1163 threadState];
            threadState5 = [(SASamplePrinter *)v1542 displayNameForTask:thread thread:threadState7 threadState:?];

            v1171 = objj;
            if (objj)
            {
              goto LABEL_1331;
            }

            objj = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{threadState5, 0}];
            goto LABEL_1325;
          }

          if ([v1163 isBlockedByADeadlock])
          {
            thread2 = [v1163 thread];
            threadState8 = [v1163 threadState];
            threadState5 = [(SASamplePrinter *)v1542 displayNameForTask:thread2 thread:threadState8 threadState:?];

            v1171 = v1516;
            if (v1516)
            {
LABEL_1331:
              [v1171 addObject:threadState5];
            }

            else
            {
              v1516 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{threadState5, 0}];
            }

LABEL_1325:
          }
        }
      }

      ++v1161;
    }

    while (v1159 != v1161);
    v1174 = [threads2 countByEnumeratingWithState:&v1625 objects:v1663 count:16];
    v1159 = v1174;
  }

  while (v1174);
LABEL_1340:

  [objj sortUsingComparator:&__block_literal_global_64];
  [v1516 sortUsingComparator:&__block_literal_global_64];
  if ([targetProcess pid])
  {
    v1509 = 0;
  }

  else
  {
    startTimestamp5 = [targetProcess startTimestamp];
    [startTimestamp5 wallTime];
    v1177 = [(SASamplePrinter *)v1542 kernelVersionAtWallTime:v1176];

    if (!v1177 || (SACopySanitizedString(v1177, 1, 0), v1509 = objc_claimAutoreleasedReturnValue(), v1177, !v1509))
    {
      v1509 = @"???";
    }
  }

  v1435 = *(v1542 + 8);
  v1178 = [(SASamplePrinter *)v1542 rawNameForTask:targetProcess];
  v1179 = SACopySanitizedStringWhitespaceOnlyNullable(v1178);
  v1180 = v1179;
  v1181 = @"UNKNOWN PROCESS";
  if (v1179)
  {
    v1181 = v1179;
  }

  v1425 = v1181;
  v1423 = [targetProcess pid];
  mainBinaryPath = [targetProcess mainBinaryPath];
  j = mainBinaryPath;
  v1183 = @"UNKNOWN PATH";
  if (mainBinaryPath)
  {
    v1183 = mainBinaryPath;
  }

  v1421 = v1183;
  bundleIdentifier2 = [targetProcess bundleIdentifier];
  bundleVersion2 = [targetProcess bundleVersion];
  bundleShortVersion2 = [targetProcess bundleShortVersion];
  bundleBuildVersion2 = [targetProcess bundleBuildVersion];
  bundleProjectName2 = [targetProcess bundleProjectName];
  bundleSourceVersion2 = [targetProcess bundleSourceVersion];
  bundleProductBuildVersion2 = [targetProcess bundleProductBuildVersion];
  adamID2 = [targetProcess adamID];
  installerVersionID2 = [targetProcess installerVersionID];
  developerType2 = [targetProcess developerType];
  appType2 = [targetProcess appType];
  isBeta = [targetProcess isBeta];
  cohortID2 = [targetProcess cohortID];
  vendorID2 = [targetProcess vendorID];
  distributorID2 = [targetProcess distributorID];
  codesigningID2 = [targetProcess codesigningID];
  teamID2 = [targetProcess teamID];
  teamID = [(SASamplePrinter *)v1542 architectureStringForTask:targetProcess];
  forkTimestamp = [targetProcess forkTimestamp];
  *&v1383 = bundleVersion2;
  *(&v1383 + 1) = bundleShortVersion2;
  -[SASamplePrinter addTaskHeaderToStream:displayName:pid:mainBinary:mainBinaryPath:sharedCaches:uid:bundleIdentifier:bundleVersion:bundleShortVersion:bundleBuildVersion:bundleProjectName:bundleSourceVersion:bundleProductBuildVersion:adamID:installerVersionID:developerType:appType:isBeta:cohortID:vendorID:distributorID:codesigningID:teamID:resourceCoalitionSampleCounts:onBehalfOfProcesses:architectureString:kernelVersion:parentName:responsibleName:taskExecedFromName:taskExecedToName:forkTimestamp:startTimestamp:endTimestamp:startSampleIndex:endSampleIndex:numSamples:totalNumSamples:numSamplesSuspended:numSamplesTerminated:startingTaskSize:endingTaskSize:maxTaskSize:startSampleIndexOfMaxTaskSize:endSampleIndexOfMaxTaskSize:numPageins:cpuTimeNs:cpuInstructions:cpuCycles:nonThreadCpuTimeNs:nonThreadCpuInstructions:nonThreadCpuCycles:usesSuddenTermination:allowsIdleExit:memoryLimitStr:jetsamPriorityStr:isTranslocated:hardenedHeap:mteCheckedAllocationsEnabled:mteUserDataAllocationsTagged:mteSoftModeEnabled:mteInheritanceTurnedOn:isRunningBoardManaged:isUnresponsive:timeOfLastResponse:numThreads:numIdleWorkQueueThreads:numOtherHiddenThreads:hieSwallowedException:numSamplesWQExceededConstrainedThreadLimit:numSamplesWQExceededTotalThreadLimit:numSamplesWQExceededCooperativeThreadLimit:numSamplesWQExceededActiveConstrainedThreadLimit:numSamplesTALEngaged:isRunawayMitigated:threadsDeadlocked:threadsBlockedByADeadlock:ioSize:numIOs:isReportHeader:](v1542, v1435, v1425, v1423, 0, v1421, 0, 4294966982, 0.0, bundleIdentifier2, v1383, bundleBuildVersion2, bundleProjectName2, bundleSourceVersion2, bundleProductBuildVersion2, adamID2, installerVersionID2, developerType2, appType2, isBeta, cohortID2, vendorID2, codesigningID2, teamID2, v1486, v1481, teamID, v1509, v1497, v1494, 0, 0, forkTimestamp, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0x7FFFFFFFFFFFFFFFuLL, 0, 0, 0, 0, 0, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0x7FFFFFFFFFFFFFFFuLL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, [targetProcess isTranslocated], objc_msgSend(targetProcess, "hardenedHeap"), targetProcess[75] & 1, targetProcess[76] & 1, targetProcess[77] & 1, targetProcess[78] & 1);

  [*(v1542 + 8) appendString:@"\n"];
  if (hidEventTimestamp && *v1488 && (*(*v1488 + 404) & 1) != 0)
  {
    v82 = 0.0;
    if ([hidEventTimestamp lt:*(v1542 + 32)] && (objc_msgSend(*(v1542 + 32), "machAbsTimeSeconds"), v1189 = v1188, objc_msgSend(hidEventTimestamp, "machAbsTimeSeconds"), v1191 = v1189 - v1190, -[SASamplePrinter shouldPrintTimeOutsideSamplingRange:](v1542, v1191)))
    {
      v1192 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v1191 >= 0.1)
      {
        LOBYTE(v1379) = LOBYTE(v1191);
        v1193 = [v1192 initWithFormat:@"HID event started %.1f seconds before sampling"];
      }

      else
      {
        v1193 = [v1192 initWithFormat:@"HID event started <0.1 seconds before sampling"];
      }

      v1198 = v1193;
      v82 = v1191 + 0.0;
    }

    else
    {
      v1198 = 0;
    }

    v1442 = v1198;
    if (timestamp)
    {
      if ([timestamp gt:*(v1542 + 40)])
      {
        [timestamp machAbsTimeSeconds];
        v1315 = v1314;
        [*(v1542 + 40) machAbsTimeSeconds];
        v1317 = v1315 - v1316;
        if ([(SASamplePrinter *)v1542 shouldPrintTimeOutsideSamplingRange:v1317])
        {
          v1318 = objc_alloc(MEMORY[0x1E696AEC0]);
          if (v1317 >= 0.1)
          {
            LOBYTE(v1379) = LOBYTE(v1317);
            v1319 = [v1318 initWithFormat:@"HID event ended %.1f seconds after sampling"];
          }

          else
          {
            v1319 = [v1318 initWithFormat:@"HID event ended <0.1 seconds after sampling"];
          }

          v1320 = v1319;
          if (v1442)
          {
            LOBYTE(v1379) = v1442;
            v1321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, %@"];

            v1442 = v1321;
          }

          else
          {
            v1442 = v1319;
          }

          v82 = v82 + v1317;
        }
      }
    }
  }

  else
  {
    v82 = 0.0;
    if ([targetProcess isUnresponsive] && (objc_msgSend(targetProcess, "timeOfLastResponse"), v1195 = v1194, v1194 > 0.0) && (objc_msgSend(*(v1542 + 32), "wallTime"), v1195 < v1196) && (v1197 = v1196 - v1195, -[SASamplePrinter shouldPrintTimeOutsideSamplingRange:](v1542, v1197)))
    {
      LOBYTE(v1379) = LOBYTE(v1197);
      v1442 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"process was unresponsive for %.0f seconds before sampling"];
      v82 = v1197;
    }

    else
    {
      v1442 = 0;
    }
  }

LABEL_233:
LABEL_234:
  targetProcess2 = [*v1488 targetProcess];
  if (targetProcess2 && (v145 = *(v1542 + 136)) != 0)
  {
    targetProcess3 = [*v1488 targetProcess];
    v147 = v145 == targetProcess3;

    if (!v147)
    {
      v148 = *(v1542 + 8);
      targetProcess2 = [*(v1542 + 168) targetProcess];
      v149 = [(SASamplePrinter *)v1542 displayNameForTask:targetProcess2];
      v150 = v149;
      if (printJson)
      {
        SAJSONWriteDictionaryEntry(v148, @"affectedProcess", v149);
      }

      else
      {
        LOBYTE(v1379) = 18;
        [v148 printWithFormat:@"%-*s%@\n"];
      }

      goto LABEL_241;
    }
  }

  else
  {
LABEL_241:
  }

  event = [*v1488 event];
  eventNote = [*v1488 eventNote];
  v1450 = eventNote;
  if (__PAIR128__(event, eventNote) != 0)
  {
    if (eventNote)
    {
      v152 = objc_alloc(MEMORY[0x1E696AEC0]);
      v153 = event;
      if (!event)
      {
        v153 = @"???";
      }

      v1450 = [v152 initWithFormat:@"%@ (%@)", v153, v1450];
    }

    else
    {
      v1450 = event;
    }

    v155 = v1450;
    v156 = *p_isa;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v156, @"event", v155);
    }

    else
    {
      LOBYTE(v1379) = 18;
      [v156 printWithFormat:@"%-*s%@\n"];
    }
  }

  signature = [*v1488 signature];

  if (signature)
  {
    v158 = *p_isa;
    signature2 = [*v1488 signature];
    v160 = signature2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v158, @"signature", signature2);
    }

    else
    {
      v1386 = SACopySanitizedString(signature2, 1, 0xFFuLL);
      LOBYTE(v1379) = 18;
      [v158 printWithFormat:@"%-*s%@\n"];
    }
  }

  if ([*v1488 targetDispatchQueueId])
  {
    targetProcess4 = [*v1488 targetProcess];
    dispatchQueues = [targetProcess4 dispatchQueues];
    teamID = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "targetDispatchQueueId")}];
    v163 = [dispatchQueues objectForKeyedSubscript:teamID];

    if (v163)
    {
      v164 = *p_isa;
      if (printJson)
      {
        v165 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "targetDispatchQueueId")}];
        SAJSONWriteDictionaryEntry(v164, @"targetDispatchQueueId", v165);

        dispatchQueueLabel = [v163 dispatchQueueLabel];

        if (dispatchQueueLabel)
        {
          v167 = *p_isa;
          dispatchQueueLabel2 = [v163 dispatchQueueLabel];
          SAJSONWriteDictionaryEntry(v167, @"targetDispatchQueueLabel", dispatchQueueLabel2);
          goto LABEL_263;
        }
      }

      else
      {
        dispatchQueueLabel2 = [SASamplePrinter displayNameForDispatchQueue:v163];
        LOBYTE(v1379) = 18;
        [v164 printWithFormat:@"%-*s%@\n"];
LABEL_263:
      }
    }
  }

  if ([*v1488 targetThreadId])
  {
    v169 = *p_isa;
    if (printJson)
    {
      v170 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "targetThreadId")}];
      SAJSONWriteDictionaryEntry(v169, @"targetThreadId", v170);
    }

    else
    {
      [*v1488 targetThreadId];
      LOBYTE(v1379) = 18;
      [v169 printWithFormat:@"%-*s0x%llx\n"];
    }
  }

  issueType = [*v1488 issueType];

  if (issueType)
  {
    v172 = *p_isa;
    issueType2 = [*v1488 issueType];
    v174 = issueType2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v172, @"issueType", issueType2);
    }

    else
    {
      v1387 = SACopySanitizedString(issueType2, 1, 0);
      LOBYTE(v1379) = 18;
      [v172 printWithFormat:@"%-*s%@\n"];
    }
  }

  mitigationReason = [*v1488 mitigationReason];

  if (mitigationReason)
  {
    v176 = *p_isa;
    mitigationReason2 = [*v1488 mitigationReason];
    v178 = mitigationReason2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v176, @"mitigationReason", mitigationReason2);
    }

    else
    {
      v1388 = SACopySanitizedString(mitigationReason2, 1, 0);
      LOBYTE(v1379) = 18;
      [v176 printWithFormat:@"%-*s%@\n"];
    }
  }

  actionTaken = [*v1488 actionTaken];

  if (actionTaken)
  {
    v180 = *p_isa;
    actionTaken2 = [*v1488 actionTaken];
    v182 = actionTaken2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v180, @"actionTaken", actionTaken2);
    }

    else
    {
      v1389 = SACopySanitizedString(actionTaken2, 1, 0);
      LOBYTE(v1379) = 18;
      [v180 printWithFormat:@"%-*s%@\n"];
    }
  }

  detector = [*v1488 detector];

  if (detector)
  {
    v184 = *p_isa;
    detector2 = [*v1488 detector];
    v186 = detector2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v184, @"detector", detector2);
    }

    else
    {
      v1390 = SACopySanitizedString(detector2, 1, 0);
      LOBYTE(v1379) = 18;
      [v184 printWithFormat:@"%-*s%@\n"];
    }
  }

  [*v1488 cpuUsed];
  if (v187 > 0.0)
  {
    [*v1488 cpuDuration];
    if (v188 > 0.0)
    {
      if (printJson)
      {
        v189 = *p_isa;
        v190 = MEMORY[0x1E696AD98];
        [*v1488 cpuUsed];
        v191 = [v190 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v189, @"cpuUsed", v191);

        v192 = *p_isa;
        v193 = MEMORY[0x1E696AD98];
        [*v1488 cpuDuration];
        v194 = [v193 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v192, @"cpuDuration", v194);

        v195 = *p_isa;
        v196 = MEMORY[0x1E696AD98];
        [*v1488 cpuLimit];
        v197 = [v196 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v195, @"cpuLimit", v197);

        v198 = *p_isa;
        v199 = MEMORY[0x1E696AD98];
        [*v1488 cpuLimitDuration];
        v200 = [v199 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v198, @"cpuLimitDuration", v200);
      }

      else
      {
        v201 = *(v1542 + 168);
        *(v1542 + 112) = 1;
        [v201 cpuUsed];
        v203 = v202;
        [*(v1542 + 168) cpuDuration];
        v205 = v204;
        v206 = *(v1542 + 8);
        [*(v1542 + 168) cpuUsed];
        v208 = v207;
        [*(v1542 + 168) cpuDuration];
        [v206 printWithFormat:@"%-*s%.0f seconds cpu time over %.0f seconds (%.0f%% cpu average)", 18, "CPU: ", v208, v209, v203 * 100.0 / v205];
        [*(v1542 + 168) cpuLimit];
        if (v210 <= 0.0 || ([*v1488 cpuLimitDuration], v211 <= 0.0))
        {
          [*p_isa appendString:@"\n"];
        }

        else
        {
          [*v1488 cpuLimit];
          v213 = v212;
          [*v1488 cpuLimitDuration];
          v215 = v214;
          v216 = *p_isa;
          [*v1488 cpuLimitDuration];
          [v216 printWithFormat:@", exceeding limit of %.0f%% cpu over %.0f seconds\n", v213 * 100.0 / v215, v217];
        }

        v218 = *p_isa;
        [*v1488 cpuLimit];
        [v218 printWithFormat:@"%-*s%.0fs\n", 18, "CPU limit: ", v219];
        v220 = *p_isa;
        [*v1488 cpuLimitDuration];
        [v220 printWithFormat:@"%-*s%.0fs\n", 18, "Limit duration: ", v221];
        v222 = *p_isa;
        [*v1488 cpuUsed];
        [v222 printWithFormat:@"%-*s%.0fs\n", 18, "CPU used: ", v223];
        v224 = *p_isa;
        [*v1488 cpuDuration];
        LOBYTE(v1379) = 18;
        [v224 printWithFormat:@"%-*s%.0fs\n"];
      }
    }
  }

  if ([*v1488 numWakeups])
  {
    [*v1488 wakeupsDuration];
    if (v225 > 0.0)
    {
      if (printJson)
      {
        v226 = *p_isa;
        v227 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "numWakeups")}];
        SAJSONWriteDictionaryEntry(v226, @"numWakeups", v227);

        v228 = *p_isa;
        v229 = MEMORY[0x1E696AD98];
        [*v1488 wakeupsDuration];
        v230 = [v229 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v228, @"wakeupsDuration", v230);

        v231 = *p_isa;
        v232 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "numWakeupsLimit")}];
        SAJSONWriteDictionaryEntry(v231, @"numWakeupsLimit", v232);

        v233 = *p_isa;
        v234 = MEMORY[0x1E696AD98];
        [*v1488 wakeupsLimitDuration];
        v235 = [v234 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v233, @"wakeupsLimitDuration", v235);
      }

      else
      {
        teamID = (v1542 + 168);
        v236 = *(v1542 + 168);
        *(v1542 + 112) = 1;
        numWakeups = [v236 numWakeups];
        [*(v1542 + 168) wakeupsDuration];
        v239 = v238;
        v240 = *(v1542 + 8);
        numWakeups2 = [*(v1542 + 168) numWakeups];
        [*(v1542 + 168) wakeupsDuration];
        [v240 printWithFormat:@"%-*s%llu wakeups over the last %.0f seconds (%.0f wakeups per second average)", 18, "Wakeups: ", numWakeups2, v242, numWakeups / v239];
        if ([*(v1542 + 168) numWakeupsLimit] && (objc_msgSend(*v1488, "wakeupsLimitDuration"), v243 > 0.0))
        {
          numWakeupsLimit = [*v1488 numWakeupsLimit];
          [*v1488 wakeupsLimitDuration];
          v246 = v245;
          v247 = *p_isa;
          [*v1488 wakeupsLimitDuration];
          [v247 printWithFormat:@", exceeding limit of %.0f wakeups per second over %.0f seconds\n", numWakeupsLimit / v246, v248];
        }

        else
        {
          [*p_isa appendString:@"\n"];
        }

        [*p_isa printWithFormat:@"%-*s%llu\n", 18, "Wakeups limit: ", objc_msgSend(*v1488, "numWakeupsLimit")];
        v249 = *p_isa;
        [*v1488 wakeupsLimitDuration];
        [v249 printWithFormat:@"%-*s%.0fs\n", 18, "Limit duration: ", v250];
        [*p_isa printWithFormat:@"%-*s%llu\n", 18, "Wakeups caused: ", objc_msgSend(*v1488, "numWakeups")];
        v251 = *p_isa;
        [*v1488 wakeupsDuration];
        LOBYTE(v1379) = 18;
        [v251 printWithFormat:@"%-*s%.0fs\n"];
      }
    }
  }

  if ([*v1488 bytesWritten])
  {
    [*v1488 writeDuration];
    if (v252 > 0.0)
    {
      if (printJson)
      {
        v253 = *p_isa;
        v254 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "bytesWritten")}];
        SAJSONWriteDictionaryEntry(v253, @"bytesWritten", v254);

        v255 = *p_isa;
        v256 = MEMORY[0x1E696AD98];
        [*v1488 writeDuration];
        v257 = [v256 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v255, @"writeDuration", v257);

        v258 = *p_isa;
        v259 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "bytesWrittenLimit")}];
        SAJSONWriteDictionaryEntry(v258, @"bytesWrittenLimit", v259);

        v260 = *p_isa;
        v261 = MEMORY[0x1E696AD98];
        [*v1488 writeLimitDuration];
        v262 = [v261 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v260, @"writeLimitDuration", v262);
      }

      else
      {
        v263 = *(v1542 + 168);
        *(v1542 + 112) = 1;
        teamID = [v263 bytesWritten];
        [*(v1542 + 168) writeDuration];
        v265 = v264;
        v266 = *(v1542 + 8);
        v267 = SAFormattedBytesEx([*(v1542 + 168) bytesWritten], 0, 0, 1, 0);
        [*(v1542 + 168) writeDuration];
        v269 = v268;
        v270 = SAFormattedBytesDouble(0, 0, teamID / v265);
        [v266 printWithFormat:@"%-*s%@ of file backed memory dirtied over %.0f seconds (%@ per second average)", 18, "Writes: ", v267, v269, v270];

        if ([*(v1542 + 168) bytesWrittenLimit] && (objc_msgSend(*v1488, "writeLimitDuration"), v271 > 0.0))
        {
          bytesWrittenLimit = [*v1488 bytesWrittenLimit];
          [*v1488 writeLimitDuration];
          v274 = *p_isa;
          v275 = SAFormattedBytesDouble(0, 0, bytesWrittenLimit / v273);
          [*v1488 writeLimitDuration];
          [v274 printWithFormat:@", exceeding limit of %@ per second over %.0f seconds\n", v275, v276];
        }

        else
        {
          [*p_isa appendString:@"\n"];
        }

        v277 = *p_isa;
        v278 = SAFormattedBytesEx([*v1488 bytesWrittenLimit], 0, 0, 1, 0);
        [v277 printWithFormat:@"%-*s%@\n", 18, "Writes limit: ", v278];

        v279 = *p_isa;
        [*v1488 writeLimitDuration];
        [v279 printWithFormat:@"%-*s%.0fs\n", 18, "Limit duration: ", v280];
        v281 = *p_isa;
        v282 = SAFormattedBytesEx([*v1488 bytesWritten], 0, 0, 1, 0);
        [v281 printWithFormat:@"%-*s%@\n", 18, "Writes caused: ", v282];

        v283 = *p_isa;
        [*v1488 writeDuration];
        LOBYTE(v1379) = 18;
        [v283 printWithFormat:@"%-*s%.0fs\n"];
      }
    }
  }

  [*(v1542 + 168) attemptedSamplingInterval];
  v285 = v284;
  eventTimeRange = [*(v1542 + 168) eventTimeRange];
  [eventTimeRange deltaSecondsWithTimeDomainPriorityList:&unk_1F5BDCCB8 timeDomainUsed:0];
  v288 = v287;

  [*(v1542 + 32) deltaSecondsTo:*(v1542 + 40) timeDomainPriorityList:&unk_1F5BDCCD0 timeDomainUsed:0];
  v290 = v289;
  v291 = v285 + v289;
  if (v288 <= 0.0)
  {
    [*v1488 extraDuration];
    v288 = v82 + v291 + v292;
  }

  durationNote = [*v1488 durationNote];

  if (durationNote)
  {
    if (v1442)
    {
      v294 = objc_alloc(MEMORY[0x1E696AEC0]);
      [*v1488 durationNote];
      v1379 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      durationNote2 = [v294 initWithFormat:@"%@, %@"];
    }

    else
    {
      durationNote2 = [*v1488 durationNote];
    }

    goto LABEL_324;
  }

  if (v1442)
  {
    durationNote2 = v1442;
    goto LABEL_324;
  }

  eventTimeRange2 = [*v1488 eventTimeRange];

  if (!eventTimeRange2)
  {
    durationNote2 = 0;
    goto LABEL_324;
  }

  eventTimeRange3 = [*(v1542 + 168) eventTimeRange];
  startTime = [eventTimeRange3 startTime];
  [startTime deltaSecondsTo:*(v1542 + 32) timeDomainPriorityList:&unk_1F5BDCCE8 timeDomainUsed:0];
  v328 = v327;

  teamID = (v1542 + 168);
  eventTimeRange4 = [*(v1542 + 168) eventTimeRange];
  startTime2 = [eventTimeRange4 startTime];
  [startTime2 deltaSecondsTo:*(v1542 + 40) timeDomainPriorityList:&unk_1F5BDCD00 timeDomainUsed:0];
  v332 = v331;

  eventTimeRange5 = [*(v1542 + 168) eventTimeRange];
  endTime = [eventTimeRange5 endTime];
  [endTime deltaSecondsTo:*(v1542 + 32) timeDomainPriorityList:&unk_1F5BDCD18 timeDomainUsed:0];
  v336 = v335;

  eventTimeRange6 = [*(v1542 + 168) eventTimeRange];
  endTime2 = [eventTimeRange6 endTime];
  [endTime2 deltaSecondsTo:*(v1542 + 40) timeDomainPriorityList:&unk_1F5BDCD30 timeDomainUsed:0];
  v340 = v339;

  if (v336 > 0.0)
  {
    v341 = objc_alloc(MEMORY[0x1E696AEC0]);
    seconds_string_for_nanoseconds((v336 * 1000000000.0), 2);
    v1379 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    durationNote2 = [v341 initWithFormat:@"no overlap, event ends %@ before samples start"];

    goto LABEL_324;
  }

  if (v332 < 0.0)
  {
    v360 = objc_alloc(MEMORY[0x1E696AEC0]);
    seconds_string_for_nanoseconds((v332 * -1000000000.0), 2);
    v1379 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    durationNote2 = [v360 initWithFormat:@"no overlap, event starts %@ after samples end"];

    goto LABEL_324;
  }

  v365 = v285 + v340;
  if (![(SASamplePrinter *)v1542 shouldPrintTimeOutsideSamplingRange:?])
  {
    v328 = 0.0;
  }

  if (![(SASamplePrinter *)v1542 shouldPrintTimeOutsideSamplingRange:?])
  {
    v365 = 0.0;
  }

  if (v328 > 0.0)
  {
    v366 = @"event starts %@ before samples";
    v367 = 1000000000.0;
    goto LABEL_415;
  }

  if (v328 >= 0.0)
  {
    v371 = 0;
  }

  else
  {
    v366 = @"event starts %@ after samples start";
    v367 = -1000000000.0;
LABEL_415:
    v370 = objc_alloc(MEMORY[0x1E696AEC0]);
    seconds_string_for_nanoseconds((v328 * v367), 2);
    v1379 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v371 = [v370 initWithFormat:v366];
  }

  v1308 = v1542;
  if (v365 > 0.0)
  {
    v1309 = @"event ends %@ before samples end";
    v1310 = 1000000000.0;
    goto LABEL_1541;
  }

  if (v365 >= 0.0)
  {
    if (v371)
    {
      goto LABEL_1547;
    }

    v1312 = 0;
LABEL_1569:
    durationNote2 = 0;
    goto LABEL_1570;
  }

  v1309 = @"event ends %@ after samples";
  v1310 = -1000000000.0;
LABEL_1541:
  v1311 = objc_alloc(MEMORY[0x1E696AEC0]);
  teamID = seconds_string_for_nanoseconds((v365 * v1310), 2);
  LOBYTE(v1379) = teamID;
  v1312 = [v1311 initWithFormat:v1309];

  if (!v371)
  {
    v1308 = v1542;
    if (v1312)
    {
      v1312 = v1312;
      durationNote2 = v1312;
      goto LABEL_1570;
    }

    goto LABEL_1569;
  }

  v1308 = v1542;
  if (v1312)
  {
    LOBYTE(v1379) = v371;
    durationNote2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, %@"];
    v1308 = v1542;
    goto LABEL_1570;
  }

LABEL_1547:
  durationNote2 = v371;
  v1312 = 0;
LABEL_1570:
  if (v328 > 0.0 || v365 < 0.0)
  {
    eventTimeRange7 = [*(v1308 + 168) eventTimeRange];
    startTime3 = [eventTimeRange7 startTime];
    if ([startTime3 isComparable:*(v1542 + 32)])
    {
      eventTimeRange8 = [*(v1542 + 168) eventTimeRange];
      startTime4 = [eventTimeRange8 startTime];
      if ([startTime4 ge:*(v1542 + 32)])
      {
        eventTimeRange9 = [*v1488 eventTimeRange];
        teamID = [eventTimeRange9 startTime];
      }

      else
      {
        teamID = *(v1542 + 32);
      }
    }

    else
    {
      teamID = 0;
    }

    eventTimeRange10 = [*(v1542 + 168) eventTimeRange];
    endTime3 = [eventTimeRange10 endTime];
    if ([endTime3 isComparable:*(v1542 + 40)])
    {
      eventTimeRange11 = [*(v1542 + 168) eventTimeRange];
      j = [eventTimeRange11 endTime];
      if ([j le:*(v1542 + 40)])
      {
        eventTimeRange12 = [*v1488 eventTimeRange];
        endTime4 = [eventTimeRange12 endTime];
      }

      else
      {
        endTime4 = *(v1542 + 40);
      }
    }

    else
    {
      endTime4 = 0;
    }

    if (teamID)
    {
      if (endTime4)
      {
        [(__CFString *)teamID deltaSecondsTo:endTime4 timeDomainPriorityList:&unk_1F5BDCD48 timeDomainUsed:0];
        v1333 = v285 + v1332;
        if ([(SASamplePrinter *)v1542 shouldPrintTimeOutsideSamplingRange:v288), v285 + v1332)])
        {
          v1334 = objc_alloc(MEMORY[0x1E696AEC0]);
          seconds_string_for_nanoseconds((v1333 * 1000000000.0), 2);
          v1379 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v1335 = [v1334 initWithFormat:@"%@ overlap, %@"];

          durationNote2 = v1335;
        }
      }
    }
  }

LABEL_324:
  v295 = *p_isa;
  if (printJson)
  {
    v296 = [MEMORY[0x1E696AD98] numberWithDouble:v288];
    SAJSONWriteDictionaryEntry(v295, @"duration", v296);

    if (v288 > v291)
    {
      v297 = *p_isa;
      v298 = [MEMORY[0x1E696AD98] numberWithDouble:v291];
      SAJSONWriteDictionaryEntry(v297, @"sampledDuration", v298);
    }

    if (durationNote2)
    {
      SAJSONWriteDictionaryEntry(*p_isa, @"durationNote", durationNote2);
    }

    v299 = *(v1542 + 8);
    v300 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v1542 + 72)];
    SAJSONWriteDictionaryEntry(v299, @"numSamples", v300);

    v301 = *(v1542 + 168);
    if (v301 && v301[139])
    {
      v302 = *p_isa;
      v303 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      SAJSONWriteDictionaryEntry(v302, @"numPMIMicrostackshotsLost", v303);

      v301 = *v1488;
    }

    [v301 attemptedSamplingInterval];
    if (v304 > 0.0)
    {
      v305 = *p_isa;
      v306 = MEMORY[0x1E696AD98];
      [*v1488 attemptedSamplingInterval];
      v307 = [v306 numberWithDouble:?];
      SAJSONWriteDictionaryEntry(v305, @"attemptedSamplingInterval", v307);
    }

    kperfTriggers = [*v1488 kperfTriggers];

    if (kperfTriggers)
    {
      v309 = *p_isa;
      kperfTriggers2 = [*v1488 kperfTriggers];
      SAJSONWriteDictionaryEntry(v309, @"kperfTriggers", kperfTriggers2);
    }

    v311 = v1488;
    v312 = *v1488;
    if (*v1488)
    {
      if (!v312[137] || (v313 = *p_isa, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?], v314 = objc_claimAutoreleasedReturnValue(), SAJSONWriteDictionaryEntry(v313, @"pmiCycleIntervalMin", v314), v314, v311 = v1488, (v312 = *v1488) != 0))
      {
        if (v312[138])
        {
          v315 = *p_isa;
          v316 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(v315, @"pmiCycleIntervalMax", v316);

          goto LABEL_449;
        }
      }
    }

    goto LABEL_450;
  }

  [v295 printWithFormat:@"%-*s", 18, "Duration: "];
  v317 = *p_isa;
  v318 = (v288 * 1000000000.0);
  if (v288 >= 0.01)
  {
    v319 = 10000000;
    v320 = 2;
  }

  else
  {
    v319 = 1000000;
    v320 = 3;
  }

  if (v318 < v319)
  {
    [*p_isa appendString:@"<"];
    v318 = v319;
  }

  [v317 printWithFormat:@"%.*fs", v320, v318 / 1000000000.0];
  if (v288 != v291 && [(SASamplePrinter *)v1542 shouldPrintTimeOutsideSamplingRange:v291)])
  {
    [*p_isa appendString:@"\n"];
    [*p_isa printWithFormat:@"%-*s%.02fs", 18, "Duration Sampled: ", *&v291];
  }

  if (durationNote2)
  {
    v321 = *p_isa;
    v322 = SACopySanitizedString(durationNote2, 1, 0);
    [v321 printWithFormat:@" (%@)", v322];
  }

  [*(v1542 + 8) appendString:@"\n"];
  v1391 = *(v1542 + 72);
  LOBYTE(v1379) = 18;
  [*(v1542 + 8) printWithFormat:@"%-*s%lu"];
  if (![*(v1542 + 16) displayBody])
  {
    objb = 0;
    goto LABEL_365;
  }

  timeWhenTransitionedToSamplingAllProcesses = [*v1488 timeWhenTransitionedToSamplingAllProcesses];
  if (timeWhenTransitionedToSamplingAllProcesses)
  {
    teamID = [*(v1542 + 168) timeWhenTransitionedToSamplingAllProcesses];
    if (([(__CFString *)teamID lt:*(v1542 + 40)]& 1) != 0)
    {
      objb = 1;
      goto LABEL_363;
    }
  }

  timeWhenTransitionedToSamplingAllThreads = [*v1488 timeWhenTransitionedToSamplingAllThreads];
  if (!timeWhenTransitionedToSamplingAllThreads)
  {
    objb = 0;
    if (!timeWhenTransitionedToSamplingAllProcesses)
    {
      goto LABEL_364;
    }

    goto LABEL_363;
  }

  timeWhenTransitionedToSamplingAllThreads2 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllThreads];
  objb = [timeWhenTransitionedToSamplingAllThreads2 lt:*(v1542 + 40)];

  if (timeWhenTransitionedToSamplingAllProcesses)
  {
LABEL_363:
  }

LABEL_364:

LABEL_365:
  if (v285 > 0.0)
  {
    goto LABEL_369;
  }

  stepsNote = [*v1488 stepsNote];
  if ((stepsNote != 0) | objb & 1 || ([*v1488 kperfTriggers], stepsNote = objc_claimAutoreleasedReturnValue(), objc_msgSend(stepsNote, "count")))
  {

    goto LABEL_369;
  }

  if (!*v1488)
  {

    goto LABEL_448;
  }

  v359 = *(*v1488 + 137) == 0;

  if (!v359)
  {
LABEL_369:
    objc_msgSend(*p_isa, "appendString:", @" (");
    kperfTriggers3 = [*v1488 kperfTriggers];
    v346 = [kperfTriggers3 count] == 0;

    if (!v346)
    {
      v1624 = 0u;
      v1623 = 0u;
      v1622 = 0u;
      v1621 = 0u;
      kperfTriggers4 = [*v1488 kperfTriggers];
      v348 = [kperfTriggers4 countByEnumeratingWithState:&v1621 objects:v1662 count:16];
      v1520 = v348 != 0;
      if (v348)
      {
        LOBYTE(j) = 0;
        v349 = *v1622;
        do
        {
          for (m = 0; m != v348; ++m)
          {
            if (*v1622 != v349)
            {
              objc_enumerationMutation(kperfTriggers4);
            }

            v351 = *(*(&v1621 + 1) + 8 * m);
            if (j)
            {
              [*p_isa appendString:{@", "}];
            }

            type = [v351 type];
            v353 = *p_isa;
            if (type == 2)
            {
              saos_printf_time_scaled(v353, [v351 timerPeriodNs]);
              [*p_isa appendString:@" sampling interval (on-cpu only)"];
            }

            else if (type == 1)
            {
              saos_printf_time_scaled(v353, [v351 timerPeriodNs]);
              [*p_isa appendString:@" sampling interval"];
            }

            else
            {
              LOBYTE(v1379) = [v351 type];
              [v353 printWithFormat:@"unknown trigger %llu"];
            }

            j = 1;
          }

          v348 = [kperfTriggers4 countByEnumeratingWithState:&v1621 objects:v1662 count:16];
        }

        while (v348);
      }

      goto LABEL_426;
    }

    if (v285 > 0.0)
    {
      saos_printf_time_scaled(*p_isa, (v285 * 1000000000.0));
      [*p_isa appendString:@" sampling interval"];
LABEL_425:
      v1520 = 1;
LABEL_426:
      v354 = v1488;
      goto LABEL_427;
    }

    v354 = v1488;
    v355 = *v1488;
    if (!*v1488 || (v356 = *(v355 + 1096)) == 0)
    {
      v1520 = 0;
      goto LABEL_427;
    }

    v357 = *(v355 + 1104);
    if (v356 % 0x3B9ACA00)
    {
      if (v356 != v357)
      {
        v358 = *p_isa;
        goto LABEL_417;
      }

LABEL_412:
      v369 = *p_isa;
      goto LABEL_418;
    }

    v368 = v357 % 0x3B9ACA00;
    if (v356 == v357)
    {
      if (v368)
      {
        goto LABEL_412;
      }

      v1313 = *p_isa;
    }

    else
    {
      v358 = *p_isa;
      if (v368)
      {
LABEL_417:
        [v358 printWithFormat:@"%llu-", v356];
        v355 = *v1488;
        v369 = *p_isa;
        if (!*v1488)
        {
LABEL_419:
          [v369 printWithFormat:@"%llu cycles/step", v355];
          goto LABEL_420;
        }

LABEL_418:
        v355 = *(v355 + 1104);
        goto LABEL_419;
      }

      [v358 printWithFormat:@"%llu-", v356 / 0x3B9ACA00];
      v355 = *v1488;
      v1313 = *p_isa;
      if (!*v1488)
      {
LABEL_1553:
        [v1313 printWithFormat:@"%llu gigacycles/step", v355];
LABEL_420:
        v354 = v1488;
        if (!*v1488 || !*(*v1488 + 139))
        {
          v1520 = 1;
LABEL_427:
          stepsNote2 = [*v354 stepsNote];

          if (stepsNote2)
          {
            if (v1520)
            {
              [*p_isa appendString:{@", "}];
            }

            v374 = *p_isa;
            stepsNote3 = [*v1488 stepsNote];
            v376 = SACopySanitizedString(stepsNote3, 1, 0);
            [v374 appendString:v376];

            if ((objb & 1) == 0)
            {
              goto LABEL_447;
            }
          }

          else
          {
            if ((objb & 1) == 0)
            {
LABEL_447:
              [*p_isa appendString:@""]);
              goto LABEL_448;
            }

            if (!v1520)
            {
LABEL_435:
              timeWhenTransitionedToSamplingAllProcesses2 = [*v1488 timeWhenTransitionedToSamplingAllProcesses];
              if (timeWhenTransitionedToSamplingAllProcesses2 && ([*(v1542 + 168) timeWhenTransitionedToSamplingAllProcesses], v378 = objc_claimAutoreleasedReturnValue(), v379 = objc_msgSend(v378, "lt:", *(v1542 + 40)), v378, timeWhenTransitionedToSamplingAllProcesses2, v379))
              {
                timeWhenTransitionedToSamplingAllThreads3 = [*v1488 timeWhenTransitionedToSamplingAllThreads];
                if (timeWhenTransitionedToSamplingAllThreads3 && ([*(v1542 + 168) timeWhenTransitionedToSamplingAllThreads], v381 = objc_claimAutoreleasedReturnValue(), v382 = objc_msgSend(v381, "lt:", *(v1542 + 40)), v381, timeWhenTransitionedToSamplingAllThreads3, v382))
                {
                  timeWhenTransitionedToSamplingAllProcesses3 = [*v1488 timeWhenTransitionedToSamplingAllProcesses];
                  timeWhenTransitionedToSamplingAllThreads4 = [*v1488 timeWhenTransitionedToSamplingAllThreads];
                  v385 = [timeWhenTransitionedToSamplingAllProcesses3 ne:timeWhenTransitionedToSamplingAllThreads4];

                  if (v385)
                  {
                    v386 = *__error();
                    v387 = _sa_logt();
                    if (os_log_type_enabled(v387, OS_LOG_TYPE_DEBUG))
                    {
                      targetProcessId2 = [*(v1542 + 168) targetProcessId];
                      timeWhenTransitionedToSamplingAllThreads5 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllThreads];
                      [timeWhenTransitionedToSamplingAllThreads5 machAbsTimeSeconds];
                      v1341 = v1340;
                      [*(v1542 + 32) machAbsTimeSeconds];
                      v1343 = v1342;
                      timeWhenTransitionedToSamplingAllProcesses4 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllProcesses];
                      [timeWhenTransitionedToSamplingAllProcesses4 machAbsTimeSeconds];
                      v1346 = v1345;
                      [*(v1542 + 32) machAbsTimeSeconds];
                      *v1677 = 67109632;
                      *&v1677[4] = targetProcessId2;
                      *&v1677[8] = 2048;
                      *&v1677[10] = v1341 - v1343;
                      *&v1677[18] = 2048;
                      *&v1677[20] = v1346 - v1347;
                      _os_log_debug_impl(&dword_1E0E2F000, v387, OS_LOG_TYPE_DEBUG, "[%d] Don't know how to report transitioning to non-main thread at a separate time than transitioning to all processes: threads %.3f processes %.3f", v1677, 0x1Cu);
                    }

                    *__error() = v386;
                  }

                  v388 = *(v1542 + 8);
                  timeWhenTransitionedToSamplingAllThreads6 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllThreads];
                  [timeWhenTransitionedToSamplingAllThreads6 machAbsTimeSeconds];
                  v391 = v390;
                  [*(v1542 + 32) machAbsTimeSeconds];
                  v1379 = v391 - v392;
                  [v388 printWithFormat:@"sampled only the main thread of the target process for %.2f seconds"];
                }

                else
                {
                  v397 = *(v1542 + 8);
                  timeWhenTransitionedToSamplingAllThreads6 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllProcesses];
                  [timeWhenTransitionedToSamplingAllThreads6 machAbsTimeSeconds];
                  v399 = v398;
                  [*(v1542 + 32) machAbsTimeSeconds];
                  v1379 = v399 - v400;
                  [v397 printWithFormat:@"sampled only the target process for %.2f seconds"];
                }
              }

              else
              {
                v393 = *(v1542 + 8);
                timeWhenTransitionedToSamplingAllThreads6 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllThreads];
                [timeWhenTransitionedToSamplingAllThreads6 machAbsTimeSeconds];
                v395 = v394;
                [*(v1542 + 32) machAbsTimeSeconds];
                v1379 = v395 - v396;
                [v393 printWithFormat:@"sampled only main threads for %.2f seconds"];
              }

              goto LABEL_447;
            }
          }

          [*p_isa appendString:{@", "}];
          goto LABEL_435;
        }

        [*p_isa appendString:{@", "}];
        v372 = *v1488;
        if (*v1488)
        {
          v372 = v372[139];
        }

        [*p_isa printWithFormat:@"%llu samples lost", v372];
        goto LABEL_425;
      }
    }

    v355 = *(v355 + 1104) / 0x3B9ACA00uLL;
    goto LABEL_1553;
  }

LABEL_448:
  [*p_isa appendString:@"\n"];
LABEL_449:
  v311 = v1488;
LABEL_450:
  v401 = *(v1542 + 16);
  if (v401)
  {
    v402 = *(v401 + 168);
    if (v402 != 1 && (v402 || *(v401 + 11) == 1))
    {
      *v1677 = 0;
      *&v1677[8] = v1677;
      *&v1677[16] = 0x2020000000;
      *&v1677[24] = 0;
      v403 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v404 = *(v1542 + 168);
      v1618[0] = MEMORY[0x1E69E9820];
      v1618[1] = 3221225472;
      v1618[2] = __30__SASamplePrinter_printHeader__block_invoke;
      v1618[3] = &unk_1E86F7550;
      v1618[4] = v1542;
      v1620 = v1677;
      v405 = v403;
      v1619 = v405;
      [v404 enumerateTasks:v1618];
      if (*(*&v1677[8] + 24))
      {
        v406 = *p_isa;
        if (printJson)
        {
          v407 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*&v1677[8] + 24)];
          SAJSONWriteDictionaryEntry(v406, @"numStepsMissing", v407);

          SAJSONWriteDictionaryEntry(*p_isa, @"stepsMissingDetails", v405);
        }

        else
        {
          v1400 = [v405 componentsJoinedByString:{@", "}];
          LOBYTE(v1379) = 18;
          [v406 printWithFormat:@"%-*s%lu (%@)\n"];
        }
      }

      _Block_object_dispose(v1677, 8);
      v311 = v1488;
    }
  }

  [*v311 reportTimeThreshold];
  if (v408 <= 0.0)
  {
    if ((printJson & 1) == 0)
    {
      goto LABEL_465;
    }
  }

  else
  {
    v409 = *p_isa;
    if (printJson)
    {
      v410 = MEMORY[0x1E696AD98];
      [*v1488 reportTimeThreshold];
      v411 = [v410 numberWithDouble:?];
      SAJSONWriteDictionaryEntry(v409, @"reportTimeThreshold", v411);

      goto LABEL_466;
    }

    [*v1488 reportTimeThreshold];
    LOBYTE(v1379) = 18;
    [v409 printWithFormat:@"%-*s%.3gs\n"];
LABEL_465:
    [*p_isa appendString:@"\n"];
  }

LABEL_466:
  wrWorkflowName = [*v1488 wrWorkflowName];

  if (wrWorkflowName)
  {
    v413 = *p_isa;
    wrWorkflowName2 = [*v1488 wrWorkflowName];
    v415 = wrWorkflowName2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v413, @"wrWorkflowName", wrWorkflowName2);
    }

    else
    {
      LOBYTE(v1379) = 18;
      [v413 printWithFormat:@"%-*s%@\n"];
    }

    wrError = [*v1488 wrError];
    v417 = wrError;
    if (wrError)
    {
      userInfo = [wrError userInfo];
      v419 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A278]];
      v420 = v419;
      if (v419)
      {
        v421 = v419;
      }

      else
      {
        v421 = [v417 description];
      }

      v422 = *p_isa;
      if (printJson)
      {
        SAJSONWriteDictionaryEntry(v422, @"wrError", v421);
      }

      else
      {
        LOBYTE(v1379) = 18;
        [v422 printWithFormat:@"%-*s%@\n"];
      }
    }

    wrDiagnosticName = [*v1488 wrDiagnosticName];

    if (wrDiagnosticName)
    {
      v424 = *p_isa;
      wrDiagnosticName2 = [*v1488 wrDiagnosticName];
      v426 = wrDiagnosticName2;
      if (printJson)
      {
        SAJSONWriteDictionaryEntry(v424, @"wrDiagnosticName", wrDiagnosticName2);
      }

      else
      {
        LOBYTE(v1379) = 18;
        [v424 printWithFormat:@"%-*s%@\n"];
      }
    }

    [*v1488 wrWorkflowDuration];
    if (v427 > 0.0)
    {
      [*v1488 wrWorkflowDurationThreshold];
      if (v428 > 0.0)
      {
        [*v1488 wrWorkflowDuration];
        v430 = v429;
        [*v1488 wrWorkflowDurationThreshold];
        if (v430 >= v431)
        {
          v432 = *p_isa;
          if (printJson)
          {
            v433 = MEMORY[0x1E696AD98];
            [*v1488 wrWorkflowDuration];
            v434 = [v433 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v432, @"wrWorkflowDuration", v434);

            v435 = *p_isa;
            v436 = MEMORY[0x1E696AD98];
            [*v1488 wrWorkflowDurationThreshold];
            v437 = [v436 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v435, @"wrWorkflowDurationThreshold", v437);
          }

          else
          {
            LOBYTE(v1379) = 18;
            [v432 printWithFormat:@"%-*sWorkflow event duration "];
            v438 = *(v1542 + 8);
            [*(v1542 + 168) wrWorkflowDuration];
            v440 = v439;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v441 = 9;
            }

            else
            {
              v441 = 3;
            }

            saos_printf_seconds(v438, (v440 * 1000000000.0), v441);
            [*(v1542 + 8) appendString:{@", above threshold "}];
            v442 = *(v1542 + 8);
            [*(v1542 + 168) wrWorkflowDurationThreshold];
            v444 = v443;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v445 = 9;
            }

            else
            {
              v445 = 3;
            }

            saos_printf_seconds(v442, (v444 * 1000000000.0), v445);
            [*(v1542 + 8) appendString:@"\n"];
          }
        }
      }
    }

    [*v1488 wrWorkflowDurationOmittingNetworkBoundIntervals];
    if (v446 > 0.0 && ([*v1488 wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold], v447 > 0.0) && (objc_msgSend(*v1488, "wrWorkflowDurationOmittingNetworkBoundIntervals"), v449 = v448, objc_msgSend(*v1488, "wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold"), v449 >= v450))
    {
      v455 = *p_isa;
      if (printJson)
      {
        v456 = MEMORY[0x1E696AD98];
        [*v1488 wrWorkflowDurationOmittingNetworkBoundIntervals];
        v457 = [v456 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v455, @"wrWorkflowDurationOmittingNetworkBoundIntervals", v457);

        v458 = *p_isa;
        v459 = MEMORY[0x1E696AD98];
        [*v1488 wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold];
        v460 = [v459 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v458, @"wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold", v460);

        [*v1488 wrWorkflowTimeoutDuration];
        if (v461 > 0.0)
        {
LABEL_500:
          v452 = *p_isa;
          v453 = MEMORY[0x1E696AD98];
          [*v1488 wrWorkflowTimeoutDuration];
          v454 = [v453 numberWithDouble:?];
          SAJSONWriteDictionaryEntry(v452, @"wrWorkflowTimeoutDuration", v454);
        }
      }

      else
      {
        LOBYTE(v1379) = 18;
        [v455 printWithFormat:@"%-*sWorkflow event duration (omitting network bound intervals) "];
        v462 = *(v1542 + 8);
        [*(v1542 + 168) wrWorkflowDurationOmittingNetworkBoundIntervals];
        v464 = v463;
        if ([*(v1542 + 16) displayDetailedWallTime])
        {
          v465 = 9;
        }

        else
        {
          v465 = 3;
        }

        saos_printf_seconds(v462, (v464 * 1000000000.0), v465);
        [*(v1542 + 8) appendString:{@", above threshold "}];
        v466 = *(v1542 + 8);
        [*(v1542 + 168) wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold];
        v468 = v467;
        if ([*(v1542 + 16) displayDetailedWallTime])
        {
          v469 = 9;
        }

        else
        {
          v469 = 3;
        }

        saos_printf_seconds(v466, (v468 * 1000000000.0), v469);
        [*(v1542 + 8) appendString:@"\n"];
        [*(v1542 + 168) wrWorkflowTimeoutDuration];
        if (v470 > 0.0)
        {
          goto LABEL_511;
        }
      }
    }

    else
    {
      [*v1488 wrWorkflowTimeoutDuration];
      if (v451 > 0.0)
      {
        if (printJson)
        {
          goto LABEL_500;
        }

LABEL_511:
        [*(v1542 + 8) printWithFormat:@"%-*sWorkflow event timed out after", 18, "Trigger: "];
        v471 = *(v1542 + 8);
        [*(v1542 + 168) wrWorkflowTimeoutDuration];
        v473 = v472;
        if ([*(v1542 + 16) displayDetailedWallTime])
        {
          v474 = 9;
        }

        else
        {
          v474 = 3;
        }

        saos_printf_seconds(v471, (v473 * 1000000000.0), v474);
        [*(v1542 + 8) appendString:@"\n"];
      }
    }

    wrSignpostName = [*v1488 wrSignpostName];

    if (wrSignpostName)
    {
      if (printJson)
      {
        v476 = *p_isa;
        wrSignpostName2 = [*v1488 wrSignpostName];
        SAJSONWriteDictionaryEntry(v476, @"wrSignpostName", wrSignpostName2);

        wrSignpostSubsystem = [*v1488 wrSignpostSubsystem];

        if (wrSignpostSubsystem)
        {
          v479 = *p_isa;
          wrSignpostSubsystem2 = [*v1488 wrSignpostSubsystem];
          SAJSONWriteDictionaryEntry(v479, @"wrSignpostSubsystem", wrSignpostSubsystem2);
        }

        wrSignpostCategory = [*v1488 wrSignpostCategory];

        if (wrSignpostCategory)
        {
          v482 = *p_isa;
          wrSignpostCategory2 = [*v1488 wrSignpostCategory];
          SAJSONWriteDictionaryEntry(v482, @"wrSignpostCategory", wrSignpostCategory2);
          goto LABEL_525;
        }
      }

      else
      {
        wrSignpostCategory2 = [*v1488 wrSignpostName];
        wrSignpostSubsystem3 = [*v1488 wrSignpostSubsystem];
        if (wrSignpostSubsystem3)
        {
          wrSignpostCategory3 = [*v1488 wrSignpostCategory];
          v486 = wrSignpostCategory3 == 0;

          if (!v486)
          {
            wrSignpostSubsystem4 = [*v1488 wrSignpostSubsystem];
            wrSignpostCategory4 = [*v1488 wrSignpostCategory];
            v488 = [wrSignpostCategory2 stringByAppendingFormat:@" [%@:%@]", wrSignpostSubsystem4, wrSignpostCategory4];

            wrSignpostCategory2 = v488;
          }
        }

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Signpost: ", wrSignpostCategory2];
LABEL_525:
      }
    }

    wrTriggeringSignpostName = [*v1488 wrTriggeringSignpostName];
    if (wrTriggeringSignpostName)
    {
      wrSignpostName3 = [*v1488 wrSignpostName];
      if (wrSignpostName3)
      {
        wrTriggeringSignpostName2 = [*v1488 wrTriggeringSignpostName];
        wrSignpostName4 = [*v1488 wrSignpostName];
        v494 = [wrTriggeringSignpostName2 isEqualToString:wrSignpostName4];

        if (v494)
        {
          goto LABEL_541;
        }
      }

      else
      {
      }

      if (printJson)
      {
        v495 = *p_isa;
        wrTriggeringSignpostName3 = [*v1488 wrTriggeringSignpostName];
        SAJSONWriteDictionaryEntry(v495, @"wrTriggeringSignpostName", wrTriggeringSignpostName3);

        wrTriggeringSignpostSubsystem = [*v1488 wrTriggeringSignpostSubsystem];

        if (wrTriggeringSignpostSubsystem)
        {
          v498 = *p_isa;
          wrTriggeringSignpostSubsystem2 = [*v1488 wrTriggeringSignpostSubsystem];
          SAJSONWriteDictionaryEntry(v498, @"wrTriggeringSignpostSubsystem", wrTriggeringSignpostSubsystem2);
        }

        wrTriggeringSignpostCategory = [*v1488 wrTriggeringSignpostCategory];

        if (wrTriggeringSignpostCategory)
        {
          v501 = *p_isa;
          wrTriggeringSignpostCategory2 = [*v1488 wrTriggeringSignpostCategory];
          SAJSONWriteDictionaryEntry(v501, @"wrTriggeringSignpostCategory", wrTriggeringSignpostCategory2);
          goto LABEL_540;
        }
      }

      else
      {
        wrTriggeringSignpostCategory2 = [*v1488 wrTriggeringSignpostName];
        wrTriggeringSignpostSubsystem3 = [*v1488 wrTriggeringSignpostSubsystem];
        if (wrTriggeringSignpostSubsystem3)
        {
          wrTriggeringSignpostCategory3 = [*v1488 wrTriggeringSignpostCategory];
          v505 = wrTriggeringSignpostCategory3 == 0;

          if (!v505)
          {
            wrTriggeringSignpostSubsystem4 = [*v1488 wrTriggeringSignpostSubsystem];
            wrTriggeringSignpostCategory4 = [*v1488 wrTriggeringSignpostCategory];
            v507 = [wrTriggeringSignpostCategory2 stringByAppendingFormat:@" [%@:%@]", wrTriggeringSignpostSubsystem4, wrTriggeringSignpostCategory4];

            wrTriggeringSignpostCategory2 = v507;
          }
        }

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Triggering Signpost: ", wrTriggeringSignpostCategory2];
LABEL_540:
      }
    }

LABEL_541:
    if ([*v1488 wrSignpostCount])
    {
      if ([*v1488 wrSignpostCountThreshold])
      {
        wrSignpostCount = [*v1488 wrSignpostCount];
        if (wrSignpostCount >= [*v1488 wrSignpostCountThreshold])
        {
          v510 = *p_isa;
          if (printJson)
          {
            v511 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "wrSignpostCount")}];
            SAJSONWriteDictionaryEntry(v510, @"wrSignpostCount", v511);

            v512 = *p_isa;
            v513 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "wrSignpostCountThreshold")}];
            SAJSONWriteDictionaryEntry(v512, @"wrSignpostCountThreshold", v513);
          }

          else
          {
            [*v1488 wrSignpostCount];
            [*v1488 wrSignpostCountThreshold];
            LOBYTE(v1379) = 18;
            [v510 printWithFormat:@"%-*sSignpost count %llu, above threshold %llu\n"];
          }
        }
      }
    }

    [*v1488 wrSignpostDurationUnion];
    if (v514 > 0.0)
    {
      [*v1488 wrSignpostDurationUnionThreshold];
      if (v515 > 0.0)
      {
        [*v1488 wrSignpostDurationUnion];
        v517 = v516;
        [*v1488 wrSignpostDurationUnionThreshold];
        if (v517 >= v518)
        {
          v519 = *p_isa;
          if (printJson)
          {
            v520 = MEMORY[0x1E696AD98];
            [*v1488 wrSignpostDurationUnion];
            v521 = [v520 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v519, @"wrSignpostDurationUnion", v521);

            v522 = *p_isa;
            v523 = MEMORY[0x1E696AD98];
            [*v1488 wrSignpostDurationUnionThreshold];
            v524 = [v523 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v522, @"wrSignpostDurationUnionThreshold", v524);
          }

          else
          {
            LOBYTE(v1379) = 18;
            [v519 printWithFormat:@"%-*sSignpost interval duration (union) "];
            v525 = *(v1542 + 8);
            [*(v1542 + 168) wrSignpostDurationUnion];
            v527 = v526;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v528 = 9;
            }

            else
            {
              v528 = 3;
            }

            saos_printf_seconds(v525, (v527 * 1000000000.0), v528);
            [*(v1542 + 8) appendString:{@", above threshold "}];
            v529 = *(v1542 + 8);
            [*(v1542 + 168) wrSignpostDurationUnionThreshold];
            v531 = v530;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v532 = 9;
            }

            else
            {
              v532 = 3;
            }

            saos_printf_seconds(v529, (v531 * 1000000000.0), v532);
            [*(v1542 + 8) appendString:@"\n"];
          }
        }
      }
    }

    [*v1488 wrSignpostDurationSum];
    if (v533 > 0.0)
    {
      [*v1488 wrSignpostDurationSumThreshold];
      if (v534 > 0.0)
      {
        [*v1488 wrSignpostDurationSum];
        v536 = v535;
        [*v1488 wrSignpostDurationSumThreshold];
        if (v536 >= v537)
        {
          v538 = *p_isa;
          if (printJson)
          {
            v539 = MEMORY[0x1E696AD98];
            [*v1488 wrSignpostDurationSum];
            v540 = [v539 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v538, @"wrSignpostDurationSum", v540);

            v541 = *p_isa;
            v542 = MEMORY[0x1E696AD98];
            [*v1488 wrSignpostDurationSumThreshold];
            v543 = [v542 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v541, @"wrSignpostDurationSumThreshold", v543);
          }

          else
          {
            LOBYTE(v1379) = 18;
            [v538 printWithFormat:@"%-*sSignpost interval duration (sum) "];
            v544 = *(v1542 + 8);
            [*(v1542 + 168) wrSignpostDurationSum];
            v546 = v545;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v547 = 9;
            }

            else
            {
              v547 = 3;
            }

            saos_printf_seconds(v544, (v546 * 1000000000.0), v547);
            [*(v1542 + 8) appendString:{@", above threshold "}];
            v548 = *(v1542 + 8);
            [*(v1542 + 168) wrSignpostDurationSumThreshold];
            v550 = v549;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v551 = 9;
            }

            else
            {
              v551 = 3;
            }

            saos_printf_seconds(v548, (v550 * 1000000000.0), v551);
            [*(v1542 + 8) appendString:@"\n"];
          }
        }
      }
    }

    [*v1488 wrSignpostDurationSingle];
    if (v552 > 0.0 && ([*v1488 wrSignpostDurationSingleThreshold], v553 > 0.0) && (objc_msgSend(*v1488, "wrSignpostDurationSingle"), v555 = v554, objc_msgSend(*v1488, "wrSignpostDurationSingleThreshold"), v555 >= v556))
    {
      v620 = *p_isa;
      if (printJson)
      {
        v621 = MEMORY[0x1E696AD98];
        [*v1488 wrSignpostDurationSingle];
        v622 = [v621 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v620, @"wrSignpostDurationSingle", v622);

        v623 = *p_isa;
        v624 = MEMORY[0x1E696AD98];
        [*v1488 wrSignpostDurationSingleThreshold];
        v625 = [v624 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v623, @"wrSignpostDurationSingleThreshold", v625);
      }

      else
      {
        LOBYTE(v1379) = 18;
        [v620 printWithFormat:@"%-*sSignpost interval duration (single) "];
        v853 = *(v1542 + 8);
        [*(v1542 + 168) wrSignpostDurationSingle];
        v855 = v854;
        if ([*(v1542 + 16) displayDetailedWallTime])
        {
          v856 = 9;
        }

        else
        {
          v856 = 3;
        }

        saos_printf_seconds(v853, (v855 * 1000000000.0), v856);
        [*(v1542 + 8) appendString:{@", above threshold "}];
        v857 = *(v1542 + 8);
        [*(v1542 + 168) wrSignpostDurationSingleThreshold];
        v859 = v858;
        if ([*(v1542 + 16) displayDetailedWallTime])
        {
          v860 = 9;
        }

        else
        {
          v860 = 3;
        }

        saos_printf_seconds(v857, (v859 * 1000000000.0), v860);
        [*(v1542 + 8) appendString:@"\n"];
LABEL_575:
        [*p_isa appendString:@"\n"];
      }
    }

    else if ((printJson & 1) == 0)
    {
      goto LABEL_575;
    }
  }

  hardwareModel = [*v1488 hardwareModel];
  if (hardwareModel || [*v1488 numActiveCPUs] || objc_msgSend(*v1488, "memSize") || objc_msgSend(*v1488, "hwPageSize") || objc_msgSend(*v1488, "vmPageSize"))
  {
LABEL_582:

    goto LABEL_583;
  }

  hardwareModel = [*v1488 bootArgs];
  if (!hardwareModel)
  {
    if (([*(v1542 + 16) displayEmptyBootArgs] & 1) == 0)
    {
      goto LABEL_625;
    }

LABEL_583:
    hardwareModel2 = [*v1488 hardwareModel];

    if (hardwareModel2)
    {
      v559 = *p_isa;
      hardwareModel3 = [*v1488 hardwareModel];
      v561 = hardwareModel3;
      if (printJson)
      {
        SAJSONWriteDictionaryEntry(v559, @"hardwareModel", hardwareModel3);

        if (![*v1488 numActiveCPUs])
        {
LABEL_592:
          if ([*v1488 memSize])
          {
            v565 = *p_isa;
            if (printJson)
            {
              v566 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "memSize")}];
              SAJSONWriteDictionaryEntry(v565, @"memSize", v566);

              if (![*v1488 hwPageSize])
              {
LABEL_601:
                if ([*v1488 vmPageSize])
                {
                  v570 = *p_isa;
                  if (printJson)
                  {
                    v571 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*v1488, "vmPageSize")}];
                    SAJSONWriteDictionaryEntry(v570, @"vmPageSize", v571);

                    if (![*v1488 sharedCacheResidentSizeInBytes])
                    {
LABEL_611:
                      bootArgs = [*v1488 bootArgs];
                      if (bootArgs)
                      {
                        bootArgs2 = [*v1488 bootArgs];
                        if ([bootArgs2 length])
                        {

LABEL_617:
                          bootArgs3 = [*v1488 bootArgs];
                          v583 = bootArgs3;
                          v584 = @"???";
                          if (bootArgs3)
                          {
                            v584 = bootArgs3;
                          }

                          v585 = v584;

                          v586 = *p_isa;
                          if (printJson)
                          {
                            SAJSONWriteDictionaryEntry(*p_isa, @"bootArgs", v585);
                          }

                          else
                          {
                            v1394 = SACopySanitizedString(v585, 1, 0);
                            LOBYTE(v1379) = 18;
                            [v586 printWithFormat:@"%-*s%@\n"];
                          }

                          goto LABEL_623;
                        }

                        displayEmptyBootArgs = [*(v1542 + 16) displayEmptyBootArgs];

                        if (displayEmptyBootArgs)
                        {
                          goto LABEL_617;
                        }
                      }

                      else if ([*(v1542 + 16) displayEmptyBootArgs])
                      {
                        goto LABEL_617;
                      }

LABEL_623:
                      if ((printJson & 1) == 0)
                      {
                        [*p_isa appendString:@"\n"];
                      }

                      goto LABEL_625;
                    }

                    goto LABEL_607;
                  }

                  [*v1488 vmPageSize];
                  LOBYTE(v1379) = 18;
                  [v570 printWithFormat:@"%-*s%d\n"];
                  if (![*v1488 sharedCacheResidentSizeInBytes])
                  {
                    goto LABEL_611;
                  }
                }

                else
                {
                  if (![*v1488 sharedCacheResidentSizeInBytes])
                  {
                    goto LABEL_611;
                  }

                  if (printJson)
                  {
LABEL_607:
                    v572 = *p_isa;
                    v573 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "sharedCacheResidentSizeInBytes")}];
                    SAJSONWriteDictionaryEntry(v572, @"sharedCacheResidentSize", v573);

                    v574 = *p_isa;
                    v575 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "sharedCacheVirtualSizeInBytes")}];
                    SAJSONWriteDictionaryEntry(v574, @"sharedCacheVirtualSize", v575);

                    v576 = *p_isa;
                    v577 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(*v1488, "sharedCacheResidentSizeInBytes") * 100.0 / objc_msgSend(*v1488, "sharedCacheVirtualSizeInBytes")}];
                    SAJSONWriteDictionaryEntry(v576, @"sharedCacheResidencyPercent", v577);
LABEL_610:

                    goto LABEL_611;
                  }
                }

                v578 = *p_isa;
                [*v1488 sharedCacheResidentSizeInBytes];
                [*v1488 sharedCacheVirtualSizeInBytes];
                v577 = SAFormattedBytesEx([*v1488 sharedCacheResidentSizeInBytes], 1, 0, 1, 0);
                v1403 = SAFormattedBytesEx([*v1488 sharedCacheVirtualSizeInBytes], 1, 0, 1, 0);
                LOBYTE(v1379) = 18;
                [v578 printWithFormat:@"%-*s%0.02f%% (%@ / %@)\n"];

                goto LABEL_610;
              }

LABEL_598:
              v567 = *p_isa;
              v568 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*v1488, "hwPageSize")}];
              SAJSONWriteDictionaryEntry(v567, @"hwPageSize", v568);

              goto LABEL_601;
            }

            v1393 = SAFormattedBytesEx([*v1488 memSize], 1, 0, 1, 0x40000000uLL);
            LOBYTE(v1379) = 18;
            [v565 printWithFormat:@"%-*s%@\n"];

            if (![*v1488 hwPageSize])
            {
              goto LABEL_601;
            }
          }

          else
          {
            if (![*v1488 hwPageSize])
            {
              goto LABEL_601;
            }

            if (printJson)
            {
              goto LABEL_598;
            }
          }

          v569 = *p_isa;
          [*v1488 hwPageSize];
          LOBYTE(v1379) = 18;
          [v569 printWithFormat:@"%-*s%d\n"];
          goto LABEL_601;
        }

LABEL_589:
        v562 = *p_isa;
        v563 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*v1488, "numActiveCPUs")}];
        SAJSONWriteDictionaryEntry(v562, @"numActiveCPUs", v563);

        goto LABEL_592;
      }

      v1392 = SACopySanitizedString(hardwareModel3, 1, 0);
      LOBYTE(v1379) = 18;
      [v559 printWithFormat:@"%-*s%@\n"];

      if (![*v1488 numActiveCPUs])
      {
        goto LABEL_592;
      }
    }

    else
    {
      if (![*v1488 numActiveCPUs])
      {
        goto LABEL_592;
      }

      if (printJson)
      {
        goto LABEL_589;
      }
    }

    v564 = *p_isa;
    [*v1488 numActiveCPUs];
    LOBYTE(v1379) = 18;
    [v564 printWithFormat:@"%-*s%d\n"];
    goto LABEL_592;
  }

  bootArgs4 = [*v1488 bootArgs];
  if ([bootArgs4 length])
  {

    goto LABEL_582;
  }

  displayEmptyBootArgs2 = [*(v1542 + 16) displayEmptyBootArgs];

  if (displayEmptyBootArgs2)
  {
    goto LABEL_583;
  }

LABEL_625:
  [*v1488 lastWakeTime];
  v588 = v587;
  eventTimeRange13 = [*v1488 eventTimeRange];
  startTime5 = [eventTimeRange13 startTime];

  if (!startTime5 || ([startTime5 machAbsTimeSeconds], v591 == 0.0) && (objc_msgSend(startTime5, "machContTimeSeconds"), v592 == 0.0) || ((objc_msgSend(startTime5, "machAbsTimeSeconds"), v593 == 0.0) || (objc_msgSend(startTime5, "machContTimeSeconds"), v594 == 0.0)) && (objc_msgSend(*(v1542 + 32), "machAbsTimeSeconds"), v595 != 0.0) && (objc_msgSend(*(v1542 + 32), "machContTimeSeconds"), v596 != 0.0))
  {
    v597 = *(v1542 + 32);

    startTime5 = v597;
  }

  v1464 = startTime5;
  [v1464 wallTime];
  v598 = v1464;
  v1441 = v1464;
  if (v599 == 0.0)
  {
    v1441 = *(v1542 + 32);

    v598 = v1464;
  }

  [v598 machAbsTimeSeconds];
  if (v600 != 0.0 || ([v1464 machContTimeSeconds], v601 != 0.0) || v588 != 0.0 && (v588 < 0.0 || (objc_msgSend(v1441, "wallTime"), v619 > v588)))
  {
    [v1464 machContTimeSeconds];
    if (v602 == 0.0)
    {
      [v1464 machAbsTimeSeconds];
      if (v607 == 0.0)
      {
        goto LABEL_646;
      }

      if (printJson)
      {
        goto LABEL_643;
      }
    }

    else
    {
      v603 = *p_isa;
      if (printJson)
      {
        v604 = MEMORY[0x1E696AD98];
        [v1464 machContTimeSeconds];
        v605 = [v604 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v603, @"timeSinceBoot", v605);

        [v1464 machAbsTimeSeconds];
        if (v606 == 0.0)
        {
LABEL_646:
          if (v588 >= 0.0)
          {
            if (v588 == 0.0 || ([v1441 wallTime], v614 <= v588))
            {
              if (printJson)
              {
                goto LABEL_664;
              }
            }

            else
            {
              v615 = *p_isa;
              if (printJson)
              {
                v616 = MEMORY[0x1E696AD98];
                [v1441 wallTime];
                v588 = [v616 numberWithDouble:v617 - v588];
                SAJSONWriteDictionaryEntry(v615, @"timeSinceWake", v588);

                goto LABEL_664;
              }

              [v1441 wallTime];
              LOBYTE(v1379) = 18;
              [v615 printWithFormat:@"%-*s%.0fs\n"];
            }
          }

          else
          {
            v613 = *p_isa;
            if (printJson)
            {
              SAJSONWriteDictionaryEntry(v613, @"timeSinceWake", @"n/a");
              goto LABEL_664;
            }

            LOBYTE(v1379) = 18;
            [v613 printWithFormat:@"%-*sn/a (machine hasn't slept)\n"];
          }

          [*p_isa appendString:@"\n"];
          goto LABEL_664;
        }

LABEL_643:
        v608 = *p_isa;
        v609 = MEMORY[0x1E696AD98];
        [v1464 machAbsTimeSeconds];
        v610 = [v609 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v608, @"timeAwakeSinceBoot", v610);

        goto LABEL_646;
      }

      [v1464 machContTimeSeconds];
      LOBYTE(v1379) = 18;
      [v603 printWithFormat:@"%-*s%.0fs\n"];
      [v1464 machAbsTimeSeconds];
      if (v611 == 0.0)
      {
        goto LABEL_646;
      }
    }

    v612 = *p_isa;
    [v1464 machAbsTimeSeconds];
    LOBYTE(v1379) = 18;
    [v612 printWithFormat:@"%-*s%.0fs\n"];
    goto LABEL_646;
  }

LABEL_664:
  v1457 = [*(v1542 + 168) fanSpeedClosestToTimestamp:*(v1542 + 32)];
  v1461 = [*(v1542 + 168) fanSpeedClosestToTimestamp:*(v1542 + 40)];
  if (v1461 && ([v1461 fanSpeedIsValid] & 1) != 0 || v1457 && objc_msgSend(v1457, "fanSpeedIsValid"))
  {
    fanSpeedIsValid = [v1457 fanSpeedIsValid];
    if (printJson)
    {
      if (fanSpeedIsValid)
      {
        v627 = *p_isa;
        v628 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v1457, "fanSpeed")}];
        SAJSONWriteDictionaryEntry(v627, @"startFanSpeed", v628);
      }

      if ([v1461 fanSpeedIsValid])
      {
        v629 = *p_isa;
        v630 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v1461, "fanSpeed")}];
        SAJSONWriteDictionaryEntry(v629, @"endFanSpeed", v630);
      }
    }

    else
    {
      if (fanSpeedIsValid)
      {
        v631 = v1457;
      }

      else
      {
        v631 = v1461;
      }

      fanSpeed = [v631 fanSpeed];
      LOBYTE(v1379) = 18;
      [*p_isa printWithFormat:@"%-*s%d rpm"];
      if ([v1461 fanSpeedIsValid])
      {
        fanSpeed2 = [v1461 fanSpeed];
        v634 = fanSpeed2 - fanSpeed >= 0 ? fanSpeed2 - fanSpeed : fanSpeed - fanSpeed2;
        if (v634 >= 0x64)
        {
          LOBYTE(v1379) = fanSpeed2;
          [*p_isa printWithFormat:@" -> %d (%+d)"];
        }
      }

      [*p_isa appendString:@"\n"];
    }
  }

  v1438 = [SATimeRange timeRangeStart:*(v1542 + 32) end:*(v1542 + 40)];
  if ([v1438 deltaMachAbsTime])
  {
    *v1677 = 0;
    *&v1677[8] = v1677;
    *&v1677[16] = 0x2020000000;
    *&v1677[24] = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000uLL;
    *&v1673 = 0;
    *(&v1673 + 1) = &v1673;
    v1674 = 0x2020000000uLL;
    v635 = *(v1542 + 32);
    v636 = *(v1542 + 40);
    v637 = *(v1542 + 168);
    v1612[0] = MEMORY[0x1E69E9820];
    v1612[1] = 3221225472;
    v1612[2] = __30__SASamplePrinter_printHeader__block_invoke_2;
    v1612[3] = &unk_1E86F7578;
    v638 = v635;
    v1613 = v638;
    v639 = v636;
    v1614 = v639;
    v1615 = v1677;
    v1616 = buf;
    v1617 = &v1673;
    [v637 enumerateTasks:v1612];
    if (!*(*&v1677[8] + 24))
    {
      goto LABEL_690;
    }

    v640 = *p_isa;
    if (printJson)
    {
      v641 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      SAJSONWriteDictionaryEntry(v640, @"totalCpuNanoseconds", v641);

      if (*(*&buf[8] + 24))
      {
        v642 = *p_isa;
        v643 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
        SAJSONWriteDictionaryEntry(v642, @"totalCpuInstructions", v643);
      }

      if (*(*(&v1673 + 1) + 24))
      {
        v644 = *p_isa;
        v645 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
        SAJSONWriteDictionaryEntry(v644, @"totalCpuCycles", v645);
      }

LABEL_690:
      v1499 = 0;
    }

    else
    {
      LOBYTE(v1379) = 18;
      [v640 printWithFormat:@"%-*s"];
      v646 = *(*&v1677[8] + 24);
      v647 = *(v1542 + 8);
      if ([*(v1542 + 16) displayDetailedCpuTime])
      {
        v648 = 9;
      }

      else
      {
        v648 = 3;
      }

      saos_printf_seconds(v647, v646, v648);
      v649 = *(*(&v1673 + 1) + 24);
      if (v649)
      {
        saos_printf_cycles_instructions(*(v1542 + 8), v649, *(*&buf[8] + 24), [*(v1542 + 16) displayDetailedCpuTime]);
      }

      [*p_isa appendString:@"\n"];
      v1499 = 1;
    }

    _Block_object_dispose(&v1673, 8);
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v1677, 8);
  }

  else
  {
    v1499 = 0;
  }

  memoryPressureEvents = [*v1488 memoryPressureEvents];
  v651 = [memoryPressureEvents count] == 0;

  if (!v651)
  {
    v1611 = 0u;
    v1610 = 0u;
    v1609 = 0u;
    v1608 = 0u;
    memoryPressureEvents2 = [*v1488 memoryPressureEvents];
    v652 = [memoryPressureEvents2 countByEnumeratingWithState:&v1608 objects:v1661 count:16];
    if (!v652)
    {
      goto LABEL_718;
    }

    v653 = 0;
    j = 0;
    v654 = 0;
    v655 = *v1609;
    memoryStatusLevel = 100;
    objc = -1;
    do
    {
      for (n = 0; n != v652; ++n)
      {
        if (*v1609 != v655)
        {
          objc_enumerationMutation(memoryPressureEvents2);
        }

        v658 = *(*(&v1608 + 1) + 8 * n);
        v659 = *(v1542 + 32);
        timestamp2 = [v658 timestamp];
        LOBYTE(v659) = [v659 gt:timestamp2];

        if ((v659 & 1) == 0)
        {
          v661 = *(v1542 + 40);
          timestamp3 = [v658 timestamp];
          LOBYTE(v661) = [v661 lt:timestamp3];

          if (v661)
          {
            goto LABEL_714;
          }

          if ([v658 availableBytes] < objc)
          {
            objc = [v658 availableBytes];
          }

          if ([v658 memoryStatusLevel] < memoryStatusLevel)
          {
            memoryStatusLevel = [v658 memoryStatusLevel];
          }

          v654 += [v658 memoryStatusLevel];
          v653 += [v658 availableBytes];
          ++j;
        }
      }

      v652 = [memoryPressureEvents2 countByEnumeratingWithState:&v1608 objects:v1661 count:16];
    }

    while (v652);
LABEL_714:

    if (j)
    {
      v663 = v654 / j;
      v664 = *p_isa;
      if (printJson)
      {
        v663 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 - v663];
        SAJSONWriteDictionaryEntry(v664, @"averageMemoryPressure", v663);

        v666 = *p_isa;
        v667 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v653 / j];
        SAJSONWriteDictionaryEntry(v666, @"averageAvailableBytes", v667);

        v668 = *p_isa;
        v656 = [MEMORY[0x1E696AD98] numberWithInt:100 - memoryStatusLevel];
        SAJSONWriteDictionaryEntry(v668, @"highestMemoryPressure", v656);

        v670 = *p_isa;
        v1522 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:objc];
        SAJSONWriteDictionaryEntry(v670, @"minimumAvailableBytes", v1522);

        goto LABEL_719;
      }

      [v664 printWithFormat:@"%-*saverage %u%%, highest %u%%\n", 18, "Memory pressure: ", 100 - v663, 100 - memoryStatusLevel];
      v671 = *p_isa;
      memoryPressureEvents2 = SAFormattedBytesEx(v653 / j, 1, 0, 1, 0);
      v1401 = SAFormattedBytesEx(objc, 1, 0, 1, 0);
      LOBYTE(v1379) = 18;
      [v671 printWithFormat:@"%-*saverage %@, lowest %@\n"];

      v1499 = 1;
LABEL_718:
    }
  }

LABEL_719:
  lostPerfEvents = [*v1488 lostPerfEvents];
  v673 = [lostPerfEvents count] == 0;

  if (!v673)
  {
    objd = objc_alloc_init(MEMORY[0x1E695DF90]);
    v1607 = 0u;
    v1606 = 0u;
    v1605 = 0u;
    v1604 = 0u;
    lostPerfEvents2 = [*v1488 lostPerfEvents];
    v675 = [lostPerfEvents2 countByEnumeratingWithState:&v1604 objects:v1660 count:16];
    if (v675)
    {
      v676 = *v1605;
      v677 = 0.0;
      do
      {
        for (ii = 0; ii != v675; ++ii)
        {
          if (*v1605 != v676)
          {
            objc_enumerationMutation(lostPerfEvents2);
          }

          v679 = *(*(&v1604 + 1) + 8 * ii);
          endTime5 = [v679 endTime];
          if (endTime5)
          {
            v681 = *(v1542 + 32);
            endTime6 = [v679 endTime];
            LOBYTE(v681) = [v681 ge:endTime6];

            if (v681)
            {
              continue;
            }
          }

          startTime6 = [v679 startTime];
          if (startTime6)
          {
            v684 = *(v1542 + 40);
            startTime7 = [v679 startTime];
            LOBYTE(v684) = [v684 le:startTime7];

            if (v684)
            {
              goto LABEL_748;
            }
          }

          startTime8 = [v679 startTime];
          v687 = *(v1542 + 32);
          if (startTime8)
          {
            startTime9 = [v679 startTime];
            if ([v687 le:startTime9])
            {
              startTime10 = [v679 startTime];
            }

            else
            {
              startTime10 = *(v1542 + 32);
            }
          }

          else
          {
            startTime10 = v687;
          }

          endTime7 = [v679 endTime];
          v691 = *(v1542 + 40);
          if (endTime7)
          {
            endTime8 = [v679 endTime];
            if ([v691 ge:endTime8])
            {
              endTime9 = [v679 endTime];
            }

            else
            {
              endTime9 = *(v1542 + 40);
            }
          }

          else
          {
            endTime9 = v691;
          }

          [startTime10 deltaSecondsTo:endTime9 timeDomainPriorityList:&unk_1F5BDCD60 timeDomainUsed:0];
          v695 = v694;
          lostPerf = [v679 lostPerf];
          v697 = lostPerf;
          v698 = @"No lost perf";
          if (lostPerf)
          {
            v698 = lostPerf;
          }

          v699 = v698;

          v700 = MEMORY[0x1E696AD98];
          v701 = [objd objectForKeyedSubscript:v699];
          [v701 doubleValue];
          j = [v700 numberWithDouble:v695 + v702];
          [objd setObject:j forKeyedSubscript:v699];

          v677 = v677 + v695;
        }

        v675 = [lostPerfEvents2 countByEnumeratingWithState:&v1604 objects:v1660 count:16];
      }

      while (v675);
    }

    else
    {
      v677 = 0.0;
    }

LABEL_748:

    if ([objd count])
    {
      if (v677 + 0.001 < v290)
      {
        v677 = [MEMORY[0x1E696AD98] numberWithDouble:v290 - v677];
        [objd setObject:v677 forKeyedSubscript:@"Unknown"];
      }

      v704 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(objd, "count")}];
      v1603 = 0u;
      v1602 = 0u;
      v1601 = 0u;
      v1600 = 0u;
      v705 = [objd keysSortedByValueUsingSelector:sel_compare_];
      reverseObjectEnumerator = [v705 reverseObjectEnumerator];

      v706 = [reverseObjectEnumerator countByEnumeratingWithState:&v1600 objects:v1659 count:16];
      if (v706)
      {
        j = *v1601;
        do
        {
          for (jj = 0; jj != v706; ++jj)
          {
            if (*v1601 != j)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v708 = *(*(&v1600 + 1) + 8 * jj);
            v709 = [objd objectForKeyedSubscript:v708];
            [v709 doubleValue];
            v711 = v710;

            v712 = objc_alloc(MEMORY[0x1E696AEC0]);
            if ([*(v1542 + 16) displayDetailedCpuTime])
            {
              v713 = 9;
            }

            else
            {
              v713 = 3;
            }

            v714 = seconds_string_for_nanoseconds((v711 * 1000000000.0), v713);
            v290 = [v712 initWithFormat:@"%@ %@ (%.0f%%)", v708, v714, v711 * 100.0 / v290];
            [v704 addObject:v290];
          }

          v706 = [reverseObjectEnumerator countByEnumeratingWithState:&v1600 objects:v1659 count:16];
        }

        while (v706);
      }

      v716 = *p_isa;
      v1395 = [v704 componentsJoinedByString:{@", "}];
      LOBYTE(v1379) = 18;
      [v716 printWithFormat:@"%-*s%@\n"];
    }
  }

  ioEvents = [*v1488 ioEvents];
  v718 = [ioEvents count] == 0;

  if (!v718)
  {
    obje = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    v1524 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    v1599 = 0u;
    v1598 = 0u;
    v1597 = 0u;
    v1596 = 0u;
    ioEvents2 = [*v1488 ioEvents];
    v719 = [ioEvents2 countByEnumeratingWithState:&v1596 objects:v1658 count:16];
    if (v719)
    {
      v1513 = 0;
      v720 = 0;
      v721 = *v1597;
      do
      {
        for (kk = 0; kk != v719; ++kk)
        {
          if (*v1597 != v721)
          {
            objc_enumerationMutation(ioEvents2);
          }

          v723 = *(*(&v1596 + 1) + 8 * kk);
          v724 = *(v1542 + 32);
          endTimestamp5 = [v723 endTimestamp];
          LOBYTE(v724) = [v724 gt:endTimestamp5];

          if ((v724 & 1) == 0)
          {
            v726 = *(v1542 + 40);
            endTimestamp6 = [v723 endTimestamp];
            LOBYTE(v726) = [v726 lt:endTimestamp6];

            if (v726)
            {
              goto LABEL_776;
            }

            tier = [v723 tier];
            v729 = MEMORY[0x1E696AD98];
            v730 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:tier];
            v731 = [obje objectForKeyedSubscript:v730];
            v732 = [v729 numberWithUnsignedLongLong:{objc_msgSend(v731, "unsignedLongLongValue") + 1}];
            v733 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:tier];
            [obje setObject:v732 forKeyedSubscript:v733];

            v734 = MEMORY[0x1E696AD98];
            v735 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:tier];
            v736 = [v1524 objectForKeyedSubscript:v735];
            v737 = [v734 numberWithUnsignedLongLong:{objc_msgSend(v723, "size") + objc_msgSend(v736, "unsignedLongLongValue")}];
            j = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:tier];
            [v1524 setObject:v737 forKeyedSubscript:j];

            ++v1513;
            v720 += [v723 size];
          }
        }

        v719 = [ioEvents2 countByEnumeratingWithState:&v1596 objects:v1658 count:16];
      }

      while (v719);
    }

    else
    {
      v1513 = 0;
      v720 = 0;
    }

LABEL_776:

    if ([obje count])
    {
      [*(v1542 + 40) machAbsTimeSeconds];
      v739 = v738;
      [*(v1542 + 32) machAbsTimeSeconds];
      v741 = *(v1542 + 8);
      if (printJson)
      {
        v742 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v1513];
        SAJSONWriteDictionaryEntry(v741, @"ioCountTotal", v742);

        v743 = *p_isa;
        v744 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v720];
        SAJSONWriteDictionaryEntry(v743, @"ioBytesTotal", v744);

        v1595 = 0u;
        v1594 = 0u;
        v1593 = 0u;
        v1592 = 0u;
        allKeys = [obje allKeys];
        v1506 = [allKeys sortedArrayUsingSelector:sel_compare_];

        v746 = [v1506 countByEnumeratingWithState:&v1592 objects:v1657 count:16];
        if (v746)
        {
          v747 = *v1593;
          do
          {
            for (mm = 0; mm != v746; ++mm)
            {
              if (*v1593 != v747)
              {
                objc_enumerationMutation(v1506);
              }

              v749 = *(*(&v1592 + 1) + 8 * mm);
              v750 = *p_isa;
              v751 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ioCountTier%d", objc_msgSend(v749, "intValue")];
              v752 = [obje objectForKeyedSubscript:v749];
              SAJSONWriteDictionaryEntry(v750, v751, v752);

              v753 = *p_isa;
              v754 = objc_alloc(MEMORY[0x1E696AEC0]);
              LOBYTE(v1379) = [v749 intValue];
              v755 = [v754 initWithFormat:@"ioBytesTier%d"];
              v756 = [v1524 objectForKeyedSubscript:v749];
              SAJSONWriteDictionaryEntry(v753, v755, v756);
            }

            v746 = [v1506 countByEnumeratingWithState:&v1592 objects:v1657 count:16];
          }

          while (v746);
        }
      }

      else
      {
        v757 = v740;
        [v741 printWithFormat:@"I/O statistics:\n"];
        v758 = v739 - v757;
        v759 = *p_isa;
        v760 = SAFormattedBytesEx(v720, 1, 0, 1, 0);
        if (v758 <= 0.0)
        {
          v761 = 0.0;
        }

        else
        {
          v761 = v720 / v758;
        }

        v1404 = SAFormattedBytesDouble(1, 0, v761);
        LOBYTE(v1379) = 18;
        [v759 printWithFormat:@"%-*s%llu IOs (%.0f IOs/s), %@ (%@/s)\n"];

        v1591 = 0u;
        v1590 = 0u;
        v1589 = 0u;
        v1588 = 0u;
        allKeys2 = [obje allKeys];
        v1506 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

        v1500 = [v1506 countByEnumeratingWithState:&v1588 objects:v1656 count:16];
        if (v1500)
        {
          v1491 = *v1589;
          do
          {
            for (nn = 0; nn != v1500; ++nn)
            {
              if (*v1589 != v1491)
              {
                objc_enumerationMutation(v1506);
              }

              v764 = *(*(&v1588 + 1) + 8 * nn);
              v765 = *p_isa;
              v766 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%-*sTier%d: ", 2, ", objc_msgSend(v764, "intValue"")];
              v767 = v766;
              [v766 UTF8String];
              v768 = [obje objectForKeyedSubscript:v764];
              if (v758 > 0.0)
              {
                v1513 = [obje objectForKeyedSubscript:v764];
                [v1513 doubleValue];
              }

              v769 = [v1524 objectForKeyedSubscript:v764];
              [v769 doubleValue];
              v771 = SAFormattedBytesDouble(1, 0, v770);
              v772 = 0.0;
              if (v758 > 0.0)
              {
                j = [v1524 objectForKeyedSubscript:{v764, 0.0}];
                [j doubleValue];
                v772 = v773 / v758;
              }

              v1405 = SAFormattedBytesDouble(1, 0, v772);
              LOBYTE(v1379) = 18;
              [v765 printWithFormat:@"%-*s%@ IOs (%.0f IOs/s), %@ (%@/s)\n"];

              if (v758 > 0.0)
              {

                v771 = v769;
                v769 = v1513;
              }
            }

            v1500 = [v1506 countByEnumeratingWithState:&v1588 objects:v1656 count:16];
          }

          while (v1500);
        }

        v1499 = 1;
      }
    }
  }

  nandGarbageCollectionEvents = [*v1488 nandGarbageCollectionEvents];
  v775 = [nandGarbageCollectionEvents count] == 0;

  if (!v775)
  {
    if (printJson)
    {
      v776 = *p_isa;
      nandGarbageCollectionEvents2 = [*v1488 nandGarbageCollectionEvents];
      SAJSONWriteDictionaryEntry(v776, @"nandGarbageCollectionEvents", nandGarbageCollectionEvents2);
      goto LABEL_837;
    }

    nandGarbageCollectionEvents2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v1587 = 0u;
    v1586 = 0u;
    v1585 = 0u;
    v1584 = 0u;
    objf = [*v1488 nandGarbageCollectionEvents];
    v778 = [objf countByEnumeratingWithState:&v1584 objects:v1655 count:16];
    if (v778)
    {
      v779 = *v1585;
      v780 = 0.0;
      do
      {
        for (i1 = 0; i1 != v778; ++i1)
        {
          if (*v1585 != v779)
          {
            objc_enumerationMutation(objf);
          }

          v782 = *(*(&v1584 + 1) + 8 * i1);
          endTimestamp7 = [v782 endTimestamp];
          if (endTimestamp7)
          {
            v784 = *(v1542 + 32);
            endTimestamp8 = [v782 endTimestamp];
            LOBYTE(v784) = [v784 ge:endTimestamp8];

            if (v784)
            {
              continue;
            }
          }

          startTimestamp6 = [v782 startTimestamp];
          if (startTimestamp6)
          {
            v787 = *(v1542 + 40);
            startTimestamp7 = [v782 startTimestamp];
            LOBYTE(v787) = [v787 le:startTimestamp7];

            if (v787)
            {
              goto LABEL_834;
            }
          }

          startTimestamp8 = [v782 startTimestamp];
          if (startTimestamp8)
          {
            startTimestamp9 = [v782 startTimestamp];
            if ([startTimestamp9 ge:*(v1542 + 32)])
            {
              startTimestamp10 = [v782 startTimestamp];
            }

            else
            {
              startTimestamp10 = *(v1542 + 32);
            }
          }

          else
          {
            startTimestamp10 = *(v1542 + 32);
          }

          endTimestamp9 = [v782 endTimestamp];
          if (endTimestamp9)
          {
            endTimestamp10 = [v782 endTimestamp];
            if ([endTimestamp10 le:*(v1542 + 40)])
            {
              endTimestamp11 = [v782 endTimestamp];
            }

            else
            {
              endTimestamp11 = *(v1542 + 40);
            }
          }

          else
          {
            endTimestamp11 = *(v1542 + 40);
          }

          [startTimestamp10 deltaSecondsTo:endTimestamp11 timeDomainPriorityList:&unk_1F5BDCD78 timeDomainUsed:0];
          v796 = v795;
          reason3 = [v782 reason];
          v798 = reason3;
          v799 = @"unknown";
          if (reason3)
          {
            v799 = reason3;
          }

          v800 = v799;

          v801 = MEMORY[0x1E696AD98];
          v802 = [nandGarbageCollectionEvents2 objectForKeyedSubscript:v800];
          [v802 doubleValue];
          v780 = v780 + v796;
          v803 = [v801 numberWithDouble:v780 + v803];
          [nandGarbageCollectionEvents2 setObject:v803 forKeyedSubscript:v800];
        }

        v778 = [objf countByEnumeratingWithState:&v1584 objects:v1655 count:16];
      }

      while (v778);
LABEL_834:

      if (v780 > 0.0)
      {
        objf = [nandGarbageCollectionEvents2 keysSortedByValueUsingComparator:&__block_literal_global_1164];
        v805 = *p_isa;
        v1406 = [objf componentsJoinedByString:{@", "}];
        LOBYTE(v1379) = 18;
        [v805 printWithFormat:@"%-*s%.0f%% (%.2fs/%.2fs, %@)\n"];

        v1499 = 1;
        goto LABEL_836;
      }
    }

    else
    {
LABEL_836:
    }

LABEL_837:
  }

  systemAdvisoryLevels = [*v1488 systemAdvisoryLevels];

  if (systemAdvisoryLevels)
  {
    if (printJson)
    {
      systemAdvisoryLevels2 = [*(v1542 + 168) systemAdvisoryLevels];
      v1583[0] = MEMORY[0x1E69E9820];
      v1583[1] = 3221225472;
      v1583[2] = __30__SASamplePrinter_printHeader__block_invoke_4;
      v1583[3] = &unk_1E86F75C0;
      v1583[4] = v1542;
      [systemAdvisoryLevels2 enumerateKeysAndObjectsUsingBlock:v1583];
    }

    else
    {
      v808 = objc_alloc_init(MEMORY[0x1E696AD60]);
      systemAdvisoryLevels3 = [*v1488 systemAdvisoryLevels];
      v1581[0] = MEMORY[0x1E69E9820];
      v1581[1] = 3221225472;
      v1581[2] = __30__SASamplePrinter_printHeader__block_invoke_5;
      v1581[3] = &unk_1E86F75C0;
      v810 = v808;
      v1582 = v810;
      [systemAdvisoryLevels3 enumerateKeysAndObjectsUsingBlock:v1581];

      if ([v810 hasSuffix:{@", "}])
      {
        v811 = [@" "];
        [v810 replaceCharactersInRange:objc_msgSend(v810 withString:{"length") - v811, v811, &stru_1F5BBF440}];
      }

      v812 = *p_isa;
      v813 = v810;
      [v810 UTF8String];
      LOBYTE(v1379) = 18;
      [v812 printWithFormat:@"%-*s%s\n"];

      v1499 = 1;
    }
  }

  homeVolumeSpace = [*v1488 homeVolumeSpace];

  if (homeVolumeSpace)
  {
    homeVolumeSpace2 = [*v1488 homeVolumeSpace];
    v816 = [homeVolumeSpace2 objectForKeyedSubscript:0x1F5BBF8A0];

    homeVolumeSpace3 = [*v1488 homeVolumeSpace];
    v818 = [homeVolumeSpace3 objectForKeyedSubscript:0x1F5BBF8C0];

    homeVolumeSpace4 = [*v1488 homeVolumeSpace];
    v820 = [homeVolumeSpace4 objectForKeyedSubscript:0x1F5BBF8E0];

    if (v816)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & (v818 != 0)) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v820)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v820 = 0;
            }
          }

          v821 = *p_isa;
          if (printJson)
          {
            SAJSONWriteDictionaryEntry(*p_isa, @"homeVolumeTotalSpace", v816);
            SAJSONWriteDictionaryEntry(*p_isa, @"homeVolumeAvailableSpace", v818);
            if (v820)
            {
              SAJSONWriteDictionaryEntry(*p_isa, @"homeVolumeLowSpaceThreshold", v820);
            }
          }

          else
          {
            v822 = SAFormattedBytesEx([v818 unsignedLongLongValue], 1, 0, 1, 0);
            v1402 = SAFormattedBytesEx([v816 unsignedLongLongValue], 1, 0, 1, 0);
            LOBYTE(v1379) = 18;
            [v821 printWithFormat:@"%-*s%@/%@"];

            if (v820)
            {
              v823 = *p_isa;
              SAFormattedBytesEx([v820 unsignedLongLongValue], 1, 0, 1, 0);
              v1379 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              [v823 printWithFormat:@", low space threshold %@"];
            }

            [*p_isa printWithFormat:@"\n"];
            v1499 = 1;
          }
        }
      }
    }
  }

  powerModeTransitions = [*v1488 powerModeTransitions];
  v825 = [powerModeTransitions count] == 0;

  if (v825)
  {
    goto LABEL_915;
  }

  if (printJson)
  {
    v827 = *p_isa;
    powerModeTransitions2 = [*v1488 powerModeTransitions];
    SAJSONWriteDictionaryEntry(v827, @"powerModeTransitions", powerModeTransitions2);

    goto LABEL_915;
  }

  *v1677 = 0;
  v1577 = 0u;
  v1578 = 0u;
  v1579 = 0u;
  v1580 = 0u;
  powerModeTransitions3 = [*v1488 powerModeTransitions];
  v830 = [powerModeTransitions3 countByEnumeratingWithState:&v1577 objects:v1654 count:16];
  if (!v830)
  {

    v835 = 0;
    goto LABEL_914;
  }

  v831 = 0;
  v832 = 0;
  lowPowerMode2 = 0;
  v834 = 0;
  v835 = 0;
  v836 = *v1578;
  v837 = 0.0;
  while (2)
  {
    v838 = 0;
    while (2)
    {
      if (*v1578 != v836)
      {
        objc_enumerationMutation(powerModeTransitions3);
      }

      v839 = *(*(&v1577 + 1) + 8 * v838);
      if ([v839 lowPowerModeChanged])
      {
        timestamp4 = [v839 timestamp];
        v841 = timestamp4;
        if (!timestamp4)
        {
          goto LABEL_879;
        }

        if ([timestamp4 isComparable:*(v1542 + 40)] && objc_msgSend(v841, "gt:", *(v1542 + 40)))
        {
          if (v834)
          {

LABEL_888:
            if (v832)
            {
              if (lowPowerMode2)
              {
                [*(v1542 + 40) wallTime];
                v850 = v849;
                [v835 wallTime];
                v837 = v837 + v850 - v851;
                if (v832 == 1)
                {
                  asprintf(v1677, "(for last %.1fs of samples)", v837);
                  goto LABEL_909;
                }

LABEL_908:
                [*(v1542 + 40) wallTime];
                v863 = v862;
                [*(v1542 + 32) wallTime];
                asprintf(v1677, "(for %.1fs out of %.1fs of samples)", v837, v863 - v864);
              }

              else
              {
                if (v832 != 1)
                {
                  goto LABEL_908;
                }

                asprintf(v1677, "(for first %.1fs of samples)", v837);
              }

LABEL_909:
              [*p_isa printWithFormat:@"%-*sEnabled", 18, "Low Power Mode: "];
              v861 = *p_isa;
              if (!*v1677)
              {
LABEL_912:
                [v861 appendString:@"\n"];
                goto LABEL_913;
              }

LABEL_905:
              LOBYTE(v1379) = v1677[0];
              [v861 printWithFormat:@" %s\n"];
LABEL_913:
              v1499 = 1;
              goto LABEL_914;
            }

            *v1677 = 0;
            if (lowPowerMode2)
            {
              goto LABEL_909;
            }
          }

          else
          {
            lowPowerMode = [v839 lowPowerMode];

            if ((lowPowerMode & 1) == 0)
            {
              goto LABEL_909;
            }
          }

LABEL_903:
          if ([*(v1542 + 16) displayDefaultPowerModes])
          {
            LOBYTE(v1379) = 18;
            [*p_isa printWithFormat:@"%-*sDisabled"];
            v861 = *p_isa;
            if (!*v1677)
            {
              goto LABEL_912;
            }

            goto LABEL_905;
          }

          goto LABEL_913;
        }

        if ([v841 isComparable:*(v1542 + 32)] && (objc_msgSend(v841, "lt:", *(v1542 + 32)) & 1) == 0)
        {
          if ((v834 & 1) == 0 || (lowPowerMode2 & 1) != [v839 lowPowerMode])
          {
            if (([v839 lowPowerMode] & 1) == 0)
            {
              timestamp5 = [v839 timestamp];
              [timestamp5 wallTime];
              v844 = v843;
              v845 = v835;
              if (!v835)
              {
                v845 = *(v1542 + 32);
              }

              [v845 wallTime];
              v847 = v846;

              v837 = v837 + v844 - v847;
            }

            v848 = v841;

            ++v832;
            v835 = v848;
            goto LABEL_879;
          }
        }

        else
        {
LABEL_879:
          lowPowerMode2 = [v839 lowPowerMode];
        }

        v831 = 1;
        v834 = 1;
      }

      if (v830 != ++v838)
      {
        continue;
      }

      break;
    }

    v830 = [powerModeTransitions3 countByEnumeratingWithState:&v1577 objects:v1654 count:16];
    if (v830)
    {
      continue;
    }

    break;
  }

  if (v831)
  {
    if (v834)
    {
      goto LABEL_888;
    }

    goto LABEL_903;
  }

LABEL_914:

LABEL_915:
  Property = *v1488;
  if (*v1488)
  {
    Property = objc_getProperty(Property, v826, 1176, 1);
  }

  v866 = Property;

  if (v866)
  {
    if (printJson)
    {
      v868 = *p_isa;
      v869 = *v1488;
      if (*v1488)
      {
        v869 = objc_getProperty(v869, v867, 1176, 1);
      }

      v870 = v869;
      SAJSONWriteDictionaryEntry(v868, @"_powerMitigationLevelAtTailspinCapture", v870);

      v871 = *v1488;
      if (!*v1488 || !v871[145])
      {
LABEL_941:
        models = [v871 models];

        if (models)
        {
          v891 = *p_isa;
          models2 = [*v1488 models];
          SAJSONWriteDictionaryEntry(v891, @"models", models2);
        }

        objh = [(SASamplePrinter *)v1542 printLaunchdThrottledProcessesToStream:?];
        goto LABEL_1087;
      }

LABEL_933:
      v879 = *p_isa;
      v880 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v871[142]];
      SAJSONWriteDictionaryEntry(v879, @"numVnodesAllocated", v880);

      v881 = *p_isa;
      if (*v1488)
      {
        v882 = *(*v1488 + 143);
      }

      else
      {
        v882 = 0;
      }

      v883 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v882];
      SAJSONWriteDictionaryEntry(v881, @"numVnodesFree", v883);

      v884 = *p_isa;
      if (*v1488)
      {
        v885 = *(*v1488 + 144);
      }

      else
      {
        v885 = 0;
      }

      v886 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v885];
      SAJSONWriteDictionaryEntry(v884, @"numVnodesSoftLimit", v886);

      v887 = *p_isa;
      if (*v1488)
      {
        v888 = *(*v1488 + 145);
      }

      else
      {
        v888 = 0;
      }

      v889 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v888];
      SAJSONWriteDictionaryEntry(v887, @"numVnodesHardLimit", v889);

      v871 = *v1488;
      goto LABEL_941;
    }

    isAnyPowerMitigationEnabledAtTailspinCapture = [(SASampleStore *)*v1488 isAnyPowerMitigationEnabledAtTailspinCapture];
    v874 = v1488;
    if ((isAnyPowerMitigationEnabledAtTailspinCapture & 1) != 0 || (v875 = [*(v1542 + 16) displayDefaultPowerModes], v874 = v1488, v875))
    {
      v876 = *p_isa;
      v877 = *v874;
      if (*v874)
      {
        v877 = objc_getProperty(v877, v873, 1176, 1);
      }

      v1396 = v877;
      LOBYTE(v1379) = 18;
      [v876 printWithFormat:@"%-*s%@\n"];

      v1499 = 1;
      goto LABEL_929;
    }
  }

  else
  {
LABEL_929:
    v874 = v1488;
  }

  v871 = *v874;
  if (*v874 && (v878 = v871[145]) != 0)
  {
    if (printJson)
    {
      goto LABEL_933;
    }

    LOBYTE(v1379) = 18;
    v1397 = (v871[143] - v871[142] + v878) * 100.0 / v878;
    objc_msgSend(*p_isa, "printWithFormat:", @"%-*s%.2f%% (%llu/%llu");
    v893 = *v1488;
    if (*v1488)
    {
      if (v893[142] == v893[145] || (LOBYTE(v1379) = v893[142], [*p_isa printWithFormat:@", %llu allocated"], (v893 = *v1488) != 0))
      {
        if (v893[144] != v893[145])
        {
          LOBYTE(v1379) = v893[144];
          [*p_isa printWithFormat:@", %llu soft limit"];
        }
      }
    }

    [*p_isa printWithFormat:@"\n"]);
    v871 = *v1488;
    v1499 = 1;
  }

  else if (printJson)
  {
    goto LABEL_941;
  }

  eventTimeRange14 = [v871 eventTimeRange];
  startTime11 = [eventTimeRange14 startTime];
  v896 = startTime11;
  if (!startTime11)
  {
    v896 = *(v1542 + 32);
  }

  objg = v896;

  eventTimeRange15 = [*v1488 eventTimeRange];
  endTime10 = [eventTimeRange15 endTime];
  v899 = endTime10;
  if (!endTime10)
  {
    v899 = *(v1542 + 40);
  }

  v1525 = v899;

  if (objg && v1525)
  {
    models3 = [*v1488 models];
    v1434 = models3;
    if (!models3)
    {
      v979 = @"%-*sUNKNOWN\n";
      goto LABEL_1081;
    }

    if (![models3 count])
    {
      goto LABEL_1080;
    }

    v1576 = 0u;
    v1575 = 0u;
    v1574 = 0u;
    v1573 = 0u;
    v1467 = v1434;
    v1475 = [v1467 countByEnumeratingWithState:&v1573 objects:v1653 count:16];
    if (!v1475)
    {

      goto LABEL_1080;
    }

    v1485 = 0;
    v1471 = *v1574;
LABEL_959:
    v901 = 0;
LABEL_960:
    if (*v1574 != v1471)
    {
      v902 = v901;
      objc_enumerationMutation(v1467);
      v901 = v902;
    }

    v1480 = v901;
    v1514 = *(*(&v1573 + 1) + 8 * v901);
    v1501 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    loadedChanges = [v1514 loadedChanges];
    v904 = [loadedChanges count] == 0;

    if (v904)
    {
      timestamp6 = 0;
      v908 = 0;
      goto LABEL_1027;
    }

    v905 = 0;
    v906 = 0;
    v907 = 0;
    v908 = 0;
    while (1)
    {
      loadedChanges2 = [v1514 loadedChanges];
      v910 = [loadedChanges2 objectAtIndexedSubscript:v905];

      loaded = [v910 loaded];
      if (loaded)
      {
        if ((v907 & 1) == 0)
        {
          timestamp6 = [v910 timestamp];

          if (timestamp6)
          {
            if ([timestamp6 isComparable:v1525] && (objc_msgSend(timestamp6, "gt:", v1525) & 1) != 0)
            {

              goto LABEL_1027;
            }

            v906 = timestamp6;
          }

          else
          {
            v906 = 0;
          }
        }

        loadedRequesters = [v910 loadedRequesters];
        if (loadedRequesters)
        {
          loadedRequesters2 = [v910 loadedRequesters];
          [v1501 addObjectsFromArray:loadedRequesters2];
        }

        goto LABEL_1006;
      }

      if (v907)
      {
        break;
      }

LABEL_1005:
      [v1501 removeAllObjects];
      loadedRequesters = v906;
      v906 = 0;
LABEL_1006:

      loadedChanges3 = [v1514 loadedChanges];
      v936 = [loadedChanges3 count];

      ++v905;
      v907 = loaded;
      if (v905 >= v936)
      {
        if (loaded)
        {
          if ((v908 & 1) == 0)
          {
            v937 = *p_isa;
            identifier = [v1514 identifier];
            [v937 printWithFormat:@"%-*s%@\n", 18, "Model: ", identifier];
          }

          [*p_isa printWithFormat:@"%-*s", 18, "  Loaded: "];
          if (v906)
          {
            *v1677 = 0;
            [objg deltaSecondsTo:v906 timeDomainPriorityList:&unk_1F5BDCDC0 timeDomainUsed:v1677];
            if (*v1677)
            {
              v940 = v939;
            }

            else
            {
              v940 = NAN;
            }

            v941 = *p_isa;
            if (v940 == 0.0)
            {
              v942 = 2;
            }

            else
            {
              v943 = -v940;
              if (v940 >= 0.0)
              {
                v943 = v940;
              }

              v942 = 2 - vcvtpd_s64_f64(log10(v943));
              v944 = __exp10(v942);
              v940 = round(v940 * v944) / v944;
            }

            [v941 printWithFormat:@"%.*fs", v942 & ~(v942 >> 31), *&v940];
          }

          else
          {
            [*p_isa printWithFormat:@"???"];
          }

          [*p_isa printWithFormat:@" - N/A"];
          v945 = [v1501 count];
          v946 = *p_isa;
          if (v945)
          {
            allObjects4 = [v1501 allObjects];
            v948 = [allObjects4 sortedArrayUsingComparator:&__block_literal_global_11];
            [v948 componentsJoinedByString:{@", "}];
            v1379 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            [v946 printWithFormat:@", requested by %@"];
          }

          else
          {
            [*p_isa printWithFormat:@", requested by UNKNOWN"];
          }

          [*p_isa printWithFormat:@"\n"];
          v908 = 1;
        }

        timestamp6 = v906;
LABEL_1027:
        v1572 = 0u;
        v1571 = 0u;
        v1570 = 0u;
        v1569 = 0u;
        executions = [v1514 executions];
        v949 = [executions countByEnumeratingWithState:&v1569 objects:v1652 count:16];
        if (!v949)
        {
          goto LABEL_1072;
        }

        v950 = *v1570;
        while (2)
        {
          v951 = 0;
LABEL_1030:
          if (*v1570 != v950)
          {
            objc_enumerationMutation(executions);
          }

          v952 = *(*(&v1569 + 1) + 8 * v951);
          startTime12 = [v952 startTime];
          endTime11 = [v952 endTime];
          v955 = endTime11;
          if (startTime12)
          {
            if ([startTime12 isComparable:v1525] && (objc_msgSend(startTime12, "gt:", v1525) & 1) != 0)
            {

              goto LABEL_1072;
            }

            *v1677 = 0;
            [objg deltaSecondsTo:startTime12 timeDomainPriorityList:&unk_1F5BDCDD8 timeDomainUsed:v1677];
            if (*v1677)
            {
              v957 = v956;
            }

            else
            {
              v957 = NAN;
            }

            if (v955)
            {
LABEL_1039:
              *v1677 = 0;
              [objg deltaSecondsTo:v955 timeDomainPriorityList:&unk_1F5BDCDF0 timeDomainUsed:v1677];
              if (*v1677)
              {
                v959 = v958;
              }

              else
              {
                v959 = NAN;
              }

              v960 = 1;
              if (v959 < -10.0)
              {
                goto LABEL_1068;
              }

              goto LABEL_1046;
            }
          }

          else
          {
            v957 = NAN;
            if (endTime11)
            {
              goto LABEL_1039;
            }
          }

          v960 = 0;
          v959 = NAN;
LABEL_1046:
          if (v957 >= -10.0)
          {
            if ((v908 & 1) == 0)
            {
              v961 = *p_isa;
              identifier2 = [v1514 identifier];
              [v961 printWithFormat:@"%-*s%@\n", 18, "Model: ", identifier2];
            }

            [*p_isa printWithFormat:@"%-*s", 18, "  Executing: "];
            v963 = *p_isa;
            if (v957 == 0.0)
            {
              v964 = 2;
            }

            else
            {
              v965 = -v957;
              if (v957 >= 0.0)
              {
                v965 = v957;
              }

              v964 = 2 - vcvtpd_s64_f64(log10(v965));
              v966 = __exp10(v964);
              v957 = round(v957 * v966) / v966;
            }

            [v963 printWithFormat:@"%.*fs", v964 & ~(v964 >> 31), *&v957];
            [*p_isa printWithFormat:@" - "];
            v967 = *p_isa;
            if (v960)
            {
              if (v959 == 0.0)
              {
                v968 = 2;
              }

              else
              {
                v969 = -v959;
                if (v959 >= 0.0)
                {
                  v969 = v959;
                }

                v968 = 2 - vcvtpd_s64_f64(log10(v969));
                v970 = __exp10(v968);
                v959 = round(v959 * v970) / v970;
              }

              [v967 printWithFormat:@"%.*fs", v968 & ~(v968 >> 31), *&v959];
            }

            else
            {
              [*p_isa printWithFormat:@"N/A"];
            }

            v971 = *p_isa;
            requester = [v952 requester];
            v973 = requester;
            if (requester)
            {
              v974 = requester;
            }

            else
            {
              v974 = @"UNKNOWN";
            }

            useCaseID = [v952 useCaseID];
            v976 = useCaseID;
            v977 = @"UNKNOWN";
            if (useCaseID)
            {
              v977 = useCaseID;
            }

            [v971 printWithFormat:@", requested by %@ use case %@", v974, v977];

            [*p_isa printWithFormat:@"\n"];
            v908 = 1;
          }

LABEL_1068:

          if (v949 == ++v951)
          {
            v949 = [executions countByEnumeratingWithState:&v1569 objects:v1652 count:16];
            if (v949)
            {
              continue;
            }

LABEL_1072:

            v1485 |= v908;
            v901 = v1480 + 1;
            if (v1480 + 1 == v1475)
            {
              v978 = [v1467 countByEnumeratingWithState:&v1573 objects:v1653 count:16];
              v1475 = v978;
              if (!v978)
              {

                if (v1485)
                {
LABEL_1082:

                  v1499 = 1;
                  goto LABEL_1083;
                }

LABEL_1080:
                v979 = @"%-*snone\n";
LABEL_1081:
                [*p_isa printWithFormat:v979, 18, "Models: "];
                goto LABEL_1082;
              }

              goto LABEL_959;
            }

            goto LABEL_960;
          }

          goto LABEL_1030;
        }
      }
    }

    timestamp7 = [v910 timestamp];
    if (timestamp7)
    {
      *v1677 = 0;
      [objg deltaSecondsTo:timestamp7 timeDomainPriorityList:&unk_1F5BDCD90 timeDomainUsed:v1677];
      if (*v1677)
      {
        v914 = v913;
      }

      else
      {
        v914 = NAN;
      }

      if (v914 >= -10.0)
      {
        if (v908)
        {
LABEL_981:
          [*p_isa printWithFormat:@"%-*s", 18, "  Loaded: "];
          if (v906)
          {
            *v1677 = 0;
            [objg deltaSecondsTo:v906 timeDomainPriorityList:&unk_1F5BDCDA8 timeDomainUsed:v1677];
            if (*v1677)
            {
              v920 = v919;
            }

            else
            {
              v920 = NAN;
            }

            v921 = *p_isa;
            if (v920 == 0.0)
            {
              v922 = 2;
            }

            else
            {
              v925 = -v920;
              if (v920 >= 0.0)
              {
                v925 = v920;
              }

              v922 = 2 - vcvtpd_s64_f64(log10(v925));
              v926 = __exp10(v922);
              v920 = round(v920 * v926) / v926;
            }

            [v921 printWithFormat:@"%.*fs", v922 & ~(v922 >> 31), *&v920];
          }

          else
          {
            [*p_isa printWithFormat:@"???"];
          }

          [*p_isa printWithFormat:@" - "];
          v927 = *p_isa;
          if (v914 == 0.0)
          {
            v928 = 2;
          }

          else
          {
            v929 = -v914;
            if (v914 >= 0.0)
            {
              v929 = v914;
            }

            v928 = 2 - vcvtpd_s64_f64(log10(v929));
            v930 = __exp10(v928);
            v914 = round(v914 * v930) / v930;
          }

          [v927 printWithFormat:@"%.*fs", v928 & ~(v928 >> 31), *&v914];
          v931 = [v1501 count];
          v932 = *p_isa;
          if (v931)
          {
            allObjects5 = [v1501 allObjects];
            v934 = [allObjects5 sortedArrayUsingComparator:&__block_literal_global_11];
            [v934 componentsJoinedByString:{@", "}];
            v1379 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            [v932 printWithFormat:@", requested by %@"];
          }

          else
          {
            [*p_isa printWithFormat:@", requested by UNKNOWN"];
          }

          [*p_isa printWithFormat:@"\n"];
          v908 = 1;
          goto LABEL_1004;
        }

LABEL_980:
        v917 = *p_isa;
        identifier3 = [v1514 identifier];
        [v917 printWithFormat:@"%-*s%@\n", 18, "Model: ", identifier3];

        goto LABEL_981;
      }
    }

    else
    {
      loadedChanges4 = [v1514 loadedChanges];
      v916 = v905 < [loadedChanges4 count] - 1;

      if (!v916)
      {
        v914 = NAN;
        if (v908)
        {
          goto LABEL_981;
        }

        goto LABEL_980;
      }
    }

LABEL_1004:

    goto LABEL_1005;
  }

LABEL_1083:

  if (!(printJson & 1 | ((v1499 & 1) == 0)))
  {
    [*p_isa printWithFormat:@"\n"];
  }

  v1009 = *(v1542 + 8);
  v1010 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *&v1673 = MEMORY[0x1E69E9820];
  *(&v1673 + 1) = 3221225472;
  *&v1674 = __60__SASamplePrinter_printProcessesWithHIESwallowedExceptions___block_invoke;
  *(&v1674 + 1) = &unk_1E86F74B0;
  *&v1675 = v1542;
  v1011 = v1010;
  *(&v1675 + 1) = v1011;
  v1012 = MEMORY[0x1E12EBE50](&v1673);
  targetProcess5 = [*(v1542 + 168) targetProcess];
  if (targetProcess5)
  {
    (v1012)[2](v1012, targetProcess5);
  }

  else
  {
    v1682 = 0u;
    v1683 = 0u;
    memset(buf, 0, sizeof(buf));
    targetProcesses2 = [*v1488 targetProcesses];
    v1084 = [targetProcesses2 countByEnumeratingWithState:buf objects:v1677 count:16];
    if (v1084)
    {
      v1085 = **&buf[16];
      do
      {
        for (i2 = 0; i2 != v1084; ++i2)
        {
          if (**&buf[16] != v1085)
          {
            objc_enumerationMutation(targetProcesses2);
          }

          v1012[2](v1012, *(*&buf[8] + 8 * i2));
        }

        v1084 = [targetProcesses2 countByEnumeratingWithState:buf objects:v1677 count:16];
      }

      while (v1084);
    }
  }

  v1087 = [v1011 count];
  if (v1087)
  {
    options = [v1542 options];
    printJson2 = [options printJson];

    if (!printJson2)
    {
      v1398 = [v1011 componentsJoinedByString:{@", "}];
      LOBYTE(v1379) = 18;
      [v1009 printWithFormat:@"%-*s%@\n"];

      goto LABEL_1229;
    }

LABEL_1605:
    v1371 = *__error();
    v1372 = _sa_logt();
    if (os_log_type_enabled(v1372, OS_LOG_TYPE_ERROR))
    {
      *v1649 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v1372, OS_LOG_TYPE_ERROR, "printProcessesWithHIESwallowedExceptions doesn't support json output", v1649, 2u);
    }

    *__error() = v1371;
    _SASetCrashLogMessage(2247, "printProcessesWithHIESwallowedExceptions doesn't support json output", v1373, v1374, v1375, v1376, v1377, v1378, SLOBYTE(v1379));
    _os_crash();
    __break(1u);
  }

LABEL_1229:

  v1090 = [(SASamplePrinter *)v1542 printLaunchdThrottledProcessesToStream:?];
  v1091 = *(v1542 + 8);
  v1092 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1093 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1094 = *(v1542 + 168);
  *v1677 = MEMORY[0x1E69E9820];
  *&v1677[8] = 3221225472;
  *&v1677[16] = __63__SASamplePrinter_printProcessesHittingWQThreadLimitsToStream___block_invoke;
  *&v1677[24] = &unk_1E86F5418;
  v1678 = v1542;
  v1095 = v1092;
  v1679 = v1095;
  v1096 = v1093;
  v1680 = v1096;
  [v1094 enumerateTasks:v1677];
  options2 = [v1542 options];
  LODWORD(v1094) = [options2 printJson];

  if (v1094)
  {
    v1355 = *__error();
    v1356 = _sa_logt();
    if (os_log_type_enabled(v1356, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v1356, OS_LOG_TYPE_ERROR, "printProcessesHittingWQThreadLimits doesn't support json output", buf, 2u);
    }

    *__error() = v1355;
    _SASetCrashLogMessage(2430, "printProcessesHittingWQThreadLimits doesn't support json output", v1357, v1358, v1359, v1360, v1361, v1362, SLOBYTE(v1379));
    _os_crash();
    __break(1u);
    goto LABEL_1602;
  }

  if ([v1095 count])
  {
    workQueueHardThreadLimit = [*v1488 workQueueHardThreadLimit];
    [v1095 componentsJoinedByString:{@", "}];
    v1381 = LOBYTE(v1379) = workQueueHardThreadLimit;
    [v1091 printWithFormat:@"Processes reached dispatch thread hard limit (%u): %@\n"];
  }

  if ([v1096 count])
  {
    workQueueSoftThreadLimit = [*v1488 workQueueSoftThreadLimit];
    [v1096 componentsJoinedByString:{@", "}];
    v1382 = LOBYTE(v1379) = workQueueSoftThreadLimit;
    [v1091 printWithFormat:@"Processes reached dispatch thread soft limit (%u): %@\n"];
  }

  v1100 = v1087 != 0;
  v1101 = [v1095 count];
  v1102 = [v1096 count];

  if (v1101 + v1102)
  {
    v1103 = 1;
  }

  else
  {
    v1103 = v1090;
  }

  v1104 = *(v1542 + 8);
  v1105 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1106 = *(v1542 + 168);
  *v1677 = MEMORY[0x1E69E9820];
  *&v1677[8] = 3221225472;
  *&v1677[16] = __50__SASamplePrinter_printRunawayMitigatedProcesses___block_invoke;
  *&v1677[24] = &unk_1E86F5D08;
  v1678 = v1542;
  v1107 = v1105;
  v1679 = v1107;
  [v1106 enumerateTasks:v1677];
  options3 = [v1542 options];
  printJson3 = [options3 printJson];

  if (printJson3)
  {
LABEL_1602:
    v1363 = *__error();
    v1364 = _sa_logt();
    if (os_log_type_enabled(v1364, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v1364, OS_LOG_TYPE_ERROR, "printRunawayMitigatedProcesses doesn't support json output", buf, 2u);
    }

    *__error() = v1363;
    _SASetCrashLogMessage(2456, "printRunawayMitigatedProcesses doesn't support json output", v1365, v1366, v1367, v1368, v1369, v1370, SLOBYTE(v1379));
    _os_crash();
    __break(1u);
    goto LABEL_1605;
  }

  if ([v1107 count])
  {
    v1110 = [v1107 componentsJoinedByString:{@", "}];
    [v1104 printWithFormat:@"%-*s%@\n", 18, "Processes runaway mitigated: ", v1110];
  }

  v1111 = [v1107 count];

  objh = (v1111 != 0) | v1100 | v1103;
LABEL_1087:
  v980 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v981 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v982 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v983 = *(v1542 + 152);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __34__SASamplePrinter_printDeadlocks___block_invoke;
  *&buf[24] = &unk_1E86F7270;
  *&v1682 = v1542;
  v984 = v982;
  *(&v1682 + 1) = v984;
  v1526 = v981;
  *&v1683 = v1526;
  v985 = v980;
  *(&v1683 + 1) = v985;
  [v983 enumerateKeysAndObjectsUsingBlock:buf];
  v986 = [v985 count];
  v987 = v986 != 0;
  if (v986)
  {
    options4 = [v1542 options];
    printJson4 = [options4 printJson];

    if (printJson4)
    {
      SAJSONWriteDictionaryEntry(*p_isa, @"deadlocks", v985);
    }

    else
    {
      v1676 = 0u;
      v1675 = 0u;
      v1674 = 0u;
      v1673 = 0u;
      v990 = v985;
      v991 = [v990 countByEnumeratingWithState:&v1673 objects:v1677 count:16];
      if (v991)
      {
        v992 = *v1674;
        do
        {
          for (i3 = 0; i3 != v991; ++i3)
          {
            if (*v1674 != v992)
            {
              objc_enumerationMutation(v990);
            }

            [*p_isa printWithFormat:@"%-*s%@\n", 18, "Deadlock: ", *(*(&v1673 + 1) + 8 * i3)];
          }

          v991 = [v990 countByEnumeratingWithState:&v1673 objects:v1677 count:16];
        }

        while (v991);
      }
    }
  }

  if ([v984 count])
  {
    options5 = [v1542 options];
    printJson5 = [options5 printJson];

    v996 = *(v1542 + 8);
    if (printJson5)
    {
      allObjects6 = [v984 allObjects];
      v998 = [allObjects6 sortedArrayUsingComparator:&__block_literal_global_11];
      SAJSONWriteDictionaryEntry(v996, @"blockedByDeadlock", v998);
    }

    else
    {
      v999 = [v984 count];
      if ([v984 count] == 1)
      {
        v1000 = "";
      }

      else
      {
        v1000 = "s";
      }

      allObjects6 = [v984 allObjects];
      v998 = [allObjects6 sortedArrayUsingComparator:&__block_literal_global_11];
      v1001 = [v998 componentsJoinedByString:{@", "}];
      [v996 printWithFormat:@"%-*s%lu task%s - %@\n", 18, "Blocked by Deadlock: ", v999, v1000, v1001];
    }

    v987 = 1;
  }

  if (!(printJson & 1 | (((v987 | objh) & 1) == 0)))
  {
    [*p_isa printWithFormat:@"\n"];
  }

  if ([*v1488 appleInternalIsKnown])
  {
    if (printJson)
    {
      v1002 = *p_isa;
      if ([*v1488 isAppleInternal])
      {
        v1003 = MEMORY[0x1E695E118];
      }

      else
      {
        v1003 = MEMORY[0x1E695E110];
      }

      SAJSONWriteDictionaryEntry(v1002, @"isAppleInternal", v1003);
    }

    else if ([*v1488 isAppleInternal])
    {
      v1004 = *p_isa;
      if ([*v1488 isAppleInternal])
      {
        v1005 = "Yes";
      }

      else
      {
        v1005 = "No";
      }

      [v1004 printWithFormat:@"%-*s%s\n", 18, "Apple Internal: ", v1005];
    }

    if ([*v1488 isAppleInternal] && objc_msgSend(*v1488, "hasInternalCarryDeviceDistinction"))
    {
      v1006 = *p_isa;
      isInternalCarryDevice = [*v1488 isInternalCarryDevice];
      if (printJson)
      {
        if (isInternalCarryDevice)
        {
          v1008 = MEMORY[0x1E695E118];
        }

        else
        {
          v1008 = MEMORY[0x1E695E110];
        }

        SAJSONWriteDictionaryEntry(v1006, @"isInternalCarryDevice", v1008);
      }

      else
      {
        if (isInternalCarryDevice)
        {
          v1014 = "Yes";
        }

        else
        {
          v1014 = "No";
        }

        [v1006 printWithFormat:@"%-*s%s\n", 18, "Internal Carry Device: ", v1014];
      }
    }
  }

  automatedDeviceGroup = [*v1488 automatedDeviceGroup];

  if (automatedDeviceGroup)
  {
    v1016 = *p_isa;
    automatedDeviceGroup2 = [*v1488 automatedDeviceGroup];
    v1018 = automatedDeviceGroup2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v1016, @"automatedDeviceGroup", automatedDeviceGroup2);
    }

    else
    {
      v1019 = SACopySanitizedString(automatedDeviceGroup2, 1, 0xFFuLL);
      [v1016 printWithFormat:@"%-*s%@\n", 18, "Automated Device Group: ", v1019];
    }
  }

  nonDefaultFeatureFlags = [*v1488 nonDefaultFeatureFlags];

  if (nonDefaultFeatureFlags)
  {
    if (printJson)
    {
      nonDefaultFeatureFlags2 = [*(v1542 + 168) nonDefaultFeatureFlags];
      v1568[0] = MEMORY[0x1E69E9820];
      v1568[1] = 3221225472;
      v1568[2] = __30__SASamplePrinter_printHeader__block_invoke_6;
      v1568[3] = &unk_1E86F75C0;
      v1568[4] = v1542;
      [nonDefaultFeatureFlags2 enumerateKeysAndObjectsUsingBlock:v1568];
    }

    else
    {
      v1022 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v1023 = objc_alloc_init(MEMORY[0x1E696AD60]);
      nonDefaultFeatureFlags3 = [*v1488 nonDefaultFeatureFlags];
      v1565[0] = MEMORY[0x1E69E9820];
      v1565[1] = 3221225472;
      v1565[2] = __30__SASamplePrinter_printHeader__block_invoke_7;
      v1565[3] = &unk_1E86F75E8;
      v1025 = v1022;
      v1566 = v1025;
      v1026 = v1023;
      v1567 = v1026;
      [nonDefaultFeatureFlags3 enumerateKeysAndObjectsUsingBlock:v1565];

      if ([v1025 length])
      {
        if ([v1025 hasSuffix:{@", "}])
        {
          v1027 = [@" "];
          [v1025 replaceCharactersInRange:objc_msgSend(v1025 withString:{"length") - v1027, v1027, &stru_1F5BBF440}];
        }

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Enabled Features: ", v1025];
      }

      if ([v1026 length])
      {
        if ([v1026 hasSuffix:{@", "}])
        {
          v1028 = [@" "];
          [v1026 replaceCharactersInRange:objc_msgSend(v1026 withString:{"length") - v1028, v1028, &stru_1F5BBF440}];
        }

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Disabled Features: ", v1026];
      }
    }
  }

  preferredLanguages = [*v1488 preferredLanguages];

  if (preferredLanguages)
  {
    if (printJson)
    {
      v1030 = *p_isa;
      preferredLanguages2 = [*v1488 preferredLanguages];
      SAJSONWriteDictionaryEntry(v1030, @"preferredLanguages", preferredLanguages2);
    }

    else
    {
      preferredLanguages3 = [*v1488 preferredLanguages];
      preferredLanguages2 = preferredLanguages3;
      if (preferredLanguages3)
      {
        v1033 = [preferredLanguages3 componentsJoinedByString:{@", "}];
        v1034 = SACopySanitizedString(v1033, 1, 0);

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Preferred User Language: ", v1034];
      }

      else
      {
        v1035 = *__error();
        v1036 = _sa_logt();
        if (os_log_type_enabled(v1036, OS_LOG_TYPE_DEBUG))
        {
          *v1677 = 0;
          _os_log_debug_impl(&dword_1E0E2F000, v1036, OS_LOG_TYPE_DEBUG, "preferredLang nil!", v1677, 2u);
        }

        preferredLanguages2 = 0;
        *__error() = v1035;
      }
    }
  }

  countryCode = [*v1488 countryCode];

  if (countryCode)
  {
    if (printJson)
    {
      v1038 = *p_isa;
      countryCode2 = [*v1488 countryCode];
      SAJSONWriteDictionaryEntry(v1038, @"countryCode", countryCode2);
    }

    else
    {
      countryCode3 = [*v1488 countryCode];
      v1041 = countryCode3;
      if (countryCode3)
      {
        v1042 = [countryCode3 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F5BBF440];

        v1043 = [v1042 stringByReplacingOccurrencesOfString:@"\t" withString:&stru_1F5BBF440];

        v1044 = SACopySanitizedString(v1043, 1, 0);

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Country Code: ", v1044];
      }

      else
      {
        v1045 = *__error();
        v1046 = _sa_logt();
        if (os_log_type_enabled(v1046, OS_LOG_TYPE_DEBUG))
        {
          *v1677 = 0;
          _os_log_debug_impl(&dword_1E0E2F000, v1046, OS_LOG_TYPE_DEBUG, "countryCode nil!", v1677, 2u);
        }

        *__error() = v1045;
      }
    }
  }

  keyboardLanguages = [*v1488 keyboardLanguages];
  v1048 = [keyboardLanguages count] == 0;

  if (v1048)
  {
    if (([*v1488 hasHardwareKeyboardInfo] & 1) == 0)
    {
      goto LABEL_1187;
    }

    if (printJson)
    {
      goto LABEL_1172;
    }

    goto LABEL_1182;
  }

  if ((printJson & 1) == 0)
  {
    keyboardLanguages2 = [*v1488 keyboardLanguages];
    v1054 = [keyboardLanguages2 componentsJoinedByString:{@", "}];

    if (v1054)
    {
      v1055 = SACopySanitizedString(v1054, 1, 0);

      [*p_isa printWithFormat:@"%-*s%@\n", 18, "Keyboards: ", v1055];
    }

    else
    {
      v1056 = *__error();
      v1057 = _sa_logt();
      if (os_log_type_enabled(v1057, OS_LOG_TYPE_DEBUG))
      {
        *v1677 = 0;
        _os_log_debug_impl(&dword_1E0E2F000, v1057, OS_LOG_TYPE_DEBUG, "keyboardLang nil!", v1677, 2u);
      }

      *__error() = v1056;
    }

    if (([*v1488 hasHardwareKeyboardInfo] & 1) == 0)
    {
      goto LABEL_1187;
    }

LABEL_1182:
    if ([*v1488 hardwareKeyboard])
    {
      v1058 = *p_isa;
      if ([*v1488 hardwareKeyboard])
      {
        v1059 = "Yes";
      }

      else
      {
        v1059 = "No";
      }

      [v1058 printWithFormat:@"%-*s%s\n", 18, "HW Keyboard: ", v1059];
    }

    goto LABEL_1187;
  }

  v1049 = *p_isa;
  keyboardLanguages3 = [*v1488 keyboardLanguages];
  SAJSONWriteDictionaryEntry(v1049, @"keyboardLanguages", keyboardLanguages3);

  if (([*v1488 hasHardwareKeyboardInfo] & 1) == 0)
  {
    goto LABEL_1187;
  }

LABEL_1172:
  v1051 = *p_isa;
  if ([*v1488 hardwareKeyboard])
  {
    v1052 = MEMORY[0x1E695E118];
  }

  else
  {
    v1052 = MEMORY[0x1E695E110];
  }

  SAJSONWriteDictionaryEntry(v1051, @"hardwareKeyboard", v1052);
LABEL_1187:
  if ([*v1488 isRootInstalled])
  {
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(*p_isa, @"isRootInstalled", MEMORY[0x1E695E118]);
      installedRootNames = [*v1488 installedRootNames];
      v1061 = [installedRootNames count] == 0;

      if (!v1061)
      {
        v1062 = *p_isa;
        installedRootNames2 = [*v1488 installedRootNames];
        SAJSONWriteDictionaryEntry(v1062, @"installedRootNames", installedRootNames2);
      }

      goto LABEL_1191;
    }

    installedRootNames3 = [*v1488 installedRootNames];
    v1067 = [installedRootNames3 count] == 0;

    if (v1067 || ([*v1488 installedRootNames], v1068 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1068, "componentsJoinedByString:", @", "), v1069 = objc_claimAutoreleasedReturnValue(), v1068, !v1069))
    {
      v1070 = 0;
    }

    else
    {
      v1070 = SACopySanitizedString(v1069, 1, 0);
    }

    v1071 = [v1070 length];
    v1072 = *p_isa;
    if (v1071)
    {
      [v1072 printWithFormat:@"%-*s%@\n", 18, "Installed Roots: ", v1070];
    }

    else
    {
      [v1072 printWithFormat:@"%-*sYes\n", 18, "Installed Roots: "];
    }

    if ([*v1488 numOSCryptexFileExtents])
    {
LABEL_1203:
      [*p_isa printWithFormat:@"%-*s%d\n", 18, "OS Cryptex File Extents: ", objc_msgSend(*v1488, "numOSCryptexFileExtents")];
    }

LABEL_1204:
    if ([*v1488 gpuRestartCount])
    {
      if (printJson)
      {
        goto LABEL_1206;
      }

      [*p_isa printWithFormat:@"%-*s%llu\n", 18, "GPU Restart Count: ", objc_msgSend(*v1488, "gpuRestartCount")];
      if ([*v1488 gpuRestartLastMachAbs] && objc_msgSend(*v1488, "machTimebase") && objc_msgSend(*v1488, "machTimebase") >> 32 && objc_msgSend(*(v1542 + 32), "machAbsTime"))
      {
        gpuRestartLastMachAbs = [*(v1542 + 168) gpuRestartLastMachAbs];
        if (gpuRestartLastMachAbs >= [*(v1542 + 32) machAbsTime])
        {
          gpuRestartLastMachAbs2 = [*(v1542 + 168) gpuRestartLastMachAbs];
          machAbsTime = [*(v1542 + 32) machAbsTime];
          machTimebase = [*(v1542 + 168) machTimebase];
          v1115 = 0;
          if (HIDWORD(machTimebase))
          {
            if (machTimebase)
            {
              v1115 = gpuRestartLastMachAbs2 - machAbsTime;
              if (machTimebase != HIDWORD(machTimebase))
              {
                v1115 = __udivti3();
              }
            }
          }

          v1082 = v1115 / -1000000000.0 + 0.0;
        }

        else
        {
          machAbsTime2 = [*(v1542 + 32) machAbsTime];
          gpuRestartLastMachAbs3 = [*(v1542 + 168) gpuRestartLastMachAbs];
          machTimebase2 = [*(v1542 + 168) machTimebase];
          v1081 = 0;
          if (HIDWORD(machTimebase2))
          {
            if (machTimebase2)
            {
              v1081 = machAbsTime2 - gpuRestartLastMachAbs3;
              if (machTimebase2 != HIDWORD(machTimebase2))
              {
                v1081 = __udivti3();
              }
            }
          }

          v1082 = v1081 / 1000000000.0;
        }

        [*p_isa printWithFormat:@"%-*s%.0fs\n", 18, "Time Since GPU Restart: ", *&v1082];
      }
    }
  }

  else
  {
LABEL_1191:
    if (![*v1488 numOSCryptexFileExtents])
    {
      goto LABEL_1204;
    }

    if ((printJson & 1) == 0)
    {
      goto LABEL_1203;
    }

    v1064 = *p_isa;
    v1065 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*v1488, "numOSCryptexFileExtents")}];
    SAJSONWriteDictionaryEntry(v1064, @"numOSCryptexFileExtents", v1065);

    if ([*v1488 gpuRestartCount])
    {
LABEL_1206:
      v1073 = *p_isa;
      v1074 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "gpuRestartCount")}];
      SAJSONWriteDictionaryEntry(v1073, @"gpuRestartCount", v1074);

      if ([*v1488 gpuRestartLastMachAbs])
      {
        v1075 = *p_isa;
        v1076 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "gpuRestartLastMachAbs")}];
        SAJSONWriteDictionaryEntry(v1075, @"gpuRestartLastMachAbs", v1076);
      }
    }
  }

  if ([*v1488 hasEnterprisePersona])
  {
    v1116 = *p_isa;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v1116, @"hasEnterprisePersona", MEMORY[0x1E695E118]);
      goto LABEL_1262;
    }

    [v1116 printWithFormat:@"%-*sYes\n", 18, "Has Enterprise Persona: "];
  }

  else if (printJson)
  {
    goto LABEL_1262;
  }

  if ([*v1488 sanitizePaths])
  {
    v1117 = os_variant_has_internal_diagnostics() ^ 1;
  }

  else
  {
    v1117 = 0;
  }

  *v1677 = 0;
  *&v1677[8] = v1677;
  *&v1677[16] = 0x2020000000;
  v1677[24] = 0;
  mountStatusTracker = [*v1488 mountStatusTracker];
  v1119 = *(v1542 + 32);
  v1120 = *(v1542 + 40);
  v1563[0] = MEMORY[0x1E69E9820];
  v1563[1] = 3221225472;
  v1563[2] = __30__SASamplePrinter_printHeader__block_invoke_1352;
  v1563[3] = &unk_1E86F7610;
  v1564 = v1117;
  v1563[4] = v1542;
  v1563[5] = v1677;
  [(SAMountStatusTracker *)mountStatusTracker enumerateUnresponsiveMountsBetweenStartTime:v1119 endTime:v1120 block:v1563];

  if (*(*&v1677[8] + 24) == 1)
  {
    [*p_isa appendString:@"\n"];
  }

  _Block_object_dispose(v1677, 8);
  v1121 = printJson;
  if (!*(v1542 + 176))
  {
    v1121 = 1;
  }

  if ((v1121 & 1) == 0)
  {
    [*p_isa printWithFormat:@"\n%@\n\n", *(v1542 + 176)];
  }

LABEL_1262:
  if ([*(v1542 + 16) printSpinSignatureStack] && -[SASamplePrinter hasTargetProcess](v1542))
  {
    targetProcesses3 = [*v1488 targetProcesses];
    if (targetProcesses3)
    {
      isMainThread = 0;
      obji = 0;
      goto LABEL_1266;
    }

    v1135 = v1542;
    v1136 = *(v1542 + 136);
    if (v1136)
    {
      obji = v1136;
      v1137 = v1488;
      goto LABEL_1290;
    }

    obji = [*v1488 targetProcess];

    v1135 = v1542;
    v1137 = v1488;
    if (obji)
    {
LABEL_1290:
      if (!*(v1135 + 136))
      {
        if ([*v1137 targetThreadId])
        {
          threads3 = [obji threads];
          v1151 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "targetThreadId")}];
          mainThread = [threads3 objectForKeyedSubscript:v1151];

          if (mainThread)
          {
            isMainThread = [mainThread isMainThread];
            v1124 = 1;
          }

          else
          {
            v1201 = *__error();
            v1202 = _sa_logt();
            if (os_log_type_enabled(v1202, OS_LOG_TYPE_DEFAULT))
            {
              targetThreadId = [*v1488 targetThreadId];
              *v1677 = 134217984;
              *&v1677[4] = targetThreadId;
              _os_log_impl(&dword_1E0E2F000, v1202, OS_LOG_TYPE_DEFAULT, "WARNING: Target thread 0x%llx not found", v1677, 0xCu);
            }

            v1124 = 0;
            isMainThread = 0;
            mainThread = 0;
            *__error() = v1201;
          }
        }

        else
        {
          v1124 = 0;
          isMainThread = 0;
          mainThread = 0;
        }

        if ([*v1488 targetDispatchQueueId])
        {
          dispatchQueues2 = [obji dispatchQueues];
          v1205 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "targetDispatchQueueId")}];
          v1206 = [dispatchQueues2 objectForKeyedSubscript:v1205];

          if (v1206)
          {
            v1123 = v1206;
            goto LABEL_1268;
          }

          v1207 = *__error();
          v1208 = _sa_logt();
          if (os_log_type_enabled(v1208, OS_LOG_TYPE_DEFAULT))
          {
            targetDispatchQueueId = [*v1488 targetDispatchQueueId];
            *v1677 = 134217984;
            *&v1677[4] = targetDispatchQueueId;
            _os_log_impl(&dword_1E0E2F000, v1208, OS_LOG_TYPE_DEFAULT, "WARNING: Target dispatch queue %llu not found", v1677, 0xCu);
          }

          *__error() = v1207;
        }

        if (!mainThread)
        {
          v1210 = *(v1542 + 16);
          if (v1210)
          {
            v1211 = *(v1210 + 152);
            if (v1211 == 3 || !v1211 && (*(v1210 + 11) & 1) != 0)
            {
LABEL_1266:
              mainThread = 0;
              goto LABEL_1267;
            }
          }

          if (![*v1488 targetThreadId])
          {
            mainThread = [obji mainThread];
            if (mainThread)
            {
              v1123 = 0;
              v1124 = 1;
              isMainThread = 1;
            }

            else
            {
              v1351 = *__error();
              v1352 = _sa_logt();
              if (os_log_type_enabled(v1352, OS_LOG_TYPE_DEFAULT))
              {
                v1353 = [(SASamplePrinter *)v1542 displayNameForTask:?];
                *v1677 = 138412290;
                *&v1677[4] = v1353;
                _os_log_impl(&dword_1E0E2F000, v1352, OS_LOG_TYPE_DEFAULT, "WARNING: Signature stack requested, but target process %@ doesn't have a main thread", v1677, 0xCu);
              }

              v1354 = __error();
              mainThread = 0;
              v1123 = 0;
              *v1354 = v1351;
            }

            goto LABEL_1269;
          }

          mainThread = 0;
        }

        v1123 = 0;
        goto LABEL_1269;
      }

      v1149 = *(v1135 + 144);
      if (v1149)
      {
        mainThread = v1149;
        isMainThread = [v1149 isMainThread];
LABEL_1267:
        v1123 = 0;
LABEL_1268:
        v1124 = 1;
LABEL_1269:
        if (((printJson | v1124 ^ 1) & 1) == 0)
        {
          v1493 = v1123;
          [*p_isa appendString:@"\n"];
          v1527 = objc_alloc_init(MEMORY[0x1E695DF70]);
          *v1677 = 0;
          *&v1677[8] = v1677;
          *&v1677[16] = 0x3032000000;
          *&v1677[24] = __Block_byref_object_copy__4;
          v1678 = __Block_byref_object_dispose__4;
          v1679 = 0;
          if (targetProcesses3)
          {
            firstObject = [targetProcesses3 firstObject];
            v1126 = [(SASamplePrinter *)v1542 binaryImagesHitByTask:firstObject];
            v1127 = *(*&v1677[8] + 40);
            *(*&v1677[8] + 40) = v1126;

            v1562 = 0u;
            v1561 = 0u;
            v1560 = 0u;
            v1559 = 0u;
            v1515 = targetProcesses3;
            v1128 = [v1515 countByEnumeratingWithState:&v1559 objects:v1651 count:16];
            if (v1128)
            {
              v1129 = *v1560;
              v1130 = 1;
              do
              {
                for (i4 = 0; i4 != v1128; ++i4)
                {
                  if (*v1560 != v1129)
                  {
                    objc_enumerationMutation(v1515);
                  }

                  v1132 = *(*(&v1559 + 1) + 8 * i4);
                  v1133 = [v1132 pid] == 0;
                  threads4 = [v1132 threads];
                  v1554[0] = MEMORY[0x1E69E9820];
                  v1554[1] = 3221225472;
                  v1554[2] = __30__SASamplePrinter_printHeader__block_invoke_1379;
                  v1554[3] = &unk_1E86F7638;
                  v1554[4] = v1542;
                  v1555 = obji;
                  v1556 = v1527;
                  v1557 = v1132;
                  v1558 = v1677;
                  [threads4 enumerateKeysAndObjectsUsingBlock:v1554];

                  v1130 &= v1133;
                }

                v1128 = [v1515 countByEnumeratingWithState:&v1559 objects:v1651 count:16];
              }

              while (v1128);
            }

            else
            {
              v1130 = 1;
            }

            if (*(*&v1677[8] + 40))
            {
              [*p_isa appendString:@"Heaviest stack for the target processes:\n"];
              v1152 = v1542;
              goto LABEL_1387;
            }

LABEL_1386:
            v1152 = v1542;
          }

          else
          {
            v1130 = [obji pid] == 0;
            v1138 = [(SASamplePrinter *)v1542 binaryImagesHitByTask:?];
            v1139 = *(*&v1677[8] + 40);
            *(*&v1677[8] + 40) = v1138;

            v1140 = *p_isa;
            if (v1493)
            {
              if (mainThread)
              {
                v1141 = [SASamplePrinter displayNameForDispatchQueue:v1493];
                [v1140 printWithFormat:@"Heaviest stack for dispatch queue %@ thread 0x%llx:\n", v1141, objc_msgSend(mainThread, "threadId")];

                v1142 = objc_alloc_init(MEMORY[0x1E695DF70]);
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                buf[24] = 1;
                v1143 = *(v1542 + 32);
                v1144 = *(v1542 + 40);
                v1146 = *(v1542 + 56);
                v1145 = *(v1542 + 64);
                v1550[0] = MEMORY[0x1E69E9820];
                v1550[1] = 3221225472;
                v1550[2] = __30__SASamplePrinter_printHeader__block_invoke_1386;
                v1550[3] = &unk_1E86F7660;
                v1551 = v1493;
                v1147 = v1142;
                v1552 = v1147;
                v1553 = buf;
                [mainThread enumerateThreadStatesBetweenStartTime:v1143 startSampleIndex:v1146 endTime:v1144 endSampleIndex:v1145 reverseOrder:0 block:v1550];
                if ([v1147 count])
                {
                  if (*(*&buf[8] + 24))
                  {
                    v1148 = 0;
                  }

                  else
                  {
                    v1148 = v1147;
                  }

                  [(SASamplePrinter *)v1542 addStackForDispatchQueue:0 orSwiftTaskStates:mainThread orThread:v1148 andThreadStateIndexes:obji task:v1527 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:1u onlyHeaviestStack:0 includeState:?];
                }

                _Block_object_dispose(buf, 8);
                goto LABEL_1386;
              }

              v1199 = [SASamplePrinter displayNameForDispatchQueue:v1493];
              [v1140 printWithFormat:@"Heaviest stack for dispatch queue %@:\n", v1199];

              v1152 = v1542;
              [(SASamplePrinter *)v1542 addStackForDispatchQueue:v1493 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 task:obji toRootObjects:v1527 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:1u includeState:0];
            }

            else
            {
              v1152 = v1542;
              if (!mainThread)
              {
                [v1140 appendString:@"Heaviest stack for the target process:\n"];
                threads5 = [obji threads];
                v1547[0] = MEMORY[0x1E69E9820];
                v1547[1] = 3221225472;
                v1547[2] = __30__SASamplePrinter_printHeader__block_invoke_2_1399;
                v1547[3] = &unk_1E86F80A0;
                v1547[4] = v1542;
                v1548 = obji;
                v1549 = v1527;
                [threads5 enumerateKeysAndObjectsUsingBlock:v1547];

                goto LABEL_1386;
              }

              if (isMainThread)
              {
                [*p_isa appendString:@"Heaviest stack for the main thread of the target process:\n"];
              }

              else
              {
                [v1140 printWithFormat:@"Heaviest stack for thread 0x%llx:\n", objc_msgSend(mainThread, "threadId")];
              }

              [(SASamplePrinter *)v1542 addStackForDispatchQueue:0 orSwiftTaskStates:mainThread orThread:0 andThreadStateIndexes:obji task:v1527 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:1u onlyHeaviestStack:0 includeState:?];
            }
          }

LABEL_1387:
          if (*(*&v1677[8] + 40))
          {
            if ([v1527 count])
            {
              [(SASamplePrinter *)v1152 sortHeavyCallTree:v1527];
              v1545 = 0u;
              v1546 = 0u;
              v1543 = 0u;
              v1544 = 0u;
              v1213 = v1527;
              v1214 = [v1213 countByEnumeratingWithState:&v1543 objects:v1650 count:16];
              if (v1214)
              {
                v1215 = *v1544;
                while (2)
                {
                  for (i5 = 0; i5 != v1214; i5 = i5 + 1)
                  {
                    if (*v1544 != v1215)
                    {
                      objc_enumerationMutation(v1213);
                    }

                    v1217 = *(*(&v1543 + 1) + 8 * i5);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v1214 = v1217;
                      goto LABEL_1399;
                    }
                  }

                  v1214 = [v1213 countByEnumeratingWithState:&v1543 objects:v1650 count:16];
                  if (v1214)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_1399:

              v1218 = *p_isa;
              sampleCount = [v1214 sampleCount];
              [(SASamplePrinter *)v1542 addStack:v1213 toStream:v1218 sampleCount:sampleCount binariesToDisplay:*(*&v1677[8] + 40) primaryState:0 primaryMicrostackshotState:0 onlyHeaviestStack:1 isKernel:v1130];

              v1220 = v1542;
            }

            else
            {
              if (targetProcesses3)
              {
                v1221 = *__error();
                v1222 = _sa_logt();
                if (os_log_type_enabled(v1222, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1E0E2F000, v1222, OS_LOG_TYPE_ERROR, "No heaviest callstack for target tasks", buf, 2u);
                }

                v1223 = __error();
                v1220 = v1542;
              }

              else
              {
                v1221 = *__error();
                v1224 = _sa_logt();
                if (os_log_type_enabled(v1224, OS_LOG_TYPE_ERROR))
                {
                  v1348 = [(SASamplePrinter *)v1542 displayNameForTask:?];
                  v1349 = [SASamplePrinter displayNameForDispatchQueue:v1493];
                  threadId = [mainThread threadId];
                  *buf = 138412802;
                  *&buf[4] = v1348;
                  *&buf[12] = 2112;
                  *&buf[14] = v1349;
                  *&buf[22] = 2048;
                  *&buf[24] = threadId;
                  _os_log_error_impl(&dword_1E0E2F000, v1224, OS_LOG_TYPE_ERROR, "No heaviest callstack for %@, dispatch queue %@, thread 0x%llx", buf, 0x20u);
                }

                v1223 = __error();
                v1220 = v1542;
              }

              *v1223 = v1221;
            }

            if (([*(v1220 + 16) displayBody] & 1) == 0)
            {
              [(SASamplePrinter *)v1220 printBinaryImagesForTask:?];
              *(v1220 + 113) = 1;
            }
          }

          _Block_object_dispose(v1677, 8);

          v1123 = v1493;
        }
      }

      else
      {
        v1123 = 0;
        mainThread = 0;
      }
    }

    else
    {
      v1123 = 0;
      mainThread = 0;
      obji = 0;
    }
  }

  if (printJson)
  {
    goto LABEL_1527;
  }

  if (([*(v1542 + 16) hidEventDisplayOptions] & 3) == 0)
  {
    goto LABEL_1417;
  }

  if (([*(v1542 + 16) hidEventDisplayOptions] & 2) == 0)
  {
    targetProcess6 = [*v1488 targetProcess];
    v1226 = targetProcess6;
    if (targetProcess6)
    {
      v1503 = [targetProcess6 pid];

      goto LABEL_1419;
    }

LABEL_1417:
    v1227 = 0;
    goto LABEL_1524;
  }

  v1503 = -1;
LABEL_1419:
  hidEvents = [*v1488 hidEvents];
  objk = [hidEvents mutableCopy];

  v1230 = *v1488;
  if (*v1488)
  {
    v1230 = objc_getProperty(v1230, v1229, 72, 1);
  }

  v1231 = v1230;
  [objk addObjectsFromArray:v1231];

  [objk sortUsingComparator:&__block_literal_global_2762];
  if (![objk count])
  {
    v1510 = 0;
    goto LABEL_1523;
  }

  v1232 = 0;
  v1510 = 0;
  v1233 = 0;
  while (2)
  {
    v1234 = [objk objectAtIndexedSubscript:v1233];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v1236 = v1234;
    v1238 = v1236;
    if (isKindOfClass)
    {
      if (v1236)
      {
        steps2 = [v1236 steps];
        lastObject3 = [steps2 lastObject];

        if (lastObject3)
        {
          hidEventTimestamp2 = [v1238 hidEventTimestamp];
          timestamp8 = [lastObject3 timestamp];
          v1243 = [lastObject3 pid];

          v1244 = 0;
          v1528 = v1238;
          goto LABEL_1433;
        }

        v1244 = v1238;
        v1528 = v1238;
LABEL_1451:

        goto LABEL_1514;
      }

LABEL_1519:
      v1244 = 0;
      v1245 = 0;
      v1246 = 1;
    }

    else
    {
      if (!v1236)
      {
        goto LABEL_1519;
      }

      v1245 = objc_getProperty(v1236, v1237, 32, 1);
      v1246 = 0;
      v1244 = v1238;
    }

    v1247 = v1245;
    hidEventTimestamp2 = [v1247 startTime];

    if (v1246)
    {
      v1249 = 0;
    }

    else
    {
      v1249 = objc_getProperty(v1244, v1248, 32, 1);
    }

    v1250 = v1249;
    timestamp8 = [v1250 endTime];

    v1528 = 0;
    if (v1246)
    {
      v1243 = 0;
    }

    else
    {
      v1243 = v1244[4];
    }

LABEL_1433:
    eventTimeRange16 = [*v1488 eventTimeRange];
    startTime13 = [eventTimeRange16 startTime];
    v1253 = startTime13;
    if (!startTime13)
    {
      v1253 = *(v1542 + 32);
    }

    v1254 = v1253;

    [v1254 machAbsTimeSeconds];
    if (v1255 == 0.0 || ([timestamp8 machAbsTimeSeconds], v1256 == 0.0))
    {
      if (![v1254 isComparable:timestamp8] || (objc_msgSend(v1254, "gt:", timestamp8) & 1) != 0)
      {
LABEL_1441:

        goto LABEL_1451;
      }
    }

    else
    {
      [v1254 machAbsTimeSeconds];
      v1258 = v1257;
      [timestamp8 machAbsTimeSeconds];
      if (v1258 > v1259 + 0.25)
      {
        goto LABEL_1441;
      }
    }

    eventTimeRange17 = [*v1488 eventTimeRange];
    endTime12 = [eventTimeRange17 endTime];
    v1262 = endTime12;
    if (!endTime12)
    {
      v1262 = *(v1542 + 40);
    }

    v1517 = v1262;

    if ([v1517 isComparable:hidEventTimestamp2] && (objc_msgSend(v1517, "lt:", hidEventTimestamp2) & 1) != 0)
    {
      v1264 = 2;
      goto LABEL_1513;
    }

    if (v1503 != -1 && v1243 != v1503)
    {
      v1264 = 4;
      goto LABEL_1513;
    }

    if (!v1510)
    {
      v1510 = objc_alloc_init(MEMORY[0x1E696AD60]);
    }

    if (v1232)
    {
      [v1510 appendString:{@", "}];
    }

    if (v1244)
    {
      if (*(v1542 + 120))
      {
        v1682 = 0u;
        v1683 = 0u;
        memset(buf, 0, sizeof(buf));
        v1265 = objc_getProperty(v1244, v1263, 8, 1);
        v1266 = [v1265 countByEnumeratingWithState:buf objects:v1677 count:16];
        if (v1266)
        {
          v1267 = **&buf[16];
          while (2)
          {
            for (i6 = 0; i6 != v1266; ++i6)
            {
              if (**&buf[16] != v1267)
              {
                objc_enumerationMutation(v1265);
              }

              if (*(v1542 + 120) == *(*&buf[8] + 8 * i6))
              {
                v1269 = 1;
                goto LABEL_1489;
              }
            }

            v1266 = [v1265 countByEnumeratingWithState:buf objects:v1677 count:16];
            if (v1266)
            {
              continue;
            }

            break;
          }
        }

        v1269 = 0;
LABEL_1489:
      }

      else
      {
        v1269 = 0;
      }

      v1285 = objc_getProperty(v1244, v1263, 24, 1);
      [v1510 appendString:v1285];

      v1287 = objc_getProperty(v1244, v1286, 8, 1);
      v1288 = [v1287 count] == 0;

      if (!v1288)
      {
        v1290 = objc_getProperty(v1244, v1289, 8, 1);
        [v1510 appendFormat:@" (%lu HID events)", objc_msgSend(v1290, "count")];
      }

      if (v1503 == -1)
      {
        v1291 = v1244[4];
        if (v1291 != -1)
        {
          v1292 = objc_getProperty(v1244, v1289, 32, 1);
          startTime14 = [v1292 startTime];
          v1294 = [(SASamplePrinter *)v1542 displayNameForPid:v1291 threadId:0 timestamp:startTime14];
          [v1510 appendFormat:@" to %@", v1294];
        }
      }

      if (v1269)
      {
        [v1510 appendString:@"*"];
      }

      goto LABEL_1512;
    }

    steps3 = [v1528 steps];
    lastObject4 = [steps3 lastObject];

    v1477 = v1528 == *(v1542 + 120);
    [v1528 thresholdToGroupSameEventType];
    v1272 = v1271;
    if (v1271 <= 0.0 || !lastObject4)
    {
      v1473 = 0;
      goto LABEL_1502;
    }

    if ([lastObject4 pid] == -1 || (objc_msgSend(timestamp8, "machAbsTimeSeconds"), v1273 == 0.0))
    {
      v1473 = 0;
      goto LABEL_1502;
    }

    v1469 = timestamp8;
    v1274 = v1233 + 1;
    if (v1233 + 1 >= [objk count])
    {
      v1473 = 0;
      goto LABEL_1501;
    }

    v1473 = 0;
    v1495 = v1233;
    while (2)
    {
      v1275 = [objk objectAtIndexedSubscript:v1274];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v1495 = v1274;
        goto LABEL_1486;
      }

      hidEventTimestamp3 = [v1275 hidEventTimestamp];
      [hidEventTimestamp3 machAbsTimeSeconds];
      if (v1276 == 0.0)
      {
        v1495 = v1274;
        goto LABEL_1485;
      }

      [v1469 machAbsTimeSeconds];
      v1278 = v1277;
      [hidEventTimestamp3 machAbsTimeSeconds];
      if (v1272 + v1278 >= v1279)
      {
        steps4 = [v1275 steps];
        lastObject5 = [steps4 lastObject];

        v1282 = lastObject5;
        if (lastObject5)
        {
          v1283 = [lastObject5 pid];
          if (v1283 == [lastObject4 pid])
          {
            v1429 = v1275 == *(v1542 + 120);
            timestamp9 = [lastObject5 timestamp];

            [objk removeObjectAtIndex:v1274];
            ++v1473;
            v1477 |= v1429;
            v1469 = timestamp9;
          }

          else
          {
            v1495 = v1274;
          }

          v1282 = lastObject5;
        }

        else
        {
          v1495 = v1274;
        }

LABEL_1485:
LABEL_1486:

        v1274 = v1495 + 1;
        if (v1495 + 1 >= [objk count])
        {
          goto LABEL_1501;
        }

        continue;
      }

      break;
    }

    v1300 = *__error();
    v1301 = _sa_logt();
    if (os_log_type_enabled(v1301, OS_LOG_TYPE_DEBUG))
    {
      [hidEventTimestamp3 machAbsTimeSeconds];
      v1303 = v1302;
      [v1469 machAbsTimeSeconds];
      LODWORD(v1673) = 134217984;
      *(&v1673 + 4) = v1303 - v1304;
      _os_log_debug_impl(&dword_1E0E2F000, v1301, OS_LOG_TYPE_DEBUG, "breaking grouping due to gap of %.3fs", &v1673, 0xCu);
    }

    *__error() = v1300;
LABEL_1501:

LABEL_1502:
    hidEventTypeString = [v1528 hidEventTypeString];
    [v1510 appendString:hidEventTypeString];

    if (v1477)
    {
      [v1510 appendString:@"*"];
    }

    if (v1473)
    {
      [v1510 appendFormat:@" x%llu", v1473 + 1];
    }

    if (v1503 == -1)
    {
      v1296 = lastObject4;
      if (lastObject4)
      {
        v1297 = [lastObject4 pid];
        v1296 = lastObject4;
      }

      else
      {
        v1297 = 0xFFFFFFFFLL;
      }

      timestamp10 = [v1296 timestamp];
      v1299 = [(SASamplePrinter *)v1542 displayNameForPid:v1297 threadId:0 timestamp:timestamp10];
      [v1510 appendFormat:@" to %@", v1299];
    }

LABEL_1512:
    v1264 = 0;
    v1232 = 1;
LABEL_1513:

    if ((v1264 | 4) == 4)
    {
LABEL_1514:
      if (++v1233 >= [objk count])
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_1523:

  v1227 = v1510;
LABEL_1524:
  v1305 = v1227;
  if ([v1227 length])
  {
    [*p_isa printWithFormat:@"\n"];
    [*p_isa printWithFormat:@"%-*s%@\n", 18, "HID Events: ", v1305];
  }

LABEL_1527:
  if (*(v1542 + 120) && *v1488 && (*(*v1488 + 404) & 1) != 0)
  {
    if (([*(v1542 + 16) hidEventDisplayOptions] & 4) != 0)
    {
      v1306 = printJson;
    }

    else
    {
      v1306 = 1;
    }

    if ((v1306 & 1) == 0)
    {
      [*(v1542 + 8) appendString:@"\nSlow HID event:\n"];
      [(SASamplePrinter *)v1542 printHIDEvent:?];
    }
  }

  v1307 = *MEMORY[0x1E69E9840];
}

- (id)eventStartTimeWithWallTime
{
  eventTimeRange = [*(self + 168) eventTimeRange];
  startTime = [eventTimeRange startTime];

  if (startTime)
  {
    [startTime wallTime];
    if (v4 != 0.0)
    {
      goto LABEL_6;
    }
  }

  v5 = *(self + 32);

  if (v5)
  {
    [v5 wallTime];
    if (v6 != 0.0)
    {
      startTime = v5;
LABEL_6:
      v7 = startTime;
      v5 = v7;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)eventEndTimeWithWallTime
{
  eventTimeRange = [*(self + 168) eventTimeRange];
  endTime = [eventTimeRange endTime];

  if (endTime)
  {
    [endTime wallTime];
    if (v4 != 0.0)
    {
      goto LABEL_6;
    }
  }

  v5 = *(self + 40);

  if (v5)
  {
    [v5 wallTime];
    if (v6 != 0.0)
    {
      endTime = v5;
LABEL_6:
      v7 = endTime;
      v5 = v7;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (uint64_t)hasTargetProcess
{
  if (*(self + 136) || ([*(self + 168) targetProcessId] & 0x80000000) == 0)
  {
    return 1;
  }

  targetProcesses = [*(self + 168) targetProcesses];
  v2 = [targetProcesses count] != 0;

  return v2;
}

uint64_t __30__SASamplePrinter_printHeader__block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  *a3 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  result = [a2 cpuTimeNs:&v7 cpuInstructions:&v6 cpuCycles:&v5 betweenStartTime:a1[4] endTime:a1[5]];
  *(*(a1[6] + 8) + 24) += v7;
  *(*(a1[7] + 8) + 24) += v6;
  *(*(a1[8] + 8) + 24) += v5;
  return result;
}

uint64_t __30__SASamplePrinter_printHeader__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) appendFormat:@"%@ -> %@, ", a2, a3];
  *a4 = 0;
  return result;
}

uint64_t __44__SASamplePrinter_displayStringForHIDEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a2 hidEventTimestamp];
  }

  else
  {
    if (a2)
    {
      Property = objc_getProperty(a2, v5, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = Property;
    v6 = [v8 startTime];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [a3 hidEventTimestamp];
  }

  else
  {
    if (a3)
    {
      v11 = objc_getProperty(a3, v9, 32, 1);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v10 = [v12 startTime];
  }

  v13 = [v6 compare:v10];

  return v13;
}

void __41__SASamplePrinter_printTasksIndividually__block_invoke(void *a1, void *a2)
{
  if (a1[4] != a2)
  {
    v4 = [*(a1[5] + 168) targetProcesses];
    v5 = [v4 containsObject:a2];

    if ((v5 & 1) == 0)
    {
      if ([(SASamplePrinter *)a1[5] shouldPrintTask:a2 thread:0 dispatchQueue:0])
      {
        v6 = a1[6];

        [v6 addObject:a2];
      }
    }
  }
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_3;
  v41[3] = &unk_1E86F7750;
  v41[4] = *(a1 + 32);
  v41[5] = a2;
  v41[6] = a3;
  v28 = MEMORY[0x1E12EBE50](v41);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_4;
  v40[3] = &unk_1E86F7778;
  v40[4] = a2;
  v40[5] = a3;
  v27 = MEMORY[0x1E12EBE50](v40);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_5;
  v39[3] = &unk_1E86F7778;
  v39[4] = a2;
  v39[5] = a3;
  v26 = MEMORY[0x1E12EBE50](v39);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_6;
  v38[3] = &unk_1E86F7750;
  v38[4] = *(a1 + 32);
  v38[5] = a2;
  v38[6] = a3;
  v25 = MEMORY[0x1E12EBE50](v38);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_7;
  v37[3] = &unk_1E86F7778;
  v37[4] = a2;
  v37[5] = a3;
  v29 = MEMORY[0x1E12EBE50](v37);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_8;
  v36[3] = &unk_1E86F77A0;
  v36[4] = *(a1 + 32);
  v36[5] = a2;
  v36[6] = a3;
  v6 = MEMORY[0x1E12EBE50](v36);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_9;
  v35[3] = &unk_1E86F7750;
  v35[4] = *(a1 + 32);
  v35[5] = a2;
  v35[6] = a3;
  v24 = MEMORY[0x1E12EBE50](v35);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_10;
  v34[3] = &unk_1E86F77C8;
  v7 = *(a1 + 32);
  v34[4] = a2;
  v34[5] = v7;
  v34[6] = a3;
  v8 = MEMORY[0x1E12EBE50](v34);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    v23 = v28 + 2;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [*(*(&v30 + 1) + 8 * v13) unsignedLongLongValue];
      v15 = v14;
      v16 = v14 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 5)
      {
        if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 2)
        {
          if (v16 == 1)
          {
            v18 = v28[2];
            goto LABEL_27;
          }

          if (v16 == 2)
          {
            v18 = v27[2];
            goto LABEL_27;
          }
        }

        else
        {
          switch(v16)
          {
            case 3:
              v17 = v6[2](v6, 1);
              goto LABEL_28;
            case 4:
              v17 = v6[2](v6, 0);
              goto LABEL_28;
            case 5:
              v18 = v24[2];
              goto LABEL_27;
          }
        }
      }

      else
      {
        if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) < 0xA)
        {
          v17 = v8[2](v8);
          goto LABEL_28;
        }

        switch(v16)
        {
          case 10:
            v18 = v29[2];
            goto LABEL_27;
          case 11:
            v18 = v25[2];
LABEL_27:
            v17 = v18();
LABEL_28:
            if (v17)
            {
              if (v15 >= 0)
              {
                v20 = v17;
              }

              else
              {
                v20 = -v17;
              }

              goto LABEL_52;
            }

            break;
          case 12:
            v18 = v26[2];
            goto LABEL_27;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((([*(a1 + 40) containsObject:&unk_1F5BDCAA8] & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCAC0) & 1) != 0 || (v19 = (v29[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCA78) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCAD8) & 1) != 0 || (v19 = (v28[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCAF0) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB08) & 1) != 0 || (v19 = (v27[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB20) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB38) & 1) != 0 || (v19 = (v26[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB50) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB68) & 1) != 0 || (v19 = (v25[2])()) == 0))
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

LABEL_52:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_7(uint64_t a1)
{
  if ([*(a1 + 32) uniquePid])
  {
    v2 = [*(a1 + 32) pid] == 0;
  }

  else
  {
    v2 = 1;
  }

  if ([*(a1 + 40) uniquePid])
  {
    v3 = [*(a1 + 40) pid] == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = 1;
  if (!v2)
  {
    v4 = -1;
  }

  if (v3 == v2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_3(uint64_t a1)
{
  v2 = [(SASamplePrinter *)*(a1 + 32) rawNameForTask:?];
  v3 = [(SASamplePrinter *)*(a1 + 32) rawNameForTask:?];
  if (![v2 length])
  {

    v2 = 0;
  }

  if ([v3 length])
  {
    v4 = v2 != 0;
    if (v2 && v3)
    {
      v5 = [v2 compare:v3 options:577];
      goto LABEL_11;
    }
  }

  else
  {

    v3 = 0;
    v4 = v2 != 0;
  }

  if (v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

LABEL_11:

  return v5;
}

- (void)setOptions:(id)options
{
  if (options)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = objc_alloc_init(SASamplePrintOptions);
  }

  options = self->_options;
  self->_options = optionsCopy;
}

- (SASamplePrinter)initWithSampleStore:(id)store
{
  v19.receiver = self;
  v19.super_class = SASamplePrinter;
  v4 = [(SASamplePrinter *)&v19 init];
  if (v4)
  {
    v5 = objc_alloc_init(SASamplePrintOptions);
    options = v4->_options;
    v4->_options = v5;

    objc_storeStrong(&v4->_sampleStore, store);
    v7 = objc_alloc(MEMORY[0x1E695DF90]);
    tasksByPid = [store tasksByPid];
    v9 = [v7 initWithCapacity:{objc_msgSend(tasksByPid, "count")}];
    binaryImagesHit = v4->_binaryImagesHit;
    v4->_binaryImagesHit = v9;

    startTime = [(SASampleStore *)v4->_sampleStore startTime];
    reportStartTime = v4->_reportStartTime;
    v4->_reportStartTime = startTime;

    endTime = [(SASampleStore *)v4->_sampleStore endTime];
    reportEndTime = v4->_reportEndTime;
    v4->_reportEndTime = endTime;

    sampleTimestamps = [store sampleTimestamps];
    v4->_hasTimeIndexes = [sampleTimestamps count] != 0;

    if (v4->_hasTimeIndexes)
    {
      v4->_reportStartSampleIndex = 0;
      sampleTimestamps2 = [(SASampleStore *)v4->_sampleStore sampleTimestamps];
      v4->_reportEndSampleIndex = [sampleTimestamps2 count] - 1;
    }

    else
    {
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      *&v4->_reportStartSampleIndex = vnegq_f64(v17);
    }

    v4->_numSamples = [(SASampleStore *)v4->_sampleStore numSamples];
  }

  return v4;
}

- (double)timeSpentAsleepBetweenStartTimestamp:(void *)timestamp endTimestamp:
{
  v3 = 0.0;
  if (self)
  {
    [timestamp machContTimeSeconds];
    if (v6 > 0.0)
    {
      [a2 machContTimeSeconds];
      if (v7 > 0.0)
      {
        [timestamp machContTimeSeconds];
        v9 = v8;
        [a2 machContTimeSeconds];
        goto LABEL_8;
      }
    }

    [timestamp wallTime];
    if (v11 > 0.0)
    {
      [a2 wallTime];
      if (v12 > 0.0)
      {
        [timestamp wallTime];
        v9 = v13;
        [a2 wallTime];
LABEL_8:
        v14 = v9 - v10;
        [timestamp machAbsTimeSeconds];
        v16 = v15;
        [a2 machAbsTimeSeconds];
        v18 = v14 - (v16 - v17);
        if (v18 >= 1.0)
        {
          return v18;
        }

        else
        {
          return 0.0;
        }
      }
    }
  }

  return v3;
}

- (__CFString)rawNameForTask:(__CFString *)task
{
  if (task)
  {
    if ([a2 pid])
    {
      task = [a2 name];
    }

    else
    {
      task = @"kernel_task";
    }

    v2 = vars8;
  }

  return task;
}

void __32__SASamplePrinter_updateIndexes__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 taskStates];
  v5 = [v4 count];

  if (!v5)
  {
    v20 = [a2 threads];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __32__SASamplePrinter_updateIndexes__block_invoke_2;
    v23[3] = &unk_1E86F7410;
    v24 = *(a1 + 32);
    v25 = *(a1 + 48);
    [v20 enumerateKeysAndObjectsUsingBlock:v23];

    return;
  }

  v6 = [a2 indexOfFirstTaskStateOnOrAfterTime:*(*(a1 + 32) + 32) sampleIndex:0x7FFFFFFFFFFFFFFFLL];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [a2 indexOfLastTaskStateOnOrBeforeTime:*(*(a1 + 32) + 40) sampleIndex:0x7FFFFFFFFFFFFFFFLL];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v8 >= v7)
    {
      v10 = v8;
      *(*(a1 + 32) + 72) += v8 - v7 + 1;
      v11 = [a2 taskStates];
      v12 = [v11 objectAtIndexedSubscript:v7];
      obj = [v12 startTimestamp];

      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      if (v14)
      {
        if (![v14 gt:obj])
        {
          goto LABEL_12;
        }

        v13 = *(*(a1 + 40) + 8);
      }

      objc_storeStrong((v13 + 40), obj);
LABEL_12:
      v15 = [a2 taskStates];
      v16 = [v15 objectAtIndexedSubscript:v10];
      v17 = [v16 endTimestamp];

      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      if (v19)
      {
        if (![v19 lt:v17])
        {
LABEL_16:

          return;
        }

        v18 = *(*(a1 + 48) + 8);
      }

      objc_storeStrong((v18 + 40), v17);
      goto LABEL_16;
    }
  }
}

void __32__SASamplePrinter_updateIndexes__block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = [a3 indexOfFirstThreadStateOnOrAfterTime:*(a1[4] + 32) sampleIndex:0x7FFFFFFFFFFFFFFFLL];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [a3 indexOfLastThreadStateOnOrBeforeTime:*(a1[4] + 40) sampleIndex:0x7FFFFFFFFFFFFFFFLL];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 >= v6)
    {
      v9 = v7;
      *(a1[4] + 72) += v7 - v6 + 1;
      v10 = [a3 threadStates];
      v11 = [v10 objectAtIndexedSubscript:v6];
      obj = [v11 startTimestamp];

      v12 = *(a1[5] + 8);
      v13 = *(v12 + 40);
      if (v13)
      {
        if (![v13 gt:obj])
        {
          goto LABEL_11;
        }

        v12 = *(a1[5] + 8);
      }

      objc_storeStrong((v12 + 40), obj);
LABEL_11:
      v14 = [a3 threadStates];
      v15 = [v14 objectAtIndexedSubscript:v9];
      v16 = [v15 endTimestamp];

      v17 = *(a1[6] + 8);
      v18 = *(v17 + 40);
      if (v18)
      {
        if (![v18 lt:v16])
        {
LABEL_15:

          return;
        }

        v17 = *(a1[6] + 8);
      }

      objc_storeStrong((v17 + 40), v16);
      goto LABEL_15;
    }
  }
}

- (void)filterToTimestampRangeStart:(id)start end:(id)end
{
  self->_hasFilterApplied = 1;
  objc_storeStrong(&self->_reportStartTime, start);
  objc_storeStrong(&self->_reportEndTime, end);

  [(SASamplePrinter *)self updateIndexes];
}

- (void)filterToMachAbsTimeRangeStart:(unint64_t)start end:(unint64_t)end
{
  self->_hasFilterApplied = 1;
  if (start)
  {
    v6 = [SATimestamp timestampWithMachAbsTime:start machContTime:0 wallTime:[(SASampleStore *)self->_sampleStore machTimebase] machTimebase:0.0];
    reportStartTime = self->_reportStartTime;
    self->_reportStartTime = v6;
  }

  if (end)
  {
    v8 = [SATimestamp timestampWithMachAbsTime:end machContTime:0 wallTime:[(SASampleStore *)self->_sampleStore machTimebase] machTimebase:0.0];
    reportEndTime = self->_reportEndTime;
    self->_reportEndTime = v8;
  }

  [(SASamplePrinter *)self updateIndexes];
}

- (void)filterToWallTimeRangeStart:(double)start end:(double)end
{
  self->_hasFilterApplied = 1;
  if (start != 0.0)
  {
    v6 = [SATimestamp timestampWithMachAbsTime:0 machContTime:0 wallTime:[(SASampleStore *)self->_sampleStore machTimebase] machTimebase:start];
    reportStartTime = self->_reportStartTime;
    self->_reportStartTime = v6;
  }

  if (end != 0.0)
  {
    v8 = [SATimestamp timestampWithMachAbsTime:0 machContTime:0 wallTime:[(SASampleStore *)self->_sampleStore machTimebase] machTimebase:end];
    reportEndTime = self->_reportEndTime;
    self->_reportEndTime = v8;
  }

  [(SASamplePrinter *)self updateIndexes];
}

- (void)filterToDisplayTimeIndexStart:(unint64_t)start end:(unint64_t)end
{
  v38 = *MEMORY[0x1E69E9840];
  if (end && end < start)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      startCopy2 = start;
      v34 = 2048;
      endCopy3 = end;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "Passed invalid sample index range %lu-%lu", buf, 0x16u);
    }

    *__error() = v7;
    goto LABEL_24;
  }

  if (!self || !self->_hasTimeIndexes)
  {
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "Requested sample index range on sample store without sample indexes", buf, 2u);
    }

    *__error() = v23;
    goto LABEL_24;
  }

  self->_hasFilterApplied = 1;
  if (start)
  {
    v9 = start - 1;
  }

  else
  {
    v9 = 0;
  }

  endCopy2 = end;
  if (!end)
  {
    sampleTimestamps = [(SASampleStore *)self->_sampleStore sampleTimestamps];
    endCopy2 = [sampleTimestamps count];
  }

  v12 = endCopy2 - 1;
  sampleTimestamps2 = [(SASampleStore *)self->_sampleStore sampleTimestamps];
  v14 = [sampleTimestamps2 count];

  if (v12 >= v14)
  {
    v25 = *__error();
    v26 = _sa_logt();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sampleTimestamps3 = [(SASampleStore *)self->_sampleStore sampleTimestamps];
      *buf = 134218496;
      startCopy2 = start;
      v34 = 2048;
      endCopy3 = end;
      v36 = 2048;
      v37 = [sampleTimestamps3 count];
      _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "Requested sample index range %lu-%lu outside valid range 1-%lu", buf, 0x20u);
    }

    *__error() = v25;
    goto LABEL_24;
  }

  self->_reportStartSampleIndex = v9;
  sampleTimestamps4 = [(SASampleStore *)self->_sampleStore sampleTimestamps];
  v16 = [sampleTimestamps4 objectAtIndexedSubscript:v9];
  reportStartTime = self->_reportStartTime;
  self->_reportStartTime = v16;

  self->_reportEndSampleIndex = v12;
  sampleTimestamps5 = [(SASampleStore *)self->_sampleStore sampleTimestamps];
  v19 = [sampleTimestamps5 objectAtIndexedSubscript:v12];
  reportEndTime = self->_reportEndTime;
  self->_reportEndTime = v19;

  self->_numSamples = self->_reportEndSampleIndex - self->_reportStartSampleIndex + 1;
  if (!self->_reportStartTime || !self->_reportEndTime)
  {
    goto LABEL_24;
  }

  targetMainBinaryUUID = [(SASampleStore *)self->_sampleStore targetMainBinaryUUID];

  sampleStore = self->_sampleStore;
  if (!targetMainBinaryUUID)
  {
    if ([(SASampleStore *)self->_sampleStore targetProcessId]!= -1)
    {
      v28 = self->_sampleStore;
      v31 = [SATimeRange timeRangeStart:self->_reportStartTime end:self->_reportEndTime];
      [(SASampleStore *)v28 findTargetProcessInTimeRange:v31];
      goto LABEL_27;
    }

LABEL_24:
    v27 = *MEMORY[0x1E69E9840];
    return;
  }

  v31 = [SATimeRange timeRangeStart:self->_reportStartTime end:self->_reportEndTime];
  [(SASampleStore *)sampleStore findTargetProcessesInTimeRange:v31];
LABEL_27:
  v29 = *MEMORY[0x1E69E9840];
}

- (void)printToStream:(__sFILE *)stream
{
  v4 = [[SAFileOutputStream alloc] initWithFileStream:stream];
  stream = self->_stream;
  self->_stream = v4;

  [(SASamplePrinter *)self printReport];
  v6 = self->_stream;
  self->_stream = 0;
}

- (void)printToMutableData:(id)data
{
  v4 = [[SAMutableDataOutputStream alloc] initWithMutableData:data];
  stream = self->_stream;
  self->_stream = v4;

  [(SASamplePrinter *)self printReport];
  v6 = self->_stream;
  self->_stream = 0;
}

- (__CFString)displayNameForTask:(__CFString *)task
{
  if (task)
  {
    task = [(SASamplePrinter *)task displayNameForTask:a2 includePid:1];
    v2 = vars8;
  }

  return task;
}

void __37__SASamplePrinter_checkForBadOptions__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 dispatchQueue];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __37__SASamplePrinter_checkForBadOptions__block_invoke_382(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (v5)
  {
    v7 = [a2 threadState];
    v8 = [v7 startTimestamp];
    v9 = [v5 gt:v8];

    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  v13 = [a2 threadState];
  v10 = [v13 endTimestamp];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (__CFString)displayNameForDispatchQueue:(void *)queue
{
  if (queue)
  {
    dispatchQueueLabel = [queue dispatchQueueLabel];

    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (dispatchQueueLabel)
    {
      dispatchQueueLabel2 = [queue dispatchQueueLabel];
      v5 = SACopySanitizedString(dispatchQueueLabel2, 1, 0);
      v6 = [v3 initWithFormat:@"%@(%llu)", v5, objc_msgSend(queue, "identifier")];
    }

    else
    {
      v6 = [v3 initWithFormat:@"%llu", objc_msgSend(queue, "identifier")];
    }
  }

  else
  {
    v6 = @"none";
  }

  return v6;
}

- (uint64_t)taskHasSwallowedAnExceptionNotedByHIException:(uint64_t)exception
{
  exceptionCopy = exception;
  if (exception)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    threads = [a2 threads];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__SASamplePrinter_taskHasSwallowedAnExceptionNotedByHIException___block_invoke;
    v5[3] = &unk_1E86F5B80;
    v5[4] = exceptionCopy;
    v5[5] = &v6;
    [threads enumerateKeysAndObjectsUsingBlock:v5];

    LOBYTE(exceptionCopy) = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  return exceptionCopy & 1;
}

void __65__SASamplePrinter_taskHasSwallowedAnExceptionNotedByHIException___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 lastThreadStateOnOrBeforeTime:*(*(a1 + 32) + 40) sampleIndex:*(*(a1 + 32) + 64)];
  if (v6)
  {
    v9 = v6;
    v7 = [v6 name];
    v8 = [v7 hasPrefix:@"HIE: "];

    v6 = v9;
    if (v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void __60__SASamplePrinter_printProcessesWithHIESwallowedExceptions___block_invoke(uint64_t a1, void *a2)
{
  if ([(SASamplePrinter *)*(a1 + 32) taskHasSwallowedAnExceptionNotedByHIException:a2])
  {
    v4 = *(a1 + 40);
    v5 = [(SASamplePrinter *)*(a1 + 32) displayNameForTask:a2];
    [v4 addObject:v5];
  }

  v6 = [a2 pid];
  if (v6 >= 2)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 168);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__SASamplePrinter_printProcessesWithHIESwallowedExceptions___block_invoke_2;
    v10[3] = &unk_1E86F7488;
    v12 = v6;
    v10[4] = a2;
    v10[5] = v8;
    v11 = v7;
    [v9 enumerateTasks:v10];
  }
}

void __60__SASamplePrinter_printProcessesWithHIESwallowedExceptions___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32) != a2 && ([a2 rpid] == *(a1 + 56) || objc_msgSend(a2, "ppid") == *(a1 + 56)) && -[SASamplePrinter taskHasSwallowedAnExceptionNotedByHIException:](*(a1 + 40), a2))
  {
    v4 = *(a1 + 48);
    v5 = [(SASamplePrinter *)*(a1 + 40) displayNameForTask:a2];
    [v4 addObject:v5];
  }
}

- (BOOL)printLaunchdThrottledProcessesToStream:(uint64_t)stream
{
  v58 = *MEMORY[0x1E69E9840];
  v32 = *(stream + 48);
  v25 = [*(stream + 168) dataStyle] != 1 && objc_msgSend(*(stream + 168), "dataStyle") != 0;
  v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  tasksByPid = [*(stream + 168) tasksByPid];
  obj = [tasksByPid objectForKeyedSubscript:&unk_1F5BDCA30];

  v29 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v29)
  {
    v28 = *v53;
    do
    {
      v4 = 0;
      do
      {
        if (*v53 != v28)
        {
          v5 = v4;
          objc_enumerationMutation(obj);
          v4 = v5;
        }

        v30 = v4;
        v6 = *(*(&v52 + 1) + 8 * v4);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v35 = v6;
        threads = [v6 threads];
        allKeys = [threads allKeys];
        v31 = [allKeys sortedArrayUsingSelector:sel_compare_];

        v9 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v9)
        {
          v34 = *v49;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v49 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v11 = *(*(&v48 + 1) + 8 * i);
              threads2 = [v35 threads];
              v13 = [threads2 objectForKeyedSubscript:v11];

              v46[0] = 0;
              v46[1] = v46;
              v46[2] = 0x3032000000;
              v46[3] = __Block_byref_object_copy__4;
              v46[4] = __Block_byref_object_dispose__4;
              v47 = 0;
              v44[0] = 0;
              v44[1] = v44;
              v44[2] = 0x3032000000;
              v44[3] = __Block_byref_object_copy__4;
              v44[4] = __Block_byref_object_dispose__4;
              v45 = 0;
              v14 = *(stream + 32);
              v15 = *(stream + 40);
              v16 = *(stream + 56);
              v17 = *(stream + 64);
              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 3221225472;
              v39[2] = __58__SASamplePrinter_printLaunchdThrottledProcessesToStream___block_invoke;
              v39[3] = &unk_1E86F74D8;
              v43 = v32;
              v39[4] = stream;
              v41 = v46;
              v42 = v44;
              v40 = v33;
              [v13 enumerateThreadStatesBetweenStartTime:v14 startSampleIndex:v16 endTime:v15 endSampleIndex:v17 reverseOrder:0 block:v39];

              _Block_object_dispose(v44, 8);
              _Block_object_dispose(v46, 8);
            }

            v9 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v9);
        }

        v4 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v29);
  }

  v18 = [v33 count];
  if (v18)
  {
    options = [stream options];
    printJson = [options printJson];

    if (printJson)
    {
      v21 = *(stream + 8);
      allKeys2 = [v33 allKeys];
      SAJSONWriteDictionaryEntry(v21, @"launchdThrottledProcesses", allKeys2);
    }

    else
    {
      [a2 printWithFormat:@"Launchd throttled processes:\n"];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __58__SASamplePrinter_printLaunchdThrottledProcessesToStream___block_invoke_2;
      v36[3] = &unk_1E86F7500;
      v37 = v25;
      v38 = v32;
      v36[4] = stream;
      v36[5] = a2;
      [v33 enumerateKeysAndObjectsUsingBlock:v36];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v18 != 0;
}

void __58__SASamplePrinter_printLaunchdThrottledProcessesToStream___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 name];
  obj = v4;
  if (*(a1 + 64) == 1)
  {
    v5 = *(*(a1 + 32) + 56);
    v6 = [a2 startSampleIndex];
    if (v5 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = *(*(a1 + 32) + 64);
    v9 = [a2 endSampleIndex];
    if (v8 >= v9)
    {
      v8 = v9;
    }

    v4 = obj;
    if (!obj)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if ([v4 containsString:@"throttled"])
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    if (v10 && [v10 isEqual:obj])
    {
      v11 = [a2 endTimestamp];
      [*(*(*(a1 + 56) + 8) + 40) setEndTime:v11];

      [*(*(*(a1 + 56) + 8) + 40) setEndSampleIndex:v8];
    }

    else
    {
      v16 = [SATimeRangeOfSamples alloc];
      v17 = [a2 startTimestamp];
      v18 = [a2 endTimestamp];
      v19 = [(SATimeRangeOfSamples *)v16 initWithStartTime:v17 endTime:v18 startSampleIndex:v7 endSampleIndex:v8];
      v20 = *(*(a1 + 56) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
      v22 = [*(a1 + 40) objectForKeyedSubscript:obj];
      v23 = v22;
      if (v22)
      {
        [v22 addObject:*(*(*(a1 + 56) + 8) + 40)];
      }

      else
      {
        v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(*(*(a1 + 56) + 8) + 40), 0}];
        [*(a1 + 40) setObject:v24 forKeyedSubscript:obj];
      }
    }

    goto LABEL_19;
  }

LABEL_14:
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

LABEL_19:
}

void __58__SASamplePrinter_printLaunchdThrottledProcessesToStream___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v6 appendFormat:@"%@", a2];
  if (*(a1 + 48) == 1)
  {
    [v6 appendFormat:@":"];
    v7 = *(a1 + 32);
    v72 = v6;
    if (*(a1 + 49) == 1)
    {
      v8 = *(v7 + 56);
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v9 = a3;
      v10 = [v9 countByEnumeratingWithState:&v77 objects:v82 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v78;
        v68 = v9;
        do
        {
          v14 = 0;
          do
          {
            if (*v78 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v77 + 1) + 8 * v14);
            if ([v15 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v15, "endSampleIndex") != 0x7FFFFFFFFFFFFFFFLL)
            {
              obj = v12;
              if (v12 >= 1)
              {
                [v72 appendFormat:@", "];
              }

              if (v8 >= [v15 startSampleIndex])
              {
                goto LABEL_31;
              }

              v16 = [v15 startSampleIndex] - 1;
              v17 = *(a1 + 32);
              if (v8 == v16)
              {
                if (v17)
                {
                  if (*(v17 + 48) == 1)
                  {
                    v18 = [*(v17 + 16) forceOneBasedTimeIndexes];
                    v19 = v8 + 1;
                    if (v18)
                    {
                      v19 -= *(v17 + 56);
                    }
                  }

                  else
                  {
                    v19 = 0x7FFFFFFFFFFFFFFFLL;
                  }
                }

                else
                {
                  v19 = 0;
                }

                [v72 appendFormat:@" not throttled sample %lu, ", v19];
                goto LABEL_31;
              }

              if (v17)
              {
                if (*(v17 + 48) == 1)
                {
                  v20 = v8 + 1;
                  if ([*(v17 + 16) forceOneBasedTimeIndexes])
                  {
                    v20 -= *(v17 + 56);
                  }
                }

                else
                {
                  v20 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v21 = *(a1 + 32);
                v22 = [v15 startSampleIndex];
                if (v21)
                {
                  if (*(v21 + 48) == 1)
                  {
                    v23 = v22;
                    if ([*(v21 + 16) forceOneBasedTimeIndexes])
                    {
                      v23 -= *(v21 + 56);
                    }
                  }

                  else
                  {
                    v23 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  goto LABEL_30;
                }
              }

              else
              {
                [v15 startSampleIndex];
                v20 = 0;
              }

              v23 = 0;
LABEL_30:
              [v72 appendFormat:@" not throttled samples %lu-%lu, ", v20, v23];
              v9 = v68;
LABEL_31:
              v24 = [v15 startSampleIndex];
              v25 = [v15 endSampleIndex];
              v26 = a1;
              v27 = *(a1 + 32);
              v28 = [v15 startSampleIndex];
              if (v24 >= v25)
              {
                if (v27)
                {
                  v30 = obj;
                  if (*(v27 + 48) == 1)
                  {
                    v31 = [*(v27 + 16) forceOneBasedTimeIndexes];
                    v32 = v28 + 1;
                    if (v31)
                    {
                      v32 -= *(v27 + 56);
                    }
                  }

                  else
                  {
                    v32 = 0x7FFFFFFFFFFFFFFFLL;
                  }
                }

                else
                {
                  v32 = 0;
                  v30 = obj;
                }

                [v72 appendFormat:@" throttled sample %lu", v32];
                a1 = v26;
              }

              else
              {
                if (v27)
                {
                  if (*(v27 + 48) == 1)
                  {
                    v29 = v28 + 1;
                    if ([*(v27 + 16) forceOneBasedTimeIndexes])
                    {
                      v29 -= *(v27 + 56);
                    }
                  }

                  else
                  {
                    v29 = 0x7FFFFFFFFFFFFFFFLL;
                  }
                }

                else
                {
                  v29 = 0;
                }

                a1 = v26;
                v33 = *(v26 + 32);
                v34 = [v15 endSampleIndex];
                if (v33)
                {
                  if (*(v33 + 48) == 1)
                  {
                    v35 = v34;
                    v36 = [*(v33 + 16) forceOneBasedTimeIndexes];
                    v37 = v35 + 1;
                    if (v36)
                    {
                      v37 -= *(v33 + 56);
                    }
                  }

                  else
                  {
                    v37 = 0x7FFFFFFFFFFFFFFFLL;
                  }
                }

                else
                {
                  v37 = 0;
                }

                [v72 appendFormat:@" throttled samples %lu-%lu", v29, v37];
                v9 = v68;
                v30 = obj;
              }

              v8 = [v15 endSampleIndex] + 1;
              v12 = v30 + 1;
            }

            ++v14;
          }

          while (v11 != v14);
          v38 = [v9 countByEnumeratingWithState:&v77 objects:v82 count:16];
          v11 = v38;
        }

        while (v38);
      }

      v39 = *(a1 + 32);
      v40 = *(v39 + 64);
      v41 = v8 == v40;
      v6 = v72;
      if (v8 <= v40)
      {
        v42 = *(v39 + 48);
        if (v41)
        {
          if (*(v39 + 48))
          {
            v43 = [*(v39 + 16) forceOneBasedTimeIndexes];
            v44 = v8 + 1;
            if (v43)
            {
              v44 -= *(v39 + 56);
            }
          }

          else
          {
            v44 = 0x7FFFFFFFFFFFFFFFLL;
          }

          [v72 appendFormat:@", not throttled sample %lu", v44, v67];
        }

        else
        {
          if (*(v39 + 48))
          {
            v61 = v8 + 1;
            if ([*(v39 + 16) forceOneBasedTimeIndexes])
            {
              v61 -= *(v39 + 56);
            }
          }

          else
          {
            v61 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v62 = *(a1 + 32);
          if (*(v62 + 48) == 1)
          {
            v63 = *(v62 + 64);
            v64 = [*(v62 + 16) forceOneBasedTimeIndexes];
            v65 = v63 + 1;
            if (v64)
            {
              v65 -= *(v62 + 56);
            }
          }

          else
          {
            v65 = 0x7FFFFFFFFFFFFFFFLL;
          }

          [v72 appendFormat:@", not throttled samples %lu-%lu", v61, v65];
        }
      }
    }

    else
    {
      v45 = *(v7 + 32);
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      obja = a3;
      v46 = [obja countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = 0;
        v49 = *v74;
        do
        {
          v50 = 0;
          v51 = v45;
          v69 = v48;
          do
          {
            if (*v74 != v49)
            {
              objc_enumerationMutation(obja);
            }

            v52 = *(*(&v73 + 1) + 8 * v50);
            if (v48 >= 1)
            {
              [v6 appendFormat:@", "];
            }

            v53 = [v52 startTime];
            [v51 deltaSecondsTo:v53 timeDomainPriorityList:&unk_1F5BDCC70 timeDomainUsed:0];
            v55 = v54;

            if (v55 > 0.0)
            {
              [v6 appendFormat:@" not throttled %.2fs, ", *&v55];
            }

            v56 = [v52 startTime];
            v57 = [v52 endTime];
            [v56 deltaSecondsTo:v57 timeDomainPriorityList:&unk_1F5BDCC88 timeDomainUsed:0];
            v59 = v58;

            v6 = v72;
            if (v59 > 0.0)
            {
              [v72 appendFormat:@" throttled %.2fs", *&v59];
            }

            v45 = [v52 endTime];

            ++v48;
            ++v50;
            v51 = v45;
          }

          while (v47 != v50);
          v48 = v69 + v47;
          v47 = [obja countByEnumeratingWithState:&v73 objects:v81 count:16];
        }

        while (v47);
      }

      [v45 deltaSecondsTo:*(*(a1 + 32) + 40) timeDomainPriorityList:&unk_1F5BDCCA0 timeDomainUsed:0];
      if (v60 > 0.0)
      {
        [v6 appendFormat:@", not throttled %.2fs", *&v60];
      }
    }
  }

  [*(a1 + 40) printWithFormat:@"  %@\n", v6];

  v66 = *MEMORY[0x1E69E9840];
}

void __63__SASamplePrinter_printProcessesHittingWQThreadLimitsToStream___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 lastTaskStateOnOrBeforeTime:*(*(a1 + 32) + 40) sampleIndex:*(*(a1 + 32) + 64)];
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    if (([v4 wqExceededTotalThreadLimit] & 1) != 0 || (v6 = objc_msgSend(v8, "wqExceededConstrainedThreadLimit"), v5 = v8, v6))
    {
      v7 = [(SASamplePrinter *)*(a1 + 32) displayNameForTask:a2];
      if ([v8 wqExceededTotalThreadLimit])
      {
        [*(a1 + 40) addObject:v7];
      }

      if ([v8 wqExceededConstrainedThreadLimit])
      {
        [*(a1 + 48) addObject:v7];
      }

      v5 = v8;
    }
  }
}

void __50__SASamplePrinter_printRunawayMitigatedProcesses___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v4[4];
  v6 = v4[5];
  v7 = v4[7];
  v8 = v4[8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__SASamplePrinter_printRunawayMitigatedProcesses___block_invoke_2;
  v9[3] = &unk_1E86F7528;
  v9[4] = v4;
  v9[5] = a2;
  v10 = v3;
  [a2 enumerateTaskStatesBetweenStartTime:v5 startSampleIndex:v7 endTime:v6 endSampleIndex:v8 reverseOrder:0 block:v9];
}

void __50__SASamplePrinter_printRunawayMitigatedProcesses___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 isRunawayMitigated])
  {
    v6 = [(SASamplePrinter *)*(a1 + 32) displayNameForTask:?];
    [*(a1 + 48) addObject:v6];
    *a4 = 1;
  }
}

void __34__SASamplePrinter_printDeadlocks___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (([a3 isPartOfADeadlock] & 1) == 0 && !objc_msgSend(v3, "isBlockedByADeadlock"))
  {
    return;
  }

  v59 = [v3 threadState];
  v6 = [v59 startTimestamp];
  if ([v6 gt:*(*(a1 + 32) + 40)])
  {
    goto LABEL_4;
  }

  v7 = [v3 threadState];
  v8 = [v7 endTimestamp];
  v9 = [v8 lt:*(*(a1 + 32) + 32)];

  if ((v9 & 1) == 0)
  {
    if ([v3 isBlockedByADeadlock])
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = [v3 task];
      v13 = [(SASamplePrinter *)v11 displayNameForTask:v12];
      [v10 addObject:v13];
    }

    if ([v3 isPartOfADeadlock] && (objc_msgSend(*(a1 + 48), "containsObject:", a2) & 1) == 0)
    {
      [*(a1 + 48) addObject:a2];
      v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = *(a1 + 32);
      v15 = [v3 task];
      v16 = [v3 thread];
      v17 = [v3 threadState];
      v18 = [(SASamplePrinter *)v14 displayNameForTask:v15 thread:v16 threadState:v17];
      [v59 addObject:v18];

      v54 = [v59 count] - 1;
      v19 = *(a1 + 32);
      v20 = [v3 task];
      v21 = [(SASamplePrinter *)v19 displayNameForTask:v20 includePid:0];

      v22 = [v3 threadState];
      v56 = [v22 name];

      v23 = [v3 threadState];
      v24 = [v23 dispatchQueue];
      v57 = [v24 dispatchQueueLabel];

      v25 = [v3 dependency];
      v26 = v25;
      if (!v25 || v25 == v3)
      {
        v46 = v25;
LABEL_36:
        v47 = v21;

        if (v54)
        {
          v48 = [v59 subarrayWithRange:{0, v54}];
          [v59 removeObjectsInRange:{0, v54}];
          [v59 addObjectsFromArray:v48];
        }

        v49 = *(a1 + 56);
        v50 = objc_alloc(MEMORY[0x1E696AEC0]);
        v51 = [v59 componentsJoinedByString:@" -> "];
        v52 = [v59 objectAtIndexedSubscript:0];
        v53 = [v50 initWithFormat:@"%@ -> %@", v51, v52];
        [v49 addObject:v53];

        v6 = v47;
LABEL_4:

        return;
      }

      v55 = v3;
      while (1)
      {
        v27 = [v26 task];
        v28 = [v26 thread];
        v29 = [v26 threadState];
        v30 = *(a1 + 48);
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v28, "threadId")}];
        [v30 addObject:v31];

        v32 = [(SASamplePrinter *)*(a1 + 32) displayNameForTask:v27 thread:v28 threadState:v29];
        [v59 addObject:v32];

        v58 = v27;
        v33 = [(SASamplePrinter *)*(a1 + 32) displayNameForTask:v27 includePid:0];
        v34 = [v29 name];
        [v29 dispatchQueue];
        v36 = v35 = v21;
        v37 = [v36 dispatchQueueLabel];

        v21 = v35;
        v38 = [v35 compare:v33 options:577];
        if (v38)
        {
          v39 = v59;
          v40 = v34;
          goto LABEL_18;
        }

        if (!v57)
        {
          break;
        }

        v40 = v34;
        if (v37)
        {
          v38 = [v57 compare:v37 options:577];
          v39 = v59;
          if (v38)
          {
            goto LABEL_18;
          }

LABEL_29:
          if (v56)
          {
            if (v40)
            {
              v38 = [v56 compare:v40 options:577];
              if (v38)
              {
                v39 = v59;
LABEL_18:
                if (v38 == 1)
                {
LABEL_19:
                  v54 = [v39 count] - 1;
                  v41 = v33;
                  v42 = v21;
                  v21 = v41;

                  v43 = v40;
                  v44 = a1;
                  v45 = v37;

                  v56 = v43;
                  v57 = v45;
                  a1 = v44;
                  v40 = v34;
                }
              }
            }
          }

          else
          {
            if (v40)
            {
              goto LABEL_19;
            }

            v56 = 0;
          }

          v3 = v55;
        }

        v46 = [v26 dependency];

        if (v46)
        {
          v26 = v46;
          if (v46 != v3)
          {
            continue;
          }
        }

        goto LABEL_36;
      }

      v39 = v59;
      v40 = v34;
      if (!v37)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }
  }
}

- (id)displayNameForTask:(void *)task thread:(void *)thread threadState:
{
  if (self)
  {
    if (a2)
    {
      v5 = -[SASamplePrinter displayNameForTask:threadId:](self, a2, [task threadId]);
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ 0x%llx", @"Thread", objc_msgSend(task, "threadId")];
    }

    v6 = v5;
    name = [thread name];
    v8 = name;
    if (name)
    {
      v9 = [v6 stringByAppendingFormat:@" %@", name];

      v6 = v9;
    }

    dispatchQueue = [thread dispatchQueue];
    v11 = dispatchQueue;
    if (dispatchQueue)
    {
      v12 = [SASamplePrinter displayNameForDispatchQueue:dispatchQueue];
      v13 = [v6 stringByAppendingFormat:@" %@ %@", @"DispatchQueue", v12];

      v6 = v13;
    }

    swiftTask = [thread swiftTask];
    v15 = swiftTask;
    if (swiftTask)
    {
      if ([swiftTask identifier] == -1)
      {
        [v6 stringByAppendingFormat:@" %@ %@", @"Swift Task", @"UNKNOWN"];
      }

      else
      {
        [v6 stringByAppendingFormat:@" %@ %llu", @"Swift Task", objc_msgSend(v15, "identifier")];
      }
      v16 = ;

      v6 = v16;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)displayNameForTask:(int)task includePid:
{
  if (self)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:64];
    v7 = [(SASamplePrinter *)self rawNameForTask:a2];
    v8 = SACopySanitizedStringWhitespaceOnlyNullable(v7);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"UNKNOWN";
    }

    [v6 appendString:v10];

    bundleName = [a2 bundleName];

    if (bundleName)
    {
      bundleName2 = [a2 bundleName];
      v13 = SACopySanitizedString(bundleName2, 1, 0);
      [v6 appendFormat:@" (%@)", v13];
    }

    if (task)
    {
      [v6 appendFormat:@" [%d]", objc_msgSend(a2, "pid")];
      if ([a2 uniquePid] != -1)
      {
        uniquePid = [a2 uniquePid];
        if (uniquePid != [a2 pid])
        {
          [v6 appendFormat:@" [unique pid %llu]", objc_msgSend(a2, "uniquePid")];
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)kernelVersionAtWallTime:(uint64_t)time
{
  v22 = *MEMORY[0x1E69E9840];
  bootCycles = [*(time + 168) bootCycles];

  if (a2 == 0.0 || bootCycles == 0)
  {
    kernelVersion = [*(time + 168) kernelVersion];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    bootCycles2 = [*(time + 168) bootCycles];
    reverseObjectEnumerator = [bootCycles2 reverseObjectEnumerator];

    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          [v13 wallTimeAtMachAbsZero];
          if (v14 <= a2)
          {
            kernelVersion = [v13 kernelVersion];

            goto LABEL_17;
          }
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    kernelVersion = 0;
  }

LABEL_17:
  v15 = *MEMORY[0x1E69E9840];

  return kernelVersion;
}

- (id)displayNameForPid:(uint64_t)pid threadId:(void *)id timestamp:
{
  if (self)
  {
    if (a2 == -1 && !pid)
    {
      goto LABEL_4;
    }

    info = self[5].info;
    if (id)
    {
      [(SASampleStore *)info taskWithPid:a2 orTid:pid atTimestamp:id];
    }

    else
    {
      [(SASampleStore *)info lastTaskWithPid:a2 orTid:pid];
    }
    v10 = ;
    if (!v10)
    {
      if (pid)
      {
        v12 = objc_alloc(MEMORY[0x1E696AEC0]);
        if (a2 == -1)
        {
          v7 = [v12 initWithFormat:@"UNKNOWN TASK thread 0x%llx", pid, v17, v18];
        }

        else
        {
          v13 = @"UNKNOWN";
          if (!a2)
          {
            v13 = @"kernel_task";
          }

          v7 = [v12 initWithFormat:@"%@ [%d] thread 0x%llx", v13, a2, pid];
        }

        goto LABEL_5;
      }

      if (a2 != -1)
      {
        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = @"UNKNOWN";
        if (!a2)
        {
          v15 = @"kernel_task";
        }

        v7 = [v14 initWithFormat:@"%@ [%d]", v15, a2, v18];
        goto LABEL_5;
      }

LABEL_4:
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UNKNOWN TASK", v16, v17, v18];
LABEL_5:
      v8 = v7;
      goto LABEL_11;
    }

    v8 = [(SASamplePrinter *)self displayNameForTask:v10 threadId:pid];
  }

  else
  {
    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (__CFString)displayStringForResourceCoalition:(void *)coalition
{
  if ([coalition resourceCoalitionID])
  {
    resourceCoalitionName = [coalition resourceCoalitionName];

    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (resourceCoalitionName)
    {
      resourceCoalitionName2 = [coalition resourceCoalitionName];
      v5 = [v3 initWithFormat:@"%@(%llu)", resourceCoalitionName2, objc_msgSend(coalition, "resourceCoalitionID")];
    }

    else
    {
      v5 = [v3 initWithFormat:@"%llu", objc_msgSend(coalition, "resourceCoalitionID")];
    }
  }

  else
  {
    v5 = @"none";
  }

  return v5;
}

- (id)displayStringForOnBehalfOfForTasks:(unsigned int)tasks includePid:
{
  v56 = *MEMORY[0x1E69E9840];
  v37 = objc_alloc_init(SAOnBehalfOfMultiple);
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__4;
  v53 = __Block_byref_object_dispose__4;
  v54 = 0;
  sampleTimestamps = [*(self + 168) sampleTimestamps];
  v5 = [sampleTimestamps count];
  v6 = *(self + 168);
  if ((v5 & 7) != 0)
  {
    sampleTimestamps2 = [v6 sampleTimestamps];
    v8 = ([sampleTimestamps2 count] >> 3) + 1;
  }

  else
  {
    sampleTimestamps2 = [v6 sampleTimestamps];
    v8 = [sampleTimestamps2 count] >> 3;
  }

  v9 = *(self + 168);
  if ((v8 & 7) != 0)
  {
    sampleTimestamps3 = [v9 sampleTimestamps];
    v11 = [sampleTimestamps3 count];
    v12 = *(self + 168);
    if ((v11 & 7) != 0)
    {
      sampleTimestamps4 = [v12 sampleTimestamps];
      v14 = ([sampleTimestamps4 count] >> 3) + 1;
    }

    else
    {
      sampleTimestamps4 = [v12 sampleTimestamps];
      v14 = [sampleTimestamps4 count] >> 3;
    }

    sampleTimestamps5 = [*(self + 168) sampleTimestamps];
    v19 = [sampleTimestamps5 count];
    v20 = *(self + 168);
    if ((v19 & 7) != 0)
    {
      sampleTimestamps6 = [v20 sampleTimestamps];
      v22 = [sampleTimestamps6 count];

      v23 = ((v22 >> 3) + 1) & 7;
    }

    else
    {
      sampleTimestamps7 = [v20 sampleTimestamps];
      v25 = [sampleTimestamps7 count];

      v23 = (v25 >> 3) & 7;
    }

    v17 = v14 - v23 + 8;
  }

  else
  {
    sampleTimestamps3 = [v9 sampleTimestamps];
    v15 = [sampleTimestamps3 count];
    v16 = *(self + 168);
    if ((v15 & 7) != 0)
    {
      sampleTimestamps4 = [v16 sampleTimestamps];
      v17 = ([sampleTimestamps4 count] >> 3) + 1;
    }

    else
    {
      sampleTimestamps4 = [v16 sampleTimestamps];
      v17 = [sampleTimestamps4 count] >> 3;
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v26 = a2;
  v27 = [v26 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v27)
  {
    v28 = *v46;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(v26);
        }

        threads = [*(*(&v45 + 1) + 8 * i) threads];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke;
        v41[3] = &unk_1E86F7F90;
        v41[4] = self;
        v42 = v37;
        v43 = &v49;
        v44 = v17;
        [threads enumerateKeysAndObjectsUsingBlock:v41];
      }

      v27 = [v26 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v27);
  }

  if ([v50[5] count])
  {
    v31 = v50[5];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke_3;
    v38[3] = &unk_1E86F7FB8;
    v40 = v17;
    v39 = v37;
    [v31 enumerateKeysAndObjectsUsingBlock:v38];
  }

  if (v37 && v37->_count)
  {
    v32 = [(SAOnBehalfOfMultiple *)v37 displayStringWithPids:tasks];
  }

  else
  {
    v32 = 0;
  }

  _Block_object_dispose(&v49, 8);

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)architectureStringForTask:(uint64_t)task
{
  architectureString = [a2 architectureString];
  v5 = *(task + 168);
  if (v5)
  {
    v6 = *(v5 + 240);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  objc_copyStruct(&dest, (a2 + 288), 8, 1, 0);
  if (v6)
  {
    if (dest)
    {
      CSArchitectureGetFamily();
      CSArchitectureGetFamily();
      if ((CSArchitectureMatchesArchitecture() & 1) == 0)
      {
        v7 = [architectureString stringByAppendingString:@" (translated)"];

        architectureString = v7;
      }
    }
  }

LABEL_7:

  return architectureString;
}

- (void)addTaskHeaderToStream:(void *)stream displayName:(uint64_t)name pid:(void *)pid mainBinary:(void *)binary mainBinaryPath:(void *)path sharedCaches:(uint64_t)caches uid:(double)uid bundleIdentifier:(void *)self0 bundleVersion:(__int128)self1 bundleShortVersion:(void *)self2 bundleBuildVersion:(void *)self3 bundleProjectName:(void *)self4 bundleSourceVersion:(void *)self5 bundleProductBuildVersion:(uint64_t)self6 adamID:(void *)self7 installerVersionID:(char)self8 developerType:(void *)self9 appType:(char)appType isBeta:(void *)beta cohortID:(void *)cohortID vendorID:(void *)vendorID distributorID:(void *)distributorID codesigningID:(void *)codesigningID teamID:(void *)teamID resourceCoalitionSampleCounts:(void *)counts onBehalfOfProcesses:(void *)processes architectureString:(void *)string kernelVersion:(void *)stream0 parentName:(void *)stream1 responsibleName:(void *)stream2 taskExecedFromName:(void *)stream3 taskExecedToName:(void *)stream4 forkTimestamp:(void *)stream5 startTimestamp:(unint64_t)stream6 endTimestamp:(unint64_t)stream7 startSampleIndex:(unint64_t)stream8 endSampleIndex:(unint64_t)stream9 numSamples:(uint64_t)name0 totalNumSamples:(uint64_t)name1 numSamplesSuspended:(unint64_t)name2 numSamplesTerminated:(unint64_t)name3 startingTaskSize:(unint64_t)name4 endingTaskSize:(unint64_t)name5 maxTaskSize:(unint64_t)name6 startSampleIndexOfMaxTaskSize:(unsigned int)name7 endSampleIndexOfMaxTaskSize:(unint64_t)name8 numPageins:(unint64_t)name9 cpuTimeNs:(unint64_t)pid0 cpuInstructions:(unint64_t)pid1 cpuCycles:(unint64_t)pid2 nonThreadCpuTimeNs:(unint64_t)pid3 nonThreadCpuInstructions:(char)pid4 nonThreadCpuCycles:(char)pid5 usesSuddenTermination:(void *)pid6 allowsIdleExit:(void *)pid7 memoryLimitStr:(char)pid8 jetsamPriorityStr:(char)pid9 isTranslocated:(char)binary0 hardenedHeap:(char)binary1 mteCheckedAllocationsEnabled:(char)binary2 mteUserDataAllocationsTagged:(char)binary3 mteSoftModeEnabled:mteInheritanceTurnedOn:isRunningBoardManaged:isUnresponsive:timeOfLastResponse:numThreads:numIdleWorkQueueThreads:numOtherHiddenThreads:hieSwallowedException:numSamplesWQExceededConstrainedThreadLimit:numSamplesWQExceededTotalThreadLimit:numSamplesWQExceededCooperativeThreadLimit:numSamplesWQExceededActiveConstrainedThreadLimit:numSamplesTALEngaged:isRunawayMitigated:threadsDeadlocked:threadsBlockedByADeadlock:ioSize:numIOs:isReportHeader:
{
  selfCopy = self;
  v86 = a77;
  cyclesCopy = cycles;
  v377 = *MEMORY[0x1E69E9840];
  if (a80)
  {
    if ([*(self + 16) printJson])
    {
      v307 = *__error();
      v308 = _sa_logt();
      if (os_log_type_enabled(v308, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v308, OS_LOG_TYPE_ERROR, "printing report target task header with json", buf, 2u);
      }

      *__error() = v307;
      _SASetCrashLogMessage(7736, "printing report target task header with json", v309, v310, v311, v312, v313, v314, v347);
      _os_crash();
      __break(1u);
    }

    else if (![*(selfCopy + 16) systemstatsFormat])
    {
      goto LABEL_4;
    }

    v315 = *__error();
    v316 = _sa_logt();
    if (os_log_type_enabled(v316, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v316, OS_LOG_TYPE_ERROR, "printing report target task header with systemstats format", buf, 2u);
    }

    *__error() = v315;
    _SASetCrashLogMessage(7737, "printing report target task header with systemstats format", v317, v318, v319, v320, v321, v322, v347);
    _os_crash();
    __break(1u);
    goto LABEL_505;
  }

LABEL_4:
  if (!iD)
  {
    if (!type)
    {
      v87 = 0;
      v88 = 0;
      goto LABEL_14;
    }

    if (([type isEqualToString:@"System"] & 1) == 0 && (objc_msgSend(type, "isEqualToString:", @"Internal") & 1) == 0)
    {
      v87 = [type isEqualToString:@"Hidden"];
      goto LABEL_13;
    }

LABEL_12:
    v87 = 1;
    goto LABEL_13;
  }

  if (iD == 1)
  {
    goto LABEL_12;
  }

  v87 = 0;
  v88 = 1;
  if (identifier && iD == -1)
  {
    v87 = [identifier hasPrefix:@"com.apple."];
LABEL_13:
    v88 = 1;
  }

LABEL_14:
  v353 = v88;
  v351 = v87;
  if ([*(selfCopy + 16) printJson])
  {
    SAJSONWriteDictionaryFirstEntry(a2, @"name", stream);
    if (pid)
    {
      uuid = [pid uuid];
      uUIDString = [uuid UUIDString];
      SAJSONWriteDictionaryEntry(a2, @"uuid", uUIDString);
    }

    if (binary)
    {
      SAJSONWriteDictionaryEntry(a2, @"path", binary);
    }

    vendorIDCopy2 = vendorID;
    if (path)
    {
      SAJSONWriteDictionaryEntry(a2, @"sharedcaches", path);
    }

    if (caches != -314)
    {
      v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      SAJSONWriteDictionaryEntry(a2, @"uid", v92);
    }

    if (!productBuildVersion)
    {
LABEL_50:
      if (d)
      {
        v106 = SACopySanitizedString(d, 1, 0);
        SAJSONWriteDictionaryEntry(a2, @"appExternalID", v106);
      }

      if (v353)
      {
        if (v351)
        {
          v107 = MEMORY[0x1E695E118];
        }

        else
        {
          v107 = MEMORY[0x1E695E110];
        }

        SAJSONWriteDictionaryEntry(a2, @"isFirstParty", v107);
      }

      if (appType)
      {
        SAJSONWriteDictionaryEntry(a2, @"isBeta", MEMORY[0x1E695E118]);
        if (beta)
        {
          SAJSONWriteDictionaryEntry(a2, @"cohort", beta);
        }
      }

      if (cohortID)
      {
        SAJSONWriteDictionaryEntry(a2, @"betaIdentifier", cohortID);
      }

      if (identifier)
      {
        v108 = SACopySanitizedString(identifier, 1, 0);
        SAJSONWriteDictionaryEntry(a2, @"bundleIdentifier", v108);
      }

      if (processes)
      {
        SAJSONWriteDictionaryEntry(a2, @"version", processes);
        toNameCopy2 = toName;
        goto LABEL_90;
      }

      versionCopy2 = version;
      toNameCopy2 = toName;
      if (version == 0)
      {
LABEL_90:
        if (shortVersion)
        {
          v127 = SACopySanitizedString(shortVersion, 1, 0);
          SAJSONWriteDictionaryEntry(a2, @"buildVersion", v127);
        }

        if (sourceVersion)
        {
          v128 = SACopySanitizedString(sourceVersion, 1, 0);
          SAJSONWriteDictionaryEntry(a2, @"productBuildVersion", v128);
        }

        if (buildVersion)
        {
          v129 = SACopySanitizedString(buildVersion, 1, 0);
          SAJSONWriteDictionaryEntry(a2, @"projectName", v129);
        }

        if (projectName)
        {
          v130 = SACopySanitizedString(projectName, 1, 0);
          SAJSONWriteDictionaryEntry(a2, @"sourceVersion", v130);
        }

        if (vendorIDCopy2)
        {
          SAJSONWriteDictionaryEntry(a2, @"codesigningID", vendorIDCopy2);
        }

        if (distributorID)
        {
          SAJSONWriteDictionaryEntry(a2, @"teamID", distributorID);
        }

        if ([codesigningID count] > 1 || objc_msgSend(codesigningID, "count") == 1 && (objc_msgSend(codesigningID, "allKeys"), v131 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v131, "firstObject"), v132 = objc_claimAutoreleasedReturnValue(), v133 = objc_msgSend(v132, "isEqualToString:", @"none"), v132, v131, (v133 & 1) == 0))
        {
          SAJSONWriteDictionaryEntry(a2, @"resourceCoalitionSampleCounts", codesigningID);
        }

        if (teamID)
        {
          SAJSONWriteDictionaryEntry(a2, @"onBehalfOf", teamID);
        }

        if (string)
        {
          SAJSONWriteDictionaryEntry(a2, @"parent", string);
        }

        if (kernelVersion)
        {
          SAJSONWriteDictionaryEntry(a2, @"responsible", kernelVersion);
        }

        if (parentName)
        {
          SAJSONWriteDictionaryEntry(a2, @"taskExecedFrom", parentName);
        }

        if (responsibleName)
        {
          SAJSONWriteDictionaryEntry(a2, @"taskExecedTo", responsibleName);
        }

        if (counts)
        {
          SAJSONWriteDictionaryEntry(a2, @"arch", counts);
        }

        if (toNameCopy2)
        {
          SAJSONWriteDictionaryEntry(a2, @"startTime", toNameCopy2);
        }

        if (timestamp)
        {
          SAJSONWriteDictionaryEntry(a2, @"endTime", timestamp);
        }

        if (startTimestamp != 0x7FFFFFFFFFFFFFFFLL)
        {
          v134 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"startSampleIndex", v134);
        }

        if (endTimestamp != 0x7FFFFFFFFFFFFFFFLL)
        {
          v135 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"endSampleIndex", v135);
        }

        v136 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
        SAJSONWriteDictionaryEntry(a2, @"numSamples", v136);

        if (samples)
        {
          v137 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesSuspended", v137);
        }

        if (numSamples)
        {
          v138 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesTerminated", v138);
        }

        if (suspended)
        {
          v139 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"startingTaskSize", v139);
        }

        if (terminated)
        {
          v140 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"endingTaskSize", v140);
        }

        if (size)
        {
          v141 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"maxTaskSize", v141);
        }

        if (taskSize != 0x7FFFFFFFFFFFFFFFLL)
        {
          v142 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"startSampleIndexOfMaxTaskSize", v142);
        }

        if (maxTaskSize != 0x7FFFFFFFFFFFFFFFLL)
        {
          v143 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"endSampleIndexOfMaxTaskSize", v143);
        }

        if (ofMaxTaskSize)
        {
          v144 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
          SAJSONWriteDictionaryEntry(a2, @"numPageins", v144);
        }

        if (indexOfMaxTaskSize)
        {
          v145 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"cpuNanoseconds", v145);
        }

        if (pageins)
        {
          v146 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"cpuInstructions", v146);
        }

        if (ns)
        {
          v147 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"cpuCycles", v147);
        }

        if (cpuInstructions)
        {
          SAJSONWriteDictionaryEntry(a2, @"usesSuddenTermination", MEMORY[0x1E695E118]);
        }

        if (cpuCycles)
        {
          SAJSONWriteDictionaryEntry(a2, @"allowsIdleExit", MEMORY[0x1E695E118]);
        }

        if (termination)
        {
          SAJSONWriteDictionaryEntry(a2, @"memoryLimitStr", termination);
        }

        if (exit)
        {
          SAJSONWriteDictionaryEntry(a2, @"jetsamPriorityStr", exit);
        }

        if (str)
        {
          SAJSONWriteDictionaryEntry(a2, @"isTranslocated", MEMORY[0x1E695E118]);
        }

        if (priorityStr)
        {
          SAJSONWriteDictionaryEntry(a2, @"hardenedHeap", MEMORY[0x1E695E118]);
        }

        if (translocated)
        {
          SAJSONWriteDictionaryEntry(a2, @"mteCheckedAllocationsEnabled", MEMORY[0x1E695E118]);
        }

        if (heap)
        {
          SAJSONWriteDictionaryEntry(a2, @"mteUserDataAllocationsTagged", MEMORY[0x1E695E118]);
        }

        if (enabled)
        {
          SAJSONWriteDictionaryEntry(a2, @"mteSoftModeEnabled", MEMORY[0x1E695E118]);
        }

        if (tagged)
        {
          SAJSONWriteDictionaryEntry(a2, @"mteInheritanceTurnedOn", MEMORY[0x1E695E118]);
        }

        if (a64)
        {
          SAJSONWriteDictionaryEntry(a2, @"isRunningBoardManaged", MEMORY[0x1E695E118]);
        }

        if (a65)
        {
          SAJSONWriteDictionaryEntry(a2, @"isUnresponsive", MEMORY[0x1E695E118]);
          if (uid > 0.0)
          {
            v148 = [MEMORY[0x1E696AD98] numberWithDouble:uid];
            SAJSONWriteDictionaryEntry(a2, @"timeOfLastResponseCF", v148);
          }
        }

        if (a66)
        {
          v149 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numThreads", v149);
        }

        if (a67)
        {
          v150 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numIdleWorkQueueThreads", v150);
        }

        if (a68)
        {
          v151 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numOtherHiddenThreads", v151);
        }

        if (a69)
        {
          SAJSONWriteDictionaryEntry(a2, @"hieSwallowedException", MEMORY[0x1E695E118]);
        }

        if (a70)
        {
          v152 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesWQExceededConstrainedThreadLimit", v152);
        }

        if (a71)
        {
          v153 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesWQExceededTotalThreadLimit", v153);
        }

        if (a72)
        {
          v154 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesWQExceededCooperativeThreadLimit", v154);
        }

        if (a73)
        {
          v155 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesWQExceededActiveConstrainedThreadLimit", v155);
        }

        if (a74)
        {
          v156 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesTALEngaged", v156);
        }

        if (a75)
        {
          SAJSONWriteDictionaryEntry(a2, @"isRunawayMitigated", MEMORY[0x1E695E118]);
        }

        if ([a76 count])
        {
          SAJSONWriteDictionaryEntry(a2, @"threadsDeadlocked", a76);
        }

        if ([a77 count])
        {
          SAJSONWriteDictionaryEntry(a2, @"threadsBlockedByADeadlock", a77);
        }

        if (a79)
        {
          v157 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numIOs", v157);

          v359 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a78];
          SAJSONWriteDictionaryEntry(a2, @"ioSize", v359);
          v158 = *MEMORY[0x1E69E9840];

          return;
        }

LABEL_498:
        v306 = *MEMORY[0x1E69E9840];
        return;
      }

      if (*(&version + 1))
      {
        v111 = SACopySanitizedString(*(&version + 1), 1, 0);

        versionCopy2 = version;
        if (version)
        {
LABEL_69:
          v112 = SACopySanitizedString(versionCopy2, 1, 0);

LABEL_89:
          v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ (%@)", v111, v112];
          SAJSONWriteDictionaryEntry(a2, @"version", v112);

          vendorIDCopy2 = vendorID;
          goto LABEL_90;
        }
      }

      else
      {
        v111 = @"???";
        if (version)
        {
          goto LABEL_69;
        }
      }

      v112 = @"???";
      goto LABEL_89;
    }

    osProductName = [*(selfCopy + 168) osProductName];

    if (osProductName)
    {
      osProductName2 = [*(selfCopy + 168) osProductName];
      v95 = SAIsEmbeddedPlatform(osProductName2);

      v96 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:productBuildVersion];
      if (!v95)
      {
        v97 = @"appItemID";
LABEL_49:
        SAJSONWriteDictionaryEntry(a2, v97, v96);

        goto LABEL_50;
      }
    }

    else
    {
      v96 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:productBuildVersion];
    }

    v97 = @"adamID";
    goto LABEL_49;
  }

  if (a80)
  {
    [a2 printWithFormat:@"%-*s%@\n", 18, "Command: ", stream];
  }

  else
  {
    v98 = "Powerstats for: ";
    if (([*(selfCopy + 16) microstackshotsFormat] & 1) == 0 && !objc_msgSend(*(selfCopy + 16), "systemstatsFormat"))
    {
      v98 = "Process: ";
    }

    [a2 printWithFormat:@"%-*s%@", 18, v98, stream];
    *(selfCopy + 113) = 1;
    if (([*(selfCopy + 16) systemstatsFormat] & 1) == 0)
    {
      indexCopy2 = index;
      if (index && samples == index)
      {
        [a2 appendString:@" (suspended)"];
        indexCopy2 = index;
      }

      if (indexCopy2 && numSamples == index)
      {
        [a2 appendString:@" (zombie)"];
      }
    }

    [a2 appendString:@"\n"];
  }

  streamCopy = stream;
  pathCopy3 = path;
  if (!pid)
  {
LABEL_73:
    systemstatsFormat = [*(selfCopy + 16) systemstatsFormat];
    if (binary && (systemstatsFormat & 1) == 0)
    {
      sanitizePaths = [*(selfCopy + 168) sanitizePaths];
      binaryCopy = binary;
      v117 = binaryCopy;
      if (sanitizePaths)
      {
      }

      v118 = SACopySanitizedString(v117, 1, 0);
      [a2 printWithFormat:@"%-*s%@\n", 18, "Path: ", v118];
    }

    if (identifier)
    {
      v119 = SACopySanitizedString(identifier, 1, 0);
      [a2 printWithFormat:@"%-*s%@\n", 18, "Identifier: ", v119];
    }

    codesigningIDCopy2 = codesigningID;
    vendorIDCopy4 = vendorID;
    if (processes)
    {
      [a2 printWithFormat:@"%-*s%@\n", 18, "Version: ", processes];
      toNameCopy6 = toName;
      goto LABEL_204;
    }

    versionCopy4 = version;
    toNameCopy6 = toName;
    if (version == 0)
    {
LABEL_204:
      if (shortVersion)
      {
        v159 = SACopySanitizedString(shortVersion, 1, 0);
        [a2 printWithFormat:@"%-*s%@\n", 18, "Build Version: ", v159];
      }

      if (sourceVersion)
      {
        v160 = SACopySanitizedString(sourceVersion, 1, 0);
        [a2 printWithFormat:@"%-*s%@\n", 18, "Product Build Version: ", v160];
      }

      if (buildVersion)
      {
        v161 = SACopySanitizedString(buildVersion, 1, 0);
        [a2 printWithFormat:@"%-*s%@\n", 18, "Project Name: ", v161];
      }

      if (projectName)
      {
        v162 = SACopySanitizedString(projectName, 1, 0);
        [a2 printWithFormat:@"%-*s%@\n", 18, "Source Version: ", v162];
      }

      if (vendorIDCopy4 && (!identifier || ![vendorIDCopy4 isEqualToString:identifier] || objc_msgSend(*(selfCopy + 16), "displayCodesigningIDsMatchingBundleIDs")))
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Codesigning ID: ", vendorIDCopy4];
      }

      if (distributorID)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Team ID: ", distributorID];
      }

      if (productBuildVersion)
      {
        osProductName3 = [*(selfCopy + 168) osProductName];

        v164 = "Adam ID: ";
        if (osProductName3)
        {
          osProductName4 = [*(selfCopy + 168) osProductName];
          v166 = SAIsEmbeddedPlatform(osProductName4);

          if (!v166)
          {
            v164 = "App Item ID: ";
          }
        }

        [a2 printWithFormat:@"%-*s%llu\n", 18, v164, productBuildVersion];
      }

      if (d)
      {
        v167 = SACopySanitizedString(d, 1, 0);
        [a2 printWithFormat:@"%-*s%@\n", 18, "App External ID: ", v167];
      }

      if (v353)
      {
        v168 = "No";
        if (v351)
        {
          v168 = "Yes";
        }

        [a2 printWithFormat:@"%-*s%s\n", 18, "Is First Party: ", v168];
      }

      if (appType)
      {
        [a2 printWithFormat:@"%-*sYes\n", 18, "Is Beta: "];
        if (beta)
        {
          [a2 printWithFormat:@"%-*s%@\n", 18, "Cohort: ", beta];
        }
      }

      if (cohortID)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Beta Identifier: ", cohortID];
      }

      v356 = selfCopy;
      if ([pathCopy3 count])
      {
        sharedCaches = [*(selfCopy + 168) sharedCaches];
        if ([sharedCaches count] > 1)
        {

LABEL_239:
          v367 = 0u;
          v368 = 0u;
          v365 = 0u;
          v366 = 0u;
          v171 = pathCopy3;
          v172 = [v171 countByEnumeratingWithState:&v365 objects:v376 count:16];
          if (v172)
          {
            v173 = v172;
            v174 = *v366;
            do
            {
              for (i = 0; i != v173; ++i)
              {
                if (*v366 != v174)
                {
                  objc_enumerationMutation(v171);
                }

                v176 = _shared_cache_display_string(*(*(&v365 + 1) + 8 * i));
                [a2 printWithFormat:@"%-*s%@\n", 18, "Shared Cache: ", v176];
              }

              v173 = [v171 countByEnumeratingWithState:&v365 objects:v376 count:16];
            }

            while (v173);
          }

          toNameCopy6 = toName;
          codesigningIDCopy2 = codesigningID;
          goto LABEL_247;
        }

        v170 = [pathCopy3 count];

        if (v170 > 1)
        {
          goto LABEL_239;
        }

        sharedCaches2 = [*(selfCopy + 168) sharedCaches];
        if ([sharedCaches2 count])
        {
          firstObject = [pathCopy3 firstObject];
          null = [MEMORY[0x1E695DFB0] null];

          v208 = firstObject == null;
          pathCopy3 = path;
          if (v208)
          {
            [a2 printWithFormat:@"%-*s%@\n", 18, "Shared Cache: ", @"None"];
            goto LABEL_247;
          }
        }

        else
        {
        }

        if ([*(selfCopy + 16) displayAllBinaries])
        {
          firstObject2 = [pathCopy3 firstObject];
          v236 = _shared_cache_display_string(firstObject2);
          [a2 printWithFormat:@"%-*s%@\n", 18, "Shared Cache: ", v236];
        }
      }

LABEL_247:
      if ([codesigningIDCopy2 count] > 1 || objc_msgSend(codesigningIDCopy2, "count") == 1 && (objc_msgSend(codesigningIDCopy2, "allKeys"), v191 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v191, "firstObject"), v192 = objc_claimAutoreleasedReturnValue(), v193 = objc_msgSend(v192, "isEqualToString:", @"none"), v192, v191, (v193 & 1) == 0))
      {
        allKeys = [codesigningIDCopy2 allKeys];
        v364[0] = MEMORY[0x1E69E9820];
        v364[1] = 3221225472;
        v364[2] = __1459__SASamplePrinter_addTaskHeaderToStream_displayName_pid_mainBinary_mainBinaryPath_sharedCaches_uid_bundleIdentifier_bundleVersion_bundleShortVersion_bundleBuildVersion_bundleProjectName_bundleSourceVersion_bundleProductBuildVersion_adamID_installerVersionID_developerType_appType_isBeta_cohortID_vendorID_distributorID_codesigningID_teamID_resourceCoalitionSampleCounts_onBehalfOfProcesses_architectureString_kernelVersion_parentName_responsibleName_taskExecedFromName_taskExecedToName_forkTimestamp_startTimestamp_endTimestamp_startSampleIndex_endSampleIndex_numSamples_totalNumSamples_numSamplesSuspended_numSamplesTerminated_startingTaskSize_endingTaskSize_maxTaskSize_startSampleIndexOfMaxTaskSize_endSampleIndexOfMaxTaskSize_numPageins_cpuTimeNs_cpuInstructions_cpuCycles_nonThreadCpuTimeNs_nonThreadCpuInstructions_nonThreadCpuCycles_usesSuddenTermination_allowsIdleExit_memoryLimitStr_jetsamPriorityStr_isTranslocated_hardenedHeap_mteCheckedAllocationsEnabled_mteUserDataAllocationsTagged_mteSoftModeEnabled_mteInheritanceTurnedOn_isRunningBoardManaged_isUnresponsive_timeOfLastResponse_numThreads_numIdleWorkQueueThreads_numOtherHiddenThreads_hieSwallowedException_numSamplesWQExceededConstrainedThreadLimit_numSamplesWQExceededTotalThreadLimit_numSamplesWQExceededCooperativeThreadLimit_numSamplesWQExceededActiveConstrainedThreadLimit_numSamplesTALEngaged_isRunawayMitigated_threadsDeadlocked_threadsBlockedByADeadlock_ioSize_numIOs_isReportHeader___block_invoke;
        v364[3] = &unk_1E86F7A18;
        v364[4] = codesigningIDCopy2;
        v178 = [allKeys sortedArrayUsingComparator:v364];

        if (index)
        {
          v355 = v86;
          v179 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v178, "count")}];
          v360 = 0u;
          v361 = 0u;
          v362 = 0u;
          v363 = 0u;
          v354 = v178;
          obj = v178;
          v180 = [obj countByEnumeratingWithState:&v360 objects:v375 count:16];
          if (v180)
          {
            v181 = v180;
            v182 = *v361;
            do
            {
              for (j = 0; j != v181; ++j)
              {
                if (*v361 != v182)
                {
                  objc_enumerationMutation(obj);
                }

                v184 = *(*(&v360 + 1) + 8 * j);
                v185 = [codesigningID objectForKeyedSubscript:v184];
                unsignedLongLongValue = [v185 unsignedLongLongValue];

                v187 = objc_alloc(MEMORY[0x1E696AEC0]);
                if (unsignedLongLongValue == 1)
                {
                  v188 = "";
                }

                else
                {
                  v188 = "s";
                }

                v184 = [v187 initWithFormat:@"%llu sample%s %@", unsignedLongLongValue, v188, v184];
                [v179 addObject:v184];
              }

              v181 = [obj countByEnumeratingWithState:&v360 objects:v375 count:16];
            }

            while (v181);
          }

          v190 = v179;
          v86 = v355;
          toNameCopy6 = toName;
          v178 = v354;
        }

        else
        {
          v190 = v178;
        }

        v194 = [v190 componentsJoinedByString:{@", "}];
        [a2 printWithFormat:@"%-*s%@\n", 18, "Resource Coalition: ", v194];

        selfCopy = v356;
      }

      if (teamID)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "On Behalf Of: ", teamID];
      }

      timestampCopy3 = timestamp;
      if ([*(selfCopy + 16) systemstatsFormat])
      {
        goto LABEL_382;
      }

      if (counts)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Architecture: ", counts];
      }

      if (parentName)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Execed from: ", parentName];
      }

      if (responsibleName)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Execed to: ", responsibleName];
      }

      if (string)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Parent: ", string];
      }

      if (kernelVersion)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Responsible: ", kernelVersion];
      }

      if (a64)
      {
        [a2 printWithFormat:@"%-*sYes\n", 18, "RunningBoard Mgd: "];
      }

      if (name != -1)
      {
        [a2 printWithFormat:@"%-*s%i\n", 18, "PID: ", name];
      }

      if (caches != -314)
      {
        [a2 printWithFormat:@"%-*s%d\n", 18, "UID: ", caches];
      }

      if (cpuInstructions)
      {
        [a2 printWithFormat:@"%-*sTracked", 18, "Sudden Term: "];
        if (cpuCycles)
        {
          [a2 appendString:@" (allows idle exit)"];
        }

        [a2 appendString:@"\n"];
      }

      if (termination)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Memory Limit: ", termination];
      }

      if (exit)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Jetsam Priority: ", exit];
      }

      if (!suspended)
      {
LABEL_316:
        if (ofMaxTaskSize)
        {
          [a2 printWithFormat:@"%-*s%u pages\n", 18, "Pageins: ", ofMaxTaskSize];
        }

        if (a79)
        {
          if (a79 == 1)
          {
            v216 = "";
          }

          else
          {
            v216 = "s";
          }

          v217 = SAFormattedBytesEx(a78, 1, 0, 1, 0);
          [a2 printWithFormat:@"%-*s%lu I/O%s (%@)\n", 18, "I/O: ", a79, v216, v217, streamCopy, cycles];
        }

        [fromName wallTime];
        selfCopy = v356;
        if (v218 != 0.0)
        {
          [v356[4] wallTime];
          if (v219 != 0.0)
          {
            [v356[4] wallTime];
            v221 = v220;
            [fromName wallTime];
            v223 = v221 - v222;
            if (v223 < 0.0)
            {
              v223 = 0.0;
            }

            [a2 printWithFormat:@"%-*s%.0fs\n", 18, "Time Since Fork: ", *&v223];
          }
        }

        if (!toNameCopy6 || ([toNameCopy6 gt:v356[4]] & 1) == 0 && !objc_msgSend(v356[2], "microstackshotsFormat"))
        {
          goto LABEL_357;
        }

        if ([toNameCopy6 gt:v356[4]])
        {
          v224 = toNameCopy6;
        }

        else
        {
          v224 = v356[4];
        }

        [v224 wallTime];
        v226 = v225;
        if (v225 == 0.0)
        {
          [v356[4] wallTime];
          if (v227 != 0.0)
          {
            [v356[4] machContTimeSeconds];
            if (v228 != 0.0)
            {
              [toNameCopy6 machContTimeSeconds];
              if (v229 != 0.0)
              {
                [v356[4] wallTime];
                v231 = v230;
                [toNameCopy6 machContTimeSeconds];
                v233 = v232;
                [v356[4] machContTimeSeconds];
LABEL_345:
                v226 = v231 + v233 - v234;
                goto LABEL_346;
              }
            }

            [v356[4] machAbsTimeSeconds];
            if (v237 != 0.0)
            {
              [toNameCopy6 machAbsTimeSeconds];
              if (v238 != 0.0)
              {
                [v356[4] wallTime];
                v231 = v239;
                [toNameCopy6 machAbsTimeSeconds];
                v233 = v240;
                [v356[4] machAbsTimeSeconds];
                goto LABEL_345;
              }
            }
          }
        }

LABEL_346:
        if (v226 != 0.0)
        {
          if ([v356[2] omitAbsoluteWallTimes])
          {
            [v356[4] wallTime];
            if (v241 != 0.0)
            {
              displayDetailedWallTime = [v356[2] displayDetailedWallTime];
              [v356[4] wallTime];
              v208 = displayDetailedWallTime == 0;
              selfCopy = v356;
              if (v208)
              {
                v244 = 3;
              }

              else
              {
                v244 = 9;
              }

              [a2 printWithFormat:@"%-*s%.*fs\n", 18, "Start time: ", v244, v226 - v243];
            }
          }

          else
          {
            if ([v356[2] displayDetailedWallTime])
            {
              v246 = 9;
            }

            else
            {
              v246 = 3;
            }

            *v245.i64 = v226;
            v247 = _CopyStringForTime(v246, v245);
            [a2 printWithFormat:@"%-*s%@\n", 18, "Start time: ", v247];

            selfCopy = v356;
          }
        }

LABEL_357:
        if (timestampCopy3 && (([timestampCopy3 lt:*(selfCopy + 40)] & 1) != 0 || objc_msgSend(*(selfCopy + 16), "microstackshotsFormat")))
        {
          if ([timestampCopy3 lt:*(selfCopy + 40)])
          {
            v248 = timestampCopy3;
          }

          else
          {
            v248 = *(selfCopy + 40);
          }

          [v248 wallTime];
          v250 = v249;
          if (v249 == 0.0)
          {
            [*(selfCopy + 40) wallTime];
            if (v251 != 0.0)
            {
              [*(selfCopy + 40) machContTimeSeconds];
              if (v252 == 0.0 || ([timestampCopy3 machContTimeSeconds], v253 == 0.0))
              {
                [*(selfCopy + 40) machAbsTimeSeconds];
                if (v259 != 0.0)
                {
                  [timestampCopy3 machAbsTimeSeconds];
                  if (v260 != 0.0)
                  {
                    [*(selfCopy + 40) wallTime];
                    v262 = v261;
                    [*(selfCopy + 40) machAbsTimeSeconds];
                    v264 = v263;
                    [timestampCopy3 machAbsTimeSeconds];
                    v250 = v262 + v264 - v265;
                  }
                }
              }

              else
              {
                [*(selfCopy + 40) wallTime];
                v255 = v254;
                [*(selfCopy + 40) machContTimeSeconds];
                v257 = v256;
                [timestampCopy3 machContTimeSeconds];
                v250 = v255 - (v257 - v258);
              }
            }
          }

          if (v250 != 0.0)
          {
            if ([*(selfCopy + 16) omitAbsoluteWallTimes])
            {
              [*(selfCopy + 32) wallTime];
              if (v266 != 0.0)
              {
                displayDetailedWallTime2 = [*(selfCopy + 16) displayDetailedWallTime];
                [v356[4] wallTime];
                v208 = displayDetailedWallTime2 == 0;
                selfCopy = v356;
                if (v208)
                {
                  v269 = 3;
                }

                else
                {
                  v269 = 9;
                }

                [a2 printWithFormat:@"%-*s%.*fs\n", 18, "End time: ", v269, v250 - v268];
              }
            }

            else
            {
              if ([*(selfCopy + 16) displayDetailedWallTime])
              {
                v271 = 9;
              }

              else
              {
                v271 = 3;
              }

              *v270.i64 = v250;
              v272 = _CopyStringForTime(v271, v270);
              [a2 printWithFormat:@"%-*s%@\n", 18, "End time: ", v272];

              selfCopy = v356;
            }
          }
        }

LABEL_382:
        if (a80)
        {
          goto LABEL_405;
        }

        [a2 printWithFormat:@"%-*s%lu", 18, "Num samples: ", index];
        if (*(selfCopy + 48) == 1)
        {
          if (startTimestamp == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (toNameCopy6 && [toNameCopy6 gt:*(selfCopy + 40)])
            {
              v273 = toNameCopy6;
            }

            else
            {
              v273 = timestampCopy3;
              if (!v273)
              {
                goto LABEL_405;
              }
            }

            v279 = [(SASamplePrinter *)selfCopy timeIndexDescriptionForTimestamp:v273];
            [a2 printWithFormat:@" (task existed only %@)\n", v279];

            selfCopy = v356;
LABEL_405:
            if (([*(selfCopy + 16) systemstatsFormat] & 1) == 0)
            {
              if (indexOfMaxTaskSize)
              {
                [a2 printWithFormat:@"%-*s", 18, "CPU Time: "];
                if ([*(selfCopy + 16) displayDetailedCpuTime])
                {
                  v280 = 9;
                }

                else
                {
                  v280 = 3;
                }

                saos_printf_seconds(a2, indexOfMaxTaskSize, v280);
                if (ns)
                {
                  saos_printf_cycles_instructions(a2, ns, pageins, [*(selfCopy + 16) displayDetailedCpuTime]);
                }

                [a2 appendString:@"\n"];
                displayDetailedCpuTime = [*(selfCopy + 16) displayDetailedCpuTime];
                if (instructions)
                {
                  v282 = displayDetailedCpuTime;
                }

                else
                {
                  v282 = 0;
                }

                if (instructions > 0x98967F || v282)
                {
                  [a2 printWithFormat:@"%-*s", 18, "CPU Time (exited threads): "];
                  if ([*(selfCopy + 16) displayDetailedCpuTime])
                  {
                    v283 = 9;
                  }

                  else
                  {
                    v283 = 3;
                  }

                  saos_printf_seconds(a2, instructions, v283);
                  if (timeNs)
                  {
                    saos_printf_cycles_instructions(a2, timeNs, cyclesCopy, [*(selfCopy + 16) displayDetailedCpuTime]);
                  }

                  [a2 appendString:@"\n"];
                }
              }

              if (str)
              {
                [a2 printWithFormat:@"%-*sTranslocated\n", 18, "Note: "];
              }

              if (priorityStr)
              {
                [a2 printWithFormat:@"%-*sHas hardened heap\n", 18, "Note: "];
              }

              if ((translocated & 1) != 0 || (heap & 1) != 0 || (enabled & 1) != 0 || tagged)
              {
                v284 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v285 = v284;
                if (translocated)
                {
                  [v284 addObject:@"enabled"];
                }

                if (heap)
                {
                  [v285 addObject:@"pure-data"];
                }

                if (enabled)
                {
                  [v285 addObject:@"soft-mode"];
                }

                if (tagged)
                {
                  [v285 addObject:@"inheritance"];
                }

                v286 = [v285 componentsJoinedByString:{@", "}];
                [a2 printWithFormat:@"%-*s%@\n", 18, "MTE Config: ", v286];

                selfCopy = v356;
              }

              if (samples)
              {
                v287 = "s";
                if (samples == 1)
                {
                  v287 = "";
                }

                [a2 printWithFormat:@"%-*sSuspended for %lu sample%s\n", 18, "Note: ", samples, v287];
              }

              if (numSamples)
              {
                v288 = "s";
                if (numSamples == 1)
                {
                  v288 = "";
                }

                [a2 printWithFormat:@"%-*sTerminated (zombie) for %lu sample%s\n", 18, "Note: ", numSamples, v288];
              }

              if (a65)
              {
                [a2 printWithFormat:@"%-*sUnresponsive", 18, "Note: "];
                if (uid > 0.0)
                {
                  [*(selfCopy + 32) wallTime];
                  if (v289 + -2.0 >= uid)
                  {
                    [a2 printWithFormat:@" for %.0f seconds before sampling", v289 - uid];
                  }
                }

                [a2 appendString:@"\n"];
              }

              if (a66)
              {
                [a2 printWithFormat:@"%-*s%lu\n", 18, "Num threads: ", a66];
              }

              displayIdleWorkQueueThreads = [*(selfCopy + 16) displayIdleWorkQueueThreads];
              if (a67 && (displayIdleWorkQueueThreads & 1) == 0)
              {
                v291 = "s";
                if (a67 == 1)
                {
                  v291 = "";
                }

                [a2 printWithFormat:@"%-*s%lu idle work queue thread%s omitted\n", 18, "Note: ", a67, v291];
              }

              if (a68)
              {
                v292 = "s";
                if (a68 == 1)
                {
                  v292 = "";
                }

                [a2 printWithFormat:@"%-*s%lu other thread%s omitted\n", 18, "Note: ", a68, v292];
              }

              if (a69)
              {
                [a2 printWithFormat:@"%-*sProcess has swallowed at least one exception\n", 18, "Note: "];
              }

              if (a75)
              {
                [a2 printWithFormat:@"%-*sProcess is runaway mitigated\n", 18, "Note: "];
              }

              if (a74)
              {
                v293 = "s";
                if (a74 == 1)
                {
                  v293 = "";
                }

                [a2 printWithFormat:@"%-*sProcess clamped to Utility QoS for %lu sample%s\n", 18, "Note: ", a74, v293];
              }

              if (a70)
              {
                [a2 printWithFormat:@"%-*s%4d  (too many dispatch threads blocked in synchronous operations)\n", 18, "Dispatch Thread Soft Limit Reached: ", objc_msgSend(*(selfCopy + 168), "workQueueSoftThreadLimit")];
                workQueueSoftThreadLimit = [v356[21] workQueueSoftThreadLimit];
                v295 = "s";
                if (a70 == 1)
                {
                  v295 = "";
                }

                selfCopy = v356;
                [a2 printWithFormat:@"%-*sWorkqueue exceeded constrained thread limit (%u) for %lu sample%s (too many dispatch threads blocked in synchronous operations)\n", 18, "Note: ", workQueueSoftThreadLimit, a70, v295];
              }

              if (a71)
              {
                [a2 printWithFormat:@"%-*s%4d  (too many dispatch threads blocked in synchronous operations)\n", 18, "Dispatch Thread Hard Limit Reached: ", objc_msgSend(*(selfCopy + 168), "workQueueHardThreadLimit")];
                workQueueHardThreadLimit = [*(selfCopy + 168) workQueueHardThreadLimit];
                v297 = "s";
                if (a71 == 1)
                {
                  v297 = "";
                }

                [a2 printWithFormat:@"%-*sWorkqueue exceeded total thread limit (%u) for %lu sample%s (too many dispatch threads blocked in synchronous operations)\n", 18, "Note: ", workQueueHardThreadLimit, a71, v297];
              }

              if (a72)
              {
                v298 = "s";
                if (a72 == 1)
                {
                  v298 = "";
                }

                [a2 printWithFormat:@"%-*sWorkqueue exceeded cooperative thread limit for %lu sample%s (more swift tasks runnable than allowed to run concurrently)\n", 18, "Note: ", a72, v298];
              }

              if (a73)
              {
                v299 = "s";
                if (a73 == 1)
                {
                  v299 = "";
                }

                [a2 printWithFormat:@"%-*sWorkqueue exceeded active constrained thread limit for %lu sample%s (more dispatch items runnable than allowed to run concurrently)\n", 18, "Note: ", a73, v299];
              }

              if ([a76 count])
              {
                v300 = [a76 count];
                if ([a76 count] == 1)
                {
                  v301 = "";
                }

                else
                {
                  v301 = "s";
                }

                v302 = [a76 componentsJoinedByString:{@", "}];
                [a2 printWithFormat:@"%-*s%lu thread%s - %@\n", 18, "Deadlocked: ", v300, v301, v302];
              }

              if ([v86 count])
              {
                v303 = [v86 count];
                if ([v86 count] == 1)
                {
                  v304 = "";
                }

                else
                {
                  v304 = "s";
                }

                v305 = [v86 componentsJoinedByString:{@", "}];
                [a2 printWithFormat:@"%-*s%lu thread%s - %@\n", 18, "Blocked by Deadlock: ", v303, v304, v305];
              }
            }

            goto LABEL_498;
          }

          forceOneBasedTimeIndexes = [*(selfCopy + 16) forceOneBasedTimeIndexes];
          v276 = startTimestamp + 1;
          if (forceOneBasedTimeIndexes)
          {
            v276 -= *(selfCopy + 56);
          }

          objc_msgSend(a2, "printWithFormat:", @" (%lu"), v276;
          if (startTimestamp < endTimestamp)
          {
            if (*(selfCopy + 48) == 1)
            {
              forceOneBasedTimeIndexes2 = [*(selfCopy + 16) forceOneBasedTimeIndexes];
              v278 = endTimestamp + 1;
              if (forceOneBasedTimeIndexes2)
              {
                v278 -= *(selfCopy + 56);
              }
            }

            else
            {
              v278 = 0x7FFFFFFFFFFFFFFFLL;
            }

            [a2 printWithFormat:@"-%lu", v278];
          }

          v274 = @"\n");
LABEL_404:
          [a2 appendString:v274];
          goto LABEL_405;
        }

        if (!sampleIndex || ([*(selfCopy + 16) systemstatsFormat] & 1) != 0)
        {
          v274 = @"\n";
          goto LABEL_404;
        }

        if (sampleIndex >= index)
        {
          [a2 printWithFormat:@" (%.0f%%)\n", index * 100.0 / sampleIndex];
          goto LABEL_405;
        }

LABEL_505:
        v323 = *__error();
        v324 = _sa_logt();
        if (os_log_type_enabled(v324, OS_LOG_TYPE_ERROR))
        {
          uTF8String = [streamCopy UTF8String];
          *buf = 136315650;
          v370 = uTF8String;
          v371 = 2048;
          sampleIndexCopy = sampleIndex;
          v373 = 2048;
          indexCopy3 = index;
          _os_log_error_impl(&dword_1E0E2F000, v324, OS_LOG_TYPE_ERROR, "%s: totalNumSamples %lu < numSamples %lu", buf, 0x20u);
        }

        *__error() = v323;
        uTF8String2 = [streamCopy UTF8String];
        _SASetCrashLogMessage(8334, "%s: totalNumSamples %lu < numSamples %lu", v327, v328, v329, v330, v331, v332, uTF8String2);
        _os_crash();
        __break(1u);
      }

      v196 = SAFormattedBytesEx(suspended, 1, 0, 1, 0);
      [a2 printWithFormat:@"%-*s%@", 18, "Footprint: ", v196];

      if (!terminated || (displayAllTaskSizeChanges = 1, suspended * 1.05 > terminated) && terminated * 1.05 > suspended)
      {
        displayAllTaskSizeChanges = [v356[2] displayAllTaskSizeChanges];
      }

      v198 = terminated - suspended;
      if (terminated >= suspended && displayAllTaskSizeChanges)
      {
        suspendedCopy = terminated;
      }

      else
      {
        suspendedCopy = suspended;
      }

      if (suspendedCopy * 1.05 <= size)
      {
        v209 = SAFormattedBytesEx(terminated, 1, 0, 1, 0);
        v210 = SAFormattedSignedBytes(v198, 1, 0);
        [a2 printWithFormat:@" -> %@ (%@)", v209, v210];

        timestampCopy3 = timestamp;
      }

      else
      {
        displayAllTaskSizeChanges2 = [v356[2] displayAllTaskSizeChanges];
        v201 = displayAllTaskSizeChanges | displayAllTaskSizeChanges2;
        timestampCopy3 = timestamp;
        if ((v201 & 1) == 0)
        {
          goto LABEL_315;
        }

        v202 = displayAllTaskSizeChanges2;
        v203 = SAFormattedBytesEx(terminated, 1, 0, 1, 0);
        v204 = SAFormattedSignedBytes(v198, 1, 0);
        [a2 printWithFormat:@" -> %@ (%@)", v203, v204];

        if ((v202 & 1) == 0)
        {
LABEL_315:
          [a2 appendString:@"\n"];
          goto LABEL_316;
        }
      }

      v211 = [(SASamplePrinter *)v356 timeIndexDescriptionForStartSampleIndex:taskSize endSampleIndex:maxTaskSize formattedToLength:0];
      v212 = SAFormattedBytesEx(size, 1, 0, 1, 0);
      v213 = v212;
      v214 = " ";
      if (!v211)
      {
        v214 = "";
      }

      v215 = &stru_1F5BBF440;
      if (v211)
      {
        v215 = v211;
      }

      [a2 printWithFormat:@" (max %@%s%@)", v212, v214, v215];

      goto LABEL_315;
    }

    if (*(&version + 1))
    {
      v124 = SACopySanitizedString(*(&version + 1), 1, 0);

      versionCopy4 = version;
      if (version)
      {
LABEL_85:
        v125 = SACopySanitizedString(versionCopy4, 1, 0);

LABEL_203:
        [a2 printWithFormat:@"%-*s%@ (%@)\n", 18, "Version: ", v124, v125];

        vendorIDCopy4 = vendorID;
        goto LABEL_204;
      }
    }

    else
    {
      v124 = @"???";
      if (version)
      {
        goto LABEL_85;
      }
    }

    v125 = @"???";
    goto LABEL_203;
  }

  if (![*(selfCopy + 16) systemstatsFormat])
  {
    uuid2 = [pid uuid];
    uUIDString2 = [uuid2 UUIDString];
    [a2 printWithFormat:@"%-*s%@\n", 18, "UUID: ", uUIDString2];

LABEL_72:
    goto LABEL_73;
  }

  v101 = [*(selfCopy + 88) objectForKeyedSubscript:pid];
  if (v101)
  {
    v102 = v101;
    null2 = [MEMORY[0x1E695DFB0] null];
    uuid2 = [v102 objectForKeyedSubscript:null2];

    if (uuid2)
    {

      v86 = a77;
LABEL_71:
      [a2 printWithFormat:@"%-*s%lu\n", 18, "UUID: ", objc_msgSend(uuid2, "unsignedLongValue")];
      pathCopy3 = path;
      goto LABEL_72;
    }

    allValues = [v102 allValues];
    uuid2 = [allValues firstObject];

    v86 = a77;
    if (uuid2)
    {
      goto LABEL_71;
    }
  }

  v333 = *__error();
  v334 = _sa_logt();
  if (os_log_type_enabled(v334, OS_LOG_TYPE_ERROR))
  {
    uTF8String3 = [streamCopy UTF8String];
    uuid3 = [pid uuid];
    uUIDString3 = [uuid3 UUIDString];
    *buf = 136315394;
    v370 = uTF8String3;
    v371 = 2080;
    sampleIndexCopy = [uUIDString3 UTF8String];
    _os_log_error_impl(&dword_1E0E2F000, v334, OS_LOG_TYPE_ERROR, "%s: no index for main binary %s, required by systemstats format", buf, 0x16u);
  }

  *__error() = v333;
  uTF8String4 = [streamCopy UTF8String];
  uuid4 = [pid uuid];
  uUIDString4 = [uuid4 UUIDString];
  [uUIDString4 UTF8String];
  _SASetCrashLogMessage(8026, "%s: no index for main binary %s, required by systemstats format", v341, v342, v343, v344, v345, v346, uTF8String4);

  _os_crash();
  __break(1u);
}

- (uint64_t)shouldPrintTimeOutsideSamplingRange:(uint64_t)range
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 < 0.0)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = a2;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "negative timeOutsideSamplingRange %f", buf, 0xCu);
    }

    *__error() = v7;
    _SASetCrashLogMessage(13775, "negative timeOutsideSamplingRange %f", v9, v10, v11, v12, v13, v14, SLOBYTE(a2));
    _os_crash();
    __break(1u);
  }

  [*(range + 168) attemptedSamplingInterval];
  v4 = v3 != 0.0;
  if (v3 >= a2)
  {
    v4 = 0;
  }

  result = a2 > 0.2 || v4;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __30__SASamplePrinter_printHeader__block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(*(a1 + 32) + 168) targetProcess];
  if (v4 != a2)
  {
    v14 = v4;
    v5 = [*(*(a1 + 32) + 168) targetProcesses];
    v6 = [v5 containsObject:a2];

    if (v6)
    {
      return;
    }

    v4 = [a2 mainBinary];
    if (!v4)
    {
      v7 = *(a1 + 32);
      if (v7 && *(v7 + 48) == 1)
      {
        v8 = [a2 sampleCountInSampleIndexRangeStart:*(v7 + 56) end:*(v7 + 64)];
      }

      else
      {
        v8 = [a2 sampleCountInTimestampRangeStart:*(v7 + 32) end:*(v7 + 40)];
      }

      v9 = v8;
      if (v8)
      {
        *(*(*(a1 + 48) + 8) + 24) += v8;
        v10 = *(a1 + 40);
        v11 = objc_alloc(MEMORY[0x1E696AEC0]);
        v12 = [(SASamplePrinter *)*(a1 + 32) displayNameForTask:a2];
        v13 = [v11 initWithFormat:@"%lu from %@ due to missing load infos", v9, v12];
        [v10 addObject:v13];
      }

      v4 = 0;
    }
  }
}

void __30__SASamplePrinter_printHeader__block_invoke_4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"systemAdvisoryLevel%@", a2];
  SAJSONWriteDictionaryEntry(v6, v7, a3);

  *a4 = 0;
}

uint64_t __30__SASamplePrinter_printHeader__block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 BOOLValue];
  v6 = 40;
  if (v5)
  {
    v6 = 32;
  }

  return [*(a1 + v6) appendFormat:@"%@, ", a2];
}

void __30__SASamplePrinter_printHeader__block_invoke_1352(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([a4 count])
  {
    v27 = a3;
    v8 = [a4 sortedArrayUsingComparator:&__block_literal_global_1355];
    v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:32];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [*(*(&v28 + 1) + 8 * i) unsignedLongLongValue];
          if (-v13 == i)
          {
            v17 = @"0x%llx";
          }

          else
          {
            v17 = @", 0x%llx";
          }

          [v9 appendFormat:v17, v16];
        }

        v13 += v12;
        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    a3 = v27;
  }

  else
  {
    v9 = 0;
  }

  [*(*(a1 + 32) + 8) printWithFormat:@"%-*s", 18, "Network mount: "];
  if ((*(a1 + 48) & 1) == 0)
  {
    v18 = *(*(a1 + 32) + 8);
    v19 = SACopySanitizedString(a2, 1, 0);
    [v18 printWithFormat:@"%@ ", v19];
  }

  v20 = *(*(a1 + 32) + 8);
  v21 = SACopySanitizedString(a3, 1, 0);
  [v20 printWithFormat:@"(%@)", v21];

  v22 = *(a1 + 32);
  v23 = *(v22 + 8);
  if (v9)
  {
    v24 = [a4 count];
    v25 = "s";
    if (v24 == 1)
    {
      v25 = "";
    }

    [v23 printWithFormat:@" blocking thread%s %@", v25, v9];
  }

  else
  {
    [*(v22 + 8) appendString:@" unresponsive"];
  }

  [*(*(a1 + 32) + 8) appendString:@"\n"];
  *(*(*(a1 + 40) + 8) + 24) = 1;

  v26 = *MEMORY[0x1E69E9840];
}

- (id)binaryImagesHitByTask:(uint64_t)task
{
  if (!task)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v4 = *(task + 136);
  if (v4)
  {
    if (v4 == a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    targetProcess = [*(task + 168) targetProcess];

    if (targetProcess == a2)
    {
      goto LABEL_13;
    }
  }

  v6 = *(task + 16);
  if (v6)
  {
    v7 = *(v6 + 168);
    if (v7 != 1 && (v7 || (*(v6 + 11) & 1) != 0))
    {
      targetProcesses = [*(task + 168) targetProcesses];
      v9 = [targetProcesses containsObject:a2];

      mainBinary = [a2 mainBinary];
      if (mainBinary)
      {
        if (([*(task + 16) taskAggregation] != 3) | v9 & 1)
        {
          sharedCache = 0;
          resourceCoalitionID = 0;
        }

        else
        {
          resourceCoalitionID = [a2 resourceCoalitionID];
          if (resourceCoalitionID)
          {
            sharedCache = [a2 sharedCache];
          }

          else
          {
            sharedCache = 0;
          }
        }

        v13 = [[SATaskAggregationIdentifier alloc] initWithBinary:mainBinary sharedCache:sharedCache rcid:resourceCoalitionID isTarget:v9];
      }

      else
      {
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
      }

      goto LABEL_20;
    }
  }

LABEL_13:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
LABEL_20:
  v14 = [*(task + 80) objectForKeyedSubscript:v13];
  if (!v14)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    [*(task + 80) setObject:v14 forKeyedSubscript:v13];
  }

LABEL_23:

  return v14;
}

void __30__SASamplePrinter_printHeader__block_invoke_1379(uint64_t a1, uint64_t a2, char *a3)
{
  [(SASamplePrinter *)*(a1 + 32) addStackForDispatchQueue:0 orSwiftTaskStates:a3 orThread:0 andThreadStateIndexes:*(a1 + 40) task:*(a1 + 48) toRootObjects:1 nameChanges:1 dispatchQueueChanges:0 swiftTaskChanges:1 threadChanges:1 priorityChanges:0 microstackshotSummary:1u onlyHeaviestStack:0 includeState:?];
  v4 = [(SASamplePrinter *)*(a1 + 32) binaryImagesHitByTask:?];
  v5 = v4;
  v6 = *(*(*(a1 + 64) + 8) + 40);
  if (v6)
  {
    v7 = v6 == v4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "Target tasks do not share the same displayed load info, cannot merge stacks", buf, 2u);
    }

    *__error() = v8;
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

- (void)addStackForDispatchQueue:(void *)queue orSwiftTaskStates:(char *)states orThread:(void *)thread andThreadStateIndexes:(uint64_t)indexes task:(void *)task toRootObjects:(char)objects nameChanges:(char)changes dispatchQueueChanges:(char)self0 swiftTaskChanges:(char)self1 threadChanges:(char)self2 priorityChanges:(uint64_t)self3 microstackshotSummary:(unsigned __int8)self4 onlyHeaviestStack:(char)self5 includeState:
{
  v175 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_55;
  }

  LOBYTE(v15) = objects;
  statesCopy = self;
  LODWORD(v20) = summary;
  v21 = objc_autoreleasePoolPush();
  if ((summary & 1) == 0)
  {
    printHeavyStacks = [*(statesCopy + 16) printHeavyStacks];
    if (queue)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (!a2 && states)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  printHeavyStacks = 1;
  if (!queue)
  {
    goto LABEL_6;
  }

LABEL_8:
  if ((queue || !a2 || states) && (a2 || states || !queue))
  {
    goto LABEL_62;
  }

LABEL_14:
  LODWORD(v22) = [*(statesCopy + 16) displayBlockedReasons];
  if (v22)
  {
    displayBlockedReasonsLackingProcessOwners = [*(statesCopy + 16) displayBlockedReasonsLackingProcessOwners];
    if ([*(statesCopy + 16) displayAddressesInBlockedReasons])
    {
      displayBlockedReasonsLackingProcessOwners |= 2uLL;
    }
  }

  else
  {
    displayBlockedReasonsLackingProcessOwners = 0;
  }

  patchTruncatedStacks = [*(statesCopy + 16) patchTruncatedStacks];
  displayBlockedThreads = [*(statesCopy + 16) displayBlockedThreads];
  displayRunnableThreads = [*(statesCopy + 16) displayRunnableThreads];
  displayRunningThreads = [*(statesCopy + 16) displayRunningThreads];
  displayKernelFrames = [*(statesCopy + 16) displayKernelFrames];
  displayExclaveFrames = [*(statesCopy + 16) displayExclaveFrames];
  displayUserFrames = [*(statesCopy + 16) displayUserFrames];
  displayIOInCallTrees = [*(statesCopy + 16) displayIOInCallTrees];
  v78 = [*(statesCopy + 16) callTreeTimestampsTimeDomain] != 0;
  displayOnBehalfOfInCallTrees = [*(statesCopy + 16) displayOnBehalfOfInCallTrees];
  showThreadStateAsLeafFrame = [*(statesCopy + 16) showThreadStateAsLeafFrame];
  includeUserIdleAndBatteryStateInStacks = [*(statesCopy + 16) includeUserIdleAndBatteryStateInStacks];
  omitStacksOnAC = [*(statesCopy + 16) omitStacksOnAC];
  omitStacksOnBattery = [*(statesCopy + 16) omitStacksOnBattery];
  omitStacksWithUserIdle = [*(statesCopy + 16) omitStacksWithUserIdle];
  omitStacksWithUserActive = [*(statesCopy + 16) omitStacksWithUserActive];
  omitStacksWithPCore = [*(statesCopy + 16) omitStacksWithPCore];
  omitStacksWithECore = [*(statesCopy + 16) omitStacksWithECore];
  omitStacksBelowBasePriority = [*(statesCopy + 16) omitStacksBelowBasePriority];
  omitStacksAboveBasePriority = [*(statesCopy + 16) omitStacksAboveBasePriority];
  if ([*(statesCopy + 16) swiftAsyncDisplayCRootCallstacks])
  {
    swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways = 1;
  }

  else
  {
    swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways = [*(statesCopy + 16) swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways];
  }

  v25 = *(statesCopy + 16);
  v64 = swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways;
  if (!v25)
  {
    goto LABEL_74;
  }

  v26 = *(v25 + 152);
  if (!v26)
  {
    v26 = 3;
    if (!*(v25 + 11))
    {
      v26 = 1;
    }
  }

  v63 = v26;
  v27 = *(v25 + 160);
  if (!v27)
  {
    v27 = 2;
    if (!*(v25 + 14))
    {
      v27 = 3;
    }
  }

  for (i = v27; ; i = 0)
  {
    v85 = v15;
    v84 = displayBlockedReasonsLackingProcessOwners;
    v61 = (([v25 printTargetThreadOnly] & 1) != 0 || v20) && (v28 = *(statesCopy + 168)) != 0 && (*(v28 + 404) & 1) != 0 && *(statesCopy + 120) != 0;
    options = [statesCopy options];
    tidsToPrint = [options tidsToPrint];

    indexesCopy = indexes;
    if (((printHeavyStacks ^ 1 | (stack & showThreadStateAsLeafFrame)) & 1) == 0)
    {
      indexesCopy = 0;
    }

    v20 = v20 ? 0 : indexesCopy;
    if (a2)
    {
      break;
    }

    if (queue)
    {
      v31 = 0;
      goto LABEL_46;
    }

    v35 = [states indexOfFirstThreadStateOnOrAfterTime:*(statesCopy + 32) sampleIndex:*(statesCopy + 56)];
    if (v35 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_54;
    }

    v31 = v35;
    if (!thread)
    {
      goto LABEL_46;
    }

    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v35];
    v37 = [thread indexOfObject:v36 inSortedRange:0 options:objc_msgSend(thread usingComparator:{"count"), 1280, &__block_literal_global_2430}];

    v31 = v37;
    if (v37 < [thread count])
    {
      goto LABEL_46;
    }

    v21 = v37;
    v38 = *__error();
    v39 = _sa_logt();
    statesCopy = states;
    queue = thread;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [states debugDescription];
      uTF8String = [v40 UTF8String];
      v42 = [thread count];
      *buf = 136315650;
      *&buf[4] = uTF8String;
      *&buf[12] = 2048;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      v172 = v42;
      _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, "%s: startingIndex %lu < threadStateIndexes.count %lu", buf, 0x20u);
    }

    states = thread;
    *__error() = v38;
    v43 = [statesCopy debugDescription];
    v44 = v43;
    uTF8String2 = [v43 UTF8String];
    [thread count];
    _SASetCrashLogMessage(11793, "%s: startingIndex %lu < threadStateIndexes.count %lu", v46, v47, v48, v49, v50, v51, uTF8String2);

    _os_crash();
    __break(1u);
LABEL_62:
    v15 = *__error();
    displayBlockedReasonsLackingProcessOwners = _sa_logt();
    if (os_log_type_enabled(displayBlockedReasonsLackingProcessOwners, OS_LOG_TYPE_ERROR))
    {
      if (states)
      {
        v22 = "y";
      }

      else
      {
        v22 = "n";
      }

      if (a2)
      {
        states = "y";
      }

      else
      {
        states = "n";
      }

      *buf = 136315650;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = states;
      if (queue)
      {
        v52 = "y";
      }

      else
      {
        v52 = "n";
      }

      *&buf[22] = 2080;
      v172 = v52;
      _os_log_error_impl(&dword_1E0E2F000, displayBlockedReasonsLackingProcessOwners, OS_LOG_TYPE_ERROR, "aThread %s, dispatchQueue %s, swiftTaskStates %s", buf, 0x20u);
    }

    else
    {
      if (states)
      {
        v22 = "y";
      }

      else
      {
        v22 = "n";
      }

      if (a2)
      {
        states = "y";
      }

      else
      {
        states = "n";
      }
    }

    *__error() = v15;
    _SASetCrashLogMessage(11727, "aThread %s, dispatchQueue %s, swiftTaskStates %s", v53, v54, v55, v56, v57, v58, v22);
    v25 = _os_crash();
    __break(1u);
LABEL_74:
    v63 = 0;
  }

  v31 = [(SARecipe *)a2 indexOfFirstStateOnOrAfterTime:*(statesCopy + 56) sampleIndex:?];
  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_54;
  }

LABEL_46:
  v170[0] = 0;
  v170[1] = v170;
  v170[2] = 0x2020000000;
  v170[3] = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v172 = __Block_byref_object_copy__4;
  v173 = __Block_byref_object_dispose__4;
  v174 = 0;
  v168[0] = 0;
  v168[1] = v168;
  v168[2] = 0x3032000000;
  v168[3] = __Block_byref_object_copy__4;
  v168[4] = __Block_byref_object_dispose__4;
  v169 = 0;
  v166[0] = 0;
  v166[1] = v166;
  v166[2] = 0x3032000000;
  v166[3] = __Block_byref_object_copy__4;
  v166[4] = __Block_byref_object_dispose__4;
  v167 = 0;
  v164[0] = 0;
  v164[1] = v164;
  v164[2] = 0x3032000000;
  v164[3] = __Block_byref_object_copy__4;
  v164[4] = __Block_byref_object_dispose__4;
  v165 = 0;
  v162[0] = 0;
  v162[1] = v162;
  v162[2] = 0x3032000000;
  v162[3] = __Block_byref_object_copy__4;
  v162[4] = __Block_byref_object_dispose__4;
  v163 = 0;
  v160[0] = 0;
  v160[1] = v160;
  v160[2] = 0x3032000000;
  v160[3] = __Block_byref_object_copy__4;
  v160[4] = __Block_byref_object_dispose__4;
  v161 = 0;
  v159[0] = 0;
  v159[1] = v159;
  v159[2] = 0x2020000000;
  v159[3] = 0x7FFFFFFFFFFFFFFFLL;
  v157[0] = 0;
  v157[1] = v157;
  v157[2] = 0x3032000000;
  v157[3] = __Block_byref_object_copy__4;
  v157[4] = __Block_byref_object_dispose__4;
  v158 = 0;
  v151 = 0;
  v152 = &v151;
  v153 = 0x3032000000;
  v154 = __Block_byref_object_copy__4;
  v155 = __Block_byref_object_dispose__4;
  v156 = 0;
  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  v150 = 0;
  v146[0] = 0;
  v146[1] = v146;
  v146[2] = 0x2020000000;
  v146[3] = 0x7FFFFFFFFFFFFFFFLL;
  v144[0] = 0;
  v144[1] = v144;
  v144[2] = 0x2020000000;
  v145 = 0;
  v60 = *(statesCopy + 40);
  v59 = *(statesCopy + 48) & (printHeavyStacks ^ 1);
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __245__SASamplePrinter_addStackForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_task_toRootObjects_nameChanges_dispatchQueueChanges_swiftTaskChanges_threadChanges_priorityChanges_microstackshotSummary_onlyHeaviestStack_includeState___block_invoke_2433;
  v92[3] = &unk_1E86F7DB8;
  v115 = 0;
  v92[4] = statesCopy;
  v92[5] = indexes;
  v109 = v31;
  v92[6] = states;
  v92[7] = thread;
  v92[8] = a2;
  v92[9] = queue;
  v93 = tidsToPrint;
  v116 = v61;
  priorityChangesCopy = priorityChanges;
  v96 = v146;
  v97 = v159;
  v98 = &v147;
  v117 = displayRunningThreads;
  v118 = displayRunnableThreads;
  v119 = displayBlockedThreads;
  v113 = omitStacksAboveBasePriority;
  v114 = omitStacksBelowBasePriority;
  v120 = omitStacksWithUserActive;
  v121 = omitStacksWithUserIdle;
  v122 = omitStacksOnBattery;
  v123 = omitStacksOnAC;
  v124 = omitStacksWithPCore;
  v125 = omitStacksWithECore;
  v126 = v64;
  v110 = i;
  v111 = v63;
  v127 = displayIOInCallTrees;
  v99 = v144;
  v100 = v170;
  v101 = buf;
  v102 = v168;
  v103 = &v151;
  stackCopy = stack;
  v129 = printHeavyStacks;
  v104 = v157;
  v105 = v160;
  v106 = v164;
  changesCopy = changes;
  queueChangesCopy = queueChanges;
  threadChangesCopy = threadChanges;
  v133 = v85;
  taskChangesCopy = taskChanges;
  v135 = displayUserFrames;
  v136 = displayKernelFrames;
  v137 = displayExclaveFrames;
  taskCopy = task;
  v107 = v162;
  v108 = v166;
  v138 = patchTruncatedStacks;
  v139 = v22;
  v140 = displayOnBehalfOfInCallTrees;
  v141 = showThreadStateAsLeafFrame;
  v142 = includeUserIdleAndBatteryStateInStacks;
  v112 = v84;
  v143 = v78;
  [(SASamplePrinter *)statesCopy iterateDispatchQueue:a2 orSwiftTaskStates:queue orThread:states threadStateIndexes:thread startingAtIndex:v31 endingAfterTimestamp:v60 task:v20 stopAtTimeJumps:v59 callback:v92];
  if (stack)
  {
    if ((printHeavyStacks & 1) == 0)
    {
      v32 = v148[3];
      if (v152[5] || v32)
      {
        v33 = [(SASamplePrinter *)statesCopy stateChangeStringForThreadState:a2 serialDispatchQueue:queue swiftTaskStates:0 thread:0 threadStateIndexes:0 taskState:0 task:0 iteratorIndex:0 missingStateIsInAnotherStack:v32 numSamplesOmittedSincePreviousDisplayedSample:0 sampleTimestamp:0 previousSampleTimestamp:0 previousDisplayedTimestamp:0 previousTaskState:0 previousThread:0 previousThreadState:0 dispatchQueueChanges:0 swiftTaskChanges:0 priorityChanges:0 nameChanges:0 threadChanges:0 isTimeJump:v152[5] ioEventsSincePreviousThreadState:?];
        if (v33)
        {
          [task addObject:v33];
        }
      }
    }
  }

  _Block_object_dispose(v144, 8);
  _Block_object_dispose(v146, 8);
  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(&v151, 8);

  _Block_object_dispose(v157, 8);
  _Block_object_dispose(v159, 8);
  _Block_object_dispose(v160, 8);

  _Block_object_dispose(v162, 8);
  _Block_object_dispose(v164, 8);

  _Block_object_dispose(v166, 8);
  _Block_object_dispose(v168, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v170, 8);
LABEL_54:

  objc_autoreleasePoolPop(v21);
LABEL_55:
  v34 = *MEMORY[0x1E69E9840];
}

void __30__SASamplePrinter_printHeader__block_invoke_1386(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 dispatchQueue];
  v6 = a1[4];

  if (v5 == v6)
  {
    v7 = a1[5];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v7 addObject:v8];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (void)sortHeavyCallTree:(uint64_t)tree
{
  if (tree)
  {
    [a2 sortUsingComparator:&__block_literal_global_2784];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __37__SASamplePrinter_sortHeavyCallTree___block_invoke_2796;
    v3[3] = &unk_1E86F8028;
    v4 = &__block_literal_global_2784;
    v5 = &__block_literal_global_2793;
    [SACallTreeFrame enumerateTree:a2 block:v3];
  }
}

- (void)addStack:(void *)stack toStream:(uint64_t)stream sampleCount:(void *)count binariesToDisplay:(uint64_t)display primaryState:(int)state primaryMicrostackshotState:(char)microstackshotState onlyHeaviestStack:(char)heaviestStack isKernel:
{
  v15 = objc_autoreleasePoolPush();
  v16 = 1;
  if (([*(self + 16) printHeavyStacks] & 1) == 0 && (microstackshotState & 1) == 0)
  {
    v16 = *(self + 48) ^ 1;
  }

  printJson = [*(self + 16) printJson];
  if ([*(self + 16) displayBlockedReasons])
  {
    displayBlockedReasonsLackingProcessOwners = [*(self + 16) displayBlockedReasonsLackingProcessOwners];
    displayAddressesInBlockedReasons = [*(self + 16) displayAddressesInBlockedReasons];
    v20 = displayBlockedReasonsLackingProcessOwners | 2;
    if (!displayAddressesInBlockedReasons)
    {
      v20 = displayBlockedReasonsLackingProcessOwners;
    }

    v40 = v20;
  }

  else
  {
    v40 = 0;
  }

  showThreadStateAsLeafFrame = [*(self + 16) showThreadStateAsLeafFrame];
  v38 = [*(self + 16) callTreeTimestampsTimeDomain] != 0;
  displayOnBehalfOfInCallTrees = [*(self + 16) displayOnBehalfOfInCallTrees];
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v103 = 1;
  if (printJson)
  {
    [stack appendString:{@", \n\nstack:["}];
  }

  displayCopy = display;
  v36 = a2;
  v22 = log10(stream + 1.0);
  if (heaviestStack)
  {
    countCopy = count;
  }

  else
  {
    v24 = [(SASampleStore *)*(self + 168) lastTaskWithPid:?];
    if (v24)
    {
      countCopy = [(SASamplePrinter *)self binaryImagesHitByTask:v24];
    }

    else
    {
      countCopy = 0;
    }
  }

  if ([*(self + 16) omitFramesBelowSampleCount] < 1)
  {
    omitFramesBelowSampleCount = 0;
  }

  else
  {
    omitFramesBelowSampleCount = [*(self + 16) omitFramesBelowSampleCount];
  }

  if ([*(self + 16) omitFramesBelowPercentOfStackSamples] >= 1)
  {
    omitFramesBelowPercentOfStackSamples = [*(self + 16) omitFramesBelowPercentOfStackSamples];
    if (omitFramesBelowSampleCount <= omitFramesBelowPercentOfStackSamples * stream / 0x64uLL)
    {
      omitFramesBelowSampleCount = omitFramesBelowPercentOfStackSamples * stream / 0x64uLL;
    }
  }

  if ([*(self + 16) omitFramesAfterLineCount] < 1)
  {
    omitFramesAfterLineCount = 0;
  }

  else
  {
    omitFramesAfterLineCount = [*(self + 16) omitFramesAfterLineCount];
  }

  LODWORD(stream) = vcvtpd_u64_f64(v22);
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x2020000000;
  v101[3] = 0;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x2020000000;
  v100 = -1;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x2020000000;
  v94 = 0;
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x2020000000;
  v92 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__4;
  v81 = __Block_byref_object_dispose__4;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0x7FFFFFFFFFFFFFFFLL;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0x7FFFFFFFFFFFFFFFLL;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke;
  v43[3] = &unk_1E86F7E30;
  microstackshotStateCopy = microstackshotState;
  v46 = v101;
  v47 = v99;
  v48 = v93;
  v49 = &v95;
  v57 = omitFramesAfterLineCount;
  v58 = omitFramesBelowSampleCount;
  v64 = printJson;
  v50 = v91;
  v51 = v102;
  v43[4] = self;
  v43[5] = stack;
  v65 = v16 & 1;
  v52 = &v69;
  v53 = &v83;
  streamCopy = stream;
  v54 = &v73;
  v55 = &v87;
  v56 = &v77;
  v28 = countCopy;
  v44 = v28;
  countCopy2 = count;
  v66 = showThreadStateAsLeafFrame;
  v67 = displayOnBehalfOfInCallTrees;
  stateCopy = state;
  v59 = displayCopy;
  v60 = v40;
  v68 = v38;
  [SACallTreeFrame enumerateTree:v36 block:v43];
  v29 = v96[3];
  if (v29)
  {
    free(v29);
    v96[3] = 0;
  }

  if (printJson)
  {
    v30 = @"]\n";
LABEL_30:
    [stack appendString:v30];
    goto LABEL_39;
  }

  v31 = v70[3];
  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_39;
  }

  if (v16)
  {
    v32 = v74[3];
    v33 = v78[5];
    _saos_printf_indent_and_kernel_dot(stack, *(v84 + 6), *(v88 + 24), 0);
    [stack printWithFormat:@"%-*lu  ", stream, v31 - v32 + 1];
    [stack appendString:v33];
    v30 = @"\n";
    goto LABEL_30;
  }

  if (*(self + 48) == 1)
  {
    forceOneBasedTimeIndexes = [*(self + 16) forceOneBasedTimeIndexes];
    v35 = v31 + 1;
    if (forceOneBasedTimeIndexes)
    {
      v35 -= *(self + 56);
    }
  }

  else
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  saos_printf_timeline_frame(stack, *(v84 + 6), stream, v70[3] - v74[3] + 1, *(v88 + 24), v78[5], v35);
LABEL_39:

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(v91, 8);
  _Block_object_dispose(v93, 8);
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(v99, 8);
  _Block_object_dispose(v101, 8);

  _Block_object_dispose(v102, 8);
  objc_autoreleasePoolPop(v15);
}

- (void)printBinaryImagesForTask:(uint64_t)task
{
  v13 = [(SASamplePrinter *)task binaryImagesHitByTask:a2];
  mainBinaryLoadInfo = [a2 mainBinaryLoadInfo];
  v5 = mainBinaryLoadInfo;
  if (mainBinaryLoadInfo)
  {
    if ([mainBinaryLoadInfo loadAddress])
    {
      binary = [v5 binary];
      v7 = [v13 objectForKeyedSubscript:binary];
      v8 = [v7 count];

      if (!v8)
      {
        v9 = [SASamplePrinter displayedBinaryLoadInfoForLoadInfo:task offsetIntoLoadInfo:v5 binariesToDisplay:0 extraBinariesToDisplay:v13];
      }
    }
  }

  if ([v13 count])
  {
    v10 = [(SASamplePrinter *)task sortedLoadInfosForBinaryImages:v13];
    if ([v10 count])
    {
      printJson = [*(task + 16) printJson];
      v12 = *(task + 8);
      if (printJson)
      {
        [v12 appendString:{@", binaryImages:"}];
      }

      else
      {
        [v12 printWithFormat:@"\n%*sBinary Images:\n", 2, ""];
      }

      [(SASamplePrinter *)task printLoadInfos:v10];
    }
  }
}

- (void)printHIDEvent:(uint64_t)event
{
  v84 = *MEMORY[0x1E69E9840];
  options = [event options];
  printJson = [options printJson];

  if (printJson)
  {
    v64 = *__error();
    v65 = _sa_logt();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v65, OS_LOG_TYPE_ERROR, "printHIDEvent doesn't support json output", buf, 2u);
    }

    *__error() = v64;
    _SASetCrashLogMessage(13617, "printHIDEvent doesn't support json output", v66, v67, v68, v69, v70, v71, v72);
    _os_crash();
    __break(1u);
  }

  hidEventTimestamp = [a2 hidEventTimestamp];
  v7 = *(event + 8);
  hidEventTypeString = [a2 hidEventTypeString];
  [v7 printWithFormat:@"HID event %@", hidEventTypeString];

  if (*(event + 48) == 1)
  {
    v9 = *(event + 8);
    v10 = [(SASamplePrinter *)event timeIndexDescriptionForTimestamp:hidEventTimestamp];
    [v9 printWithFormat:@" started %@\n", v10];

    goto LABEL_19;
  }

  [hidEventTimestamp machAbsTimeSeconds];
  v11 = 0.0;
  if (v12 == 0.0 || ([*(event + 32) machAbsTimeSeconds], v13 == 0.0))
  {
    v17 = 0;
  }

  else
  {
    [hidEventTimestamp machAbsTimeSeconds];
    v15 = v14;
    [*(event + 32) machAbsTimeSeconds];
    v11 = v15 - v16;
    v17 = 1;
  }

  [hidEventTimestamp machContTimeSeconds];
  if (v18 != 0.0)
  {
    [*(event + 32) machContTimeSeconds];
    if (v19 != 0.0)
    {
      [hidEventTimestamp machContTimeSeconds];
      v21 = v20;
      [*(event + 32) machContTimeSeconds];
      v11 = v21 - v22;
      v17 = 1;
    }
  }

  [hidEventTimestamp wallTime];
  if (v23 == 0.0 || ([*(event + 32) wallTime], v24 == 0.0))
  {
    if (!v17)
    {
      [*(event + 8) printWithFormat:@"\n", v73];
      goto LABEL_19;
    }
  }

  else
  {
    [hidEventTimestamp wallTime];
    v26 = v25;
    [*(event + 32) wallTime];
    v11 = v26 - v27;
  }

  v28 = *(event + 8);
  if (v11 >= 0.0)
  {
    [v28 printWithFormat:@" started %.1f seconds after start of sampling\n", *&v11];
  }

  else
  {
    [v28 printWithFormat:@" started %.1f seconds before sampling\n", -v11];
  }

LABEL_19:
  [*(event + 8) printWithFormat:@"%-48s %-11s %11s  %s\n", "Event", "Time Index", "Delay", "Process/Thread"];
  v29 = *(event + 8);
  v30 = [(SASamplePrinter *)event displayNameForPid:0 threadId:*(event + 32) timestamp:?];
  [v29 printWithFormat:@"%-48s %-11s %11s  %s\n", "handleReport", "No samples", "N/A", objc_msgSend(v30, "UTF8String")];

  timestamp = hidEventTimestamp;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = [a2 steps];
  v74 = timestamp;
  v77 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
  if (v77)
  {
    v76 = *v79;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        v33 = timestamp;
        if (*v79 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v78 + 1) + 8 * i);
        timestamp = [v34 timestamp];
        debugidString = [v34 debugidString];
        [timestamp machAbsTimeSeconds];
        v37 = v36;
        [v33 machAbsTimeSeconds];
        v39 = (v37 - v38) * 1000.0;
        if (v39 != 0.0)
        {
          v40 = -v39;
          if (v39 >= 0.0)
          {
            v40 = v39;
          }

          v41 = log10(v40);
          v42 = __exp10((2 - vcvtpd_s64_f64(v41)));
          v39 = round(v39 * v42) / v42;
        }

        v43 = &stru_1F5BBF440;
        if (*(event + 48) == 1)
        {
          v44 = [*(event + 168) indexOfFirstSampleOnOrAfterTimestamp:v33];
          v45 = [*(event + 168) indexOfLastSampleOnOrBeforeTimestamp:timestamp];
          v46 = 0x7FFFFFFFFFFFFFFFLL;
          if (v44 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v47 = *(event + 56);
            v48 = *(event + 64);
            if (v47 <= v44)
            {
              v49 = v44;
            }

            else
            {
              v49 = *(event + 56);
            }

            if (v47 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v50 = v44;
            }

            else
            {
              v50 = v49;
            }

            if (v48 >= v50)
            {
              v51 = v50;
            }

            else
            {
              v51 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v48 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v46 = v50;
            }

            else
            {
              v46 = v51;
            }
          }

          v43 = @"No samples";
          if (v45 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v53 = *(event + 56);
            v52 = *(event + 64);
            v54 = v52 >= v45 ? v45 : *(event + 64);
            v55 = v52 == 0x7FFFFFFFFFFFFFFFLL ? v45 : v54;
            v56 = v53 <= v55 ? v55 : 0x7FFFFFFFFFFFFFFFLL;
            v57 = v53 == 0x7FFFFFFFFFFFFFFFLL ? v55 : v56;
            if (v46 != 0x7FFFFFFFFFFFFFFFLL && v57 != 0x7FFFFFFFFFFFFFFFLL && v46 <= v57)
            {
              v43 = [(SASamplePrinter *)event timeIndexDescriptionForStartSampleIndex:v46 endSampleIndex:v57 formattedToLength:0xBu];
            }
          }
        }

        v59 = [v34 pid];
        v60 = [v34 tid];
        timestamp2 = [v34 timestamp];
        v62 = [(SASamplePrinter *)event displayNameForPid:v59 threadId:v60 timestamp:timestamp2];

        [*(event + 8) printWithFormat:@"%-48s %-11s %9.3fms  %@\n", objc_msgSend(debugidString, "UTF8String"), -[__CFString UTF8String](v43, "UTF8String"), *&v39, v62];
      }

      v77 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
    }

    while (v77);
  }

  v63 = *MEMORY[0x1E69E9840];
}

- (void)printLoadInfos:(id *)infos
{
  v140 = *MEMORY[0x1E69E9840];
  if (![infos[2] printJson])
  {
    if ([infos[2] tabDelineateBinaryImageSections])
    {
      v111 = 0;
      v112 = 0;
      v113 = 0;
      goto LABEL_60;
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v107 = a2;
    obj = a2;
    v116 = [obj countByEnumeratingWithState:&v126 objects:v139 count:16];
    if (!v116)
    {
      v111 = 0;
      v112 = 0;
      v113 = 0;
      goto LABEL_59;
    }

    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = *v127;
    v6 = 1;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v127 != v114)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v126 + 1) + 8 * v7);
        binary = [v8 binary];
        bundleIdentifier = [binary bundleIdentifier];
        v11 = bundleIdentifier;
        if (bundleIdentifier)
        {
          name = bundleIdentifier;
        }

        else
        {
          name = [binary name];
        }

        if (([infos[2] displayBinaryImagesLackingNameOrPath] & 1) == 0 && !name)
        {
          if (((v6 | [infos[2] displayBinaryImageAddresses]) & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_21:
          v118 = name;
          v14 = [@"???" length];
          goto LABEL_22;
        }

        if (!name)
        {
          goto LABEL_21;
        }

        v118 = name;
        v13 = SACopySanitizedString(name, 1, 0);
        v14 = [v13 length];

LABEL_22:
        bundleVersion = [binary bundleVersion];
        bundleShortVersion = [binary bundleShortVersion];
        binaryVersion = [binary binaryVersion];
        v120 = binaryVersion;
        if (bundleShortVersion || bundleVersion || binaryVersion)
        {
          ++v14;
          if (bundleShortVersion)
          {
            v18 = bundleVersion | binaryVersion;
            v19 = SACopySanitizedString(bundleShortVersion, 1, 0);
            v20 = [v19 length];

            if (v18)
            {
              v21 = v14 + 1;
            }

            else
            {
              v21 = v14;
            }

            v14 = v21 + v20;
            if (!v18)
            {
              goto LABEL_34;
            }

LABEL_30:
            if (bundleVersion)
            {
              v22 = bundleVersion;
            }

            else
            {
              v22 = v120;
            }

            v23 = SACopySanitizedString(v22, 1, 0);
            v14 += [v23 length] + 2;

            goto LABEL_34;
          }

          if (bundleVersion | binaryVersion)
          {
            goto LABEL_30;
          }
        }

LABEL_34:
        if (v113 <= v14)
        {
          v24 = v14;
        }

        else
        {
          v24 = v113;
        }

        v113 = v24;
        exclave = [v8 exclave];
        v26 = exclave;
        if (exclave)
        {
          name2 = [exclave name];

          if (name2)
          {
            name3 = [v26 name];
            v29 = [name3 length] + 9;
          }

          else
          {
            v29 = 27;
          }

          if (v112 <= v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = v112;
          }

          v112 = v30;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v8 isZerothAndOnlySegment] & 1) == 0)
        {
          segment = [v8 segment];
          name4 = [segment name];
          v33 = [name4 length];

          if (v111 <= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = v111;
          }

          v111 = v34;
        }

        name = v118;
LABEL_52:

        v6 = 0;
        ++v7;
      }

      while (v116 != v7);
      v35 = [obj countByEnumeratingWithState:&v126 objects:v139 count:16];
      v6 = 0;
      v116 = v35;
      if (!v35)
      {
LABEL_59:

        a2 = v107;
LABEL_60:
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v106 = a2;
        obja = [v106 countByEnumeratingWithState:&v122 objects:v138 count:16];
        if (!obja)
        {
          goto LABEL_164;
        }

        v108 = *v123;
        v36 = 1;
        while (2)
        {
          v37 = 0;
LABEL_63:
          if (*v123 != v108)
          {
            objc_enumerationMutation(v106);
          }

          v38 = *(*(&v122 + 1) + 8 * v37);
          binary2 = [v38 binary];
          segment2 = [v38 segment];
          exclave2 = [v38 exclave];
          bundleIdentifier2 = [binary2 bundleIdentifier];
          v43 = bundleIdentifier2;
          if (bundleIdentifier2)
          {
            name5 = bundleIdentifier2;
          }

          else
          {
            name5 = [binary2 name];
          }

          if (([infos[2] displayBinaryImagesLackingNameOrPath] & 1) == 0 && !name5 && ((v36 | objc_msgSend(infos[2], "displayBinaryImageAddresses")) & 1) == 0)
          {
            goto LABEL_158;
          }

          v121 = name5;
          memset(v136, 0, sizeof(v136));
          if ([v38 isInKernelAddressSpace])
          {
            LOWORD(v136[0]) = 42;
            v45 = v136 + 1;
            v46 = 1;
          }

          else
          {
            v46 = 0;
            v45 = v136;
          }

          v119 = segment2;
          if ([infos[2] displayBinaryImageAddresses])
          {
            if ([v38 loadAddress])
            {
              v47 = v46 + __snprintf_chk(v45, 64 - v46, 0, 0x40uLL, "0x%llx", [v38 loadAddress]);
              if (v47 >= 64)
              {
                v88 = *__error();
                v89 = _sa_logt();
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v131 = v47;
                  v132 = 2080;
                  v133 = v136;
                  _os_log_error_impl(&dword_1E0E2F000, v89, OS_LOG_TYPE_ERROR, "ran off end of adornment  (%ld): '%s'", buf, 0x16u);
                }

                *__error() = v88;
                _SASetCrashLogMessage(8871, "ran off end of adornment  (%ld): '%s'", v91, v92, v93, v94, v95, v96, v47);
                _os_crash();
                __break(1u);
LABEL_168:
                v97 = *__error();
                v98 = _sa_logt();
                if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v131 = v47;
                  v132 = 2080;
                  v133 = v136;
                  _os_log_error_impl(&dword_1E0E2F000, v98, OS_LOG_TYPE_ERROR, "ran off end of adornment  (%ld): '%s'", buf, 0x16u);
                }

                *__error() = v97;
                _SASetCrashLogMessage(8874, "ran off end of adornment  (%ld): '%s'", v99, v100, v101, v102, v103, v104, v47);
                _os_crash();
                __break(1u);
              }
            }

            else
            {
              v47 = v46 + __snprintf_chk(v45, &v137 - v45, 0, 0x40uLL, "%s", "???");
              if (v47 >= 64)
              {
                goto LABEL_168;
              }
            }

            [infos[1] printWithFormat:@"%*s", 22, v136];
            if (segment2)
            {
              v51 = [segment2 length];
              v48 = v121;
              if (!v51)
              {
LABEL_85:
                v51 = [binary2 length];
                if (!v51)
                {
                  goto LABEL_101;
                }
              }

LABEL_95:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || [v38 highestOffset] < v51)
              {
                [infos[1] printWithFormat:@" - %#18llx", v51 + objc_msgSend(v38, "loadAddress") - 1];
                goto LABEL_102;
              }

              v55 = *__error();
              v56 = _sa_logt();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                v83 = [v38 debugDescription];
                uTF8String = [v83 UTF8String];
                highestOffset = [v38 highestOffset];
                *buf = 136315650;
                v131 = uTF8String;
                v132 = 2048;
                v133 = v51;
                v134 = 2048;
                v135 = highestOffset;
                _os_log_error_impl(&dword_1E0E2F000, v56, OS_LOG_TYPE_ERROR, "load info %s length 0x%llx has a hit at 0x%llx", buf, 0x20u);

                v48 = v121;
              }

              *__error() = v55;
              segment2 = v119;
            }

            else
            {
              v48 = v121;
              if ([binary2 length])
              {
                goto LABEL_85;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                highestOffset2 = [v38 highestOffset];
              }

              else
              {
                highestOffset2 = 0;
              }

              v53 = [(SABinary *)binary2 segmentAtOffsetIntoBinary:?];
              v54 = v53;
              if (v53 && [v53 hasOffsetIntoBinary] && !objc_msgSend(v54, "offsetIntoBinary") && objc_msgSend(v54, "length") && highestOffset2 < objc_msgSend(v54, "length"))
              {
                v51 = [v54 length];
              }

              else
              {
                v51 = 0;
              }

              if (v51)
              {
                goto LABEL_95;
              }
            }

LABEL_101:
            [infos[1] printWithFormat:@" - %18s", "???"];
LABEL_102:
            if ([infos[2] tabDelineateBinaryImageSections])
            {
              v57 = @"\t";
            }

            else
            {
              v57 = @"  ";
            }

            [infos[1] appendString:v57];
            if (!v48)
            {
LABEL_106:
              v50 = [@"???" mutableCopy];
LABEL_107:
              v117 = exclave2;
              if ([infos[2] tabDelineateBinaryImageSections])
              {
                [v50 appendString:@"\t"];
              }

              bundleVersion2 = [binary2 bundleVersion];
              bundleShortVersion2 = [binary2 bundleShortVersion];
              binaryVersion2 = [binary2 binaryVersion];
              v61 = binaryVersion2;
              v115 = binaryVersion2;
              if (bundleShortVersion2 || bundleVersion2 || binaryVersion2)
              {
                if (([infos[2] tabDelineateBinaryImageSections] & 1) == 0)
                {
                  [v50 appendString:@" "];
                }

                if (bundleShortVersion2)
                {
                  v62 = bundleVersion2 | v61;
                  v63 = SACopySanitizedString(bundleShortVersion2, 1, 0);
                  [v50 appendFormat:@"%@", v63];

                  v61 = v115;
                  if (v62)
                  {
                    [v50 appendString:@" "];
                    goto LABEL_118;
                  }
                }

                else if (bundleVersion2 | v61)
                {
LABEL_118:
                  if (bundleVersion2)
                  {
                    v64 = bundleVersion2;
                  }

                  else
                  {
                    v64 = v61;
                  }

                  v65 = SACopySanitizedString(v64, 1, 0);
                  [v50 appendFormat:@"(%@)", v65];
                }
              }

              [infos[1] printWithFormat:@"%-*s", v113, objc_msgSend(v50, "UTF8String")];
              if ([infos[2] tabDelineateBinaryImageSections])
              {
                [infos[1] appendString:@"\t"];
              }

              if (([infos[2] tabDelineateBinaryImageSections] & 1) == 0 && v112 >= 1)
              {
                v66 = infos[1];
                if (v117)
                {
                  name6 = [v117 name];
                  if (name6)
                  {
                    name7 = [v117 name];
                  }

                  else
                  {
                    name7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%#18llx", objc_msgSend(v117, "identifier")];
                  }

                  v69 = name7;
                  [v66 printWithFormat:@" exclave %-*s", (v112 - 9), objc_msgSend(name7, "UTF8String")];

                  segment2 = v119;
                }

                else
                {
                  [v66 printWithFormat:@"%-*s", v112, ""];
                }
              }

              uuid = [binary2 uuid];

              if (uuid)
              {
                if (([infos[2] tabDelineateBinaryImageSections] & 1) == 0)
                {
                  [infos[1] appendString:@" "];
                }

                v71 = infos[1];
                uuid2 = [binary2 uuid];
                uUIDString = [uuid2 UUIDString];
                [v71 printWithFormat:@"<%@>", uUIDString];

                segment2 = v119;
              }

              if ([infos[2] tabDelineateBinaryImageSections])
              {
                [infos[1] appendString:@"\t"];
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                isZerothAndOnlySegment = [v38 isZerothAndOnlySegment];
              }

              else
              {
                isZerothAndOnlySegment = 0;
              }

              if ([infos[2] tabDelineateBinaryImageSections])
              {
                if (!((segment2 == 0) | isZerothAndOnlySegment & 1))
                {
                  v75 = infos[1];
                  name8 = [segment2 name];
                  [v75 printWithFormat:@"%s", objc_msgSend(name8, "UTF8String"), v105];
                  goto LABEL_148;
                }
              }

              else if (v111 >= 1)
              {
                v77 = (segment2 == 0) | isZerothAndOnlySegment;
                v78 = infos[1];
                if (v77)
                {
                  [v78 printWithFormat:@"%-*s", v111, ""];
                }

                else
                {
                  name8 = [segment2 name];
                  [v78 printWithFormat:@"%-*s", v111, objc_msgSend(name8, "UTF8String")];
LABEL_148:
                }
              }

              if ([infos[2] tabDelineateBinaryImageSections])
              {
                [infos[1] appendString:@"\t"];
              }

              path = [binary2 path];
              if (path)
              {
                v80 = path;
                if (([infos[2] tabDelineateBinaryImageSections] & 1) == 0)
                {
                  [infos[1] appendString:@"  "];
                }

                if ([infos[21] sanitizePaths])
                {
                }

                v81 = infos[1];
                v82 = SACopySanitizedString(v80, 1, 0);
                [v81 printWithFormat:@"%@", v82];

                segment2 = v119;
              }

              [infos[1] appendString:@"\n"];

              exclave2 = v117;
              name5 = v121;
LABEL_158:

              v36 = 0;
              if (obja == ++v37)
              {
                v86 = [v106 countByEnumeratingWithState:&v122 objects:v138 count:16];
                v36 = 0;
                obja = v86;
                if (!v86)
                {
LABEL_164:

                  v87 = *MEMORY[0x1E69E9840];
                  return;
                }

                continue;
              }

              goto LABEL_63;
            }
          }

          else
          {
            [infos[1] printWithFormat:@"%*s", 4, v136];
            v48 = v121;
            if (!v121)
            {
              goto LABEL_106;
            }
          }

          break;
        }

        v49 = SACopySanitizedString(v48, 1, 0);
        v50 = [v49 mutableCopy];

        goto LABEL_107;
      }
    }
  }

  v4 = infos[1];
  v5 = *MEMORY[0x1E69E9840];

  SAJSONWriteArray(v4, a2);
}

- (void)avoidOverlapInBinaryLoadInfos:(int)infos onlyExclaves:(void *)exclaves inTask:
{
  v87 = *MEMORY[0x1E69E9840];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = a2;
  v5 = [obj countByEnumeratingWithState:&v64 objects:v86 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E69E9AC8];
    v63 = *v65;
    *&v6 = 138414338;
    v42 = v6;
    do
    {
      v11 = 0;
      v60 = v7;
      do
      {
        if (*v65 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v64 + 1) + 8 * v11);
        segment = [v12 segment];
        v14 = [segment length];
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          binary = [v12 binary];
          v15 = [binary length];

          v10 = MEMORY[0x1E69E9AC8];
          if (!v15)
          {
            if ([v12 highestOffset])
            {
              highestOffset = [v12 highestOffset];
              if (highestOffset >= 0x10000000)
              {
                v15 = 0x10000000;
              }

              else
              {
                v15 = highestOffset;
              }
            }

            else
            {
              vmPageSize = [*(self + 168) vmPageSize];
              if (vmPageSize)
              {
                v15 = vmPageSize;
              }

              else
              {
                v15 = *v10;
              }
            }
          }
        }

        vmPageSize2 = [*(self + 168) vmPageSize];
        v20 = vmPageSize2;
        if (!vmPageSize2)
        {
          v20 = *v10;
        }

        if (v15 % v20)
        {
          vmPageSize3 = [*(self + 168) vmPageSize];
          if (vmPageSize3)
          {
            v22 = vmPageSize3;
          }

          else
          {
            v22 = *v10;
          }

          vmPageSize4 = [*(self + 168) vmPageSize];
          v24 = vmPageSize4;
          if (!vmPageSize4)
          {
            v24 = *v10;
          }

          v15 = v22 + v15 / v24 * v24;
        }

        v25 = [v12 loadAddress] + v15;
        if ([v12 loadAddress] < v9)
        {
          if (infos && ([v12 exclave], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
          {
            exclave = [v8 exclave];

            if (exclave)
            {
              v31 = *__error();
              v32 = _sa_logt();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v59 = [exclaves debugDescription];
                binary2 = [v8 binary];
                name = [binary2 name];
                binary3 = [v8 binary];
                uuid = [binary3 uuid];
                loadAddress = [v8 loadAddress];
                binary4 = [v12 binary];
                name2 = [binary4 name];
                binary5 = [v12 binary];
                uuid2 = [binary5 uuid];
                loadAddress2 = [v12 loadAddress];
                *buf = v42;
                v69 = v59;
                v70 = 2112;
                v71 = name;
                v72 = 2112;
                v73 = uuid;
                v74 = 2048;
                v75 = loadAddress;
                v76 = 2048;
                v77 = v25;
                v78 = 2112;
                v79 = name2;
                v80 = 2112;
                v81 = uuid2;
                v82 = 2048;
                v83 = loadAddress2;
                v84 = 2048;
                v85 = v25;
                _os_log_debug_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_DEBUG, "%@: adjusted load address of %@ <%@> from 0x%llx to 0x%llx to avoid overlapping with %@ <%@> 0x%llx - 0x%llx", buf, 0x5Cu);

                v7 = v60;
              }

              *__error() = v31;
              loadAddress3 = [v8 loadAddress];
              if (v8)
              {
                v8[3] = v25;
              }

              v9 = v25 + v9 - loadAddress3;
              v10 = MEMORY[0x1E69E9AC8];
            }
          }

          else
          {
            v27 = *__error();
            v28 = _sa_logt();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v58 = [exclaves debugDescription];
              binary6 = [v12 binary];
              name3 = [binary6 name];
              binary7 = [v12 binary];
              uuid3 = [binary7 uuid];
              loadAddress4 = [v12 loadAddress];
              binary8 = [v8 binary];
              name4 = [binary8 name];
              binary9 = [v8 binary];
              uuid4 = [binary9 uuid];
              loadAddress5 = [v8 loadAddress];
              *buf = v42;
              v69 = v58;
              v70 = 2112;
              v71 = name3;
              v72 = 2112;
              v73 = uuid3;
              v74 = 2048;
              v75 = loadAddress4;
              v76 = 2048;
              v77 = v9;
              v78 = 2112;
              v79 = name4;
              v80 = 2112;
              v81 = uuid4;
              v82 = 2048;
              v83 = loadAddress5;
              v84 = 2048;
              v85 = v9;
              _os_log_debug_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_DEBUG, "%@: adjusted load address of %@ <%@> from 0x%llx to 0x%llx to avoid overlapping with %@ <%@> 0x%llx - 0x%llx", buf, 0x5Cu);

              v10 = MEMORY[0x1E69E9AC8];
            }

            *__error() = v27;
            if (v12)
            {
              v12[3] = v9;
            }

            v25 = v15 + v9;
            v7 = v60;
          }
        }

        if (v9 < v25)
        {
          v29 = v12;

          v8 = v29;
          v9 = v25;
        }

        ++v11;
      }

      while (v7 != v11);
      v40 = [obj countByEnumeratingWithState:&v64 objects:v86 count:16];
      v7 = v40;
    }

    while (v40);
  }

  else
  {
    v8 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __29__SASamplePrinter_preprocess__block_invoke_2(uint64_t a1, id *a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a2 + 3);
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v6 = -[SASamplePrinter displayedBinaryLoadInfoForLoadInfo:offsetIntoLoadInfo:binariesToDisplay:extraBinariesToDisplay:](*(a1 + 32), v7, [a2 address] - objc_msgSend(v7, "loadAddress"), *(a1 + 40));
      WeakRetained = v7;
    }
  }

  else
  {
    WeakRetained = 0;
  }
}

- (id)displayedBinaryLoadInfoForLoadInfo:(uint64_t)info offsetIntoLoadInfo:(void *)loadInfo binariesToDisplay:(unint64_t)display extraBinariesToDisplay:(void *)toDisplay
{
  if (info)
  {
    binary = [loadInfo binary];
    segment = [loadInfo segment];
    loadAddress = [loadInfo loadAddress];
    isInKernelAddressSpace = [loadInfo isInKernelAddressSpace];
    exclave = [loadInfo exclave];
    v12 = [SASamplePrinter displayedBinaryLoadInfoForBinary:binary segment:segment desiredLoadAddress:loadAddress offsetIntoLoadInfo:display isInKernelAddressSpace:isInKernelAddressSpace exclave:exclave binariesToDisplay:toDisplay extraBinariesToDisplay:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __29__SASamplePrinter_preprocess__block_invoke_3(uint64_t a1, id *a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a2 + 3);
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v6 = -[SASamplePrinter displayedBinaryLoadInfoForLoadInfo:offsetIntoLoadInfo:binariesToDisplay:extraBinariesToDisplay:](*(a1 + 32), v7, [a2 address] - objc_msgSend(v7, "loadAddress"), *(a1 + 40));
      WeakRetained = v7;
    }
  }

  else
  {
    WeakRetained = 0;
  }
}

- (id)sortedLoadInfosForBinaryImages:(uint64_t)images
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50__SASamplePrinter_sortedLoadInfosForBinaryImages___block_invoke;
  v12 = &unk_1E86F7A40;
  imagesCopy = images;
  v5 = v4;
  v14 = v5;
  [a2 enumerateKeysAndObjectsUsingBlock:&v9];
  [v5 sortUsingComparator:{&__block_literal_global_1926, v9, v10, v11, v12, imagesCopy}];
  v6 = v14;
  v7 = v5;

  return v5;
}

void __34__SASamplePrinter_preprocessTask___block_invoke(uint64_t a1, id *a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a2 + 3);
    if (!WeakRetained)
    {
      goto LABEL_8;
    }

    v15 = WeakRetained;
    v6 = [*(a1 + 32) binaryLoadInfos];
    v7 = [v6 indexOfObjectIdenticalTo:v15];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_7:
      WeakRetained = v15;
LABEL_8:

      goto LABEL_10;
    }

    v8 = -[SASamplePrinter displayedBinaryLoadInfoForLoadInfo:offsetIntoLoadInfo:binariesToDisplay:extraBinariesToDisplay:](*(a1 + 40), v15, [a2 address] - objc_msgSend(v15, "loadAddress"), *(a1 + 48));
    v9 = [*(a1 + 32) mainBinaryLoadInfo];
    if (v9 == v15)
    {
      v10 = [*(a1 + 32) pid];

      if (!v10)
      {
        goto LABEL_6;
      }

      v11 = [v8 loadAddress];
      v12 = [*(a1 + 32) mainBinaryLoadInfo];
      v13 = [v12 loadAddress];

      if (v11 <= v13)
      {
        goto LABEL_6;
      }

      v9 = [*(a1 + 32) mainBinaryLoadInfo];
      v14 = [v9 loadAddress];
      if (v8)
      {
        v8[3] = v14;
      }
    }

LABEL_6:
    goto LABEL_7;
  }

  WeakRetained = 0;

LABEL_10:
}

- (uint64_t)shouldPrintTask:(unint64_t)task thread:(unint64_t)thread dispatchQueue:
{
  v94 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v64 = 0;
    goto LABEL_102;
  }

  options = [self options];
  pidsToPrint = [options pidsToPrint];

  options2 = [self options];
  uniquePidsToPrint = [options2 uniquePidsToPrint];

  options3 = [self options];
  processNamesToPrint = [options3 processNamesToPrint];

  options4 = [self options];
  processUUIDsToPrint = [options4 processUUIDsToPrint];

  options5 = [self options];
  tidsToPrint = [options5 tidsToPrint];

  if (!pidsToPrint && !uniquePidsToPrint && !tidsToPrint && !processNamesToPrint && !processUUIDsToPrint)
  {
    options6 = [self options];
    printTargetThreadOnly = [options6 printTargetThreadOnly];

    if (!printTargetThreadOnly)
    {
      goto LABEL_100;
    }
  }

  targetProcess = [*(self + 168) targetProcess];

  if (targetProcess != a2)
  {
    goto LABEL_9;
  }

  if (!(task | thread))
  {
    goto LABEL_100;
  }

  options7 = [self options];
  printTargetThreadOnly2 = [options7 printTargetThreadOnly];

  if (!printTargetThreadOnly2)
  {
    goto LABEL_100;
  }

  if ([*(self + 168) targetThreadId] && objc_msgSend(*(self + 168), "targetDispatchQueueId"))
  {
    if (!task)
    {
      goto LABEL_9;
    }

    if (!thread)
    {
      goto LABEL_9;
    }

    threadId = [task threadId];
    if (threadId != [*(self + 168) targetThreadId])
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ([*(self + 168) targetThreadId])
    {
      if (!task)
      {
        goto LABEL_9;
      }

      threadId2 = [task threadId];
      targetThreadId = [*(self + 168) targetThreadId];
      goto LABEL_46;
    }

    if (![*(self + 168) targetDispatchQueueId])
    {
      if ([task isMainThread])
      {
        goto LABEL_100;
      }

      goto LABEL_9;
    }

    if (!thread)
    {
      goto LABEL_9;
    }
  }

  threadId2 = [thread identifier];
  targetThreadId = [*(self + 168) targetDispatchQueueId];
LABEL_46:
  if (threadId2 == targetThreadId)
  {
    goto LABEL_100;
  }

LABEL_9:
  targetProcesses = [*(self + 168) targetProcesses];
  v21 = [targetProcesses containsObject:a2];

  if (v21)
  {
    goto LABEL_100;
  }

  if (pidsToPrint)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "pid")}];
    v23 = [pidsToPrint containsObject:v22];

    if (v23)
    {
      goto LABEL_100;
    }
  }

  if (uniquePidsToPrint)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "uniquePid")}];
    v25 = [uniquePidsToPrint containsObject:v24];

    if (v25)
    {
      goto LABEL_100;
    }
  }

  if (processNamesToPrint)
  {
    name = [a2 name];
    if (name && ([processNamesToPrint containsObject:name] & 1) != 0 || !objc_msgSend(a2, "pid") && (objc_msgSend(processNamesToPrint, "containsObject:", @"kernel_task") & 1) != 0)
    {
      goto LABEL_23;
    }
  }

  if (processUUIDsToPrint)
  {
    mainBinary = [a2 mainBinary];
    name = [mainBinary uuid];

    if (name && [processUUIDsToPrint containsObject:name])
    {
LABEL_23:

      goto LABEL_100;
    }
  }

  options8 = [self options];
  printProblematicProcessesAndThreads = [options8 printProblematicProcessesAndThreads];

  if (!printProblematicProcessesAndThreads)
  {
    goto LABEL_58;
  }

  v35 = [a2 lastTaskStateOnOrBeforeTime:*(self + 40) sampleIndex:*(self + 64)];
  v68 = v35;
  v36 = v35;
  if (!v35 || ([v35 wqExceededTotalThreadLimit] & 1) == 0 && (objc_msgSend(v36, "wqExceededConstrainedThreadLimit") & 1) == 0)
  {
    if (!task)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      obj = [a2 threads];
      v70 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
      if (!v70)
      {
        goto LABEL_56;
      }

      v69 = *v88;
LABEL_50:
      v40 = 0;
      while (1)
      {
        if (*v88 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v41 = [*(self + 152) objectForKeyedSubscript:*(*(&v87 + 1) + 8 * v40)];
        isPartOfADeadlock = [v41 isPartOfADeadlock];

        if (isPartOfADeadlock)
        {
          break;
        }

        if (v70 == ++v40)
        {
          v70 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
          if (!v70)
          {
LABEL_56:

            goto LABEL_57;
          }

          goto LABEL_50;
        }
      }

      v36 = v68;
      goto LABEL_99;
    }

    v37 = *(self + 152);
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(task, "threadId")}];
    v39 = [v37 objectForKeyedSubscript:v38];
    LOBYTE(v37) = [v39 isPartOfADeadlock];

    v36 = v68;
    if ((v37 & 1) == 0)
    {
LABEL_57:
      v83 = 0;
      v84 = &v83;
      v85 = 0x2020000000;
      v86 = 0;
      v43 = *(self + 32);
      v44 = *(self + 40);
      v45 = *(self + 56);
      v46 = *(self + 64);
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __56__SASamplePrinter_shouldPrintTask_thread_dispatchQueue___block_invoke;
      v82[3] = &unk_1E86F76D8;
      v82[4] = &v83;
      [a2 enumerateTaskStatesBetweenStartTime:v43 startSampleIndex:v45 endTime:v44 endSampleIndex:v46 reverseOrder:0 block:v82];
      v47 = *(v84 + 24);
      _Block_object_dispose(&v83, 8);

      if (v47)
      {
        goto LABEL_100;
      }

LABEL_58:
      if (!tidsToPrint)
      {
        goto LABEL_71;
      }

      if (task)
      {
        v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(task, "threadId")}];
        v49 = [tidsToPrint containsObject:v48];

        if ((v49 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_100;
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      threads = [a2 threads];
      v50 = [threads countByEnumeratingWithState:&v78 objects:v92 count:16];
      if (!v50)
      {
        goto LABEL_70;
      }

      v51 = *v79;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v79 != v51)
          {
            objc_enumerationMutation(threads);
          }

          if ([tidsToPrint containsObject:*(*(&v78 + 1) + 8 * i)])
          {

            goto LABEL_100;
          }
        }

        v50 = [threads countByEnumeratingWithState:&v78 objects:v92 count:16];
      }

      while (v50);
LABEL_70:

LABEL_71:
      options9 = [self options];
      if (![options9 printTargetThreadOnly])
      {

LABEL_93:
        v64 = 0;
        goto LABEL_101;
      }

      v54 = [*(self + 128) count] == 0;

      if (v54)
      {
        goto LABEL_93;
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = *(self + 128);
      v56 = [v72 countByEnumeratingWithState:&v74 objects:v91 count:16];
      if (!v56)
      {
        goto LABEL_91;
      }

      v57 = *v75;
LABEL_75:
      v58 = 0;
      while (1)
      {
        if (*v75 != v57)
        {
          objc_enumerationMutation(v72);
        }

        v59 = *(*(&v74 + 1) + 8 * v58);
        if (task)
        {
          if (v59)
          {
            if (v59[2])
            {
              threadId3 = [task threadId];
              v61 = v59[2];
              if (threadId3 == v61)
              {
                goto LABEL_97;
              }

              if (v61)
              {
                goto LABEL_87;
              }
            }

LABEL_85:
            Property = objc_getProperty(v59, v55, 8, 1);
            goto LABEL_86;
          }
        }

        else if (v59)
        {
          goto LABEL_85;
        }

        Property = 0;
LABEL_86:
        if (Property == a2)
        {
LABEL_97:

          goto LABEL_100;
        }

LABEL_87:
        if (v56 == ++v58)
        {
          v63 = [v72 countByEnumeratingWithState:&v74 objects:v91 count:16];
          v56 = v63;
          if (!v63)
          {
LABEL_91:

            goto LABEL_93;
          }

          goto LABEL_75;
        }
      }
    }
  }

LABEL_99:

LABEL_100:
  v64 = 1;
LABEL_101:

LABEL_102:
  v65 = *MEMORY[0x1E69E9840];
  return v64;
}

uint64_t __56__SASamplePrinter_shouldPrintTask_thread_dispatchQueue___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isRunawayMitigated];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __59__SASamplePrinter_highestPriorityInThread_useBasePriority___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    result = [a2 basePriority];
    if (result <= *(*(*(a1 + 32) + 8) + 24))
    {
      return result;
    }

    result = [a2 basePriority];
  }

  else
  {
    result = [a2 scheduledPriority];
    if (result <= *(*(*(a1 + 32) + 8) + 24))
    {
      return result;
    }

    result = [a2 scheduledPriority];
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (uint64_t)highestPriorityInTask:(char)task useBasePriority:
{
  if (!self)
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  threads = [a2 threads];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__SASamplePrinter_highestPriorityInTask_useBasePriority___block_invoke;
  v8[3] = &unk_1E86F7728;
  taskCopy = task;
  v8[4] = self;
  v8[5] = &v10;
  [threads enumerateKeysAndObjectsUsingBlock:v8];

  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __57__SASamplePrinter_highestPriorityInTask_useBasePriority___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 48);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v7 = v4[4];
    v6 = v4[5];
    v8 = v4[7];
    v9 = v4[8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__SASamplePrinter_highestPriorityInThread_useBasePriority___block_invoke;
    v12[3] = &unk_1E86F7700;
    v13 = v5;
    v12[4] = &v14;
    [a3 enumerateThreadStatesBetweenStartTime:v7 startSampleIndex:v8 endTime:v6 endSampleIndex:v9 reverseOrder:0 block:v12];
    v10 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(a1 + 40) + 8);
  if (v10 > *(v11 + 24))
  {
    *(v11 + 24) = v10;
  }
}

- (uint64_t)largestFootprintInTask:(void *)task
{
  if (!task)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = task[4];
  v3 = task[5];
  v4 = task[7];
  v5 = task[8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SASamplePrinter_largestFootprintInTask___block_invoke;
  v8[3] = &unk_1E86F76D8;
  v8[4] = &v9;
  [a2 enumerateTaskStatesBetweenStartTime:v2 startSampleIndex:v4 endTime:v3 endSampleIndex:v5 reverseOrder:0 block:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

unint64_t __42__SASamplePrinter_largestFootprintInTask___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 taskSizeInBytes];
  if (result > *(*(*(a1 + 32) + 8) + 24))
  {
    result = [a2 taskSizeInBytes];
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) uniquePid];
  if (v2 < [*(a1 + 40) uniquePid])
  {
    return -1;
  }

  v4 = [*(a1 + 32) uniquePid];
  if (v4 > [*(a1 + 40) uniquePid])
  {
    return 1;
  }

  v5 = [*(a1 + 32) pid];
  if (v5 < [*(a1 + 40) pid])
  {
    return -1;
  }

  v6 = [*(a1 + 32) pid];
  return v6 > [*(a1 + 40) pid];
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) startTimestamp];
  v3 = [*(a1 + 40) startTimestamp];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v2)
    {
      v6 = -1;
    }

    else
    {
      v6 = v3 != 0;
    }
  }

  else
  {
    v6 = [v2 compare:v3];
  }

  return v6;
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 48) == 1)
  {
    v3 = [*(a1 + 40) sampleCountInSampleIndexRangeStart:*(v2 + 56) end:*(v2 + 64)];
    v4 = [*(a1 + 48) sampleCountInSampleIndexRangeStart:*(*(a1 + 32) + 56) end:*(*(a1 + 32) + 64)];
  }

  else
  {
    v3 = [*(a1 + 40) sampleCountInTimestampRangeStart:*(v2 + 32) end:*(v2 + 40)];
    v4 = [*(a1 + 48) sampleCountInTimestampRangeStart:*(*(a1 + 32) + 32) end:*(*(a1 + 32) + 40)];
  }

  if (v3 > v4)
  {
    return -1;
  }

  else
  {
    return v3 < v4;
  }
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_8(uint64_t a1, char a2)
{
  v4 = [(SASamplePrinter *)*(a1 + 32) highestPriorityInTask:a2 useBasePriority:?];
  v5 = [(SASamplePrinter *)*(a1 + 32) highestPriorityInTask:a2 useBasePriority:?];
  if (v4 <= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 < v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_9(uint64_t a1)
{
  v2 = [(SASamplePrinter *)*(a1 + 32) largestFootprintInTask:?];
  v3 = [(SASamplePrinter *)*(a1 + 32) largestFootprintInTask:?];
  if (v2 <= v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2 < v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_10(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  v21 = 0;
  [*(a1 + 32) cpuTimeNs:&v23 cpuInstructions:&v22 cpuCycles:&v21 betweenStartTime:*(*(a1 + 40) + 32) endTime:*(*(a1 + 40) + 40)];
  v19 = 0;
  v20 = 0;
  v18 = 0;
  [*(a1 + 48) cpuTimeNs:&v20 cpuInstructions:&v19 cpuCycles:&v18 betweenStartTime:*(*(a1 + 40) + 32) endTime:*(*(a1 + 40) + 40)];
  if (a2 > 7)
  {
    if (a2 != 8)
    {
      if (a2 == 9)
      {
        v6 = 0.0;
        v7 = 0.0;
        if (v22)
        {
          v7 = v21 / v22;
        }

        if (v19)
        {
          v6 = v18 / v19;
        }

        if (v7 < v6)
        {
          goto LABEL_17;
        }

        if (v7 <= v6)
        {
          goto LABEL_19;
        }

        goto LABEL_13;
      }

      goto LABEL_21;
    }

    v4 = v21;
    v5 = v18;
LABEL_16:
    if (v4 < v5)
    {
LABEL_17:
      result = 1;
      goto LABEL_20;
    }

    if (v4 <= v5)
    {
LABEL_19:
      result = 0;
      goto LABEL_20;
    }

LABEL_13:
    result = -1;
LABEL_20:
    v9 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (a2 == 6)
  {
    v4 = v23;
    v5 = v20;
    goto LABEL_16;
  }

  if (a2 == 7)
  {
    v4 = v22;
    v5 = v19;
    goto LABEL_16;
  }

LABEL_21:
  v10 = *__error();
  v11 = _sa_logt();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v25 = a2;
    _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "invalid sort option 0x%llx", buf, 0xCu);
  }

  *__error() = v10;
  _SASetCrashLogMessage(5934, "invalid sort option 0x%llx", v12, v13, v14, v15, v16, v17, a2);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_1480(uint64_t *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if ([*(a1[4] + 16) printJson])
  {
    v4 = *(a1[6] + 8);
    if ((*(v4 + 24) & 1) == 0)
    {
      [*(a1[4] + 8) appendString:{@", "}];
      v4 = *(a1[6] + 8);
    }

    *(v4 + 24) = 0;
    [*(a1[4] + 8) appendString:@"\n\n\n{"];
  }

  if (a1[5] != a2 || ![*(a1[4] + 16) printTargetThreadOnly])
  {
    v5 = a1[4];
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = a1[4];
  v6 = *(v5 + 168);
  if (v6 && (*(v6 + 404) & 1) != 0 && *(v5 + 120))
  {
LABEL_13:
    [(SASamplePrinter *)v5 printTask:a2 specialDispatchQueueId:0 specialThreadId:0 omitSpecial:0 omitOther:0];
    goto LABEL_14;
  }

  v7 = [*(v5 + 168) targetDispatchQueueId];
  if (v7)
  {
    v8 = [a2 dispatchQueues];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v7];
    v10 = [v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = 0;
  }

  v15 = [*(a1[4] + 168) targetThreadId];
  if (v15)
  {
    v16 = [a2 threads];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
    v18 = [v16 objectForKeyedSubscript:v17];
  }

  else
  {
    v18 = 0;
  }

  if (!(v15 | v7))
  {
    v19 = [a2 mainThread];

    v18 = v19;
  }

  if (!(v10 | v18))
  {
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [a2 debugDescription];
      *buf = 134218498;
      v31 = v7;
      v32 = 2048;
      v33 = v15;
      v34 = 2080;
      v35 = [v22 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "target dispatch queue %llu, thread id 0x%llx, target task %s: no target dispatch queue nor thread", buf, 0x20u);
    }

    *__error() = v20;
    v23 = [a2 debugDescription];
    [v23 UTF8String];
    _SASetCrashLogMessage(6065, "target dispatch queue %llu, thread id 0x%llx, target task %s: no target dispatch queue nor thread", v24, v25, v26, v27, v28, v29, v7);

    _os_crash();
    __break(1u);
  }

  -[SASamplePrinter printTask:specialDispatchQueueId:specialThreadId:omitSpecial:omitOther:](a1[4], a2, [v10 identifier], objc_msgSend(v18, "threadId"), 0, 0);

LABEL_14:
  result = [*(a1[4] + 16) printJson];
  if (result)
  {
    v12 = *(a1[4] + 8);
    v13 = *MEMORY[0x1E69E9840];

    return [v12 appendString:@"}"];
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (void)printTask:(uint64_t)task specialDispatchQueueId:(uint64_t)id specialThreadId:(int)threadId omitSpecial:(int)special omitOther:
{
  v76 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v12 = objc_autoreleasePoolPush();
    if (threadId && special)
    {
      v55 = *__error();
      v56 = _sa_logt();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v56, OS_LOG_TYPE_ERROR, "Omitting special and other", buf, 2u);
      }

      *__error() = v55;
      _SASetCrashLogMessage(6909, "Omitting special and other", v57, v58, v59, v60, v61, v62, v63);
      _os_crash();
      __break(1u);
    }

    v13 = [(SASamplePrinter *)self printTaskHeaderForTask:a2 specialDispatchQueueId:task specialThreadId:id omitSpecial:threadId omitOther:special];
    if (v13 < 0)
    {
      goto LABEL_49;
    }

    v14 = v13;
    if ([*(self + 16) binaryImagesBeforeStacks])
    {
      [(SASamplePrinter *)self printBinaryImagesForTask:a2];
    }

    v15 = *(self + 16);
    if (!v15 || (v16 = *(v15 + 152), v16 != 3) && (v16 || *(v15 + 11) != 1))
    {
      v23 = objc_autoreleasePoolPush();
      v24 = [(SASamplePrinter *)self stacksForTask:a2 taskSampleCount:v14];
      if ([*(self + 16) printJson])
      {
        [*(self + 8) appendString:{@", threads:["}];
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v70 objects:buf count:16];
      if (v26)
      {
        v27 = v26;
        v64 = v23;
        v67 = a2;
        v69 = v12;
        v28 = 0;
        v29 = *v71;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v71 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v70 + 1) + 8 * i);
            if (!v31 || (*(v31 + 8) & 1) == 0)
            {
              printJson = [*(self + 16) printJson];
              v33 = @"\n";
              if (printJson)
              {
                if (v28)
                {
                  [*(self + 8) appendString:{@", "}];
                }

                v33 = @"{";
              }

              [*(self + 8) appendString:v33];
              [(SASamplePrinter *)self printStack:v31 stream:*(self + 8)];
              if ([*(self + 16) printJson])
              {
                [*(self + 8) appendString:@"}"];
              }

              ++v28;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v70 objects:buf count:16];
        }

        while (v27);
        v34 = v28 == 0;
        a2 = v67;
        v12 = v69;
        v23 = v64;
      }

      else
      {
        v34 = 1;
      }

      if ([*(self + 16) printJson])
      {
        [*(self + 8) appendString:@"]\n\n"];
      }

      else if (v34)
      {
        if (*(self + 48) != 1)
        {
          goto LABEL_39;
        }

        [a2 taskStates];
        v35 = v65 = v23;
        firstObject = [v35 firstObject];
        v37 = v12;
        endSampleIndex = [firstObject endSampleIndex];
        taskStates = [a2 taskStates];
        lastObject = [taskStates lastObject];
        v41 = a2;
        endSampleIndex2 = [lastObject endSampleIndex];

        v23 = v65;
        v43 = endSampleIndex >= endSampleIndex2;
        v12 = v37;
        a2 = v41;
        if (!v43)
        {
LABEL_39:
          [*(self + 8) appendString:@"\n"];
          [*(self + 8) printWithFormat:@"%*sNo threads sampled\n", 2, ""];
        }
      }

      objc_autoreleasePoolPop(v23);
      goto LABEL_47;
    }

    if (!(id | task))
    {
      *buf = a2;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
      [(SASamplePrinter *)self printSingleStackForTasks:v44 limitToDispatchQueueIds:0 limitToThreadIds:0 intersection:0 sampleCount:v14];

      goto LABEL_47;
    }

    v68 = v12;
    if (special)
    {
      v17 = objc_alloc(MEMORY[0x1E695DFD8]);
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:id];
      v19 = [v17 initWithObjects:{v18, 0}];

      v20 = objc_alloc(MEMORY[0x1E695DFD8]);
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:task];
      v22 = [v20 initWithObjects:{v21, 0}];
    }

    else
    {
      v45 = objc_alloc(MEMORY[0x1E695DFA8]);
      [a2 threads];
      v47 = v46 = a2;
      allKeys = [v47 allKeys];
      v66 = [v45 initWithArray:allKeys];

      v49 = objc_alloc(MEMORY[0x1E695DFA8]);
      dispatchQueues = [v46 dispatchQueues];
      allKeys2 = [dispatchQueues allKeys];
      v22 = [v49 initWithArray:allKeys2];

      if (!threadId)
      {
        a2 = v46;
        v12 = v68;
        v19 = v66;
        goto LABEL_46;
      }

      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:id];
      v19 = v66;
      [v66 removeObject:v52];

      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:task];
      [v22 removeObject:v21];
      a2 = v46;
    }

    v12 = v68;
LABEL_46:
    v74 = a2;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
    [(SASamplePrinter *)self printSingleStackForTasks:v53 limitToDispatchQueueIds:v22 limitToThreadIds:v19 intersection:special sampleCount:v14];

LABEL_47:
    if (([*(self + 16) binaryImagesBeforeStacks] & 1) == 0)
    {
      [(SASamplePrinter *)self printBinaryImagesForTask:a2];
    }

LABEL_49:
    objc_autoreleasePoolPop(v12);
  }

  v54 = *MEMORY[0x1E69E9840];
}

void __44__SASamplePrinter_printTasksWithAggregation__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != a2 && ([*(a1 + 40) containsObject:a2] & 1) == 0)
  {
    v4 = [a2 threads];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [a2 mainBinary];
      if (v6)
      {
        if ([(SASamplePrinter *)*(a1 + 48) shouldPrintTask:a2 thread:0 dispatchQueue:0])
        {
          if (*(a1 + 64) == 1)
          {
            v7 = [a2 resourceCoalitionID];
            if (v7)
            {
              v8 = [a2 sharedCache];
            }

            else
            {
              v8 = 0;
            }
          }

          else
          {
            v8 = 0;
            v7 = 0;
          }

          v14 = [[SATaskAggregationIdentifier alloc] initWithBinary:v6 sharedCache:v8 rcid:v7 isTarget:0];
          v15 = [*(a1 + 56) objectForKeyedSubscript:v14];
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(a1 + 56) setObject:v15 forKeyedSubscript:v14];
          }

          [v15 addObject:a2];
        }
      }

      else
      {
        v11 = *__error();
        v12 = _sa_logt();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(SASamplePrinter *)*(a1 + 48) displayNameForTask:a2 includePid:1];
          v18 = 138412290;
          v19 = v13;
          _os_log_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_DEFAULT, "WARNING: No main binary for %@, not including in report", &v18, 0xCu);
        }

        *__error() = v11;
      }
    }

    else
    {
      v9 = *__error();
      v10 = _sa_logt();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v17 = [(SASamplePrinter *)*(a1 + 48) displayNameForTask:a2 includePid:1];
        v18 = 138412290;
        v19 = v17;
        _os_log_debug_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_DEBUG, "No threads for %@, not including in report", &v18, 0xCu);
      }

      *__error() = v9;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_1486(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_2;
  v43[3] = &unk_1E86F7750;
  v43[4] = *(a1 + 32);
  v43[5] = a2;
  v43[6] = a3;
  v30 = MEMORY[0x1E12EBE50](v43);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_3;
  v42[3] = &unk_1E86F7778;
  v42[4] = a2;
  v42[5] = a3;
  v28 = MEMORY[0x1E12EBE50](v42);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_4;
  v41[3] = &unk_1E86F7778;
  v41[4] = a2;
  v41[5] = a3;
  v29 = MEMORY[0x1E12EBE50](v41);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_5;
  v40[3] = &unk_1E86F7750;
  v40[4] = *(a1 + 32);
  v40[5] = a2;
  v40[6] = a3;
  v31 = MEMORY[0x1E12EBE50](v40);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_6;
  v39[3] = &unk_1E86F7778;
  v39[4] = a2;
  v39[5] = a3;
  v27 = MEMORY[0x1E12EBE50](v39);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_7;
  v38[3] = &unk_1E86F77A0;
  v6 = *(a1 + 32);
  v38[4] = a2;
  v38[5] = v6;
  v38[6] = a3;
  v7 = MEMORY[0x1E12EBE50](v38);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_8;
  v37[3] = &unk_1E86F7750;
  v8 = *(a1 + 32);
  v37[4] = a2;
  v37[5] = v8;
  v37[6] = a3;
  v26 = MEMORY[0x1E12EBE50](v37);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_9;
  v36[3] = &unk_1E86F77C8;
  v9 = *(a1 + 32);
  v36[4] = a2;
  v36[5] = v9;
  v36[6] = a3;
  v10 = MEMORY[0x1E12EBE50](v36);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    v25 = v30 + 2;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = [*(*(&v32 + 1) + 8 * v15) unsignedLongLongValue];
      v17 = v16;
      v18 = v16 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 5)
      {
        if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 2)
        {
          if (v18 == 1)
          {
            v20 = v30[2];
            goto LABEL_27;
          }

          if (v18 == 2)
          {
            v20 = v28[2];
            goto LABEL_27;
          }
        }

        else
        {
          switch(v18)
          {
            case 3:
              v19 = v7[2](v7, 1);
              goto LABEL_28;
            case 4:
              v19 = v7[2](v7, 0);
              goto LABEL_28;
            case 5:
              v20 = v26[2];
              goto LABEL_27;
          }
        }
      }

      else
      {
        if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) < 0xA)
        {
          v19 = v10[2](v10);
          goto LABEL_28;
        }

        switch(v18)
        {
          case 10:
            v20 = v27[2];
            goto LABEL_27;
          case 11:
            v20 = v31[2];
LABEL_27:
            v19 = v20();
LABEL_28:
            if (v19)
            {
              if (v17 >= 0)
              {
                v22 = v19;
              }

              else
              {
                v22 = -v19;
              }

              goto LABEL_49;
            }

            break;
          case 12:
            v20 = v29[2];
            goto LABEL_27;
        }
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v32 objects:v44 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((([*(a1 + 40) containsObject:&unk_1F5BDCB50] & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB68) & 1) != 0 || (v21 = (v31[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCA78) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCAD8) & 1) != 0 || (v21 = (v30[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB20) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB38) & 1) != 0 || (v21 = (v29[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCAF0) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB08) & 1) != 0 || (v21 = (v28[2])()) == 0))
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

LABEL_49:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) firstObject];
  v4 = [(SASamplePrinter *)v2 rawNameForTask:v3];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 48) firstObject];
  v7 = [(SASamplePrinter *)v5 rawNameForTask:v6];

  if (![v4 length])
  {

    v4 = 0;
  }

  if ([v7 length])
  {
    v8 = v4 != 0;
    if (v4 && v7)
    {
      v9 = [v4 compare:v7 options:577];
      goto LABEL_11;
    }
  }

  else
  {

    v7 = 0;
    v8 = v4 != 0;
  }

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

LABEL_11:

  return v9;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v3 = [*(a1 + 40) firstObject];
  v4 = [v2 uniquePid];
  if (v4 >= [v3 uniquePid])
  {
    v6 = [v2 uniquePid];
    if (v6 > [v3 uniquePid])
    {
      v5 = 1;
      goto LABEL_7;
    }

    v7 = [v2 pid];
    if (v7 >= [v3 pid])
    {
      v8 = [v2 pid];
      v5 = v8 > [v3 pid];
      goto LABEL_7;
    }
  }

  v5 = -1;
LABEL_7:

  return v5;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v3 = [v2 startTimestamp];

  v4 = [*(a1 + 40) firstObject];
  v5 = [v4 startTimestamp];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v3)
    {
      v7 = -1;
    }

    else
    {
      v7 = v5 != 0;
    }
  }

  else
  {
    v7 = [v3 compare:v5];
  }

  return v7;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_5(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 48) == 1)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v39;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v39 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 += [*(*(&v38 + 1) + 8 * i) sampleCountInSampleIndexRangeStart:*(*(a1 + 32) + 56) end:*(*(a1 + 32) + 64)];
        }

        v5 = [v3 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = *(a1 + 48);
    v20 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v17 = 0;
      v22 = *v35;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v14);
          }

          v17 += [*(*(&v34 + 1) + 8 * j) sampleCountInSampleIndexRangeStart:*(*(a1 + 32) + 56) end:*(*(a1 + 32) + 64)];
        }

        v21 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v21);
      goto LABEL_38;
    }

LABEL_37:
    v17 = 0;
    goto LABEL_38;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v6 = 0;
    v12 = *v31;
    do
    {
      for (k = 0; k != v11; ++k)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v6 += [*(*(&v30 + 1) + 8 * k) sampleCountInTimestampRangeStart:*(*(a1 + 32) + 32) end:*(*(a1 + 32) + 40)];
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v11);
  }

  else
  {
    v6 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = *(a1 + 48);
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v27;
  do
  {
    for (m = 0; m != v16; ++m)
    {
      if (*v27 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v17 += [*(*(&v26 + 1) + 8 * m) sampleCountInTimestampRangeStart:*(*(a1 + 32) + 32) end:{*(*(a1 + 32) + 40), v26}];
    }

    v16 = [v14 countByEnumeratingWithState:&v26 objects:v42 count:16];
  }

  while (v16);
LABEL_38:

  if (v6 > v17)
  {
    result = -1;
  }

  else
  {
    result = v6 < v17;
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v3 = [*(a1 + 40) firstObject];
  if ([v2 uniquePid])
  {
    v4 = [v2 pid] == 0;
  }

  else
  {
    v4 = 1;
  }

  if ([v3 uniquePid])
  {
    v5 = [v3 pid] == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = 1;
  if (!v4)
  {
    v6 = -1;
  }

  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_7(uint64_t a1, char a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(SASamplePrinter *)*(a1 + 40) highestPriorityInTask:a2 useBasePriority:?];
        if (v10 > v7)
        {
          v7 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = *(a1 + 48);
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [(SASamplePrinter *)*(a1 + 40) highestPriorityInTask:a2 useBasePriority:?];
        if (v17 > v14)
        {
          v14 = v17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  if (v7 <= v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  if (v7 < v14)
  {
    result = 1;
  }

  else
  {
    result = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_8(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [(SASamplePrinter *)*(a1 + 40) largestFootprintInTask:?];
        if (v8 > v5)
        {
          v5 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = *(a1 + 48);
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [(SASamplePrinter *)*(a1 + 40) largestFootprintInTask:?];
        if (v15 > v12)
        {
          v12 = v15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (v5 <= v12)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  if (v5 < v12)
  {
    result = 1;
  }

  else
  {
    result = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_9(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v42;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        *buf = 0;
        v39 = 0;
        v40 = 0;
        [v11 cpuTimeNs:buf cpuInstructions:&v40 cpuCycles:&v39 betweenStartTime:*(*(a1 + 40) + 32) endTime:*(*(a1 + 40) + 40)];
        v8 += *buf;
        v7 += v40;
        v6 += v39;
      }

      v5 = [v3 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 48);
  v12 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = *v36;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v35 + 1) + 8 * j);
        *buf = 0;
        v39 = 0;
        v40 = 0;
        [v19 cpuTimeNs:buf cpuInstructions:&v40 cpuCycles:&v39 betweenStartTime:*(*(a1 + 40) + 32) endTime:*(*(a1 + 40) + 40)];
        v16 += *buf;
        v15 += v40;
        v14 += v39;
      }

      v13 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  if (a2 > 7)
  {
    if (a2 == 8)
    {
      v20 = v6 > v14;
      if (v6 >= v14)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    if (a2 == 9)
    {
      v21 = 0.0;
      v22 = 0.0;
      if (v7)
      {
        v22 = v6 / v7;
      }

      if (v15)
      {
        v21 = v14 / v15;
      }

      if (v22 >= v21)
      {
        if (v22 <= v21)
        {
LABEL_37:
          result = 0;
          goto LABEL_38;
        }

        goto LABEL_32;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 == 6)
    {
      v20 = v8 > v16;
      if (v8 >= v16)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    if (a2 == 7)
    {
      v20 = v7 > v15;
      if (v7 >= v15)
      {
LABEL_36:
        if (!v20)
        {
          goto LABEL_37;
        }

LABEL_32:
        result = -1;
LABEL_38:
        v24 = *MEMORY[0x1E69E9840];
        return result;
      }

LABEL_34:
      result = 1;
      goto LABEL_38;
    }
  }

  v25 = *__error();
  v26 = _sa_logt();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "invalid sort option 0x%llx", buf, 0xCu);
  }

  *__error() = v25;
  _SASetCrashLogMessage(6335, "invalid sort option 0x%llx", v27, v28, v29, v30, v31, v32, a2);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_1490(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 firstObject];
  v5 = [v4 name];

  v6 = [a3 firstObject];
  v7 = [v6 name];

  if (v5 == v7)
  {
    v8 = 0;
  }

  else if (v5)
  {
    if (v7)
    {
      v8 = [v5 compare:v7 options:577];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)printMultipleTasks:(uint64_t)tasks
{
  v178 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v131 = *(tasks + 48);
  v167 = 0;
  v168 = &v167;
  v169 = 0x3032000000;
  v170 = __Block_byref_object_copy__4;
  v171 = __Block_byref_object_dispose__4;
  v172 = 0;
  v161 = 0;
  v162 = &v161;
  v163 = 0x3032000000;
  v164 = __Block_byref_object_copy__4;
  v165 = __Block_byref_object_dispose__4;
  v166 = 0;
  v157 = 0;
  v158 = &v157;
  v159 = 0x2020000000;
  v160 = 0x7FFFFFFFFFFFFFFFLL;
  v153 = 0;
  v154 = &v153;
  v155 = 0x2020000000;
  v156 = 0x7FFFFFFFFFFFFFFFLL;
  v149 = 0;
  v150 = &v149;
  v151 = 0x2020000000;
  v152 = 0;
  v122 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v130 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a2, "count")}];
  firstObject = [a2 firstObject];
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = a2;
  v4 = [obj countByEnumeratingWithState:&v145 objects:v177 count:16];
  if (v4)
  {
    v119 = 0;
    v118 = 0;
    v117 = 0;
    v116 = 0;
    v115 = 0;
    v114 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v121 = 0;
    v123 = *v146;
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v146 != v123)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v145 + 1) + 8 * i);
        if ([v6 pid])
        {
          sharedCache = [v6 sharedCache];
          v8 = sharedCache;
          if (sharedCache)
          {
            null = sharedCache;
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
          }

          v10 = null;

          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v11 = v122;
          v12 = [v11 countByEnumeratingWithState:&v141 objects:v176 count:16];
          if (v12)
          {
            v13 = *v142;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v142 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                if (*(*(&v141 + 1) + 8 * j) == v10)
                {

                  goto LABEL_20;
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v141 objects:v176 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          [v11 addObject:v10];
LABEL_20:
        }

        if (([*(tasks + 168) dataSource] != 8 || objc_msgSend(*(tasks + 168), "haveKPerfSched")) && objc_msgSend(*(tasks + 168), "dataStyle") != 1 && objc_msgSend(*(tasks + 168), "dataStyle"))
        {
          *&buf = 0;
          v140 = 0;
          v139 = 0;
          v138 = 0;
          v137 = 0;
          v136 = 0;
          [(SATask *)v6 cpuTimeNs:&v140 cpuInstructions:&v139 cpuCycles:&v138 nonThreadCpuTimeNs:&v137 nonThreadCpuInstructions:&v136 nonThreadCpuCycles:*(tasks + 32) betweenStartTime:*(tasks + 40) endTime:?];
          v114 += buf;
          v115 += v140;
          v116 += v139;
          v117 += v138;
          v118 += v137;
          v119 += v136;
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v174 = 0x2020000000;
        v175 = 0;
        taskStates = [v6 taskStates];
        v16 = [taskStates count] == 0;

        if (v16)
        {
          threads = [v6 threads];
          v133[0] = MEMORY[0x1E69E9820];
          v133[1] = 3221225472;
          v133[2] = __51__SASamplePrinter_printTaskHeaderForMultipleTasks___block_invoke_2;
          v133[3] = &unk_1E86F78B0;
          v133[4] = tasks;
          v133[5] = &v167;
          v134 = v131;
          v133[6] = &v157;
          v133[7] = &v161;
          v133[8] = &v153;
          v133[9] = &buf;
          [threads enumerateKeysAndObjectsUsingBlock:v133];
        }

        else
        {
          v17 = [v6 indexOfFirstTaskStateOnOrAfterTime:*(tasks + 32) sampleIndex:*(tasks + 56)];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_48;
          }

          v18 = [v6 indexOfLastTaskStateOnOrBeforeTime:*(tasks + 40) sampleIndex:*(tasks + 64)];
          v19 = v18;
          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_48;
          }

          v20 = v18 - v17;
          if (v18 < v17)
          {
            goto LABEL_48;
          }

          taskStates2 = [v6 taskStates];
          v22 = [taskStates2 objectAtIndexedSubscript:v17];

          if (!v168[5] || ([v22 startTimestamp], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "lt:", v168[5]), v23, v24))
          {
            startTimestamp = [v22 startTimestamp];
            v26 = v168[5];
            v168[5] = startTimestamp;

            if (v131)
            {
              startSampleIndex = [v22 startSampleIndex];
              v158[3] = startSampleIndex;
              if (startSampleIndex == 0x7FFFFFFFFFFFFFFFLL)
              {
                v28 = [v22 endSampleIndex] + 1;
                v158[3] = v28;
              }
            }
          }

          taskStates3 = [v6 taskStates];
          v30 = [taskStates3 objectAtIndexedSubscript:v19];

          if (!v162[5] || ([v30 endTimestamp], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "gt:", v162[5]), v31, v32))
          {
            endTimestamp = [v30 endTimestamp];
            v34 = v162[5];
            v162[5] = endTimestamp;

            if (v131)
            {
              endSampleIndex = [v30 endSampleIndex];
              v154[3] = endSampleIndex;
            }
          }

          if ((v150[3] & 1) == 0)
          {
            v36 = *(tasks + 32);
            v37 = *(tasks + 40);
            v38 = *(tasks + 56);
            v39 = *(tasks + 64);
            v135[0] = MEMORY[0x1E69E9820];
            v135[1] = 3221225472;
            v135[2] = __51__SASamplePrinter_printTaskHeaderForMultipleTasks___block_invoke;
            v135[3] = &unk_1E86F76D8;
            v135[4] = &v149;
            [v6 enumerateTaskStatesBetweenStartTime:v36 startSampleIndex:v38 endTime:v37 endSampleIndex:v39 reverseOrder:0 block:v135];
          }

          *(*(&buf + 1) + 24) += v20 + 1;
        }

        if ((v131 & 1) == 0)
        {
          v121 += *(*(&buf + 1) + 24);
        }

        v41 = [SASamplePrinter displayStringForResourceCoalition:v6];
        v42 = [v130 objectForKeyedSubscript:v41];
        v43 = MEMORY[0x1E696AD98];
        unsignedLongLongValue = [v42 unsignedLongLongValue];
        v45 = [v43 numberWithUnsignedLongLong:*(*(&buf + 1) + 24) + unsignedLongLongValue];
        [v130 setObject:v45 forKeyedSubscript:v41];

        v46 = [(SASamplePrinter *)tasks numIOsForTask:v6 ioSize:&v140];
        hardenedHeap = [v6 hardenedHeap];
        if (v6)
        {
          LOBYTE(v128) = v6[75] | v128;
          BYTE4(v128) |= v6[76];
          LOBYTE(v129) = v6[77] | v129;
          BYTE4(v129) |= v6[78];
        }

        v126 += v46;
        v125 += v46;
        v127 |= hardenedHeap;
LABEL_48:
        _Block_object_dispose(&buf, 8);
      }

      v4 = [obj countByEnumeratingWithState:&v145 objects:v177 count:16];
      if (!v4)
      {
        goto LABEL_52;
      }
    }
  }

  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v121 = 0;
LABEL_52:

  if (v131)
  {
    v48 = v158[3];
    if (v48 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v49 = v154[3];
      if (v49 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v49 >= *(tasks + 64))
        {
          v49 = *(tasks + 64);
        }

        if (v48 <= *(tasks + 56))
        {
          v48 = *(tasks + 56);
        }

        v121 = v49 - v48 + 1;
      }
    }
  }

  targetProcesses = [*(tasks + 168) targetProcesses];
  v51 = [targetProcesses isEqual:obj];

  if (v51)
  {
    goto LABEL_61;
  }

  if (!v121 && ![*(tasks + 16) displayTasksWithZeroCount])
  {
    goto LABEL_88;
  }

  if ([*(tasks + 16) omitTasksBelowSampleCount] < 1)
  {
    omitTasksBelowSampleCount = 0;
  }

  else
  {
    omitTasksBelowSampleCount = [*(tasks + 16) omitTasksBelowSampleCount];
  }

  if ([*(tasks + 16) omitTasksBelowPercentOfTotalSamples] >= 1)
  {
    v70 = *(tasks + 72);
    omitTasksBelowPercentOfTotalSamples = [*(tasks + 16) omitTasksBelowPercentOfTotalSamples];
    if (omitTasksBelowSampleCount <= v70 * omitTasksBelowPercentOfTotalSamples / 0x64uLL)
    {
      omitTasksBelowSampleCount = v70 * omitTasksBelowPercentOfTotalSamples / 0x64uLL;
    }
  }

  if (!omitTasksBelowSampleCount || v121 > omitTasksBelowSampleCount)
  {
LABEL_61:
    mainBinary = [firstObject mainBinary];
    if (!mainBinary)
    {
      v76 = *__error();
      v77 = _sa_logt();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v78 = [firstObject debugDescription];
        v79 = v78;
        uTF8String = [v78 UTF8String];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = uTF8String;
        _os_log_error_impl(&dword_1E0E2F000, v77, OS_LOG_TYPE_ERROR, "%s: No main binary printing multiple tasks", &buf, 0xCu);
      }

      *__error() = v76;
      v81 = [firstObject debugDescription];
      v82 = v81;
      uTF8String2 = [v81 UTF8String];
      _SASetCrashLogMessage(6788, "%s: No main binary printing multiple tasks", v84, v85, v86, v87, v88, v89, uTF8String2);

      _os_crash();
      __break(1u);
    }

    v53 = *(tasks + 136);
    if (v53)
    {
      targetProcess = *(tasks + 136);
    }

    else
    {
      targetProcess = [*(tasks + 168) targetProcess];
    }

    mainBinary2 = [targetProcess mainBinary];

    if (!v53)
    {
    }

    if (mainBinary2 == mainBinary)
    {
      v57 = objc_alloc(MEMORY[0x1E696AEC0]);
      v58 = [(SASamplePrinter *)tasks displayNameForTask:firstObject includePid:0];
      v113 = [v57 initWithFormat:@"%@ (other tasks)", v58];
    }

    else
    {
      v113 = [(SASamplePrinter *)tasks displayNameForTask:firstObject includePid:0];
    }

    v112 = [(SASamplePrinter *)tasks architectureStringForTask:firstObject];
    if (([*(tasks + 16) printJson] & 1) == 0)
    {
      [*(tasks + 8) appendString:@"\n\n"];
    }

    v124 = mainBinary;
    v110 = [(SASamplePrinter *)tasks displayStringForOnBehalfOfForTasks:1u includePid:?];
    if ([firstObject pid])
    {
      v132 = 0;
    }

    else
    {
      startTimestamp2 = [firstObject startTimestamp];
      [startTimestamp2 wallTime];
      v61 = [(SASamplePrinter *)tasks kernelVersionAtWallTime:v60];

      if (!v61 || (SACopySanitizedString(v61, 1, 0), v132 = objc_claimAutoreleasedReturnValue(), v61, !v132))
      {
        v132 = @"???";
      }
    }

    v96 = *(tasks + 8);
    mainBinaryPath = [firstObject mainBinaryPath];
    bundleIdentifier = [firstObject bundleIdentifier];
    bundleVersion = [firstObject bundleVersion];
    bundleShortVersion = [firstObject bundleShortVersion];
    bundleBuildVersion = [firstObject bundleBuildVersion];
    bundleProjectName = [firstObject bundleProjectName];
    bundleSourceVersion = [firstObject bundleSourceVersion];
    bundleProductBuildVersion = [firstObject bundleProductBuildVersion];
    adamID = [firstObject adamID];
    installerVersionID = [firstObject installerVersionID];
    developerType = [firstObject developerType];
    appType = [firstObject appType];
    isBeta = [firstObject isBeta];
    cohortID = [firstObject cohortID];
    vendorID = [firstObject vendorID];
    distributorID = [firstObject distributorID];
    codesigningID = [firstObject codesigningID];
    teamID = [firstObject teamID];
    v64 = v168[5];
    v65 = v162[5];
    v66 = v158[3];
    v67 = v154[3];
    v68 = *(tasks + 72);
    isTranslocated = [firstObject isTranslocated];
    [firstObject isRunningBoardManaged];
    v91 = *(v150 + 24);
    *&v90 = bundleVersion;
    *(&v90 + 1) = bundleShortVersion;
    [SASamplePrinter addTaskHeaderToStream:tasks displayName:v96 pid:v113 mainBinary:0xFFFFFFFFLL mainBinaryPath:v124 sharedCaches:mainBinaryPath uid:v122 bundleIdentifier:4294966982 bundleVersion:0.0 bundleShortVersion:bundleIdentifier bundleBuildVersion:v90 bundleProjectName:bundleBuildVersion bundleSourceVersion:bundleProjectName bundleProductBuildVersion:bundleSourceVersion adamID:bundleProductBuildVersion installerVersionID:adamID developerType:installerVersionID appType:developerType isBeta:appType cohortID:isBeta vendorID:cohortID distributorID:vendorID codesigningID:codesigningID teamID:teamID resourceCoalitionSampleCounts:v130 onBehalfOfProcesses:v110 architectureString:v112 kernelVersion:v132 parentName:0 responsibleName:0 taskExecedFromName:0 taskExecedToName:0 forkTimestamp:0 startTimestamp:v64 endTimestamp:v65 startSampleIndex:v66 endSampleIndex:v67 numSamples:v121 totalNumSamples:v68 numSamplesSuspended:0 numSamplesTerminated:0 startingTaskSize:0 endingTaskSize:0 maxTaskSize:0 startSampleIndexOfMaxTaskSize:0x7FFFFFFFFFFFFFFFuLL endSampleIndexOfMaxTaskSize:0x7FFFFFFFFFFFFFFFuLL numPageins:0 cpuTimeNs:v114 cpuInstructions:v115 cpuCycles:v116 nonThreadCpuTimeNs:v117 nonThreadCpuInstructions:v118 nonThreadCpuCycles:v119 usesSuddenTermination:0 allowsIdleExit:0 memoryLimitStr:0 jetsamPriorityStr:0 isTranslocated:isTranslocated hardenedHeap:v127 & 1 mteCheckedAllocationsEnabled:v128 & 1 mteUserDataAllocationsTagged:BYTE4(v128) & 1 mteSoftModeEnabled:v129 & 1 mteInheritanceTurnedOn:BYTE4(v129) & 1 isRunningBoardManaged:? isUnresponsive:? timeOfLastResponse:? numThreads:? numIdleWorkQueueThreads:? numOtherHiddenThreads:? hieSwallowedException:? numSamplesWQExceededConstrainedThreadLimit:? numSamplesWQExceededTotalThreadLimit:? numSamplesWQExceededCooperativeThreadLimit:? numSamplesWQExceededActiveConstrainedThreadLimit:? numSamplesTALEngaged:? isRunawayMitigated:? threadsDeadlocked:? threadsBlockedByADeadlock:? ioSize:? numIOs:? isReportHeader:?];
  }

  else
  {
LABEL_88:
    v121 = -1;
  }

  _Block_object_dispose(&v149, 8);
  _Block_object_dispose(&v153, 8);
  _Block_object_dispose(&v157, 8);
  _Block_object_dispose(&v161, 8);

  _Block_object_dispose(&v167, 8);
  if ((v121 & 0x8000000000000000) == 0)
  {
    v72 = *(tasks + 16);
    if (v72)
    {
      v73 = *(v72 + 152);
      if (v73 == 3 || !v73 && *(v72 + 11) == 1)
      {
        if (v121)
        {
          [(SASamplePrinter *)tasks printSingleStackForTasks:0 limitToDispatchQueueIds:0 limitToThreadIds:0 intersection:v121 sampleCount:?];
          v72 = *(tasks + 16);
        }

        if (([v72 systemstatsFormat] & 1) == 0)
        {
          firstObject2 = [obj firstObject];
          [(SASamplePrinter *)tasks printBinaryImagesForTask:firstObject2];
        }
      }
    }
  }

  v75 = *MEMORY[0x1E69E9840];

  objc_autoreleasePoolPop(context);
}

- (void)printSingleStackForTasks:(uint64_t)tasks limitToDispatchQueueIds:(uint64_t)ids limitToThreadIds:(char)threadIds intersection:(uint64_t)intersection sampleCount:
{
  v178 = *MEMORY[0x1E69E9840];
  if (([*(self + 16) printHeavyStacks] & 1) == 0)
  {
    v76 = *__error();
    v77 = _sa_logt();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      LOWORD(dest.receiver) = 0;
      _os_log_error_impl(&dword_1E0E2F000, v77, OS_LOG_TYPE_ERROR, "!printHeavyStacks", &dest, 2u);
    }

    *__error() = v76;
    _SASetCrashLogMessage(9155, "!printHeavyStacks", v78, v79, v80, v81, v82, v83, v121);
    _os_crash();
    __break(1u);
    goto LABEL_93;
  }

  if (![a2 count])
  {
LABEL_93:
    v84 = *__error();
    v85 = _sa_logt();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      LOWORD(dest.receiver) = 0;
      _os_log_error_impl(&dword_1E0E2F000, v85, OS_LOG_TYPE_ERROR, "Printing single stack for 0 tasks", &dest, 2u);
    }

    *__error() = v84;
    _SASetCrashLogMessage(9156, "Printing single stack for 0 tasks", v86, v87, v88, v89, v90, v91, v121);
    _os_crash();
    __break(1u);
    goto LABEL_96;
  }

  if (tasks | ids && [a2 count] != 1)
  {
LABEL_96:
    v92 = *__error();
    v93 = _sa_logt();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      LOWORD(dest.receiver) = 0;
      _os_log_error_impl(&dword_1E0E2F000, v93, OS_LOG_TYPE_ERROR, "Limiting to specific dispatch queues/threads, but with multiple tasks", &dest, 2u);
    }

    *__error() = v92;
    _SASetCrashLogMessage(9157, "Limiting to specific dispatch queues/threads, but with multiple tasks", v94, v95, v96, v97, v98, v99, v121);
    _os_crash();
    __break(1u);
    goto LABEL_99;
  }

  v131 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  if (([*(self + 16) microstackshotsFormat] & 1) != 0 || objc_msgSend(*(self + 16), "systemstatsFormat"))
  {
    self = objc_alloc_init(SAMicrostackshotSummary);
  }

  else
  {
    self = 0;
  }

  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  obj = a2;
  v12 = [obj countByEnumeratingWithState:&v166 objects:v177 count:16];
  if (v12)
  {
    v13 = *v167;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v167 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v166 + 1) + 8 * i);
        threads = [v15 threads];
        v162[0] = MEMORY[0x1E69E9820];
        v162[1] = 3221225472;
        v162[2] = __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke;
        v162[3] = &unk_1E86F7B48;
        v162[4] = tasks;
        v162[5] = ids;
        threadIdsCopy = threadIds;
        v162[6] = selfCopy;
        v162[7] = v15;
        v163 = v131;
        selfCopy2 = self;
        [threads enumerateKeysAndObjectsUsingBlock:v162];
      }

      v12 = [obj countByEnumeratingWithState:&v166 objects:v177 count:16];
    }

    while (v12);
  }

  firstObject = [obj firstObject];
  v124 = [(SASamplePrinter *)selfCopy binaryImagesHitByTask:firstObject];
  if ([firstObject pid])
  {
    v17 = 0;
  }

  else
  {
    if (firstObject)
    {
      objc_copyStruct(&dest, (firstObject + 288), 8, 1, 0);
    }

    v17 = CSArchitectureIs32Bit() ^ 1;
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  mainBinary = obj;
  v18 = [mainBinary countByEnumeratingWithState:&v158 objects:v176 count:16];
  if (!v18)
  {
    obja = 0;
    goto LABEL_68;
  }

  obja = 0;
  p_dest = &dest;
  v19 = *v159;
  do
  {
    for (j = 0; j != v18; ++j)
    {
      if (*v159 != v19)
      {
        objc_enumerationMutation(mainBinary);
      }

      v21 = *(*(&v158 + 1) + 8 * j);
      mainBinaryLoadInfo = [v21 mainBinaryLoadInfo];
      v23 = mainBinaryLoadInfo;
      if (mainBinaryLoadInfo)
      {
        if (!obja)
        {
          goto LABEL_32;
        }

        loadAddress = [mainBinaryLoadInfo loadAddress];
        mainBinaryLoadInfo2 = [obja mainBinaryLoadInfo];
        loadAddress2 = [mainBinaryLoadInfo2 loadAddress];

        if (!v17)
        {
          if (loadAddress >= loadAddress2)
          {
            goto LABEL_33;
          }

LABEL_32:
          v27 = v21;

          obja = v27;
          goto LABEL_33;
        }

        if (loadAddress > loadAddress2)
        {
          goto LABEL_32;
        }
      }

LABEL_33:
    }

    v18 = [mainBinary countByEnumeratingWithState:&v158 objects:v176 count:16];
  }

  while (v18);

  if (!obja)
  {
    obja = 0;
    goto LABEL_69;
  }

  mainBinary = [firstObject mainBinary];
  if (!mainBinary)
  {
LABEL_99:
    v100 = *__error();
    v101 = _sa_logt();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      v102 = [firstObject debugDescription];
      v103 = v102;
      uTF8String = [v102 UTF8String];
      mainBinaryLoadInfo3 = [firstObject mainBinaryLoadInfo];
      v106 = [mainBinaryLoadInfo3 debugDescription];
      v107 = v106;
      uTF8String2 = [v106 UTF8String];
      LODWORD(dest.receiver) = 136315394;
      *(&p_dest->receiver + 4) = uTF8String;
      WORD2(dest.super_class) = 2080;
      *(&p_dest->super_class + 6) = uTF8String2;
      _os_log_error_impl(&dword_1E0E2F000, v101, OS_LOG_TYPE_ERROR, "No main binary for %s with main binary load info %s", &dest, 0x16u);
    }

    *__error() = v100;
    v109 = [firstObject debugDescription];
    v110 = v109;
    uTF8String3 = [v109 UTF8String];
    mainBinaryLoadInfo4 = [firstObject mainBinaryLoadInfo];
    v113 = [mainBinaryLoadInfo4 debugDescription];
    v114 = v113;
    [v113 UTF8String];
    _SASetCrashLogMessage(9227, "No main binary for %s with main binary load info %s", v115, v116, v117, v118, v119, v120, uTF8String3);

    _os_crash();
    __break(1u);
  }

  v122 = [v124 objectForKeyedSubscript:?];
  if ([v122 count])
  {
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    mainBinaryLoadInfo5 = [v124 objectForKeyedSubscript:mainBinary];
    v128 = [mainBinaryLoadInfo5 countByEnumeratingWithState:&v154 objects:v175 count:16];
    if (v128)
    {
      v127 = *v155;
      do
      {
        v29 = 0;
        do
        {
          if (*v155 != v127)
          {
            v30 = v29;
            objc_enumerationMutation(mainBinaryLoadInfo5);
            v29 = v30;
          }

          v129 = v29;
          v31 = *(*(&v154 + 1) + 8 * v29);
          v150 = 0u;
          v151 = 0u;
          v152 = 0u;
          v153 = 0u;
          binaryLoadInfos = [obja binaryLoadInfos];
          v33 = [binaryLoadInfos countByEnumeratingWithState:&v150 objects:v174 count:16];
          if (v33)
          {
            v34 = *v151;
            while (2)
            {
              for (k = 0; k != v33; ++k)
              {
                if (*v151 != v34)
                {
                  objc_enumerationMutation(binaryLoadInfos);
                }

                v36 = *(*(&v150 + 1) + 8 * k);
                binary = [v36 binary];
                binary2 = [v31 binary];
                v39 = binary2;
                if (binary == binary2)
                {
                  segment = [v36 segment];
                  segment2 = [v31 segment];
                  v42 = segment == segment2;

                  if (v42)
                  {
                    loadAddress3 = [v36 loadAddress];
                    if (v31)
                    {
                      v31[3] = loadAddress3;
                    }

                    goto LABEL_56;
                  }
                }

                else
                {
                }
              }

              v33 = [binaryLoadInfos countByEnumeratingWithState:&v150 objects:v174 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }
          }

LABEL_56:

          v29 = v129 + 1;
        }

        while (v129 + 1 != v128);
        v128 = [mainBinaryLoadInfo5 countByEnumeratingWithState:&v154 objects:v175 count:16];
      }

      while (v128);
    }
  }

  else
  {
    if (!v122)
    {
      v122 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      [v124 setObject:v122 forKeyedSubscript:mainBinary];
    }

    v44 = [SABinaryLoadInfoToDisplay alloc];
    mainBinaryLoadInfo5 = [obja mainBinaryLoadInfo];
    if (v44)
    {
      binary3 = [mainBinaryLoadInfo5 binary];
      segment3 = [mainBinaryLoadInfo5 segment];
      loadAddress4 = [mainBinaryLoadInfo5 loadAddress];
      dest.receiver = v44;
      dest.super_class = SABinaryLoadInfoToDisplay;
      v44 = objc_msgSendSuper2(&dest, sel_initWithBinary_segment_loadAddress_, binary3, segment3, loadAddress4);

      if (v44)
      {
        v44->_isInKernelAddressSpace = [mainBinaryLoadInfo5 isInKernelAddressSpace];
        exclave = [mainBinaryLoadInfo5 exclave];
        exclave = v44->_exclave;
        v44->_exclave = exclave;
      }
    }

    [v122 addObject:v44];
  }

LABEL_68:
LABEL_69:
  v146 = 0;
  v147 = &v146;
  v148 = 0x2020000000;
  v149 = 0;
  dest.receiver = 0;
  dest.super_class = &dest;
  v171 = 0x2810000000;
  v172 = "";
  v173 = 0;
  v50 = selfCopy;
  if (self)
  {
    v142 = 0;
    v143 = &v142;
    v144 = 0x2020000000;
    v145 = 0;
    v51 = objc_getProperty(self, v28, 8, 1);
    v141[0] = MEMORY[0x1E69E9820];
    v141[1] = 3221225472;
    v141[2] = __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_1998;
    v141[3] = &unk_1E86F7B70;
    v141[4] = &v142;
    v141[5] = &v146;
    [v51 enumerateKeysAndObjectsUsingBlock:v141];

    v137 = 0;
    v138 = &v137;
    v139 = 0x2020000000;
    v140 = 0;
    v53 = objc_getProperty(self, v52, 16, 1);
    v136[0] = MEMORY[0x1E69E9820];
    v136[1] = 3221225472;
    v136[2] = __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_2_2000;
    v136[3] = &unk_1E86F7B70;
    v136[4] = &v137;
    v136[5] = &dest;
    [v53 enumerateKeysAndObjectsUsingBlock:v136];

    v50 = selfCopy;
    printJson = [*(selfCopy + 16) printJson];
    v55 = *(selfCopy + 8);
    if (printJson)
    {
      [v55 appendString:{@", primaryMicrostackshotState:{"}];
      v56 = *(selfCopy + 8);
      v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v143[3]];
      SAJSONWriteDictionaryFirstEntry(v56, @"count", v57);

      +[SACallTreeState writeJSONDictionaryEntriesToStream:microstackshotState:primaryMicrostackshotState:includeIdleAndBattery:](SACallTreeState, *(selfCopy + 8), *(v147 + 6), ~*(v147 + 6), [*(selfCopy + 16) includeUserIdleAndBatteryStateInStacks]);
      [*(selfCopy + 8) appendString:@"}"];
      [*(selfCopy + 8) appendString:{@", primaryCountedState:{"}];
      v58 = *(selfCopy + 8);
      v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v138[3]];
      SAJSONWriteDictionaryFirstEntry(v58, @"count", v59);

      v50 = selfCopy;
      [SACallTreeState writeJSONDictionaryEntriesToStream:*(dest.super_class + 4) state:0 primaryState:?];
      [*(selfCopy + 8) appendString:@"}"];
      if (([*(selfCopy + 16) includeUserIdleAndBatteryStateInStacks] & 1) == 0)
      {
        v60 = *(selfCopy + 8);
        v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_userActiveCount];
        SAJSONWriteDictionaryEntry(v60, @"userActiveSampleCount", v61);

        v62 = *(selfCopy + 8);
        v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_userIdleCount];
        SAJSONWriteDictionaryEntry(v62, @"userIdleSampleCount", v63);

        v64 = *(selfCopy + 8);
        v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_onBatteryCount];
        SAJSONWriteDictionaryEntry(v64, @"onBatterySampleCount", v65);

        v66 = *(selfCopy + 8);
        v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_onACCount];
        SAJSONWriteDictionaryEntry(v66, @"onACSampleCount", v67);

        v50 = selfCopy;
      }
    }

    else
    {
      [v55 printWithFormat:@"%-*s%lu samples ", 18, "Primary state: ", v143[3]];
      saos_printf_microstackshot_state(*(selfCopy + 8), *(v147 + 6), ~*(v147 + 6), [*(selfCopy + 16) systemstatsFormat], objc_msgSend(*(selfCopy + 16), "includeUserIdleAndBatteryStateInStacks"));
      super_class = dest.super_class;
      systemstatsFormat = [*(selfCopy + 16) systemstatsFormat];
      if ((*(super_class + 4) & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v70 = systemstatsFormat;
      }

      else
      {
        v70 = 1;
      }

      if ((v70 & 1) == 0)
      {
        [*(selfCopy + 8) appendString:{@", "}];
        _saos_printf_state_appended_noparens(*(selfCopy + 8), *(dest.super_class + 4), 0, 0);
      }

      [*(selfCopy + 8) appendString:@"\n"];
      if (([*(selfCopy + 16) includeUserIdleAndBatteryStateInStacks] & 1) == 0)
      {
        [*(selfCopy + 8) printWithFormat:@"%-*s%lu samples Idle, %lu samples Active", 18, "User Activity: ", self->_userIdleCount, self->_userActiveCount];
        v71 = *(selfCopy + 8);
        v72 = intersection - (self->_userActiveCount + self->_userIdleCount);
        if (v72)
        {
          [v71 printWithFormat:@", %lu samples Unknown\n", v72];
        }

        else
        {
          [v71 appendString:@"\n"];
        }

        [*(selfCopy + 8) printWithFormat:@"%-*s%lu samples on Battery, %lu samples on AC", 18, "Power Source: ", self->_onBatteryCount, self->_onACCount];
        v73 = *(selfCopy + 8);
        v74 = intersection - (self->_onACCount + self->_onBatteryCount);
        if (v74)
        {
          [v73 printWithFormat:@", %lu samples Unknown\n", v74];
        }

        else
        {
          [v73 appendString:@"\n"];
        }

        *(v147 + 6) &= 0xFFFFFFE3;
      }
    }

    _Block_object_dispose(&v137, 8);
    _Block_object_dispose(&v142, 8);
  }

  if ([*(v50 + 16) printHeavyStacks])
  {
    [(SASamplePrinter *)v50 sortHeavyCallTree:v131];
  }

  -[SASamplePrinter addStack:toStream:sampleCount:binariesToDisplay:primaryState:primaryMicrostackshotState:onlyHeaviestStack:isKernel:](v50, v131, *(v50 + 8), intersection, v124, dest.super_class + 32, *(v147 + 6), 0, [firstObject pid] == 0);
  _Block_object_dispose(&dest, 8);
  _Block_object_dispose(&v146, 8);

  v75 = *MEMORY[0x1E69E9840];
}

uint64_t __51__SASamplePrinter_printTaskHeaderForMultipleTasks___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isRunawayMitigated];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __51__SASamplePrinter_printTaskHeaderForMultipleTasks___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = [a3 indexOfFirstThreadStateOnOrAfterTime:*(*(a1 + 32) + 32) sampleIndex:*(*(a1 + 32) + 56)];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5, v7 = [a3 indexOfLastThreadStateOnOrBeforeTime:*(*(a1 + 32) + 40) sampleIndex:*(*(a1 + 32) + 64)], v7 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = v7;
    v10 = v7 - v6;
    if (v7 < v6)
    {
      v25 = *__error();
      v26 = _sa_logt();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [*(*(a1 + 32) + 32) debugDescription];
        v28 = [v27 UTF8String];
        v29 = [*(*(a1 + 32) + 40) debugDescription];
        *buf = 134218754;
        v40 = v6;
        v41 = 2080;
        v42 = v28;
        v43 = 2048;
        v44 = v9;
        v45 = 2080;
        v46 = [v29 UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "firstThreadStateIndex %lu after reportStartTime %s > lastThreadStateIndex %lu before reportEndTime %s", buf, 0x2Au);
      }

      *__error() = v25;
      v30 = [*(*(a1 + 32) + 32) debugDescription];
      [v30 UTF8String];
      v31 = [*(*(a1 + 32) + 40) debugDescription];
      [v31 UTF8String];
      _SASetCrashLogMessage(6700, "firstThreadStateIndex %lu after reportStartTime %s > lastThreadStateIndex %lu before reportEndTime %s", v32, v33, v34, v35, v36, v37, v6);

      _os_crash();
      __break(1u);
    }

    v11 = [a3 threadStates];
    v38 = [v11 objectAtIndexedSubscript:v6];

    if (!*(*(*(a1 + 40) + 8) + 40) || ([v38 startTimestamp], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "lt:", *(*(*(a1 + 40) + 8) + 40)), v12, v13))
    {
      v14 = [v38 startTimestamp];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      if (*(a1 + 80) == 1)
      {
        *(*(*(a1 + 48) + 8) + 24) = [v38 startSampleIndex];
        if (*(*(*(a1 + 48) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          *(*(*(a1 + 48) + 8) + 24) = [v38 endSampleIndex] + 1;
        }
      }
    }

    v17 = [a3 threadStates];
    v18 = [v17 objectAtIndexedSubscript:v9];

    if (!*(*(*(a1 + 56) + 8) + 40) || ([v18 endTimestamp], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "gt:", *(*(*(a1 + 56) + 8) + 40)), v19, v20))
    {
      v21 = [v18 endTimestamp];
      v22 = *(*(a1 + 56) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      if (*(a1 + 80) == 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = [v18 endSampleIndex];
      }
    }

    *(*(*(a1 + 72) + 8) + 24) += v10 + 1;

    v24 = *MEMORY[0x1E69E9840];
  }
}

- (uint64_t)numIOsForTask:(void *)task ioSize:
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  threads = [a2 threads];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__SASamplePrinter_numIOsForTask_ioSize___block_invoke;
  v8[3] = &unk_1E86F7410;
  v8[4] = self;
  v8[5] = &v13;
  v8[6] = &v9;
  [threads enumerateKeysAndObjectsUsingBlock:v8];

  *task = v14[3];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

- (uint64_t)printTaskHeaderForTask:(uint64_t)task specialDispatchQueueId:(uint64_t)id specialThreadId:(int)threadId omitSpecial:(int)special omitOther:
{
  LODWORD(v7) = threadId;
  taskCopy = task;
  v10 = buf;
  v531 = *MEMORY[0x1E69E9840];
  v371 = a2;
  if (threadId && special)
  {
    v206 = *__error();
    v207 = _sa_logt();
    if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
    {
      id = [v371 debugDescription];
      uTF8String = [id UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String;
      _os_log_error_impl(&dword_1E0E2F000, v207, OS_LOG_TYPE_ERROR, "%s: omitSpecialThreadId and omitOtherThreads", buf, 0xCu);
    }

    *__error() = v206;
    v209 = [v371 debugDescription];
    v210 = v209;
    uTF8String2 = [v209 UTF8String];
    _SASetCrashLogMessage(6979, "%s: omitSpecialThreadId and omitOtherThreads", v212, v213, v214, v215, v216, v217, uTF8String2);

    _os_crash();
    __break(1u);
    goto LABEL_262;
  }

  v11 = *(self + 48);
  if (!task)
  {
    goto LABEL_10;
  }

  dispatchQueues = [a2 dispatchQueues];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:taskCopy];
  v374 = [dispatchQueues objectForKeyedSubscript:v13];

  a2 = v371;
  if (!v374)
  {
    goto LABEL_271;
  }

  if (id)
  {
    while (1)
    {
      threads = [a2 threads];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:id];
      v365 = [threads objectForKeyedSubscript:v15];

      if (v365)
      {
        break;
      }

      v16 = *__error();
      v7 = _sa_logt();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        taskCopy = [v371 debugDescription];
        uTF8String3 = [taskCopy UTF8String];
        *buf = 136315394;
        *&buf[4] = uTF8String3;
        *&buf[12] = 2048;
        *&buf[14] = id;
        _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "%s: specialThreadId 0x%llx doesn't exist", buf, 0x16u);
      }

      *__error() = v16;
      v18 = [v371 debugDescription];
      v19 = v18;
      uTF8String4 = [v18 UTF8String];
      _SASetCrashLogMessage(6992, "%s: specialThreadId 0x%llx doesn't exist", v21, v22, v23, v24, v25, v26, uTF8String4);

      _os_crash();
      __break(1u);
LABEL_10:
      v374 = 0;
      if (!id)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v365 = 0;
  }

  v359 = id | taskCopy;
  if (id | taskCopy)
  {
    if (v7)
    {
      v27 = @"(other dispatch queues/threads)";
      if (!taskCopy)
      {
        v27 = @"(other threads)";
      }

      v362 = v27;
    }

    else
    {
      v28 = objc_alloc(MEMORY[0x1E696AEC0]);
      v29 = v28;
      if (taskCopy)
      {
        v30 = [SASamplePrinter displayNameForDispatchQueue:v374];
        v31 = v30;
        if (id)
        {
          v300 = [v29 initWithFormat:@"%@ 0x%llx, %@ %@", @"Thread", id, @"DispatchQueue", v30];
        }

        else
        {
          v300 = [v29 initWithFormat:@"%@ %@", @"DispatchQueue", v30, v298, v300];
        }

        v362 = v300;
      }

      else
      {
        v362 = [v28 initWithFormat:@"%@ 0x%llx", @"Thread", id];
      }
    }
  }

  else
  {
    v362 = 0;
  }

  v508 = 0;
  v509 = &v508;
  v510 = 0x2020000000;
  v511 = 0;
  v504 = 0;
  v505 = &v504;
  v506 = 0x2020000000;
  v507 = 0;
  v500 = 0;
  v501 = &v500;
  v502 = 0x2020000000;
  v503 = 0;
  v496 = 0;
  v497 = &v496;
  v498 = 0x2020000000;
  v499 = 0;
  v492 = 0;
  v493 = &v492;
  v494 = 0x2020000000;
  v495 = 0;
  v488 = 0;
  v489 = &v488;
  v490 = 0x2020000000;
  v491 = 0;
  v484 = 0;
  v485 = &v484;
  v486 = 0x2020000000;
  v487 = 0;
  v480 = 0;
  v481 = &v480;
  v482 = 0x2020000000;
  v483 = 0;
  v476 = 0;
  v477 = &v476;
  v478 = 0x2020000000;
  v479 = 0;
  v472 = 0;
  v473 = &v472;
  v474 = 0x2020000000;
  v475 = 0;
  v468 = 0;
  v469 = &v468;
  v470 = 0x2020000000;
  v471 = 0x7FFFFFFFFFFFFFFFLL;
  v464 = 0;
  v465 = &v464;
  v466 = 0x2020000000;
  v467 = 0x7FFFFFFFFFFFFFFFLL;
  id = &v458;
  v458 = 0;
  v459 = &v458;
  v460 = 0x3032000000;
  v461 = __Block_byref_object_copy__4;
  v462 = __Block_byref_object_dispose__4;
  v463 = 0;
  v452 = 0;
  v453 = &v452;
  v454 = 0x3032000000;
  v455 = __Block_byref_object_copy__4;
  v456 = __Block_byref_object_dispose__4;
  v457 = 0;
  v448 = 0;
  v449 = &v448;
  v450 = 0x2020000000;
  v451 = 0x80000000;
  v444 = 0;
  v445 = &v444;
  v446 = 0x2020000000;
  v447 = 0x80000000;
  v440 = 0;
  v441 = &v440;
  v442 = 0x2020000000;
  v443 = 0x80000000;
  v436 = 0;
  v437 = &v436;
  v438 = 0x2020000000;
  v439 = 0x80000000;
  v432 = 0;
  v433 = &v432;
  v434 = 0x2020000000;
  v435 = 0;
  v428 = 0;
  v429 = &v428;
  v430 = 0x2020000000;
  v431 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3810000000;
  v527 = "";
  v528 = 0;
  v529 = 0;
  v530 = 0;
  v366 = (v365 | v374) != 0;
  if (v365 | v374)
  {
    v33 = *(self + 32);
    v34 = *(self + 40);
    v35 = *(self + 56);
    v36 = *(self + 64);
    v427[0] = MEMORY[0x1E69E9820];
    v427[1] = 3221225472;
    v427[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke;
    v427[3] = &unk_1E86F78D8;
    v427[4] = self;
    v427[5] = &v432;
    v427[6] = &v428;
    v427[7] = buf;
    [(SATask *)v371 enumerateThreadStatesForThread:v365 dispatchQueue:v374 betweenStartTime:v33 startSampleIndex:v35 endTime:v34 endSampleIndex:v36 reverseOrder:0 block:v427];
  }

  v37 = *(self + 32);
  v38 = *(self + 40);
  v39 = *(self + 56);
  v40 = *(self + 64);
  v426[0] = MEMORY[0x1E69E9820];
  v426[1] = 3221225472;
  v426[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2;
  v426[3] = &unk_1E86F7900;
  v426[4] = self;
  v426[5] = &v458;
  v426[6] = &v452;
  v426[7] = &v472;
  v426[8] = &v468;
  v426[9] = &v464;
  v426[10] = &v500;
  v426[11] = &v508;
  v426[12] = &v504;
  v426[13] = &v496;
  v426[14] = &v492;
  v426[15] = &v488;
  v426[16] = &v484;
  v426[17] = &v480;
  v426[18] = &v476;
  v426[19] = &v448;
  v426[20] = &v444;
  v426[21] = &v440;
  v426[22] = &v436;
  [v371 enumerateTaskStatesBetweenStartTime:v37 startSampleIndex:v39 endTime:v38 endSampleIndex:v40 reverseOrder:0 block:v426];
  v6 = v514;
  if ((v459[5] != 0) != (v453[5] != 0))
  {
LABEL_262:
    v218 = *__error();
    v219 = _sa_logt();
    taskCopy = "y";
    v10 = "n";
    if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
    {
      id = [v371 debugDescription];
      idCopy = id;
      uTF8String5 = [id UTF8String];
      if (v459[5])
      {
        v222 = "y";
      }

      else
      {
        v222 = "n";
      }

      if (v453[5])
      {
        v223 = "y";
      }

      else
      {
        v223 = "n";
      }

      *v514 = 136315650;
      *(v6 + 4) = uTF8String5;
      WORD2(v515) = 2080;
      *(v6 + 14) = v222;
      HIWORD(v516) = 2080;
      taskSizeInBytes3 = v223;
      _os_log_error_impl(&dword_1E0E2F000, v219, OS_LOG_TYPE_ERROR, "%s: firstTaskState %s, lastTaskState %s", v514, 0x20u);
    }

    *__error() = v218;
    v224 = [v371 debugDescription];
    v225 = v224;
    uTF8String6 = [v224 UTF8String];
    v459[5];
    v453[5];
    _SASetCrashLogMessage(7121, "%s: firstTaskState %s, lastTaskState %s", v227, v228, v229, v230, v231, v232, uTF8String6);

    _os_crash();
    __break(1u);
LABEL_271:
    v233 = *__error();
    v234 = _sa_logt();
    if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
    {
      id = [v371 debugDescription];
      uTF8String7 = [id UTF8String];
      *buf = 136315394;
      *(v10 + 4) = uTF8String7;
      *&buf[12] = 2048;
      *(v10 + 14) = taskCopy;
      _os_log_error_impl(&dword_1E0E2F000, v234, OS_LOG_TYPE_ERROR, "%s: specialDispatchQueue %llu doesn't exist", buf, 0x16u);
    }

    *__error() = v233;
    v236 = [v371 debugDescription];
    v237 = v236;
    uTF8String8 = [v236 UTF8String];
    _SASetCrashLogMessage(6986, "%s: specialDispatchQueue %llu doesn't exist", v239, v240, v241, v242, v243, v244, uTF8String8);

    _os_crash();
    __break(1u);
    goto LABEL_274;
  }

  startTimestamp = [v371 startTimestamp];
  endTimestamp = [v371 endTimestamp];
  specialCopy = special;
  v42 = v7;
  if (!v459[5])
  {
    v51 = -1;
    if (!startTimestamp || !endTimestamp || ([startTimestamp gt:*(self + 40)] & 1) != 0 || (objc_msgSend(endTimestamp, "lt:", *(self + 32)) & 1) != 0)
    {
      goto LABEL_256;
    }
  }

  if ((v11 & 1) != 0 || ([v371 taskStates], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "count") == 0, v43, specialCopy = special, !v44))
  {
    if (!v359)
    {
      goto LABEL_50;
    }

    if (v42)
    {
      if (v11)
      {
        goto LABEL_50;
      }

      v45 = v501[3];
      v46 = v433[3];
      v47 = v45 >= v46;
      v48 = v45 - v46;
      if (!v47)
      {
        goto LABEL_281;
      }

      v501[3] = v48;
      v49 = v509;
      v50 = v509[3] - v429[3];
      goto LABEL_48;
    }

    if (!specialCopy)
    {
      goto LABEL_50;
    }

    v501[3] = v433[3];
LABEL_47:
    v50 = v429[3];
    v49 = v509;
LABEL_48:
    v49[3] = v50;
    v505[3] = 0;
    goto LABEL_50;
  }

  if (v501[3])
  {
    goto LABEL_278;
  }

  if (v359 && (special & 1) != 0)
  {
    v501[3] = v433[3];
    goto LABEL_47;
  }

  threads2 = [v371 threads];
  v420[0] = MEMORY[0x1E69E9820];
  v420[1] = 3221225472;
  v420[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1537;
  v420[3] = &unk_1E86F7950;
  v420[4] = self;
  v425 = v42;
  v421 = v374;
  v422 = v365;
  v423 = &v500;
  v424 = &v508;
  [threads2 enumerateKeysAndObjectsUsingBlock:v420];

LABEL_50:
  v53 = *(self + 136);
  targetProcess = v53;
  if (!v53)
  {
    targetProcess = [*(self + 168) targetProcess];
  }

  v55 = v42;
  if (targetProcess != v371)
  {
    targetProcesses = [*(self + 168) targetProcesses];
    v57 = [targetProcesses containsObject:v371];

    v55 = v57 ^ 1 | v42;
  }

  if (!v53)
  {
  }

  v58 = v371;
  if (v55)
  {
    if (!v501[3])
    {
      v58 = v371;
      if (![*(self + 16) displayTasksWithZeroCount])
      {
        goto LABEL_74;
      }
    }

    if ([*(self + 16) omitTasksBelowSampleCount] < 1)
    {
      omitTasksBelowSampleCount = 0;
    }

    else
    {
      omitTasksBelowSampleCount = [*(self + 16) omitTasksBelowSampleCount];
    }

    if ([*(self + 16) omitTasksBelowPercentOfTotalSamples] >= 1)
    {
      v60 = *(self + 72);
      omitTasksBelowPercentOfTotalSamples = [*(self + 16) omitTasksBelowPercentOfTotalSamples];
      if (omitTasksBelowSampleCount <= v60 * omitTasksBelowPercentOfTotalSamples / 0x64uLL)
      {
        omitTasksBelowSampleCount = v60 * omitTasksBelowPercentOfTotalSamples / 0x64uLL;
      }
    }

    if (omitTasksBelowSampleCount && v501[3] <= omitTasksBelowSampleCount)
    {
LABEL_74:
      v51 = -1;
      goto LABEL_256;
    }
  }

  v416 = 0;
  v417 = &v416;
  v418 = 0x2020000000;
  v419 = 0x7FFFFFFFFFFFFFFFLL;
  v412 = 0;
  v413 = &v412;
  v414 = 0x2020000000;
  v415 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11)
  {
    v62 = v459[5];
    if (v62)
    {
      startSampleIndex = [v62 startSampleIndex];
      v64 = *(self + 56);
      if (startSampleIndex > v64)
      {
        v64 = startSampleIndex;
      }

      v417[3] = v64;
      endSampleIndex = [v453[5] endSampleIndex];
      v66 = *(self + 64);
      if (endSampleIndex < v66)
      {
        v66 = endSampleIndex;
      }

      v413[3] = v66;
    }

    else
    {
      threads3 = [v58 threads];
      v411[0] = MEMORY[0x1E69E9820];
      v411[1] = 3221225472;
      v411[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1541;
      v411[3] = &unk_1E86F7978;
      v411[4] = &v416;
      v411[5] = &v412;
      [threads3 enumerateKeysAndObjectsUsingBlock:v411];

      v68 = v417[3];
      if (v68 <= *(self + 56))
      {
        v68 = *(self + 56);
      }

      v417[3] = v68;
      v69 = v413[3];
      if (v69 >= *(self + 64))
      {
        v69 = *(self + 64);
      }

      v413[3] = v69;
      v58 = v371;
    }
  }

  tasksByUniquePid = [*(self + 168) tasksByUniquePid];
  v71 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v58, "uniquePid")}];
  v72 = [tasksByUniquePid objectForKeyedSubscript:v71];
  v73 = v72;
  if (v72)
  {
    v74 = v72;
  }

  else
  {
    tasksByPid = [*(self + 168) tasksByPid];
    v76 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v58, "pid")}];
    v74 = [tasksByPid objectForKeyedSubscript:v76];
  }

  v410 = 0u;
  v409 = 0u;
  v408 = 0u;
  v407 = 0u;
  id = v74;
  v77 = [id countByEnumeratingWithState:&v407 objects:v525 count:16];
  if (!v77)
  {
LABEL_274:

    goto LABEL_275;
  }

  v78 = 0;
  v79 = 0;
  v80 = *v408;
LABEL_85:
  v81 = 0;
  while (1)
  {
    if (*v408 != v80)
    {
      objc_enumerationMutation(id);
    }

    v82 = *(*(&v407 + 1) + 8 * v81);
    if (v79)
    {
      break;
    }

    v79 = v82 == v371;
    if (v82 != v371)
    {
      v83 = v82;

      v78 = v83;
    }

    if (v77 == ++v81)
    {
      v77 = [id countByEnumeratingWithState:&v407 objects:v525 count:16];
      if (!v77)
      {

        if (v82 == v371)
        {
          v84 = 0;
          goto LABEL_96;
        }

LABEL_275:
        v245 = *__error();
        v246 = _sa_logt();
        if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
        {
          v247 = [v371 debugDescription];
          v248 = v247;
          uTF8String9 = [v247 UTF8String];
          v250 = [id debugDescription];
          v251 = v250;
          uTF8String10 = [v250 UTF8String];
          *v514 = 136315394;
          *(v6 + 4) = uTF8String9;
          WORD2(v515) = 2080;
          *(v6 + 14) = uTF8String10;
          _os_log_error_impl(&dword_1E0E2F000, v246, OS_LOG_TYPE_ERROR, "%s not in tasksWithSamePid %s", v514, 0x16u);
        }

        *__error() = v245;
        v253 = [v371 debugDescription];
        v254 = v253;
        uTF8String11 = [v253 UTF8String];
        v256 = [id debugDescription];
        v257 = v256;
        [v256 UTF8String];
        _SASetCrashLogMessage(7281, "%s not in tasksWithSamePid %s", v258, v259, v260, v261, v262, v263, uTF8String11);

        _os_crash();
        __break(1u);
LABEL_278:
        v264 = *__error();
        v265 = _sa_logt();
        if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
        {
          v266 = [v371 debugDescription];
          v267 = v266;
          uTF8String12 = [v266 UTF8String];
          v269 = v501[3];
          *v514 = 136315394;
          *(v6 + 4) = uTF8String12;
          WORD2(v515) = 2048;
          *(v6 + 14) = v269;
          _os_log_error_impl(&dword_1E0E2F000, v265, OS_LOG_TYPE_ERROR, "%s: %lu numSamples (!hasTimeIndexes, no task states)", v514, 0x16u);
        }

        *__error() = v264;
        v270 = [v371 debugDescription];
        v271 = v270;
        uTF8String13 = [v270 UTF8String];
        v296 = v501[3];
        _SASetCrashLogMessage(7142, "%s: %lu numSamples (!hasTimeIndexes, no task states)", v273, v274, v275, v276, v277, v278, uTF8String13);

        _os_crash();
        __break(1u);
LABEL_281:
        v279 = *__error();
        v280 = _sa_logt();
        if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
        {
          v281 = [v371 debugDescription];
          v282 = v281;
          uTF8String14 = [v281 UTF8String];
          v284 = v501[3];
          v285 = v433[3];
          *v514 = 136315650;
          *(v6 + 4) = uTF8String14;
          WORD2(v515) = 2048;
          *(v6 + 14) = v284;
          HIWORD(v516) = 2048;
          taskSizeInBytes3 = v285;
          _os_log_error_impl(&dword_1E0E2F000, v280, OS_LOG_TYPE_ERROR, "%s: numSamples %lu >= specialNumSamples %lu", v514, 0x20u);
        }

        *__error() = v279;
        v286 = [v371 debugDescription];
        v287 = v286;
        uTF8String15 = [v286 UTF8String];
        v297 = v501[3];
        v299 = v433[3];
        _SASetCrashLogMessage(7189, "%s: numSamples %lu >= specialNumSamples %lu", v289, v290, v291, v292, v293, v294, uTF8String15);

        _os_crash();
        __break(1u);
      }

      goto LABEL_85;
    }
  }

  v84 = v82;

LABEL_96:
  v85 = v371;
  if (!v78)
  {
    v360 = 0;
    goto LABEL_103;
  }

  sharedCache = [v78 sharedCache];
  sharedCache2 = [v371 sharedCache];
  v88 = sharedCache2;
  if (sharedCache == sharedCache2)
  {
    endTimestamp2 = [v78 endTimestamp];
    v90 = [endTimestamp2 ge:*(self + 32)];

    if (v90)
    {
      v360 = [(SASamplePrinter *)self displayNameForTask:v78];
      v85 = v371;
      goto LABEL_103;
    }
  }

  else
  {
  }

  v360 = 0;
  v85 = v371;
LABEL_103:
  if (!v84)
  {
LABEL_108:
    v358 = 0;
    goto LABEL_109;
  }

  sharedCache3 = [v84 sharedCache];
  sharedCache4 = [v85 sharedCache];
  v93 = sharedCache4;
  if (sharedCache3 != sharedCache4)
  {

    goto LABEL_108;
  }

  startTimestamp2 = [v84 startTimestamp];
  v95 = [startTimestamp2 le:*(self + 40)];

  if (!v95)
  {
    goto LABEL_108;
  }

  v358 = [(SASamplePrinter *)self displayNameForTask:v84];
LABEL_109:

  v96 = v371;
  startTimestamp3 = [v371 startTimestamp];
  selfCopy3 = self;
  ppid = [v371 ppid];
  if (ppid == -1 || ppid == [v371 pid])
  {
    v357 = 0;
  }

  else
  {
    v100 = [(SASampleStore *)*(self + 168) lastTaskWithPid:ppid onOrBeforeTimestamp:startTimestamp3];
    if (v100)
    {
      v101 = v100;
    }

    else
    {
      v101 = [(SASampleStore *)*(self + 168) firstTaskWithPid:ppid];

      if (!v101)
      {
        selfCopy3 = self;
        v357 = [(SASamplePrinter *)self displayNameForPid:ppid threadId:0 timestamp:startTimestamp3];
        v96 = v371;
        goto LABEL_116;
      }
    }

    v357 = [(SASamplePrinter *)self displayNameForTask:v101];

    v96 = v371;
    selfCopy3 = self;
  }

LABEL_116:
  rpid = [v96 rpid];
  if (rpid < 1 || rpid == [v96 pid])
  {
    v356 = 0;
    goto LABEL_123;
  }

  v103 = [(SASampleStore *)*(selfCopy3 + 168) lastTaskWithPid:rpid onOrBeforeTimestamp:startTimestamp3];
  if (v103)
  {
    v104 = v103;

LABEL_122:
    v356 = [(SASamplePrinter *)self displayNameForTask:v104];

    goto LABEL_123;
  }

  v104 = [(SASampleStore *)*(selfCopy3 + 168) firstTaskWithPid:rpid];

  if (v104)
  {
    goto LABEL_122;
  }

  v356 = [(SASamplePrinter *)self displayNameForPid:rpid threadId:0 timestamp:startTimestamp3];
LABEL_123:

  v105 = v371;
  selfCopy5 = self;
  if ([v371 pid])
  {
    v361 = 0;
  }

  else
  {
    startTimestamp4 = [v371 startTimestamp];
    [startTimestamp4 wallTime];
    v109 = [(SASamplePrinter *)self kernelVersionAtWallTime:v108];

    v105 = v371;
    selfCopy5 = self;
    if (!v109 || (SACopySanitizedString(v109, 1, 0), v361 = objc_claimAutoreleasedReturnValue(), v109, v105 = v371, selfCopy5 = self, !v361))
    {
      v361 = @"???";
    }
  }

  v110 = v459;
  v111 = v459[5];
  if (v111)
  {
    taskSizeInBytes = [v111 taskSizeInBytes];
    specialCopy3 = special;
    v110 = v459;
    if (taskSizeInBytes)
    {
      taskSizeInBytes2 = [v459[5] taskSizeInBytes];
      *v514 = 0;
      v515 = v514;
      v516 = 0x2020000000;
      taskSizeInBytes3 = [v453[5] taskSizeInBytes];
      v114 = *(v515 + 3);
      if (!v114)
      {
        v115 = *(selfCopy5 + 32);
        v116 = *(selfCopy5 + 40);
        v117 = *(selfCopy5 + 56);
        v118 = *(selfCopy5 + 64);
        v406[0] = MEMORY[0x1E69E9820];
        v406[1] = 3221225472;
        v406[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1544;
        v406[3] = &unk_1E86F76D8;
        v406[4] = v514;
        [v105 enumerateTaskStatesBetweenStartTime:v115 startSampleIndex:v117 endTime:v116 endSampleIndex:v118 reverseOrder:1 block:v406];
        v114 = *(v515 + 3);
      }

      v331 = v114;
      _Block_object_dispose(v514, 8);
      v110 = v459;
    }

    else
    {
      taskSizeInBytes2 = 0;
      v331 = 0;
    }
  }

  else
  {
    taskSizeInBytes2 = 0;
    v331 = 0;
    specialCopy3 = special;
  }

  if (v110[5])
  {
    pageins = [v453[5] pageins];
    v330 = pageins - [v459[5] pageins];
  }

  else
  {
    v330 = 0;
  }

  v405 = 0;
  v404 = 0;
  v403 = 0;
  v402 = 0;
  v401 = 0;
  v400 = 0;
  if ([*(selfCopy5 + 168) dataSource] != 8 || (objc_msgSend(*(selfCopy5 + 168), "haveKPerfSched") | specialCopy3) == 1)
  {
    if ([*(selfCopy5 + 168) dataStyle] == 1)
    {
      if (!specialCopy3)
      {
        goto LABEL_153;
      }
    }

    else if (![*(selfCopy5 + 168) dataStyle] && (specialCopy3 & 1) == 0)
    {
      goto LABEL_153;
    }

    if ((((v365 | v374) != 0) & specialCopy3) == 0)
    {
      [(SATask *)v105 cpuTimeNs:&v404 cpuInstructions:&v403 cpuCycles:&v402 nonThreadCpuTimeNs:&v401 nonThreadCpuInstructions:&v400 nonThreadCpuCycles:*(selfCopy5 + 32) betweenStartTime:*(selfCopy5 + 40) endTime:?];
    }

    if (((v42 | specialCopy3) & v366) == 1)
    {
      if (v42)
      {
        v120 = *(*&buf[8] + 40);
        v405 -= *(*&buf[8] + 32);
        v404 -= v120;
        v121 = v403 - *(*&buf[8] + 48);
LABEL_152:
        v403 = v121;
        goto LABEL_153;
      }

      if (specialCopy3)
      {
        v122 = *(*&buf[8] + 40);
        v405 = *(*&buf[8] + 32);
        v404 = v122;
        v121 = *(*&buf[8] + 48);
        goto LABEL_152;
      }
    }
  }

LABEL_153:
  v396 = 0;
  v397 = &v396;
  v398 = 0x2020000000;
  v399 = 0;
  if (!(v365 | v374) || (v42 & 1) != 0 || (specialCopy3 & 1) != 0)
  {
    threads4 = [v105 threads];
    v381[0] = MEMORY[0x1E69E9820];
    v381[1] = 3221225472;
    v381[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_3;
    v381[3] = &unk_1E86F5B80;
    v381[4] = selfCopy5;
    v381[5] = &v396;
    [threads4 enumerateKeysAndObjectsUsingBlock:v381];
  }

  else if (v374)
  {
    threads5 = [v105 threads];
    v368 = [threads5 count];

    if (v365)
    {
      v395 = 0u;
      v394 = 0u;
      v393 = 0u;
      v392 = 0u;
      threadStates = [v365 threadStates];
      v125 = [threadStates countByEnumeratingWithState:&v392 objects:v524 count:16];
      if (v125)
      {
        v126 = *v393;
LABEL_160:
        v127 = 0;
        while (1)
        {
          if (*v393 != v126)
          {
            objc_enumerationMutation(threadStates);
          }

          dispatchQueue = [*(*(&v392 + 1) + 8 * v127) dispatchQueue];
          v129 = dispatchQueue == v374;

          if (!v129)
          {
            break;
          }

          if (v125 == ++v127)
          {
            v125 = [threadStates countByEnumeratingWithState:&v392 objects:v524 count:16];
            if (v125)
            {
              goto LABEL_160;
            }

            break;
          }
        }
      }
    }

    else
    {
      v132 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v133 = *(self + 32);
      v134 = *(self + 40);
      v135 = *(self + 56);
      v136 = *(self + 64);
      v390[0] = MEMORY[0x1E69E9820];
      v390[1] = 3221225472;
      v390[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2_1545;
      v390[3] = &unk_1E86F79A0;
      v137 = v132;
      v391 = v137;
      [(SARecipe *)v374 enumerateStatesBetweenStartTime:v133 startSampleIndex:v135 endTime:v134 endSampleIndex:v136 reverseOrder:0 block:v390];
      v389 = 0u;
      v388 = 0u;
      v387 = 0u;
      v386 = 0u;
      v138 = v137;
      v139 = [v138 countByEnumeratingWithState:&v386 objects:v523 count:16];
      if (v139)
      {
        v140 = *v387;
        do
        {
          for (i = 0; i != v139; ++i)
          {
            if (*v387 != v140)
            {
              objc_enumerationMutation(v138);
            }

            v142 = *(*(&v386 + 1) + 8 * i);
            threads6 = [v371 threads];
            v144 = [threads6 objectForKeyedSubscript:v142];

            v385 = 0u;
            v384 = 0u;
            v383 = 0u;
            v382 = 0u;
            threadStates2 = [v144 threadStates];
            v146 = [threadStates2 countByEnumeratingWithState:&v382 objects:v522 count:16];
            if (v146)
            {
              v147 = *v383;
              while (2)
              {
                for (j = 0; j != v146; ++j)
                {
                  if (*v383 != v147)
                  {
                    objc_enumerationMutation(threadStates2);
                  }

                  dispatchQueue2 = [*(*(&v382 + 1) + 8 * j) dispatchQueue];
                  v150 = dispatchQueue2 == v374;

                  if (!v150)
                  {

                    goto LABEL_185;
                  }
                }

                v146 = [threadStates2 countByEnumeratingWithState:&v382 objects:v522 count:16];
                if (v146)
                {
                  continue;
                }

                break;
              }
            }

            --v368;
LABEL_185:
          }

          v139 = [v138 countByEnumeratingWithState:&v386 objects:v523 count:16];
        }

        while (v139);
      }
    }
  }

  else
  {
    threads7 = [v105 threads];
    [threads7 count];
  }

  selfCopy9 = self;
  v152 = v371;
  v355 = [(SASamplePrinter *)self architectureStringForTask:v371];
  if (v362)
  {
    v153 = objc_alloc(MEMORY[0x1E696AEC0]);
    v154 = [(SASamplePrinter *)self displayNameForTask:v371];
    v362 = [v153 initWithFormat:@"%@ %@", v154, v362];

    v152 = v371;
    selfCopy9 = self;
  }

  else
  {
    v362 = [(SASamplePrinter *)self displayNameForTask:v371];
  }

  if ([v152 pid])
  {
    sharedCache5 = [v371 sharedCache];
    v156 = sharedCache5;
    if (sharedCache5)
    {
      null = sharedCache5;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v353 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{null, 0}];
    selfCopy9 = self;
  }

  else
  {
    v353 = 0;
  }

  if ([v371 resourceCoalitionID])
  {
    v158 = [SASamplePrinter displayStringForResourceCoalition:v371];
    v520 = v158;
    v159 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v501[3]];
    v521 = v159;
    v352 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v521 forKeys:&v520 count:1];

    selfCopy9 = self;
  }

  else
  {
    v352 = 0;
  }

  if ([*(selfCopy9 + 168) dataStyle] == 1 || !objc_msgSend(*(selfCopy9 + 168), "dataStyle"))
  {
    if ([*(selfCopy9 + 168) dataSource] == 8)
    {
      v328 = 0;
      goto LABEL_207;
    }

    v160 = [*(selfCopy9 + 168) dataSource] != 0;
  }

  else
  {
    v160 = 1;
  }

  v328 = v160;
LABEL_207:
  v380 = 0;
  [(SASamplePrinter *)selfCopy9 numIOsForTask:v371 ioSize:&v380];
  if ((v366 & special) == 1)
  {
    *v514 = 0;
    v515 = v514;
    v516 = 0x3032000000;
    taskSizeInBytes3 = __Block_byref_object_copy__4;
    v518 = __Block_byref_object_dispose__4;
    v519 = 0;
    v161 = *(selfCopy9 + 32);
    v162 = *(selfCopy9 + 40);
    v163 = *(selfCopy9 + 56);
    v164 = *(selfCopy9 + 64);
    v379[0] = MEMORY[0x1E69E9820];
    v379[1] = 3221225472;
    v379[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_5;
    v379[3] = &unk_1E86F79F0;
    v379[4] = selfCopy9;
    v379[5] = v514;
    [(SATask *)v371 enumerateThreadStatesForThread:v365 dispatchQueue:v374 betweenStartTime:v161 startSampleIndex:v163 endTime:v162 endSampleIndex:v164 reverseOrder:0 block:v379];
    v165 = *(v515 + 5);
    if (v165 && v165[2])
    {
      v351 = [(SAOnBehalfOfMultiple *)v165 displayStringWithPids:?];
    }

    else
    {
      v351 = 0;
    }

    _Block_object_dispose(v514, 8);
  }

  else
  {
    v513 = v371;
    v166 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v513 count:1];
    v351 = [(SASamplePrinter *)selfCopy9 displayStringForOnBehalfOfForTasks:v166 includePid:1u];
  }

  v378 = 0u;
  v377 = 0u;
  v375 = 0u;
  v376 = 0u;
  [v371 threads];
  v168 = selfCopy10 = self;
  v169 = [v168 countByEnumeratingWithState:&v375 objects:v512 count:16];
  if (v169)
  {
    v370 = 0;
    v367 = 0;
    v170 = *v376;
    while (1)
    {
      v171 = 0;
      do
      {
        if (*v376 != v170)
        {
          objc_enumerationMutation(v168);
        }

        v172 = [*(selfCopy10 + 152) objectForKeyedSubscript:*(*(&v375 + 1) + 8 * v171)];
        v173 = v172;
        if (v172)
        {
          threadState = [v172 threadState];
          startTimestamp5 = [threadState startTimestamp];
          if ([startTimestamp5 gt:*(self + 40)])
          {

            goto LABEL_222;
          }

          threadState2 = [v173 threadState];
          endTimestamp3 = [threadState2 endTimestamp];
          v178 = [endTimestamp3 lt:*(self + 32)];

          if ((v178 & 1) == 0)
          {
            if ([v173 isPartOfADeadlock])
            {
              thread = [v173 thread];
              threadState3 = [v173 threadState];
              threadState = [(SASamplePrinter *)self displayNameForTask:thread thread:threadState3 threadState:?];

              v181 = v370;
              if (v370)
              {
                goto LABEL_228;
              }

              v370 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{threadState, 0}];
              goto LABEL_222;
            }

            if ([v173 isBlockedByADeadlock])
            {
              thread2 = [v173 thread];
              threadState4 = [v173 threadState];
              threadState = [(SASamplePrinter *)self displayNameForTask:thread2 thread:threadState4 threadState:?];

              v181 = v367;
              if (v367)
              {
LABEL_228:
                [v181 addObject:threadState];
              }

              else
              {
                v367 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{threadState, 0}];
              }

LABEL_222:
            }
          }
        }

        ++v171;
        selfCopy10 = self;
      }

      while (v169 != v171);
      v184 = [v168 countByEnumeratingWithState:&v375 objects:v512 count:16];
      v169 = v184;
      if (!v184)
      {
        goto LABEL_237;
      }
    }
  }

  v370 = 0;
  v367 = 0;
LABEL_237:

  [v370 sortUsingComparator:&__block_literal_global_64];
  [v367 sortUsingComparator:&__block_literal_global_64];
  selfCopy13 = self;
  [(SASamplePrinter *)self taskHasSwallowedAnExceptionNotedByHIException:v371];
  v186 = *(v449 + 6);
  if (v186 == 0x80000000)
  {
    v189 = 0;
  }

  else if (*(v445 + 6) <= v186)
  {
    v189 = SAFormattedBytesEx(v186 << 20, 1, 0, 0, 0x100000uLL);
  }

  else
  {
    v187 = objc_alloc(MEMORY[0x1E696AEC0]);
    v188 = SAFormattedBytesEx(*(v449 + 6) << 20, 1, 0, 0, 0x100000uLL);
    v189 = SAFormattedBytesEx(*(v445 + 6) << 20, 1, 0, 0, 0x100000uLL);
    v189 = [v187 initWithFormat:@"%@ - %@", v188, v189];

    selfCopy13 = self;
  }

  v190 = *(v441 + 6);
  if (v190 == 0x80000000)
  {
    v349 = 0;
  }

  else
  {
    if (*(v437 + 6) <= v190)
    {
      v192 = objc_alloc(MEMORY[0x1E696AEC0]);
      v349 = [v192 initWithFormat:@"%d", *(v441 + 6)];
    }

    else
    {
      v191 = objc_alloc(MEMORY[0x1E696AEC0]);
      v349 = [v191 initWithFormat:@"%d - %d", *(v441 + 6), *(v437 + 6)];
    }

    selfCopy13 = self;
  }

  if (([*(selfCopy13 + 16) printJson] & 1) == 0)
  {
    [*(self + 8) appendString:@"\n\n"];
  }

  v327 = *(self + 8);
  mainBinary = [v371 mainBinary];
  mainBinaryPath = [v371 mainBinaryPath];
  v326 = [v371 uid];
  bundleIdentifier = [v371 bundleIdentifier];
  bundleVersion = [v371 bundleVersion];
  bundleShortVersion = [v371 bundleShortVersion];
  bundleBuildVersion = [v371 bundleBuildVersion];
  bundleProjectName = [v371 bundleProjectName];
  bundleSourceVersion = [v371 bundleSourceVersion];
  bundleProductBuildVersion = [v371 bundleProductBuildVersion];
  adamID = [v371 adamID];
  installerVersionID = [v371 installerVersionID];
  developerType = [v371 developerType];
  appType = [v371 appType];
  isBeta = [v371 isBeta];
  cohortID = [v371 cohortID];
  vendorID = [v371 vendorID];
  distributorID = [v371 distributorID];
  codesigningID = [v371 codesigningID];
  teamID = [v371 teamID];
  forkTimestamp = [v371 forkTimestamp];
  if (v328)
  {
    v329 = *(self + 72);
  }

  else
  {
    v329 = 0;
  }

  v193 = v371;
  v372 = v417[3];
  v322 = v413[3];
  v321 = v501[3];
  v320 = v509[3];
  v319 = v505[3];
  v318 = v473[3];
  v317 = v469[3];
  v316 = v465[3];
  v315 = v405;
  v314 = v404;
  v313 = v403;
  v312 = v402;
  v311 = v401;
  v194 = v400;
  usesSuddenTermination = [v193 usesSuddenTermination];
  allowsIdleExit = [v193 allowsIdleExit];
  isTranslocated = [v193 isTranslocated];
  hardenedHeap = [v193 hardenedHeap];
  if (v193)
  {
    v197 = v193[75];
    v198 = v193[76];
    v199 = v193[77];
    v200 = v193[78];
  }

  else
  {
    v199 = 0;
    v197 = 0;
    v198 = 0;
    v200 = 0;
  }

  [v193 isRunningBoardManaged];
  [v193 isUnresponsive];
  [v193 timeOfLastResponse];
  v202 = v201;
  threads8 = [v193 threads];
  [threads8 count];
  v307 = *(v477 + 24);
  v305 = v485[3];
  v306 = v481[3];
  v303 = v497[3];
  v304 = v489[3];
  v302 = v493[3];
  v301 = v397[3];
  *&v295 = bundleVersion;
  *(&v295 + 1) = bundleShortVersion;
  [SASamplePrinter addTaskHeaderToStream:self displayName:v327 pid:v362 mainBinary:0xFFFFFFFFLL mainBinaryPath:mainBinary sharedCaches:mainBinaryPath uid:v353 bundleIdentifier:v326 bundleVersion:v202 bundleShortVersion:bundleIdentifier bundleBuildVersion:v295 bundleProjectName:bundleBuildVersion bundleSourceVersion:bundleProjectName bundleProductBuildVersion:bundleSourceVersion adamID:bundleProductBuildVersion installerVersionID:adamID developerType:installerVersionID appType:developerType isBeta:appType cohortID:isBeta vendorID:cohortID distributorID:vendorID codesigningID:codesigningID teamID:teamID resourceCoalitionSampleCounts:v352 onBehalfOfProcesses:v351 architectureString:v355 kernelVersion:v361 parentName:v357 responsibleName:v356 taskExecedFromName:v360 taskExecedToName:v358 forkTimestamp:forkTimestamp startTimestamp:startTimestamp endTimestamp:endTimestamp startSampleIndex:v372 endSampleIndex:v322 numSamples:v321 totalNumSamples:v329 numSamplesSuspended:v320 numSamplesTerminated:v319 startingTaskSize:taskSizeInBytes2 endingTaskSize:v331 maxTaskSize:v318 startSampleIndexOfMaxTaskSize:v317 endSampleIndexOfMaxTaskSize:v316 numPageins:v330 cpuTimeNs:v315 cpuInstructions:v314 cpuCycles:v313 nonThreadCpuTimeNs:v312 nonThreadCpuInstructions:v311 nonThreadCpuCycles:v194 usesSuddenTermination:usesSuddenTermination allowsIdleExit:allowsIdleExit memoryLimitStr:v189 jetsamPriorityStr:v349 isTranslocated:isTranslocated hardenedHeap:hardenedHeap mteCheckedAllocationsEnabled:v197 & 1 mteUserDataAllocationsTagged:v198 & 1 mteSoftModeEnabled:v199 & 1 mteInheritanceTurnedOn:v200 & 1 isRunningBoardManaged:? isUnresponsive:? timeOfLastResponse:? numThreads:? numIdleWorkQueueThreads:? numOtherHiddenThreads:? hieSwallowedException:? numSamplesWQExceededConstrainedThreadLimit:? numSamplesWQExceededTotalThreadLimit:? numSamplesWQExceededCooperativeThreadLimit:? numSamplesWQExceededActiveConstrainedThreadLimit:? numSamplesTALEngaged:? isRunawayMitigated:? threadsDeadlocked:? threadsBlockedByADeadlock:? ioSize:? numIOs:? isReportHeader:?];

  v51 = v501[3];
  _Block_object_dispose(&v396, 8);

  _Block_object_dispose(&v412, 8);
  _Block_object_dispose(&v416, 8);
LABEL_256:

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v428, 8);
  _Block_object_dispose(&v432, 8);
  _Block_object_dispose(&v436, 8);
  _Block_object_dispose(&v440, 8);
  _Block_object_dispose(&v444, 8);
  _Block_object_dispose(&v448, 8);
  _Block_object_dispose(&v452, 8);

  _Block_object_dispose(&v458, 8);
  _Block_object_dispose(&v464, 8);
  _Block_object_dispose(&v468, 8);
  _Block_object_dispose(&v472, 8);
  _Block_object_dispose(&v476, 8);
  _Block_object_dispose(&v480, 8);
  _Block_object_dispose(&v484, 8);
  _Block_object_dispose(&v488, 8);
  _Block_object_dispose(&v492, 8);
  _Block_object_dispose(&v496, 8);
  _Block_object_dispose(&v500, 8);
  _Block_object_dispose(&v504, 8);
  _Block_object_dispose(&v508, 8);

  v204 = *MEMORY[0x1E69E9840];
  return v51;
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke(void *a1, void *a2, void *a3, unint64_t a4)
{
  v8 = [a3 sampleCountInSampleIndexRangeStart:*(a1[4] + 56) end:*(a1[4] + 64)];
  *(*(a1[5] + 8) + 24) += v8;
  if ([a3 isSuspended])
  {
    *(*(a1[6] + 8) + 24) += v8;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  [(SAThread *)a2 cpuTimeForThreadStateIndex:a4 inTimestampRangeStart:*(a1[4] + 32) end:*(a1[4] + 40), &v10];
  v9 = v11;
  *(*(a1[7] + 8) + 32) += v10;
  *(*(a1[7] + 8) + 40) += v9;
  *(*(a1[7] + 8) + 48) += v12;
}

uint64_t __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2(void *a1, void *a2)
{
  result = [a2 sampleCountInSampleIndexRangeStart:*(a1[4] + 56) end:*(a1[4] + 64)];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(a1[5] + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, a2);
  }

  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v9 = *(*(a1[7] + 8) + 24);
  if (v9 && v9 >= [a2 taskSizeInBytes])
  {
    v19 = *(*(a1[7] + 8) + 24);
    if (v19 != [a2 taskSizeInBytes])
    {
      goto LABEL_12;
    }

    v14 = a1 + 9;
    v20 = *(*(a1[9] + 8) + 24) + 1;
    if (v20 != [a2 startSampleIndex])
    {
      goto LABEL_12;
    }

    v21 = [a2 endSampleIndex];
    v13 = *(a1[4] + 64);
    if (v21 < v13)
    {
      v13 = v21;
    }
  }

  else
  {
    *(*(a1[7] + 8) + 24) = [a2 taskSizeInBytes];
    v10 = [a2 startSampleIndex];
    v11 = *(a1[4] + 56);
    if (v10 > v11)
    {
      v11 = v10;
    }

    *(*(a1[8] + 8) + 24) = v11;
    v12 = [a2 endSampleIndex];
    v13 = *(a1[4] + 64);
    if (v12 < v13)
    {
      v13 = v12;
    }

    v14 = a1 + 9;
  }

  *(*(*v14 + 8) + 24) = v13;
LABEL_12:
  *(*(a1[10] + 8) + 24) += v5;
  if ([a2 isSuspended])
  {
    *(*(a1[11] + 8) + 24) += v5;
  }

  if (([a2 isTerminatedSnapshot] & 1) != 0 || objc_msgSend(a2, "transitionIsTerminated"))
  {
    *(*(a1[12] + 8) + 24) += v5;
  }

  if ([a2 wqExceededTotalThreadLimit])
  {
    *(*(a1[13] + 8) + 24) += v5;
  }

  if ([a2 wqExceededConstrainedThreadLimit])
  {
    *(*(a1[14] + 8) + 24) += v5;
  }

  if ([a2 wqExceededCooperativeThreadLimit])
  {
    *(*(a1[15] + 8) + 24) += v5;
  }

  if ([a2 wqExceededActiveConstrainedThreadLimit])
  {
    *(*(a1[16] + 8) + 24) += v5;
  }

  if ([a2 isTALEngaged])
  {
    *(*(a1[17] + 8) + 24) += v5;
  }

  if ([a2 isRunawayMitigated])
  {
    *(*(a1[18] + 8) + 24) = 1;
  }

  if ([a2 memoryLimitMB] != 0x80000000)
  {
    v15 = *(*(a1[19] + 8) + 24);
    if (v15 == 0x80000000 || v15 > [a2 memoryLimitMB])
    {
      *(*(a1[19] + 8) + 24) = [a2 memoryLimitMB];
    }

    v16 = *(*(a1[20] + 8) + 24);
    if (v16 == 0x80000000 || v16 < [a2 memoryLimitMB])
    {
      *(*(a1[20] + 8) + 24) = [a2 memoryLimitMB];
    }
  }

  result = [a2 effectiveJetsamPriority];
  if (result != 0x80000000)
  {
    v17 = *(*(a1[21] + 8) + 24);
    if (v17 == 0x80000000 || v17 > [a2 effectiveJetsamPriority])
    {
      *(*(a1[21] + 8) + 24) = [a2 effectiveJetsamPriority];
    }

    v18 = *(*(a1[22] + 8) + 24);
    if (v18 == 0x80000000 || (result = [a2 effectiveJetsamPriority], v18 < result))
    {
      result = [a2 effectiveJetsamPriority];
      *(*(a1[22] + 8) + 24) = result;
    }
  }

  return result;
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1537(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[7];
  v9 = v5[8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2_1538;
  v10[3] = &unk_1E86F7928;
  v16 = *(a1 + 72);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = a3;
  v14 = *(a1 + 32);
  v15 = *(a1 + 56);
  [a3 enumerateThreadStatesBetweenStartTime:v6 startSampleIndex:v8 endTime:v7 endSampleIndex:v9 reverseOrder:0 block:v10];
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2_1538(uint64_t a1, void *a2)
{
  if (*(a1 + 80) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (!v5)
  {
    if (v4 && v4 == *(a1 + 48))
    {
      return;
    }

LABEL_9:
    v7 = [a2 sampleCountInSampleIndexRangeStart:*(*(a1 + 56) + 56) end:*(*(a1 + 56) + 64)];
    *(*(*(a1 + 64) + 8) + 24) += v7;
    if ([a2 isSuspended])
    {
      *(*(*(a1 + 72) + 8) + 24) += v7;
    }

    return;
  }

  if (v4 && v4 != *(a1 + 48))
  {
    goto LABEL_9;
  }

  v6 = [a2 dispatchQueue];

  if (v5 != v6)
  {
    goto LABEL_9;
  }
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1541(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 threadStates];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [a3 threadStates];
    v18 = [v7 firstObject];

    v8 = [v18 startSampleIndex];
    v9 = [a3 threadStates];
    v10 = [v9 lastObject];

    v11 = [v10 endSampleIndex];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 24);
      if (v13 == 0x7FFFFFFFFFFFFFFFLL || v13 > v8)
      {
        *(v12 + 24) = v8;
      }
    }

    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 24);
    if (v16 == 0x7FFFFFFFFFFFFFFFLL || v16 < v11)
    {
      *(v15 + 24) = v11;
    }
  }
}

uint64_t __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1544(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 taskSizeInBytes];
  if (result)
  {
    result = [a2 taskSizeInBytes];
    *(*(*(a1 + 32) + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2_1545(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v5 = [a2 thread];
  v4 = [v3 numberWithUnsignedLongLong:{objc_msgSend(v5, "threadId")}];
  [v2 addObject:v4];
}

uint64_t __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = v4[4];
  v6 = v4[5];
  v7 = v4[7];
  v8 = v4[8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_4;
  v10[3] = &unk_1E86F79C8;
  v10[4] = *(a1 + 40);
  return [a3 enumerateThreadStatesBetweenStartTime:v5 startSampleIndex:v7 endTime:v6 endSampleIndex:v8 reverseOrder:0 block:v10];
}

uint64_t __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isIdleWorkQueue];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    *a4 = 1;
  }

  return result;
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 originPid];
  v6 = [a3 proximatePid];
  v7 = v6;
  if (v5 != -1 || v6 != -1)
  {
    v8 = *(a1 + 32);
    v9 = [a3 endTimestamp];
    v17 = [SASamplePrinter displayNameForPid:v8 aroundTimestamp:v5 includePid:v9];

    v10 = *(a1 + 32);
    v11 = [a3 endTimestamp];
    v12 = [SASamplePrinter displayNameForPid:v10 aroundTimestamp:v7 includePid:v11];

    v13 = *(*(*(a1 + 40) + 8) + 40);
    if (!v13)
    {
      v14 = objc_alloc_init(SAOnBehalfOfMultiple);
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v13 = *(*(*(a1 + 40) + 8) + 40);
    }

    [(SAOnBehalfOfMultiple *)v13 addProximateName:v12 proximatePid:v7 originName:v17 originPid:v5 count:1];
  }
}

- (__CFString)displayNameForPid:(uint64_t)pid aroundTimestamp:(uint64_t)timestamp includePid:(void *)includePid
{
  v83 = *MEMORY[0x1E69E9840];
  if (pid)
  {
    tasksByPid = [*(pid + 168) tasksByPid];
    v7 = 0x1E696A000uLL;
    v8 = [MEMORY[0x1E696AD98] numberWithInt:timestamp];
    v9 = [tasksByPid objectForKeyedSubscript:v8];

    if (includePid)
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v76 objects:v82 count:16];
      if (v11)
      {
        v12 = v11;
        timestampCopy = timestamp;
        v75 = v9;
        endTimestamp = 0;
        lastObject = 0;
        v15 = *v77;
LABEL_5:
        v16 = 0;
        v17 = endTimestamp;
        v18 = lastObject;
        while (1)
        {
          if (*v77 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v76 + 1) + 8 * v16);
          endTimestamp = [v19 endTimestamp];
          if (([endTimestamp ge:includePid] & 1) == 0)
          {
            break;
          }

          lastObject = v19;

          ++v16;
          v17 = endTimestamp;
          v18 = lastObject;
          if (v12 == v16)
          {
            v12 = [v10 countByEnumeratingWithState:&v76 objects:v82 count:16];
            if (v12)
            {
              goto LABEL_5;
            }

            goto LABEL_27;
          }
        }

        if (!v18)
        {
          v18 = v19;
          goto LABEL_26;
        }

        startTimestamp = [v19 startTimestamp];
        if ([startTimestamp le:includePid])
        {
          goto LABEL_14;
        }

        if (v17)
        {
          [v17 machContTimeSeconds];
          if (v31 == 0.0 || ([includePid machContTimeSeconds], v32 == 0.0))
          {
            [v17 machAbsTimeSeconds];
            if (v36 == 0.0 || ([includePid machAbsTimeSeconds], v37 == 0.0))
            {
              [v17 wallTime];
              if (v39 == 0.0)
              {
                goto LABEL_58;
              }

              [includePid wallTime];
              if (v40 == 0.0)
              {
                goto LABEL_58;
              }

              [v17 wallTime];
              v34 = v41;
              [includePid wallTime];
            }

            else
            {
              [v17 machAbsTimeSeconds];
              v34 = v38;
              [includePid machAbsTimeSeconds];
            }
          }

          else
          {
            [v17 machContTimeSeconds];
            v34 = v33;
            [includePid machContTimeSeconds];
          }

          v42 = v34 - v35;
          if (v42 >= 0.0)
          {
            v43 = v42;
          }

          else
          {
            v43 = -v42;
          }

          if (v42 != 0.0)
          {
            [startTimestamp machContTimeSeconds];
            if (v44 == 0.0 || ([includePid machContTimeSeconds], v45 == 0.0))
            {
              [startTimestamp machAbsTimeSeconds];
              if (v49 == 0.0 || ([includePid machAbsTimeSeconds], v50 == 0.0))
              {
                [startTimestamp wallTime];
                if (v52 == 0.0)
                {
                  goto LABEL_58;
                }

                [includePid wallTime];
                if (v53 == 0.0)
                {
                  goto LABEL_58;
                }

                [startTimestamp wallTime];
                v47 = v54;
                [includePid wallTime];
              }

              else
              {
                [startTimestamp machAbsTimeSeconds];
                v47 = v51;
                [includePid machAbsTimeSeconds];
              }
            }

            else
            {
              [startTimestamp machContTimeSeconds];
              v47 = v46;
              [includePid machContTimeSeconds];
            }

            v55 = v47 - v48;
            if (v55 != 0.0)
            {
              if (v55 < 0.0)
              {
                v55 = -v55;
              }

              if (v43 < v55)
              {
                goto LABEL_15;
              }

              goto LABEL_14;
            }
          }

LABEL_58:
          if ([v17 machContTime] && objc_msgSend(includePid, "machContTime"))
          {
            machContTime = [v17 machContTime];
            machContTime2 = [includePid machContTime];
          }

          else
          {
            if (![v17 machAbsTime] || !objc_msgSend(includePid, "machAbsTime"))
            {
              goto LABEL_14;
            }

            machContTime = [v17 machAbsTime];
            machContTime2 = [includePid machAbsTime];
          }

          if (machContTime - machContTime2 >= 0)
          {
            v58 = machContTime - machContTime2;
          }

          else
          {
            v58 = machContTime2 - machContTime;
          }

          if (machContTime != machContTime2)
          {
            if ([startTimestamp machContTime] && objc_msgSend(includePid, "machContTime"))
            {
              machContTime3 = [startTimestamp machContTime];
              machContTime4 = [includePid machContTime];
              goto LABEL_74;
            }

            if ([startTimestamp machAbsTime] && objc_msgSend(includePid, "machAbsTime"))
            {
              machContTime3 = [startTimestamp machAbsTime];
              machContTime4 = [includePid machAbsTime];
LABEL_74:
              v61 = machContTime3 - machContTime4;
              if (machContTime3 - machContTime4 < 0)
              {
                v61 = machContTime4 - machContTime3;
              }

              if (v58 < v61)
              {
                goto LABEL_15;
              }
            }
          }

LABEL_14:
          v21 = v19;

          v18 = v21;
LABEL_15:

LABEL_26:
          endTimestamp = v17;
          lastObject = v18;
LABEL_27:

          v9 = v75;
          timestamp = timestampCopy;
          v7 = 0x1E696A000;
          goto LABEL_28;
        }

        v62 = *__error();
        v63 = _sa_logt();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v64 = [v10 debugDescription];
          uTF8String = [v64 UTF8String];
          *buf = 136315138;
          v81 = uTF8String;
          _os_log_error_impl(&dword_1E0E2F000, v63, OS_LOG_TYPE_ERROR, "no earlierTaskEndTimestamp in %s", buf, 0xCu);
        }

        *__error() = v62;
        v66 = [v10 debugDescription];
        uTF8String2 = [v66 UTF8String];
        _SASetCrashLogMessage(14008, "no earlierTaskEndTimestamp in %s", v68, v69, v70, v71, v72, v73, uTF8String2);

        _os_crash();
        __break(1u);
        goto LABEL_85;
      }

      lastObject = 0;
LABEL_28:

      if (lastObject)
      {
        goto LABEL_29;
      }
    }

    else
    {
      lastObject = [v9 lastObject];
      if (lastObject)
      {
LABEL_29:
        v28 = [(SASamplePrinter *)pid displayNameForTask:lastObject includePid:0];
LABEL_30:

        goto LABEL_31;
      }
    }

    Property = *(pid + 168);
    if (Property)
    {
      Property = objc_getProperty(Property, v22, 1128, 1);
    }

    v24 = Property;
    v25 = [*(v7 + 3480) numberWithInt:timestamp];
    v26 = [v24 objectForKeyedSubscript:v25];

    if (!v26)
    {
      v27 = @"UNKNOWN";
      if (!timestamp)
      {
        v27 = @"kernel_task";
      }

      v26 = v27;
    }

    v28 = v26;

    goto LABEL_30;
  }

LABEL_85:
  v28 = 0;
LABEL_31:
  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

uint64_t __1459__SASamplePrinter_addTaskHeaderToStream_displayName_pid_mainBinary_mainBinaryPath_sharedCaches_uid_bundleIdentifier_bundleVersion_bundleShortVersion_bundleBuildVersion_bundleProjectName_bundleSourceVersion_bundleProductBuildVersion_adamID_installerVersionID_developerType_appType_isBeta_cohortID_vendorID_distributorID_codesigningID_teamID_resourceCoalitionSampleCounts_onBehalfOfProcesses_architectureString_kernelVersion_parentName_responsibleName_taskExecedFromName_taskExecedToName_forkTimestamp_startTimestamp_endTimestamp_startSampleIndex_endSampleIndex_numSamples_totalNumSamples_numSamplesSuspended_numSamplesTerminated_startingTaskSize_endingTaskSize_maxTaskSize_startSampleIndexOfMaxTaskSize_endSampleIndexOfMaxTaskSize_numPageins_cpuTimeNs_cpuInstructions_cpuCycles_nonThreadCpuTimeNs_nonThreadCpuInstructions_nonThreadCpuCycles_usesSuddenTermination_allowsIdleExit_memoryLimitStr_jetsamPriorityStr_isTranslocated_hardenedHeap_mteCheckedAllocationsEnabled_mteUserDataAllocationsTagged_mteSoftModeEnabled_mteInheritanceTurnedOn_isRunningBoardManaged_isUnresponsive_timeOfLastResponse_numThreads_numIdleWorkQueueThreads_numOtherHiddenThreads_hieSwallowedException_numSamplesWQExceededConstrainedThreadLimit_numSamplesWQExceededTotalThreadLimit_numSamplesWQExceededCooperativeThreadLimit_numSamplesWQExceededActiveConstrainedThreadLimit_numSamplesTALEngaged_isRunawayMitigated_threadsDeadlocked_threadsBlockedByADeadlock_ioSize_numIOs_isReportHeader___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v8 = [v6 compare:v7];

  if (v8)
  {
    return v8;
  }

  return [a2 compare:a3 options:577];
}

- (__CFString)timeIndexDescriptionForStartSampleIndex:(unint64_t)index endSampleIndex:(unsigned int)sampleIndex formattedToLength:
{
  v57 = *MEMORY[0x1E69E9840];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &stru_1F5BBF440;
    goto LABEL_76;
  }

  if (a2 != 0x7FFFFFFFFFFFFFFFLL && a2 > index)
  {
    v41 = *__error();
    v42 = _sa_logt();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v54 = a2;
      v55 = 2048;
      indexCopy = index;
      _os_log_error_impl(&dword_1E0E2F000, v42, OS_LOG_TYPE_ERROR, "startSampleIndex %lu > endSampleIndex %lu", buf, 0x16u);
    }

    *__error() = v41;
    _SASetCrashLogMessage(13794, "startSampleIndex %lu > endSampleIndex %lu", v43, v44, v45, v46, v47, v48, a2);
    _os_crash();
    __break(1u);
  }

  v8 = *(self + 64);
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 <= index)
    {
      goto LABEL_7;
    }
  }

  else if (v8 < a2)
  {
LABEL_7:
    if (!sampleIndex)
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (*(self + 48) == 1)
      {
        v10 = *(self + 64);
        forceOneBasedTimeIndexes = [*(self + 16) forceOneBasedTimeIndexes];
        v12 = v10 + 1;
        if (forceOneBasedTimeIndexes)
        {
          v12 -= *(self + 56);
        }
      }

      else
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v49 = v12;
      v24 = @"after time index %lu";
LABEL_38:
      v25 = v9;
LABEL_75:
      v4 = [v25 initWithFormat:v24, v49, v50, v51, v52];
      goto LABEL_76;
    }

    goto LABEL_33;
  }

  if (*(self + 56) > index)
  {
    if (!sampleIndex)
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (*(self + 48) == 1)
      {
        v13 = *(self + 56);
        forceOneBasedTimeIndexes2 = [*(self + 16) forceOneBasedTimeIndexes];
        v15 = v13 + 1;
        if (forceOneBasedTimeIndexes2)
        {
          v15 -= *(self + 56);
        }
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v49 = v15;
      v24 = @"before time index %lu";
      goto LABEL_38;
    }

LABEL_33:
    v4 = @"No samples";
    goto LABEL_76;
  }

  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (sampleIndex)
    {
      if (sampleIndex >> 1 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = sampleIndex >> 1;
      }

      v18 = (sampleIndex & 1) == 0 && sampleIndex > 3;
      v19 = (v16 - v18);
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v21 = *(self + 48);
      if (a2 == index)
      {
        if (*(self + 48))
        {
          forceOneBasedTimeIndexes3 = [*(self + 16) forceOneBasedTimeIndexes];
          v23 = index + 1;
          if (forceOneBasedTimeIndexes3)
          {
            v23 -= *(self + 56);
          }
        }

        else
        {
          v23 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v51 = v16;
        v52 = v23;
        v49 = v19;
        v50 = "";
        v24 = @"%*s %-*lu";
      }

      else
      {
        if (*(self + 48))
        {
          v31 = a2 + 1;
          if ([*(self + 16) forceOneBasedTimeIndexes])
          {
            v31 -= *(self + 56);
          }
        }

        else
        {
          v31 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (*(self + 48) == 1)
        {
          forceOneBasedTimeIndexes4 = [*(self + 16) forceOneBasedTimeIndexes];
          v36 = index + 1;
          if (forceOneBasedTimeIndexes4)
          {
            v36 -= *(self + 56);
          }
        }

        else
        {
          v36 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v51 = v16;
        v52 = v36;
        v49 = v19;
        v50 = v31;
        v24 = @"%*lu-%-*lu";
      }
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v26 = *(self + 48);
      if (a2 == index)
      {
        if (*(self + 48))
        {
          forceOneBasedTimeIndexes5 = [*(self + 16) forceOneBasedTimeIndexes];
          v28 = index + 1;
          if (forceOneBasedTimeIndexes5)
          {
            v28 -= *(self + 56);
          }
        }

        else
        {
          v28 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v49 = v28;
        v24 = @"at time index %lu";
      }

      else
      {
        if (*(self + 48))
        {
          v32 = a2 + 1;
          if ([*(self + 16) forceOneBasedTimeIndexes])
          {
            v32 -= *(self + 56);
          }
        }

        else
        {
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (*(self + 48) == 1)
        {
          forceOneBasedTimeIndexes6 = [*(self + 16) forceOneBasedTimeIndexes];
          v38 = index + 1;
          if (forceOneBasedTimeIndexes6)
          {
            v38 -= *(self + 56);
          }
        }

        else
        {
          v38 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v49 = v32;
        v50 = v38;
        v24 = @"at time indexes %lu-%lu";
      }
    }

    v25 = v20;
    goto LABEL_75;
  }

  if (sampleIndex)
  {
    goto LABEL_33;
  }

  v29 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (*(self + 48) == 1)
  {
    v30 = index + 1;
    if ([*(self + 16) forceOneBasedTimeIndexes])
    {
      v30 -= *(self + 56);
    }
  }

  else
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (*(self + 48) == 1)
  {
    forceOneBasedTimeIndexes7 = [*(self + 16) forceOneBasedTimeIndexes];
    v34 = index + 2;
    if (forceOneBasedTimeIndexes7)
    {
      v34 -= *(self + 56);
    }
  }

  else
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [v29 initWithFormat:@"between time indexes %lu and %lu", v30, v34, v51, v52];
LABEL_76:
  v39 = *MEMORY[0x1E69E9840];

  return v4;
}

- (__CFString)timeIndexDescriptionForTimestamp:(uint64_t)timestamp
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(timestamp + 48) != 1)
  {
    v13 = &stru_1F5BBF440;
    goto LABEL_46;
  }

  if ([a2 lt:*(timestamp + 32)])
  {
    [*(timestamp + 32) machAbsTimeSeconds];
    v5 = v4;
    [a2 machAbsTimeSeconds];
    v7 = v5 - v6;
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = *(timestamp + 48);
    if (v7 >= 0.1)
    {
      if (*(timestamp + 48))
      {
        v22 = *(timestamp + 56);
        forceOneBasedTimeIndexes = [*(timestamp + 16) forceOneBasedTimeIndexes];
        v24 = v22 + 1;
        if (forceOneBasedTimeIndexes)
        {
          v24 -= *(timestamp + 56);
        }
      }

      else
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v52 = v24;
      v51 = v7;
      v31 = @"%.1fs before time index %lu";
    }

    else
    {
      if (*(timestamp + 48))
      {
        v10 = *(timestamp + 56);
        forceOneBasedTimeIndexes2 = [*(timestamp + 16) forceOneBasedTimeIndexes];
        v12 = v10 + 1;
        if (forceOneBasedTimeIndexes2)
        {
          v12 -= *(timestamp + 56);
        }
      }

      else
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v51 = *&v12;
      v31 = @"<0.1s before time index %lu";
    }
  }

  else
  {
    if (![a2 gt:*(timestamp + 40)])
    {
      v25 = [*(timestamp + 168) indexOfLastSampleOnOrBeforeTimestamp:a2];
      v26 = [*(timestamp + 168) indexOfFirstSampleOnOrAfterTimestamp:a2];
      if (v25 > v26)
      {
        v41 = *__error();
        v42 = _sa_logt();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = [a2 debugDescription];
          *buf = 134218498;
          v54 = v25;
          v55 = 2048;
          v56 = v26;
          v57 = 2080;
          uTF8String = [v43 UTF8String];
          _os_log_error_impl(&dword_1E0E2F000, v42, OS_LOG_TYPE_ERROR, "indexBefore %lu > indexAfter %lu for %s", buf, 0x20u);
        }

        *__error() = v41;
        v44 = [a2 debugDescription];
        [v44 UTF8String];
        _SASetCrashLogMessage(13933, "indexBefore %lu > indexAfter %lu for %s", v45, v46, v47, v48, v49, v50, v25);

        _os_crash();
        __break(1u);
      }

      v27 = objc_alloc(MEMORY[0x1E696AEC0]);
      v28 = *(timestamp + 48);
      if (v26 == v25)
      {
        if (*(timestamp + 48))
        {
          forceOneBasedTimeIndexes3 = [*(timestamp + 16) forceOneBasedTimeIndexes];
          v30 = v25 + 1;
          if (forceOneBasedTimeIndexes3)
          {
            v30 -= *(timestamp + 56);
          }
        }

        else
        {
          v30 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v51 = *&v30;
        v31 = @"at time index %lu";
      }

      else
      {
        if (*(timestamp + 48))
        {
          v35 = v25 + 1;
          if ([*(timestamp + 16) forceOneBasedTimeIndexes])
          {
            v35 -= *(timestamp + 56);
          }
        }

        else
        {
          v35 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (*(timestamp + 48) == 1)
        {
          forceOneBasedTimeIndexes4 = [*(timestamp + 16) forceOneBasedTimeIndexes];
          v38 = v26 + 1;
          if (forceOneBasedTimeIndexes4)
          {
            v38 -= *(timestamp + 56);
          }
        }

        else
        {
          v38 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v51 = *&v35;
        v52 = v38;
        v31 = @"between time indexes %lu and %lu";
      }

      v36 = v27;
      goto LABEL_45;
    }

    [a2 machAbsTimeSeconds];
    v15 = v14;
    [*(timestamp + 40) machAbsTimeSeconds];
    v17 = v15 - v16;
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = *(timestamp + 48);
    if (v17 >= 0.1)
    {
      if (*(timestamp + 48))
      {
        v32 = *(timestamp + 64);
        forceOneBasedTimeIndexes5 = [*(timestamp + 16) forceOneBasedTimeIndexes];
        v34 = v32 + 1;
        if (forceOneBasedTimeIndexes5)
        {
          v34 -= *(timestamp + 56);
        }
      }

      else
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v52 = v34;
      v51 = v17;
      v31 = @"%.1fs after time index %lu";
    }

    else
    {
      if (*(timestamp + 48))
      {
        v19 = *(timestamp + 64);
        forceOneBasedTimeIndexes6 = [*(timestamp + 16) forceOneBasedTimeIndexes];
        v21 = v19 + 1;
        if (forceOneBasedTimeIndexes6)
        {
          v21 -= *(timestamp + 56);
        }
      }

      else
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v51 = *&v21;
      v31 = @"<0.1s after time index %lu";
    }
  }

  v36 = v8;
LABEL_45:
  v13 = [v36 initWithFormat:v31, *&v51, v52];
LABEL_46:
  v39 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)displayedBinaryLoadInfoForBinary:(uint64_t)binary segment:(void *)segment desiredLoadAddress:(uint64_t)address offsetIntoLoadInfo:(unint64_t)info isInKernelAddressSpace:(char)space exclave:(void *)exclave binariesToDisplay:(void *)display extraBinariesToDisplay:(void *)toDisplay
{
  v78 = *MEMORY[0x1E69E9840];
  if (display == toDisplay)
  {
    toDisplayCopy = 0;
  }

  else
  {
    toDisplayCopy = toDisplay;
  }

  v13 = toDisplayCopy;
  displayCopy = display;
  v14 = [display objectForKeyedSubscript:binary];
  v66 = v13;
  binaryCopy = binary;
  v15 = [v13 objectForKeyedSubscript:binary];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v17)
  {
    v18 = *v72;
    while (2)
    {
      for (i = 0; i != v17; i = (i + 1))
      {
        if (*v72 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v71 + 1) + 8 * i);
        segment = [v20 segment];
        v22 = segment;
        if (segment == segment)
        {
          exclave = [v20 exclave];

          if (exclave == exclave)
          {
            v17 = v20;
            v24 = 1;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_16:

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v25 = v15;
  v26 = [v25 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (!v26)
  {
    v34 = 0;
LABEL_33:

    if (!v17)
    {
      v37 = [SABinaryLoadInfoToDisplay alloc];
      if (v37)
      {
        *v75 = v37;
        *&v75[8] = SABinaryLoadInfoToDisplay;
        v38 = objc_msgSendSuper2(v75, sel_initWithBinary_segment_loadAddress_, binaryCopy, segment, address);
        v17 = v38;
        if (v38)
        {
          *(v38 + 40) = space;
          objc_storeStrong(v38 + 4, exclave);
        }
      }

      else
      {
        v17 = 0;
      }
    }

    infoCopy2 = info;
    v35 = v66;
    goto LABEL_38;
  }

  v27 = v26;
  v62 = v24;
  v63 = v17;
  v28 = *v68;
LABEL_18:
  v29 = 0;
  while (1)
  {
    if (*v68 != v28)
    {
      objc_enumerationMutation(v25);
    }

    v30 = *(*(&v67 + 1) + 8 * v29);
    segment2 = [v30 segment];
    v32 = segment2;
    if (segment2 == segment)
    {
      break;
    }

LABEL_24:
    if (v27 == ++v29)
    {
      v27 = [v25 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v27)
      {
        goto LABEL_18;
      }

      v34 = 0;
      v17 = v63;
      goto LABEL_32;
    }
  }

  exclave2 = [v30 exclave];

  if (exclave2 != exclave)
  {
    goto LABEL_24;
  }

  v17 = v63;
  if (!v63)
  {
    v17 = v30;
    v34 = 1;
LABEL_32:
    v24 = v62;
    goto LABEL_33;
  }

  if (v63 != v30)
  {
    v44 = *__error();
    v45 = _sa_logt();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [v63 debugDescription];
      uTF8String = [v46 UTF8String];
      v48 = [v30 debugDescription];
      uTF8String2 = [v48 UTF8String];
      *v75 = 136315394;
      *&v75[4] = uTF8String;
      *&v75[12] = 2080;
      *&v75[14] = uTF8String2;
      _os_log_error_impl(&dword_1E0E2F000, v45, OS_LOG_TYPE_ERROR, "mismatch between binaries and extra binaries: %s vs %s", v75, 0x16u);
    }

    *__error() = v44;
    v50 = [v63 debugDescription];
    uTF8String3 = [v50 UTF8String];
    v52 = [v30 debugDescription];
    [v52 UTF8String];
    _SASetCrashLogMessage(8549, "mismatch between binaries and extra binaries: %s vs %s", v53, v54, v55, v56, v57, v58, uTF8String3);

    _os_crash();
    __break(1u);
  }

  v34 = 1;
  infoCopy2 = info;
  v35 = v66;
  v24 = v62;
LABEL_38:
  if ([v17 highestOffset] < infoCopy2)
  {
    [v17 setHighestOffset:infoCopy2];
  }

  if ((v24 & 1) == 0)
  {
    if (v16)
    {
      [v16 addObject:v17];
    }

    else
    {
      v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v17, 0}];
      [displayCopy setObject:v39 forKeyedSubscript:binaryCopy];
    }
  }

  if (v35)
  {
    v40 = v34;
  }

  else
  {
    v40 = 1;
  }

  if ((v40 & 1) == 0)
  {
    if (v25)
    {
      [v25 addObject:v17];
    }

    else
    {
      v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v17, 0}];
      [v35 setObject:v41 forKeyedSubscript:binaryCopy];
    }
  }

  v42 = *MEMORY[0x1E69E9840];

  return v17;
}

void __50__SASamplePrinter_sortedLoadInfosForBinaryImages___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([a3 count] == 1)
  {
    v19 = [a3 firstObject];
    if (([*(*(a1 + 32) + 16) displayAllBinaries] & 1) == 0)
    {
      v5 = [v19 segment];
      if (v5)
      {
        v6 = v5;
        v7 = [v19 segment];
        if ([v7 hasOffsetIntoBinary])
        {
          v8 = [v19 segment];
          v9 = [v8 offsetIntoBinary];

          if (!v9)
          {
            v10 = v19;
            v11 = 1;
LABEL_17:
            [v10 setIsZerothAndOnlySegment:v11];
            [*(a1 + 40) addObject:v19];
            v18 = *MEMORY[0x1E69E9840];

            return;
          }
        }

        else
        {
        }
      }
    }

    v10 = v19;
    v11 = 0;
    goto LABEL_17;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = a3;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v20 + 1) + 8 * i) setIsZerothAndOnlySegment:0];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  [*(a1 + 40) addObjectsFromArray:v12];
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __50__SASamplePrinter_sortedLoadInfosForBinaryImages___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([a2 isInKernelAddressSpace] && !objc_msgSend(a3, "isInKernelAddressSpace"))
  {
    goto LABEL_10;
  }

  if ([a2 isInKernelAddressSpace] & 1) == 0 && (objc_msgSend(a3, "isInKernelAddressSpace"))
  {
    goto LABEL_12;
  }

  v5 = [a2 loadAddress];
  v6 = [a3 loadAddress];
  if (v5)
  {
    if (v6 - 1 >= v5)
    {
LABEL_12:
      v7 = -1;
      goto LABEL_13;
    }

    if (v5 > v6)
    {
      goto LABEL_10;
    }
  }

  else if (v6)
  {
    goto LABEL_10;
  }

  *uu1 = 0;
  v23 = 0;
  *uu2 = 0;
  v21 = 0;
  v8 = [a2 binary];
  v9 = [v8 uuid];
  [v9 getUUIDBytes:uu1];

  v10 = [a3 binary];
  v11 = [v10 uuid];
  [v11 getUUIDBytes:uu2];

  v12 = uuid_compare(uu1, uu2);
  if (v12 > 0)
  {
    goto LABEL_12;
  }

  if ((v12 & 0x80000000) == 0)
  {
    v15 = [a2 segment];
    v16 = [v15 name];

    v17 = [a3 segment];
    v18 = [v17 name];

    if (![v16 length])
    {

      v16 = 0;
    }

    if ([v18 length])
    {
      v19 = v16 != 0;
      if (v16 && v18)
      {
        v7 = [v16 compare:v18 options:577];
LABEL_25:

        goto LABEL_13;
      }
    }

    else
    {

      v18 = 0;
      v19 = v16 != 0;
    }

    if (v19)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_25;
  }

LABEL_10:
  v7 = 1;
LABEL_13:
  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

void __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a2 binary];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }

  v6 = [a2 segment];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) segment];

        if (v12 == v6)
        {

          goto LABEL_13;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [v7 addObject:a2];
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
}

void __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_2(uint64_t a1, void *a2)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_3;
  v12[3] = &unk_1E86F7AB0;
  v13 = *(a1 + 40);
  [(SATask *)a2 enumerateFrames:v12];
  v4 = [a2 mainBinaryLoadInfo];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = [v4 binary];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (!v8)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v9 = [a2 mainBinary];
    if (v9)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:v9];

      if (!v10)
      {
        v11 = [SABinaryLoadInfo binaryLoadInfoWithBinary:v9 loadAddress:0 isInKernelAddressSpace:1 exclave:0];
        (*(*(a1 + 40) + 16))();
      }
    }
  }
}

void __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a2 + 24));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      (*(*(a1 + 32) + 16))();
      WeakRetained = v5;
    }
  }

  else
  {
    WeakRetained = 0;
  }
}

uint64_t __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *uu1 = 0;
  v13 = 0;
  *uu2 = 0;
  v11 = 0;
  v4 = [a2 uuid];
  [v4 getUUIDBytes:uu1];

  v5 = [a3 uuid];
  [v5 getUUIDBytes:uu2];

  v6 = uuid_compare(uu1, uu2);
  v7 = v6 >> 31;
  if (v6 >= 1)
  {
    v7 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 segment];
  v5 = [a3 segment];
  v6 = v5;
  if (v4 == v5)
  {
    v9 = 0;
  }

  else if (v4)
  {
    if (v5)
    {
      v7 = [v4 name];
      v8 = [v6 name];
      v9 = [v7 compare:v8 options:577];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v6)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 80);
    v8 = [v5 containsObject:a2];
    if (v7 == 1)
    {
      if ((v8 & 1) == 0)
      {
        return;
      }

LABEL_14:
      v11 = *(a1 + 48);
      v10 = *(a1 + 56);
      v12 = v11[4];
      v13 = v11[5];
      v14 = v11[7];
      v15 = v11[8];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_2;
      v17[3] = &unk_1E86F7B20;
      v17[4] = *(a1 + 32);
      v17[5] = v11;
      v16 = *(a1 + 64);
      v17[6] = a3;
      v17[7] = v10;
      v18 = v16;
      v19 = *(a1 + 72);
      [a3 enumerateThreadStatesBetweenStartTime:v12 startSampleIndex:v14 endTime:v13 endSampleIndex:v15 reverseOrder:0 block:v17];

      return;
    }

    if (!v8 || ![(SASamplePrinter *)*(a1 + 48) shouldPrintTask:a3 thread:0 dispatchQueue:?])
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if ((!v5 || [v5 containsObject:a2]) && -[SASamplePrinter shouldPrintTask:thread:dispatchQueue:](*(a1 + 48), *(a1 + 56), a3, 0))
  {
LABEL_12:
    v9 = *(a1 + 48);
    if (v9)
    {
      [(SASamplePrinter *)v9 addStackForDispatchQueue:0 orSwiftTaskStates:a3 orThread:0 andThreadStateIndexes:*(a1 + 56) task:*(a1 + 64) toRootObjects:1 nameChanges:1 dispatchQueueChanges:1 swiftTaskChanges:1 threadChanges:1 priorityChanges:*(a1 + 72) microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
    }
  }
}

void __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AD98];
  v7 = [a2 dispatchQueue];
  v8 = [v6 numberWithUnsignedLongLong:{objc_msgSend(v7, "identifier")}];
  LODWORD(v5) = [v5 containsObject:v8];

  if (v5)
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v14[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    if (v10)
    {
      [(SASamplePrinter *)v10 addStackForDispatchQueue:0 orSwiftTaskStates:v9 orThread:v12 andThreadStateIndexes:*(a1 + 56) task:*(a1 + 64) toRootObjects:1 nameChanges:1 dispatchQueueChanges:1 swiftTaskChanges:1 threadChanges:1 priorityChanges:*(a1 + 72) microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

unint64_t __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_1998(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 unsignedIntValue];
  result = [a3 unsignedLongValue];
  v7 = *(*(a1 + 32) + 8);
  if (*(v7 + 24) < result)
  {
    *(v7 + 24) = result;
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }

  return result;
}

unint64_t __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_2_2000(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 unsignedLongLongValue];
  result = [a3 unsignedLongValue];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 24);
  if (v8 < result)
  {
    *(v7 + 24) = result;
    v9 = (*(*(a1 + 40) + 8) + 32);
LABEL_3:
    *v9 = v5;
    return result;
  }

  if (v8 == result)
  {
    v10 = *(*(a1 + 40) + 8);
    v12 = *(v10 + 32);
    v9 = (v10 + 32);
    v11 = v12;
    v13 = WORD2(v12);
    if (WORD2(v12) < WORD2(v5))
    {
      goto LABEL_3;
    }

    if (v13 <= WORD2(v5))
    {
      if ((v11 & 0x1000000000000000) != 0)
      {
        if ((v5 & 0x1000000000000000) == 0)
        {
          return result;
        }
      }

      else if ((v5 & 0x1000000000000000) != 0)
      {
        goto LABEL_3;
      }

      if ((v11 & 0x400000000000000) != 0)
      {
        if ((v5 & 0x400000000000000) == 0)
        {
          return result;
        }
      }

      else if ((v5 & 0x400000000000000) != 0)
      {
        goto LABEL_3;
      }

      if ((v11 & 0x800000000000000) != 0)
      {
        if ((v5 & 0x800000000000000) == 0)
        {
          return result;
        }
      }

      else if ((v5 & 0x800000000000000) != 0)
      {
        goto LABEL_3;
      }

      if ((v11 & 0x100000000000000) != 0)
      {
        if ((v5 & 0x100000000000000) == 0)
        {
          return result;
        }
      }

      else if ((v5 & 0x100000000000000) != 0)
      {
        goto LABEL_3;
      }

      if ((v11 & 0x200000000000000) != 0)
      {
        if ((v5 & 0x200000000000000) == 0)
        {
          return result;
        }
      }

      else if ((v5 & 0x200000000000000) != 0)
      {
        goto LABEL_3;
      }

      if (BYTE6(v11))
      {
        if (!BYTE6(v5))
        {
          return result;
        }

        if ((BYTE6(v11) - 1) != (BYTE6(v5) - 1))
        {
          if ((BYTE6(v11) - 1) < (BYTE6(v5) - 1))
          {
            goto LABEL_3;
          }

          return result;
        }
      }

      else if ((v5 & 0xFF000000000000) != 0)
      {
        goto LABEL_3;
      }

      if (v11 < v5)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

- (id)stacksForTask:(uint64_t)task taskSampleCount:
{
  selfCopy = self;
  v69 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = selfCopy[2];
    if (v7)
    {
      v8 = v7[19];
      if (v8)
      {
        goto LABEL_8;
      }

      if (*(v7 + 11) == 1)
      {
        do
        {
          task = *__error();
          v6 = _sa_logt();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v9 = [selfCopy[2] debugDescription];
            uTF8String = [v9 UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String;
            _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "stacksForTask without kSAAggregateCallTreesByProcess: %s", buf, 0xCu);
          }

          *__error() = task;
          selfCopy = [selfCopy[2] debugDescription];
          uTF8String2 = [selfCopy UTF8String];
          _SASetCrashLogMessage(9379, "stacksForTask without kSAAggregateCallTreesByProcess: %s", v12, v13, v14, v15, v16, v17, uTF8String2);

          _os_crash();
          __break(1u);
LABEL_8:
          ;
        }

        while (v8 == 3);
      }
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = selfCopy[2];
    if (!v19 || v19[20] != 1 && (v20 = v19[19], v20 != 3) && (v20 || (*(v19 + 11) & 1) == 0))
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
      swiftTasks = [a2 swiftTasks];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke;
      v61[3] = &unk_1E86F7E80;
      v61[4] = selfCopy;
      v62 = v21;
      v23 = v21;
      [swiftTasks enumerateKeysAndObjectsUsingBlock:v61];

      v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v23, "count")}];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke_3;
      v64 = &unk_1E86F7EC8;
      v65 = selfCopy;
      v25 = v24;
      v66 = v25;
      v67 = a2;
      taskCopy = task;
      [v23 enumerateKeysAndObjectsUsingBlock:buf];
      v26 = v25;

      [v18 addObjectsFromArray:v26];
      v19 = selfCopy[2];
      if (!v19)
      {
        goto LABEL_25;
      }
    }

    v27 = v19[19];
    if (v27)
    {
      if (v27 != 1)
      {
        if (v27 == 2)
        {
          threads = [a2 threads];
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke;
          v59[3] = &unk_1E86F7B98;
          v59[4] = selfCopy;
          v59[5] = a2;
          v29 = v60;
          v60[0] = v18;
          v60[1] = task;
          [threads enumerateKeysAndObjectsUsingBlock:v59];

LABEL_21:
          callTreeSortAttributes = [selfCopy[2] callTreeSortAttributes];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2048;
          v52[3] = &unk_1E86F7C38;
          v53 = callTreeSortAttributes;
          v34 = callTreeSortAttributes;
          [v18 sortUsingComparator:v52];
          selfCopy = [v18 copy];

          objc_autoreleasePoolPop(v6);
          goto LABEL_22;
        }

LABEL_25:
        v37 = *__error();
        v38 = _sa_logt();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = selfCopy[2];
          if (v39)
          {
            v40 = v39[19];
            if (!v40)
            {
              if (*(v39 + 11))
              {
                v40 = 3;
              }

              else
              {
                v40 = 1;
              }
            }
          }

          else
          {
            v40 = 0;
          }

          v41 = [v39 debugDescription];
          uTF8String3 = [v41 UTF8String];
          *buf = 134218242;
          *&buf[4] = v40;
          *&buf[12] = 2080;
          *&buf[14] = uTF8String3;
          _os_log_error_impl(&dword_1E0E2F000, v38, OS_LOG_TYPE_ERROR, "stacksForTask with not kSAAggregateCallTreesByDispatchQueue nor Thread %llu: %s", buf, 0x16u);
        }

        *__error() = v37;
        v43 = selfCopy[2];
        callTreeAggregationResolved = [(SASamplePrintOptions *)v43 callTreeAggregationResolved];
        v45 = [v43 debugDescription];
        [v45 UTF8String];
        _SASetCrashLogMessage(9406, "stacksForTask with not kSAAggregateCallTreesByDispatchQueue nor Thread %llu: %s", v46, v47, v48, v49, v50, v51, callTreeAggregationResolved);

        _os_crash();
        __break(1u);
      }
    }

    else if (*(v19 + 11))
    {
      goto LABEL_25;
    }

    dispatchQueues = [a2 dispatchQueues];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2;
    v57[3] = &unk_1E86F7BC0;
    v57[4] = selfCopy;
    v57[5] = a2;
    v29 = v58;
    v31 = v18;
    v58[0] = v31;
    v58[1] = task;
    [dispatchQueues enumerateKeysAndObjectsUsingBlock:v57];

    threads2 = [a2 threads];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_3;
    v54[3] = &unk_1E86F7B98;
    v54[4] = selfCopy;
    v54[5] = a2;
    v55 = v31;
    taskCopy2 = task;
    [threads2 enumerateKeysAndObjectsUsingBlock:v54];

    goto LABEL_21;
  }

LABEL_22:
  v35 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (void)printStack:(void *)stack stream:
{
  selfCopy = self;
  v255 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_295;
  }

  v6 = objc_getProperty(self, self, 56, 1);
  v8 = objc_getProperty(selfCopy, v7, 40, 1);
  v10 = objc_getProperty(selfCopy, v9, 48, 1);
  v11 = *(selfCopy + 11);
  v225 = objc_getProperty(selfCopy, v12, 64, 1);
  v212 = *(selfCopy + 12);
  v213 = *(selfCopy + 4);
  v205 = *(selfCopy + 9);
  v202 = *(selfCopy + 10);
  v14 = objc_getProperty(selfCopy, v13, 88, 1);
  v217 = selfCopy[4];
  v209 = selfCopy[5];
  v214 = selfCopy[6];
  v203 = selfCopy[7];
  v219 = *(selfCopy + 12);
  v220 = v14;
  v204 = *(selfCopy + 13);
  v216 = *(selfCopy + 13);
  v208 = *(selfCopy + 14);
  v210 = *(selfCopy + 14);
  v211 = *(selfCopy + 17);
  v218 = *(selfCopy + 18);
  v16 = *(selfCopy + 19);
  for (i = *(selfCopy + 20); ; i = 0.0)
  {
    context = objc_autoreleasePoolPush();
    stackCopy = stack;
    v223 = v6;
    selfCopy2 = self;
    v221 = v10;
    v222 = v8;
    if ([*(self + 16) printJson])
    {
      [stack appendString:@"\n\n"];
      if (![v6 count] && (objc_msgSend(v8, "count") || objc_msgSend(v10, "count")))
      {
        if (![v8 count])
        {
          if (![v10 count])
          {
LABEL_167:
            if (v219)
            {
              v118 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
              v119 = @"cpuTimeNs";
              if (v208)
              {
                v119 = @"cpuForcedIdleTimeNs";
              }

              if (v216)
              {
                v120 = @"cpuIdleTimeNs";
              }

              else
              {
                v120 = v119;
              }

              SAJSONWriteDictionaryEntry(stack, v120, v118);

              v121 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v210];
              SAJSONWriteDictionaryEntry(stack, @"cycles", v121);

              v122 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v204];
              SAJSONWriteDictionaryEntry(stack, @"intructions", v122);
            }

            if ((v217 & 0x80000000) == 0)
            {
              v123 = [MEMORY[0x1E696AD98] numberWithInt:?];
              SAJSONWriteDictionaryEntry(stack, @"minPriority", v123);

              v124 = [MEMORY[0x1E696AD98] numberWithInt:v209];
              SAJSONWriteDictionaryEntry(stack, @"maxPriority", v124);

              if ((v214 & 0x80000000) == 0)
              {
                v125 = [MEMORY[0x1E696AD98] numberWithInt:v214];
                SAJSONWriteDictionaryEntry(stack, @"minBasePriority", v125);

                v126 = [MEMORY[0x1E696AD98] numberWithInt:v203];
                SAJSONWriteDictionaryEntry(stack, @"maxBasePriority", v126);
              }
            }

            if (v225)
            {
              SAJSONWriteDictionaryEntry(stack, @"threadName", v225);
              if (v212)
              {
                SAJSONWriteDictionaryEntry(stack, @"threadNameChanges", MEMORY[0x1E695E118]);
              }
            }

            if ([v8 count])
            {
              v127 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
              v230 = 0u;
              v231 = 0u;
              v232 = 0u;
              v233 = 0u;
              v128 = v8;
              v129 = [v128 countByEnumeratingWithState:&v230 objects:v248 count:16];
              if (v129)
              {
                v130 = v129;
                v131 = *v231;
                do
                {
                  for (j = 0; j != v130; ++j)
                  {
                    if (*v231 != v131)
                    {
                      objc_enumerationMutation(v128);
                    }

                    v133 = *(*(&v230 + 1) + 8 * j);
                    null = [MEMORY[0x1E695DFB0] null];

                    if (v133 != null)
                    {
                      dispatchQueueLabel = [v133 dispatchQueueLabel];
                      if (dispatchQueueLabel)
                      {
                        [v127 addObject:dispatchQueueLabel];
                      }
                    }
                  }

                  v130 = [v128 countByEnumeratingWithState:&v230 objects:v248 count:16];
                }

                while (v130);
              }

              stack = stackCopy;
              v6 = v223;
              self = selfCopy2;
              if ([v127 count])
              {
                if ([v127 count] == 1)
                {
                  firstObject = [v127 firstObject];
                  SAJSONWriteDictionaryEntry(stackCopy, @"dispatchQueueLabel", firstObject);
                }

                else
                {
                  SAJSONWriteDictionaryEntry(stackCopy, @"dispatchQueueLabel", v127);
                }
              }

              v8 = v222;
            }

            v137 = v221;
            if (*(self + 48) == 1)
            {
              v138 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v213];
              SAJSONWriteDictionaryEntry(stack, @"numSamples", v138);

              v139 = MEMORY[0x1E696AD98];
              if (*(self + 48) == 1)
              {
                forceOneBasedTimeIndexes = [*(self + 16) forceOneBasedTimeIndexes];
                v141 = v205 + 1;
                if (forceOneBasedTimeIndexes)
                {
                  v141 -= *(self + 56);
                }
              }

              else
              {
                v141 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v142 = [v139 numberWithUnsignedInteger:v141];
              SAJSONWriteDictionaryEntry(stack, @"firstSampleIndex", v142);

              v143 = MEMORY[0x1E696AD98];
              if (*(self + 48) == 1)
              {
                forceOneBasedTimeIndexes2 = [*(self + 16) forceOneBasedTimeIndexes];
                v145 = v202 + 1;
                if (forceOneBasedTimeIndexes2)
                {
                  v145 -= *(self + 56);
                }
              }

              else
              {
                v145 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v146 = [v143 numberWithUnsignedInteger:v145];
              SAJSONWriteDictionaryEntry(stack, @"lastSampleIndex", v146);
            }

            if (v218)
            {
              v147 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
              SAJSONWriteDictionaryEntry(stack, @"numIOs", v147);

              v148 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v211];
              SAJSONWriteDictionaryEntry(stack, @"ioSize", v148);
            }

            goto LABEL_284;
          }

          if ([v10 count] == 1)
          {
            firstObject2 = [v10 firstObject];
            null2 = [MEMORY[0x1E695DFB0] null];

            if (firstObject2 == null2)
            {
              goto LABEL_152;
            }

            identifier = [firstObject2 identifier];
            if (!identifier)
            {
              goto LABEL_152;
            }

            v99 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
            SAJSONWriteDictionaryFirstEntry(stack, @"swiftTaskID", v99);
            goto LABEL_151;
          }

          v207 = selfCopy;
          v83 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
          v249 = 0u;
          v250 = 0u;
          v251 = 0u;
          v252 = 0u;
          v153 = v10;
          v154 = [v153 countByEnumeratingWithState:&v249 objects:v253 count:16];
          if (v154)
          {
            v155 = v154;
            v156 = *v250;
            do
            {
              for (k = 0; k != v155; ++k)
              {
                if (*v250 != v156)
                {
                  objc_enumerationMutation(v153);
                }

                v158 = *(*(&v249 + 1) + 8 * k);
                null3 = [MEMORY[0x1E695DFB0] null];

                if (v158 == null3)
                {
                  [v83 addObject:&unk_1F5BDCA90];
                }

                else
                {
                  v160 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v158, "identifier")}];
                  [v83 addObject:v160];
                }
              }

              v155 = [v153 countByEnumeratingWithState:&v249 objects:v253 count:16];
            }

            while (v155);
          }

          stack = stackCopy;
          SAJSONWriteDictionaryFirstEntry(stackCopy, @"swiftTaskID", v83);
LABEL_166:

          selfCopy = v207;
          v6 = v223;
          self = selfCopy2;
          v8 = v222;
          goto LABEL_167;
        }

        if ([v8 count] == 1)
        {
          firstObject3 = [v8 firstObject];
          null4 = [MEMORY[0x1E695DFB0] null];

          if (firstObject3 != null4)
          {
            identifier2 = [firstObject3 identifier];
            if (identifier2)
            {
              v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier2];
              SAJSONWriteDictionaryFirstEntry(stack, @"dispatchQueueID", v30);
            }
          }
        }

        else
        {
          v100 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
          v238 = 0u;
          v239 = 0u;
          v240 = 0u;
          v241 = 0u;
          v101 = v8;
          v102 = [v101 countByEnumeratingWithState:&v238 objects:v253 count:16];
          if (v102)
          {
            v103 = v102;
            v104 = *v239;
            do
            {
              for (m = 0; m != v103; ++m)
              {
                if (*v239 != v104)
                {
                  objc_enumerationMutation(v101);
                }

                v106 = *(*(&v238 + 1) + 8 * m);
                null5 = [MEMORY[0x1E695DFB0] null];

                if (v106 == null5)
                {
                  [v100 addObject:&unk_1F5BDCA90];
                }

                else
                {
                  v108 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v106, "identifier")}];
                  [v100 addObject:v108];
                }
              }

              v103 = [v101 countByEnumeratingWithState:&v238 objects:v253 count:16];
            }

            while (v103);
          }

          stack = stackCopy;
          SAJSONWriteDictionaryFirstEntry(stackCopy, @"dispatchQueueID", v100);

          v6 = v223;
          self = selfCopy2;
          v10 = v221;
          v8 = v222;
        }

        if (![v10 count])
        {
          goto LABEL_167;
        }

        if ([v10 count] == 1)
        {
          goto LABEL_148;
        }

        v207 = selfCopy;
        v83 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
        v234 = 0u;
        v235 = 0u;
        v236 = 0u;
        v237 = 0u;
        v84 = v10;
        v111 = [v84 countByEnumeratingWithState:&v234 objects:&v249 count:16];
        if (v111)
        {
          v112 = v111;
          v113 = *v235;
          do
          {
            for (n = 0; n != v112; ++n)
            {
              if (*v235 != v113)
              {
                objc_enumerationMutation(v84);
              }

              v115 = *(*(&v234 + 1) + 8 * n);
              null6 = [MEMORY[0x1E695DFB0] null];

              if (v115 == null6)
              {
                [v83 addObject:&unk_1F5BDCA90];
              }

              else
              {
                v117 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v115, "identifier")}];
                [v83 addObject:v117];
              }
            }

            v112 = [v84 countByEnumeratingWithState:&v234 objects:&v249 count:16];
          }

          while (v112);
        }
      }

      else
      {
        if ([v6 count] == 1)
        {
          firstObject4 = [v6 firstObject];
          SAJSONWriteDictionaryFirstEntry(stack, @"threadID", firstObject4);
        }

        else
        {
          SAJSONWriteDictionaryFirstEntry(stack, @"threadID", v6);
        }

        if ([v8 count])
        {
          if ([v8 count] == 1)
          {
            firstObject5 = [v8 firstObject];
            null7 = [MEMORY[0x1E695DFB0] null];

            if (firstObject5 != null7)
            {
              identifier3 = [firstObject5 identifier];
              if (identifier3)
              {
                v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier3];
                SAJSONWriteDictionaryEntry(stack, @"dispatchQueueID", v34);
              }
            }
          }

          else
          {
            v74 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
            v238 = 0u;
            v239 = 0u;
            v240 = 0u;
            v241 = 0u;
            v75 = v8;
            v76 = [v75 countByEnumeratingWithState:&v238 objects:v253 count:16];
            if (v76)
            {
              v77 = v76;
              v78 = *v239;
              do
              {
                for (ii = 0; ii != v77; ++ii)
                {
                  if (*v239 != v78)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v80 = *(*(&v238 + 1) + 8 * ii);
                  null8 = [MEMORY[0x1E695DFB0] null];

                  if (v80 == null8)
                  {
                    [v74 addObject:&unk_1F5BDCA90];
                  }

                  else
                  {
                    v82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v80, "identifier")}];
                    [v74 addObject:v82];
                  }
                }

                v77 = [v75 countByEnumeratingWithState:&v238 objects:v253 count:16];
              }

              while (v77);
            }

            stack = stackCopy;
            SAJSONWriteDictionaryEntry(stackCopy, @"dispatchQueueID", v74);

            v6 = v223;
            self = selfCopy2;
            v10 = v221;
            v8 = v222;
          }
        }

        if (![v10 count])
        {
          goto LABEL_167;
        }

        if ([v10 count] == 1)
        {
LABEL_148:
          firstObject2 = [v10 firstObject];
          null9 = [MEMORY[0x1E695DFB0] null];

          if (firstObject2 == null9)
          {
            goto LABEL_152;
          }

          identifier4 = [firstObject2 identifier];
          if (!identifier4)
          {
            goto LABEL_152;
          }

          v99 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier4];
          SAJSONWriteDictionaryEntry(stack, @"swiftTaskID", v99);
LABEL_151:

LABEL_152:
          goto LABEL_167;
        }

        v207 = selfCopy;
        v83 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
        v234 = 0u;
        v235 = 0u;
        v236 = 0u;
        v237 = 0u;
        v84 = v10;
        v85 = [v84 countByEnumeratingWithState:&v234 objects:&v249 count:16];
        if (v85)
        {
          v86 = v85;
          v87 = *v235;
          do
          {
            for (jj = 0; jj != v86; ++jj)
            {
              if (*v235 != v87)
              {
                objc_enumerationMutation(v84);
              }

              v89 = *(*(&v234 + 1) + 8 * jj);
              null10 = [MEMORY[0x1E695DFB0] null];

              if (v89 == null10)
              {
                [v83 addObject:&unk_1F5BDCA90];
              }

              else
              {
                v91 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v89, "identifier")}];
                [v83 addObject:v91];
              }
            }

            v86 = [v84 countByEnumeratingWithState:&v234 objects:&v249 count:16];
          }

          while (v86);
        }
      }

      stack = stackCopy;
      SAJSONWriteDictionaryEntry(stackCopy, @"swiftTaskID", v83);
      goto LABEL_166;
    }

    [stack printWithFormat:@"%*s", 2, ""];
    v206 = selfCopy;
    if ([v6 count])
    {
      obj = v11;
      v240 = 0u;
      v241 = 0u;
      v238 = 0u;
      v239 = 0u;
      v18 = v6;
      v19 = [v18 countByEnumeratingWithState:&v238 objects:v253 count:16];
      if (v19)
      {
        v20 = v19;
        v201 = 0;
        v22 = *v239;
        v23 = @"Thread ";
        do
        {
          for (kk = 0; kk != v20; ++kk)
          {
            if (*v239 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v25 = *(*(&v238 + 1) + 8 * kk);
            v26 = [stackCopy appendString:v23] + v201;
            v201 = v26 + [stackCopy printWithFormat:@"0x%llx", objc_msgSend(v25, "unsignedLongLongValue")];
            v23 = @",";
          }

          v20 = [v18 countByEnumeratingWithState:&v238 objects:v253 count:16];
          v23 = @",";
        }

        while (v20);
      }

      else
      {
        v201 = 0;
      }

      stack = stackCopy;
      if (obj)
      {
        v201 += [stackCopy appendString:@" (idle work queue)"];
      }

      self = selfCopy2;
      v10 = v221;
    }

    else
    {
      v201 = 0;
    }

    if ([v10 count] > 1 || objc_msgSend(v10, "count") == 1 && (objc_msgSend(v10, "firstObject"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DFB0], "null"), v36 = objc_claimAutoreleasedReturnValue(), v36, v35, v35 != v36))
    {
      if (v201)
      {
        [stack printWithFormat:@"%*s", 4, ""];
      }

      v236 = 0u;
      v237 = 0u;
      v234 = 0u;
      v235 = 0u;
      v37 = v10;
      v38 = [v37 countByEnumeratingWithState:&v234 objects:&v249 count:16];
      if (v38)
      {
        v39 = v38;
        v201 = 0;
        v40 = *v235;
        v41 = 1;
        do
        {
          for (mm = 0; mm != v39; ++mm)
          {
            if (*v235 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v43 = *(*(&v234 + 1) + 8 * mm);
            if (v41)
            {
              v44 = stackCopy;
              v45 = [stackCopy appendString:@"Swift Task"] + v201;
              v46 = v45 + [stackCopy appendString:@" "];
            }

            else
            {
              v44 = stackCopy;
              v46 = [stackCopy appendString:{@", "}] + v201;
            }

            null11 = [MEMORY[0x1E695DFB0] null];

            if (v43 == null11)
            {
              v48 = [v44 appendString:@"none"];
            }

            else if ([v43 identifier] == -1)
            {
              v48 = [v44 printWithFormat:@"%@", @"UNKNOWN"];
            }

            else
            {
              v48 = [v44 printWithFormat:@"%llu", objc_msgSend(v43, "identifier")];
            }

            v41 = 0;
            v201 = v48 + v46;
          }

          v39 = [v37 countByEnumeratingWithState:&v234 objects:&v249 count:16];
          v41 = 0;
        }

        while (v39);
      }

      else
      {
        v201 = 0;
      }

      stack = stackCopy;
      v6 = v223;
      self = selfCopy2;
      v8 = v222;
    }

    if ([v8 count] > 1 || objc_msgSend(v8, "count") == 1 && (objc_msgSend(v8, "firstObject"), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DFB0], "null"), v50 = objc_claimAutoreleasedReturnValue(), v50, v49, v49 != v50))
    {
      if (v201)
      {
        [stack printWithFormat:@"%*s", 4, ""];
      }

      v232 = 0u;
      v233 = 0u;
      v230 = 0u;
      v231 = 0u;
      obja = v8;
      v51 = [obja countByEnumeratingWithState:&v230 objects:v248 count:16];
      if (v51)
      {
        v52 = v51;
        v201 = 0;
        v53 = 1;
        v54 = *v231;
        do
        {
          for (nn = 0; nn != v52; ++nn)
          {
            if (*v231 != v54)
            {
              objc_enumerationMutation(obja);
            }

            v56 = *(*(&v230 + 1) + 8 * nn);
            null12 = [MEMORY[0x1E695DFB0] null];
            if (v56 == null12)
            {
              v58 = 0;
            }

            else
            {
              v58 = v56;
            }

            v59 = v58;

            if (v53)
            {
              v60 = [stackCopy appendString:@"DispatchQueue"] + v201;
              v61 = v60 + [stackCopy appendString:@" "];
            }

            else
            {
              v61 = [stackCopy appendString:{@", "}] + v201;
            }

            v62 = [SASamplePrinter displayNameForDispatchQueue:v59];
            v201 = [stackCopy printWithFormat:@"%@", v62] + v61;

            v53 = 0;
          }

          v52 = [obja countByEnumeratingWithState:&v230 objects:v248 count:16];
          v53 = 0;
        }

        while (v52);
      }

      else
      {
        v201 = 0;
      }

      stack = stackCopy;
      v6 = v223;
      self = selfCopy2;
      v8 = v222;
    }

    if (v225)
    {
      if (v201)
      {
        [stack printWithFormat:@"%*s", 4, ""];
      }

      v63 = SACopySanitizedString(v225, 1, 0);
      v64 = v63;
      if (v212)
      {
        v65 = @"Thread name %@ (changed)";
      }

      else
      {
        v65 = @"Thread name %@";
      }

      v201 = [stack printWithFormat:v65, v63];
    }

    if (*(self + 48) != 1)
    {
      if (v220)
      {
        [v220 machAbsTimeSeconds];
        v70 = v69;
        [*(self + 32) machAbsTimeSeconds];
        v72 = v70 - v71;
        if (v72 > 0.0)
        {
          if (v72 >= 0.01)
          {
            v73 = [stack printWithFormat:@"(not sampled for first %.2fs)", *&v72];
          }

          else
          {
            v73 = [stack appendString:@"(not sampled for first <0.01s)"];
          }

          v201 += v73;
        }
      }

      goto LABEL_236;
    }

    if (v201)
    {
      [stack printWithFormat:@"%*s", 4, ""];
    }

    if (v213 == 1)
    {
      v66 = "";
    }

    else
    {
      v66 = "s";
    }

    v201 = [stack printWithFormat:@"%lu sample%s", v213, v66, v201];
    if (v205 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_236;
    }

    if (*(self + 48) == 1)
    {
      forceOneBasedTimeIndexes3 = [*(self + 16) forceOneBasedTimeIndexes];
      v68 = v205 + 1;
      if (forceOneBasedTimeIndexes3)
      {
        v68 -= *(self + 56);
      }
    }

    else
    {
      v68 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v92 = objc_msgSend(stack, "printWithFormat:", @" (%lu"), v68 + v201;
    v93 = v202 - v205;
    selfCopy = v213;
    if (v202 != v205)
    {
      if (*(self + 48) == 1)
      {
        forceOneBasedTimeIndexes4 = [*(self + 16) forceOneBasedTimeIndexes];
        v95 = v202 + 1;
        if (forceOneBasedTimeIndexes4)
        {
          v95 -= *(self + 56);
        }
      }

      else
      {
        v95 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v92 += [stack printWithFormat:@"-%lu", v95];
    }

    if ([*(self + 16) printHeavyStacks])
    {
      goto LABEL_215;
    }

    if (v93 + 1 >= v213)
    {
      break;
    }

    v184 = *__error();
    v185 = _sa_logt();
    if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v243 = v202;
      v244 = 2048;
      v245 = v205;
      v246 = 2048;
      v247 = v213;
      _os_log_error_impl(&dword_1E0E2F000, v185, OS_LOG_TYPE_ERROR, "lastSampleIndex %lu - firstSampleIndex %lu + 1 < count %lu", buf, 0x20u);
    }

    *__error() = v184;
    v201 = v213;
    _SASetCrashLogMessage(10684, "lastSampleIndex %lu - firstSampleIndex %lu + 1 < count %lu", v186, v187, v188, v189, v190, v191, v202);
    _os_crash();
    __break(1u);
LABEL_295:
    v210 = 0;
    v211 = 0;
    v216 = 0;
    v203 = 0;
    v204 = 0;
    v209 = 0;
    v219 = 0;
    v220 = 0;
    v205 = 0;
    v212 = 0;
    v11 = 0;
    v8 = 0;
    v6 = 0;
    v10 = 0;
    v225 = 0;
    v213 = 0;
    v214 = 0;
    v202 = 0;
    v217 = 0;
    v218 = 0;
    v208 = 0;
    v16 = 0.0;
  }

  if (v93 + 1 != v213)
  {
    v92 += [stack printWithFormat:@" with gaps of %d", v93 + 1 - v213];
  }

LABEL_215:
  if (v220)
  {
    v149 = [*(self + 168) indexOfFirstSampleOnOrAfterTimestamp:?];
    if (v149)
    {
      v150 = v149;
      if (v149 != 0x7FFFFFFFFFFFFFFFLL && v149 <= v205)
      {
        if (*(self + 48) == 1)
        {
          forceOneBasedTimeIndexes5 = [*(self + 16) forceOneBasedTimeIndexes];
          v152 = v150 + 1;
          if (forceOneBasedTimeIndexes5)
          {
            v152 -= *(self + 56);
          }
        }

        else
        {
          v152 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v92 += [stack printWithFormat:@", not sampled before %lu", v152];
      }
    }
  }

  v201 = [stack appendString:@""]) + v92;
LABEL_236:
  v161 = v217;
  if ((v217 & 0x80000000) == 0)
  {
    if (v201)
    {
      [stack printWithFormat:@"%*s", 4, ""];
      v161 = v217;
    }

    v162 = v161;
    v201 = [stack printWithFormat:@"priority %d", v161];
    if (v162 != v209)
    {
      v201 += [stack printWithFormat:@"-%d", v209];
    }

    if ((v214 & 0x80000000) == 0)
    {
      v163 = objc_msgSend(stack, "printWithFormat:", @" (base %d"), v214 + v201;
      if (v214 != v203)
      {
        v163 += [stack printWithFormat:@"-%d", v203];
      }

      v201 = [stack appendString:@""]) + v163;
    }
  }

  if (v219)
  {
    if (v201)
    {
      [stack printWithFormat:@"%*s", 4, ""];
    }

    v164 = @"cpu time ";
    if (v208)
    {
      v164 = @"forced idle time ";
    }

    if (v216)
    {
      v165 = @"idle time ";
    }

    else
    {
      v165 = v164;
    }

    v166 = [stack appendString:v165];
    if ([*(self + 16) displayDetailedCpuTime])
    {
      v167 = 9;
    }

    else
    {
      v167 = 3;
    }

    v201 = saos_printf_seconds(stack, v219, v167) + v166;
    if (v210)
    {
      v201 += saos_printf_cycles_instructions(stack, v210, v204, [*(self + 16) displayDetailedCpuTime]);
    }
  }

  if (v16 > 0.0 && (([*(self + 16) displayDetailedCpuTime] & 1) != 0 || -[SASamplePrinter shouldPrintTimeOutsideSamplingRange:](self, v16)))
  {
    if (v201)
    {
      [stack printWithFormat:@"%*s", 4, ""];
    }

    v168 = [stack appendString:@"last ran "];
    if ([*(self + 16) displayDetailedCpuTime])
    {
      v169 = 9;
    }

    else
    {
      v169 = 3;
    }

    v170 = saos_printf_seconds(stack, (v16 * 1000000000.0), v169);
    v201 = v170 + v168 + [stack appendString:@" ago"];
  }

  if (!(v216 & 1 | (i <= 0.0)) && (([*(self + 16) displayDetailedCpuTime] & 1) != 0 || -[SASamplePrinter shouldPrintTimeOutsideSamplingRange:](self, i)))
  {
    if (v201)
    {
      [stack printWithFormat:@"%*s", 4, ""];
    }

    v171 = [stack appendString:@"runnable before first sample for "];
    if ([*(self + 16) displayDetailedCpuTime])
    {
      v172 = 9;
    }

    else
    {
      v172 = 3;
    }

    v201 = saos_printf_seconds(stack, (i * 1000000000.0), v172) + v171;
  }

  v173 = v218;
  if (v218)
  {
    if (v201)
    {
      [stack printWithFormat:@"%*s", 4, ""];
      v173 = v218;
    }

    if (v173 == 1)
    {
      v174 = "";
    }

    else
    {
      v174 = "s";
    }

    v175 = v173;
    v176 = SAFormattedBytesEx(v211, 1, 0, 1, 0);
    [stack printWithFormat:@"%lu I/O%s (%@)", v175, v174, v176];
  }

  [stack appendString:@"\n"];
  selfCopy = v206;
  v137 = v221;
LABEL_284:
  objc_autoreleasePoolPop(context);

  if (!selfCopy)
  {
    goto LABEL_291;
  }

  if (!*(selfCopy + 4) || objc_getProperty(selfCopy, v177, 120, 1))
  {
    if (objc_getProperty(selfCopy, v177, 120, 1))
    {
      v229 = objc_getProperty(selfCopy, v178, 120, 1);
      v179 = *(selfCopy + 4);
      v181 = objc_getProperty(selfCopy, v180, 128, 1);
      [(SASamplePrinter *)self addStack:v229 toStream:stack sampleCount:v179 binariesToDisplay:v181 primaryState:0 primaryMicrostackshotState:0 onlyHeaviestStack:0 isKernel:*(selfCopy + 15) & 1];

      v182 = *MEMORY[0x1E69E9840];

      return;
    }

LABEL_291:
    v183 = *MEMORY[0x1E69E9840];
    return;
  }

  v192 = *__error();
  v193 = _sa_logt();
  if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
  {
    v194 = *(selfCopy + 4);
    *v253 = 134217984;
    v254 = v194;
    _os_log_error_impl(&dword_1E0E2F000, v193, OS_LOG_TYPE_ERROR, "%lu count, but no rootObjects", v253, 0xCu);
  }

  *__error() = v192;
  _SASetCrashLogMessage(9966, "%lu count, but no rootObjects", v195, v196, v197, v198, v199, v200, *(selfCopy + 4));
  _os_crash();
  __break(1u);
}

void __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([(SASamplePrinter *)*(a1 + 32) shouldPrintTask:a3 thread:0 dispatchQueue:?])
  {
    v5 = *(a1 + 48);
    v6 = -[SASamplePrinter stackForThread:threadStateIndexes:task:taskSampleCount:isTarget:](*(a1 + 32), a3, 0, *(a1 + 40), *(a1 + 56), [a3 threadId] == objc_msgSend(*(*(a1 + 32) + 168), "targetThreadId"));
    [v5 addObject:v6];
  }
}

- (SAStack)stackForThread:(void *)thread threadStateIndexes:(void *)indexes task:(uint64_t)task taskSampleCount:(BOOL)count isTarget:
{
  if (self)
  {
    v12 = objc_alloc_init(SAStack);
    v13 = [indexes pid];
    if (v12)
    {
      v12->_isKernel = v13 == 0;
      v12->_isMainThread = [a2 isMainThread];
      v12->_isTargetCallTree = count;
    }

    else
    {
      [a2 isMainThread];
    }

    v14 = objc_alloc(MEMORY[0x1E695DF70]);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "threadId")}];
    v17 = [v14 initWithObjects:{v15, 0}];
    if (v12)
    {
      objc_setProperty_atomic(v12, v16, v17, 56);
    }

    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if (v12)
    {
      objc_setProperty_atomic(v12, v18, v19, 40);
    }

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v12)
    {
      objc_setProperty_atomic(v12, v20, v21, 48);
    }

    v22 = [(SASamplePrinter *)self binaryImagesHitByTask:indexes];
    v24 = v22;
    if (v12)
    {
      objc_setProperty_atomic(v12, v23, v22, 128);

      [(SASamplePrinter *)self addHeaderForDispatchQueue:0 orSwiftTaskStates:a2 orThread:thread andThreadStateIndexes:v12 toStack:indexes task:task taskSampleCount:?];
      if (!v12->_omit && v12->_count)
      {
        v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
        threadNameChanges = v12->_threadNameChanges;
        v27 = [(NSMutableArray *)v12->_dispatchQueues count];
        v28 = [(NSMutableArray *)v12->_swiftTasks count];
        v29 = [(NSMutableArray *)v12->_threadIds count];
        v30 = v12->_minPriority != v12->_maxPriority || v12->_minBasePriority != v12->_maxBasePriority;
        [(SASamplePrinter *)self addStackForDispatchQueue:0 orSwiftTaskStates:a2 orThread:thread andThreadStateIndexes:indexes task:v25 toRootObjects:threadNameChanges nameChanges:v27 > 1 dispatchQueueChanges:v28 > 1 swiftTaskChanges:v29 > 1 threadChanges:v30 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
        if ([*(self + 16) printHeavyStacks])
        {
          [(SASamplePrinter *)self sortHeavyCallTree:v25];
        }

        objc_setProperty_atomic(v12, v31, v25, 120);
      }
    }

    else
    {

      [(SASamplePrinter *)self addHeaderForDispatchQueue:0 orSwiftTaskStates:a2 orThread:thread andThreadStateIndexes:0 toStack:indexes task:task taskSampleCount:?];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (!v3 || [a3 hasConcurrentExecution] && !objc_msgSend(*(v3 + 16), "printHeavyStacks"))
  {
    v32 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = a1[5];
  v7 = [*(a1[4] + 168) targetProcess];
  if (v6 == v7)
  {
    v9 = [a3 identifier];
    v8 = v9 == [*(a1[4] + 168) targetDispatchQueueId];
  }

  else
  {
    v8 = 0;
  }

  v10 = a1[6];
  v11 = a1[4];
  if (v11)
  {
    v12 = *(v11 + 16);
    if (!v12 || (v13 = a1[5], v14 = a1[7], v15 = *(v12 + 152), v15 != 1) && (v15 || *(v12 + 11) == 1))
    {
      v35 = *__error();
      v36 = _sa_logt();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = *(v11 + 16);
        if (v37)
        {
          v38 = *(v37 + 152);
          if (!v38)
          {
            if (*(v37 + 11))
            {
              v38 = 3;
            }

            else
            {
              v38 = 1;
            }
          }
        }

        else
        {
          v38 = 0;
        }

        v39 = [v37 debugDescription];
        *buf = 134218242;
        v52 = v38;
        v53 = 2080;
        v54 = [v39 UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_ERROR, "stackForDispatchQueue, but not kSAAggregateCallTreesByDispatchQueue %llu: %s", buf, 0x16u);
      }

      *__error() = v35;
      v40 = *(v11 + 16);
      v41 = [(SASamplePrintOptions *)v40 callTreeAggregationResolved];
      v42 = [v40 debugDescription];
      [v42 UTF8String];
      _SASetCrashLogMessage(13117, "stackForDispatchQueue, but not kSAAggregateCallTreesByDispatchQueue %llu: %s", v43, v44, v45, v46, v47, v48, v41);

      _os_crash();
      __break(1u);
    }

    self = objc_alloc_init(SAStack);
    v16 = [v13 pid];
    if (self)
    {
      self->_isKernel = v16 == 0;
      self->_isTargetCallTree = v8;
    }

    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    if (self)
    {
      objc_setProperty_atomic(self, v17, v18, 56);
    }

    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a3, 0}];
    if (self)
    {
      objc_setProperty_atomic(self, v19, v20, 40);
    }

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self)
    {
      objc_setProperty_atomic(self, v21, v22, 48);
    }

    v24 = [(SASamplePrinter *)v11 binaryImagesHitByTask:v13];
    if (self)
    {
      objc_setProperty_atomic(self, v23, v24, 128);

      [(SASamplePrinter *)v11 addHeaderForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 toStack:self task:v13 taskSampleCount:v14];
      v25 = self;
      if (!self->_omit && self->_count)
      {
        v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        threadNameChanges = self->_threadNameChanges;
        v28 = [(NSMutableArray *)self->_dispatchQueues count];
        v29 = [(NSMutableArray *)self->_swiftTasks count];
        v30 = [(NSMutableArray *)self->_threadIds count];
        v31 = self->_minPriority != self->_maxPriority || self->_minBasePriority != self->_maxBasePriority;
        [(SASamplePrinter *)v11 addStackForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 task:v13 toRootObjects:v26 nameChanges:threadNameChanges dispatchQueueChanges:v28 > 1 swiftTaskChanges:v29 > 1 threadChanges:v30 > 1 priorityChanges:v31 microstackshotSummary:0 onlyHeaviestStack:0 includeState:1];
        if ([*(v11 + 16) printHeavyStacks])
        {
          [(SASamplePrinter *)v11 sortHeavyCallTree:v26];
        }

        objc_setProperty_atomic(self, v33, v26, 120);

        v25 = self;
      }

      goto LABEL_30;
    }

    [(SASamplePrinter *)v11 addHeaderForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 toStack:0 task:v13 taskSampleCount:v14];
  }

  v25 = 0;
LABEL_30:
  selfa = v25;
  [v10 addObject:v25];
  v34 = *MEMORY[0x1E69E9840];
}

void __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_3(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v65 = *MEMORY[0x1E69E9840];
  if (![(SASamplePrinter *)*(a1 + 32) shouldPrintTask:a3 thread:0 dispatchQueue:?])
  {
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  if (!v9)
  {
    v50 = 0;
    [v8 addObjectsFromArray:0];
    goto LABEL_43;
  }

  v10 = *(v9 + 16);
  if (!v10 || (v3 = *(a1 + 40), v11 = *(a1 + 56), v12 = *(v10 + 152), v12 != 1) && (v12 || *(v10 + 11) == 1))
  {
    v11 = *__error();
    v34 = _sa_logt();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = *(v9 + 16);
      if (v35)
      {
        v3 = *(v35 + 152);
        if (!v3)
        {
          if (*(v35 + 11))
          {
            v3 = 3;
          }

          else
          {
            v3 = 1;
          }
        }
      }

      else
      {
        v3 = 0;
      }

      v6 = [v35 debugDescription];
      *buf = 134218242;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = [v6 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v34, OS_LOG_TYPE_ERROR, "stacksForThread, but not kSAAggregateCallTreesByDispatchQueue %llu: %s", buf, 0x16u);
    }

    *__error() = v11;
    v36 = *(v9 + 16);
    v9 = [(SASamplePrintOptions *)v36 callTreeAggregationResolved];
    v8 = [v36 debugDescription];
    v37 = v8;
    [v8 UTF8String];
    _SASetCrashLogMessage(9779, "stacksForThread, but not kSAAggregateCallTreesByDispatchQueue %llu: %s", v38, v39, v40, v41, v42, v43, v9);

    _os_crash();
    __break(1u);
    goto LABEL_38;
  }

  v13 = [*(v9 + 168) targetDispatchQueueId];
  if (!v13)
  {
    if ([v6 isMainThread])
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v14 = [*(v9 + 168) targetProcess];
  v5 = v14;
  if (v14 == v3)
  {

LABEL_18:
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 1;
    v21 = *(v9 + 32);
    v22 = *(v9 + 40);
    v23 = *(v9 + 56);
    v24 = *(v9 + 64);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __56__SASamplePrinter_stacksForThread_task_taskSampleCount___block_invoke;
    v59 = &unk_1E86F7C60;
    v60 = v9;
    v61 = v3;
    v64 = &v54;
    v62 = v6;
    v4 = v20;
    v63 = v4;
    [v6 enumerateThreadStatesBetweenStartTime:v21 startSampleIndex:v23 endTime:v22 endSampleIndex:v24 reverseOrder:0 block:buf];
    if ([v4 count] != 1 || *(v55 + 24) != 1)
    {
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __56__SASamplePrinter_stacksForThread_task_taskSampleCount___block_invoke_2;
      v51[3] = &unk_1E86F7C88;
      v51[4] = v9;
      v51[5] = v3;
      v51[6] = v6;
      v31 = v30;
      v52 = v31;
      v53 = v11;
      [v4 enumerateKeysAndObjectsUsingBlock:v51];
      v32 = v52;
      v33 = v31;

      v50 = v33;
LABEL_42:

      _Block_object_dispose(&v54, 8);
      [v8 addObjectsFromArray:v50];
      goto LABEL_43;
    }

    v25 = [*(v9 + 168) targetThreadId];
    v26 = *(v9 + 168);
    if (!v25)
    {
      if ([v26 targetDispatchQueueId])
      {
        v28 = [*(v9 + 168) targetProcess];
        if (v28 != v3)
        {
          v29 = 0;
          goto LABEL_40;
        }

LABEL_39:
        v45 = [v4 allKeys];
        v46 = [v45 firstObject];
        v47 = [v46 unsignedLongLongValue];
        v29 = v47 == [*(v9 + 168) targetDispatchQueueId];

        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if ([v26 targetDispatchQueueId])
    {
      v27 = [v6 threadId];
      if (v27 == [*(v9 + 168) targetThreadId])
      {
        v28 = [*(v9 + 168) targetProcess];
        if (v28 != v3)
        {
          v29 = 0;
LABEL_40:

          goto LABEL_41;
        }

        goto LABEL_39;
      }

LABEL_29:
      v29 = 0;
LABEL_41:
      v48 = objc_alloc(MEMORY[0x1E695DEC8]);
      v33 = [(SASamplePrinter *)v9 stackForThread:v6 threadStateIndexes:0 task:v3 taskSampleCount:v11 isTarget:v29];
      v50 = [v48 initWithObjects:{v33, 0}];
      goto LABEL_42;
    }

LABEL_38:
    v44 = [v6 threadId];
    v29 = v44 == [*(v9 + 168) targetThreadId];
    goto LABEL_41;
  }

  if (([v6 isMainThread] & 1) == 0)
  {
LABEL_13:
    v16 = [v6 threadId];
    v17 = [*(v9 + 168) targetThreadId];
    if (v13)
    {
    }

    if (v16 == v17)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_16:
  v18 = objc_alloc(MEMORY[0x1E695DEC8]);
  v19 = -[SASamplePrinter stackForThread:threadStateIndexes:task:taskSampleCount:isTarget:](v9, v6, 0, v3, v11, [v6 threadId] == objc_msgSend(*(v9 + 168), "targetThreadId"));
  v50 = [v18 initWithObjects:{v19, 0}];

  [v8 addObjectsFromArray:v50];
LABEL_43:
  v49 = *MEMORY[0x1E69E9840];
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (a2 && (*(a2 + 10) & 1) != 0)
  {
    if (!a3 || (*(a3 + 10) & 1) == 0)
    {
      v7 = -1;
      goto LABEL_69;
    }
  }

  else if (a3 && (*(a3 + 10) & 1) != 0)
  {
    v7 = 1;
    goto LABEL_69;
  }

  context = v6;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2_2049;
  v40[3] = &unk_1E86F7778;
  v40[4] = a2;
  v40[5] = a3;
  v29 = MEMORY[0x1E12EBE50](v40);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_3_2050;
  v39[3] = &unk_1E86F7778;
  v39[4] = a2;
  v39[5] = a3;
  v28 = MEMORY[0x1E12EBE50](v39);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_4;
  v38[3] = &unk_1E86F7778;
  v38[4] = a2;
  v38[5] = a3;
  v27 = MEMORY[0x1E12EBE50](v38);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_5;
  v37[3] = &unk_1E86F7778;
  v37[4] = a2;
  v37[5] = a3;
  v25 = MEMORY[0x1E12EBE50](v37);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_6;
  v36[3] = &unk_1E86F7778;
  v36[4] = a2;
  v36[5] = a3;
  v26 = MEMORY[0x1E12EBE50](v36);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_7;
  v35[3] = &unk_1E86F7BE8;
  v35[4] = a2;
  v35[5] = a3;
  v8 = MEMORY[0x1E12EBE50](v35);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_8;
  v34[3] = &unk_1E86F7C10;
  v34[4] = a2;
  v34[5] = a3;
  v9 = MEMORY[0x1E12EBE50](v34);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = a1;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
LABEL_11:
    v14 = 0;
    while (1)
    {
      if (*v31 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = [*(*(&v30 + 1) + 8 * v14) unsignedLongLongValue];
      v16 = v15;
      v17 = v15 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v15 & 0x7FFFFFFFFFFFFFFFuLL) > 5)
      {
        if ((v17 - 7) >= 4)
        {
          if (v17 == 6)
          {
            v18 = v8[2](v8, 0);
LABEL_36:
            if (v18)
            {
LABEL_64:
              if (v16 >= 0)
              {
                v7 = v18;
              }

              else
              {
                v7 = -v18;
              }

              goto LABEL_68;
            }

            goto LABEL_37;
          }

          if (v17 == 11)
          {
            v19 = v25[2];
            goto LABEL_33;
          }
        }

        else
        {
          v18 = v9[2](v9);
          if (v18)
          {
            goto LABEL_64;
          }
        }
      }

      else if ((v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 2)
      {
        if (v17 == 1)
        {
          v18 = v29[2]();
          if (v18)
          {
            goto LABEL_64;
          }
        }

        else if (v17 == 2)
        {
          v19 = v28[2];
          goto LABEL_33;
        }
      }

      else
      {
        switch(v17)
        {
          case 3:
            v19 = v27[2];
LABEL_33:
            v18 = v19();
            if (v18)
            {
              goto LABEL_64;
            }

            break;
          case 4:
            v19 = v26[2];
            goto LABEL_33;
          case 5:
            v18 = v8[2](v8, 1);
            goto LABEL_36;
        }
      }

LABEL_37:
      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v30 objects:v41 count:16];
        if (v12)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  if (([*(v23 + 32) containsObject:&unk_1F5BDCA78] & 1) == 0 && (objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCAD8) & 1) == 0)
  {
    v20 = v29[2]();
    if (v20)
    {
      goto LABEL_63;
    }
  }

  if ((([*(v23 + 32) containsObject:&unk_1F5BDCB80] & 1) != 0 || (objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCB98) & 1) != 0 || (v20 = (v9[2])(v9, 7)) == 0) && ((objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCBB0) & 1) != 0 || (objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCBC8) & 1) != 0 || (v20 = v8[2](v8, 0)) == 0) && ((objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCBE0) & 1) != 0 || (objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCBF8) & 1) != 0 || (v20 = v8[2](v8, 1)) == 0) && ((objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCAF0) & 1) != 0 || (objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCB08) & 1) != 0 || (v20 = (v28[2])()) == 0) && ((objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCC10) & 1) != 0 || (objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCC28) & 1) != 0 || (v20 = (v27[2])()) == 0) && ((objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCB50) & 1) != 0 || (objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCB68) & 1) != 0 || (v20 = (v25[2])()) == 0) && ((objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCA48) & 1) != 0 || (objc_msgSend(*(v23 + 32), "containsObject:", &unk_1F5BDCC40) & 1) != 0 || (v20 = (v26[2])()) == 0))
  {
    v7 = 0;
  }

  else
  {
LABEL_63:
    v7 = v20;
  }

LABEL_68:

  v6 = context;
LABEL_69:
  objc_autoreleasePoolPop(v6);
  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2_2049(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 9) & 1) != 0)
  {
    v2 = *(a1 + 40);
    if (!v2 || (*(v2 + 9) & 1) == 0)
    {
      return -1;
    }
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4 && (*(v4 + 9) & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_3_2050(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  if (v2 == v4)
  {
    return 0;
  }

  if (v1)
  {
    v1 = *(v1 + 32);
  }

  if (v3)
  {
    v3 = *(v3 + 32);
  }

  if (v1 > v3)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_4(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 40, 1);
  }

  v5 = Property;
  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = objc_getProperty(v6, v4, 40, 1);
  }

  v7 = v6;
  v8 = [v5 count];
  v9 = [v7 count];
  if (!(v8 | v9))
  {
    goto LABEL_16;
  }

  v10 = v9;
  if ([v5 count])
  {
    if ([v5 count] == 1)
    {
      v11 = [v5 firstObject];
      v12 = [MEMORY[0x1E695DFB0] null];
      v13 = v11 == v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  if ([v7 count])
  {
    if ([v7 count] != 1)
    {
      if (v13)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v14 = [v7 firstObject];
    v15 = [MEMORY[0x1E695DFB0] null];
    v16 = v14 == v15;
  }

  else
  {
    v16 = 1;
  }

  if (v13 && v16)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  if (!v16 && !v13)
  {
LABEL_24:
    if (v10 < v8)
    {
      v17 = -1;
      goto LABEL_17;
    }

    if (v8 < v10)
    {
LABEL_27:
      v17 = 1;
      goto LABEL_17;
    }

    if (!v8)
    {
      goto LABEL_16;
    }

    for (i = 0; v8 != i; ++i)
    {
      v20 = [v5 objectAtIndexedSubscript:i];
      v21 = [MEMORY[0x1E695DFB0] null];

      if (v20 == v21)
      {

        v20 = 0;
      }

      v22 = [v7 objectAtIndexedSubscript:i];
      v23 = [MEMORY[0x1E695DFB0] null];

      if (v22 == v23)
      {

        v22 = 0;
      }

      v24 = [v20 dispatchQueueLabel];
      v25 = [v22 dispatchQueueLabel];
      v26 = v25;
      if (v24 && v25)
      {
        v27 = [v24 compare:v25 options:577];
        if (v27)
        {
          v28 = 0;
          v32 = v27;
          goto LABEL_53;
        }
      }

      else
      {
        v29 = -1;
        if (!v24)
        {
          v29 = 1;
        }

        if (v24 | v25)
        {
LABEL_48:
          v28 = 0;
          goto LABEL_49;
        }
      }

      v30 = [v20 identifier];
      v31 = [v22 identifier];
      if (v30 && v31)
      {
        if (v30 < v31)
        {
          v28 = 0;
          v29 = -1;
LABEL_49:
          v32 = v29;
          goto LABEL_53;
        }

        if (v30 > v31)
        {
          v28 = 0;
          v29 = 1;
          goto LABEL_49;
        }
      }

      else
      {
        v29 = -1;
        if (!v30)
        {
          v29 = 1;
        }

        if (v30 | v31)
        {
          goto LABEL_48;
        }
      }

      v28 = 1;
LABEL_53:

      if ((v28 & 1) == 0)
      {
        v17 = v32;
        break;
      }

      v17 = 0;
    }
  }

LABEL_17:

  return v17;
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_5(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 48, 1);
  }

  v5 = Property;
  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = objc_getProperty(v6, v4, 48, 1);
  }

  v7 = v6;
  v8 = [v5 count];
  v9 = [v7 count];
  if (!(v8 | v9))
  {
    goto LABEL_16;
  }

  v10 = v9;
  if ([v5 count])
  {
    if ([v5 count] == 1)
    {
      v11 = [v5 firstObject];
      v12 = [MEMORY[0x1E695DFB0] null];
      v13 = v11 == v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  if ([v7 count])
  {
    if ([v7 count] != 1)
    {
      if (v13)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v14 = [v7 firstObject];
    v15 = [MEMORY[0x1E695DFB0] null];
    v16 = v14 == v15;
  }

  else
  {
    v16 = 1;
  }

  if (v13 && v16)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v19 = v16 || v13;
  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  if (v19)
  {
    goto LABEL_17;
  }

LABEL_24:
  if (v10 < v8)
  {
    v17 = -1;
    goto LABEL_17;
  }

  if (v8 < v10)
  {
LABEL_27:
    v17 = 1;
    goto LABEL_17;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

  v20 = 0;
  while (1)
  {
    v21 = [v5 objectAtIndexedSubscript:v20];
    v22 = [MEMORY[0x1E695DFB0] null];

    if (v21 == v22)
    {

      v21 = 0;
    }

    v23 = [v7 objectAtIndexedSubscript:v20];
    v24 = [MEMORY[0x1E695DFB0] null];

    if (v23 == v24)
    {

      v23 = 0;
    }

    v25 = [v21 identifier];
    v26 = [v23 identifier];
    if (!v25 || !v26)
    {
      break;
    }

    if (v25 < v26)
    {
      v17 = -1;
      goto LABEL_46;
    }

    if (v25 > v26)
    {
      v17 = 1;
      goto LABEL_46;
    }

LABEL_40:

    v17 = 0;
    if (v8 == ++v20)
    {
      goto LABEL_17;
    }
  }

  if (!(v25 | v26))
  {
    goto LABEL_40;
  }

  if (v25)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

LABEL_46:

LABEL_17:
  return v17;
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_6(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 56, 1);
  }

  v5 = Property;
  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = objc_getProperty(v6, v4, 56, 1);
  }

  v7 = v6;
  v8 = [v5 count];
  v9 = [v7 count];
  if (!(v8 | v9))
  {
    goto LABEL_16;
  }

  if (v9 >= v8)
  {
    if (v8 < v9)
    {
LABEL_9:
      v10 = 1;
      goto LABEL_17;
    }

    if (v8)
    {
      v11 = 0;
      while (1)
      {
        v12 = [v5 objectAtIndexedSubscript:v11];
        v13 = [v7 objectAtIndexedSubscript:v11];
        v14 = [v12 unsignedLongLongValue];
        if (v14 < [v13 unsignedLongLongValue])
        {
          break;
        }

        v15 = [v12 unsignedLongLongValue];
        v16 = [v13 unsignedLongLongValue];

        if (v15 > v16)
        {
          goto LABEL_9;
        }

        v10 = 0;
        if (v8 == ++v11)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_7;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

LABEL_7:
  v10 = -1;
LABEL_17:

  return v10;
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_7(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    if (v2)
    {
      LODWORD(v2) = *(v2 + 28);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      v3 += 7;
LABEL_10:
      LODWORD(v3) = *v3;
    }
  }

  else
  {
    if (v2)
    {
      LODWORD(v2) = *(v2 + 20);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      v3 += 5;
      goto LABEL_10;
    }
  }

  v4 = v2 < v3;
  if (v2 <= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2 > 8)
  {
    if (a2 != 9)
    {
      if (a2 == 10)
      {
        v6 = *(a1 + 32);
        v7 = 0.0;
        v8 = 0.0;
        if (v6)
        {
          v9 = *(v6 + 104);
          if (v9)
          {
            v8 = *(v6 + 112) / v9;
          }
        }

        v10 = *(a1 + 40);
        if (v10)
        {
          v11 = *(v10 + 104);
          if (v11)
          {
            v7 = *(v10 + 112) / v11;
          }
        }

        if (v8 >= v7)
        {
          if (v8 <= v7)
          {
LABEL_44:
            result = 0;
            goto LABEL_45;
          }

          goto LABEL_23;
        }

        goto LABEL_38;
      }

      goto LABEL_46;
    }

    v2 = *(a1 + 32);
    if (v2)
    {
      v15 = v2[14];
    }

    else
    {
      v15 = 0;
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v16 = v4[14];
    }

    else
    {
      v16 = 0;
    }

    if (v15 < v16)
    {
      goto LABEL_38;
    }

    if (v2)
    {
      v2 = v2[14];
    }

    if (v4)
    {
      v4 = v4[14];
    }
  }

  else
  {
    if (a2 != 7)
    {
      if (a2 == 8)
      {
        v2 = *(a1 + 32);
        if (v2)
        {
          v3 = v2[13];
          goto LABEL_6;
        }

LABEL_49:
        v3 = 0;
LABEL_6:
        v4 = *(a1 + 40);
        if (v4)
        {
          v5 = v4[13];
        }

        else
        {
          v5 = 0;
        }

        if (v3 >= v5)
        {
          if (v2)
          {
            v2 = v2[13];
          }

          if (v4)
          {
            v4 = v4[13];
          }

          goto LABEL_43;
        }

LABEL_38:
        result = 1;
        goto LABEL_45;
      }

LABEL_46:
      v18 = *__error();
      v19 = _sa_logt();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v28 = a2;
        _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "invalid sort option 0x%llx", buf, 0xCu);
      }

      *__error() = v18;
      _SASetCrashLogMessage(9646, "invalid sort option 0x%llx", v20, v21, v22, v23, v24, v25, a2);
      a1 = _os_crash();
      __break(1u);
      goto LABEL_49;
    }

    v2 = *(a1 + 32);
    if (v2)
    {
      v13 = v2[12];
    }

    else
    {
      v13 = 0;
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v14 = v4[12];
    }

    else
    {
      v14 = 0;
    }

    if (v13 < v14)
    {
      goto LABEL_38;
    }

    if (v2)
    {
      v2 = v2[12];
    }

    if (v4)
    {
      v4 = v4[12];
    }
  }

LABEL_43:
  if (v2 <= v4)
  {
    goto LABEL_44;
  }

LABEL_23:
  result = -1;
LABEL_45:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void __56__SASamplePrinter_stacksForThread_task_taskSampleCount___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 isIdleWorkQueue] && (objc_msgSend(*(*(a1 + 32) + 16), "displayIdleWorkQueueThreads") & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    return;
  }

  v6 = [a2 dispatchQueue];
  v24 = v6;
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      if ([v6 hasConcurrentExecution])
      {
        LODWORD(v7) = [*(v7 + 16) printHeavyStacks];
      }

      else
      {
        LODWORD(v7) = 1;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if ([a2 isIdleWorkQueue])
  {
    v8 = -3;
  }

  else
  {
    v8 = [v24 identifier];
  }

  if (![*(*(a1 + 32) + 168) targetDispatchQueueId] || (v9 = *(a1 + 40), objc_msgSend(*(*(a1 + 32) + 168), "targetProcess"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9 != v10))
  {
    if ([*(a1 + 48) isMainThread])
    {
      v8 = 0;
LABEL_31:
      v17 = *(a1 + 56);
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
      v19 = [v17 objectForKeyedSubscript:v18];

      if (v19)
      {
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [v19 addObject:v20];
      }

      else
      {
        v21 = objc_alloc(MEMORY[0x1E695DF70]);
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        v19 = [v21 initWithObjects:{v22, 0}];

        v23 = *(a1 + 56);
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
        [v23 setObject:v19 forKeyedSubscript:v20];
      }

      goto LABEL_35;
    }

    v11 = [*(a1 + 48) threadId];
    v12 = [*(*(a1 + 32) + 168) targetThreadId];
    if (v11 == v12)
    {
      v8 = 0;
    }

    if (((v11 != v12) & v7) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (![*(*(a1 + 32) + 168) targetThreadId])
  {
    v15 = [v24 identifier];
    if (v15 == [*(*(a1 + 32) + 168) targetDispatchQueueId])
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v13 = [*(a1 + 48) threadId];
  if (v13 != [*(*(a1 + 32) + 168) targetThreadId])
  {
LABEL_26:
    v16 = [*(a1 + 48) isMainThread];
    if (v16)
    {
      v8 = 0;
    }

    if (((v16 ^ 1) & v7 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v14 = [v24 identifier];
  if (v14 == [*(*(a1 + 32) + 168) targetDispatchQueueId])
  {
    v8 = [v24 identifier];
    goto LABEL_31;
  }

  if (!v7)
  {
    goto LABEL_31;
  }

LABEL_29:
  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_35:
}

void __56__SASamplePrinter_stacksForThread_task_taskSampleCount___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if ([*(*(a1 + 32) + 168) targetThreadId] && objc_msgSend(*(*(a1 + 32) + 168), "targetDispatchQueueId") && (v6 = *(a1 + 40), objc_msgSend(*(*(a1 + 32) + 168), "targetProcess"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6 == v7) && (v8 = objc_msgSend(*(a1 + 48), "threadId"), v8 == objc_msgSend(*(*(a1 + 32) + 168), "targetThreadId")))
  {
    v9 = [a2 unsignedLongLongValue];
    v10 = v9 == [*(*(a1 + 32) + 168) targetDispatchQueueId];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 56);
  v12 = [(SASamplePrinter *)*(a1 + 32) stackForThread:a3 threadStateIndexes:*(a1 + 40) task:*(a1 + 64) taskSampleCount:v10 isTarget:?];
  [v11 addObject:v12];
}

- (void)addHeaderForDispatchQueue:(void *)queue orSwiftTaskStates:(char *)states orThread:(void *)thread andThreadStateIndexes:(void *)indexes toStack:(void *)stack task:(uint64_t)task taskSampleCount:
{
  v253 = *MEMORY[0x1E69E9840];
  v16 = objc_autoreleasePoolPush();
  if ((queue || a2 || !states) && (queue || !a2 || states) && (a2 || states || !queue))
  {
    self = *__error();
    v87 = _sa_logt();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      if (states)
      {
        states = "y";
      }

      else
      {
        states = "n";
      }

      if (a2)
      {
        v88 = "y";
      }

      else
      {
        v88 = "n";
      }

      *buf = 136315650;
      *&buf[4] = states;
      *&buf[12] = 2080;
      *&buf[14] = v88;
      if (queue)
      {
        a2 = "y";
      }

      else
      {
        a2 = "n";
      }

      *&buf[22] = 2080;
      v250 = a2;
      _os_log_error_impl(&dword_1E0E2F000, v87, OS_LOG_TYPE_ERROR, "aThread %s, aDispatchQueue %s, swiftTaskStates %s", buf, 0x20u);
    }

    else
    {
      if (states)
      {
        states = "y";
      }

      else
      {
        states = "n";
      }

      if (queue)
      {
        a2 = "y";
      }

      else
      {
        a2 = "n";
      }
    }

    *__error() = self;
    _SASetCrashLogMessage(10007, "aThread %s, aDispatchQueue %s, swiftTaskStates %s", v89, v90, v91, v92, v93, v94, states);
    _os_crash();
    __break(1u);
    goto LABEL_131;
  }

  context = v16;
  omitStacksOnAC = [*(self + 16) omitStacksOnAC];
  omitStacksOnBattery = [*(self + 16) omitStacksOnBattery];
  omitStacksWithUserIdle = [*(self + 16) omitStacksWithUserIdle];
  omitStacksWithUserActive = [*(self + 16) omitStacksWithUserActive];
  omitStacksWithPCore = [*(self + 16) omitStacksWithPCore];
  omitStacksWithECore = [*(self + 16) omitStacksWithECore];
  omitStacksBelowBasePriority = [*(self + 16) omitStacksBelowBasePriority];
  omitStacksAboveBasePriority = [*(self + 16) omitStacksAboveBasePriority];
  if ([*(self + 16) swiftAsyncDisplayCRootCallstacks])
  {
    swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways = 1;
  }

  else
  {
    swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways = [*(self + 16) swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways];
  }

  v18 = *(self + 16);
  self = indexes;
  taskCopy = task;
  if (!v18)
  {
LABEL_131:
    v19 = 0;
    v20 = 0;
    goto LABEL_22;
  }

  v19 = *(v18 + 152);
  if (!v19)
  {
    if (*(v18 + 11))
    {
      v19 = 3;
    }

    else
    {
      v19 = 1;
    }
  }

  v20 = *(v18 + 160);
  if (!v20)
  {
    if (*(v18 + 14))
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }
  }

LABEL_22:
  v243 = 0;
  v244 = &v243;
  v245 = 0x2020000000;
  v246 = 0x7FFFFFFFFFFFFFFFLL;
  v239 = 0;
  v240 = &v239;
  v241 = 0x2020000000;
  v242 = 0x7FFFFFFFFFFFFFFFLL;
  v235 = 0;
  v236 = &v235;
  v237 = 0x2020000000;
  v238 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v250 = __Block_byref_object_copy__4;
  v251 = __Block_byref_object_dispose__4;
  v252 = 0;
  selfCopy = self;
  queueCopy = queue;
  v112 = omitStacksOnBattery;
  if (self)
  {
    v21 = objc_getProperty(self, v17, 40, 1);
    v99 = objc_getProperty(self, v22, 48, 1);
    Property = objc_getProperty(self, v23, 56, 1);
    v98 = v21;
    v25 = omitStacksOnAC;
  }

  else
  {
    v25 = omitStacksOnAC;
    v98 = 0;
    v99 = 0;
    Property = 0;
  }

  v26 = Property;
  v229 = 0;
  v230 = &v229;
  v231 = 0x3032000000;
  v232 = __Block_byref_object_copy__4;
  v233 = __Block_byref_object_dispose__4;
  v234 = 0;
  v225 = 0;
  v226 = &v225;
  v227 = 0x2020000000;
  v228 = 0;
  v221 = 0;
  v222 = &v221;
  v223 = 0x2020000000;
  v224 = 0;
  v217 = 0;
  v218 = &v217;
  v219 = 0x2020000000;
  v220 = 0;
  v213 = 0;
  v214 = &v213;
  v215 = 0x2020000000;
  v216 = -1;
  v209 = 0;
  v210 = &v209;
  v211 = 0x2020000000;
  v212 = -1;
  v205 = 0;
  v206 = &v205;
  v207 = 0x2020000000;
  v208 = -1;
  v201 = 0;
  v202 = &v201;
  v203 = 0x2020000000;
  v204 = -1;
  v197 = 0;
  v198 = &v197;
  v199 = 0x2020000000;
  v200 = 0;
  v193 = 0;
  v194 = &v193;
  v195 = 0x2020000000;
  v196 = 0;
  v189 = 0;
  v190 = &v189;
  v191 = 0x2020000000;
  v192 = 0;
  v185 = 0;
  v186 = &v185;
  v187 = 0x2020000000;
  v188 = 0;
  v181 = 0;
  v182 = &v181;
  v183 = 0x2020000000;
  v184 = 0;
  v180[0] = 0;
  v180[1] = v180;
  v180[2] = 0x2020000000;
  v180[3] = 0;
  v178[0] = 0;
  v178[1] = v178;
  v178[2] = 0x3032000000;
  v178[3] = __Block_byref_object_copy__4;
  v178[4] = __Block_byref_object_dispose__4;
  v179 = 0;
  creationTimestamp2 = v176;
  v176[0] = 0;
  v176[1] = v176;
  v176[2] = 0x3032000000;
  v176[3] = __Block_byref_object_copy__4;
  v176[4] = __Block_byref_object_dispose__4;
  v177 = 0;
  v172 = 0;
  v173 = &v172;
  v174 = 0x2020000000;
  v175 = 0;
  v167 = 1;
  v168 = 0;
  v169 = &v168;
  v170 = 0x2020000000;
  v171 = 0;
  v166[0] = 0;
  v166[1] = v166;
  v166[2] = 0x2020000000;
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __123__SASamplePrinter_addHeaderForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_toStack_task_taskSampleCount___block_invoke;
  v128[3] = &unk_1E86F7CB0;
  v132 = &v217;
  v133 = v166;
  v157 = omitStacksAboveBasePriority;
  v158 = omitStacksBelowBasePriority;
  v159 = omitStacksWithUserActive;
  v160 = omitStacksWithUserIdle;
  v161 = v25;
  v162 = v112;
  v163 = omitStacksWithPCore;
  v164 = omitStacksWithECore;
  v165 = swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways;
  v155 = v20;
  v156 = v19;
  v134 = &v235;
  v109 = a2;
  v128[4] = a2;
  v128[5] = selfCopy;
  v128[6] = stack;
  v128[7] = queueCopy;
  v128[8] = states;
  v105 = v26;
  v129 = v105;
  v113 = v98;
  v130 = v113;
  v111 = v99;
  v131 = v111;
  v135 = &v243;
  v136 = buf;
  v137 = &v239;
  v138 = &v225;
  v139 = &v229;
  v140 = &v221;
  v141 = &v213;
  v142 = &v209;
  v143 = &v205;
  v144 = &v201;
  v145 = &v197;
  v146 = &v193;
  v147 = &v189;
  v148 = v180;
  v149 = v178;
  v150 = v176;
  v151 = &v185;
  v152 = &v181;
  v153 = &v172;
  v154 = &v168;
  v28 = MEMORY[0x1E12EBE50](v128);
  v29 = v28;
  if (a2)
  {
    v30 = *(selfCopy + 32);
    v31 = *(selfCopy + 40);
    v32 = *(selfCopy + 56);
    v33 = *(selfCopy + 64);
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __123__SASamplePrinter_addHeaderForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_toStack_task_taskSampleCount___block_invoke_2;
    v126[3] = &unk_1E86F8050;
    v127 = v28;
    [(SARecipe *)v109 enumerateStatesBetweenStartTime:v30 startSampleIndex:v32 endTime:v31 endSampleIndex:v33 reverseOrder:0 block:v126];
    threadCopy = v127;
  }

  else if (queueCopy)
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    threadCopy = queueCopy;
    v42 = [threadCopy countByEnumeratingWithState:&v122 objects:v248 count:16];
    if (v42)
    {
      creationTimestamp2 = *v123;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v123 != creationTimestamp2)
          {
            objc_enumerationMutation(threadCopy);
          }

          v44 = *(*(&v122 + 1) + 8 * i);
          thread = [v44 thread];
          threadState = [v44 threadState];
          (v29)[2](v29, thread, threadState, [v44 threadStateIndex]);
        }

        v42 = [threadCopy countByEnumeratingWithState:&v122 objects:v248 count:16];
      }

      while (v42);
    }
  }

  else if (thread)
  {
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    threadCopy = thread;
    v47 = [threadCopy countByEnumeratingWithState:&v118 objects:v247 count:16];
    if (v47)
    {
      creationTimestamp2 = *v119;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v119 != creationTimestamp2)
          {
            objc_enumerationMutation(threadCopy);
          }

          unsignedLongValue = [*(*(&v118 + 1) + 8 * j) unsignedLongValue];
          threadStates = [states threadStates];
          v51 = [threadStates objectAtIndexedSubscript:unsignedLongValue];
          (v29)[2](v29, states, v51, unsignedLongValue);
        }

        v47 = [threadCopy countByEnumeratingWithState:&v118 objects:v247 count:16];
      }

      while (v47);
    }
  }

  else
  {
    v76 = *(selfCopy + 32);
    v77 = *(selfCopy + 40);
    v78 = *(selfCopy + 56);
    v79 = *(selfCopy + 64);
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __123__SASamplePrinter_addHeaderForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_toStack_task_taskSampleCount___block_invoke_3;
    v116[3] = &unk_1E86F7CD8;
    v116[4] = states;
    v117 = v28;
    [states enumerateThreadStatesBetweenStartTime:v76 startSampleIndex:v78 endTime:v77 endSampleIndex:v79 reverseOrder:0 block:v116];
    threadCopy = v117;
  }

  v35 = v244[3];
  if (v35 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v35 <= *(selfCopy + 56))
    {
      v35 = *(selfCopy + 56);
    }

    v244[3] = v35;
  }

  v36 = v240[3];
  if (v36 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = *(selfCopy + 64);
    if (v36 < v37)
    {
      v37 = v240[3];
    }

    v240[3] = v37;
  }

  if (self)
  {
    *(self + 4) = v222[3];
  }

  if (states && [*(selfCopy + 168) targetThreadId])
  {
    threadId = [states threadId];
    targetThreadId = [*(selfCopy + 168) targetThreadId];
    if (!v109 || threadId == targetThreadId)
    {
      if (threadId == targetThreadId)
      {
        goto LABEL_77;
      }

      goto LABEL_65;
    }
  }

  else if (!v109)
  {
    goto LABEL_65;
  }

  if ([*(selfCopy + 168) targetDispatchQueueId])
  {
    targetProcess = [*(selfCopy + 168) targetProcess];
    v41 = targetProcess;
    if (targetProcess == stack)
    {
      identifier = [v109 identifier];
      v53 = identifier == [*(selfCopy + 168) targetDispatchQueueId];

      if (v53)
      {
        goto LABEL_77;
      }
    }

    else
    {
    }
  }

LABEL_65:
  if (v222[3] || *(v218 + 24) == 1 && ([*(selfCopy + 16) displayCallTreesWithZeroCount] & 1) != 0)
  {
    if ([*(selfCopy + 16) omitStacksBelowSampleCount] < 1)
    {
      omitStacksBelowSampleCount = 0;
    }

    else
    {
      omitStacksBelowSampleCount = [*(selfCopy + 16) omitStacksBelowSampleCount];
    }

    if ([*(selfCopy + 16) omitStacksBelowPercentOfTaskSamples] >= 1)
    {
      omitStacksBelowPercentOfTaskSamples = [*(selfCopy + 16) omitStacksBelowPercentOfTaskSamples];
      if (omitStacksBelowSampleCount <= omitStacksBelowPercentOfTaskSamples * taskCopy / 0x64uLL)
      {
        omitStacksBelowSampleCount = omitStacksBelowPercentOfTaskSamples * taskCopy / 0x64uLL;
      }
    }

    if (!omitStacksBelowSampleCount || v222[3] > omitStacksBelowSampleCount)
    {
LABEL_77:
      if ([v113 count] == 1)
      {
        firstObject = [v113 firstObject];
        null = [MEMORY[0x1E695DFB0] null];
        v58 = firstObject == null;

        if (v58)
        {
          [v113 removeAllObjects];
        }
      }

      if ([v111 count] == 1)
      {
        firstObject2 = [v111 firstObject];
        null2 = [MEMORY[0x1E695DFB0] null];
        v62 = firstObject2 == null2;

        if (v62)
        {
          [v111 removeAllObjects];
        }
      }

      startTimestamp = *(*&buf[8] + 40);
      if (!startTimestamp)
      {
        goto LABEL_111;
      }

      timeWhenTransitionedToSamplingAllThreads = [*(selfCopy + 168) timeWhenTransitionedToSamplingAllThreads];
      if (timeWhenTransitionedToSamplingAllThreads)
      {
      }

      else
      {
        timeWhenTransitionedToSamplingAllProcesses = [*(selfCopy + 168) timeWhenTransitionedToSamplingAllProcesses];
        v66 = timeWhenTransitionedToSamplingAllProcesses == 0;

        if (v66)
        {
          startTimestamp = 0;
LABEL_111:
          if (self)
          {
            *(self + 11) = *(v236 + 24);
            objc_setProperty_atomic(self, v59, v230[5], 64);
            *(self + 12) = *(v226 + 24);
            *(self + 4) = v222[3];
            *(self + 9) = v244[3];
            *(self + 10) = v240[3];
            objc_setProperty_atomic(self, v83, startTimestamp, 88);
            *(self + 4) = *(v214 + 6);
            *(self + 5) = *(v210 + 6);
            *(self + 6) = *(v206 + 6);
            *(self + 7) = *(v202 + 6);
            *(self + 12) = v198[3];
            *(self + 13) = v194[3];
            *(self + 14) = v190[3];
          }

          isProcessorIdleThread = [states isProcessorIdleThread];
          if (self)
          {
            *(self + 13) = isProcessorIdleThread;
          }

          isGlobalForcedIdle = [states isGlobalForcedIdle];
          if (self)
          {
            *(self + 14) = isGlobalForcedIdle;
            *(self + 17) = v186[3];
            *(self + 18) = v182[3];
            *(self + 19) = v173[3];
            *(self + 20) = v169[3];
          }

          goto LABEL_118;
        }
      }

      if (*(selfCopy + 48))
      {
        v67 = 0;
      }

      else
      {
        v67 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v68 = [startTimestamp firstThreadStateOnOrAfterTime:0 sampleIndex:v67];
      v69 = v68;
      if (!v68)
      {
        goto LABEL_107;
      }

      if (*(selfCopy + 48) == 1)
      {
        if ([v68 startSampleIndex] > *(selfCopy + 56))
        {
LABEL_97:
          creationTimestamp = [startTimestamp creationTimestamp];
          if (!creationTimestamp)
          {
LABEL_109:
            startTimestamp = [v69 startTimestamp];
            goto LABEL_110;
          }

          v73 = *(selfCopy + 48);
          if (v73 != 1)
          {
            goto LABEL_105;
          }

          v74 = *(selfCopy + 168);
          creationTimestamp2 = [startTimestamp creationTimestamp];
          v75 = [v74 indexOfFirstSampleOnOrAfterTimestamp:creationTimestamp2];
          if (v75 < [v69 startSampleIndex])
          {

            goto LABEL_109;
          }

          if (*(selfCopy + 48))
          {
          }

          else
          {
LABEL_105:
            creationTimestamp3 = [startTimestamp creationTimestamp];
            startTimestamp2 = [v69 startTimestamp];
            v82 = [creationTimestamp3 lt:startTimestamp2];

            if (v73)
            {

              if (v82)
              {
                goto LABEL_109;
              }
            }

            else
            {

              if (v82)
              {
                goto LABEL_109;
              }
            }
          }

LABEL_107:
          startTimestamp = 0;
LABEL_110:

          goto LABEL_111;
        }

        if (*(selfCopy + 48))
        {
          goto LABEL_107;
        }
      }

      startTimestamp3 = [v69 startTimestamp];
      v71 = [startTimestamp3 gt:*(selfCopy + 32)];

      if (!v71)
      {
        goto LABEL_107;
      }

      goto LABEL_97;
    }
  }

  if (self)
  {
    *(self + 8) = 1;
  }

LABEL_118:

  _Block_object_dispose(v166, 8);
  _Block_object_dispose(&v168, 8);
  _Block_object_dispose(&v172, 8);
  _Block_object_dispose(v176, 8);

  _Block_object_dispose(v178, 8);
  _Block_object_dispose(v180, 8);
  _Block_object_dispose(&v181, 8);
  _Block_object_dispose(&v185, 8);
  _Block_object_dispose(&v189, 8);
  _Block_object_dispose(&v193, 8);
  _Block_object_dispose(&v197, 8);
  _Block_object_dispose(&v201, 8);
  _Block_object_dispose(&v205, 8);
  _Block_object_dispose(&v209, 8);
  _Block_object_dispose(&v213, 8);
  _Block_object_dispose(&v217, 8);
  _Block_object_dispose(&v221, 8);
  _Block_object_dispose(&v225, 8);
  _Block_object_dispose(&v229, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v235, 8);
  _Block_object_dispose(&v239, 8);
  _Block_object_dispose(&v243, 8);
  objc_autoreleasePoolPop(context);
  v86 = *MEMORY[0x1E69E9840];
}

void __123__SASamplePrinter_addHeaderForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_toStack_task_taskSampleCount___block_invoke(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v124 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (![*(*(a1 + 40) + 168) targetDispatchQueueId])
    {
      goto LABEL_8;
    }

    v8 = *(a1 + 48);
    v9 = [*(*(a1 + 40) + 168) targetProcess];
    v10 = v9;
    if (v8 != v9)
    {

      goto LABEL_8;
    }

    v11 = [*(a1 + 32) identifier];
    v12 = [*(*(a1 + 40) + 168) targetDispatchQueueId];

    if (v11 != v12)
    {
LABEL_8:
      if ([a2 isMainThread])
      {
        goto LABEL_152;
      }

      goto LABEL_9;
    }

    if ([*(*(a1 + 40) + 168) targetThreadId])
    {
LABEL_9:
      v13 = [a2 threadId];
      if (v13 == [*(*(a1 + 40) + 168) targetThreadId])
      {
        goto LABEL_152;
      }
    }
  }

  *(*(*(a1 + 96) + 8) + 24) = 1;
  v14 = *(a1 + 296);
  if (!v14 || v14 >= [a3 basePriority])
  {
    v15 = *(a1 + 300);
    if ((!v15 || v15 <= [a3 basePriority]) && (*(a1 + 304) != 1 || !objc_msgSend(a3, "isBatteryAndUserActivityValid") || (objc_msgSend(a3, "isUserActive") & 1) == 0) && (*(a1 + 305) != 1 || !objc_msgSend(a3, "isBatteryAndUserActivityValid") || objc_msgSend(a3, "isUserActive")) && (*(a1 + 306) != 1 || !objc_msgSend(a3, "isBatteryAndUserActivityValid") || objc_msgSend(a3, "isOnBattery")) && (*(a1 + 307) != 1 || !objc_msgSend(a3, "isBatteryAndUserActivityValid") || (objc_msgSend(a3, "isOnBattery") & 1) == 0))
    {
      if ((*(a1 + 308) & 1) == 0 && *(a1 + 309) != 1 || ![a3 isRunning] || (v16 = objc_msgSend(a3, "cpuNum"), v16 == -1) || ((v17 = v16, *(a1 + 308) != 1) || (-[SASampleStore clusterFlagsForCPUNum:](*(*(a1 + 40) + 168), v16) & 2) == 0) && (*(a1 + 309) != 1 || (-[SASampleStore clusterFlagsForCPUNum:](*(*(a1 + 40) + 168), v17) & 1) == 0))
      {
        if (([a3 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(a3, "startSampleIndex") <= *(*(a1 + 40) + 64)) && (objc_msgSend(a3, "endSampleIndex") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(a3, "endSampleIndex") >= *(*(a1 + 40) + 56)))
        {
          if ((*(a1 + 310) & 1) != 0 || *(a1 + 280) == 1 || *(a1 + 288) == 3 || *(a1 + 56) || ![a3 hasSwiftTask] || (objc_msgSend(a2, "isMainThread") & 1) != 0 || (v18 = objc_msgSend(a2, "threadId"), v18 == objc_msgSend(*(*(a1 + 40) + 168), "targetThreadId")))
          {
            v19 = *(a1 + 40);
            v20 = *(a1 + 48);
            v21 = [a3 dispatchQueue];
            LODWORD(v19) = [(SASamplePrinter *)v19 shouldPrintTask:v20 thread:a2 dispatchQueue:v21];

            if (v19)
            {
              if (!*(a1 + 32) && !*(a1 + 56) && *(*(*(a1 + 104) + 8) + 24) == 1 && [a3 isIdleWorkQueue])
              {
                *(*(*(a1 + 112) + 8) + 24) = 1;
              }

              if (!*(a1 + 64))
              {
                v22 = *(a1 + 72);
                v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "threadId")}];
                LOBYTE(v22) = [v22 containsObject:v23];

                if ((v22 & 1) == 0)
                {
                  v24 = *(a1 + 72);
                  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "threadId")}];
                  [v24 addObject:v25];
                }
              }

              if (!*(a1 + 32))
              {
                v26 = [a3 dispatchQueue];
                v27 = *(a1 + 80);
                if (v26)
                {
                  if (([*(a1 + 80) containsObject:v26] & 1) == 0)
                  {
                    [*(a1 + 80) addObject:v26];
                  }
                }

                else
                {
                  v28 = [MEMORY[0x1E695DFB0] null];
                  v29 = [v27 containsObject:v28];

                  if ((v29 & 1) == 0)
                  {
                    v30 = *(a1 + 80);
                    v31 = [MEMORY[0x1E695DFB0] null];
                    [v30 addObject:v31];
                  }
                }
              }

              v32 = [a3 swiftTask];
              v33 = *(a1 + 88);
              if (v32)
              {
                if (([*(a1 + 88) containsObject:v32] & 1) == 0)
                {
                  [*(a1 + 88) addObject:v32];
                }
              }

              else
              {
                v34 = [MEMORY[0x1E695DFB0] null];
                v35 = [v33 containsObject:v34];

                if ((v35 & 1) == 0)
                {
                  v36 = *(a1 + 88);
                  v37 = [MEMORY[0x1E695DFB0] null];
                  [v36 addObject:v37];
                }
              }

              if ([a3 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v38 = *(*(*(a1 + 120) + 8) + 24);
                if (v38 == 0x7FFFFFFFFFFFFFFFLL || v38 > [a3 startSampleIndex])
                {
                  *(*(*(a1 + 120) + 8) + 24) = [a3 startSampleIndex];
                  objc_storeStrong((*(*(a1 + 128) + 8) + 40), a2);
                }

                v39 = *(*(*(a1 + 136) + 8) + 24);
                if (v39 == 0x7FFFFFFFFFFFFFFFLL || v39 < [a3 endSampleIndex])
                {
                  *(*(*(a1 + 136) + 8) + 24) = [a3 endSampleIndex];
                }
              }

              v103 = v32;
              if ((*(*(*(a1 + 144) + 8) + 24) & 1) == 0)
              {
                v40 = [a3 name];

                v41 = *(*(*(a1 + 152) + 8) + 40);
                if (!v40)
                {
                  if (!v41)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_82;
                }

                v42 = [a3 name];
                v43 = v42;
                v44 = *(*(a1 + 152) + 8);
                v45 = *(v44 + 40);
                if (v41)
                {
                  if (v42 == v45)
                  {

                    goto LABEL_84;
                  }

                  v46 = [a3 name];
                  v47 = [v46 isEqualToString:*(*(*(a1 + 152) + 8) + 40)];

                  if (v47)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_82;
                }

                *(v44 + 40) = v42;

                if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
                {
LABEL_82:
                  *(*(*(a1 + 144) + 8) + 24) = 1;
                }
              }

LABEL_84:
              *(*(*(a1 + 160) + 8) + 24) += [a3 sampleCountInSampleIndexRangeStart:*(*(a1 + 40) + 56) end:*(*(a1 + 40) + 64)];
              if ([*(*(a1 + 40) + 168) dataSource] != 8 || objc_msgSend(*(*(a1 + 40) + 168), "haveKPerfSched"))
              {
                if ((*(*(*(a1 + 168) + 8) + 24) & 0x80000000) != 0 || [a3 scheduledPriority] < *(*(*(a1 + 168) + 8) + 24))
                {
                  *(*(*(a1 + 168) + 8) + 24) = [a3 scheduledPriority];
                }

                if ((*(*(*(a1 + 176) + 8) + 24) & 0x80000000) != 0 || [a3 scheduledPriority] > *(*(*(a1 + 176) + 8) + 24))
                {
                  *(*(*(a1 + 176) + 8) + 24) = [a3 scheduledPriority];
                }

                if ((*(*(*(a1 + 184) + 8) + 24) & 0x80000000) != 0 || [a3 basePriority] < *(*(*(a1 + 184) + 8) + 24))
                {
                  *(*(*(a1 + 184) + 8) + 24) = [a3 basePriority];
                }

                if ((*(*(*(a1 + 192) + 8) + 24) & 0x80000000) != 0 || [a3 basePriority] > *(*(*(a1 + 192) + 8) + 24))
                {
                  *(*(*(a1 + 192) + 8) + 24) = [a3 basePriority];
                }

                v118 = 0;
                v119 = 0;
                v120 = 0;
                [(SAThread *)a2 cpuTimeForThreadStateIndex:a4 inTimestampRangeStart:*(*(a1 + 40) + 32) end:*(*(a1 + 40) + 40), &v118];
                v48 = v119;
                *(*(*(a1 + 200) + 8) + 24) += v118;
                *(*(*(a1 + 208) + 8) + 24) += v48;
                *(*(*(a1 + 216) + 8) + 24) += v120;
              }

              v117 = 0;
              v118 = 0;
              v116 = 0;
              v49 = *(*(*(a1 + 224) + 8) + 24);
              if (v49 != [a2 threadId])
              {
                *(*(*(a1 + 224) + 8) + 24) = [a2 threadId];
                Property = *(*(a1 + 40) + 168);
                if (Property)
                {
                  Property = objc_getProperty(Property, v50, 1120, 1);
                }

                v52 = Property;
                v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(*(a1 + 224) + 8) + 24)];
                v54 = [v52 objectForKeyedSubscript:v53];
                v55 = [v54 objectEnumerator];
                v56 = *(*(a1 + 232) + 8);
                v57 = *(v56 + 40);
                *(v56 + 40) = v55;

                v58 = [*(*(*(a1 + 232) + 8) + 40) nextObject];
                v59 = *(*(a1 + 240) + 8);
                v60 = *(v59 + 40);
                *(v59 + 40) = v58;
              }

              v61 = *(*(*(a1 + 240) + 8) + 40);
              if (v61)
              {
                v62 = [(SASamplePrinter *)*(a1 + 40) _findIOBefore:&v117 during:&v116 after:a2 thread:a4 stateIndex:*(*(*(a1 + 232) + 8) + 40) inIO:v61 nextIO:?];
                v63 = *(*(a1 + 240) + 8);
                v64 = *(v63 + 40);
                *(v63 + 40) = v62;

                v65 = v118;
              }

              else
              {
                v65 = 0;
              }

              v114 = 0u;
              v115 = 0u;
              v112 = 0u;
              v113 = 0u;
              v66 = v65;
              v67 = [v66 countByEnumeratingWithState:&v112 objects:v123 count:16];
              if (v67)
              {
                v68 = v67;
                v69 = *v113;
                do
                {
                  for (i = 0; i != v68; ++i)
                  {
                    if (*v113 != v69)
                    {
                      objc_enumerationMutation(v66);
                    }

                    *(*(*(a1 + 248) + 8) + 24) += [*(*(&v112 + 1) + 8 * i) size];
                  }

                  v68 = [v66 countByEnumeratingWithState:&v112 objects:v123 count:16];
                }

                while (v68);
              }

              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v71 = v117;
              v72 = [v71 countByEnumeratingWithState:&v108 objects:v122 count:16];
              if (v72)
              {
                v73 = v72;
                v74 = *v109;
                do
                {
                  for (j = 0; j != v73; ++j)
                  {
                    if (*v109 != v74)
                    {
                      objc_enumerationMutation(v71);
                    }

                    *(*(*(a1 + 248) + 8) + 24) += [*(*(&v108 + 1) + 8 * j) size];
                  }

                  v73 = [v71 countByEnumeratingWithState:&v108 objects:v122 count:16];
                }

                while (v73);
              }

              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              v76 = v116;
              v77 = [v76 countByEnumeratingWithState:&v104 objects:v121 count:16];
              if (v77)
              {
                v78 = v77;
                v79 = *v105;
                do
                {
                  for (k = 0; k != v78; ++k)
                  {
                    if (*v105 != v79)
                    {
                      objc_enumerationMutation(v76);
                    }

                    *(*(*(a1 + 248) + 8) + 24) += [*(*(&v104 + 1) + 8 * k) size];
                  }

                  v78 = [v76 countByEnumeratingWithState:&v104 objects:v121 count:16];
                }

                while (v78);
              }

              v81 = [v66 count];
              v82 = [v71 count] + v81;
              *(*(*(a1 + 256) + 8) + 24) += v82 + [v76 count];
              if (*(*(*(a1 + 104) + 8) + 24) != 1 || ([a3 isRunning] & 1) != 0)
              {
                goto LABEL_151;
              }

              v83 = [a3 timestampLastRan];
              if (v83)
              {
                v84 = v83;
                if (a4)
                {
                  v85 = [a2 threadStates];
                  v86 = [v85 objectAtIndexedSubscript:a4 - 1];
                  v87 = [v86 endTimestamp];
                  v102 = [v87 lt:*(*(a1 + 40) + 32)];

                  if (!v102)
                  {
                    goto LABEL_141;
                  }
                }

                else
                {
                }

                v88 = [a3 startTimestamp];
                if ([v88 gt:*(*(a1 + 40) + 32)])
                {
                  v89 = [a3 startTimestamp];
                }

                else
                {
                  v89 = *(*(a1 + 40) + 32);
                }

                if (v89)
                {
                  v90 = [a3 timestampLastRan];
                  [v90 deltaSecondsTo:v89 timeDomainPriorityList:&unk_1F5BDCE08 timeDomainUsed:0];
                  *(*(*(a1 + 264) + 8) + 24) = v91;

                  v92 = *(*(a1 + 264) + 8);
                  if (*(v92 + 24) < 0.0)
                  {
                    *(v92 + 24) = 0;
                  }
                }
              }

LABEL_141:
              if ([a3 isRunnable])
              {
                v93 = [a3 timestampLastMadeRunnable];
                if (v93)
                {
                  v94 = v93;
                  v95 = [a2 isProcessorIdleThread];

                  if ((v95 & 1) == 0)
                  {
                    v96 = [a3 startTimestamp];
                    if ([v96 gt:*(*(a1 + 40) + 32)])
                    {
                      v97 = [a3 startTimestamp];
                    }

                    else
                    {
                      v97 = *(*(a1 + 40) + 32);
                    }

                    if (v97)
                    {
                      v98 = [a3 timestampLastMadeRunnable];
                      [v98 deltaSecondsTo:v97 timeDomainPriorityList:&unk_1F5BDCE20 timeDomainUsed:0];
                      *(*(*(a1 + 272) + 8) + 24) = v99;

                      v100 = *(*(a1 + 272) + 8);
                      if (*(v100 + 24) < 0.0)
                      {
                        *(v100 + 24) = 0;
                      }
                    }
                  }
                }
              }

LABEL_151:
              *(*(*(a1 + 104) + 8) + 24) = 0;
            }
          }
        }
      }
    }
  }

LABEL_152:
  v101 = *MEMORY[0x1E69E9840];
}

- (id)_findIOBefore:(void *)before during:(void *)during after:(void *)after thread:(unint64_t)thread stateIndex:(void *)index inIO:(void *)o nextIO:
{
  if (!self)
  {
    o = 0;
    goto LABEL_59;
  }

  threadStates = [after threadStates];
  v17 = [threadStates objectAtIndexedSubscript:thread];

  afterCopy = after;
  threadCopy = thread;
  if (thread)
  {
    threadStates2 = [after threadStates];
    v19 = [threadStates2 objectAtIndexedSubscript:thread - 1];

    endTimestamp = [v19 endTimestamp];
    if ([v19 isIdleWorkQueue])
    {
      isIdleWorkQueue = 0;
    }

    else
    {
      isIdleWorkQueue = [v17 isIdleWorkQueue];
    }
  }

  else
  {
    endTimestamp = [after creationTimestamp];
    isIdleWorkQueue = 0;
  }

  beforeCopy = before;
  duringCopy = during;
  v60 = a2;
  if (!endTimestamp || *(self + 32) && ([endTimestamp lt:?] & 1) != 0)
  {
    nextObject = *(self + 32);

    oCopy = o;
    if (!nextObject)
    {
      endTimestamp = 0;
      v30 = 0;
      v31 = 0;
      o = oCopy;
      goto LABEL_58;
    }

    selfCopy2 = self;
    v24 = 0;
    endTimestamp = nextObject;
  }

  else
  {
    selfCopy2 = self;
    oCopy2 = o;
    v24 = 1;
  }

  while (v24)
  {
    startTimestamp = [o startTimestamp];
    v27 = [startTimestamp lt:endTimestamp];

    if ((v27 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    nextObject = [index nextObject];

    o = nextObject;
    if (!nextObject)
    {
      v30 = 0;
      v31 = 0;
      goto LABEL_58;
    }
  }

  endTimestamp2 = [o endTimestamp];
  v29 = [endTimestamp2 le:endTimestamp];

  if (v29)
  {
    goto LABEL_18;
  }

LABEL_20:
  v31 = 0;
  nextObject = 0;
  while (1)
  {
    startTimestamp2 = [o startTimestamp];
    endTimestamp3 = [v17 endTimestamp];
    v34 = [startTimestamp2 lt:endTimestamp3];

    if (!v34)
    {
      break;
    }

    endTimestamp4 = [o endTimestamp];
    startTimestamp3 = [v17 startTimestamp];
    v37 = [endTimestamp4 le:startTimestamp3];

    if (!v37)
    {
      if (!nextObject)
      {
        nextObject = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{o, 0}];
        goto LABEL_31;
      }

      v38 = nextObject;
      goto LABEL_28;
    }

    if ((isIdleWorkQueue & 1) == 0)
    {
      if (!v31)
      {
        v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{o, 0}];
        goto LABEL_31;
      }

      v38 = v31;
LABEL_28:
      [v38 addObject:o];
    }

LABEL_31:
    nextObject2 = [index nextObject];

    o = nextObject2;
    if (!nextObject2)
    {
      v30 = 0;
      goto LABEL_58;
    }
  }

  threadStates3 = [afterCopy threadStates];
  v41 = [threadStates3 count] - 1;

  if (v41 <= threadCopy)
  {
    exitTimestamp = [afterCopy exitTimestamp];
    goto LABEL_39;
  }

  threadStates4 = [afterCopy threadStates];
  endTimestamp5 = [threadStates4 objectAtIndexedSubscript:threadCopy + 1];

  exitTimestamp = [endTimestamp5 startTimestamp];
  if (([v17 isIdleWorkQueue] & 1) != 0 || (objc_msgSend(endTimestamp5, "isIdleWorkQueue") & 1) == 0)
  {
    v30 = 0;
LABEL_44:

LABEL_57:
  }

  else
  {

LABEL_39:
    if (exitTimestamp && ![exitTimestamp gt:*(selfCopy2 + 40)])
    {
      v59 = 1;
      goto LABEL_46;
    }

    v30 = *(selfCopy2 + 40);

    if (v30)
    {
      v59 = 0;
      exitTimestamp = v30;
LABEL_46:
      v30 = 0;
      v45 = exitTimestamp;
      while (1)
      {
        if (v59)
        {
          endTimestamp5 = [o endTimestamp];
          if (![endTimestamp5 le:exitTimestamp])
          {
            goto LABEL_44;
          }
        }

        else
        {
          startTimestamp4 = [o startTimestamp];
          v47 = [startTimestamp4 lt:exitTimestamp];

          if (!v47)
          {
            exitTimestamp = v45;
            goto LABEL_57;
          }
        }

        if (v30)
        {
          [v30 addObject:o];
        }

        else
        {
          v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{o, 0}];
        }

        exitTimestamp = v45;
        nextObject3 = [index nextObject];

        o = nextObject3;
        if (!nextObject3)
        {
          goto LABEL_57;
        }
      }
    }
  }

LABEL_58:
  v49 = *v60;
  *v60 = v31;
  v50 = v31;

  v51 = *beforeCopy;
  *beforeCopy = nextObject;
  v52 = nextObject;

  v53 = *duringCopy;
  *duringCopy = v30;
  v54 = v30;

LABEL_59:

  return o;
}

void __123__SASamplePrinter_addHeaderForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_toStack_task_taskSampleCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = [a2 thread];
  v4 = [a2 threadState];
  (*(v3 + 16))(v3, v5, v4, [a2 threadStateIndex]);
}

- (void)iterateDispatchQueue:(void *)queue orSwiftTaskStates:(void *)states orThread:(void *)thread threadStateIndexes:(unint64_t)indexes startingAtIndex:(uint64_t)index endingAfterTimestamp:(void *)timestamp task:(char)task stopAtTimeJumps:(uint64_t)self0 callback:
{
  statesCopy = states;
  v13 = a2;
  v143 = *MEMORY[0x1E69E9840];
  if (queue || a2 || !states)
  {
    if (queue || !a2 || states)
    {
      if (a2 || states || !queue)
      {
        goto LABEL_125;
      }

      threadCopy = queue;
      goto LABEL_14;
    }

    states = [a2 states];
  }

  else
  {
    if (thread)
    {
      threadCopy = thread;
LABEL_14:
      v17 = [threadCopy count];
      goto LABEL_17;
    }

    states = [states threadStates];
  }

  v18 = states;
  v17 = [states count];

LABEL_17:
  if (v17 > indexes)
  {
    v121 = statesCopy;
    v19 = 0;
    v20 = 0;
    v123 = 0;
    v132 = 0;
    v125 = 1;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v126 = v17;
    v127 = v13;
    while (1)
    {
      v22 = objc_autoreleasePoolPush();
      v134 = v21;
      if (v13)
      {
        break;
      }

      if (queue)
      {
        v24 = [queue objectAtIndexedSubscript:indexes];
        thread = [v24 thread];
LABEL_27:
        threadStateIndex = [v24 threadStateIndex];
        goto LABEL_28;
      }

      thread = v121;
      if (!thread)
      {
        indexesCopy = indexes;
        goto LABEL_29;
      }

      v24 = [thread objectAtIndexedSubscript:indexes];
      threadStateIndex = [v24 unsignedLongValue];
LABEL_28:
      indexesCopy = threadStateIndex;

LABEL_29:
      v133 = thread;
      threadStates = [thread threadStates];
      v30 = [threadStates objectAtIndexedSubscript:indexesCopy];

      startSampleIndex = [v30 startSampleIndex];
      v32 = startSampleIndex;
      v136 = v30;
      context = v22;
      if (*(self + 48) == 1)
      {
        if (startSampleIndex == 0x7FFFFFFFFFFFFFFFLL)
        {
          startTimestamp = 0;
          v21 = v134;
          goto LABEL_116;
        }

        if (startSampleIndex <= *(self + 56))
        {
          v32 = *(self + 56);
        }

        sampleTimestamps = [*(self + 168) sampleTimestamps];
        startTimestamp = [sampleTimestamps objectAtIndexedSubscript:v32];
      }

      else
      {
        startTimestamp = [v30 startTimestamp];
      }

      indexesCopy2 = indexes;
      endTimestamp = [v30 endTimestamp];
      if (![startTimestamp le:endTimestamp])
      {
        startTimestamp5 = startTimestamp;
        v82 = v132;
        goto LABEL_106;
      }

      do
      {
        v36 = [startTimestamp le:index];

        if (!v36)
        {
          goto LABEL_107;
        }

        indexes = indexesCopy2;
        if (timestamp)
        {
          taskStates = [timestamp taskStates];
          v38 = [taskStates count];

          if (v38)
          {
            if (!v20 || ([v20 endTimestamp], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "lt:", startTimestamp), v39, v40))
            {

              v41 = v19 + ((v125 & 1) == 0);
              taskStates2 = [timestamp taskStates];
              v43 = [taskStates2 count];

              if (v41 >= v43)
              {
                v20 = 0;
              }

              else
              {
                while (1)
                {
                  taskStates3 = [timestamp taskStates];
                  v20 = [taskStates3 objectAtIndexedSubscript:v41];

                  if (*(self + 48) != 1 || [v20 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    endTimestamp2 = [v20 endTimestamp];
                    v46 = [endTimestamp2 ge:startTimestamp];

                    if (v46)
                    {
                      break;
                    }
                  }

                  ++v41;
                  taskStates4 = [timestamp taskStates];
                  v48 = [taskStates4 count];

                  if (v41 >= v48)
                  {
                    v20 = 0;
                    v125 = 0;
                    goto LABEL_51;
                  }
                }

                startTimestamp2 = [v20 startTimestamp];
                v13 = [startTimestamp2 le:startTimestamp];

                if ((v13 & 1) == 0)
                {
                  v94 = *__error();
                  v95 = _sa_logt();
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                  {
                    startTimestamp3 = [v20 startTimestamp];
                    v97 = [startTimestamp3 debugDescription];
                    uTF8String = [v97 UTF8String];
                    v13 = [startTimestamp debugDescription];
                    uTF8String2 = [v13 UTF8String];
                    *buf = 136315394;
                    v138 = uTF8String;
                    v139 = 2080;
                    v140 = uTF8String2;
                    _os_log_error_impl(&dword_1E0E2F000, v95, OS_LOG_TYPE_ERROR, "tempTaskState.startTimestamp %s > timestamp %s", buf, 0x16u);
                  }

                  *__error() = v94;
                  startTimestamp4 = [v20 startTimestamp];
                  v101 = [startTimestamp4 debugDescription];
                  statesCopy = [v101 UTF8String];
                  v102 = [startTimestamp debugDescription];
                  [v102 UTF8String];
                  _SASetCrashLogMessage(10884, "tempTaskState.startTimestamp %s > timestamp %s", v103, v104, v105, v106, v107, v108, statesCopy);

                  _os_crash();
                  __break(1u);
LABEL_125:
                  v109 = *__error();
                  v110 = _sa_logt();
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                  {
                    if (statesCopy)
                    {
                      v111 = "y";
                    }

                    else
                    {
                      v111 = "n";
                    }

                    if (v13)
                    {
                      v112 = "y";
                    }

                    else
                    {
                      v112 = "n";
                    }

                    *buf = 136315650;
                    v138 = v111;
                    v139 = 2080;
                    v140 = v112;
                    if (queue)
                    {
                      v113 = "y";
                    }

                    else
                    {
                      v113 = "n";
                    }

                    v141 = 2080;
                    v142 = v113;
                    _os_log_error_impl(&dword_1E0E2F000, v110, OS_LOG_TYPE_ERROR, "thread %s, dispatchQueue %s, swiftTaskStates %s", buf, 0x20u);
                  }

                  else if (statesCopy)
                  {
                    v111 = "y";
                  }

                  else
                  {
                    v111 = "n";
                  }

                  *__error() = v109;
                  _SASetCrashLogMessage(10807, "thread %s, dispatchQueue %s, swiftTaskStates %s", v114, v115, v116, v117, v118, v119, v111);
                  _os_crash();
                  __break(1u);
                }

                v125 = 0;
                v19 = v41;
LABEL_51:
                indexes = indexesCopy2;
              }
            }
          }
        }

        buf[0] = 0;
        v21 = v134;
        v50 = v134 != 0x7FFFFFFFFFFFFFFFLL && v134 == v32;
        v51 = v50;
        LOBYTE(v120) = v132;
        v52 = v136;
        (*(jumps + 16))(jumps, indexes, v32, v20, v133, indexesCopy, v136, v51, v120, buf);
        if (buf[0] == 1)
        {
          goto LABEL_119;
        }

        v131 = v19;
        if (task)
        {
          v53 = *(self + 104);
          if (v53)
          {
            v54 = v134 != 0x7FFFFFFFFFFFFFFFLL && v134 > v32;
            v55 = v54;
            if (*(self + 48) == 1 && !v55)
            {
              v56 = [v53 count];
              v57 = v123;
              if (v123 < v56)
              {
                if (v134 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v58 = [*(self + 104) objectAtIndexedSubscript:?];
                  unsignedLongValue = [v58 unsignedLongValue];

                  v21 = unsignedLongValue;
                  v57 = v123;
                }

                v135 = indexesCopy;
                if (v21 <= v32)
                {
                  v60 = v21;
                  v61 = v57 + 1;
                  v62 = [*(self + 104) count];
                  v57 = v61;
                  v21 = v60;
                  if (v57 < v62)
                  {
                    while (1)
                    {
                      v63 = v57;
                      v64 = [*(self + 104) objectAtIndexedSubscript:?];
                      unsignedLongValue2 = [v64 unsignedLongValue];

                      v21 = unsignedLongValue2;
                      if (unsignedLongValue2 > v32)
                      {
                        break;
                      }

                      v66 = [*(self + 104) count];
                      v57 = v63 + 1;
                      if (v63 + 1 >= v66)
                      {
                        goto LABEL_78;
                      }
                    }

                    v57 = v63;
                  }
                }

LABEL_78:
                v123 = v57;
                if (v57 >= [*(self + 104) count])
                {
                  v21 = 0x7FFFFFFFFFFFFFFFLL;
                }

                indexesCopy = v135;
              }
            }
          }
        }

        v134 = v21;
        if (!v20)
        {
          goto LABEL_86;
        }

        if (*(self + 48) != 1)
        {
          goto LABEL_143;
        }

        v67 = v21;
        endSampleIndex = [v20 endSampleIndex];
        v69 = endSampleIndex >= [v136 endSampleIndex];
        v21 = v67;
        if (v69)
        {
          goto LABEL_86;
        }

        if ((*(self + 48) & 1) == 0)
        {
LABEL_143:
          [v20 endTimestamp];
          v70 = startTimestamp;
          indexesCopy3 = indexes;
          timestampCopy = timestamp;
          selfCopy = self;
          v74 = indexesCopy;
          v76 = v75 = v21;
          endTimestamp3 = [v136 endTimestamp];
          v78 = [v76 ge:endTimestamp3];

          v21 = v75;
          indexesCopy = v74;
          self = selfCopy;
          timestamp = timestampCopy;
          indexes = indexesCopy3;
          startTimestamp = v70;
          if (v78)
          {
LABEL_86:
            if (v21 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = 0x7FFFFFFFFFFFFFFFLL;
              v52 = v136;
              v19 = v131;
            }

            else
            {
              v52 = v136;
              v19 = v131;
              if (*(self + 48) == 1 && v21 < [v136 endSampleIndex] + 1)
              {
                sampleTimestamps2 = [*(self + 168) sampleTimestamps];
                [sampleTimestamps2 objectAtIndexedSubscript:v21];
                startTimestamp5 = v80 = v21;

                startTimestamp = sampleTimestamps2;
                v32 = v80;
                goto LABEL_90;
              }
            }

            goto LABEL_114;
          }
        }

        if (v21 != 0x7FFFFFFFFFFFFFFFLL && *(self + 48) == 1 && v21 < [v20 endSampleIndex] + 1)
        {
          sampleTimestamps3 = [*(self + 168) sampleTimestamps];
          [sampleTimestamps3 objectAtIndexedSubscript:v21];
          startTimestamp5 = v84 = v21;

          startTimestamp = sampleTimestamps3;
          v32 = v84;
          v19 = v131;
          goto LABEL_90;
        }

        v85 = v131 + 1;
        do
        {
          v19 = v85;
          taskStates5 = [timestamp taskStates];
          v87 = [taskStates5 count];

          if (v19 >= v87)
          {

LABEL_111:
            v20 = 0;
            v21 = v134;
            v52 = v136;
LABEL_114:
            v132 = 0;
            goto LABEL_115;
          }

          taskStates6 = [timestamp taskStates];
          v89 = [taskStates6 objectAtIndexedSubscript:v19];

          if (*(self + 48) != 1)
          {
            break;
          }

          startSampleIndex2 = [v89 startSampleIndex];
          v85 = v19 + 1;
          v20 = v89;
        }

        while (startSampleIndex2 == 0x7FFFFFFFFFFFFFFFLL);
        if (!v89)
        {
          goto LABEL_111;
        }

        startSampleIndex3 = [v89 startSampleIndex];
        if (startSampleIndex3 == 0x7FFFFFFFFFFFFFFFLL)
        {
          startTimestamp5 = [v89 startTimestamp];
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = startSampleIndex3;
          sampleTimestamps4 = [*(self + 168) sampleTimestamps];
          startTimestamp5 = [sampleTimestamps4 objectAtIndexedSubscript:v32];

          startTimestamp = sampleTimestamps4;
        }

        v20 = v89;
LABEL_90:

        endTimestamp = [v136 endTimestamp];
        v132 = 0;
        v82 = 0;
        startTimestamp = startTimestamp5;
      }

      while (([startTimestamp5 le:endTimestamp] & 1) != 0);
LABEL_106:

      startTimestamp = startTimestamp5;
      v132 = v82;
LABEL_107:
      indexes = indexesCopy2;
      v21 = v134;
      v52 = v136;
LABEL_115:
      if ([startTimestamp gt:index])
      {
LABEL_119:

        objc_autoreleasePoolPop(context);
        goto LABEL_120;
      }

LABEL_116:

      v17 = v126;
      v13 = v127;
      v22 = context;
LABEL_117:

      objc_autoreleasePoolPop(v22);
      if (++indexes == v17)
      {
LABEL_120:

        goto LABEL_121;
      }
    }

    states2 = [v13 states];
    v24 = [states2 objectAtIndexedSubscript:indexes];

    thread = [v24 thread];
    if (![*(self + 168) targetDispatchQueueId])
    {
      v136 = v24;
      v133 = thread;
      if (([thread isMainThread] & 1) != 0 || (v26 = objc_msgSend(thread, "threadId"), v50 = v26 == objc_msgSend(*(self + 168), "targetThreadId"), thread = v133, v50))
      {
        v132 = 1;
        v21 = v134;
        goto LABEL_117;
      }
    }

    goto LABEL_27;
  }

LABEL_121:
  v93 = *MEMORY[0x1E69E9840];
}

- (id)stateChangeStringForThreadState:(unint64_t)state serialDispatchQueue:(unint64_t)queue swiftTaskStates:(void *)states thread:(void *)thread threadStateIndexes:(void *)indexes taskState:(void *)taskState task:(uint64_t)task iteratorIndex:(char)self0 missingStateIsInAnotherStack:(uint64_t)self1 numSamplesOmittedSincePreviousDisplayedSample:(void *)self2 sampleTimestamp:(void *)self3 previousSampleTimestamp:(void *)self4 previousDisplayedTimestamp:(void *)self5 previousTaskState:(void *)self6 previousThread:(void *)self7 previousThreadState:(char)self8 dispatchQueueChanges:(char)self9 swiftTaskChanges:(char)taskChanges priorityChanges:(char)priorityChanges nameChanges:(char)nameChanges threadChanges:(char)threadChanges isTimeJump:(void *)jump ioEventsSincePreviousThreadState:
{
  previousTaskStateCopy = previousTaskState;
  v420 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_529:
    v321 = 0;
LABEL_518:
    v322 = *MEMORY[0x1E69E9840];

    return v321;
  }

  v409 = 0;
  v410 = &v409;
  v411 = 0x3032000000;
  v412 = __Block_byref_object_copy__4;
  v413 = __Block_byref_object_dispose__4;
  v414 = 0;
  if (sampleTimestamp && threadChanges)
  {
    if (!sample || !timestamp)
    {
      v326 = *__error();
      v327 = _sa_logt();
      if (os_log_type_enabled(v327, OS_LOG_TYPE_ERROR))
      {
        v328 = [timestamp debugDescription];
        v329 = v328;
        uTF8String = [v328 UTF8String];
        previousTaskStateCopy = [sample debugDescription];
        v331 = previousTaskStateCopy;
        uTF8String2 = [previousTaskStateCopy UTF8String];
        *buf = 136315394;
        *&buf[4] = uTF8String;
        *&buf[12] = 2080;
        *&buf[14] = uTF8String2;
        _os_log_error_impl(&dword_1E0E2F000, v327, OS_LOG_TYPE_ERROR, "timeJump, but previousSampleTimestamp %s and sampleTimestamp %s", buf, 0x16u);
      }

      *__error() = v326;
      v48 = [timestamp debugDescription];
      v333 = v48;
      a2 = [v48 UTF8String];
      v50 = [sample debugDescription];
      v334 = v50;
      [v50 UTF8String];
      _SASetCrashLogMessage(11025, "timeJump, but previousSampleTimestamp %s and sampleTimestamp %s", v335, v336, v337, v338, v339, v340, a2);

      _os_crash();
      __break(1u);
LABEL_526:
      v397 = *__error();
      v400 = _sa_logt();
      if (os_log_type_enabled(v400, OS_LOG_TYPE_ERROR))
      {
        v341 = [previousTaskStateCopy debugDescription];
        v342 = v341;
        uTF8String3 = [v341 UTF8String];
        v343 = [previousThread debugDescription];
        v344 = v343;
        uTF8String4 = [v343 UTF8String];
        v346 = [states debugDescription];
        v347 = v346;
        uTF8String5 = [v346 UTF8String];
        v349 = [a2 debugDescription];
        v350 = v349;
        uTF8String6 = [v349 UTF8String];
        *buf = 134219266;
        *&buf[4] = v48;
        *&buf[12] = 2048;
        *&buf[14] = v50;
        *&buf[22] = 2080;
        v416 = uTF8String3;
        *v417 = 2080;
        *&v417[2] = uTF8String4;
        *&v417[10] = 2080;
        *&v417[12] = uTF8String5;
        v418 = 2080;
        v419 = uTF8String6;
        _os_log_error_impl(&dword_1E0E2F000, v400, OS_LOG_TYPE_ERROR, "expected index %lu, actual is %lu, previousThread:%s previousThreadState:%s thread:%s threadState:%s", buf, 0x3Eu);
      }

      *__error() = v397;
      v352 = [previousTaskStateCopy debugDescription];
      v353 = v352;
      [v352 UTF8String];
      v354 = [previousThread debugDescription];
      v355 = v354;
      [v354 UTF8String];
      v356 = [states debugDescription];
      v357 = v356;
      [v356 UTF8String];
      v358 = [a2 debugDescription];
      v359 = v358;
      [v358 UTF8String];
      _SASetCrashLogMessage(11086, "expected index %lu, actual is %lu, previousThread:%s previousThreadState:%s thread:%s threadState:%s", v360, v361, v362, v363, v364, v365, v48);

      _os_crash();
      __break(1u);
      goto LABEL_529;
    }

    v27 = [(SASamplePrinter *)self timeSpentAsleepBetweenStartTimestamp:sampleTimestamp endTimestamp:sample];
    if (v27 > 0.0)
    {
      v28 = v410[5];
      if (v28)
      {
        [v28 appendString:{@", "}];
      }

      else
      {
        v29 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
        v30 = v410[5];
        v410[5] = v29;
      }

      [v410[5] appendFormat:@"machine asleep for %.0fs", *&v27];
    }

    if (*(self + 96) > 0.0)
    {
      [sample machAbsTimeSeconds];
      v32 = v31;
      [timestamp machAbsTimeSeconds];
      if (v32 - v33 >= *(self + 96) * 10.0)
      {
        v34 = v410[5];
        if (v34)
        {
          [v34 appendString:{@", "}];
        }

        else
        {
          v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v36 = v410[5];
          v410[5] = v35;
        }

        v37 = v410[5];
        [sample machAbsTimeSeconds];
        v39 = v38;
        [timestamp machAbsTimeSeconds];
        [v37 appendFormat:@"%.0fms gap with no samples", (v39 - v40) * 1000.0];
      }
    }
  }

  if (*(self + 48) != 1)
  {
    goto LABEL_75;
  }

  if (state)
  {
    v41 = @"DispatchQueue";
LABEL_20:
    if (stack)
    {
      v42 = v410[5];
      if (v42)
      {
        [v42 appendString:{@", "}];
      }

      else
      {
        v45 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
        v46 = v410[5];
        v410[5] = v45;
      }

      v47 = @"s";
      if (stack == 1)
      {
        v47 = &stru_1F5BBF440;
      }

      [v410[5] appendFormat:@"%@ omitted via filtering for %lu sample%@", v41, stack, v47];
    }

    if (!a2 || previousThread == a2)
    {
LABEL_75:
      if (states)
      {
        v73 = previousTaskState == states;
      }

      else
      {
        v73 = 1;
      }

      v74 = !v73;
      v391 = v74;
      if (!v73 && nameChanges)
      {
        v75 = v410[5];
        if (v75)
        {
          [v75 appendString:{@", "}];
        }

        else
        {
          v76 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v77 = v410[5];
          v410[5] = v76;
        }

        [v410[5] appendFormat:@"%@ 0x%llx", @"Thread", objc_msgSend(states, "threadId")];
      }

      if (a2)
      {
        v78 = previousThread == a2;
      }

      else
      {
        v78 = 1;
      }

      v79 = v78;
      v394 = v79;
      if (v78)
      {
        goto LABEL_144;
      }

      if (previousThread)
      {
        swiftTask = [previousThread swiftTask];
        swiftTask2 = [a2 swiftTask];
        v82 = swiftTask == swiftTask2;

        if (v82)
        {
          goto LABEL_113;
        }
      }

      else if (!changes)
      {
        goto LABEL_116;
      }

      swiftTask3 = [a2 swiftTask];
      v84 = swiftTask3;
      if (swiftTask3)
      {
        identifier = [swiftTask3 identifier];
        v86 = v410[5];
        if (identifier == -1)
        {
          if (v86)
          {
            [v86 appendString:{@", "}];
          }

          else
          {
            v92 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
            v93 = v410[5];
            v410[5] = v92;
          }

          [v410[5] appendFormat:@"%@ %@", @"Swift Task", @"UNKNOWN"];
        }

        else
        {
          if (v86)
          {
            [v86 appendString:{@", "}];
          }

          else
          {
            v88 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
            v89 = v410[5];
            v410[5] = v88;
          }

          [v410[5] appendFormat:@"%@ %llu", @"Swift Task", objc_msgSend(v84, "identifier")];
        }
      }

      else
      {
        v87 = v410[5];
        if (v87)
        {
          [v87 appendString:{@", "}];
        }

        else
        {
          v90 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v91 = v410[5];
          v410[5] = v90;
        }

        [v410[5] appendFormat:@"%@ none", @"Swift Task"];
      }

      if (previousThread)
      {
LABEL_113:
        dispatchQueue = [previousThread dispatchQueue];
        dispatchQueue2 = [a2 dispatchQueue];
        v96 = dispatchQueue == dispatchQueue2;

        if (v96)
        {
          if ((priorityChanges & 1) == 0)
          {
            goto LABEL_144;
          }

LABEL_122:
          name = [previousThread name];
          name2 = [a2 name];
          v105 = name == name2;

          if (v105)
          {
            goto LABEL_144;
          }

          name3 = [previousThread name];
          if (name3)
          {
            name4 = [a2 name];
            if (name4)
            {
              name5 = [previousThread name];
              name6 = [a2 name];
              v110 = [name5 isEqualToString:name6];

              if (v110)
              {
                goto LABEL_144;
              }
            }

            else
            {
            }
          }

          goto LABEL_130;
        }

        goto LABEL_117;
      }

LABEL_116:
      if (!threadState)
      {
        if ((priorityChanges & 1) == 0)
        {
          goto LABEL_144;
        }

LABEL_130:
        name7 = [a2 name];

        v112 = v410[5];
        if (name7)
        {
          if (v112)
          {
            [v112 appendString:{@", "}];
          }

          else
          {
            v114 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
            v115 = v410[5];
            v410[5] = v114;
          }

          v116 = v410[5];
          name8 = [a2 name];
          v118 = SACopySanitizedString(name8, 1, 0);
          [v116 appendFormat:@"Thread name %@", v118];

          goto LABEL_144;
        }

        if (previousThread)
        {
          if (v112)
          {
            [v112 appendString:{@", "}];
            v113 = @"Thread name cleared";
LABEL_143:
            [v410[5] appendFormat:v113];
            goto LABEL_144;
          }

          v119 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v113 = @"Thread name cleared";
        }

        else
        {
          if (v112)
          {
            [v112 appendString:{@", "}];
            v113 = @"Thread name unset";
            goto LABEL_143;
          }

          v119 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v113 = @"Thread name unset";
        }

        v120 = v410[5];
        v410[5] = v119;

        goto LABEL_143;
      }

LABEL_117:
      v97 = v410[5];
      if (v97)
      {
        [v97 appendString:{@", "}];
      }

      else
      {
        v98 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
        v99 = v410[5];
        v410[5] = v98;
      }

      v100 = v410[5];
      dispatchQueue3 = [a2 dispatchQueue];
      v102 = [SASamplePrinter displayNameForDispatchQueue:dispatchQueue3];
      [v100 appendFormat:@"%@ %@", @"DispatchQueue", v102];

      if (priorityChanges)
      {
        if (!previousThread)
        {
          goto LABEL_130;
        }

        goto LABEL_122;
      }

LABEL_144:
      if (indexes)
      {
        v121 = displayedTimestamp == indexes;
      }

      else
      {
        v121 = 1;
      }

      v122 = v121;
      v396 = v122;
      if (v121)
      {
LABEL_164:
        if (v394)
        {
          goto LABEL_206;
        }

        displayQoSTransitionsBetweenUnspecifiedAndUnavailable = [*(self + 16) displayQoSTransitionsBetweenUnspecifiedAndUnavailable];
        v407[0] = MEMORY[0x1E69E9820];
        v407[1] = 3221225472;
        v407[2] = __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke;
        v407[3] = &__block_descriptor_33_e8_B12__0C8l;
        v408 = displayQoSTransitionsBetweenUnspecifiedAndUnavailable;
        v130 = MEMORY[0x1E12EBE50](v407);
        v405[0] = MEMORY[0x1E69E9820];
        v405[1] = 3221225472;
        v405[2] = __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_2;
        v405[3] = &__block_descriptor_33_e11_B16__0C8C12l;
        v406 = displayQoSTransitionsBetweenUnspecifiedAndUnavailable;
        v131 = MEMORY[0x1E12EBE50](v405);
        if (previousThread)
        {
          v132 = v131[2](v131, [previousThread threadRequestedQos], objc_msgSend(a2, "threadRequestedQos"));
          v133 = v131[2](v131, [previousThread threadRequestedQosOverride], objc_msgSend(a2, "threadRequestedQosOverride"));
          v134 = v131[2](v131, [previousThread threadQosPromote], objc_msgSend(a2, "threadQosPromote"));
          v387 = v131[2](v131, [previousThread threadQosKEventOverride], objc_msgSend(a2, "threadQosKEventOverride"));
          v385 = v131[2](v131, [previousThread threadQosWorkQueueOverride], objc_msgSend(a2, "threadQosWorkQueueOverride"));
          v384 = v131[2](v131, [previousThread threadQosWorkloopServicerOverride], objc_msgSend(a2, "threadQosWorkloopServicerOverride"));
          isPromotedAboveTask = [a2 isPromotedAboveTask];
          if (isPromotedAboveTask == [previousThread isPromotedAboveTask])
          {
            if (((v132 | v133 | v134 | v387 | v385 | v384) & 1) == 0)
            {
              threadQos = [a2 threadQos];
              if (threadQos == [previousThread threadQos])
              {
                goto LABEL_205;
              }

LABEL_175:
              v137 = 0;
              v382 = 0;
              LOBYTE(v385) = 0;
              LOBYTE(v134) = 0;
              LOBYTE(v132) = 0;
              LOBYTE(v133) = 0;
              LOBYTE(v387) = 0;
              LOBYTE(v384) = 0;
LABEL_176:
              v138 = v410[5];
              if (v138)
              {
                [v138 appendString:{@", "}];
              }

              else
              {
                v139 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                v140 = v410[5];
                v410[5] = v139;
              }

              v141 = v410[5];
              v142 = StringForThreadQoS([a2 threadQos]);
              [v141 appendFormat:@"thread QoS %@", v142];

              if (!v137)
              {
                goto LABEL_205;
              }

              objc_msgSend(v410[5], "appendString:", @" (");
              if (v132)
              {
                v143 = v410[5];
                v144 = StringForThreadQoS([a2 threadRequestedQos]);
                [v143 appendFormat:@"requested %@", v144];

                if ((v133 & 1) == 0)
                {
LABEL_185:
                  if ((v134 & 1) == 0)
                  {
LABEL_189:
                    if ((v387 & 1) == 0)
                    {
LABEL_192:
                      if ((v385 & 1) == 0)
                      {
LABEL_195:
                        if ((v384 & 1) == 0)
                        {
                          goto LABEL_198;
                        }

                        [v410[5] appendString:{@", "}];
LABEL_197:
                        v153 = v410[5];
                        v154 = StringForThreadQoS([a2 threadQosWorkloopServicerOverride]);
                        [v153 appendFormat:@"workloop servicer override %@", v154];

LABEL_198:
                        if (v382)
                        {
                          [v410[5] appendString:{@", "}];
LABEL_200:
                          isPromotedAboveTask2 = [a2 isPromotedAboveTask];
                          v156 = v410[5];
                          if (isPromotedAboveTask2)
                          {
                            v157 = @"thread promoted above process clamp";
                          }

                          else
                          {
                            v157 = @"thread limited by process clamp";
                          }

                          [v410[5] appendFormat:v157];
                        }

LABEL_204:
                        [v410[5] appendString:@""]);
                        goto LABEL_205;
                      }

                      [v410[5] appendString:{@", "}];
LABEL_194:
                      v151 = v410[5];
                      v152 = StringForThreadQoS([a2 threadQosWorkQueueOverride]);
                      [v151 appendFormat:@"work queue override %@", v152];

                      goto LABEL_195;
                    }

                    [v410[5] appendString:{@", "}];
LABEL_191:
                    v149 = v410[5];
                    v150 = StringForThreadQoS([a2 threadQosKEventOverride]);
                    [v149 appendFormat:@"kevent override %@", v150];

                    goto LABEL_192;
                  }

                  [v410[5] appendString:{@", "}];
LABEL_188:
                  v147 = v410[5];
                  v148 = StringForThreadQoS([a2 threadQosPromote]);
                  [v147 appendFormat:@"promote %@", v148];

                  goto LABEL_189;
                }

                [v410[5] appendString:{@", "}];
              }

              else if ((v133 & 1) == 0)
              {
                if ((v134 & 1) == 0)
                {
                  if ((v387 & 1) == 0)
                  {
                    if ((v385 & 1) == 0)
                    {
                      if ((v384 & 1) == 0)
                      {
                        if (v382)
                        {
                          goto LABEL_200;
                        }

                        goto LABEL_204;
                      }

                      goto LABEL_197;
                    }

                    goto LABEL_194;
                  }

                  goto LABEL_191;
                }

                goto LABEL_188;
              }

              v145 = v410[5];
              v146 = StringForThreadQoS([a2 threadRequestedQosOverride]);
              [v145 appendFormat:@"requested override %@", v146];

              goto LABEL_185;
            }

            goto LABEL_173;
          }
        }

        else
        {
          v132 = v130[2](v130, [a2 threadRequestedQos]);
          v133 = v130[2](v130, [a2 threadRequestedQosOverride]);
          v134 = v130[2](v130, [a2 threadQosPromote]);
          v387 = v130[2](v130, [a2 threadQosKEventOverride]);
          v385 = v130[2](v130, [a2 threadQosWorkQueueOverride]);
          v384 = v130[2](v130, [a2 threadQosWorkloopServicerOverride]);
          if (([a2 isPromotedAboveTask] & 1) == 0)
          {
            if (((v132 | v133 | v134 | v387 | v385 | v384) & 1) == 0)
            {
              if (![a2 threadQos])
              {
LABEL_205:

LABEL_206:
                if (v396)
                {
                  if (!a2)
                  {
                    goto LABEL_364;
                  }

                  goto LABEL_331;
                }

                if (![taskState usesSuddenTermination])
                {
LABEL_221:
                  if (!displayedTimestamp)
                  {
                    if (([indexes isBoosted] & 1) == 0)
                    {
LABEL_235:
                      if (([indexes isRunawayMitigated] & 1) == 0)
                      {
                        goto LABEL_248;
                      }

                      v171 = 1;
                      goto LABEL_239;
                    }

                    v165 = 1;
                    goto LABEL_226;
                  }

LABEL_222:
                  isBoosted = [indexes isBoosted];
                  if (isBoosted == [displayedTimestamp isBoosted])
                  {
                    goto LABEL_237;
                  }

                  v165 = 0;
LABEL_226:
                  isBoosted2 = [indexes isBoosted];
                  v167 = v410[5];
                  if (isBoosted2)
                  {
                    if (v167)
                    {
                      [v167 appendString:{@", "}];
                      v168 = @"process unclamped";
                      goto LABEL_234;
                    }

                    v169 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                    v168 = @"process unclamped";
                  }

                  else
                  {
                    if (v167)
                    {
                      [v167 appendString:{@", "}];
                      v168 = @"process clamped";
                      goto LABEL_234;
                    }

                    v169 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                    v168 = @"process clamped";
                  }

                  v170 = v410[5];
                  v410[5] = v169;

LABEL_234:
                  [v410[5] appendFormat:v168];
                  if (v165)
                  {
                    goto LABEL_235;
                  }

LABEL_237:
                  isRunawayMitigated = [indexes isRunawayMitigated];
                  if (isRunawayMitigated == [displayedTimestamp isRunawayMitigated])
                  {
                    goto LABEL_250;
                  }

                  v171 = 0;
LABEL_239:
                  isRunawayMitigated2 = [indexes isRunawayMitigated];
                  v174 = v410[5];
                  if (isRunawayMitigated2)
                  {
                    if (v174)
                    {
                      [v174 appendString:{@", "}];
                      v175 = @"process runaway mitigated";
                      goto LABEL_247;
                    }

                    v176 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                    v175 = @"process runaway mitigated";
                  }

                  else
                  {
                    if (v174)
                    {
                      [v174 appendString:{@", "}];
                      v175 = @"process not runaway mitigated";
                      goto LABEL_247;
                    }

                    v176 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                    v175 = @"process not runaway mitigated";
                  }

                  v177 = v410[5];
                  v410[5] = v176;

LABEL_247:
                  [v410[5] appendFormat:v175];
                  if (v171)
                  {
LABEL_248:
                    v178 = 1;
                    if (([indexes isTALEngaged] & 1) == 0)
                    {
LABEL_260:
                      if (![taskState isRunningBoardManaged])
                      {
                        goto LABEL_282;
                      }

                      if ((v178 & 1) == 0)
                      {
                        isRunningBoardActive = [indexes isRunningBoardActive];
                        if (isRunningBoardActive == [displayedTimestamp isRunningBoardActive])
                        {
LABEL_272:
                          hasRunningBoardAssertion = [indexes hasRunningBoardAssertion];
                          if (hasRunningBoardAssertion == [displayedTimestamp hasRunningBoardAssertion])
                          {
                            goto LABEL_286;
                          }

LABEL_273:
                          hasRunningBoardAssertion2 = [indexes hasRunningBoardAssertion];
                          v193 = v410[5];
                          if (hasRunningBoardAssertion2)
                          {
                            if (v193)
                            {
                              [v193 appendString:{@", "}];
                              v194 = @"process has a runningboard assertion";
LABEL_281:
                              [v410[5] appendFormat:v194];
LABEL_282:
                              if (v178)
                              {
                                v197 = [indexes effectiveJetsamPriority] != 0x80000000;
                                v199 = 0;
                                if ([indexes requestedJetsamPriority] != 0x80000000)
                                {
                                  requestedJetsamPriority = [indexes requestedJetsamPriority];
                                  if (requestedJetsamPriority != [indexes effectiveJetsamPriority])
                                  {
                                    v199 = 1;
                                  }
                                }

                                if ([indexes assertionJetsamPriority] != 0x80000000)
                                {
                                  assertionJetsamPriority = [indexes assertionJetsamPriority];
                                  effectiveJetsamPriority = [indexes effectiveJetsamPriority];
                                  goto LABEL_297;
                                }

                                goto LABEL_298;
                              }

LABEL_286:
                              effectiveJetsamPriority2 = [indexes effectiveJetsamPriority];
                              v197 = effectiveJetsamPriority2 != [displayedTimestamp effectiveJetsamPriority];
                              requestedJetsamPriority2 = [indexes requestedJetsamPriority];
                              v199 = 0;
                              if (requestedJetsamPriority2 != [displayedTimestamp requestedJetsamPriority])
                              {
                                requestedJetsamPriority3 = [indexes requestedJetsamPriority];
                                if (requestedJetsamPriority3 != [indexes effectiveJetsamPriority] || (v203 = objc_msgSend(displayedTimestamp, "requestedJetsamPriority"), v203 != objc_msgSend(displayedTimestamp, "effectiveJetsamPriority")))
                                {
                                  v199 = 1;
                                }
                              }

                              assertionJetsamPriority2 = [indexes assertionJetsamPriority];
                              if (assertionJetsamPriority2 != [displayedTimestamp assertionJetsamPriority])
                              {
                                assertionJetsamPriority3 = [indexes assertionJetsamPriority];
                                if (assertionJetsamPriority3 != [indexes effectiveJetsamPriority])
                                {
                                  goto LABEL_301;
                                }

                                assertionJetsamPriority = [displayedTimestamp assertionJetsamPriority];
                                effectiveJetsamPriority = [displayedTimestamp effectiveJetsamPriority];
LABEL_297:
                                if (assertionJetsamPriority == effectiveJetsamPriority)
                                {
                                  goto LABEL_298;
                                }

LABEL_301:
                                v208 = 1;
LABEL_302:
                                effectiveJetsamPriority3 = [indexes effectiveJetsamPriority];
                                v210 = v410[5];
                                if (effectiveJetsamPriority3 == 0x80000000)
                                {
                                  if (v210)
                                  {
                                    [v210 appendString:{@", "}];
                                  }

                                  else
                                  {
                                    v211 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                    v212 = v410[5];
                                    v410[5] = v211;
                                  }

                                  [v410[5] appendFormat:@"jetsam priority unknown"];
                                }

                                else
                                {
                                  if (v210)
                                  {
                                    [v210 appendString:{@", "}];
                                  }

                                  else
                                  {
                                    v213 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                    v214 = v410[5];
                                    v410[5] = v213;
                                  }

                                  [v410[5] appendFormat:@"jetsam priority %d", objc_msgSend(indexes, "effectiveJetsamPriority")];
                                }

                                if ((v208 | v199) == 1)
                                {
                                  objc_msgSend(v410[5], "appendString:", @" (requested ");
                                  if ([indexes requestedJetsamPriority] == 0x80000000)
                                  {
                                    [v410[5] appendString:@"unknown"];
                                  }

                                  else
                                  {
                                    [v410[5] appendFormat:@"%d", objc_msgSend(indexes, "requestedJetsamPriority")];
                                  }

                                  [v410[5] appendString:{@", assertion "}];
                                  if ([indexes assertionJetsamPriority] == 0x80000000)
                                  {
                                    [v410[5] appendString:@"unknown"];
                                  }

                                  else
                                  {
                                    [v410[5] appendFormat:@"%d", objc_msgSend(indexes, "assertionJetsamPriority")];
                                  }

                                  [v410[5] appendString:@""]);
                                }

LABEL_319:
                                if (v178)
                                {
                                  if ([indexes memoryLimitMB] == 0x80000000)
                                  {
                                    goto LABEL_330;
                                  }
                                }

                                else
                                {
                                  memoryLimitMB = [indexes memoryLimitMB];
                                  if (memoryLimitMB == [displayedTimestamp memoryLimitMB])
                                  {
                                    goto LABEL_330;
                                  }
                                }

                                if ([indexes memoryLimitMB] == 0x80000000)
                                {
                                  v216 = @"unknown";
                                }

                                else
                                {
                                  v216 = SAFormattedBytesEx([indexes memoryLimitMB] << 20, 1, 0, 0, 0x100000uLL);
                                }

                                v217 = v410[5];
                                if (v217)
                                {
                                  [v217 appendString:{@", "}];
                                }

                                else
                                {
                                  v218 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                  v219 = v410[5];
                                  v410[5] = v218;
                                }

                                [v410[5] appendFormat:@"process memory limit %@", v216];

LABEL_330:
                                if (!a2)
                                {
                                  goto LABEL_357;
                                }

LABEL_331:
                                if (previousThread != a2)
                                {
                                  if (previousThread)
                                  {
                                    isDarwinBG = [previousThread isDarwinBG];
                                    if (isDarwinBG != [a2 isDarwinBG])
                                    {
LABEL_334:
                                      v221 = v410[5];
                                      if (v221)
                                      {
                                        [v221 appendString:{@", "}];
                                      }

                                      else
                                      {
                                        v223 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                        v224 = v410[5];
                                        v410[5] = v223;
                                      }

                                      v225 = v410[5];
                                      isDarwinBG2 = [a2 isDarwinBG];
                                      v227 = @"not ";
                                      v222 = &stru_1F5BBF440;
                                      if (isDarwinBG2)
                                      {
                                        v227 = &stru_1F5BBF440;
                                      }

                                      [v225 appendFormat:@"thread %@darwinbg", v227];
LABEL_342:
                                      if (v396)
                                      {
                                        goto LABEL_364;
                                      }

                                      if (displayedTimestamp)
                                      {
                                        isDarwinBG3 = [displayedTimestamp isDarwinBG];
                                        if (isDarwinBG3 == [indexes isDarwinBG])
                                        {
LABEL_357:
                                          donatingUniquePids = [displayedTimestamp donatingUniquePids];
                                          donatingUniquePids2 = [indexes donatingUniquePids];
                                          v237 = donatingUniquePids2;
                                          if ((donatingUniquePids != 0) != (donatingUniquePids2 != 0) || donatingUniquePids && donatingUniquePids2 && ([donatingUniquePids isEqualToSet:donatingUniquePids2] & 1) == 0)
                                          {
                                            v404[0] = MEMORY[0x1E69E9820];
                                            v404[1] = 3221225472;
                                            v404[2] = __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_3;
                                            v404[3] = &unk_1E86F7D40;
                                            v404[4] = taskState;
                                            v404[5] = self;
                                            v404[6] = &v409;
                                            v238 = MEMORY[0x1E12EBE50](v404);
                                            v239 = v238;
                                            if (sampleTimestamp != 0 && donatingUniquePids != 0)
                                            {
                                              (*(v238 + 16))(v238, donatingUniquePids, v237, @"dropped", sampleTimestamp);
                                            }

                                            startTimestamp = [indexes startTimestamp];
                                            if (startTimestamp)
                                            {
                                              (v239)[2](v239, v237, donatingUniquePids, @"received", startTimestamp);
                                            }
                                          }

LABEL_364:
                                          if (![*(self + 16) displayDifferentTypesOfSuspension])
                                          {
                                            goto LABEL_437;
                                          }

                                          if ((v394 & 1) == 0)
                                          {
                                            if (previousThread)
                                            {
                                              isSuspended = [a2 isSuspended];
                                              if (isSuspended != [previousThread isSuspended])
                                              {
LABEL_368:
                                                v242 = 1;
                                                goto LABEL_375;
                                              }
                                            }

                                            else if ([a2 isSuspended])
                                            {
                                              goto LABEL_368;
                                            }
                                          }

                                          v242 = 0;
LABEL_375:
                                          if (v396)
                                          {
                                            goto LABEL_427;
                                          }

                                          if (displayedTimestamp)
                                          {
                                            suspendCount = [indexes suspendCount];
                                            v244 = suspendCount != [displayedTimestamp suspendCount];
                                            isPidSuspended = [indexes isPidSuspended];
                                            if (isPidSuspended != [displayedTimestamp isPidSuspended])
                                            {
                                              goto LABEL_378;
                                            }
                                          }

                                          else
                                          {
                                            v244 = [indexes suspendCount] != 0;
                                            if ([indexes isPidSuspended])
                                            {
LABEL_378:
                                              if ([indexes isPidSuspended])
                                              {
                                                v246 = v410[5];
                                                if (v246)
                                                {
                                                  [v246 appendString:{@", "}];
                                                  v247 = @"process pidsuspended";
LABEL_405:
                                                  [v410[5] appendFormat:v247];
                                                  if (!v244)
                                                  {
                                                    goto LABEL_427;
                                                  }

                                                  v248 = 1;
LABEL_407:
                                                  if ([indexes suspendCount])
                                                  {
                                                    v259 = v410[5];
                                                    if (v259)
                                                    {
                                                      [v259 appendString:{@", "}];
                                                    }

                                                    else
                                                    {
                                                      v263 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                      v264 = v410[5];
                                                      v410[5] = v263;
                                                    }

                                                    v255 = v410[5];
                                                    suspendCount2 = [indexes suspendCount];
                                                    v257 = @"process suspend count %d";
LABEL_420:
                                                    [v255 appendFormat:v257, suspendCount2];
                                                    goto LABEL_427;
                                                  }

                                                  if ((v248 & 1) != 0 || ![indexes isPidSuspended])
                                                  {
                                                    if ((v242 & 1) == 0 && [a2 isSuspended])
                                                    {
                                                      v262 = v410[5];
                                                      if (v262)
                                                      {
                                                        [v262 appendString:{@", "}];
                                                      }

                                                      else
                                                      {
                                                        v324 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                        v325 = v410[5];
                                                        v410[5] = v324;
                                                      }

                                                      [v410[5] appendFormat:@"process suspend count 0 (thread still suspended)"];
                                                      goto LABEL_438;
                                                    }

                                                    v265 = v410[5];
                                                    if (v265)
                                                    {
                                                      [v265 appendString:{@", "}];
                                                      v261 = @"process suspend count 0";
                                                      goto LABEL_426;
                                                    }

                                                    v266 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                    v261 = @"process suspend count 0";
                                                  }

                                                  else
                                                  {
                                                    v260 = v410[5];
                                                    if (v260)
                                                    {
                                                      [v260 appendString:{@", "}];
                                                      v261 = @"process suspend count 0 (process still pidsuspended)";
LABEL_426:
                                                      [v410[5] appendFormat:v261];
LABEL_427:
                                                      if (!v242)
                                                      {
                                                        goto LABEL_437;
                                                      }

                                                      isSuspended2 = [a2 isSuspended];
                                                      v269 = v410[5];
                                                      if (isSuspended2)
                                                      {
                                                        if (v269)
                                                        {
                                                          [v269 appendString:{@", "}];
                                                          v270 = @"thread suspended";
LABEL_436:
                                                          [v410[5] appendFormat:v270];
LABEL_437:
                                                          if (v396)
                                                          {
                                                            goto LABEL_470;
                                                          }

LABEL_438:
                                                          if (displayedTimestamp)
                                                          {
                                                            isSuppressed = [indexes isSuppressed];
                                                            if (isSuppressed == [displayedTimestamp isSuppressed])
                                                            {
LABEL_451:
                                                              latencyQos = [indexes latencyQos];
                                                              if (latencyQos == [displayedTimestamp latencyQos])
                                                              {
                                                                goto LABEL_470;
                                                              }

                                                              goto LABEL_455;
                                                            }
                                                          }

                                                          else if (([indexes isSuppressed] & 1) == 0)
                                                          {
                                                            goto LABEL_453;
                                                          }

                                                          isSuppressed2 = [indexes isSuppressed];
                                                          v275 = v410[5];
                                                          if (isSuppressed2)
                                                          {
                                                            if (v275)
                                                            {
                                                              [v275 appendString:{@", "}];
                                                              v276 = @"process suppressed";
                                                              goto LABEL_450;
                                                            }

                                                            v277 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                            v276 = @"process suppressed";
                                                          }

                                                          else
                                                          {
                                                            if (v275)
                                                            {
                                                              [v275 appendString:{@", "}];
                                                              v276 = @"process unsuppressed";
                                                              goto LABEL_450;
                                                            }

                                                            v277 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                            v276 = @"process unsuppressed";
                                                          }

                                                          v278 = v410[5];
                                                          v410[5] = v277;

LABEL_450:
                                                          [v410[5] appendFormat:v276];
                                                          if (displayedTimestamp)
                                                          {
                                                            goto LABEL_451;
                                                          }

LABEL_453:
                                                          latencyQos2 = [indexes latencyQos];
                                                          if (!latencyQos2 || latencyQos2 == 16711681)
                                                          {
LABEL_470:
                                                            if ((v394 & 1) == 0)
                                                            {
                                                              if (previousThread && (v290 = [a2 ioTier], v290 == objc_msgSend(previousThread, "ioTier")) && (v291 = objc_msgSend(a2, "isIOPassive"), v291 == objc_msgSend(previousThread, "isIOPassive")))
                                                              {
                                                                if ((taskChanges & 1) == 0)
                                                                {
                                                                  goto LABEL_498;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v292 = v410[5];
                                                                if (v292)
                                                                {
                                                                  [v292 appendString:{@", "}];
                                                                }

                                                                else
                                                                {
                                                                  v293 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                                  v294 = v410[5];
                                                                  v410[5] = v293;
                                                                }

                                                                [v410[5] appendFormat:@"IO tier %d", objc_msgSend(a2, "ioTier")];
                                                                if ([a2 isIOPassive])
                                                                {
                                                                  [v410[5] appendString:@" and passive"];
                                                                }

                                                                if ((taskChanges & 1) == 0)
                                                                {
                                                                  goto LABEL_498;
                                                                }

                                                                if (!previousThread)
                                                                {
                                                                  goto LABEL_485;
                                                                }
                                                              }

                                                              scheduledPriority = [previousThread scheduledPriority];
                                                              if (scheduledPriority != [a2 scheduledPriority] || (v296 = objc_msgSend(previousThread, "basePriority"), v296 != objc_msgSend(a2, "basePriority")))
                                                              {
LABEL_485:
                                                                if (([a2 scheduledPriority] & 0x80000000) == 0)
                                                                {
                                                                  basePriority = [a2 basePriority];
                                                                  v298 = v410[5];
                                                                  if (basePriority < 0)
                                                                  {
                                                                    if (v298)
                                                                    {
                                                                      [v298 appendString:{@", "}];
                                                                    }

                                                                    else
                                                                    {
                                                                      v302 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                                      v303 = v410[5];
                                                                      v410[5] = v302;
                                                                    }

                                                                    [v410[5] appendFormat:@"priority %d", objc_msgSend(a2, "scheduledPriority")];
                                                                  }

                                                                  else
                                                                  {
                                                                    if (v298)
                                                                    {
                                                                      [v298 appendString:{@", "}];
                                                                    }

                                                                    else
                                                                    {
                                                                      v300 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                                      v301 = v410[5];
                                                                      v410[5] = v300;
                                                                    }

                                                                    [v410[5] appendFormat:@"priority %d (%d)", objc_msgSend(a2, "scheduledPriority"), objc_msgSend(a2, "basePriority")];
                                                                  }
                                                                }
                                                              }
                                                            }

LABEL_498:
                                                            if ([jump count])
                                                            {
                                                              v304 = v410[5];
                                                              if (v304)
                                                              {
                                                                [v304 appendString:{@", "}];
                                                              }

                                                              else
                                                              {
                                                                v305 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                                v306 = v410[5];
                                                                v410[5] = v305;
                                                              }

                                                              v307 = v410[5];
                                                              v308 = [(SASamplePrinter *)self copyDescriptionForIOEvents:jump];
                                                              [v307 appendString:v308];
                                                            }

                                                            if (v391)
                                                            {
                                                              mountStatusTracker = [*(self + 168) mountStatusTracker];
                                                              v310 = -[SAMountStatusTracker hasUnresponsiveMountsForThreadID:](mountStatusTracker, [states threadId]);

                                                              if (v310)
                                                              {
                                                                sampleTimestampCopy = sampleTimestamp;
                                                                if (!sampleTimestamp)
                                                                {
                                                                  sampleTimestampCopy = *(self + 32);
                                                                }

                                                                v312 = sampleTimestampCopy;
                                                                if (state | queue)
                                                                {
                                                                  *buf = 0;
                                                                  *&buf[8] = buf;
                                                                  *&buf[16] = 0x3032000000;
                                                                  v416 = __Block_byref_object_copy__4;
                                                                  *v417 = __Block_byref_object_dispose__4;
                                                                  *&v417[8] = a2;
                                                                  v313 = *(self + 40);
                                                                  v403[0] = MEMORY[0x1E69E9820];
                                                                  v403[1] = 3221225472;
                                                                  v403[2] = __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_4;
                                                                  v403[3] = &unk_1E86F7D68;
                                                                  v403[5] = *&v417[8];
                                                                  v403[6] = buf;
                                                                  v403[4] = states;
                                                                  [(SASamplePrinter *)self iterateDispatchQueue:state orSwiftTaskStates:queue orThread:0 threadStateIndexes:0 startingAtIndex:task + 1 endingAfterTimestamp:v313 task:0 stopAtTimeJumps:0 callback:v403];
                                                                  endTimestamp = [*(*&buf[8] + 40) endTimestamp];
                                                                  _Block_object_dispose(buf, 8);
                                                                }

                                                                else
                                                                {
                                                                  if (thread)
                                                                  {
                                                                    threadStates = [states threadStates];
                                                                    lastObject = [thread lastObject];
                                                                    v317 = [threadStates objectAtIndexedSubscript:{objc_msgSend(lastObject, "unsignedLongValue")}];
                                                                    endTimestamp = [v317 endTimestamp];
                                                                  }

                                                                  else
                                                                  {
                                                                    threadStates = [states lastThreadStateOnOrBeforeTime:*(self + 40) sampleIndex:*(self + 64)];
                                                                    endTimestamp = [threadStates endTimestamp];
                                                                  }
                                                                }

                                                                if ([*(self + 168) sanitizePaths])
                                                                {
                                                                  v318 = os_variant_has_internal_diagnostics() ^ 1;
                                                                }

                                                                else
                                                                {
                                                                  v318 = 0;
                                                                }

                                                                mountStatusTracker2 = [*(self + 168) mountStatusTracker];
                                                                threadId = [states threadId];
                                                                v401[0] = MEMORY[0x1E69E9820];
                                                                v401[1] = 3221225472;
                                                                v401[2] = __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_5;
                                                                v401[3] = &unk_1E86F7D90;
                                                                v402 = v318;
                                                                v401[4] = &v409;
                                                                [(SAMountStatusTracker *)mountStatusTracker2 enumerateMountsBlockingThread:threadId betweenStartTime:v312 endTime:endTimestamp block:v401];
                                                              }
                                                            }

                                                            v321 = v410[5];
                                                            _Block_object_dispose(&v409, 8);

                                                            goto LABEL_518;
                                                          }

LABEL_455:
                                                          latencyQos3 = [indexes latencyQos];
                                                          v282 = v410[5];
                                                          if (latencyQos3)
                                                          {
                                                            if (v282)
                                                            {
                                                              [v282 appendString:{@", "}];
                                                            }

                                                            else
                                                            {
                                                              v283 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                              v284 = v410[5];
                                                              v410[5] = v283;
                                                            }

                                                            [v410[5] appendFormat:@"timers tier %d", _TimerTier(objc_msgSend(indexes, "latencyQos"))];
                                                          }

                                                          else
                                                          {
                                                            if (v282)
                                                            {
                                                              [v282 appendString:{@", "}];
                                                            }

                                                            else
                                                            {
                                                              v285 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                              v286 = v410[5];
                                                              v410[5] = v285;
                                                            }

                                                            [v410[5] appendFormat:@"timers tier unspecified"];
                                                          }

                                                          latencyQos4 = [indexes latencyQos];
                                                          v288 = @" (normal)";
                                                          if (latencyQos4 && latencyQos4 != 16711681)
                                                          {
                                                            if ([indexes latencyQos] - 16711682 >= 3)
                                                            {
                                                              latencyQos5 = [indexes latencyQos];
                                                              v289 = v410[5];
                                                              if ((latencyQos5 - 16711685) >= 2)
                                                              {
                                                                [v289 appendFormat:@" (unknown: 0x%x)", objc_msgSend(indexes, "latencyQos")];
                                                                goto LABEL_470;
                                                              }

                                                              v288 = @" (throttled)";
LABEL_469:
                                                              [v289 appendString:v288];
                                                              goto LABEL_470;
                                                            }

                                                            v288 = @" (coalesced)";
                                                          }

                                                          v289 = v410[5];
                                                          goto LABEL_469;
                                                        }

                                                        v271 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                        v270 = @"thread suspended";
                                                      }

                                                      else
                                                      {
                                                        if (v269)
                                                        {
                                                          [v269 appendString:{@", "}];
                                                          v270 = @"thread unsuspended";
                                                          goto LABEL_436;
                                                        }

                                                        v271 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                        v270 = @"thread unsuspended";
                                                      }

                                                      v272 = v410[5];
                                                      v410[5] = v271;

                                                      goto LABEL_436;
                                                    }

                                                    v266 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                    v261 = @"process suspend count 0 (process still pidsuspended)";
                                                  }

                                                  v267 = v410[5];
                                                  v410[5] = v266;

                                                  goto LABEL_426;
                                                }

                                                v252 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                v247 = @"process pidsuspended";
                                              }

                                              else
                                              {
                                                if (!v244 && [indexes suspendCount])
                                                {
                                                  v249 = v410[5];
                                                  if (v249)
                                                  {
                                                    [v249 appendString:{@", "}];
                                                  }

                                                  else
                                                  {
                                                    v253 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                    v254 = v410[5];
                                                    v410[5] = v253;
                                                  }

                                                  v255 = v410[5];
                                                  suspendCount2 = [indexes suspendCount];
                                                  v257 = @"process unpidsuspended (process suspend count still %d)";
                                                  goto LABEL_420;
                                                }

                                                if ((v242 & 1) != 0 || ![a2 isSuspended])
                                                {
                                                  v251 = v410[5];
                                                  if (v251)
                                                  {
                                                    [v251 appendString:{@", "}];
                                                    v247 = @"process unpidsuspended";
                                                    goto LABEL_405;
                                                  }

                                                  v252 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                  v247 = @"process unpidsuspended";
                                                }

                                                else
                                                {
                                                  v250 = v410[5];
                                                  if (v250)
                                                  {
                                                    [v250 appendString:{@", "}];
                                                    v247 = @"process unpidsuspended (thread still suspended)";
                                                    goto LABEL_405;
                                                  }

                                                  v252 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                  v247 = @"process unpidsuspended (thread still suspended)";
                                                }
                                              }

                                              v258 = v410[5];
                                              v410[5] = v252;

                                              goto LABEL_405;
                                            }
                                          }

                                          if (!v244)
                                          {
                                            goto LABEL_427;
                                          }

                                          v248 = 0;
                                          goto LABEL_407;
                                        }
                                      }

                                      else if (([indexes isDarwinBG] & 1) == 0)
                                      {
                                        goto LABEL_357;
                                      }

                                      v229 = v410[5];
                                      if (v229)
                                      {
                                        [v229 appendString:{@", "}];
                                      }

                                      else
                                      {
                                        v230 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                        v231 = v410[5];
                                        v410[5] = v230;
                                      }

                                      v232 = v410[5];
                                      if ([indexes isDarwinBG])
                                      {
                                        v233 = &stru_1F5BBF440;
                                      }

                                      else
                                      {
                                        v233 = @"not ";
                                      }

                                      v234 = &stru_1F5BBF440;
                                      if (([indexes isDarwinBG] & 1) == 0 && objc_msgSend(a2, "isDarwinBG"))
                                      {
                                        v234 = v222;
                                      }

                                      [v232 appendFormat:@"process %@darwinbg%@", v233, v234];
                                      goto LABEL_357;
                                    }
                                  }

                                  else if ([a2 isDarwinBG])
                                  {
                                    goto LABEL_334;
                                  }
                                }

                                v222 = @" (thread still darwinbg)";
                                goto LABEL_342;
                              }

LABEL_298:
                              v208 = 0;
                              if (!v199 && !v197)
                              {
                                goto LABEL_319;
                              }

                              goto LABEL_302;
                            }

                            v195 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                            v194 = @"process has a runningboard assertion";
                          }

                          else
                          {
                            if (v193)
                            {
                              [v193 appendString:{@", "}];
                              v194 = @"process has no runningboard assertion";
                              goto LABEL_281;
                            }

                            v195 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                            v194 = @"process has no runningboard assertion";
                          }

                          v196 = v410[5];
                          v410[5] = v195;

                          goto LABEL_281;
                        }
                      }

                      isRunningBoardActive2 = [indexes isRunningBoardActive];
                      v187 = v410[5];
                      if (isRunningBoardActive2)
                      {
                        if (v187)
                        {
                          [v187 appendString:{@", "}];
                          v188 = @"process runningboard active";
                          goto LABEL_271;
                        }

                        v189 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                        v188 = @"process runningboard active";
                      }

                      else
                      {
                        if (v187)
                        {
                          [v187 appendString:{@", "}];
                          v188 = @"process runningboard inactive";
                          goto LABEL_271;
                        }

                        v189 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                        v188 = @"process runningboard inactive";
                      }

                      v190 = v410[5];
                      v410[5] = v189;

LABEL_271:
                      [v410[5] appendFormat:v188];
                      if (v178)
                      {
                        goto LABEL_273;
                      }

                      goto LABEL_272;
                    }

LABEL_251:
                    isTALEngaged = [indexes isTALEngaged];
                    v181 = v410[5];
                    if (isTALEngaged)
                    {
                      if (v181)
                      {
                        [v181 appendString:{@", "}];
                        v182 = @"process clamped to Utility QoS";
LABEL_259:
                        [v410[5] appendFormat:v182];
                        goto LABEL_260;
                      }

                      v183 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                      v182 = @"process clamped to Utility QoS";
                    }

                    else
                    {
                      if (v181)
                      {
                        [v181 appendString:{@", "}];
                        v182 = @"process unclamped from Utility QoS";
                        goto LABEL_259;
                      }

                      v183 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                      v182 = @"process unclamped from Utility QoS";
                    }

                    v184 = v410[5];
                    v410[5] = v183;

                    goto LABEL_259;
                  }

LABEL_250:
                  isTALEngaged2 = [indexes isTALEngaged];
                  v178 = 0;
                  if (isTALEngaged2 == [displayedTimestamp isTALEngaged])
                  {
                    goto LABEL_260;
                  }

                  goto LABEL_251;
                }

                if (displayedTimestamp)
                {
                  isDirty = [indexes isDirty];
                  if (isDirty == [displayedTimestamp isDirty])
                  {
                    goto LABEL_222;
                  }
                }

                isDirty2 = [indexes isDirty];
                v160 = v410[5];
                if (isDirty2)
                {
                  if (v160)
                  {
                    [v160 appendString:{@", "}];
                    v161 = @"process sudden termination dirty";
LABEL_220:
                    [v410[5] appendFormat:v161];
                    goto LABEL_221;
                  }

                  v162 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                  v161 = @"process sudden termination dirty";
                }

                else
                {
                  if (v160)
                  {
                    [v160 appendString:{@", "}];
                    v161 = @"process sudden termination clean";
                    goto LABEL_220;
                  }

                  v162 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                  v161 = @"process sudden termination clean";
                }

                v163 = v410[5];
                v410[5] = v162;

                goto LABEL_220;
              }

              goto LABEL_175;
            }

LABEL_173:
            v382 = 0;
            v137 = 1;
            goto LABEL_176;
          }
        }

        v137 = 1;
        v382 = 1;
        goto LABEL_176;
      }

      if (displayedTimestamp)
      {
        isForeground = [indexes isForeground];
        if (isForeground == [displayedTimestamp isForeground])
        {
          goto LABEL_164;
        }
      }

      else if (([indexes isForeground] & 1) == 0)
      {
        goto LABEL_164;
      }

      isForeground2 = [indexes isForeground];
      v125 = v410[5];
      if (isForeground2)
      {
        if (v125)
        {
          [v125 appendString:{@", "}];
          v126 = @"process frontmost";
LABEL_163:
          [v410[5] appendFormat:v126];
          goto LABEL_164;
        }

        v127 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
        v126 = @"process frontmost";
      }

      else
      {
        if (v125)
        {
          [v125 appendString:{@", "}];
          v126 = @"process non-frontmost";
          goto LABEL_163;
        }

        v127 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
        v126 = @"process non-frontmost";
      }

      v128 = v410[5];
      v410[5] = v127;

      goto LABEL_163;
    }

    if (previousThread)
    {
      v48 = ([previousThread endSampleIndex] + 1);
    }

    else
    {
      v48 = *(self + 56);
    }

    startSampleIndex = [a2 startSampleIndex];
    if (startSampleIndex <= *(self + 56))
    {
      v50 = *(self + 56);
    }

    else
    {
      v50 = startSampleIndex;
    }

    v51 = v50 - v48;
    if (v50 >= v48)
    {
      if (&v48[stack] < v50)
      {
        if (index)
        {
          v52 = @"in another call tree";
        }

        else
        {
          v52 = @"not seen";
          if (!state && !queue && thread)
          {
            threadStates2 = [states threadStates];
            firstObject = [threadStates2 firstObject];
            if (firstObject == a2)
            {
              v52 = @"not seen";
            }

            else
            {
              threadStates3 = [states threadStates];
              firstObject2 = [threadStates3 firstObject];
              v52 = @"in another call tree";
              if ([firstObject2 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                startSampleIndex2 = [a2 startSampleIndex];
                threadStates4 = [states threadStates];
                firstObject3 = [threadStates4 firstObject];
                if (startSampleIndex2 == [firstObject3 endSampleIndex] + 1)
                {
                  v55 = @"not seen";
                }

                else
                {
                  v55 = @"in another call tree";
                }

                v52 = v55;
              }
            }
          }
        }

        v69 = v410[5];
        if (v69)
        {
          [v69 appendString:{@", "}];
        }

        else
        {
          v70 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v71 = v410[5];
          v410[5] = v70;
        }

        v72 = @"s";
        if (v51 == 1)
        {
          v72 = &stru_1F5BBF440;
        }

        [v410[5] appendFormat:@"%@ %@ for %lu sample%@", v41, v52, v51, v72];
      }

      goto LABEL_75;
    }

    goto LABEL_526;
  }

  if (!queue)
  {
    v41 = @"Thread";
    goto LABEL_20;
  }

  v43 = *(self + 16);
  if (v43)
  {
    v41 = 0;
    v44 = *(v43 + 160);
    if (v44 > 2)
    {
      if (v44 != 3)
      {
        if (v44 != 4)
        {
          if (v44 != 5)
          {
            goto LABEL_20;
          }

          goto LABEL_66;
        }

LABEL_63:
        v41 = @"Swift Async";
        goto LABEL_20;
      }

LABEL_66:
      v41 = @"Swift Task";
      goto LABEL_20;
    }

    if (v44)
    {
      if (v44 != 2)
      {
        if (v44 != 1)
        {
          goto LABEL_20;
        }

        a2 = *__error();
        v56 = _sa_logt();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = [*(self + 16) debugDescription];
          v58 = v57;
          uTF8String7 = [v57 UTF8String];
          *buf = 136315138;
          *&buf[4] = uTF8String7;
          _os_log_error_impl(&dword_1E0E2F000, v56, OS_LOG_TYPE_ERROR, "state for swiftTaskStates, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", buf, 0xCu);
        }

        *__error() = a2;
        v60 = [*(self + 16) debugDescription];
        v61 = v60;
        uTF8String8 = [v60 UTF8String];
        _SASetCrashLogMessage(11048, "state for swiftTaskStates, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", v63, v64, v65, v66, v67, v68, uTF8String8);

        _os_crash();
        __break(1u);
        goto LABEL_63;
      }
    }

    else if ((*(v43 + 14) & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = @"Swift Async Base Function";
    goto LABEL_20;
  }

  v366 = *__error();
  v367 = _sa_logt();
  if (os_log_type_enabled(v367, OS_LOG_TYPE_ERROR))
  {
    v368 = [*(self + 16) debugDescription];
    v369 = v368;
    uTF8String9 = [v368 UTF8String];
    *buf = 136315138;
    *&buf[4] = uTF8String9;
    _os_log_error_impl(&dword_1E0E2F000, v367, OS_LOG_TYPE_ERROR, "swiftAsyncCallTreeAggregationResolved returned default: %s", buf, 0xCu);
  }

  *__error() = v366;
  v371 = [*(self + 16) debugDescription];
  v372 = v371;
  uTF8String10 = [v371 UTF8String];
  _SASetCrashLogMessage(11068, "swiftAsyncCallTreeAggregationResolved returned default: %s", v374, v375, v376, v377, v378, v379, uTF8String10);

  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = a2 == 125;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (*(a1 + 32))
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

BOOL __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  if ((*(a1 + 32) & 1) != 0 || a3 != 125 && a3)
  {
    return 1;
  }

  if (a2)
  {
    v4 = a2 == 125;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

void __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = [a2 allObjects];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v15 unsignedLongLongValue];
        if (v16 != [*(a1 + 32) uniquePid] && (objc_msgSend(a3, "containsObject:", v15) & 1) == 0)
        {
          v17 = -[SASampleStore taskWithUniquePid:atTimestamp:](*(*(a1 + 40) + 168), [v15 unsignedLongLongValue], a5);
          v18 = *(*(*(a1 + 48) + 8) + 40);
          if (v17)
          {
            if (v18)
            {
              [v18 appendString:{@", "}];
            }

            else
            {
              v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
              v20 = *(*(a1 + 48) + 8);
              v21 = *(v20 + 40);
              *(v20 + 40) = v19;
            }

            v22 = *(*(*(a1 + 48) + 8) + 40);
            v23 = [(SASamplePrinter *)*(a1 + 40) displayNameForTask:v17];
            [v22 appendFormat:@"process %@ importance donation from %@", a4, v23];
          }

          else
          {
            if (v18)
            {
              [v18 appendString:{@", "}];
            }

            else
            {
              v24 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
              v25 = *(*(a1 + 48) + 8);
              v26 = *(v25 + 40);
              *(v25 + 40) = v24;
            }

            [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"process %@ importance donation from %@ [%llu]", a4, @"UNKNOWN", objc_msgSend(v15, "unsignedLongLongValue")];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (uint64_t)copyDescriptionForIOEvents:(id *)events
{
  eventsCopy = events;
  if (!events)
  {
    return eventsCopy;
  }

  if ([a2 count])
  {
    if ([a2 count] == 1)
    {
      firstObject = [a2 firstObject];
      eventsCopy = [SASamplePrinter copyDescriptionForIOEvent:firstObject];
    }

    else
    {
      if ([a2 count] < 6)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = [eventsCopy[2] displayEachIndividualIOInCallTrees] ^ 1;
      }

      v6 = objc_alloc(MEMORY[0x1E696AD60]);
      v7 = [a2 count];
      v8 = 5;
      if (v7 > 5)
      {
        v8 = v7;
      }

      eventsCopy = [v6 initWithCapacity:16 * v8];
      if ([a2 count])
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = [a2 objectAtIndexedSubscript:v9];
          v12 = v11;
          if (v9 > 2)
          {
            v13 = v5;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            v10 += [v11 size];
          }

          else
          {
            if (v9)
            {
              [eventsCopy appendString:{@", "}];
            }

            v14 = [SASamplePrinter copyDescriptionForIOEvent:v12];
            [eventsCopy appendString:v14];
          }

          ++v9;
        }

        while (v9 < [a2 count]);
        if ((v5 & 1) == 0)
        {
          return eventsCopy;
        }
      }

      else
      {
        v10 = 0;
        if ((v5 & 1) == 0)
        {
          return eventsCopy;
        }
      }

      v15 = [a2 count] - 3;
      firstObject = SAFormattedBytesEx(v10, 1, 0, 0, 0x1000uLL);
      [eventsCopy appendFormat:@"... and %lu more I/Os totaling %@", v15, firstObject];
    }

    return eventsCopy;
  }

  v17 = *__error();
  v18 = _sa_logt();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "No IO events", buf, 2u);
  }

  *__error() = v17;
  _SASetCrashLogMessage(13463, "No IO events", v19, v20, v21, v22, v23, v24, v25);
  result = _os_crash();
  __break(1u);
  return result;
}

void __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  if (*(a1 + 32) == a5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
  }

  else
  {
    *a10 = 1;
  }
}

void __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (v5 == 1)
  {
    if (v6)
    {
      [v6 appendString:{@", "}];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = *(*(*(a1 + 32) + 8) + 40);
    v17 = SACopySanitizedString(a3, 1, 0);
    [v11 appendFormat:@"Thread becomes blocked by network mount (%@)", v17];
  }

  else
  {
    if (v6)
    {
      [v6 appendString:{@", "}];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
      v13 = *(*(a1 + 32) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v15 = *(*(*(a1 + 32) + 8) + 40);
    v17 = SACopySanitizedString(a2, 1, 0);
    v16 = SACopySanitizedString(a3, 1, 0);
    [v15 appendFormat:@"Thread becomes blocked by network mount %@ (%@)", v17, v16];
  }
}

- (BOOL)frame:(uint64_t)frame matchesFrame:
{
  if (!self)
  {
    return 0;
  }

  if (a2 != frame)
  {
    if (a2 && *(a2 + 8) == *(frame + 8))
    {
      if ([*(self + 16) aggregateFramesByOffsetIntoBinary])
      {
        WeakRetained = objc_loadWeakRetained((a2 + 24));
        v6 = objc_loadWeakRetained((frame + 24));
        v7 = v6;
        if (WeakRetained && v6)
        {
          binary = [WeakRetained binary];
          binary2 = [v7 binary];

          if (binary == binary2)
          {
            segment = [WeakRetained segment];
            segment2 = [v7 segment];

            if (segment == segment2)
            {
              address = [a2 address];
              v13 = address - [WeakRetained loadAddress];
              address2 = [frame address];
              v15 = v13 == address2 - [v7 loadAddress];
LABEL_15:

              return v15;
            }
          }

LABEL_14:
          v15 = 0;
          goto LABEL_15;
        }

        if (WeakRetained | v6)
        {
          goto LABEL_14;
        }
      }

      address3 = [a2 address];
      return address3 == [frame address];
    }

    return 0;
  }

  return 1;
}

void __245__SASamplePrinter_addStackForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_task_toRootObjects_nameChanges_dispatchQueueChanges_swiftTaskChanges_threadChanges_priorityChanges_microstackshotSummary_onlyHeaviestStack_includeState___block_invoke_2433(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, char *a6, void *a7, int a8, char a9)
{
  LODWORD(v593) = a8;
  v10 = a7;
  v13 = a1;
  v14 = buf;
  v650 = *MEMORY[0x1E69E9840];
  v597 = a3;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v601 = [a7 startTimestamp];
    if (a4)
    {
      if (v13[248])
      {
        v15 = [a4 startTimestamp];
        v16 = [v15 gt:v601];

        if (v16)
        {
          v17 = [a4 startTimestamp];

          v601 = v17;
        }
      }
    }

    v19 = [v10 endTimestamp];
    if (a4)
    {
      if (v13[248])
      {
        v20 = [a4 endTimestamp];
        v21 = [v20 lt:v19];

        if (v21)
        {
          v22 = [a4 endTimestamp];

          v19 = v22;
        }
      }
    }

    if (v601)
    {
      if (!v19)
      {
        v391 = *__error();
        v392 = _sa_logt();
        if (os_log_type_enabled(v392, OS_LOG_TYPE_ERROR))
        {
          v393 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
          v9 = [v393 UTF8String];
          v394 = [(SATaskState *)a4 debugDescriptionWithTask:?];
          v395 = [v394 UTF8String];
          *buf = 136315394;
          v626 = v9;
          v627 = 2080;
          v628 = v395;
          _os_log_error_impl(&dword_1E0E2F000, v392, OS_LOG_TYPE_ERROR, "nil endTimestamp for %s %s", buf, 0x16u);
        }

        *__error() = v391;
        v204 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
        v23 = [v204 UTF8String];
        v291 = [(SATaskState *)a4 debugDescriptionWithTask:?];
        [v291 UTF8String];
        _SASetCrashLogMessage(11841, "nil endTimestamp for %s %s", v396, v397, v398, v399, v400, v401, v23);

        _os_crash();
        __break(1u);
LABEL_625:
        v402 = objc_getProperty(v23, v293, v291[188], 1);
        LODWORD(v598) = v402 != 0;
        v571 = v402;
        if (!v402)
        {
          goto LABEL_636;
        }

        v569 = objc_getProperty(v23, v293, v291[188], 1);
        if (([(SAWaitInfo *)v569 displaysSameContentAs:a2 forPid:*(v23 + 28) tid:*(v23 + 48) displayOptions:*(v13 + 29)]& 1) == 0)
        {
          goto LABEL_636;
        }

        v577 = 0;
        LODWORD(v598) = 1;
        goto LABEL_659;
      }

      v23 = 0x7FFFFFFFFFFFFFFFLL;
      v14 = 1;
      goto LABEL_22;
    }

LABEL_617:
    v374 = *__error();
    v375 = _sa_logt();
    if (os_log_type_enabled(v375, OS_LOG_TYPE_ERROR))
    {
      v376 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
      v377 = [v376 UTF8String];
      v378 = [(SATaskState *)a4 debugDescriptionWithTask:?];
      v379 = [v378 UTF8String];
      *buf = 136315394;
      *(v14 + 4) = v377;
      v627 = 2080;
      *(v14 + 14) = v379;
      _os_log_error_impl(&dword_1E0E2F000, v375, OS_LOG_TYPE_ERROR, "nil startTimestamp for %s %s", buf, 0x16u);
    }

    *__error() = v374;
    v380 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
    v23 = [v380 UTF8String];
    v381 = [(SATaskState *)a4 debugDescriptionWithTask:?];
    [v381 UTF8String];
    _SASetCrashLogMessage(11840, "nil startTimestamp for %s %s", v382, v383, v384, v385, v386, v387, v23);

    _os_crash();
    __break(1u);
LABEL_620:
    LODWORD(v388) = *__error();
    v389 = _sa_logt();
    if (!os_log_type_enabled(v389, OS_LOG_TYPE_FAULT))
    {
LABEL_621:

      v390 = __error();
      v93 = 0;
      *v390 = v388;
      goto LABEL_599;
    }

LABEL_657:
    v603 = *(*(v13 + 4) + 184);
    v605 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
    v490 = [(SATaskState *)a4 debugDescriptionWithTask:?];
    v491 = v13[248];
    v492 = *(v13 + 4);
    v493 = *(v492 + 56);
    v600 = *(v492 + 64);
    v494 = [*(v492 + 32) debugDescription];
    v495 = [*(*(v13 + 4) + 40) debugDescription];
    v496 = *(v13 + 26);
    v497 = *(v13 + 6) != 0;
    v498 = *(v13 + 7) != 0;
    v499 = *(v13 + 8) != 0;
    v500 = *(v13 + 9) != 0;
    *buf = 138416130;
    v626 = v603;
    v627 = 2048;
    v628 = v597;
    v629 = 2048;
    v630 = v23;
    v631 = 2112;
    *v632 = v605;
    *&v632[8] = 2112;
    *&v632[10] = v490;
    *&v632[18] = 1024;
    *&v632[20] = v491;
    *&v632[24] = 2048;
    *&v632[26] = v493;
    v633 = 2048;
    v634 = v600;
    v635 = 2112;
    v636 = v494;
    v637 = 2112;
    v638 = v495;
    v639 = 2048;
    v640 = v496;
    v641 = 2048;
    *v642 = a2;
    *&v642[8] = 1024;
    *&v642[10] = v497;
    v643 = 1024;
    *v644 = v498;
    *&v644[4] = 1024;
    *&v644[6] = v499;
    LOWORD(v645) = 1024;
    *(&v645 + 2) = v500;
    _os_log_fault_impl(&dword_1E0E2F000, v389, OS_LOG_TYPE_FAULT, "incident %@. sampleIndex %lu, endIndex %lu, thread state %@, task state %@ (%d), report start index %lu, report end index %lu, report start time %@, report end time %@, starting iterator index %lu, iterator index %lu, by-thread:%d indexes:%d, by-dispatchQueue:%d, by-swiftTaskStates:%d", buf, 0x8Eu);

    goto LABEL_621;
  }

  v25 = [*(*(a1 + 4) + 168) sampleTimestamps];
  v601 = [v25 objectAtIndexedSubscript:a3];

  v26 = [v10 endSampleIndex];
  if (v26 >= *(*(v13 + 4) + 64))
  {
    v23 = *(*(v13 + 4) + 64);
  }

  else
  {
    v23 = v26;
  }

  if (a4)
  {
    if (v13[248])
    {
      v27 = [a4 endSampleIndex];
      if (v23 >= v27)
      {
        v23 = v27;
      }
    }
  }

  if (v23 < a3)
  {
    goto LABEL_620;
  }

  v14 = v23 - a3 + 1;
  v28 = [*(*(v13 + 4) + 168) sampleTimestamps];
  v19 = [v28 objectAtIndexedSubscript:v23];

LABEL_22:
  v29 = *(v13 + 10);
  v599 = v13;
  v585 = v10;
  v602 = v19;
  v604 = a5;
  if (v29 && (v9 = v23, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a5, "threadId")}], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "containsObject:", v30), v30, v23 = v9, (v31 & 1) != 0) || v13[249] != 1)
  {
    v583 = 0;
    v66 = 0;
    goto LABEL_136;
  }

  v590 = v14;
  v623 = 0u;
  v624 = 0u;
  v621 = 0u;
  v622 = 0u;
  v32 = *(*(v13 + 4) + 128);
  v33 = [v32 countByEnumeratingWithState:&v621 objects:v649 count:16];
  LODWORD(v587) = v33 == 0;
  if (!v33)
  {
    v583 = 0;
    goto LABEL_134;
  }

  v35 = v33;
  v582 = a4;
  v36 = *v622;
  a4 = 1;
  v595 = 0x7FFFFFFFFFFFFFFFLL;
  v598 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v37 = 0;
    do
    {
      if (*v622 != v36)
      {
        objc_enumerationMutation(v32);
      }

      v9 = *(*(&v621 + 1) + 8 * v37);
      if (!v9)
      {
        Property = 0;
        goto LABEL_35;
      }

      if (!*(v9 + 16))
      {
        goto LABEL_34;
      }

      v38 = [a5 threadId];
      v39 = *(v9 + 16);
      if (v38 != v39)
      {
        if (v39)
        {
          goto LABEL_88;
        }

LABEL_34:
        Property = objc_getProperty(v9, v34, 8, 1);
LABEL_35:
        v41 = Property;
        v42 = *(v13 + 5);

        v74 = v41 == v42;
        a5 = v604;
        if (!v74)
        {
          goto LABEL_88;
        }
      }

      v43 = *(v13 + 4);
      if (v43 && *(v43 + 48) == 1)
      {
        if (v9)
        {
          if (*(v9 + 40) > v23)
          {
            goto LABEL_88;
          }

          v44 = *(v9 + 48);
        }

        else
        {
          v44 = 0;
        }

        if (v44 >= v597)
        {
          v45 = v598;
          v46 = v595;
          if (v598 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v47 = v9 ? *(v9 + 40) : 0;
            if (v598 <= v47)
            {
              if (v595 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_74;
              }

              if (v9)
              {
                goto LABEL_72;
              }

              v64 = 0;
LABEL_73:
              if (v46 < v64)
              {
LABEL_74:
                if (v9)
                {
LABEL_75:
                  v598 = v45;
                  a4 = 0;
                  v595 = *(v9 + 48);
                  goto LABEL_88;
                }

                v598 = v45;
                v595 = 0;
              }

              else
              {
                v598 = v45;
              }

              a4 = 0;
              goto LABEL_88;
            }
          }

          if (v9)
          {
            v45 = *(v9 + 40);
            if (v595 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_75;
            }

LABEL_72:
            v64 = *(v9 + 48);
            goto LABEL_73;
          }

          v598 = 0;
          if (v595 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v45 = 0;
            v13 = v599;
            v64 = 0;
            a5 = v604;
            v46 = v595;
            goto LABEL_73;
          }

          a4 = 0;
          v595 = 0;
LABEL_86:
          v13 = v599;
LABEL_87:
          a5 = v604;
        }
      }

      else
      {
        if (v9)
        {
          v48 = objc_getProperty(v9, v34, 24, 1);
        }

        else
        {
          v48 = 0;
        }

        v49 = v48;
        if (([v49 le:v602] & 1) == 0)
        {

          goto LABEL_88;
        }

        if (v9)
        {
          v51 = objc_getProperty(v9, v50, 32, 1);
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;
        v53 = [v52 ge:v601];

        if (!v53)
        {
          goto LABEL_86;
        }

        v13 = v599;
        if (v9)
        {
          v54 = objc_getProperty(v9, v34, 32, 1);
        }

        else
        {
          v54 = 0;
        }

        v55 = v54;
        v56 = [v55 gt:v602];

        if (v56)
        {
          if (v9)
          {
            v58 = objc_getProperty(v9, v57, 32, 1);
          }

          else
          {
            v58 = 0;
          }

          v59 = v58;

          v602 = v59;
        }

        if (v9)
        {
          v60 = objc_getProperty(v9, v57, 24, 1);
        }

        else
        {
          v60 = 0;
        }

        v61 = v60;
        v62 = [v61 lt:v601];

        if (!v62)
        {
          a4 = 0;
          goto LABEL_87;
        }

        if (v9)
        {
          v63 = objc_getProperty(v9, v34, 24, 1);
        }

        else
        {
          v63 = 0;
        }

        a5 = v604;
        v9 = v63;

        a4 = 0;
        v601 = v9;
      }

LABEL_88:
      ++v37;
    }

    while (v35 != v37);
    v65 = [v32 countByEnumeratingWithState:&v621 objects:v649 count:16];
    v35 = v65;
  }

  while (v65);

  if (a4)
  {
    v583 = 0;
    v66 = 1;
    a4 = v582;
    v10 = v585;
    v14 = v590;
    goto LABEL_136;
  }

  v14 = v590;
  if (v598 == 0x7FFFFFFFFFFFFFFFLL || v598 <= v597)
  {
    a4 = v582;
    goto LABEL_130;
  }

  if (v598 > v23)
  {
    v461 = *__error();
    v462 = _sa_logt();
    if (os_log_type_enabled(v462, OS_LOG_TYPE_ERROR))
    {
      v463 = [v585 debugDescription];
      v464 = [v463 UTF8String];
      v465 = [v582 debugDescription];
      v466 = [v465 UTF8String];
      a5 = [*(*(v599 + 4) + 128) debugDescription];
      v467 = [a5 UTF8String];
      *buf = 134219266;
      v626 = v598;
      v627 = 2048;
      v628 = v597;
      v629 = 2048;
      v630 = v590;
      v631 = 2080;
      *v632 = v464;
      *&v632[8] = 2080;
      *&v632[10] = v466;
      *&v632[18] = 2080;
      *&v632[20] = v467;
      _os_log_error_impl(&dword_1E0E2F000, v462, OS_LOG_TYPE_ERROR, "startSampleIndexCap %lu < sampleIndex %lu + sampleCount %lu for %s, %s hidStepSamples:\n%s", buf, 0x3Eu);
    }

    *__error() = v461;
    v468 = [v585 debugDescription];
    [v468 UTF8String];
    v469 = [v582 debugDescription];
    [v469 UTF8String];
    v470 = [*(*(v599 + 4) + 128) debugDescription];
    [v470 UTF8String];
    _SASetCrashLogMessage(11900, "startSampleIndexCap %lu < sampleIndex %lu + sampleCount %lu for %s, %s hidStepSamples:\n%s", v471, v472, v473, v474, v475, v476, v598);

    _os_crash();
    __break(1u);
LABEL_654:
    v477 = *__error();
    v478 = _sa_logt();
    if (os_log_type_enabled(v478, OS_LOG_TYPE_ERROR))
    {
      v479 = [v585 debugDescription];
      v480 = [v479 UTF8String];
      v481 = [v582 debugDescription];
      v482 = [v481 UTF8String];
      a5 = [*(*(v599 + 4) + 128) debugDescription];
      v483 = [a5 UTF8String];
      *buf = 134219010;
      v626 = v598;
      v627 = 2048;
      v628 = v597;
      v629 = 2080;
      v630 = v480;
      v631 = 2080;
      *v632 = v482;
      *&v632[8] = 2080;
      *&v632[10] = v483;
      _os_log_error_impl(&dword_1E0E2F000, v478, OS_LOG_TYPE_ERROR, "endSampleIndexCap %lu >= sampleIndex %lu for %s, %s hidStepSamples:\n%s", buf, 0x34u);
    }

    *__error() = v477;
    v389 = [v585 debugDescription];
    v23 = [v389 UTF8String];
    v10 = [v582 debugDescription];
    [v10 UTF8String];
    v388 = [*(*(v599 + 4) + 128) debugDescription];
    [v388 UTF8String];
    _SASetCrashLogMessage(11922, "endSampleIndexCap %lu >= sampleIndex %lu for %s, %s hidStepSamples:\n%s", v484, v485, v486, v487, v488, v489, v598);

    _os_crash();
    __break(1u);
    goto LABEL_657;
  }

  v67 = *(*(*(v13 + 13) + 8) + 24);
  v68 = *(*(*(v13 + 14) + 8) + 24);
  v70 = v67 == 0x7FFFFFFFFFFFFFFFLL || v67 < v68;
  if (v68 != 0x7FFFFFFFFFFFFFFFLL && v70)
  {
    v67 = *(*(*(v13 + 14) + 8) + 24);
  }

  v71 = *(v13 + 4);
  v72 = *(v71 + 56);
  v73 = v72 - 1;
  if (!v72)
  {
    v73 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v74 = v67 != 0x7FFFFFFFFFFFFFFFLL || v72 == 0x7FFFFFFFFFFFFFFFLL;
  if (v74)
  {
    v75 = v67;
  }

  else
  {
    v75 = v73;
  }

  v76 = v598 - 1;
  v77 = v75 != 0x7FFFFFFFFFFFFFFFLL && v75 >= v76;
  a4 = v582;
  if (!v77)
  {
    if (v75 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v78 = 0;
    }

    else
    {
      v78 = ~v75;
    }

    *(*(*(v13 + 15) + 8) + 24) += v78 + v598;
    *(*(*(v13 + 13) + 8) + 24) = v76;
    v71 = *(v13 + 4);
  }

  v14 = v23 - v598 + 1;
  v79 = [*(v71 + 168) sampleTimestamps];
  v9 = [v79 objectAtIndexedSubscript:v598];

  v601 = v9;
  v597 = v598;
LABEL_130:
  v66 = 0;
  if (v595 == 0x7FFFFFFFFFFFFFFFLL || v23 <= v595)
  {
    v583 = 0;
    v10 = v585;
    goto LABEL_136;
  }

  if (v595 < v597)
  {
    goto LABEL_654;
  }

  v14 = v595 - v597 + 1;
  v32 = [*(*(v13 + 4) + 168) sampleTimestamps];
  v9 = [v32 objectAtIndexedSubscript:v595];

  v583 = v23 - v595;
  v23 = v595;
  v602 = v9;
  v10 = v585;
LABEL_134:

  v66 = v587;
LABEL_136:
  if ((v13[250] != 1 || ([v10 isRunning] & 1) == 0) && (v13[251] != 1 || (objc_msgSend(v10, "isRunnable") & 1) == 0) && (v13[252] != 1 || (objc_msgSend(v10, "isRunning") & 1) != 0 || objc_msgSend(v10, "isRunnable")))
  {
    v66 = 1;
  }

  v80 = *(v13 + 60);
  if (v80 && v80 < [v10 basePriority] || (v81 = *(v13 + 61)) != 0 && v81 > objc_msgSend(v10, "basePriority") || v13[253] == 1 && objc_msgSend(v10, "isBatteryAndUserActivityValid") && (objc_msgSend(v10, "isUserActive") & 1) != 0 || v13[254] == 1 && objc_msgSend(v10, "isBatteryAndUserActivityValid") && !objc_msgSend(v10, "isUserActive") || v13[255] == 1 && objc_msgSend(v10, "isBatteryAndUserActivityValid") && (objc_msgSend(v10, "isOnBattery") & 1) != 0 || v13[256] == 1 && objc_msgSend(v10, "isBatteryAndUserActivityValid") && (objc_msgSend(v10, "isOnBattery") & 1) == 0)
  {
    v66 = 1;
  }

  if ((v13[257] & 1) != 0 || v13[258] == 1)
  {
    if ([v10 isRunning])
    {
      v82 = [v10 cpuNum];
      if (v82 != -1)
      {
        v83 = v82;
        if (v13[257] == 1)
        {
          v66 |= ([(SASampleStore *)*(*(v13 + 4) + 168) clusterFlagsForCPUNum:v82]>> 1) & 1;
        }

        if (v13[258] == 1)
        {
          v66 |= [(SASampleStore *)*(*(v13 + 4) + 168) clusterFlagsForCPUNum:v83];
        }
      }
    }
  }

  if ((v13[259] & 1) == 0 && *(v13 + 27) != 1 && *(v13 + 28) != 3 && !*(v13 + 9))
  {
    if ([v10 hasSwiftTask])
    {
      if (([a5 isMainThread] & 1) == 0)
      {
        if (![*(*(v13 + 4) + 168) targetThreadId] || (v84 = objc_msgSend(a5, "threadId"), v84 != objc_msgSend(*(*(v13 + 4) + 168), "targetThreadId")))
        {
          if (![*(*(v13 + 4) + 168) targetDispatchQueueId] || !*(v13 + 8))
          {
            goto LABEL_186;
          }

          v85 = [*(*(v13 + 4) + 168) targetProcess];
          v86 = v85;
          if (v85 != *(v13 + 5))
          {

            goto LABEL_186;
          }

          v9 = v23;
          v87 = [*(v13 + 8) identifier];
          v74 = v87 == [*(*(v13 + 4) + 168) targetDispatchQueueId];
          v23 = v9;
          v88 = !v74;
          LOBYTE(v66) = v88 | v66;
        }
      }
    }
  }

  if (v66)
  {
LABEL_186:
    v89 = *(*(*(v13 + 13) + 8) + 24);
    if (v89 == 0x7FFFFFFFFFFFFFFFLL || v23 > v89)
    {
      if (v89 < v597 || v89 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v89 = v597 - 1;
      }

      *(*(*(v13 + 15) + 8) + 24) += v23 - v89;
      *(*(*(v13 + 13) + 8) + 24) = v23;
    }

    v91 = v601;
    if (v593)
    {
      v92 = *(*(v13 + 16) + 8);
      if ((*(v92 + 24) & 1) == 0)
      {
        *(v92 + 24) = 1;
      }
    }

    v93 = v602;
    goto LABEL_600;
  }

  v620 = 0;
  newValue = 0;
  v618 = 0;
  if (v13[260] == 1)
  {
    v94 = *(*(*(v13 + 17) + 8) + 24);
    if (v94 != [a5 threadId])
    {
      *(*(*(v13 + 17) + 8) + 24) = [a5 threadId];
      v96 = *(*(v13 + 4) + 168);
      v97 = v23;
      if (v96)
      {
        v96 = objc_getProperty(v96, v95, 1120, 1);
      }

      v98 = v96;
      v99 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(*(v13 + 17) + 8) + 24)];
      v9 = [v98 objectForKeyedSubscript:v99];
      v100 = [v9 objectEnumerator];
      v101 = *(*(v13 + 18) + 8);
      v102 = *(v101 + 40);
      *(v101 + 40) = v100;

      v103 = [*(*(*(v13 + 18) + 8) + 40) nextObject];
      v104 = *(*(v13 + 19) + 8);
      v105 = *(v104 + 40);
      *(v104 + 40) = v103;

      v23 = v97;
    }

    v106 = *(*(*(v13 + 19) + 8) + 40);
    if (v106)
    {
      v107 = [(SASamplePrinter *)*(v13 + 4) _findIOBefore:&newValue during:&v618 after:a5 thread:a6 stateIndex:*(*(*(v13 + 18) + 8) + 40) inIO:v106 nextIO:?];
      v108 = *(*(v13 + 19) + 8);
      v109 = *(v108 + 40);
      *(v108 + 40) = v107;
    }
  }

  if (v593)
  {
LABEL_208:
    v579 = 1;
  }

  else
  {
    v110 = *(*(v13 + 16) + 8);
    if (*(v110 + 24) == 1)
    {
      *(v110 + 24) = 0;
      goto LABEL_208;
    }

    v579 = 0;
  }

  v111 = v597;
  v580 = v23;
  v581 = a4;
  if (v13[261] == 1 && (v13[262] & 1) == 0)
  {
    if (v597 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v112 = 0;
      v598 = 0;
    }

    else
    {
      v113 = [*(*(v13 + 4) + 168) sampleTimestamps];
      v598 = [v113 objectAtIndexedSubscript:v597];

      v114 = *(v13 + 4);
      if (v597 <= *(v114 + 56))
      {
        v112 = 0;
      }

      else
      {
        v115 = [*(v114 + 168) sampleTimestamps];
        v112 = [v115 objectAtIndexedSubscript:v597 - 1];
      }
    }

    v116 = *(*(*(v13 + 20) + 8) + 40);
    if (v116)
    {
      v117 = v620;
      if (v620)
      {
        [v620 addObjectsFromArray:?];
        v118 = [v117 sortedArrayUsingComparator:&__block_literal_global_2445];
      }

      else
      {
        v620 = v116;
      }
    }

    v590 = v14;
    v120 = *(v13 + 8);
    v119 = *(v13 + 9);
    v121 = *(v13 + 7);
    v9 = *(v13 + 4);
    v122 = *(v13 + 5);
    if (*(*(*(v13 + 13) + 8) + 24) >= v597)
    {
      v123 = 0;
    }

    else
    {
      v123 = *(*(*(v13 + 15) + 8) + 24);
    }

    if (!v112 || (v124 = *(v13 + 9), v125 = [*(*(*(v13 + 21) + 8) + 40) lt:v112], v119 = v124, v126 = v112, v125))
    {
      v126 = *(*(*(v13 + 21) + 8) + 40);
    }

    v558 = *(v13 + 263);
    v10 = v585;
    v127 = v121;
    a4 = v581;
    v593 = [(SASamplePrinter *)v9 stateChangeStringForThreadState:v585 serialDispatchQueue:v120 swiftTaskStates:v119 thread:a5 threadStateIndexes:v127 taskState:v581 task:v122 iteratorIndex:a2 missingStateIsInAnotherStack:a9 numSamplesOmittedSincePreviousDisplayedSample:v123 sampleTimestamp:v598 previousSampleTimestamp:v112 previousDisplayedTimestamp:v126 previousTaskState:*(*(*(v13 + 22) + 8) + 40) previousThread:*(*(*(v13 + 23) + 8) + 40) previousThreadState:*(*(*(v13 + 24) + 8) + 40) dispatchQueueChanges:v558 swiftTaskChanges:SBYTE1(v558) priorityChanges:SBYTE2(v558) nameChanges:SHIBYTE(v558) threadChanges:v13[267] isTimeJump:v579 ioEventsSincePreviousThreadState:v620];

    v111 = v597;
    v23 = v580;
    v14 = v590;
  }

  else
  {
    v593 = 0;
  }

  if (v13[268] == 1)
  {
    if ([v10 hasSwiftTask])
    {
      v9 = v23;
      v128 = *(v13 + 4);
      v129 = *(v13 + 9);
      if ([a5 isMainThread])
      {
        v130 = 1;
      }

      else
      {
        v132 = [a5 threadId];
        v130 = v132 == [*(*(v13 + 4) + 168) targetThreadId];
      }

      if (!v128)
      {
        v131 = 0;
        goto LABEL_244;
      }

      v133 = *(v128 + 16);
      if (v133 && (*(v133 + 160) == 1 || (v134 = *(v133 + 152), v134 == 3) || !v134 && *(v133 + 11) == 1))
      {
        v135 = [v133 swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways];
        v131 = 4;
        if (!v135)
        {
          v131 = 0;
        }

LABEL_244:
        v111 = v597;
        v23 = v9;
      }

      else
      {
        if (v129)
        {
          v23 = v9;
          if ([v133 swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways])
          {
            v131 = 0;
          }

          else
          {
            v136 = [*(v128 + 16) swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways];
            v131 = 8;
            if (!(v130 | v136))
            {
              v131 = 0;
            }
          }
        }

        else
        {
          v23 = v9;
          if ([v133 swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways])
          {
            v131 = 4;
          }

          else
          {
            v137 = [*(v128 + 16) swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways];
            v131 = 16;
            v138 = 4;
            if (!v130)
            {
              v138 = 16;
            }

            if (!v137)
            {
              v131 = v138;
            }
          }
        }

        v111 = v597;
      }
    }

    else
    {
      v131 = 0;
    }
  }

  else
  {
    v131 = 2;
  }

  v139 = v131 | v13[269] ^ 1;
  if (v13[270])
  {
    v140 = v139;
  }

  else
  {
    v140 = v139 | 0x20;
  }

  v141 = *(*(*(v13 + 24) + 8) + 40);
  if (v141 && v141 == v10 && (v13[248] != 1 || *(*(*(v13 + 22) + 8) + 40) == a4))
  {
    if (!v593)
    {
      v593 = 0;
      goto LABEL_595;
    }

    if (v111 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_278;
    }

    goto LABEL_631;
  }

  v142 = v13[262];
  if (!v141 || (v13[262] & 1) != 0)
  {
    if ((v13[262] & 1) != 0 || !v141)
    {
      goto LABEL_290;
    }

    goto LABEL_287;
  }

  v143 = *(v13 + 4);
  if (v143 && *(v143 + 48) == 1 && *(*(*(v13 + 14) + 8) + 24) + 1 != v111)
  {
LABEL_287:
    v151 = *(v13 + 4);
    if (v151 && *(v151 + 48) == 1)
    {
      LODWORD(a2) = *(*(*(v13 + 14) + 8) + 24) + 1 < v111;
      goto LABEL_291;
    }

LABEL_290:
    LODWORD(a2) = 0;
LABEL_291:
    v152 = [*(*(v13 + 4) + 168) cpuSignalHandlerStackLeafKernelFrame];
    v153 = [v10 stackWithBacktraceStyle:v140 ignoringKernelStackWithLeafFrame:v152];

    if (![v153 count])
    {
      obj = v153;
      v190 = *(*(v13 + 25) + 8);
      v156 = *(v190 + 40);
      *(v190 + 40) = 0;
LABEL_360:
      v191 = v602;
      v23 = v580;

LABEL_361:
      goto LABEL_362;
    }

    if (v13[271] != 1)
    {
      goto LABEL_297;
    }

    v154 = [v153 objectAtIndexedSubscript:0];
    if ([v154 isTruncatedBacktraceFrame])
    {
      v155 = [v153 count];

      if (v155 < 2)
      {
LABEL_297:
        v156 = *(v13 + 11);
        v157 = [v153 count];
        v614 = 0u;
        v615 = 0u;
        v616 = 0u;
        v617 = 0u;
        obj = v153;
        v587 = [obj countByEnumeratingWithState:&v614 objects:v648 count:16];
        v578 = v157;
        v158 = 0;
        if (!v587)
        {
          goto LABEL_357;
        }

        v598 = v157 - 1;
        v586 = *v615;
        v590 = v14;
        while (1)
        {
          v159 = 0;
          v595 = v156;
          do
          {
            if (*v615 != v586)
            {
              objc_enumerationMutation(obj);
            }

            a6 = v159;
            v14 = *(*(&v614 + 1) + 8 * v159);
            if (a2)
            {
              goto LABEL_303;
            }

            if (v13[262] != 1)
            {
              v174 = [v595 lastObject];
              if (v174)
              {
                v175 = v174;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v176 = [v175 isTruncatedLeafCallstack];
                  if (v176 == [v14 isLeafyCallstackIsInAnotherCallTreeFrame] && (((v598 == v158) ^ v175[24]) & 1) == 0)
                  {
                    v177 = *(v13 + 4);
                    v178 = [v175 frame];
                    LODWORD(v177) = [(SASamplePrinter *)v177 frame:v178 matchesFrame:v14];

                    a5 = v604;
                    if (v177)
                    {
                      a4 = v175;
                      goto LABEL_338;
                    }
                  }
                }
              }

              goto LABEL_303;
            }

            v612 = 0u;
            v613 = 0u;
            v610 = 0u;
            v611 = 0u;
            v163 = v595;
            v164 = [v163 countByEnumeratingWithState:&v610 objects:v647 count:16];
            if (!v164)
            {
              goto LABEL_327;
            }

            v165 = v164;
            v166 = *v611;
LABEL_314:
            v167 = 0;
            while (1)
            {
              if (*v611 != v166)
              {
                objc_enumerationMutation(v163);
              }

              v168 = *(*(&v610 + 1) + 8 * v167);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_322;
              }

              v169 = [v168 isTruncatedLeafCallstack];
              if (v169 != [v14 isLeafyCallstackIsInAnotherCallTreeFrame])
              {
                goto LABEL_322;
              }

              if (!v168)
              {
                break;
              }

              if ((((v598 == v158) ^ v168[24]) & 1) == 0)
              {
                goto LABEL_321;
              }

LABEL_322:
              if (v165 == ++v167)
              {
                v172 = [v163 countByEnumeratingWithState:&v610 objects:v647 count:16];
                v165 = v172;
                if (!v172)
                {
LABEL_327:

                  v10 = v585;
                  a5 = v604;
                  v111 = v597;
                  goto LABEL_303;
                }

                goto LABEL_314;
              }
            }

            if (v598 == v158)
            {
              goto LABEL_322;
            }

LABEL_321:
            v170 = *(v13 + 4);
            v171 = [v168 frame];
            LOBYTE(v170) = [(SASamplePrinter *)v170 frame:v171 matchesFrame:v14];

            v13 = v599;
            if ((v170 & 1) == 0)
            {
              goto LABEL_322;
            }

            a4 = v168;

            v10 = v585;
            a5 = v604;
            v111 = v597;
            if (v168)
            {
LABEL_338:
              v14 = v590;
              [a4 setSampleCount:{objc_msgSend(a4, "sampleCount") + v590}];
              goto LABEL_348;
            }

LABEL_303:
            if (v593)
            {
              [v595 addObject:v593];
            }

            if (![v14 isLeafyCallstackIsInAnotherCallTreeFrame])
            {
              v173 = v14;
              v14 = v590;
              a4 = [SACallTreeFrame callTreeFrameWithFrame:v173 startSampleIndex:v111 sampleCount:v590 isLeafFrame:v598 == v158];
              goto LABEL_347;
            }

            v13 = (v598 - v158);
            if (v598 != v158)
            {
              a4 = *__error();
              v358 = _sa_logt();
              if (os_log_type_enabled(v358, OS_LOG_TYPE_ERROR))
              {
                v359 = [v14 debugDescription];
                v360 = [v359 UTF8String];
                v361 = v158 + 1;
                v362 = obj;
                v363 = [obj objectAtIndexedSubscript:v361];
                a5 = [v363 debugDescription];
                v364 = [a5 UTF8String];
                *buf = 136315650;
                v626 = v360;
                v627 = 2048;
                v628 = v13;
                v629 = 2080;
                v630 = v364;
                _os_log_error_impl(&dword_1E0E2F000, v358, OS_LOG_TYPE_ERROR, "leafy truncated frame %s not leaf: %lu more to go (%s is next)", buf, 0x20u);
              }

              else
              {
                v361 = v158 + 1;
                v362 = obj;
              }

              *__error() = a4;
              v365 = [v14 debugDescription];
              v10 = [v365 UTF8String];
              v366 = [v362 objectAtIndexedSubscript:v361];
              v367 = [v366 debugDescription];
              [v367 UTF8String];
              _SASetCrashLogMessage(12164, "leafy truncated frame %s not leaf: %lu more to go (%s is next)", v368, v369, v370, v371, v372, v373, v10);

              _os_crash();
              __break(1u);
              goto LABEL_617;
            }

            if ([v14 isSwiftAsync])
            {
              v160 = [v10 swiftTask];
              v161 = [v160 identifier];
              if (v160)
              {
                v13 = v599;
                if (v161 != -1)
                {
                  v162 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %llu", @"Swift Task", v161];
                  goto LABEL_345;
                }
              }

              else
              {
                v184 = *__error();
                v185 = _sa_logt();
                if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
                {
                  v188 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
                  *buf = 138412290;
                  v626 = v188;
                  _os_log_fault_impl(&dword_1E0E2F000, v185, OS_LOG_TYPE_FAULT, "isLeafyCallstackIsInAnotherCallTreeFrame, but no swiftTask for %@", buf, 0xCu);

                  a5 = v604;
                }

                *__error() = v184;
                v13 = v599;
                v111 = v597;
              }

              v162 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", @"Swift Task", @"UNKNOWN"];
LABEL_345:
              v183 = v162;
            }

            else
            {
              v179 = [a5 threadId];
              v180 = objc_alloc(MEMORY[0x1E696AEC0]);
              if (v179)
              {
                v181 = [v180 initWithFormat:@"%@ 0x%llx", @"Thread", objc_msgSend(a5, "threadId")];
              }

              else
              {
                v181 = [v180 initWithFormat:@"%@ %@", @"Thread", @"UNKNOWN"];
              }

              v183 = v181;
              v13 = v599;
            }

            v186 = v14;
            v14 = v590;
            a4 = [SACallTreeTruncatedLeafCallstacks callTreeFrameWithFrame:v186 startSampleIndex:v111 sampleCount:v590 otherCallTreeDescription:v183];

LABEL_347:
            [v595 addObject:a4];
            v593 = 0;
LABEL_348:
            if (v598 == v158)
            {
              objc_storeStrong((*(*(v13 + 25) + 8) + 40), a4);

              v158 = v157 - 1;
              v156 = v595;
              goto LABEL_357;
            }

            if (a4)
            {
              v187 = objc_getProperty(a4, v182, 40, 1);
            }

            else
            {
              v187 = 0;
            }

            v156 = v187;

            ++v158;
            v159 = a6 + 1;
            v595 = v156;
          }

          while (a6 + 1 != v587);
          v189 = [obj countByEnumeratingWithState:&v614 objects:v648 count:16];
          v587 = v189;
          if (!v189)
          {
LABEL_357:
            v23 = obj;

            if (*(*(*(v13 + 25) + 8) + 40))
            {
              a4 = v581;
              goto LABEL_360;
            }

            v403 = *__error();
            v404 = _sa_logt();
            LODWORD(v9) = v578;
            if (os_log_type_enabled(v404, OS_LOG_TYPE_ERROR))
            {
              v405 = [obj debugDescription];
              v406 = [v405 UTF8String];
              *buf = 134218498;
              v626 = v158;
              v627 = 2048;
              v628 = v578;
              v629 = 2080;
              v630 = v406;
              _os_log_error_impl(&dword_1E0E2F000, v404, OS_LOG_TYPE_ERROR, "No leaf frame picked: index %lu, count %lu, stack %s", buf, 0x20u);

              v23 = obj;
            }

            *__error() = v403;
            v407 = [v23 debugDescription];
            [v407 UTF8String];
            _SASetCrashLogMessage(12203, "No leaf frame picked: index %lu, count %lu, stack %s", v408, v409, v410, v411, v412, v413, v158);

            _os_crash();
            __break(1u);
LABEL_631:
            v414 = *__error();
            v415 = _sa_logt();
            if (os_log_type_enabled(v415, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_714;
            }

            while (2)
            {

              *__error() = v414;
              v13 = v599;
              a5 = v604;
LABEL_278:
              v149 = *(*(*(v13 + 25) + 8) + 40);
              if (v149)
              {
                if ((v149[24] & 1) == 0)
                {
                  goto LABEL_641;
                }

                v150 = objc_getProperty(v149, v18, 40, 1);
              }

              else
              {
                v150 = *(v13 + 11);
              }

              v203 = v150;
              v204 = [v150 lastObject];
              if (!v204)
              {
                [v203 addObject:v593];
                goto LABEL_594;
              }

              p_cache = SAMicrostackshotStatistics.cache;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_644;
              }

              if ([v204 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v204, "startSampleIndex") >= v597)
              {
                [v203 insertObject:v593 atIndex:{objc_msgSend(v203, "count") - 1}];
                goto LABEL_593;
              }

              v206 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
              v207 = *(v204 + 96);
              [v203 addObject:v593];
              v23 = v580;
              if (v207 == 0x7FFFFFFFFFFFFFFFLL || v207 < v597)
              {
                goto LABEL_594;
              }

              v208 = [v204 sampleCount];
              if ([v204 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v209 = -1;
              }

              else
              {
                v209 = [v204 startSampleIndex] - v597;
              }

              v294 = v209 + v208;
              v598 = v209 + v208;
              if ([v204 sampleCount] > (v209 + v208))
              {
                v23 = v580;
                if (!v294)
                {
                  goto LABEL_594;
                }

                a6 = v203;
                if (v597 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v296 = objc_getProperty(v204, v295, 88, 1);
                  v297 = [v296 lastObject];
                  v298 = [v297 startTime];
                }

                else
                {
                  v296 = [*(*(v13 + 4) + 168) sampleTimestamps];
                  v297 = [v296 objectAtIndexedSubscript:v597];
                  v298 = v297;
                }

                if (!v298)
                {
                  goto LABEL_698;
                }

                v300 = objc_getProperty(v204, v299, 88, 1);
                v301 = [v300 lastObject];
                v302 = [v301 startTime];
                v303 = [v302 le:v298];

                if (v303)
                {
                  v305 = objc_getProperty(v204, v304, 88, 1);
                  v306 = [v305 lastObject];
                  v307 = [v306 endTime];
                  if ([v307 ge:v298])
                  {
                    v309 = objc_getProperty(v204, v308, 88, 1);
                    v310 = [v309 lastObject];
                    v311 = [v310 endTime];

                    p_cache = (SAMicrostackshotStatistics + 16);
                  }

                  else
                  {
                    v311 = v298;
                  }

                  if (v311)
                  {
                    v596 = [SATimeRange timeRangeStart:v298 end:v311];
                    [v204 setSampleCount:{objc_msgSend(v204, "sampleCount") - v598}];
                    *(v204 + 96) -= v598;
                    v589 = v311;
                    v591 = v298;
                    if (v579 && v597 && v597 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v313 = [*(*(v599 + 4) + 168) sampleTimestamps];
                      v316 = [v313 objectAtIndexedSubscript:v597 - 1];
                      v351 = objc_getProperty(v204, v350, 88, 1);
                      v352 = [v351 lastObject];
                      v354 = v352;
                      if (v352)
                      {
                        objc_setProperty_atomic(v352, v353, v316, 16);
                      }
                    }

                    else
                    {
                      v313 = objc_getProperty(v204, v312, 88, 1);
                      v314 = [v313 lastObject];
                      v316 = v314;
                      if (v314)
                      {
                        objc_setProperty_atomic(v314, v315, v298, 16);
                      }
                    }

                    v318 = objc_getProperty(v204, v317, 56, 1);
                    v320 = objc_getProperty(v204, v319, 64, 1);
                    v321 = +[SACallTreeState treeCountedStateWithWaitInfo:turnstileInfo:isPartOfADeadlock:isBlockedByADeadlock:state:microstackshotState:pid:threadId:threadPriority:timeRange:originPid:proximatePid:startSampleIndex:sampleCount:]((p_cache + 203), v318, v320, *(v204 + 25) & 1, *(v204 + 26) & 1, *(v204 + 72), *(v204 + 32), *(v204 + 28), *(v204 + 48), [v585 basePriority], v596, *(v204 + 36), v597, v598);

                    v203 = a6;
                    [a6 addObject:v321];
                    a5 = v604;
                    if (v597 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v323 = objc_getProperty(v204, v322, 80, 1);
                      v324 = [v323 count];

                      v326 = 0;
                      if (v324)
                      {
                        do
                        {
                          v327 = objc_getProperty(v204, v325, 80, 1);
                          v328 = [v327 objectAtIndexedSubscript:v326];

                          v329 = [v328 startTimestamp];
                          v330 = [v329 gt:v298];

                          if (v330)
                          {
                            break;
                          }

                          ++v326;
                          v331 = objc_getProperty(v204, v325, 80, 1);
                          v332 = [v331 count];
                        }

                        while (v326 < v332);
                      }

                      v333 = objc_getProperty(v204, v325, 80, 1);
                      v334 = [v333 count];

                      v203 = a6;
                      if (v326 < v334)
                      {
                        v336 = objc_getProperty(v204, v335, 80, 1);
                        v337 = [v336 count] - v326;

                        v339 = objc_getProperty(v204, v338, 80, 1);
                        v340 = [v339 subarrayWithRange:{v326, v337}];
                        v342 = [v340 mutableCopy];
                        if (v321)
                        {
                          objc_setProperty_atomic(v321, v341, v342, 80);
                        }

                        v344 = objc_getProperty(v204, v343, 80, 1);
                        [v344 removeObjectsInRange:{v326, v337}];

                        v203 = a6;
                      }
                    }

                    v13 = v599;
LABEL_593:
                    v23 = v580;
LABEL_594:

                    a4 = v581;
                    v10 = v585;
LABEL_595:
                    v191 = v602;
                    goto LABEL_596;
                  }
                }

                else
                {
LABEL_698:
                  v516 = *__error();
                  v517 = _sa_logt();
                  if (os_log_type_enabled(v517, OS_LOG_TYPE_ERROR))
                  {
                    v206 = [v204 debugDescription];
                    v518 = [v206 UTF8String];
                    v519 = [v298 debugDescription];
                    v520 = [v519 UTF8String];
                    *buf = 136315650;
                    v626 = v518;
                    v627 = 2048;
                    v628 = v597;
                    v629 = 2080;
                    v630 = v520;
                    _os_log_error_impl(&dword_1E0E2F000, v517, OS_LOG_TYPE_ERROR, "%s splitting at %lu %s", buf, 0x20u);
                  }

                  *__error() = v516;
                  v521 = [v204 debugDescription];
                  v204 = [v521 UTF8String];
                  v522 = [v298 debugDescription];
                  [v522 UTF8String];
                  _SASetCrashLogMessage(12389, "%s splitting at %lu %s", v523, v524, v525, v526, v527, v528, v204);

                  _os_crash();
                  __break(1u);
                }

                v529 = *__error();
                v530 = _sa_logt();
                if (os_log_type_enabled(v530, OS_LOG_TYPE_ERROR))
                {
                  v206 = [v204 debugDescription];
                  v531 = [v206 UTF8String];
                  v532 = [v298 debugDescription];
                  v533 = [v532 UTF8String];
                  *buf = 136315394;
                  v626 = v531;
                  v627 = 2080;
                  v628 = v533;
                  _os_log_error_impl(&dword_1E0E2F000, v530, OS_LOG_TYPE_ERROR, "nil newCountedStateEndTimestamp from %s and %s", buf, 0x16u);
                }

                *__error() = v529;
                v534 = [v204 debugDescription];
                v204 = [v534 UTF8String];
                v535 = [v298 debugDescription];
                [v535 UTF8String];
                _SASetCrashLogMessage(12393, "nil newCountedStateEndTimestamp from %s and %s", v536, v537, v538, v539, v540, v541, v204);

                _os_crash();
                __break(1u);
LABEL_704:
                v586 = [*(v599 + 5) taskStates];
                v511 = [v586 indexOfObject:v581];
                goto LABEL_705;
              }

              v298 = v203;
              LODWORD(v601) = *__error();
              v602 = _sa_logt();
              if (os_log_type_enabled(v602, OS_LOG_TYPE_ERROR))
              {
                v593 = [v204 startSampleIndex];
                a6 = [v204 sampleCount];
                LODWORD(v206) = v203 == *(v599 + 11);
                v595 = [v604 threadStates];
                v590 = [v595 indexOfObject:v585];
                a2 = [v585 startSampleIndex];
                v587 = [v585 endSampleIndex];
                if (v581)
                {
                  goto LABEL_704;
                }

                v511 = -1;
LABEL_705:
                v542 = [v581 startSampleIndex];
                v543 = [v581 endSampleIndex];
                v544 = [*(*(*(v599 + 25) + 8) + 40) startSampleIndex];
                v545 = [*(*(*(v599 + 25) + 8) + 40) sampleCount];
                v546 = [v298 lastObject];
                v547 = [v546 UTF8String];
                *buf = 134221570;
                v626 = v593;
                v627 = 2048;
                v628 = a6;
                v629 = 2048;
                v630 = v598;
                v631 = 1024;
                *v632 = v206;
                *&v632[4] = 2048;
                *&v632[6] = v597;
                *&v632[14] = 2048;
                *&v632[16] = v590;
                *&v632[24] = 2048;
                *&v632[26] = a2;
                v633 = 2048;
                v634 = v587;
                v635 = 2048;
                v636 = v511;
                v637 = 2048;
                v638 = v542;
                v639 = 2048;
                v640 = v543;
                v641 = 1024;
                *v642 = v579;
                *&v642[4] = 2048;
                *&v642[6] = v544;
                v643 = 2048;
                *v644 = v545;
                *&v644[8] = 2080;
                v645 = v547;
                _os_log_error_impl(&dword_1E0E2F000, v602, OS_LOG_TYPE_ERROR, "start %lu, count %lu, newcount %lu, is root %d, index %lu, thread state %lu %lu-%lu, task state %lu %lu-%lu, timeJump %d, leaf start %lu, count %lu, state %s", buf, 0x90u);

                if (v581)
                {
                }
              }

              *__error() = v601;
              v602 = [v204 startSampleIndex];
              v601 = [v204 sampleCount];
              v595 = v298 == *(v599 + 11);
              v415 = [v604 threadStates];
              v604 = [v415 indexOfObject:v585];
              [v585 startSampleIndex];
              [v585 endSampleIndex];
              if (v581)
              {
                v593 = [*(v599 + 5) taskStates];
                v14 = [v593 indexOfObject:v581];
              }

              else
              {
                v14 = -1;
              }

              [v581 startSampleIndex];
              v23 = [v581 endSampleIndex];
              LODWORD(v9) = [*(*(*(v599 + 25) + 8) + 40) startSampleIndex];
              v414 = [*(*(*(v599 + 25) + 8) + 40) sampleCount];
              a4 = [v298 lastObject];
              [a4 UTF8String];
              _SASetCrashLogMessage(12385, "start %lu, count %lu, newcount %lu, is root %d, index %lu, thread state %lu %lu-%lu, task state %lu %lu-%lu, timeJump %d, leaf start %lu, count %lu, state %s", v548, v549, v550, v551, v552, v553, v602);

              if (v581)
              {
              }

              _os_crash();
              __break(1u);
LABEL_714:
              v554 = [v593 UTF8String];
              *buf = 136315138;
              v626 = v554;
              _os_log_fault_impl(&dword_1E0E2F000, v415, OS_LOG_TYPE_FAULT, "Countless state change %s, but no sampleIndex", buf, 0xCu);
              continue;
            }
          }
        }
      }

      [a5 patchedStackForTruncatedStack:v153];
      v153 = v154 = v153;
    }

    goto LABEL_297;
  }

  if (([v141 hasSameStackAs:v10] & 1) == 0)
  {
    if ((v13[262] & 1) != 0 || !*(*(*(v13 + 24) + 8) + 40))
    {
      goto LABEL_290;
    }

    goto LABEL_287;
  }

  v144 = [*(v13 + 11) lastObject];
  if (v144)
  {
    v145 = v144;
    while (1)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [v145 setSampleCount:{objc_msgSend(v145, "sampleCount") + v14}];
      objc_storeStrong((*(*(v13 + 25) + 8) + 40), v145);
      v147 = objc_getProperty(v145, v146, 40, 1);
      v148 = [v147 lastObject];

      v145 = v148;
      if (!v148)
      {
        obj = 0;
        goto LABEL_396;
      }
    }

    obj = v145;
LABEL_396:
    v191 = v602;
    v23 = v580;
    goto LABEL_361;
  }

  v191 = v602;
LABEL_362:
  if (v13[261] != 1)
  {
    goto LABEL_555;
  }

  v192 = *(v13 + 4);
  v193 = *(v192 + 168);
  v194 = *(v192 + 16);
  if ([v10 isRunning])
  {
    if ([v194 displayThreadRunningState])
    {
      v195 = 4;
    }

    else
    {
      v195 = 0;
    }

    if ((([v194 displayCPUNumForRunningThreads] & 1) != 0 || objc_msgSend(v194, "displayCPUClusterInfoForRunningThreads")) && (v196 = objc_msgSend(v10, "cpuNum"), v196 != -1))
    {
      v197 = v196;
      if ([v194 displayCPUNumForRunningThreads])
      {
        v198 = v197;
        if (v197 >= 0xFF)
        {
          v514 = *__error();
          v515 = _sa_logt();
          if (os_log_type_enabled(v515, OS_LOG_TYPE_FAULT))
          {
            *buf = 67109120;
            LODWORD(v626) = v197;
            _os_log_fault_impl(&dword_1E0E2F000, v515, OS_LOG_TYPE_FAULT, "bad cpu num %u", buf, 8u);
          }

          *__error() = v514;
          v198 = -2;
          v13 = v599;
          a5 = v604;
        }

        v199 = v198 + 1;
      }

      else
      {
        v199 = 0;
      }

      if ([v194 displayCPUClusterInfoForRunningThreads])
      {
        v195 |= __rbit32([(SASampleStore *)v193 clusterFlagsForCPUNum:v197]) >> 30;
      }
    }

    else
    {
      v199 = 0;
    }

    if ([v194 displayCPUSpeedInCallTrees])
    {
      v202 = [v585 cpuSpeedMhz] / 0x64;
    }

    else
    {
      LOWORD(v202) = 0;
    }

    if ([v194 displayPMICycleIntervalInCallTrees])
    {
      v598 = ([v585 pmiCycleInterval] / 0xF4240uLL);
      goto LABEL_406;
    }

LABEL_405:
    v598 = 0;
  }

  else
  {
    if ([v10 isRunnable])
    {
      if ([v194 displayThreadRunningState])
      {
        v195 = 8;
      }

      else
      {
        v195 = 0;
      }
    }

    else
    {
      v195 = 0;
    }

    if (![v194 displayCPUNumForNonRunningThreads] || (v200 = objc_msgSend(v10, "cpuNum"), v200 == -1))
    {
      v199 = 0;
      LOWORD(v202) = 0;
      goto LABEL_405;
    }

    v201 = v200;
    if (v200 >= 0xFF)
    {
      v509 = *__error();
      v510 = _sa_logt();
      if (os_log_type_enabled(v510, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        LODWORD(v626) = v201;
        _os_log_fault_impl(&dword_1E0E2F000, v510, OS_LOG_TYPE_FAULT, "bad cpu num %u", buf, 8u);
      }

      *__error() = v509;
      LOBYTE(v201) = -2;
      v13 = v599;
      a5 = v604;
    }

    LOWORD(v202) = 0;
    v598 = 0;
    v199 = v201 + 1;
  }

LABEL_406:
  LODWORD(v9) = v585;
  v210 = [v585 isSuspended];
  LODWORD(v211) = v195 | 0x10;
  if (v210)
  {
    v211 = v211;
  }

  else
  {
    v211 = v195;
  }

  v212 = (v199 << 48) | (v211 << 56);
  if (v13[272] == 1)
  {
    a2 = [v585 waitInfo];

    if (v13[272])
    {
      v586 = [v585 turnstileInfo];

      goto LABEL_414;
    }
  }

  else
  {
    a2 = 0;
  }

  v586 = 0;
LABEL_414:
  v213 = v212 | (v202 << 32);
  v214 = *(*(v13 + 4) + 152);
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a5, "threadId")}];
  v215 = [v214 objectForKeyedSubscript:v23];

  v216 = [v215 threadState];

  if (v216 != v585)
  {

    v215 = 0;
  }

  v204 = v213 | v598;
  if (v13[273] == 1)
  {
    v10 = v585;
    LODWORD(a6) = [v585 originPid];
    if (v13[273])
    {
      LODWORD(v587) = [v585 proximatePid];
    }

    else
    {
      LODWORD(v587) = -1;
    }
  }

  else
  {
    LODWORD(a6) = -1;
    LODWORD(v587) = -1;
    v10 = v585;
  }

  obj = v215;
  if (v13[274] != 1)
  {
    LODWORD(v595) = 0;
    goto LABEL_456;
  }

  if (!a4)
  {
    v428 = *__error();
    v429 = _sa_logt();
    if (os_log_type_enabled(v429, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v429, OS_LOG_TYPE_ERROR, "No task state for thread state in microstackshot data", buf, 2u);
    }

    *__error() = v428;
    _SASetCrashLogMessage(12225, "No task state for thread state in microstackshot data", v430, v431, v432, v433, v434, v435, v556);
    _os_crash();
    __break(1u);
LABEL_641:
    v436 = *__error();
    v204 = _sa_logt();
    if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
    {
      v23 = [*(*(*(v13 + 25) + 8) + 40) debugDescription];
      v437 = [v23 UTF8String];
      *buf = 136315138;
      v626 = v437;
      _os_log_error_impl(&dword_1E0E2F000, v204, OS_LOG_TYPE_ERROR, "leaf frame %s !isLeafFrame", buf, 0xCu);
    }

    *__error() = v436;
    v438 = [*(*(*(v13 + 25) + 8) + 40) debugDescription];
    v439 = [v438 UTF8String];
    _SASetCrashLogMessage(12365, "leaf frame %s !isLeafFrame", v440, v441, v442, v443, v444, v445, v439);

    _os_crash();
    __break(1u);
LABEL_644:
    v446 = *__error();
    v447 = _sa_logt();
    if (os_log_type_enabled(v447, OS_LOG_TYPE_ERROR))
    {
      v448 = objc_opt_class();
      v23 = NSStringFromClass(v448);
      v449 = [v23 UTF8String];
      *buf = 136315138;
      v626 = v449;
      _os_log_error_impl(&dword_1E0E2F000, v447, OS_LOG_TYPE_ERROR, "treeCountedState is a %s", buf, 0xCu);
    }

    *__error() = v446;
    v450 = objc_opt_class();
    v451 = NSStringFromClass(v450);
    v452 = [v451 UTF8String];
    _SASetCrashLogMessage(12374, "treeCountedState is a %s", v453, v454, v455, v456, v457, v458, v452);

    _os_crash();
    __break(1u);
    goto LABEL_647;
  }

  v218 = SAMicrostackshotStateForFlagsTaskAndThreadState([v10 microstackshotFlags], a4, v10);
  v219 = *(v13 + 12);
  if (v219)
  {
    if ((v218 & 0x10) == 0)
    {
      if (v13[275])
      {
        v220 = v218;
      }

      else
      {
        v220 = v218 & 0x1FFE3;
      }

      LODWORD(v595) = v220;
      goto LABEL_442;
    }

    v222 = 40;
    if ((v218 & 8) == 0)
    {
      v222 = 48;
    }

    *&v219[v222] += v14;
    v219 = *(v13 + 12);
    if (v219)
    {
      v223 = 32;
      if ((v218 & 4) == 0)
      {
        v223 = 24;
      }

      *&v219[v223] += v14;
      v219 = *(v13 + 12);
      v224 = v218 & 0x1FFE3;
      if (v13[275])
      {
        v224 = v218;
      }

      LODWORD(v595) = v224;
      if (v219)
      {
LABEL_442:
        v219 = objc_getProperty(v219, v217, 8, 1);
      }
    }

    else
    {
      v555 = v218 & 0x1FFE3;
      if (v13[275])
      {
        v555 = v218;
      }

      LODWORD(v595) = v555;
    }

    v225 = v219;
    v226 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v595];
    v23 = [v225 objectForKeyedSubscript:v226];

    if (v23)
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v23, "unsignedLongValue") + v14}];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    }
    v228 = ;
    v229 = *(v13 + 12);
    if (v229)
    {
      v229 = objc_getProperty(v229, v227, 8, 1);
    }

    v230 = v229;
    v231 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v595];
    [v230 setObject:v228 forKeyedSubscript:v231];

    v233 = *(v13 + 12);
    if (v233)
    {
      v233 = objc_getProperty(v233, v232, 16, 1);
    }

    v234 = v233;
    v235 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v204];
    v9 = [v234 objectForKeyedSubscript:v235];

    if (v9)
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v9, "unsignedLongValue") + v14}];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    }
    v237 = ;
    v238 = *(v13 + 12);
    if (v238)
    {
      v238 = objc_getProperty(v238, v236, 16, 1);
    }

    v239 = v238;
    a5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v204];
    [v239 setObject:v237 forKeyedSubscript:a5];

    v215 = obj;
    v10 = v585;
  }

  else
  {
    if (v13[275])
    {
      v221 = v218;
    }

    else
    {
      v221 = v218 & 0x1FFE3;
    }

    LODWORD(v595) = v221;
  }

LABEL_456:
  v240 = *(*(*(v13 + 25) + 8) + 40);
  v241 = v593;
  if (v240)
  {
    if (v240[24])
    {
      v242 = objc_getProperty(v240, v217, 40, 1);
      goto LABEL_460;
    }

    v416 = *__error();
    v204 = _sa_logt();
    if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
    {
      v23 = [*(*(*(v13 + 25) + 8) + 40) debugDescription];
      v417 = [v23 UTF8String];
      *buf = 136315138;
      v626 = v417;
      _os_log_error_impl(&dword_1E0E2F000, v204, OS_LOG_TYPE_ERROR, "leaf frame %s !isLeafFrame", buf, 0xCu);
    }

    *__error() = v416;
    v291 = [*(*(*(v13 + 25) + 8) + 40) debugDescription];
    v418 = [v291 UTF8String];
    _SASetCrashLogMessage(12269, "leaf frame %s !isLeafFrame", v419, v420, v421, v422, v423, v424, v418);

    _os_crash();
    __break(1u);
LABEL_636:
    v425 = v291[188];
    LODWORD(a4) = 1;
    v241 = v23;
    v426 = objc_getProperty(v23, v293, v425, 1);
    if (v426)
    {
      v427 = 0;
      v13 = v599;
      v10 = v585;
      goto LABEL_650;
    }

LABEL_647:
    if (a2 && ([(SAWaitInfo *)a2 _displaysContentForPid:*(v23 + 48) tid:*(v599 + 29) options:0 displayString:0 nameCallback:?]& 1) != 0)
    {
      v427 = 0;
      v426 = 0;
      v13 = v599;
      v10 = v585;
      v241 = v23;
LABEL_650:
      v459 = v593;
      v460 = v598;
LABEL_683:

      if (v460)
      {
LABEL_684:

        if ((a4 & 1) == 0)
        {
          goto LABEL_685;
        }

LABEL_693:

        if (v427)
        {
          goto LABEL_694;
        }

        goto LABEL_551;
      }

LABEL_692:
      if (a4)
      {
        goto LABEL_693;
      }

LABEL_685:

      if (v427)
      {
LABEL_694:
        v251 = v241;

        goto LABEL_602;
      }

LABEL_551:
      v215 = obj;
LABEL_462:

LABEL_463:
      v243 = a5 + 1624;
      v244 = [v215 isPartOfADeadlock];
      v245 = [v215 isBlockedByADeadlock];
      v246 = [*(v13 + 5) pid];
      v247 = [v604 threadId];
      v248 = [v10 basePriority];
      v249 = [[SATimeRange alloc] initWithStart:v601 end:v602];
      v557 = v247;
      v13 = v599;
      v250 = v246;
      a5 = v604;
      v251 = [(SACallTreeState *)v243 treeCountedStateWithWaitInfo:a2 turnstileInfo:v586 isPartOfADeadlock:v244 isBlockedByADeadlock:v245 state:v204 microstackshotState:v595 pid:v250 threadId:v557 threadPriority:v248 timeRange:v249 originPid:__SPAIR64__(v587 proximatePid:a6) startSampleIndex:v597 sampleCount:v590];

      [v578 addObject:v251];
      v23 = v580;
      a4 = v581;
      goto LABEL_464;
    }

    v577 = 1;
LABEL_659:
    v575 = v9 ^ 1;
    v501 = objc_getProperty(v23, v293, 64, 1);
    v503 = [v501 isEqual:v586];
    if (v503)
    {
      v504 = 0;
      v505 = 0;
      goto LABEL_676;
    }

    v14 = objc_getProperty(v23, v502, 64, 1);
    v504 = v14 != 0;
    if (v14)
    {
      v567 = objc_getProperty(v23, v506, 64, 1);
      if (([(SATurnstileInfo *)v567 displaysSameContentAs:v586 forPid:*(v23 + 28) tid:*(v23 + 48) displayOptions:*(v599 + 29)]& 1) != 0)
      {
        v505 = 0;
        v504 = 1;
        goto LABEL_676;
      }
    }

    v507 = 1;
    v508 = objc_getProperty(v23, v506, 64, 1);
    if (v508)
    {
      v427 = 0;
      goto LABEL_679;
    }

    if (v586 && [(SATurnstileInfo *)v586 _displaysContentForPid:*(v23 + 48) tid:0 threadPriority:*(v599 + 29) options:0 displayString:0 nameCallback:?])
    {
      v427 = 0;
LABEL_678:
      v508 = 0;
LABEL_679:

      v512 = v577;
      if (v504)
      {
        goto LABEL_680;
      }

LABEL_689:
      if (v507)
      {
        goto LABEL_690;
      }

LABEL_681:

      if (v512)
      {
        goto LABEL_682;
      }
    }

    else
    {
      v505 = 1;
LABEL_676:
      v507 = v503 ^ 1;
      if ([obj isPartOfADeadlock] == (*(v23 + 25) & 1))
      {
        v513 = [obj isBlockedByADeadlock];
        v427 = v513 ^ [obj isBlockedByADeadlock] ^ 1;
        if (v505)
        {
          goto LABEL_678;
        }
      }

      else
      {
        v427 = 0;
        if (v505)
        {
          goto LABEL_678;
        }
      }

      v512 = v577;
      if (!v504)
      {
        goto LABEL_689;
      }

LABEL_680:

      if ((v507 & 1) == 0)
      {
        goto LABEL_681;
      }

LABEL_690:

      if (v512)
      {
LABEL_682:
        v426 = 0;
        v13 = v599;
        v10 = v585;
        v241 = v23;
        v459 = v593;
        v460 = v598;
        LODWORD(a4) = v575;
        goto LABEL_683;
      }
    }

    v13 = v599;
    v10 = v585;
    v241 = v23;
    v459 = v593;
    LODWORD(a4) = v575;
    if (v598)
    {
      goto LABEL_684;
    }

    goto LABEL_692;
  }

  v242 = *(v13 + 11);
LABEL_460:
  a5 = SAMicrostackshotStatistics.cache;
  v590 = v14;
  v578 = v242;
  if (v593)
  {
    [v242 addObject:v593];
    goto LABEL_462;
  }

  if (v13[262] != 1)
  {
    v241 = [v242 lastObject];
    if (!v241)
    {
      goto LABEL_462;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_462;
    }

    v289 = *(v241 + 9);
    if (((v289 ^ v204) & 0x1FFF000000000000) != 0 || v289 != v598 || ((v289 ^ v204) & 0xFFFF00000000) != 0 || *(v241 + 8) != v595 || *(v241 + 9) != a6 || *(v241 + 10) != v587)
    {
      goto LABEL_462;
    }

    v290 = v241;
    v291 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
    v23 = v290;
    v292 = objc_getProperty(v290, v288, 56, 1);
    LODWORD(v9) = [v292 isEqual:a2];
    v593 = v292;
    if (v9)
    {
      LODWORD(v598) = 0;
      v577 = 0;
      goto LABEL_659;
    }

    goto LABEL_625;
  }

  v608 = 0u;
  v609 = 0u;
  v606 = 0u;
  v607 = 0u;
  v241 = v242;
  v258 = [v241 countByEnumeratingWithState:&v606 objects:v646 count:16];
  if (!v258)
  {
    goto LABEL_462;
  }

  v259 = v258;
  v260 = *v607;
  v594 = v241;
  while (2)
  {
    v261 = 0;
LABEL_475:
    if (*v607 != v260)
    {
      objc_enumerationMutation(v241);
    }

    v262 = *(*(&v606 + 1) + 8 * v261);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_481;
    }

    v264 = v262 ? *(v262 + 72) : 0;
    if (((v264 ^ v204) & 0x1FFF000000000000) != 0 || v264 != v598 || ((v264 ^ v204) & 0xFFFF00000000) != 0)
    {
      goto LABEL_481;
    }

    if (v262)
    {
      if (*(v262 + 32) == v595 && *(v262 + 36) == a6 && *(v262 + 40) == v587)
      {
        v265 = objc_getProperty(v262, v263, 56, 1);
        goto LABEL_490;
      }

LABEL_481:
      if (v259 == ++v261)
      {
        v287 = [v241 countByEnumeratingWithState:&v606 objects:v646 count:16];
        v259 = v287;
        if (!v287)
        {
          v13 = v599;
          goto LABEL_551;
        }

        continue;
      }

      goto LABEL_475;
    }

    break;
  }

  if (v595 | a6 | v587)
  {
    v10 = v585;
    v241 = v594;
    goto LABEL_481;
  }

  v265 = 0;
  v10 = v585;
  v241 = v594;
LABEL_490:
  v574 = v265;
  v266 = [v574 isEqual:a2];
  if (v266)
  {
    v576 = 0;
    goto LABEL_492;
  }

  v572 = v266;
  if (v262)
  {
    v271 = objc_getProperty(v262, v267, 56, 1);
    v576 = v271 != 0;
    v563 = v271;
    if (v271)
    {
      v268 = 1;
      v562 = objc_getProperty(v262, v267, 56, 1);
      if (([(SAWaitInfo *)v562 displaysSameContentAs:a2 forPid:*(v262 + 28) tid:*(v262 + 48) displayOptions:*(v599 + 29)]& 1) != 0)
      {
        v570 = 0;
        v576 = 1;
        v269 = v586;
        v270 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
LABEL_498:
        v573 = v268;
        v272 = objc_getProperty(v262, v267, v270[189], 1);
        goto LABEL_499;
      }
    }

    v282 = objc_getProperty(v262, v267, 56, 1);
    if (v282)
    {
      v573 = 1;
      v281 = 0;
      goto LABEL_533;
    }

    v267 = *(v262 + 28);
    v283 = *(v262 + 48);
  }

  else
  {
    v267 = 0;
    v576 = 0;
    v563 = 0;
    v283 = 0;
  }

  if (!a2)
  {
    v565 = 0;
LABEL_548:
    v266 = v572;
LABEL_492:
    v268 = v266 ^ 1;
    v269 = v586;
    v270 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
    if (v262)
    {
      v570 = v266 ^ 1;
      goto LABEL_498;
    }

    v272 = 0;
    v573 = v268;
    v570 = v268;
LABEL_499:
    v568 = v272;
    v274 = [v568 isEqual:v269];
    if (v274)
    {
      v275 = 0;
LABEL_501:
      v276 = v274 ^ 1;
      v277 = [obj isPartOfADeadlock];
      if (!v262)
      {
        v566 = v274 ^ 1;
        if (v277)
        {
LABEL_508:
          v281 = 0;
          if (!v276)
          {
LABEL_536:
            if (!v275)
            {
LABEL_537:
              v10 = v585;
              if (v566)
              {
LABEL_538:

                if ((v570 & 1) == 0)
                {
LABEL_539:
                  v241 = v594;
                  if (v576)
                  {
                    goto LABEL_534;
                  }

LABEL_540:
                  if (v573)
                  {
                    goto LABEL_541;
                  }

                  goto LABEL_542;
                }

LABEL_531:
                v241 = v594;
                goto LABEL_532;
              }

LABEL_530:

              if (!v570)
              {
                goto LABEL_539;
              }

              goto LABEL_531;
            }

LABEL_529:

            v10 = v585;
            if (v566)
            {
              goto LABEL_538;
            }

            goto LABEL_530;
          }

LABEL_528:

          if ((v275 & 1) == 0)
          {
            goto LABEL_537;
          }

          goto LABEL_529;
        }

LABEL_527:
        v286 = [obj isBlockedByADeadlock];
        v281 = v286 ^ [obj isBlockedByADeadlock] ^ 1;
        if ((v276 & 1) == 0)
        {
          goto LABEL_536;
        }

        goto LABEL_528;
      }

      v278 = v274 ^ 1;
LABEL_507:
      v566 = v276;
      v276 = v278;
      if (v277 != (*(v262 + 25) & 1))
      {
        goto LABEL_508;
      }

      goto LABEL_527;
    }

    if (v262)
    {
      v279 = objc_getProperty(v262, v273, v270[189], 1);
      v564 = v279 != 0;
      v560 = v279;
      if (v279)
      {
        v559 = objc_getProperty(v262, v280, v270[189], 1);
        if ([(SATurnstileInfo *)v559 displaysSameContentAs:v269 forPid:*(v262 + 28) tid:*(v262 + 48) displayOptions:*(v599 + 29)])
        {
          v277 = [obj isPartOfADeadlock];
          v278 = 0;
          v276 = 1;
          v275 = 1;
          goto LABEL_507;
        }
      }

      v561 = objc_getProperty(v262, v280, v270[189], 1);
      if (v561)
      {
        v566 = 1;
        v281 = 0;
        LOBYTE(v275) = v564;
        goto LABEL_528;
      }

      v284 = *(v262 + 28);
      v285 = *(v262 + 48);
      v275 = v564;
      if (v269)
      {
        goto LABEL_519;
      }
    }

    else
    {
      v284 = 0;
      v275 = 0;
      v560 = 0;
      v285 = 0;
      if (v269)
      {
LABEL_519:
        v561 = 0;
        if ([(SATurnstileInfo *)v269 _displaysContentForPid:v284 tid:v285 threadPriority:0 options:*(v599 + 29) displayString:0 nameCallback:0])
        {
          v281 = 0;
          v566 = 1;
          goto LABEL_528;
        }

        goto LABEL_501;
      }
    }

    v561 = 0;
    goto LABEL_501;
  }

  v565 = 0;
  if (([(SAWaitInfo *)a2 _displaysContentForPid:v267 tid:v283 options:*(v599 + 29) displayString:0 nameCallback:0]& 1) == 0)
  {
    goto LABEL_548;
  }

  v281 = 0;
  v573 = 1;
LABEL_532:
  v282 = v565;
LABEL_533:
  v565 = v282;

  if (!v576)
  {
    goto LABEL_540;
  }

LABEL_534:

  if (v573)
  {
LABEL_541:
  }

LABEL_542:

  if ((v281 & 1) == 0)
  {
    goto LABEL_481;
  }

  v251 = v262;

  v13 = v599;
  v215 = obj;
  if (!v262)
  {
    goto LABEL_463;
  }

LABEL_602:
  v23 = v580;
  a4 = v581;
  a5 = v604;
  if (v13[276] == 1)
  {
    if ((v579 & 1) != 0 || (v355 = *(v251 + 12), v355 == 0x7FFFFFFFFFFFFFFFLL) || v355 + 1 != v597)
    {
      v348 = objc_getProperty(v251, v347, 88, 1);
      v349 = [[SATimeRange alloc] initWithStart:v601 end:v602];
      [v348 addObject:v349];
    }

    else
    {
      v348 = objc_getProperty(v251, v347, 88, 1);
      v356 = [v348 lastObject];
      v349 = v356;
      if (v356)
      {
        objc_setProperty_atomic(v356, v357, v602, 16);
      }
    }

    v23 = v580;
  }

  *(v251 + 12) = v23;
  [v251 setSampleCount:{objc_msgSend(v251, "sampleCount") + v590}];
LABEL_464:
  if ([newValue count])
  {
    if (v251)
    {
      v253 = objc_getProperty(v251, v252, 80, 1);
    }

    else
    {
      v253 = 0;
    }

    v254 = v253;

    if (v254)
    {
      if (v251)
      {
        v256 = objc_getProperty(v251, v255, 80, 1);
      }

      else
      {
        v256 = 0;
      }

      v257 = v256;
      [v257 addObjectsFromArray:newValue];
    }

    else if (v251)
    {
      objc_setProperty_atomic(v251, v255, newValue, 80);
    }
  }

  v593 = 0;
  v191 = v602;
LABEL_555:
  *(*(*(v13 + 14) + 8) + 24) = v23;
LABEL_596:
  objc_storeStrong((*(*(v13 + 24) + 8) + 40), v10);
  objc_storeStrong((*(*(v13 + 22) + 8) + 40), a4);
  objc_storeStrong((*(*(v13 + 23) + 8) + 40), a5);
  objc_storeStrong((*(*(v13 + 21) + 8) + 40), v191);
  objc_storeStrong((*(*(v13 + 20) + 8) + 40), v618);
  v345 = v23 + v583;
  if (!v583)
  {
    v345 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(*(*(v13 + 13) + 8) + 24) = v345;
  *(*(*(v13 + 15) + 8) + 24) = v583;

  v93 = v191;
LABEL_599:
  v91 = v601;
LABEL_600:

  v346 = *MEMORY[0x1E69E9840];
}

uint64_t __245__SASamplePrinter_addStackForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_task_toRootObjects_nameChanges_dispatchQueueChanges_swiftTaskChanges_threadChanges_priorityChanges_microstackshotSummary_onlyHeaviestStack_includeState___block_invoke_2442(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 startTimestamp];
  v5 = [a3 startTimestamp];
  v6 = [v4 compare:v5];

  return v6;
}

void __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke(uint64_t a1, unint64_t *a2, unsigned int a3, _BYTE *a4)
{
  v466 = *MEMORY[0x1E69E9840];
  v11 = objc_autoreleasePoolPush();
  if (a3 >= 0x7FFFFFFF)
  {
    v22 = *__error();
    v311 = _sa_logt();
    if (os_log_type_enabled(v311, OS_LOG_TYPE_ERROR))
    {
      *v462 = 67109120;
      *&v462[4] = a3;
      _os_log_error_impl(&dword_1E0E2F000, v311, OS_LOG_TYPE_ERROR, "unmodifed depth %u", v462, 8u);
    }

    *__error() = v22;
    _SASetCrashLogMessage(12533, "unmodifed depth %u", v312, v313, v314, v315, v316, v317, a3);
    _os_crash();
    __break(1u);
    goto LABEL_363;
  }

  v12 = *(a1 + 152);
  if (v12 && *(*(*(a1 + 64) + 8) + 24) >= v12)
  {
    goto LABEL_7;
  }

  v13 = *(a1 + 192);
  if (v13 == 1)
  {
    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 24);
    if ((v15 & 0x80000000) == 0 && v15 >= a3)
    {
LABEL_7:
      *a4 = 1;
      goto LABEL_435;
    }

    *(v14 + 24) = a3;
  }

  v16 = *(a1 + 80);
  v17 = *(*(v16 + 8) + 24);
  if (v17 >= 1)
  {
    v18 = v17 + 1;
    v19 = 8 * v17 - 8;
    do
    {
      if (*(*(*(*(a1 + 88) + 8) + 24) + v19) >= a3)
      {
        --*(*(*(a1 + 80) + 8) + 24);
      }

      --v18;
      v19 -= 8;
    }

    while (v18 > 1);
    v16 = *(a1 + 80);
  }

  *v462 = 0;
  v463 = v462;
  v464 = 0x2020000000;
  v465 = a3;
  v20 = *(*(v16 + 8) + 24);
  v436 = a1;
  v21 = *(a1 + 88);
  v22 = a3;
  if (v20 > 0)
  {
    v22 = *(*(*(v21 + 8) + 24) + 8 * v20 - 4) + a3;
    if (v22 >= 0)
    {
      v465 = *(*(*(v21 + 8) + 24) + 8 * v20 - 4) + a3;
      goto LABEL_18;
    }

LABEL_363:
    v318 = *__error();
    v319 = _sa_logt();
    if (os_log_type_enabled(v319, OS_LOG_TYPE_ERROR))
    {
      v320 = *(*(*(*(v436 + 88) + 8) + 24) + 8 * *(*(*(v436 + 80) + 8) + 24) - 4);
      *v458 = 67109632;
      *&v458[4] = v22;
      LOWORD(v459) = 1024;
      *(&v459 + 2) = a3;
      HIWORD(v459) = 1024;
      LODWORD(v460) = v320;
      _os_log_error_impl(&dword_1E0E2F000, v319, OS_LOG_TYPE_ERROR, "adjustDepth %d (%u + %d)", v458, 0x14u);
    }

    *__error() = v318;
    v425 = *(*(*(*(v436 + 88) + 8) + 24) + 8 * *(*(*(v436 + 80) + 8) + 24) - 4);
    _SASetCrashLogMessage(12563, "adjustDepth %d (%u + %d)", v321, v322, v323, v324, v325, v326, v22);
    _os_crash();
    __break(1u);
LABEL_366:
    v327 = *__error();
    v328 = _sa_logt();
    if (os_log_type_enabled(v328, OS_LOG_TYPE_ERROR))
    {
      v329 = *(*(*(v436 + 112) + 8) + 24);
      v330 = [a2 startSampleIndex];
      *buf = 134218240;
      v453 = v329;
      v454 = 2048;
      v455 = v330;
      _os_log_error_impl(&dword_1E0E2F000, v328, OS_LOG_TYPE_ERROR, "leafFrameSkippedCountedStateToIndex %lu + 1 != treeCountedState.startSampleIndex %lu", buf, 0x16u);
    }

    *__error() = v327;
    v331 = *(*(*(v436 + 112) + 8) + 24);
    [a2 startSampleIndex];
    _SASetCrashLogMessage(12890, "leafFrameSkippedCountedStateToIndex %lu + 1 != treeCountedState.startSampleIndex %lu", v332, v333, v334, v335, v336, v337, v331);
    _os_crash();
    __break(1u);
LABEL_369:
    v338 = *__error();
    v339 = _sa_logt();
    if (os_log_type_enabled(v339, OS_LOG_TYPE_ERROR))
    {
      v340 = [v4 binary];
      v341 = [v340 debugDescription];
      v342 = v341;
      v343 = [v341 UTF8String];
      *buf = 136315138;
      v453 = v343;
      _os_log_error_impl(&dword_1E0E2F000, v339, OS_LOG_TYPE_ERROR, "binaryIndex nil for %s", buf, 0xCu);
    }

    *__error() = v338;
    v344 = [v4 binary];
    v345 = [v344 debugDescription];
    v346 = v345;
    v347 = [v345 UTF8String];
    _SASetCrashLogMessage(13502, "binaryIndex nil for %s", v348, v349, v350, v351, v352, v353, v347);

    _os_crash();
    __break(1u);
    goto LABEL_372;
  }

LABEL_18:
  context = v11;
  *v458 = 0;
  v459 = v458;
  v460 = 0x2020000000;
  v23 = 2 * v22 + 2;
  if (v13)
  {
    v23 = 2;
  }

  v461 = v23;
  v447[0] = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v447[1] = 3221225472;
  v447[2] = __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2471;
  v447[3] = &unk_1E86F7DE0;
  v447[4] = v16;
  v447[5] = v21;
  v448 = a3;
  v447[6] = v462;
  v447[7] = v458;
  v449 = v13;
  v434 = MEMORY[0x1E12EBE50](v447);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v436;
    if (*(v436 + 160) && [a2 sampleCount] <= *(v436 + 160))
    {
      Property = a2;
      if (a2)
      {
        Property = objc_getProperty(a2, v25, 40, 1);
      }

      v74 = Property;
      [v74 removeAllObjects];

      goto LABEL_434;
    }

    if ([*(*(v436 + 32) + 16) systemstatsFormat] && (objc_msgSend(a2, "isTruncatedLeafCallstack") & 1) != 0)
    {
      goto LABEL_434;
    }

    if (a3)
    {
      if (*(*(*(v436 + 96) + 8) + 24))
      {
        v6 = 0;
      }

      else
      {
        v92 = [a2 frame];
        v93 = v92;
        if (v92)
        {
          v94 = *(v92 + 32);
        }

        else
        {
          v94 = 0;
        }

        v95 = v94;
        if ([v95 isTruncatedBacktraceFrame])
        {
          v96 = [a2 frame];
          v97 = v96;
          if (v96)
          {
            v98 = *(v96 + 32);
          }

          else
          {
            v98 = 0;
          }

          v99 = v98;
          v100 = [v99 isExclave];

          v6 = (v100 ^ 1u);
        }

        else
        {
          v6 = 0;
        }

        v24 = v436;
      }

LABEL_125:
      if (*(v24 + 193) == 1)
      {
        v129 = *(*(v24 + 104) + 8);
        if (*(v129 + 24))
        {
          *(v129 + 24) = 0;
        }

        else
        {
          [*(v24 + 40) appendString:{@", "}];
        }

        [*(v436 + 40) appendString:@"{"];
        [a2 writeJSONDictionaryEntriesToStream:*(v436 + 40)];
        v138 = *(v436 + 40);
        v139 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v463 + 6)];
        SAJSONWriteDictionaryEntry(v138, @"depth", v139);

        if ((*(v436 + 194) & 1) == 0)
        {
          v140 = MEMORY[0x1E696AD98];
          v142 = *(v436 + 32);
          v141 = *(v436 + 40);
          v143 = [a2 startSampleIndex];
          v144 = [a2 sampleCount];
          if (v142)
          {
            if (*(v142 + 48) == 1)
            {
              v145 = v144;
              v146 = [*(v142 + 16) forceOneBasedTimeIndexes];
              v147 = v145 + v143;
              if (v146)
              {
                v147 -= *(v142 + 56);
              }
            }

            else
            {
              v147 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v147 = 0;
          }

          v151 = [v140 numberWithUnsignedInteger:v147];
          SAJSONWriteDictionaryEntry(v141, @"endIndex", v151);
        }

        if (v6)
        {
          SAJSONWriteDictionaryEntry(*(v436 + 40), @"patched", MEMORY[0x1E695E118]);
        }

        [*(v436 + 40) appendString:@"}"];
        goto LABEL_146;
      }

      v130 = v24;
      v131 = *(*(*(v24 + 112) + 8) + 24);
      if (v131 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*(v24 + 194) == 1)
        {
          v132 = *(v24 + 40);
          v133 = *(*(*(v130 + 120) + 8) + 24);
          v134 = *(v130 + 184);
          v135 = *(*(*(v130 + 128) + 8) + 24);
          v136 = *(*(*(v130 + 136) + 8) + 24);
          v137 = *(*(*(v130 + 144) + 8) + 40);
          _saos_printf_indent_and_kernel_dot(v132, v133, v136, 0);
          [v132 printWithFormat:@"%-*lu  ", v134, v131 - v135 + 1];
          [v132 appendString:v137];
          [v132 appendString:@"\n"];
        }

        else
        {
          v148 = *(v24 + 32);
          if (v148)
          {
            if (*(v148 + 48) == 1)
            {
              v149 = [*(v148 + 16) forceOneBasedTimeIndexes];
              v150 = v131 + 1;
              if (v149)
              {
                v150 -= *(v148 + 56);
              }
            }

            else
            {
              v150 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v150 = 0;
          }

          saos_printf_timeline_frame(*(v436 + 40), *(*(*(v436 + 120) + 8) + 24), *(v436 + 184), *(*(*(v436 + 112) + 8) + 24) - *(*(*(v436 + 128) + 8) + 24) + 1, *(*(*(v436 + 136) + 8) + 24), *(*(*(v436 + 144) + 8) + 40), v150);
        }

        ++*(*(*(v436 + 64) + 8) + 24);
        *(*(*(v436 + 136) + 8) + 24) = 0;
        *(*(*(v436 + 120) + 8) + 24) = 0;
        v175 = *(*(v436 + 144) + 8);
        v176 = *(v175 + 40);
        *(v175 + 40) = 0;

        v130 = v436;
        *(*(*(v436 + 128) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
        *(*(*(v436 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (![*(*(v130 + 32) + 16) systemstatsFormat])
      {
        v186 = [a2 frame];
        v187 = [v186 isKernel];

        if (v187)
        {
          v188 = v436;
          v179 = *(v436 + 48);
          v189 = *(v436 + 56);
          v190 = v189;
        }

        else
        {
          v190 = 0;
          v188 = v436;
          v189 = *(v436 + 56);
          v179 = v189;
        }

        v191 = v189;
        v192 = [a2 isTruncatedLeafCallstack];
        v193 = *(v188 + 32);
        if (v192)
        {
          v195 = [a2 frame];
          v196 = a2;
          if (a2)
          {
            v196 = objc_getProperty(a2, v194, 48, 1);
          }

          v197 = v196;
          v198 = [(SASamplePrinter *)v193 copyDescriptionForTruncatedLeafFrame:v195 otherCallTreeDescription:v197 binariesToDisplay:v179 extraBinariesToDisplay:v190];
          v456 = v198;
          v199 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v456 count:1];
        }

        else
        {
          v195 = [a2 frame];
          v199 = [(SASamplePrinter *)v193 copyDescriptionsForFrame:v195 binariesToDisplay:v179 extraBinariesToDisplay:v190];
        }

        goto LABEL_394;
      }

      v177 = *(v130 + 32);
      v178 = [a2 frame];
      v179 = v178;
      if (!v177)
      {
        v190 = 0;
LABEL_393:
        v457 = v190;
        v199 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v457 count:1];
LABEL_394:

        if (v6)
        {
          v382 = [v199 mutableCopy];
          [v382 insertObject:@"<patched truncated backtrace>" atIndex:0];
        }

        else
        {
          v382 = v199;
        }

        if ([v382 count] >= 2)
        {
          for (i = 0; i < [v382 count] - 1; ++i)
          {
            v384 = [v382 objectAtIndexedSubscript:i];
            v385 = *(v436 + 32);
            if (*(v436 + 194) == 1)
            {
              v386 = [*(v385 + 16) systemstatsFormat];
              v387 = *(v436 + 40);
              v388 = *(v459 + 6);
              if (v386)
              {
                v389 = [a2 sampleCount];
                v390 = [a2 frame];
                _saos_printf_indent_and_kernel_dot(v387, v388, [v390 isKernel], 1);
                [v387 printWithFormat:@"%lu ", v389];
              }

              else
              {
                v394 = *(v436 + 184);
                v395 = [a2 sampleCount];
                v390 = [a2 frame];
                _saos_printf_indent_and_kernel_dot(v387, v388, [v390 isKernel], 0);
                [v387 printWithFormat:@"%-*lu  ", v394, v395];
              }

              [v387 appendString:v384];
              [v387 appendString:@"\n"];
            }

            else
            {
              v391 = [a2 startSampleIndex];
              v392 = [a2 sampleCount];
              if (v385)
              {
                if (*(v385 + 48) == 1)
                {
                  v393 = v392 + v391;
                  if ([*(v385 + 16) forceOneBasedTimeIndexes])
                  {
                    v393 -= *(v385 + 56);
                  }
                }

                else
                {
                  v393 = 0x7FFFFFFFFFFFFFFFLL;
                }
              }

              else
              {
                v393 = 0;
              }

              v396 = [*(*(v436 + 32) + 16) systemstatsFormat];
              v397 = *(v436 + 40);
              v398 = *(v459 + 6);
              if (v396)
              {
                v399 = [a2 sampleCount];
                v390 = [a2 frame];
                saos_printf_timeline_frame_noindent(v397, v398, v399, [v390 isKernel], v384, v393);
              }

              else
              {
                v400 = *(v436 + 184);
                v401 = [a2 sampleCount];
                v390 = [a2 frame];
                saos_printf_timeline_frame(v397, v398, v400, v401, [v390 isKernel], v384, v393);
              }
            }

            ++*(*(*(v436 + 64) + 8) + 24);
            v434[2](v434, 1);
          }
        }

        v402 = [v382 lastObject];
        if (a2 && (a2[3] & 1) != 0 && (*(v436 + 192) & 1) == 0 && *(v436 + 195) != 1)
        {
          v423 = [a2 frame];
          *(*(*(v436 + 136) + 8) + 24) = [v423 isKernel];

          *(*(*(v436 + 120) + 8) + 24) = *(v459 + 6);
          objc_storeStrong((*(*(v436 + 144) + 8) + 40), v402);
          *(*(*(v436 + 128) + 8) + 24) = [a2 startSampleIndex];
          v420 = *(*(v436 + 112) + 8);
          v421 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v403 = *(v436 + 32);
          if (*(v436 + 194) == 1)
          {
            v404 = [*(v403 + 16) systemstatsFormat];
            v405 = *(v436 + 40);
            v406 = *(v459 + 6);
            if (v404)
            {
              v407 = [a2 sampleCount];
              v408 = [a2 frame];
              _saos_printf_indent_and_kernel_dot(v405, v406, [v408 isKernel], 1);
              [v405 printWithFormat:@"%lu ", v407];
            }

            else
            {
              v412 = *(v436 + 184);
              v413 = [a2 sampleCount];
              v408 = [a2 frame];
              _saos_printf_indent_and_kernel_dot(v405, v406, [v408 isKernel], 0);
              [v405 printWithFormat:@"%-*lu  ", v412, v413];
            }

            [v405 appendString:v402];
            [v405 appendString:@"\n"];
          }

          else
          {
            v409 = [a2 startSampleIndex];
            v410 = [a2 sampleCount];
            if (v403)
            {
              if (*(v403 + 48) == 1)
              {
                v411 = v410 + v409;
                if ([*(v403 + 16) forceOneBasedTimeIndexes])
                {
                  v411 -= *(v403 + 56);
                }
              }

              else
              {
                v411 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            else
            {
              v411 = 0;
            }

            v414 = [*(*(v436 + 32) + 16) systemstatsFormat];
            v415 = *(v436 + 40);
            v416 = *(v459 + 6);
            if (v414)
            {
              v417 = [a2 sampleCount];
              v408 = [a2 frame];
              saos_printf_timeline_frame_noindent(v415, v416, v417, [v408 isKernel], v402, v411);
            }

            else
            {
              v418 = *(v436 + 184);
              v419 = [a2 sampleCount];
              v408 = [a2 frame];
              saos_printf_timeline_frame(v415, v416, v418, v419, [v408 isKernel], v402, v411);
            }
          }

          v420 = *(*(v436 + 64) + 8);
          v421 = *(v420 + 24) + 1;
        }

        *(v420 + 24) = v421;

        goto LABEL_434;
      }

      if (v178)
      {
        WeakRetained = objc_loadWeakRetained((v178 + 24));
        v4 = WeakRetained;
        if (WeakRetained)
        {
          v181 = [WeakRetained binary];
          p_cache = [v4 segment];
          v182 = [p_cache name];
          v183 = [*(v177 + 88) objectForKeyedSubscript:v181];
          v184 = v183;
          if (v182)
          {
            v185 = [v183 objectForKeyedSubscript:v182];
          }

          else
          {
            v201 = [MEMORY[0x1E695DFB0] null];
            v185 = [v184 objectForKeyedSubscript:v201];
          }

          if (v185)
          {
            v190 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu + %llu", objc_msgSend(v185, "unsignedLongValue"), objc_msgSend(v179, "address") - objc_msgSend(v4, "loadAddress")];

LABEL_392:
            goto LABEL_393;
          }

          goto LABEL_369;
        }
      }

      else
      {
        v4 = 0;
      }

      v190 = @"???";
      goto LABEL_392;
    }

    v89 = [a2 frame];
    v90 = [v89 isTruncatedBacktraceFrame];

    v24 = v436;
    v91 = *(*(v436 + 96) + 8);
    v6 = 0;
    if (v90)
    {
      *(v91 + 24) = 1;
      goto LABEL_125;
    }

LABEL_121:
    *(v91 + 24) = 0;
    goto LABEL_125;
  }

  p_cache = SAMicrostackshotStatistics.cache;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v436;
    if (*(v463 + 6) || !*(v436 + 160) || [a2 sampleCount] > *(v436 + 160))
    {
      if (*(v436 + 196) != 1)
      {
        v433 = 0;
        goto LABEL_82;
      }

      v28 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
      v6 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
      v29 = a2;
      if (!a2)
      {
        goto LABEL_381;
      }

      v30 = *(a2 + 9);
      if (*(a2 + 36) != -1)
      {
        v32 = (v436 + 32);
        v31 = *(v436 + 32);
        v29 = objc_getProperty(a2, v26, 88, 1);
        goto LABEL_34;
      }

      v433 = 0;
      goto LABEL_40;
    }

    goto LABEL_434;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = v436;
      if (*(v436 + 193) == 1)
      {
        v76 = *(*(v436 + 104) + 8);
        if (*(v76 + 24))
        {
          *(v76 + 24) = 0;
        }

        else
        {
          [*(v436 + 40) appendString:{@", "}];
        }

        v200 = [a2 stringByReplacingOccurrencesOfString:@"" withString:&stru_1F5BBF440];
        SAJSONWriteItem(*(v436 + 40), v200);
        ++*(*(*(v436 + 64) + 8) + 24);

        goto LABEL_434;
      }

      v160 = *(*(*(v436 + 112) + 8) + 24);
      if (v160 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*(v436 + 194) == 1)
        {
          v161 = *(v436 + 40);
          v162 = *(v436 + 184);
          v163 = *(*(*(v436 + 128) + 8) + 24);
          v164 = *(*(*(v436 + 144) + 8) + 40);
          _saos_printf_indent_and_kernel_dot(v161, *(*(*(v436 + 120) + 8) + 24), *(*(*(v436 + 136) + 8) + 24), 0);
          [v161 printWithFormat:@"%-*lu  ", v162, v160 - v163 + 1];
          [v161 appendString:v164];
          [v161 appendString:@"\n"];
        }

        else
        {
          v221 = *(v436 + 32);
          if (v221)
          {
            if (*(v221 + 48) == 1)
            {
              v222 = [*(v221 + 16) forceOneBasedTimeIndexes];
              v223 = v160 + 1;
              if (v222)
              {
                v223 -= *(v221 + 56);
              }
            }

            else
            {
              v223 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v223 = 0;
          }

          saos_printf_timeline_frame(*(v436 + 40), *(*(*(v436 + 120) + 8) + 24), *(v436 + 184), *(*(*(v436 + 112) + 8) + 24) - *(*(*(v436 + 128) + 8) + 24) + 1, *(*(*(v436 + 136) + 8) + 24), *(*(*(v436 + 144) + 8) + 40), v223);
        }

        v75 = v436;
        ++*(*(*(v436 + 64) + 8) + 24);
        *(*(*(v436 + 128) + 8) + 24) = *(*(*(v436 + 112) + 8) + 24) + 1;
        *(*(*(v436 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      }

      [*(v75 + 40) printWithFormat:@"%-*s<%@>\n", 2, "", a2];
LABEL_146:
      ++*(*(*(v436 + 64) + 8) + 24);
      goto LABEL_434;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_434;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_434;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_434;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_434;
    }

    v113 = *__error();
    v114 = _sa_logt();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v115 = objc_opt_class();
      v116 = NSStringFromClass(v115);
      v117 = v116;
      v118 = [v116 UTF8String];
      *buf = 136315138;
      v453 = v118;
      _os_log_error_impl(&dword_1E0E2F000, v114, OS_LOG_TYPE_ERROR, "treeNode is a %s", buf, 0xCu);
    }

    *__error() = v113;
    v119 = objc_opt_class();
    v24 = NSStringFromClass(v119);
    v120 = v24;
    v121 = [v24 UTF8String];
    _SASetCrashLogMessage(13086, "treeNode is a %s", v122, v123, v124, v125, v126, v127, v121);

    _os_crash();
    __break(1u);
    goto LABEL_121;
  }

  v48 = a2;
  a2 = v48;
  if (*(v436 + 193) == 1)
  {
    if (v48)
    {
      v48 = objc_getProperty(v48, v49, 40, 1);
    }

    v50 = v48;
    if ([v50 count])
    {

LABEL_47:
      v443 = 0u;
      v444 = 0u;
      v441 = 0u;
      v442 = 0u;
      v53 = a2;
      if (a2)
      {
        v53 = objc_getProperty(a2, v52, 40, 1);
      }

      v54 = v53;
      v55 = [v54 countByEnumeratingWithState:&v441 objects:v451 count:16];
      if (v55)
      {
        v56 = *v442;
        do
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v442 != v56)
            {
              objc_enumerationMutation(v54);
            }

            v58 = *(*(&v441 + 1) + 8 * j);
            v59 = *(*(v436 + 104) + 8);
            if (*(v59 + 24))
            {
              *(v59 + 24) = 0;
            }

            else
            {
              [*(v436 + 40) appendString:{@", "}];
            }

            [*(v436 + 40) appendString:@"{"];
            [v58 writeJSONDictionaryEntriesToStream:*(v436 + 40)];
            v60 = *(v436 + 40);
            v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v463 + 6)];
            SAJSONWriteDictionaryEntry(v60, @"depth", v61);

            [*(v436 + 40) appendString:@"}"];
          }

          v55 = [v54 countByEnumeratingWithState:&v441 objects:v451 count:16];
        }

        while (v55);
      }

      v63 = v436;
      if (*(v436 + 197) == 1)
      {
        v439 = 0u;
        v440 = 0u;
        v437 = 0u;
        v438 = 0u;
        v64 = a2;
        if (a2)
        {
          v64 = objc_getProperty(a2, v62, 32, 1);
        }

        v65 = v64;
        v66 = [v65 countByEnumeratingWithState:&v437 objects:v450 count:16];
        if (v66)
        {
          v67 = *v438;
          do
          {
            for (k = 0; k != v66; ++k)
            {
              if (*v438 != v67)
              {
                objc_enumerationMutation(v65);
              }

              v69 = *(*(&v437 + 1) + 8 * k);
              v70 = *(*(v436 + 104) + 8);
              if (*(v70 + 24))
              {
                *(v70 + 24) = 0;
              }

              else
              {
                [*(v436 + 40) appendString:{@", "}];
              }

              [*(v436 + 40) appendString:@"{"];
              [v69 writeJSONDictionaryEntriesToStream:*(v436 + 40)];
              v71 = *(v436 + 40);
              v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v463 + 6)];
              SAJSONWriteDictionaryEntry(v71, @"depth", v72);

              [*(v436 + 40) appendString:@"}"];
            }

            v66 = [v65 countByEnumeratingWithState:&v437 objects:v450 count:16];
          }

          while (v66);
        }

        v63 = v436;
      }

      ++*(*(*(v63 + 64) + 8) + 24);
      goto LABEL_359;
    }

    if (*(v436 + 197) == 1)
    {
      v172 = a2;
      if (a2)
      {
        v172 = objc_getProperty(a2, v51, 32, 1);
      }

      v173 = v172;
      v174 = v173 == 0;

      if (!v174)
      {
        goto LABEL_47;
      }
    }

    else
    {
    }

    goto LABEL_209;
  }

  if (![*(*(v436 + 32) + 16) systemstatsFormat])
  {
    v152 = a2;
    if (a2)
    {
      v152 = objc_getProperty(a2, v101, 40, 1);
    }

    v153 = v152;
    v154 = [v153 count] == 0;

    if (v154)
    {
      v159 = 0;
    }

    else
    {
      v156 = a2;
      v157 = *(v436 + 32);
      if (a2)
      {
        v156 = objc_getProperty(a2, v155, 40, 1);
      }

      v158 = v156;
      v159 = [(SASamplePrinter *)v157 copyDescriptionForIOEvents:v158];
    }

    if (*(v436 + 197) == 1)
    {
      v202 = *(v436 + 32);
      v203 = a2;
      if (a2)
      {
        v203 = objc_getProperty(a2, v155, 32, 1);
      }

      v204 = v203;
      v205 = [(SASamplePrinter *)v202 copyDescriptionForTimeRanges:v204];
    }

    else
    {
      v205 = 0;
    }

    if ([v205 length])
    {
      v206 = [v159 length];
      v207 = v205;
      v208 = v436;
      if (v206)
      {
        v209 = [v159 stringByAppendingFormat:@", %@", v205];
        v208 = v436;
        goto LABEL_221;
      }
    }

    else
    {
      v210 = [v159 length];
      v207 = v159;
      v208 = v436;
      if (!v210)
      {
        goto LABEL_225;
      }
    }

    v209 = v207;
LABEL_221:
    if (v209)
    {
      v211 = v208;
      v212 = *(*(*(v208 + 112) + 8) + 24);
      if (v212 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*(v208 + 194) == 1)
        {
          v213 = *(v208 + 40);
          v214 = *(v211 + 184);
          v215 = *(*(*(v211 + 128) + 8) + 24);
          v216 = *(*(*(v211 + 144) + 8) + 40);
          _saos_printf_indent_and_kernel_dot(*(v211 + 40), *(*(*(v211 + 120) + 8) + 24), *(*(*(v211 + 136) + 8) + 24), 0);
          [v213 printWithFormat:@"%-*lu  ", v214, v212 - v215 + 1];
          [v213 appendString:v216];
          [v213 appendString:@"\n"];
        }

        else
        {
          v264 = *(v208 + 32);
          if (v264)
          {
            if (*(v264 + 48) == 1)
            {
              v265 = [*(v264 + 16) forceOneBasedTimeIndexes];
              v266 = v212 + 1;
              if (v265)
              {
                v266 -= *(v264 + 56);
              }
            }

            else
            {
              v266 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v266 = 0;
          }

          saos_printf_timeline_frame(*(v436 + 40), *(*(*(v436 + 120) + 8) + 24), *(v436 + 184), *(*(*(v436 + 112) + 8) + 24) - *(*(*(v436 + 128) + 8) + 24) + 1, *(*(*(v436 + 136) + 8) + 24), *(*(*(v436 + 144) + 8) + 40), v266);
        }

        v211 = v436;
        ++*(*(*(v436 + 64) + 8) + 24);
        *(*(*(v436 + 128) + 8) + 24) = *(*(*(v436 + 112) + 8) + 24) + 1;
        *(*(*(v436 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      }

      saos_printf_call_tree_node_without_count(*(v211 + 40), *(v459 + 6), *(v211 + 184), v209);
      ++*(*(*(v436 + 64) + 8) + 24);

      goto LABEL_358;
    }

LABEL_225:
    v434[2](v434, 0xFFFFFFFFLL);
LABEL_358:

    goto LABEL_359;
  }

  if (![*(*(v436 + 32) + 16) displayIOInCallTrees])
  {
    if (*(v436 + 197) == 1)
    {
      v103 = a2;
      if (a2)
      {
        v103 = objc_getProperty(a2, v102, 32, 1);
      }

      v104 = v103;
      v105 = [v104 count] == 0;

      if (!v105)
      {
        if ([*(*(v436 + 32) + 16) callTreeTimestampsTimeDomain] != 1)
        {
          goto LABEL_378;
        }

        v107 = MEMORY[0x1E696AEC0];
        v108 = *(v436 + 32);
        v109 = a2;
        if (a2)
        {
          v109 = objc_getProperty(a2, v106, 32, 1);
        }

        v110 = v109;
        v111 = [(SASamplePrinter *)v108 copyDescriptionForTimeRanges:v110];
        v112 = [v107 stringWithFormat:@"walltime %@", v111];

        saos_printf_call_tree_node_noindent(*(v436 + 40), *(v459 + 6), [a2 sampleCount], v112);
        goto LABEL_359;
      }
    }

LABEL_209:
    v434[2](v434, 0xFFFFFFFFLL);
LABEL_359:

    goto LABEL_434;
  }

LABEL_372:
  v354 = *__error();
  v355 = _sa_logt();
  if (os_log_type_enabled(v355, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v355, OS_LOG_TYPE_ERROR, "Displaying IO in call trees unsupported in systemstats format", buf, 2u);
  }

  *__error() = v354;
  _SASetCrashLogMessage(12985, "Displaying IO in call trees unsupported in systemstats format", v356, v357, v358, v359, v360, v361, v424);
  _os_crash();
  __break(1u);
  while (1)
  {
    v362 = *__error();
    v363 = _sa_logt();
    if (os_log_type_enabled(v363, OS_LOG_TYPE_ERROR))
    {
      v364 = *(*(*(v436 + 112) + 8) + 24);
      v365 = [a2 startSampleIndex];
      *buf = 134218240;
      v453 = v364;
      v454 = 2048;
      v455 = v365;
      _os_log_error_impl(&dword_1E0E2F000, v363, OS_LOG_TYPE_ERROR, "leafFrameSkippedCountedStateToIndex %lu + 1 != treeCountedState.startSampleIndex %lu", buf, 0x16u);
    }

    *__error() = v362;
    v366 = *(*(*(v436 + 112) + 8) + 24);
    [a2 startSampleIndex];
    _SASetCrashLogMessage(12800, "leafFrameSkippedCountedStateToIndex %lu + 1 != treeCountedState.startSampleIndex %lu", v367, v368, v369, v370, v371, v372, v366);
    _os_crash();
    __break(1u);
LABEL_378:
    v28 = *__error();
    v373 = _sa_logt();
    if (os_log_type_enabled(v373, OS_LOG_TYPE_ERROR))
    {
      v374 = [*(*(v436 + 32) + 16) callTreeTimestampsTimeDomain];
      *buf = 134217984;
      v453 = v374;
      _os_log_error_impl(&dword_1E0E2F000, v373, OS_LOG_TYPE_ERROR, "Time domain other than walltime not handled for systemstats format: 0x%llx", buf, 0xCu);
    }

    *__error() = v28;
    v375 = [*(*(v436 + 32) + 16) callTreeTimestampsTimeDomain];
    _SASetCrashLogMessage(12988, "Time domain other than walltime not handled for systemstats format: 0x%llx", v376, v377, v378, v379, v380, v381, v375);
    v29 = _os_crash();
    __break(1u);
LABEL_381:
    v30 = 0;
    v32 = (v436 + 32);
    v31 = *(v436 + 32);
LABEL_34:
    v33 = v29;
    v34 = [v33 firstObject];
    v35 = [v34 startTime];
    v36 = [SASamplePrinter displayNameForPid:v31 aroundTimestamp:v30 includePid:v35];

    v38 = *v32;
    if (a2)
    {
      v39 = *(a2 + 10);
      v40 = objc_getProperty(a2, v37, *(v28 + 736), 1);
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v41 = v40;
    v42 = [v41 firstObject];
    v43 = [v42 startTime];
    v44 = [SASamplePrinter displayNameForPid:v38 aroundTimestamp:v39 includePid:v43];

    v45 = *v32;
    if (a2)
    {
      v46 = *(a2 + 10);
      v47 = *(a2 + v6[195]);
      if (!v45)
      {
        goto LABEL_387;
      }
    }

    else
    {
      v46 = 0;
      v47 = 0;
      if (!v45)
      {
LABEL_387:
        v433 = 0;
        goto LABEL_39;
      }
    }

    v433 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ [%d] (originated by %@ [%d])", v44, v46, v36, v47];
LABEL_39:

LABEL_40:
    v27 = v436;
LABEL_82:
    if (*(v27 + 193) == 1)
    {
      break;
    }

    if (*(v463 + 6))
    {
      goto LABEL_260;
    }

    v82 = *(*(*(v27 + 112) + 8) + 24);
    if (v82 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_237;
    }

    if (v82 + 1 == [a2 startSampleIndex])
    {
      v83 = v436;
      if (*(v436 + 194) == 1)
      {
        v84 = *(v436 + 40);
        v85 = *(v436 + 184);
        v86 = *(*(*(v436 + 112) + 8) + 24);
        v87 = *(*(*(v436 + 128) + 8) + 24);
        v88 = *(*(*(v436 + 144) + 8) + 40);
        _saos_printf_indent_and_kernel_dot(v84, *(*(*(v436 + 120) + 8) + 24), *(*(*(v436 + 136) + 8) + 24), 0);
        [v84 printWithFormat:@"%-*lu  ", v85, v86 - v87 + 1];
        [v84 appendString:v88];
        [v84 appendString:@"\n"];
      }

      else
      {
        v217 = *(v436 + 32);
        if (v217)
        {
          if (*(v217 + 48) == 1)
          {
            v218 = *(*(*(v436 + 112) + 8) + 24);
            v219 = [*(v217 + 16) forceOneBasedTimeIndexes];
            v220 = v218 + 1;
            v83 = v436;
            if (v219)
            {
              v220 -= *(v217 + 56);
            }
          }

          else
          {
            v220 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v220 = 0;
        }

        saos_printf_timeline_frame(*(v83 + 40), *(*(*(v83 + 120) + 8) + 24), *(v83 + 184), *(*(*(v83 + 112) + 8) + 24) - *(*(*(v83 + 128) + 8) + 24) + 1, *(*(*(v83 + 136) + 8) + 24), *(*(*(v83 + 144) + 8) + 40), v220);
      }

      ++*(*(*(v436 + 64) + 8) + 24);
      *(*(*(v436 + 136) + 8) + 24) = 0;
      *(*(*(v436 + 120) + 8) + 24) = 0;
      v224 = *(*(v436 + 144) + 8);
      v225 = *(v224 + 40);
      *(v224 + 40) = 0;

      v27 = v436;
      *(*(*(v436 + 128) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(v436 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_237:
      if (*(v27 + 32))
      {
        v226 = &unk_1F5BDCE38;
      }

      else
      {
        v226 = 0;
      }

      v227 = [v226 firstObject];

      if (*(v436 + 195) == 1)
      {
        v228 = *(v436 + 32);
        if (*(v436 + 194) == 1)
        {
          v229 = [*(v228 + 16) systemstatsFormat];
          v230 = *(v436 + 40);
          v231 = *(v459 + 6);
          if (v229)
          {
            v232 = [a2 sampleCount];
            _saos_printf_indent_and_kernel_dot(v230, v231, 0, 1);
            [v230 printWithFormat:@"%lu ", v232];
          }

          else
          {
            v240 = *(v436 + 184);
            v241 = [a2 sampleCount];
            _saos_printf_indent_and_kernel_dot(v230, v231, 0, 0);
            [v230 printWithFormat:@"%-*lu  ", v240, v241];
          }

          [v230 appendString:v227];
          [v230 appendString:@"\n"];
        }

        else
        {
          v237 = [a2 startSampleIndex];
          v238 = [a2 sampleCount];
          if (v228)
          {
            if (*(v228 + 48) == 1)
            {
              v239 = v238 + v237;
              if ([*(v228 + 16) forceOneBasedTimeIndexes])
              {
                v239 -= *(v228 + 56);
              }
            }

            else
            {
              v239 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v239 = 0;
          }

          v242 = [*(*(v436 + 32) + 16) systemstatsFormat];
          v243 = *(v436 + 40);
          v244 = *(v459 + 6);
          if (v242)
          {
            saos_printf_timeline_frame_noindent(v243, v244, [a2 sampleCount], 0, v227, v239);
          }

          else
          {
            saos_printf_timeline_frame(v243, v244, *(v436 + 184), [a2 sampleCount], 0, v227, v239);
          }
        }

        ++*(*(*(v436 + 64) + 8) + 24);
        v434[2](v434, 1);
      }

      else
      {
        *(*(*(v436 + 136) + 8) + 24) = 0;
        if (*(v436 + 32))
        {
          v233 = &unk_1F5BDCE38;
        }

        else
        {
          v233 = 0;
        }

        v234 = [v233 firstObject];
        v235 = *(*(v436 + 144) + 8);
        v236 = *(v235 + 40);
        *(v235 + 40) = v234;

        *(*(*(v436 + 120) + 8) + 24) = *(v459 + 6);
        *(*(*(v436 + 128) + 8) + 24) = [a2 startSampleIndex];
        *(*(*(v436 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_260:
      if (a2)
      {
        v431 = objc_getProperty(a2, v26, 64, 1);
        v246 = objc_getProperty(a2, v245, 56, 1);
        v247 = v246;
        if (v431)
        {
          v248 = *(a2 + 7);
          v249 = a2[6];
          v250 = *(a2 + 24);
          v251 = *(v436 + 176);
          v446[0] = MEMORY[0x1E69E9820];
          v446[1] = v7;
          v446[2] = __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2487;
          v446[3] = &unk_1E86F7E08;
          v446[4] = *(v436 + 32);
          v446[5] = a2;
          v252 = [v431 descriptionForPid:v248 tid:v249 threadPriority:v250 options:v251 nameCallback:v446];
          v253 = v252;
          if (v247)
          {
            if (v252)
            {
              if (([*(*(v436 + 32) + 16) displayMultipleMatchingBlockedReasons] & 1) != 0 || (objc_msgSend(v247, "hasMatchingBlocker:", v431) & 1) == 0)
              {
                v254 = 0;
                goto LABEL_270;
              }

              goto LABEL_276;
            }

LABEL_269:
            v254 = 1;
LABEL_270:
            v255 = *(a2 + 7);
            v256 = a2[6];
            v257 = *(v436 + 176);
            v445[0] = MEMORY[0x1E69E9820];
            v445[1] = v7;
            v445[2] = __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2;
            v445[3] = &unk_1E86F7E08;
            v445[4] = *(v436 + 32);
            v445[5] = a2;
            v258 = [v247 descriptionForPid:v255 tid:v256 options:v257 nameCallback:v445];
            v259 = v258;
            if (v258)
            {
              if (v254)
              {
                v253 = v258;
              }

              else
              {
                v260 = [v253 stringByAppendingFormat:@", %@", v258];

                v253 = v260;
              }
            }

LABEL_276:
            v4 = v247;
          }

          else
          {
            v4 = 0;
          }

          v261 = v436;
          if (*(a2 + 25))
          {
            v262 = @" - part of a deadlock";
            if (v253)
            {
              goto LABEL_279;
            }

LABEL_282:
            v429 = v262;
LABEL_303:
            v268 = *(*(*(v261 + 112) + 8) + 24);
            if (v268 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v268 + 1 != [a2 startSampleIndex])
              {
                goto LABEL_366;
              }

              v269 = v436;
              if (*(v436 + 194) == 1)
              {
                v270 = *(v436 + 40);
                v271 = *(v436 + 184);
                v272 = *(*(*(v436 + 112) + 8) + 24);
                v273 = *(*(*(v436 + 128) + 8) + 24);
                v274 = *(*(*(v436 + 144) + 8) + 40);
                _saos_printf_indent_and_kernel_dot(v270, *(*(*(v436 + 120) + 8) + 24), *(*(*(v436 + 136) + 8) + 24), 0);
                [v270 printWithFormat:@"%-*lu  ", v271, v272 - v273 + 1];
                [v270 appendString:v274];
                [v270 appendString:@"\n"];
              }

              else
              {
                v275 = *(v436 + 32);
                if (v275)
                {
                  if (*(v275 + 48) == 1)
                  {
                    v276 = *(*(*(v436 + 112) + 8) + 24);
                    v277 = [*(v275 + 16) forceOneBasedTimeIndexes];
                    v278 = v276 + 1;
                    v269 = v436;
                    if (v277)
                    {
                      v278 -= *(v275 + 56);
                    }
                  }

                  else
                  {
                    v278 = 0x7FFFFFFFFFFFFFFFLL;
                  }
                }

                else
                {
                  v278 = 0;
                }

                saos_printf_timeline_frame(*(v269 + 40), *(*(*(v269 + 120) + 8) + 24), *(v269 + 184), *(*(*(v269 + 112) + 8) + 24) - *(*(*(v269 + 128) + 8) + 24) + 1, *(*(*(v269 + 136) + 8) + 24), *(*(*(v269 + 144) + 8) + 40), v278);
              }

              v261 = v436;
              ++*(*(*(v436 + 64) + 8) + 24);
            }

            v430 = v4;
            if (*(v261 + 194) == 1)
            {
              v286 = *(v261 + 40);
              if (*(v261 + 195))
              {
                v287 = *(v459 + 6);
                v427 = *(v261 + 184);
                v288 = [a2 sampleCount];
                if (a2)
                {
                  v289 = a2[9];
                  v290 = *(a2 + 8);
                }

                else
                {
                  v289 = 0;
                  v290 = 0;
                }

                _saos_printf_microstackshot_state_as_frame_base(v286, v287, v427, v288, *(*(*(v436 + 136) + 8) + 24), v289, *(v436 + 168), v290, *(v436 + 188), [*(*(v436 + 32) + 16) systemstatsFormat], objc_msgSend(*(*(v436 + 32) + 16), "includeUserIdleAndBatteryStateInStacks"), objc_msgSend(*(*(v436 + 32) + 16), "systemstatsFormat"), v433);
                [v286 appendString:@"\n"];
              }

              else
              {
                v295 = *(*(*(v261 + 120) + 8) + 24);
                v296 = *(v261 + 184);
                v297 = [a2 sampleCount];
                if (a2)
                {
                  v298 = a2[9];
                }

                else
                {
                  v298 = 0;
                }

                saos_printf_frame_with_state(v286, v295, v296, v297, *(*(*(v436 + 136) + 8) + 24), *(*(*(v436 + 144) + 8) + 40), v298, v429);
                v434[2](v434, 0xFFFFFFFFLL);
              }
            }

            else
            {
              v291 = *(v261 + 32);
              v292 = [a2 startSampleIndex];
              v293 = [a2 sampleCount];
              if (v291)
              {
                if (*(v291 + 48) == 1)
                {
                  v294 = v293 + v292;
                  if ([*(v291 + 16) forceOneBasedTimeIndexes])
                  {
                    v294 -= *(v291 + 56);
                  }
                }

                else
                {
                  v294 = 0x7FFFFFFFFFFFFFFFLL;
                }
              }

              else
              {
                v294 = 0;
              }

              v299 = *(v436 + 40);
              if (*(v436 + 195))
              {
                v300 = *(v436 + 184);
                v426 = *(v436 + 184);
                v428 = *(v459 + 6);
                v301 = [a2 sampleCount];
                if (a2)
                {
                  v302 = a2[9];
                  v303 = *(a2 + 8);
                }

                else
                {
                  v302 = 0;
                  v303 = 0;
                }

                saos_printf_microstackshot_state_as_timeline_frame(v299, v428, v426, v301, *(*(*(v436 + 136) + 8) + 24), v302, *(v436 + 168), v303, *(v436 + 188), [*(*(v436 + 32) + 16) systemstatsFormat], objc_msgSend(*(*(v436 + 32) + 16), "includeUserIdleAndBatteryStateInStacks"), v294, objc_msgSend(*(*(v436 + 32) + 16), "systemstatsFormat"), v433);
              }

              else
              {
                v304 = *(*(*(v436 + 120) + 8) + 24);
                v305 = *(v436 + 184);
                v306 = [a2 sampleCount];
                if (a2)
                {
                  v307 = a2[9];
                }

                else
                {
                  v307 = 0;
                }

                saos_printf_timeline_frame_with_state(v299, v304, v305, v306, *(*(*(v436 + 136) + 8) + 24), *(*(*(v436 + 144) + 8) + 40), v307, v429, v294);
                v434[2](v434, 0xFFFFFFFFLL);
              }
            }

            ++*(*(*(v436 + 64) + 8) + 24);
            v308 = [a2 startSampleIndex];
            *(*(*(v436 + 128) + 8) + 24) = [a2 sampleCount] + v308;
            *(*(*(v436 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;

LABEL_343:
            goto LABEL_344;
          }

          if (*(a2 + 26))
          {
            v262 = @" - ends in a deadlock";
            if (!v253)
            {
              goto LABEL_282;
            }

LABEL_279:
            v263 = [v253 stringByAppendingFormat:v262];

            v253 = v263;
            v261 = v436;
          }

LABEL_297:
          if (v253 | v433)
          {
            v429 = v253;
            goto LABEL_303;
          }

          v430 = v4;
          v267 = *(a2 + 8);
LABEL_300:
          if (_microstackshot_state_has_change_to_display(v267, *(v261 + 188), [*(*(v261 + 32) + 16) systemstatsFormat], objc_msgSend(*(*(v436 + 32) + 16), "includeUserIdleAndBatteryStateInStacks")))
          {
LABEL_301:
            v429 = 0;
            goto LABEL_302;
          }

          if (a2)
          {
            v279 = a2[9];
          }

          else
          {
            v279 = 0;
          }

          v280 = *(v436 + 168);
          if (([*(*(v436 + 32) + 16) systemstatsFormat] & 1) == 0)
          {
            if (v280)
            {
              v309 = *v280 ^ v279;
              if ((v309 & 0x1FFF000000000000) != 0)
              {
                goto LABEL_301;
              }

              v429 = 0;
              if (v279 != *v280 || (v309 & 0xFFFF00000000) != 0)
              {
LABEL_302:
                v261 = v436;
                v4 = v430;
                goto LABEL_303;
              }
            }

            else if ((v279 & 0x1FFFFFFFFFFFFFFFLL) != 0)
            {
              goto LABEL_301;
            }
          }

          if ((*(v436 + 195) & 1) == 0)
          {
            if (*(v436 + 194) == 1)
            {
              v281 = *(v436 + 40);
              v282 = *(*(*(v436 + 120) + 8) + 24);
              v283 = *(v436 + 184);
              v284 = [a2 sampleCount];
              if (a2)
              {
                v285 = a2[9];
              }

              else
              {
                v285 = 0;
              }

              saos_printf_frame_with_state(v281, v282, v283, v284, *(*(*(v436 + 136) + 8) + 24), *(*(*(v436 + 144) + 8) + 40), v285, 0);
              ++*(*(*(v436 + 64) + 8) + 24);
            }

            else
            {
              v310 = [a2 startSampleIndex];
              *(*(*(v436 + 112) + 8) + 24) = v310 + [a2 sampleCount] - 1;
            }
          }

          v434[2](v434, 0xFFFFFFFFLL);
          goto LABEL_343;
        }

        if (v246)
        {
          v253 = 0;
          goto LABEL_269;
        }

        if ((*(a2 + 25) & 1) == 0)
        {
          v4 = 0;
          v261 = v436;
          if (*(a2 + 26))
          {
            v429 = @" - ends in a deadlock";
            v431 = 0;
            goto LABEL_303;
          }

          v253 = 0;
          goto LABEL_297;
        }

        v4 = 0;
        v431 = 0;
        v429 = @" - part of a deadlock";
      }

      else
      {
        v430 = 0;
        if (!v433)
        {
          v267 = 0;
          v431 = 0;
          v261 = v436;
          goto LABEL_300;
        }

        v4 = 0;
        v431 = 0;
        v429 = 0;
      }

      v261 = v436;
      goto LABEL_303;
    }
  }

  if (a2)
  {
    v77 = *(a2 + 8) != *(v27 + 188);
    v78 = a2[9];
  }

  else
  {
    v78 = 0;
    v77 = *(v27 + 188) != 0;
  }

  v79 = *(v27 + 168);
  if (!v79)
  {
    v128 = (v78 & 0x1FFFFFFFFFFFFFFFLL) == 0;
LABEL_159:
    v81 = !v128;
    if (((v77 | v81) & 1) == 0 && !v433)
    {
      v434[2](v434, 0xFFFFFFFFLL);
      goto LABEL_344;
    }

    goto LABEL_165;
  }

  v80 = *v79;
  if (((v80 ^ v78) & 0x1FFF000000000000) == 0)
  {
    v128 = ((v80 ^ v78) & 0xFFFF00000000) == 0 && v78 == v80;
    goto LABEL_159;
  }

  v81 = 1;
LABEL_165:
  v165 = *(*(v27 + 104) + 8);
  if (*(v165 + 24))
  {
    *(v165 + 24) = 0;
  }

  else
  {
    [*(v27 + 40) appendString:{@", "}];
  }

  [*(v436 + 40) appendString:@"{"];
  v166 = *(v436 + 40);
  v167 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "sampleCount")}];
  SAJSONWriteDictionaryFirstEntry(v166, @"count", v167);

  v168 = *(v436 + 40);
  v169 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v463 + 6)];
  SAJSONWriteDictionaryEntry(v168, @"depth", v169);

  if (v77)
  {
    if (a2)
    {
      v170 = *(a2 + 8);
    }

    else
    {
      LOWORD(v170) = 0;
    }

    +[SACallTreeState writeJSONDictionaryEntriesToStream:microstackshotState:primaryMicrostackshotState:includeIdleAndBattery:](p_cache + 1624, *(v436 + 40), v170, *(v436 + 188), [*(*(v436 + 32) + 16) includeUserIdleAndBatteryStateInStacks]);
  }

  if (v81)
  {
    if (a2)
    {
      v171 = a2[9];
    }

    else
    {
      v171 = 0;
    }

    [(SACallTreeState *)p_cache + 1624 writeJSONDictionaryEntriesToStream:v171 state:*(v436 + 168) primaryState:?];
  }

  if (v433)
  {
    SAJSONWriteDictionaryEntry(*(v436 + 40), @"onBehalfOf", v433);
  }

  [*(v436 + 40) appendString:@"}"];
  ++*(*(*(v436 + 64) + 8) + 24);
LABEL_344:

LABEL_434:
  _Block_object_dispose(v458, 8);
  _Block_object_dispose(v462, 8);
  v11 = context;
LABEL_435:
  objc_autoreleasePoolPop(v11);
  v422 = *MEMORY[0x1E69E9840];
}

void *__134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2471(void *result, int a2)
{
  v3 = result;
  v4 = *(result[4] + 8);
  v5 = *(v4 + 24);
  if (!v5 || (v6 = *(*(result[5] + 8) + 24), *(v6 + 8 * v5 - 8) != *(result + 16)))
  {
    *(v4 + 24) = v5 + 1;
    result = malloc_type_realloc(*(*(result[5] + 8) + 24), 8 * *(*(result[4] + 8) + 24), 0x100004000313F17uLL);
    *(*(v3[5] + 8) + 24) = result;
    *(*(*(v3[5] + 8) + 24) + 8 * *(*(v3[4] + 8) + 24) - 8) = *(v3 + 16);
    v7 = *(*(v3[4] + 8) + 24);
    v8 = *(*(v3[5] + 8) + 24);
    if (v7 < 2)
    {
      v9 = 0;
      v7 = v7;
    }

    else
    {
      v9 = *(v8 + 8 * v7 - 12);
    }

    *(v8 + 8 * v7 - 4) = v9;
    v6 = *(*(v3[5] + 8) + 24);
    v5 = *(*(v3[4] + 8) + 24);
  }

  *(v6 + 8 * v5 - 4) += a2;
  *(*(v3[6] + 8) + 24) += a2;
  if (*(v3 + 68))
  {
    v10 = 2;
  }

  else
  {
    v10 = 2 * *(*(v3[6] + 8) + 24) + 2;
  }

  *(*(v3[7] + 8) + 24) = v10;
  return result;
}

- (uint64_t)copyDescriptionForTruncatedLeafFrame:(uint64_t)frame otherCallTreeDescription:(void *)description binariesToDisplay:(void *)display extraBinariesToDisplay:
{
  if (result)
  {
    v6 = [(SASamplePrinter *)result copyDescriptionsForFrame:a2 binariesToDisplay:description extraBinariesToDisplay:display];
    if ([v6 count])
    {
      firstObject = [v6 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = @"???";
    if (firstObject)
    {
      v9 = firstObject;
    }

    v10 = [v8 initWithFormat:@"<callstack in another call tree for %@: %@>", frame, v9];

    return v10;
  }

  return result;
}

- (void)copyDescriptionsForFrame:(void *)frame binariesToDisplay:(void *)display extraBinariesToDisplay:
{
  v82 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v15 = 0;
    goto LABEL_54;
  }

  if (a2)
  {
    selfCopy = self;
    if (![a2 isTruncatedBacktraceFrame])
    {
      address = [a2 address];
      WeakRetained = objc_loadWeakRetained(a2 + 3);
      v67 = WeakRetained;
      if (WeakRetained)
      {
        v18 = WeakRetained;
        v65 = selfCopy;
        binary = [WeakRetained binary];
        segment = [v18 segment];
        loadAddress = [v18 loadAddress];
        address2 = [a2 address];
        v23 = address2 - [v67 loadAddress];
        LOBYTE(v18) = [a2 isKernel];
        exclave = [a2 exclave];
        v25 = [SASamplePrinter displayedBinaryLoadInfoForBinary:binary segment:segment desiredLoadAddress:loadAddress offsetIntoLoadInfo:v23 isInKernelAddressSpace:v18 exclave:exclave binariesToDisplay:frame extraBinariesToDisplay:display];
        loadAddress2 = [v25 loadAddress];

        if (loadAddress2 != [v67 loadAddress])
        {
          address = loadAddress2 + address - [v67 loadAddress];
        }

        selfCopy = v65;
      }

      if ([a2 isExclave])
      {
        exclave2 = [a2 exclave];
        v28 = exclave2;
        if (exclave2)
        {
          name = [exclave2 name];

          v30 = objc_alloc(MEMORY[0x1E696AEC0]);
          if (name)
          {
            name2 = [v28 name];
            v32 = [v30 initWithFormat:@"exclave %@", name2];
          }

          else
          {
            v32 = [v30 initWithFormat:@"exclave %#18llx", objc_msgSend(v28, "identifier")];
          }
        }

        else
        {
          v32 = @"exclave UNKNOWN";
        }
      }

      else
      {
        v32 = 0;
      }

      instruction = [a2 instruction];
      v34 = objc_loadWeakRetained(a2 + 3);
      if (v34)
      {
        if (v32)
        {
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" %@", v32];
        }

        else
        {
          v35 = &stru_1F5BBF440;
        }

        address3 = [a2 address];
        v39 = address3 - [v34 loadAddress];
        binary2 = [v34 binary];
        v66 = instruction;
        if ([*(selfCopy + 16) displaySymbolInformation])
        {
          v63 = v39;
          v64 = v35;
          name3 = [binary2 name];

          if (name3)
          {
            name4 = [binary2 name];
            v43 = SACopySanitizedString(name4, 1, 0);
          }

          else
          {
            v50 = objc_alloc(MEMORY[0x1E696AEC0]);
            name4 = [binary2 uuid];
            [name4 UUIDString];
            v52 = v51 = selfCopy;
            v43 = [v50 initWithFormat:@"<%@>", v52];

            selfCopy = v51;
          }

          v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
          if (instruction && instruction[1])
          {
            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = __45__SASamplePrinter_copySymbolStringsForFrame___block_invoke;
            v75[3] = &unk_1E86F7F40;
            v75[4] = selfCopy;
            v76 = instruction;
            v77 = a2;
            v43 = v43;
            v78 = v43;
            v49 = v64;
            v81 = v63;
            v79 = v64;
            v37 = v37;
            v80 = v37;
            [v76 enumerateSymbols:v75];
          }

          else
          {
            v49 = v64;
            v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"??? (%@ + %llu%@)", v43, v63, v64];
            v54 = selfCopy;
            v55 = [v53 copy];
            [v37 addObject:v55];

            selfCopy = v54;
          }
        }

        else
        {
          v44 = objc_alloc(MEMORY[0x1E696AEC0]);
          [binary2 uuid];
          v43 = v45 = v39;
          [v43 UUIDString];
          v47 = v46 = selfCopy;
          v48 = [v44 initWithFormat:@"%@ + %llu%@", v47, v45, v35];
          v75[0] = v48;
          [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
          v37 = v49 = v35;

          selfCopy = v46;
        }

        instruction = v66;
      }

      else if (v32)
      {
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"??? (%@)", v32];
        v75[0] = v36;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
      }

      else
      {
        v75[0] = @"???";
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
      }

      if (![*(selfCopy + 16) displayFrameAddresses])
      {
        name6 = v37;
        v15 = name6;
        v9 = v67;
        goto LABEL_52;
      }

      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v37, "count")}];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      name6 = v37;
      v56 = [name6 countByEnumeratingWithState:&v68 objects:v72 count:16];
      v9 = v67;
      if (v56)
      {
        v57 = v56;
        v58 = *v69;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v69 != v58)
            {
              objc_enumerationMutation(name6);
            }

            v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ [0x%llx]", *(*(&v68 + 1) + 8 * i), address];
            [v13 addObject:v60];
          }

          v57 = [name6 countByEnumeratingWithState:&v68 objects:v72 count:16];
        }

        while (v57);
      }

      v14 = [v13 copy];
LABEL_50:
      v15 = v14;

LABEL_52:
LABEL_53:

      goto LABEL_54;
    }

    if ([a2 isKernel])
    {
      if ([a2 isExclave])
      {
        exclave3 = [a2 exclave];
        v9 = exclave3;
        if (!exclave3)
        {
          v15 = &unk_1F5BDCE50;
          goto LABEL_53;
        }

        name5 = [exclave3 name];

        v11 = objc_alloc(MEMORY[0x1E696AEC0]);
        if (!name5)
        {
          name6 = [v11 initWithFormat:@"<exclave 0x%llx>", objc_msgSend(v9, "identifier")];
          v73 = name6;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
          goto LABEL_52;
        }

        name6 = [v9 name];
        v13 = [v11 initWithFormat:@"<exclave %@>", name6];
        v74 = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
        goto LABEL_50;
      }

      v15 = &unk_1F5BDCE68;
    }

    else
    {
      v15 = &unk_1F5BDCE80;
    }
  }

  else
  {
    v15 = &unk_1F5BDCE38;
  }

LABEL_54:
  v61 = *MEMORY[0x1E69E9840];
  return v15;
}

id __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2487(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 88, 1);
  }

  v7 = Property;
  v8 = [v7 firstObject];
  v9 = [v8 startTime];
  v10 = [(SASamplePrinter *)v6 displayNameForPid:a2 threadId:a3 timestamp:v9];

  return v10;
}

id __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 88, 1);
  }

  v7 = Property;
  v8 = [v7 firstObject];
  v9 = [v8 startTime];
  v10 = [(SASamplePrinter *)v6 displayNameForPid:a2 threadId:a3 timestamp:v9];

  return v10;
}

- (id)copyDescriptionForTimeRanges:(uint64_t)ranges
{
  v64 = *MEMORY[0x1E69E9840];
  if (!ranges)
  {
LABEL_24:
    v30 = 0;
    goto LABEL_20;
  }

  if (![*(ranges + 16) callTreeTimestampsTimeDomain])
  {
    v33 = *__error();
    v34 = _sa_logt();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v34, OS_LOG_TYPE_ERROR, "Displaying timestamp with no time domain", buf, 2u);
    }

    *__error() = v33;
    _SASetCrashLogMessage(13328, "Displaying timestamp with no time domain", v35, v36, v37, v38, v39, v40, v41);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  callTreeTimestampsTimeDomain = [*(ranges + 16) callTreeTimestampsTimeDomain];
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{16 * objc_msgSend(a2, "count")}];
  eventStartTimeWithWallTime = [(SASamplePrinter *)ranges eventStartTimeWithWallTime];
  eventEndTimeWithWallTime = [(SASamplePrinter *)ranges eventEndTimeWithWallTime];
  v8 = (callTreeTimestampsTimeDomain & (callTreeTimestampsTimeDomain - 1)) != 0;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __48__SASamplePrinter_copyDescriptionForTimeRanges___block_invoke;
  v56[3] = &unk_1E86F7EF0;
  v60 = callTreeTimestampsTimeDomain;
  v9 = v5;
  v57 = v9;
  v61 = v8;
  v10 = eventStartTimeWithWallTime;
  v58 = v10;
  rangesCopy = ranges;
  v11 = MEMORY[0x1E12EBE50](v56);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __48__SASamplePrinter_copyDescriptionForTimeRanges___block_invoke_2;
  v50[3] = &unk_1E86F7F18;
  v12 = v9;
  v51 = v12;
  v13 = v10;
  v52 = v13;
  v14 = eventEndTimeWithWallTime;
  v53 = v14;
  v15 = v11;
  v54 = v15;
  v55 = v8;
  v16 = MEMORY[0x1E12EBE50](v50);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v17 = a2;
  v18 = [v17 countByEnumeratingWithState:&v46 objects:v63 count:16];
  if (!v18)
  {

    v20 = 0;
    goto LABEL_19;
  }

  v19 = v18;
  v42 = v12;
  v43 = v15;
  v44 = v14;
  v45 = v13;
  v20 = 0;
  v21 = *v47;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v47 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v46 + 1) + 8 * i);
      if (v20)
      {
        endTime = [v20 endTime];
        startTime = [v23 startTime];
        v26 = [endTime eq:startTime];

        if (v26)
        {
          endTime2 = [v23 endTime];
          objc_setProperty_atomic(v20, v28, endTime2, 16);
          goto LABEL_13;
        }

        (v16)[2](v16, v20);
      }

      v29 = [v23 copy];
      endTime2 = v20;
      v20 = v29;
LABEL_13:
    }

    v19 = [v17 countByEnumeratingWithState:&v46 objects:v63 count:16];
  }

  while (v19);

  if (v20)
  {
    (v16)[2](v16, v20);
  }

  v14 = v44;
  v13 = v45;
  v12 = v42;
  v15 = v43;
LABEL_19:
  v30 = v12;

LABEL_20:
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

void __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[7];
  v9 = v5[8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke_2;
  v10[3] = &unk_1E86F7E58;
  v10[4] = v5;
  v10[5] = a3;
  v11 = v4;
  [(SARecipe *)a3 enumerateStatesBetweenStartTime:v6 startSampleIndex:v8 endTime:v7 endSampleIndex:v9 reverseOrder:0 block:v10];
}

void __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a1;
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      v30 = *__error();
      v31 = _sa_logt();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [*(v4 + 16) debugDescription];
        *buf = 136315138;
        v44 = [v32 UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_ERROR, "swiftAsyncCallTreeAggregationResolved returned default: %s", buf, 0xCu);
      }

      *__error() = v30;
      v33 = [*(v4 + 16) debugDescription];
      v34 = [v33 UTF8String];
      _SASetCrashLogMessage(13177, "swiftAsyncCallTreeAggregationResolved returned default: %s", v35, v36, v37, v38, v39, v40, v34);

      _os_crash();
      __break(1u);
    }

    v6 = *(v5 + 160);
    v7 = &unk_1F5BDCA90;
    if (v6 > 2)
    {
      goto LABEL_10;
    }

    if (v6)
    {
      if (v6 != 2)
      {
        if (v6 != 1)
        {
          goto LABEL_20;
        }

        v8 = *__error();
        v9 = _sa_logt();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v3 = [*(v4 + 16) debugDescription];
          *buf = 136315138;
          v44 = [v3 UTF8String];
          _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "aggregationPointForSwiftTask, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", buf, 0xCu);
        }

        *__error() = v8;
        a2 = [*(v4 + 16) debugDescription];
        v10 = [a2 UTF8String];
        _SASetCrashLogMessage(13154, "aggregationPointForSwiftTask, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", v11, v12, v13, v14, v15, v16, v10);

        v5 = _os_crash();
        __break(1u);
LABEL_10:
        if (v6 != 3)
        {
          if (v6 != 5)
          {
            goto LABEL_20;
          }

          v17 = *(v3 + 40);
          if (([v5 printHeavyStacks] & 1) != 0 || objc_msgSend(v17, "identifier") != -1)
          {
            v18 = MEMORY[0x1E696AD98];
            v19 = [v17 identifier];
            v20 = v18;
LABEL_17:
            v7 = [v20 numberWithUnsignedLongLong:v19];
            goto LABEL_20;
          }

          v29 = MEMORY[0x1E696AD98];
          v23 = [a2 thread];
          v24 = [v29 numberWithUnsignedLong:v23];
          goto LABEL_19;
        }

LABEL_18:
        v22 = MEMORY[0x1E696AD98];
        v23 = [a2 thread];
        v24 = [v22 numberWithUnsignedLongLong:{objc_msgSend(v23, "threadId")}];
LABEL_19:
        v41 = v24;

        v7 = v41;
        goto LABEL_20;
      }
    }

    else if ((*(v5 + 14) & 1) == 0)
    {
      goto LABEL_18;
    }

    v21 = MEMORY[0x1E696AD98];
    v19 = [(SASwiftTaskState *)a2 baseFunctionAddress];
    v20 = v21;
    goto LABEL_17;
  }

  v7 = 0;
LABEL_20:
  v42 = v7;
  v25 = [*(v3 + 48) objectForKeyedSubscript:v7];
  if (v25)
  {
    v26 = v25;
    v27 = [*(v3 + 48) objectForKeyedSubscript:v42];
    [v27 addObject:a2];
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a2, 0}];
    [*(v3 + 48) setObject:v26 forKeyedSubscript:v42];
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (([*(a1[4] + 16) printHeavyStacks] & 1) == 0)
  {
    [a3 sortUsingComparator:&__block_literal_global_2524];
  }

  v5 = a1[4];
  v6 = a1[5];
  if (!v5)
  {
    goto LABEL_33;
  }

  v7 = a1[6];
  v8 = a1[7];
  v9 = v5[2];
  if (v9)
  {
    if (v9[20] == 1)
    {
      goto LABEL_36;
    }

    v10 = v9[19];
    if (v10)
    {
      goto LABEL_11;
    }

    if (*(v9 + 11) == 1)
    {
LABEL_36:
      do
      {
        v7 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          a3 = [v5[2] debugDescription];
          v11 = [a3 UTF8String];
          *buf = 136315138;
          v40 = v11;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "stackForSwiftTasks, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", buf, 0xCu);
        }

        *__error() = v7;
        v5 = [v5[2] debugDescription];
        v12 = [v5 UTF8String];
        _SASetCrashLogMessage(13222, "stackForSwiftTasks, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", v13, v14, v15, v16, v17, v18, v12);

        _os_crash();
        __break(1u);
LABEL_11:
        ;
      }

      while (v10 == 3);
    }
  }

  self = objc_alloc_init(SAStack);
  v19 = [v7 pid];
  if (self)
  {
    self->_isKernel = v19 == 0;
  }

  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if (self)
  {
    objc_setProperty_atomic(self, v20, v21, 56);
  }

  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if (self)
  {
    objc_setProperty_atomic(self, v22, v23, 40);
  }

  v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if (self)
  {
    objc_setProperty_atomic(self, v24, v25, 48);
  }

  v27 = [(SASamplePrinter *)v5 binaryImagesHitByTask:v7];
  if (!self)
  {

    [(SASamplePrinter *)v5 addHeaderForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 toStack:v7 task:v8 taskSampleCount:?];
LABEL_33:
    v28 = 0;
    goto LABEL_29;
  }

  objc_setProperty_atomic(self, v26, v27, 128);

  [(SASamplePrinter *)v5 addHeaderForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:self toStack:v7 task:v8 taskSampleCount:?];
  v28 = self;
  if (!self->_omit && self->_count)
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    threadNameChanges = self->_threadNameChanges;
    v31 = [(NSMutableArray *)self->_dispatchQueues count];
    v32 = [(NSMutableArray *)self->_swiftTasks count];
    v33 = [(NSMutableArray *)self->_threadIds count];
    v34 = self->_minPriority != self->_maxPriority || self->_minBasePriority != self->_maxBasePriority;
    [(SASamplePrinter *)v5 addStackForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:v7 task:v29 toRootObjects:threadNameChanges nameChanges:v31 > 1 dispatchQueueChanges:v32 > 1 swiftTaskChanges:v33 > 1 threadChanges:v34 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
    if ([v5[2] printHeavyStacks])
    {
      [(SASamplePrinter *)v5 sortHeavyCallTree:v29];
    }

    objc_setProperty_atomic(self, v35, v29, 120);

    v28 = self;
  }

LABEL_29:
  selfa = v28;
  [v6 addObject:v28];
  v36 = *MEMORY[0x1E69E9840];
}

uint64_t __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 threadState];
  v5 = [v4 startTimestamp];
  v6 = [a3 threadState];
  v7 = [v6 startTimestamp];
  v8 = [v5 compare:v7];

  return v8;
}

void __48__SASamplePrinter_copyDescriptionForTimeRanges___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      if ((v4 & 4) == 0)
      {
        if ((v4 & 8) == 0)
        {
          if ((v4 & 0x10) == 0)
          {
            return;
          }

          goto LABEL_41;
        }

        goto LABEL_34;
      }

      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) appendString:@"wall:"];
  }

  [a2 wallTime];
  if (v5 == 0.0)
  {
    v13 = *(a1 + 32);
    goto LABEL_17;
  }

  [*(a1 + 40) wallTime];
  if (v6 == 0.0)
  {
    v14 = [*(*(a1 + 48) + 16) omitAbsoluteWallTimes];
    v15 = *(a1 + 32);
    if ((v14 & 1) == 0)
    {
      [a2 wallTime];
      v23 = v22;
      if ([*(*(a1 + 48) + 16) displayDetailedWallTime])
      {
        v25 = 9;
      }

      else
      {
        v25 = 3;
      }

      v24.i64[0] = v23;
      v26 = _CopyStringForTime(v25, v24);
      [v15 appendString:v26];

      goto LABEL_18;
    }

    v13 = *(a1 + 32);
LABEL_17:
    [v13 appendString:@"???"];
    goto LABEL_18;
  }

  v7 = *(a1 + 32);
  v8 = [*(*(a1 + 48) + 16) displayDetailedWallTime];
  [a2 wallTime];
  v10 = v9;
  [*(a1 + 40) wallTime];
  v12 = 3;
  if (v8)
  {
    v12 = 9;
  }

  [v7 appendFormat:@"%.*fs", v12, v10 - v11];
LABEL_18:
  if ((*(a1 + 56) & 2) != 0)
  {
    [*(a1 + 32) appendString:@" "];
LABEL_20:
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 32) appendString:@"machabs:"];
    }

    if ([a2 machAbsTime])
    {
      [*(a1 + 32) appendFormat:@"%llu", objc_msgSend(a2, "machAbsTime")];
    }

    else
    {
      [*(a1 + 32) appendString:@"???"];
    }
  }

  if ((*(a1 + 56) & 4) == 0)
  {
    goto LABEL_32;
  }

  [*(a1 + 32) appendString:@" "];
LABEL_27:
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) appendString:@"machabssec:"];
  }

  [a2 machAbsTimeSeconds];
  v16 = *(a1 + 32);
  if (v17 == 0.0)
  {
    [*(a1 + 32) appendString:@"???"];
  }

  else
  {
    [a2 machAbsTimeSeconds];
    [v16 appendFormat:@"%fs", v18];
  }

LABEL_32:
  if ((*(a1 + 56) & 8) != 0)
  {
    [*(a1 + 32) appendString:@" "];
LABEL_34:
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 32) appendString:@"machcont:"];
    }

    if ([a2 machContTime])
    {
      [*(a1 + 32) appendFormat:@"%llu", objc_msgSend(a2, "machContTime")];
    }

    else
    {
      [*(a1 + 32) appendString:@"???"];
    }
  }

  if ((*(a1 + 56) & 0x10) == 0)
  {
    return;
  }

  [*(a1 + 32) appendString:@" "];
LABEL_41:
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) appendString:@"machcontsec:"];
  }

  [a2 machContTimeSeconds];
  v19 = *(a1 + 32);
  if (v20 == 0.0)
  {

    [v19 appendString:@"???"];
  }

  else
  {
    [a2 machContTimeSeconds];
    [v19 appendFormat:@"%fs", v21];
  }
}

void __48__SASamplePrinter_copyDescriptionForTimeRanges___block_invoke_2(uint64_t a1, void *a2)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  v8 = [a2 startTime];
  if ([*(a1 + 40) isComparable:?] && objc_msgSend(*(a1 + 40), "gt:", v8))
  {
    v4 = *(a1 + 40);

    v8 = v4;
  }

  v5 = [a2 endTime];
  if ([*(a1 + 48) isComparable:v5] && objc_msgSend(*(a1 + 48), "lt:", v5))
  {
    v6 = *(a1 + 48);

    v5 = v6;
  }

  (*(*(a1 + 56) + 16))();
  if ([v8 ne:v5])
  {
    if (*(a1 + 64))
    {
      v7 = @" - ";
    }

    else
    {
      v7 = @"-";
    }

    [*(a1 + 32) appendString:v7];
    (*(*(a1 + 56) + 16))();
  }
}

- (uint64_t)copyDescriptionForIOEvent:(void *)event
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = SAFormattedBytesEx([event size], 1, 0, 0, 0x1000uLL);
  type = [event type];
  v5 = [v2 initWithFormat:@"%@ %@T%u", v3, type, objc_msgSend(event, "tier")];

  return v5;
}

void __45__SASamplePrinter_copySymbolStringsForFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
  v6 = [a2 name];
  v7 = v6;
  if (v6)
  {
    v8 = SACopySanitizedString(v6, 1, 0);
    [v20 appendString:v8];
  }

  else
  {
    [v20 appendString:@"???"];
    if (![*(*(a1 + 32) + 16) displayOffsetsFromUnnamedSymbols])
    {
      goto LABEL_5;
    }
  }

  [v20 appendFormat:@" + %llu", objc_msgSend(*(a1 + 40), "offsetIntoSegment") - objc_msgSend(a2, "offsetIntoSegment") + objc_msgSend(*(a1 + 48), "isSymbolicationOffByOne")];
LABEL_5:
  objc_msgSend(v20, "appendString:", @" (");
  if (a3)
  {
    if ([*(*(a1 + 32) + 16) displayFullSourcePaths])
    {
      v9 = [a3 filePath];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [a3 fileName];
      }

      v12 = v11;
    }

    else
    {
      v12 = [a3 fileName];
    }

    v13 = [a3 lineNum];
    v14 = [a3 columnNum];
    if (v12)
    {
      v15 = v14;
      v16 = SACopySanitizedString(v12, 1, 0);
      [v20 appendString:v16];

      if (v13)
      {
        [v20 appendFormat:@":%u", v13];
        if (v15)
        {
          [v20 appendFormat:@", %u", v15];
        }
      }
    }

    [v20 appendString:@" in "];
  }

  v17 = *(a1 + 80);
  [v20 appendFormat:@"%@ + %llu%@"], *(a1 + 56), v17, *(a1 + 64));
  v18 = *(a1 + 72);
  v19 = [v20 copy];
  [v18 addObject:v19];
}

- (id)displayNameForTask:(uint64_t)task threadId:
{
  v4 = [(SASamplePrinter *)self displayNameForTask:a2];
  v5 = v4;
  if (task)
  {
    task = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ thread 0x%llx", v4, task];
  }

  else
  {
    task = v4;
  }

  v7 = task;

  return v7;
}

void __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = v6[4];
  v8 = v6[5];
  v9 = v6[7];
  v10 = v6[8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke_2;
  v14[3] = &unk_1E86F7F68;
  v14[4] = v6;
  v11 = v5;
  v12 = a1[6];
  v13 = a1[7];
  v15 = v11;
  v16 = v12;
  v17 = v13;
  [a3 enumerateThreadStatesBetweenStartTime:v7 startSampleIndex:v9 endTime:v8 endSampleIndex:v10 reverseOrder:0 block:v14];
}

void __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 originPid];
  v5 = [a2 proximatePid];
  v6 = v5;
  if (v4 != -1 || v5 != -1)
  {
    v7 = *(a1 + 32);
    v8 = [a2 endTimestamp];
    v32 = [SASamplePrinter displayNameForPid:v7 aroundTimestamp:v4 includePid:v8];

    v9 = *(a1 + 32);
    v10 = [a2 endTimestamp];
    v11 = [SASamplePrinter displayNameForPid:v9 aroundTimestamp:v6 includePid:v10];

    v12 = [*(*(a1 + 32) + 168) dataStyle];
    if (v12 - 2 >= 3)
    {
      if (v12 <= 1)
      {
        -[SAOnBehalfOfMultiple addProximateName:proximatePid:originName:originPid:count:](*(a1 + 40), v11, v6, v32, v4, [a2 sampleCountInSampleIndexRangeStart:*(*(a1 + 32) + 56) end:*(*(a1 + 32) + 64)]);
      }
    }

    else if ([a2 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = *(*(a1 + 48) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      v16 = [SAOnBehalfOfSingle alloc];
      if (v16)
      {
        v33.receiver = v16;
        v33.super_class = SAOnBehalfOfSingle;
        v17 = objc_msgSendSuper2(&v33, sel_init);
        if (v17)
        {
          v18 = [v11 copy];
          v19 = v17[2];
          v17[2] = v18;

          v20 = [v32 copy];
          v21 = v17[3];
          v17[3] = v20;

          *(v17 + 2) = v6;
          *(v17 + 3) = v4;
        }
      }

      else
      {
        v17 = 0;
      }

      v22 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v17];
      if (!v22)
      {
        v22 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:*(a1 + 56)];
        [*(*(*(a1 + 48) + 8) + 40) setObject:v22 forKeyedSubscript:v17];
      }

      v23 = *(*(a1 + 32) + 56);
      v24 = [a2 startSampleIndex];
      if (v23 <= v24)
      {
        v23 = v24;
      }

      v25 = *(*(a1 + 32) + 64);
      v26 = [a2 endSampleIndex];
      if (v25 >= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      if (v23 < v27)
      {
        do
        {
          v28 = [v22 mutableBytes];
          *(v28 + (v23 >> 3)) |= 1 << (v23 & 7);
          ++v23;
          v29 = *(*(a1 + 32) + 64);
          v30 = [a2 endSampleIndex];
          if (v29 >= v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = v29;
          }
        }

        while (v23 < v31);
      }
    }
  }
}

void __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke_3(uint64_t a1, unsigned int *a2, id a3)
{
  v3 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v3 bytes];
  v8 = [v3 length];
  if (v8 == *(a1 + 40))
  {
    if (v8 >= 8)
    {
      LODWORD(v3) = 0;
      v10 = v8 >> 3;
      do
      {
        v11 = *v7++;
        v12 = vcnt_s8(v11);
        v12.i16[0] = vaddlv_u8(v12);
        LODWORD(v3) = v3 + v12.i32[0];
        --v10;
      }

      while (v10);
    }

    else
    {
      LODWORD(v3) = 0;
    }

    a1 = *(a1 + 32);
    if (a2)
    {
      v29 = objc_getProperty(a2, v9, 16, 1);
      v13 = a2[2];
      v15 = objc_getProperty(a2, v14, 24, 1);
      [(SAOnBehalfOfMultiple *)a1 addProximateName:v29 proximatePid:v13 originName:v15 originPid:a2[3] count:v3];
      goto LABEL_8;
    }
  }

  else
  {
    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v3 length];
      v20 = *(a1 + 40);
      *buf = 134218240;
      v31 = v19;
      v32 = 2048;
      v33 = v20;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "sampleIndexBitfield.length %lu != bitfieldSize %llu", buf, 0x16u);
    }

    *__error() = v17;
    v21 = [v3 length];
    v28 = *(a1 + 40);
    _SASetCrashLogMessage(14246, "sampleIndexBitfield.length %lu != bitfieldSize %llu", v22, v23, v24, v25, v26, v27, v21);
    _os_crash();
    __break(1u);
  }

  v15 = 0;
  v29 = 0;
  [(SAOnBehalfOfMultiple *)a1 addProximateName:0 proximatePid:0 originName:0 originPid:v3 count:?];
LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
}

void __40__SASamplePrinter_numIOsForTask_ioSize___block_invoke(void *a1, const char *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  Property = *(a1[4] + 168);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 1120, 1);
  }

  v7 = Property;
  v8 = [v7 objectForKeyedSubscript:a2];

  if (v8)
  {
    v9 = [a3 creationTimestamp];
    v10 = v9;
    if (!v9 || [v9 lt:*(a1[4] + 32)])
    {
      v11 = *(a1[4] + 32);

      v10 = v11;
    }

    v12 = [a3 exitTimestamp];
    v13 = v12;
    if (!v12 || [v12 gt:*(a1[4] + 40)])
    {
      v14 = *(a1[4] + 40);

      v13 = v14;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = v8;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          v21 = [v20 endTimestamp];
          v22 = [v10 gt:v21];

          if ((v22 & 1) == 0)
          {
            v23 = [v20 endTimestamp];
            v24 = [v13 lt:v23];

            if (v24)
            {
              goto LABEL_20;
            }

            *(*(a1[5] + 8) + 24) += [v20 size];
            ++*(*(a1[6] + 8) + 24);
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v17);
    }

LABEL_20:

    v8 = v26;
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __73__SASamplePrinter_addStackForDispatchQueue_andThread_task_toRootObjects___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 dispatchQueue];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v7 addObject:v8];
  }
}

- (void)addStackForSwiftTask:(unint64_t)task andThread:(uint64_t)thread task:(void *)a5 toRootObjects:
{
  if (self)
  {
    if (a2 | task)
    {
      if (task)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = self[4];
        v12 = self[5];
        v13 = self[7];
        v14 = self[8];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __69__SASamplePrinter_addStackForSwiftTask_andThread_task_toRootObjects___block_invoke;
        v26[3] = &unk_1E86F70B8;
        v26[4] = a2;
        v27 = v10;
        v15 = v10;
        [task enumerateThreadStatesBetweenStartTime:v11 startSampleIndex:v13 endTime:v12 endSampleIndex:v14 reverseOrder:0 block:v26];
        [(SASamplePrinter *)self addStackForDispatchQueue:0 orSwiftTaskStates:task orThread:v15 andThreadStateIndexes:thread task:a5 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:0 includeState:?];
      }

      else
      {
        states = [a2 states];
        [(SASamplePrinter *)self addStackForDispatchQueue:states orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:thread task:a5 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:0 includeState:?];
      }
    }

    else
    {
      v16 = *__error();
      v17 = _sa_logt();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "Neither thread nor swiftTask provided", buf, 2u);
      }

      *__error() = v16;
      _SASetCrashLogMessage(14646, "Neither thread nor swiftTask provided", v18, v19, v20, v21, v22, v23, v24);
      _os_crash();
      __break(1u);
    }
  }
}

void __69__SASamplePrinter_addStackForSwiftTask_andThread_task_toRootObjects___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 swiftTask];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v7 addObject:v8];
  }
}

void __49__SASamplePrinter_addStackForTask_toRootObjects___block_invoke(uint64_t a1, uint64_t a2, char *a3)
{
  if ([(SASamplePrinter *)*(a1 + 32) shouldPrintTask:a3 thread:0 dispatchQueue:?])
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      [(SASamplePrinter *)v5 addStackForDispatchQueue:0 orSwiftTaskStates:a3 orThread:0 andThreadStateIndexes:*(a1 + 40) task:*(a1 + 48) toRootObjects:1 nameChanges:1 dispatchQueueChanges:1 swiftTaskChanges:1 threadChanges:1 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
    }
  }
}

void __55__SASamplePrinter_addStackForExecutable_toRootObjects___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 mainBinary];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    [*(a1 + 40) addObject:a2];
    v6 = [a2 threads];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__SASamplePrinter_addStackForExecutable_toRootObjects___block_invoke_2;
    v8[3] = &unk_1E86F80A0;
    v7 = *(a1 + 56);
    v8[4] = *(a1 + 48);
    v8[5] = a2;
    v8[6] = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __55__SASamplePrinter_addStackForExecutable_toRootObjects___block_invoke_2(uint64_t a1, uint64_t a2, char *a3)
{
  if ([(SASamplePrinter *)*(a1 + 32) shouldPrintTask:a3 thread:0 dispatchQueue:?])
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      [(SASamplePrinter *)v5 addStackForDispatchQueue:0 orSwiftTaskStates:a3 orThread:0 andThreadStateIndexes:*(a1 + 40) task:*(a1 + 48) toRootObjects:1 nameChanges:1 dispatchQueueChanges:1 swiftTaskChanges:1 threadChanges:1 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
    }
  }
}

uint64_t __37__SASamplePrinter_sortHeavyCallTree___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v107 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v45 = *__error();
    v50 = _sa_logt();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v3 = [v52 UTF8String];
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *buf = 136315394;
      v104 = v3;
      v105 = 2080;
      v106 = [v54 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v50, OS_LOG_TYPE_ERROR, "first is a %s, second is a %s", buf, 0x16u);
    }

    *__error() = v45;
    v55 = objc_opt_class();
    v25 = NSStringFromClass(v55);
    v56 = [v25 UTF8String];
    v57 = objc_opt_class();
    a3 = NSStringFromClass(v57);
    [a3 UTF8String];
    _SASetCrashLogMessage(14723, "first is a %s, second is a %s", v58, v59, v60, v61, v62, v63, v56);

    _os_crash();
    __break(1u);
    goto LABEL_57;
  }

  v6 = [a2 sampleCount];
  v7 = [a3 sampleCount];
  if (v6 < v7)
  {
LABEL_4:
    v8 = 1;
    goto LABEL_8;
  }

  if (v6 > v7)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v65 = *__error();
      a3 = _sa_logt();
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v78 = objc_opt_class();
        v79 = NSStringFromClass(v78);
        *buf = 136315138;
        v104 = [v79 UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, a3, OS_LOG_TYPE_ERROR, "first is a %s", buf, 0xCu);
      }

      *__error() = v65;
      v80 = objc_opt_class();
      v25 = NSStringFromClass(v80);
      v81 = [v25 UTF8String];
      _SASetCrashLogMessage(14765, "first is a %s", v82, v83, v84, v85, v86, v87, v81);

      v67 = _os_crash();
      __break(1u);
LABEL_82:
      v8 = -1;
      goto LABEL_99;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v88 = *__error();
        v89 = _sa_logt();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          v90 = objc_opt_class();
          v91 = NSStringFromClass(v90);
          *buf = 136315138;
          v104 = [v91 UTF8String];
          _os_log_error_impl(&dword_1E0E2F000, v89, OS_LOG_TYPE_ERROR, "second is a %s", buf, 0xCu);
        }

        *__error() = v88;
        v92 = objc_opt_class();
        v25 = NSStringFromClass(v92);
        v93 = [v25 UTF8String];
        _SASetCrashLogMessage(14769, "second is a %s", v94, v95, v96, v97, v98, v99, v93);

        _os_crash();
        __break(1u);
        goto LABEL_86;
      }

      v25 = a2;
      v26 = a3;
      a3 = v26;
      if (!v25)
      {
        if (!v26)
        {
          v41 = SACountedStateCompare(0, 0);
          if (v41)
          {
            goto LABEL_40;
          }

          goto LABEL_121;
        }

        if (v26[25] & 1) != 0 || (v26[26])
        {
          goto LABEL_46;
        }

        v40 = 0;
        goto LABEL_39;
      }

      v27 = *(v25 + 25);
      if (v26)
      {
        if (((v26[25] ^ v27) & 1) == 0)
        {
          v27 = *(v25 + 26);
          if (((v27 ^ v26[26]) & 1) == 0)
          {
LABEL_38:
            v40 = v25[9];
LABEL_39:
            v41 = SACountedStateCompare(v40, *(a3 + 72));
            if (v41)
            {
LABEL_40:
              v8 = v41;
LABEL_33:

              goto LABEL_8;
            }

            if (v25)
            {
              v43 = *(v25 + 8);
            }

            else
            {
              v43 = 0;
            }

            v44 = *(a3 + 32);
            if (v43 < v44)
            {
              v8 = -1;
              goto LABEL_33;
            }

            if (v43 > v44)
            {
LABEL_46:
              v8 = 1;
              goto LABEL_33;
            }

            if (!v25)
            {
              v46 = 0;
              goto LABEL_50;
            }

            LOBYTE(v8) = 0;
LABEL_49:
            LOBYTE(v45) = 1;
            v46 = objc_getProperty(v25, v42, 64, 1);
            if (v8)
            {
              v47 = 0;
LABEL_51:
              v48 = v47;
              v3 = v48;
              if (v46)
              {
                if (v48)
                {
                  v8 = [v46 compare:v48];
                }

                else
                {
                  v8 = -1;
                }

                goto LABEL_100;
              }

LABEL_57:
              if (v3)
              {
                v46 = 0;
                v8 = 1;
LABEL_100:

                goto LABEL_33;
              }

              if (v25)
              {
                v64 = 1;
                v65 = objc_getProperty(v25, v49, 56, 1);
                if (v45)
                {
                  v66 = 0;
LABEL_63:
                  v67 = v66;
                  if (v65)
                  {
                    if (v67)
                    {
                      v69 = v67;
                      if (v25)
                      {
                        Property = objc_getProperty(v25, v68, 56, 1);
                      }

                      else
                      {
                        Property = 0;
                      }

                      v72 = Property;
                      if (v64)
                      {
                        v73 = 0;
                      }

                      else
                      {
                        v73 = objc_getProperty(a3, v71, 56, 1);
                      }

                      v74 = v73;
                      v8 = [v72 compare:v74];

                      v67 = v69;
                      goto LABEL_99;
                    }

                    goto LABEL_82;
                  }

                  if (v67)
                  {
LABEL_98:
                    v65 = 0;
                    v8 = 1;
                    goto LABEL_99;
                  }

                  if (v25)
                  {
                    v75 = *(v25 + 10);
                    if (v64)
                    {
                      v77 = 0;
                      v76 = 1;
LABEL_74:
                      if (v75 != -1)
                      {
                        v67 = 0;
                        v8 = -1;
                        if (v77 == -1)
                        {
                          goto LABEL_95;
                        }

                        v65 = 0;
                        if (v75 < v77)
                        {
LABEL_99:

                          v3 = 0;
                          v46 = 0;
                          goto LABEL_100;
                        }

                        if (v75 > v77)
                        {
                          goto LABEL_97;
                        }

                        goto LABEL_87;
                      }

LABEL_86:
                      if (v77 != -1)
                      {
                        goto LABEL_97;
                      }

LABEL_87:
                      if (v25)
                      {
                        v100 = *(v25 + 9);
                        if (v76)
                        {
                          v101 = 0;
LABEL_90:
                          v102 = v101 == -1;
                          if (v100 == -1)
                          {
                            if (v101 == -1)
                            {
                              goto LABEL_121;
                            }

                            goto LABEL_97;
                          }

                          goto LABEL_91;
                        }

LABEL_89:
                        v101 = *(a3 + 36);
                        goto LABEL_90;
                      }

                      if ((v76 & 1) == 0)
                      {
                        v100 = 0;
                        goto LABEL_89;
                      }

LABEL_128:
                      v102 = 0;
                      v101 = 0;
                      v100 = 0;
LABEL_91:
                      v67 = 0;
                      v8 = -1;
                      if (!v102)
                      {
                        v65 = 0;
                        if (v100 < v101)
                        {
                          goto LABEL_99;
                        }

                        if (v100 <= v101)
                        {
LABEL_121:
                          v67 = 0;
                          v65 = 0;
                          v8 = 0;
                          goto LABEL_99;
                        }

LABEL_97:
                        v67 = 0;
                        goto LABEL_98;
                      }

LABEL_95:
                      v65 = 0;
                      goto LABEL_99;
                    }
                  }

                  else
                  {
                    if (v64)
                    {
                      goto LABEL_128;
                    }

                    v75 = 0;
                  }

                  v76 = 0;
                  v77 = *(a3 + 40);
                  goto LABEL_74;
                }
              }

              else
              {
                v65 = 0;
                if (v45)
                {
                  goto LABEL_121;
                }
              }

              v66 = objc_getProperty(a3, v49, 56, 1);
              v64 = 0;
              goto LABEL_63;
            }

LABEL_50:
            v47 = objc_getProperty(a3, v42, 64, 1);
            LOBYTE(v45) = 0;
            goto LABEL_51;
          }
        }
      }

      else if ((v27 & 1) == 0)
      {
        LOBYTE(v27) = *(v25 + 26);
        if ((v27 & 1) == 0)
        {
          v41 = SACountedStateCompare(v25[9], 0);
          if (v41)
          {
            goto LABEL_40;
          }

          v8 = 1;
          if (*(v25 + 8))
          {
            goto LABEL_33;
          }

          goto LABEL_49;
        }
      }

      if (v27)
      {
        v8 = -1;
      }

      else
      {
        v8 = 1;
      }

      goto LABEL_33;
    }

LABEL_7:
    v8 = -1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    v28 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 136315138;
      v104 = [v31 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, "second is a %s", buf, 0xCu);
    }

    *__error() = v28;
    v32 = objc_opt_class();
    v25 = NSStringFromClass(v32);
    v33 = [v25 UTF8String];
    _SASetCrashLogMessage(14761, "second is a %s", v34, v35, v36, v37, v38, v39, v33);

    _os_crash();
    __break(1u);
    goto LABEL_38;
  }

  if (a2)
  {
    v13 = objc_getProperty(a2, v12, 40, 1);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [v14 count];

  if (a3)
  {
    v17 = objc_getProperty(a3, v16, 40, 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [v18 count];

  if (v15 < v19)
  {
    goto LABEL_7;
  }

  if (v15 > v19)
  {
    goto LABEL_4;
  }

  v20 = [a2 frame];
  v21 = [v20 address];

  v22 = [a3 frame];
  v23 = [v22 address];

  if (v21 <= v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  if (v21 < v23)
  {
    v8 = 1;
  }

  else
  {
    v8 = v24;
  }

LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __37__SASamplePrinter_sortHeavyCallTree___block_invoke_2791(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v18 UTF8String];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 136315394;
      v34 = v19;
      v35 = 2080;
      v36 = [v21 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "first is a %s, second is a %s", buf, 0x16u);
    }

    *__error() = v15;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v23 UTF8String];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [v26 UTF8String];
    _SASetCrashLogMessage(14874, "first is a %s, second is a %s", v27, v28, v29, v30, v31, v32, v24);

    _os_crash();
    __break(1u);
  }

  v5 = [a2 size];
  if (v5 < [a3 size])
  {
    goto LABEL_4;
  }

  v7 = [a2 size];
  if (v7 > [a3 size] || (v8 = objc_msgSend(a2, "tier"), v8 < objc_msgSend(a3, "tier")))
  {
LABEL_7:
    result = -1;
    goto LABEL_8;
  }

  v10 = [a2 tier];
  if (v10 <= [a3 tier])
  {
    if (a2)
    {
      v11 = a2[3];
      if (a3)
      {
LABEL_12:
        v12 = a3[3];
        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
      if (a3)
      {
        goto LABEL_12;
      }
    }

    v12 = 0;
LABEL_13:
    if (v11 < v12)
    {
      goto LABEL_7;
    }

    if (a2)
    {
      v13 = a2[3];
      if (a3)
      {
LABEL_16:
        v14 = a3[3];
LABEL_17:
        result = v13 > v14;
        goto LABEL_8;
      }
    }

    else
    {
      v13 = 0;
      if (a3)
      {
        goto LABEL_16;
      }
    }

    v14 = 0;
    goto LABEL_17;
  }

LABEL_4:
  result = 1;
LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __37__SASamplePrinter_sortHeavyCallTree___block_invoke_2796(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v5 = 40;
    if (a2)
    {
      v6 = &OBJC_IVAR___SACallTreeState__childIOEvents;
      goto LABEL_7;
    }

LABEL_12:
    Property = 0;
    goto LABEL_8;
  }

  v5 = 32;
  if (!a2)
  {
    goto LABEL_12;
  }

  v6 = &OBJC_IVAR___SACallTreeFrame__children;
LABEL_7:
  Property = objc_getProperty(a2, v4, *v6, 1);
LABEL_8:
  v8 = Property;
  [v8 sortUsingComparator:*(a1 + v5)];
}

- (id)callTreesForThreadsInTask:(id)task
{
  v41 = *MEMORY[0x1E69E9840];
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v5 = 0;
    goto LABEL_38;
  }

  if (self && self->_hasTimeIndexes)
  {
    v6 = [task sampleCountInSampleIndexRangeStart:self->_reportStartSampleIndex end:self->_reportEndSampleIndex];
  }

  else
  {
    v6 = [task sampleCountInTimestampRangeStart:self->_reportStartTime end:self->_reportEndTime];
  }

  taskCopy = task;
  v7 = [(SASamplePrinter *)&self->super.isa stacksForTask:task taskSampleCount:v6];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      v13 = 0;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        if (v14)
        {
          if ([v14[7] count] > 1)
          {
            v15 = 0;
            goto LABEL_17;
          }

          threads = [taskCopy threads];
          Property = objc_getProperty(v14, v17, 56, 1);
        }

        else
        {
          threads = [taskCopy threads];
          Property = 0;
        }

        firstObject = [Property firstObject];
        v15 = [threads objectForKeyedSubscript:firstObject];

        if (!v14)
        {
          v22 = 0;
          goto LABEL_20;
        }

LABEL_17:
        if ([v14[5] count] > 1)
        {
          firstObject2 = 0;
          goto LABEL_23;
        }

        v22 = objc_getProperty(v14, v20, 40, 1);
LABEL_20:
        firstObject2 = [v22 firstObject];
        null = [MEMORY[0x1E695DFB0] null];

        if (firstObject2 == null)
        {

          firstObject2 = 0;
        }

        if (!v14)
        {
          v28 = 0;
          goto LABEL_26;
        }

LABEL_23:
        if ([v14[6] count] >= 2)
        {
          v26 = [SAThreadCallTree alloc];
          firstObject3 = 0;
LABEL_29:
          v30 = objc_getProperty(v14, v25, 120, 1);
          goto LABEL_30;
        }

        v28 = objc_getProperty(v14, v24, 48, 1);
LABEL_26:
        firstObject3 = [v28 firstObject];
        null2 = [MEMORY[0x1E695DFB0] null];

        if (firstObject3 == null2)
        {

          firstObject3 = 0;
        }

        v26 = [SAThreadCallTree alloc];
        if (v14)
        {
          goto LABEL_29;
        }

        v30 = 0;
LABEL_30:
        v31 = [(SAThreadCallTree *)v26 initWithThread:v15 dispatchQueue:firstObject2 swiftTask:firstObject3 rootObjects:v30];
        [v8 addObject:v31];

        ++v13;
      }

      while (v11 != v13);
      v32 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
      v11 = v32;
    }

    while (v32);
  }

  v5 = [[SATaskThreadCallTrees alloc] initWithTask:taskCopy threadCallTrees:v8];
LABEL_38:
  v33 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)callTreeForTask:(id)task
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    if (self)
    {
      threads = [task threads];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __49__SASamplePrinter_addStackForTask_toRootObjects___block_invoke;
      v9[3] = &unk_1E86F80A0;
      v9[4] = self;
      v9[5] = task;
      v9[6] = v6;
      [threads enumerateKeysAndObjectsUsingBlock:v9];
    }

    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v6];
    }

    v5 = [SATaskCallTree initWithTask:task rootObjects:?];
  }

  return v5;
}

- (id)callTreeForDispatchQueue:(id)queue andThread:(id)thread inTask:(id)task
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v9 = 0;
LABEL_11:

    return v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if (!self)
  {
LABEL_8:
    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v10];
    }

    v9 = [[SAThreadCallTree alloc] initWithThread:thread dispatchQueue:queue swiftTask:0 rootObjects:v10];

    goto LABEL_11;
  }

  if (queue | thread)
  {
    if (thread)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      reportStartTime = self->_reportStartTime;
      reportEndTime = self->_reportEndTime;
      reportStartSampleIndex = self->_reportStartSampleIndex;
      reportEndSampleIndex = self->_reportEndSampleIndex;
      *buf = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __73__SASamplePrinter_addStackForDispatchQueue_andThread_task_toRootObjects___block_invoke;
      v30 = &unk_1E86F70B8;
      queueCopy = queue;
      v32 = v11;
      v16 = v11;
      [thread enumerateThreadStatesBetweenStartTime:reportStartTime startSampleIndex:reportStartSampleIndex endTime:reportEndTime endSampleIndex:reportEndSampleIndex reverseOrder:0 block:buf];
      [(SASamplePrinter *)self addStackForDispatchQueue:0 orSwiftTaskStates:thread orThread:v16 andThreadStateIndexes:task task:v10 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:0 includeState:?];
    }

    else
    {
      [(SASamplePrinter *)self addStackForDispatchQueue:queue orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 task:task toRootObjects:v10 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:0 includeState:0];
    }

    goto LABEL_8;
  }

  v18 = *__error();
  v19 = _sa_logt();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "Neither thread nor dispatchQueue provided", buf, 2u);
  }

  *__error() = v18;
  _SASetCrashLogMessage(14630, "Neither thread nor dispatchQueue provided", v20, v21, v22, v23, v24, v25, v26);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)callTreeForSwiftTask:(id)task thread:(id)thread inTask:(id)inTask
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [(SASamplePrinter *)self addStackForSwiftTask:task andThread:thread task:inTask toRootObjects:v10];
    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v10];
    }

    v9 = [[SAThreadCallTree alloc] initWithThread:thread dispatchQueue:0 swiftTask:task rootObjects:v10];
  }

  return v9;
}

- (id)callTreeForDispatchQueue:(id)queue swiftTask:(id)task thread:(id)thread inTask:(id)inTask
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [(SASamplePrinter *)self addStackForSwiftTask:task andThread:thread task:inTask toRootObjects:v12];
    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v12];
    }

    v11 = [[SAThreadCallTree alloc] initWithThread:thread dispatchQueue:queue swiftTask:task rootObjects:v12];
  }

  return v11;
}

- (id)callTreeForThread:(id)thread inTask:(id)task
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    if (self)
    {
      [(SASamplePrinter *)self addStackForDispatchQueue:0 orSwiftTaskStates:thread orThread:0 andThreadStateIndexes:task task:v8 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:0 includeState:?];
    }

    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v8];
    }

    v7 = [[SAThreadCallTree alloc] initWithThread:thread dispatchQueue:0 swiftTask:0 rootObjects:v8];
  }

  return v7;
}

- (id)callTreeForExecutable:(id)executable
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    if (self)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      sampleStore = self->_sampleStore;
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __55__SASamplePrinter_addStackForExecutable_toRootObjects___block_invoke;
      v15 = &unk_1E86F7FE0;
      executableCopy = executable;
      v17 = v7;
      selfCopy = self;
      v19 = v6;
      v9 = v7;
      [(SASampleStore *)sampleStore enumerateTasks:&v12];
      v10 = [v9 copy];
    }

    else
    {
      v10 = 0;
    }

    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v6];
    }

    v5 = [SAExecutableCallTree initWithTasks:v10 rootObjects:?];
  }

  return v5;
}

@end