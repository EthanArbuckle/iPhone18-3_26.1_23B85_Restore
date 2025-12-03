@interface VICloudKitHandler
+ (void)uploadUserFeedbackToEnvironment:(int64_t)environment container:(id)container request:(id)request sfReport:(id)report intermediateResults:(id)results deviceInfo:(id)info nsfwConfidence:(float)confidence imageData:(id)self0 reportIdentifier:(id)self1 completionHandler:(id)self2;
@end

@implementation VICloudKitHandler

+ (void)uploadUserFeedbackToEnvironment:(int64_t)environment container:(id)container request:(id)request sfReport:(id)report intermediateResults:(id)results deviceInfo:(id)info nsfwConfidence:(float)confidence imageData:(id)self0 reportIdentifier:(id)self1 completionHandler:(id)self2
{
  handlerCopy = handler;
  identifierCopy = identifier;
  dataCopy = data;
  infoCopy = info;
  resultsCopy = results;
  reportCopy = report;
  requestCopy = request;
  containerCopy = container;
  NSLog(&cfstr_Vicloudkithand.isa, containerCopy, identifierCopy);
  v26 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"UserFeedback"];
  [v26 setObject:identifierCopy forKey:@"ReportIdentifier"];

  v27 = [objc_alloc(MEMORY[0x1E695B878]) initWithAssetContent:dataCopy itemTypeHint:@"bin"];
  [v26 setObject:v27 forKey:@"QueryImage"];

  [v26 setObject:requestCopy forKey:@"VisualSearchRequest"];
  [v26 setObject:reportCopy forKey:@"UserReportFeedback"];

  [v26 setObject:resultsCopy forKey:@"ParseFlowIntermediateResults"];
  [v26 setObject:infoCopy forKey:@"DeviceInfo"];

  *&v28 = confidence;
  v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
  [v26 setObject:v29 forKey:@"NSFWConfidence"];

  v30 = objc_alloc(MEMORY[0x1E695B888]);
  v31 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:containerCopy environment:environment];

  v32 = [v30 initWithContainerID:v31];
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v33 addObject:v26];
  v34 = [objc_alloc(MEMORY[0x1E695B9B8]) initWithRecordsToSave:v33 recordIDsToDelete:0];
  configuration = [v34 configuration];
  [configuration setPreferAnonymousRequests:1];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __171__VICloudKitHandler_uploadUserFeedbackToEnvironment_container_request_sfReport_intermediateResults_deviceInfo_nsfwConfidence_imageData_reportIdentifier_completionHandler___block_invoke;
  v39[3] = &unk_1E858AA88;
  v40 = handlerCopy;
  v36 = handlerCopy;
  [v34 setModifyRecordsCompletionBlock:v39];
  publicCloudDatabase = [v32 publicCloudDatabase];
  [publicCloudDatabase addOperation:v34];
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