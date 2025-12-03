@interface WFCKContainerUtilities
+ (id)metaDataDeviceQueryOperation;
+ (void)fetchDeviceRecordsInContainer:(id)container completion:(id)completion;
+ (void)fetchDeviceRecordsInContainer:(id)container withCursor:(id)cursor results:(id)results completion:(id)completion;
@end

@implementation WFCKContainerUtilities

+ (id)metaDataDeviceQueryOperation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v3 = [objc_alloc(MEMORY[0x1E695BA30]) initWithRecordType:@"metadata_device_type" predicate:v2];
  v4 = [objc_alloc(MEMORY[0x1E695BA48]) initWithQuery:v3];
  v5 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneName:@"metadata_zone"];
  zoneID = [v5 zoneID];
  [v4 setZoneID:zoneID];

  v10[0] = @"DeviceOSType";
  v10[1] = @"DeviceOSVersionNumber";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v4 setDesiredKeys:v7];

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)fetchDeviceRecordsInContainer:(id)container withCursor:(id)cursor results:(id)results completion:(id)completion
{
  containerCopy = container;
  resultsCopy = results;
  completionCopy = completion;
  metaDataDeviceQueryOperation = [self metaDataDeviceQueryOperation];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__WFCKContainerUtilities_fetchDeviceRecordsInContainer_withCursor_results_completion___block_invoke;
  v23[3] = &unk_1E837E448;
  v13 = resultsCopy;
  v24 = v13;
  [metaDataDeviceQueryOperation setRecordMatchedBlock:v23];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__WFCKContainerUtilities_fetchDeviceRecordsInContainer_withCursor_results_completion___block_invoke_2;
  v18[3] = &unk_1E837E470;
  v19 = containerCopy;
  v20 = v13;
  v21 = completionCopy;
  selfCopy = self;
  v14 = completionCopy;
  v15 = v13;
  v16 = containerCopy;
  [metaDataDeviceQueryOperation setQueryCompletionBlock:v18];
  privateCloudDatabase = [v16 privateCloudDatabase];
  [privateCloudDatabase addOperation:metaDataDeviceQueryOperation];
}

void __86__WFCKContainerUtilities_fetchDeviceRecordsInContainer_withCursor_results_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    [*(a1 + 32) addObject:v7];
    objc_sync_exit(v9);
  }
}

void __86__WFCKContainerUtilities_fetchDeviceRecordsInContainer_withCursor_results_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 16);
LABEL_3:
    v6();
    goto LABEL_6;
  }

  if (!v8)
  {
    v7 = *(a1 + 40);
    v6 = *(*(a1 + 48) + 16);
    goto LABEL_3;
  }

  [*(a1 + 56) fetchDeviceRecordsInContainer:*(a1 + 32) withCursor:v8 results:*(a1 + 40) completion:*(a1 + 48)];
LABEL_6:
}

+ (void)fetchDeviceRecordsInContainer:(id)container completion:(id)completion
{
  completionCopy = completion;
  containerCopy = container;
  v8 = objc_opt_new();
  [self fetchDeviceRecordsInContainer:containerCopy withCursor:0 results:v8 completion:completionCopy];
}

@end