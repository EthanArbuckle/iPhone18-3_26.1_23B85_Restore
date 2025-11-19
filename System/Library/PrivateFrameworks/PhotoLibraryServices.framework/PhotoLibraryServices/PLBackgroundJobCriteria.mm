@interface PLBackgroundJobCriteria
+ (PLBackgroundJobCriteria)criteriaWithKnownShortCode:(id)a3;
+ (id)allKnownCriteria;
+ (id)allKnownShortCodes;
+ (id)criteriaForAssetResourceUploadExtensionRunnerWorker;
+ (id)criteriaForAssetResourceUploadJobWorker;
+ (id)criteriaForAssetStackWorker;
+ (id)criteriaForDiscretionaryResourceWorker;
+ (id)criteriaForDiscretionaryResourceWorkerWithExpectedDuration;
+ (id)criteriaForDuplicateDetectorWorker;
+ (id)criteriaForFeatureAvailabilityWorker;
+ (id)criteriaForHighPriorityRenderDerivativesWorker;
+ (id)criteriaForHighPrioritySearchIndexingWorker;
+ (id)criteriaForHubbleNetworkDownloadWorker;
+ (id)criteriaForHubbleWorker;
+ (id)criteriaForLowPriorityBatterySearchWorker;
+ (id)criteriaForLowPriorityChargerSearchWorker;
+ (id)criteriaForStableHashWorker;
+ (id)criteriaForUrgentResourceWorker;
- (BOOL)isEqual:(id)a3;
- (PLBackgroundJobCriteria)initWithName:(id)a3 shortCode:(id)a4 taskPriority:(unint64_t)a5 requiresExternalPower:(BOOL)a6 trySchedulingBefore:(int64_t)a7 scheduleAfter:(int64_t)a8 requiresUserInactivity:(BOOL)a9 cpuIntensive:(BOOL)a10 memoryIntensive:(BOOL)a11 requiresInexpensiveNetworkConnectivity:(BOOL)a12 overrideRateLimiting:(BOOL)a13 expectedDuration:(double)a14 involvedProcesses:(id)a15;
- (id)description;
- (id)taskRequest;
- (unint64_t)hash;
@end

@implementation PLBackgroundJobCriteria

+ (id)criteriaForUrgentResourceWorker
{
  BYTE4(v4) = 1;
  LODWORD(v4) = 0x10000;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"urgent resource" taskPriority:@"U" requiresExternalPower:1 trySchedulingBefore:0 scheduleAfter:31 requiresUserInactivity:30 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForDiscretionaryResourceWorker
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 257;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"discretionary resource" taskPriority:@"D" requiresExternalPower:0 trySchedulingBefore:0 scheduleAfter:900 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForDiscretionaryResourceWorkerWithExpectedDuration
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 257;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"discretionary resource duration" taskPriority:@"DD" requiresExternalPower:0 trySchedulingBefore:0 scheduleAfter:900 requiresUserInactivity:0 cpuIntensive:3600.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForHighPriorityRenderDerivativesWorker
{
  BYTE4(v4) = 1;
  LODWORD(v4) = 0;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"render derivatives high" taskPriority:@"I" requiresExternalPower:1 trySchedulingBefore:0 scheduleAfter:1 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)allKnownShortCodes
{
  v2 = [a1 allKnownCriteria];
  v3 = [v2 _pl_map:&__block_literal_global_50612];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_shortCode hash];
  v4 = [(NSString *)self->_name hash]^ v3 ^ self->_bgstTaskPriority ^ self->_requiresExternalPower ^ self->_trySchedulingBefore ^ self->_scheduleAfter ^ self->_requiresUserInactivity ^ self->_cpuIntensive ^ self->_memoryIntensive ^ self->_requiresInexpensiveNetworkConnectivity ^ self->_overrideRateLimiting;
  expectedDuration = self->_expectedDuration;
  return v4 ^ [(NSArray *)self->_involvedProcesses hash]^ expectedDuration;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    if (PLObjectIsEqual() && PLObjectIsEqual() && self->_bgstTaskPriority == *(v5 + 4) && self->_requiresExternalPower == *(v5 + 57) && self->_trySchedulingBefore == *(v5 + 5) && self->_scheduleAfter == *(v5 + 6) && self->_requiresUserInactivity == *(v5 + 56) && self->_cpuIntensive == *(v5 + 58) && self->_memoryIntensive == *(v5 + 59) && self->_requiresInexpensiveNetworkConnectivity == *(v5 + 60) && self->_overrideRateLimiting == *(v5 + 61) && self->_expectedDuration == v5[8])
    {
      involvedProcesses = self->_involvedProcesses;
      v7 = *(v5 + 9);
      v8 = involvedProcesses;
      v11 = v8;
      if (v8 == v7)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSArray *)v8 isEqual:v7];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v2 = @"utility";
  if (!self->_bgstTaskPriority)
  {
    v2 = @"maintenance";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[Criteria: %@ | Short: %@ | Priority: %@ | ScheduleAfter: %zd | TryScheduleBefore: %zd | ExternalPower: %d | UserInactivity: %d | CPUIntensive: %d | MemoryIntensive: %d | InexpensiveNetwork: %d | OverrideRateLimiting: %d | ExpectedDuration: %f | InvolvedProcesses: %@]", self->_name, self->_shortCode, v2, self->_scheduleAfter, self->_trySchedulingBefore, self->_requiresExternalPower, self->_requiresUserInactivity, self->_cpuIntensive, self->_memoryIntensive, self->_requiresInexpensiveNetworkConnectivity, self->_overrideRateLimiting, *&self->_expectedDuration, self->_involvedProcesses];
}

- (id)taskRequest
{
  v3 = [objc_alloc(MEMORY[0x1E698E478]) initWithIdentifier:self->_taskIdentifier];
  [v3 setTrySchedulingBefore:self->_trySchedulingBefore];
  [v3 setScheduleAfter:self->_scheduleAfter];
  [v3 setRequiresExternalPower:self->_requiresExternalPower];
  [v3 setResourceIntensive:self->_memoryIntensive | self->_cpuIntensive];
  if (self->_cpuIntensive)
  {
    [v3 setResources:{objc_msgSend(v3, "resources") | 1}];
  }

  if (self->_memoryIntensive)
  {
    [v3 setResources:{objc_msgSend(v3, "resources") | 2}];
  }

  [v3 setRequiresUserInactivity:self->_requiresUserInactivity];
  [v3 setRequiresInexpensiveNetworkConnectivity:self->_requiresInexpensiveNetworkConnectivity];
  bgstTaskPriority = self->_bgstTaskPriority;
  if (bgstTaskPriority)
  {
    if (bgstTaskPriority != 1)
    {
      goto LABEL_10;
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v3 setPriority:v5];
LABEL_10:
  v6 = +[PLConcurrencyLimiter backgroundSystemTasksConcurrencyGroupName];
  [v3 setGroupName:v6];

  [v3 setGroupConcurrencyLimit:{+[PLConcurrencyLimiter backgroundSystemTasksConcurrencyLimit](PLConcurrencyLimiter, "backgroundSystemTasksConcurrencyLimit")}];
  [v3 setOverrideRateLimiting:self->_overrideRateLimiting];
  v7 = [(NSArray *)self->_involvedProcesses copy];
  [v3 setInvolvedProcesses:v7];

  [v3 setRequiresProtectionClass:4];
  if (self->_expectedDuration > 0.0)
  {
    [v3 setExpectedDuration:?];
  }

  return v3;
}

- (PLBackgroundJobCriteria)initWithName:(id)a3 shortCode:(id)a4 taskPriority:(unint64_t)a5 requiresExternalPower:(BOOL)a6 trySchedulingBefore:(int64_t)a7 scheduleAfter:(int64_t)a8 requiresUserInactivity:(BOOL)a9 cpuIntensive:(BOOL)a10 memoryIntensive:(BOOL)a11 requiresInexpensiveNetworkConnectivity:(BOOL)a12 overrideRateLimiting:(BOOL)a13 expectedDuration:(double)a14 involvedProcesses:(id)a15
{
  v22 = a3;
  v23 = a4;
  v24 = a15;
  v36.receiver = self;
  v36.super_class = PLBackgroundJobCriteria;
  v25 = [(PLBackgroundJobCriteria *)&v36 init];
  if (v25)
  {
    v26 = [v22 copy];
    name = v25->_name;
    v25->_name = v26;

    v28 = [v23 copy];
    shortCode = v25->_shortCode;
    v25->_shortCode = v28;

    v25->_requiresExternalPower = a6;
    v25->_bgstTaskPriority = a5;
    v25->_trySchedulingBefore = a7;
    v25->_scheduleAfter = a8;
    v25->_requiresUserInactivity = a9;
    v25->_cpuIntensive = a10;
    v25->_memoryIntensive = a11;
    v25->_requiresInexpensiveNetworkConnectivity = a12;
    v25->_overrideRateLimiting = a13;
    v25->_expectedDuration = a14;
    v30 = [v24 copy];
    involvedProcesses = v25->_involvedProcesses;
    v25->_involvedProcesses = v30;

    v32 = [(NSString *)v25->_name stringByReplacingOccurrencesOfString:@" " withString:&stru_1F0F06D80];
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.%s.backgroundjobservice.%@", "assetsd", v32];
    taskIdentifier = v25->_taskIdentifier;
    v25->_taskIdentifier = v33;
  }

  return v25;
}

+ (PLBackgroundJobCriteria)criteriaWithKnownShortCode:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 allKnownCriteria];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 shortCode];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)allKnownCriteria
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PLBackgroundJobCriteria_allKnownCriteria__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allKnownCriteria_onceToken != -1)
  {
    dispatch_once(&allKnownCriteria_onceToken, block);
  }

  v2 = allKnownCriteria_allKnownCriteria;

  return v2;
}

void __43__PLBackgroundJobCriteria_allKnownCriteria__block_invoke(uint64_t a1)
{
  v15 = MEMORY[0x1E695DFD8];
  v19 = [*(a1 + 32) criteriaForUrgentResourceWorker];
  v14 = [*(a1 + 32) criteriaForDiscretionaryResourceWorker];
  v18 = [*(a1 + 32) criteriaForDiscretionaryResourceWorkerWithExpectedDuration];
  v17 = [*(a1 + 32) criteriaForHubbleWorker];
  v16 = [*(a1 + 32) criteriaForHubbleNetworkDownloadWorker];
  v2 = [*(a1 + 32) criteriaForHighPrioritySearchIndexingWorker];
  v13 = [*(a1 + 32) criteriaForLowPriorityBatterySearchWorker];
  v3 = [*(a1 + 32) criteriaForLowPriorityChargerSearchWorker];
  v4 = [*(a1 + 32) criteriaForDuplicateDetectorWorker];
  v5 = [*(a1 + 32) criteriaForHighPriorityRenderDerivativesWorker];
  v6 = [*(a1 + 32) criteriaForAssetStackWorker];
  v7 = [*(a1 + 32) criteriaForFeatureAvailabilityWorker];
  v8 = [*(a1 + 32) criteriaForAssetResourceUploadExtensionRunnerWorker];
  v9 = [*(a1 + 32) criteriaForAssetResourceUploadJobWorker];
  v10 = [*(a1 + 32) criteriaForStableHashWorker];
  v11 = [v15 setWithObjects:{v19, v14, v18, v17, v16, v2, v13, v3, v4, v5, v6, v7, v8, v9, v10, 0}];
  v12 = allKnownCriteria_allKnownCriteria;
  allKnownCriteria_allKnownCriteria = v11;
}

+ (id)criteriaForStableHashWorker
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 257;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"stable hash job" taskPriority:@"SH" requiresExternalPower:0 trySchedulingBefore:1 scheduleAfter:14400 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForAssetResourceUploadJobWorker
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 0x1000000;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"asset resource upload job" taskPriority:@"J" requiresExternalPower:1 trySchedulingBefore:0 scheduleAfter:60 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForAssetResourceUploadExtensionRunnerWorker
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 0x1000000;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"asset resource upload extension runner" taskPriority:@"R" requiresExternalPower:1 trySchedulingBefore:0 scheduleAfter:60 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForFeatureAvailabilityWorker
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 1;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"feature availability" taskPriority:@"F" requiresExternalPower:0 trySchedulingBefore:1 scheduleAfter:86400 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForAssetStackWorker
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 1;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"asset stack" taskPriority:@"A" requiresExternalPower:0 trySchedulingBefore:0 scheduleAfter:900 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForDuplicateDetectorWorker
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 257;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"duplicate detector" taskPriority:@"M" requiresExternalPower:0 trySchedulingBefore:1 scheduleAfter:14400 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForLowPriorityChargerSearchWorker
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 257;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"low priority search charger" taskPriority:@"C" requiresExternalPower:0 trySchedulingBefore:1 scheduleAfter:3600 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:&unk_1F0FBFBB0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForLowPriorityBatterySearchWorker
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 257;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"low priority search battery" taskPriority:@"S" requiresExternalPower:0 trySchedulingBefore:0 scheduleAfter:15300 requiresUserInactivity:900 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:&unk_1F0FBFBB0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForHighPrioritySearchIndexingWorker
{
  BYTE4(v4) = 1;
  LODWORD(v4) = 0;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"high priority search indexing" taskPriority:@"P" requiresExternalPower:1 trySchedulingBefore:0 scheduleAfter:1 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:&unk_1F0FBFBB0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForHubbleNetworkDownloadWorker
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 16777473;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"hubble network download" taskPriority:@"N" requiresExternalPower:0 trySchedulingBefore:1 scheduleAfter:28800 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

+ (id)criteriaForHubbleWorker
{
  BYTE4(v4) = 1;
  LODWORD(v4) = 256;
  v2 = [PLBackgroundJobCriteria initWithName:"initWithName:shortCode:taskPriority:requiresExternalPower:trySchedulingBefore:scheduleAfter:requiresUserInactivity:cpuIntensive:memoryIntensive:requiresInexpensiveNetworkConnectivity:overrideRateLimiting:expectedDuration:involvedProcesses:" shortCode:@"hubble" taskPriority:@"H" requiresExternalPower:0 trySchedulingBefore:1 scheduleAfter:900 requiresUserInactivity:0 cpuIntensive:0.0 memoryIntensive:v4 requiresInexpensiveNetworkConnectivity:0 overrideRateLimiting:? expectedDuration:? involvedProcesses:?];

  return v2;
}

@end