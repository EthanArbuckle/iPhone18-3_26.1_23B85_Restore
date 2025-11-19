@interface VICloudKitHandler
+ (void)uploadUserFeedbackToEnvironment:(int64_t)a3 container:(id)a4 request:(id)a5 sfReport:(id)a6 intermediateResults:(id)a7 deviceInfo:(id)a8 nsfwConfidence:(float)a9 imageData:(id)a10 reportIdentifier:(id)a11 completionHandler:(id)a12;
@end

@implementation VICloudKitHandler

+ (void)uploadUserFeedbackToEnvironment:(int64_t)a3 container:(id)a4 request:(id)a5 sfReport:(id)a6 intermediateResults:(id)a7 deviceInfo:(id)a8 nsfwConfidence:(float)a9 imageData:(id)a10 reportIdentifier:(id)a11 completionHandler:(id)a12
{
  v18 = a12;
  v19 = a11;
  v20 = a10;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  NSLog(&cfstr_Vicloudkithand.isa, v25, v19);
  v26 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"UserFeedback"];
  [v26 setObject:v19 forKey:@"ReportIdentifier"];

  v27 = [objc_alloc(MEMORY[0x1E695B878]) initWithAssetContent:v20 itemTypeHint:@"bin"];
  [v26 setObject:v27 forKey:@"QueryImage"];

  [v26 setObject:v24 forKey:@"VisualSearchRequest"];
  [v26 setObject:v23 forKey:@"UserReportFeedback"];

  [v26 setObject:v22 forKey:@"ParseFlowIntermediateResults"];
  [v26 setObject:v21 forKey:@"DeviceInfo"];

  *&v28 = a9;
  v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
  [v26 setObject:v29 forKey:@"NSFWConfidence"];

  v30 = objc_alloc(MEMORY[0x1E695B888]);
  v31 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:v25 environment:a3];

  v32 = [v30 initWithContainerID:v31];
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v33 addObject:v26];
  v34 = [objc_alloc(MEMORY[0x1E695B9B8]) initWithRecordsToSave:v33 recordIDsToDelete:0];
  v35 = [v34 configuration];
  [v35 setPreferAnonymousRequests:1];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __171__VICloudKitHandler_uploadUserFeedbackToEnvironment_container_request_sfReport_intermediateResults_deviceInfo_nsfwConfidence_imageData_reportIdentifier_completionHandler___block_invoke;
  v39[3] = &unk_1E858AA88;
  v40 = v18;
  v36 = v18;
  [v34 setModifyRecordsCompletionBlock:v39];
  v37 = [v32 publicCloudDatabase];
  [v37 addOperation:v34];
}

uint64_t __171__VICloudKitHandler_uploadUserFeedbackToEnvironment_container_request_sfReport_intermediateResults_deviceInfo_nsfwConfidence_imageData_reportIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

@end