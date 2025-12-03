@interface TapToRadarKitHelper
+ (BOOL)createProblem:(id)problem componentVersion:(id)version componentID:(id)d title:(id)title description:(id)description attachmentURLs:(id)ls extensionIDs:(id)ds deviceIDs:(id)self0 displayReason:(id)self1;
+ (id)createDraft:(id)draft description:(id)description attachmentURLs:(id)ls extensionIDs:(id)ds deviceIDs:(id)iDs component:(id)component;
+ (id)getLogger;
@end

@implementation TapToRadarKitHelper

+ (id)getLogger
{
  if (getLogger_onceToken != -1)
  {
    +[TapToRadarKitHelper getLogger];
  }

  v3 = getLogger__logger;

  return v3;
}

uint64_t __32__TapToRadarKitHelper_getLogger__block_invoke()
{
  getLogger__logger = os_log_create("com.apple.siri.sirikit", "TapToRadarKitHelper");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)createProblem:(id)problem componentVersion:(id)version componentID:(id)d title:(id)title description:(id)description attachmentURLs:(id)ls extensionIDs:(id)ds deviceIDs:(id)self0 displayReason:(id)self1
{
  problemCopy = problem;
  versionCopy = version;
  dCopy = d;
  titleCopy = title;
  descriptionCopy = description;
  lsCopy = ls;
  dsCopy = ds;
  iDsCopy = iDs;
  reasonCopy = reason;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v22 = dispatch_semaphore_create(0);
  v23 = +[TapToRadarKitHelper getLogger];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [TapToRadarKitHelper createProblem:v23 componentVersion:? componentID:? title:? description:? attachmentURLs:? extensionIDs:? deviceIDs:? displayReason:?];
  }

  v24 = 0;
  if (problemCopy && versionCopy && dCopy)
  {
    v24 = [objc_alloc(getRadarComponentClass()) initWithName:problemCopy version:versionCopy identifier:{objc_msgSend(dCopy, "integerValue")}];
  }

  v25 = [TapToRadarKitHelper createDraft:titleCopy description:descriptionCopy attachmentURLs:lsCopy extensionIDs:dsCopy deviceIDs:iDsCopy component:v24];
  [v25 setRemoteDeviceSelections:6];
  shared = [(objc_class *)getTapToRadarServiceClass() shared];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __136__TapToRadarKitHelper_createProblem_componentVersion_componentID_title_description_attachmentURLs_extensionIDs_deviceIDs_displayReason___block_invoke;
  v34[3] = &unk_1E8652E28;
  v36 = &v37;
  v27 = v22;
  v35 = v27;
  [shared createDraft:v25 forProcessNamed:@"Siri" withDisplayReason:reasonCopy completionHandler:v34];

  v28 = dispatch_time(0, 1000000000 * TapToRadarCreateDraftTimeoutSeconds);
  if (dispatch_semaphore_wait(v27, v28))
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v38 + 24);
  }

  _Block_object_dispose(&v37, 8);
  return v29;
}

void __136__TapToRadarKitHelper_createProblem_componentVersion_componentID_title_description_attachmentURLs_extensionIDs_deviceIDs_displayReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[TapToRadarKitHelper getLogger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __136__TapToRadarKitHelper_createProblem_componentVersion_componentID_title_description_attachmentURLs_extensionIDs_deviceIDs_displayReason___block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)createDraft:(id)draft description:(id)description attachmentURLs:(id)ls extensionIDs:(id)ds deviceIDs:(id)iDs component:(id)component
{
  v13 = getRadarDraftClass;
  componentCopy = component;
  iDsCopy = iDs;
  dsCopy = ds;
  lsCopy = ls;
  descriptionCopy = description;
  draftCopy = draft;
  v20 = objc_alloc_init(v13());
  [v20 setTitle:draftCopy];

  [v20 setProblemDescription:descriptionCopy];
  [v20 setClassification:7];
  [v20 setReproducibility:5];
  [v20 setDiagnosticExtensionIDs:dsCopy];

  [v20 setAttachments:lsCopy];
  [v20 setDeviceIDs:iDsCopy];

  [v20 setComponent:componentCopy];
  [v20 setDeleteOnAttach:1];
  v21 = +[TapToRadarKitHelper getLogger];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [TapToRadarKitHelper createDraft:v21 description:? attachmentURLs:? extensionIDs:? deviceIDs:? component:?];
  }

  return v20;
}

void __136__TapToRadarKitHelper_createProblem_componentVersion_componentID_title_description_attachmentURLs_extensionIDs_deviceIDs_displayReason___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1DD354000, a2, OS_LOG_TYPE_ERROR, "TapToRadarKitHelper#createProblem error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end