@interface SKIDirectInvocation
+ (id)makeParseWithDirectInvocationPayload:(id)payload;
+ (id)runSiriKitExecutorCommandWithContext:(id)context parse:(id)parse appBundleId:(id)id;
+ (id)runSiriKitExecutorCommandWithContext:(id)context payload:(id)payload;
+ (id)wrapCommandInStartLocalRequest:(id)request;
@end

@implementation SKIDirectInvocation

+ (id)runSiriKitExecutorCommandWithContext:(id)context payload:(id)payload
{
  contextCopy = context;
  payloadCopy = payload;
  if (!contextCopy)
  {
    +[SKIDirectInvocation runSiriKitExecutorCommandWithContext:payload:];
  }

  v7 = payloadCopy;
  if (!payloadCopy)
  {
    +[SKIDirectInvocation runSiriKitExecutorCommandWithContext:payload:];
  }

  v8 = [SKIDirectInvocation makeParseWithDirectInvocationPayload:payloadCopy];
  v9 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:contextCopy parse:v8 appBundleId:0];

  return v9;
}

+ (id)wrapCommandInStartLocalRequest:(id)request
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D47940];
  requestCopy = request;
  v5 = objc_alloc_init(v3);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v5 setAceId:uUIDString];

  v34[0] = requestCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [v5 setClientBoundCommands:v8];

  v9 = objc_alloc_init(MEMORY[0x277D476E8]);
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID2 UUIDString];
  [v9 setAceId:uUIDString2];

  aceId = [v5 aceId];
  [v9 setRefId:aceId];

  v13 = objc_alloc_init(MEMORY[0x277D476F0]);
  uUID3 = [MEMORY[0x277CCAD78] UUID];
  uUIDString3 = [uUID3 UUIDString];
  [v13 setAceId:uUIDString3];

  aceId2 = [v5 aceId];
  [v13 setRefId:aceId2];

  [v13 setCode:0];
  v33 = v9;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  [v13 setCommands:v17];

  v18 = objc_alloc_init(MEMORY[0x277D47208]);
  uUID4 = [MEMORY[0x277CCAD78] UUID];
  uUIDString4 = [uUID4 UUIDString];
  [v18 setAceId:uUIDString4];

  aceId3 = [v5 aceId];
  [v18 setRefId:aceId3];

  v22 = objc_alloc_init(MEMORY[0x277D476F0]);
  uUID5 = [MEMORY[0x277CCAD78] UUID];
  uUIDString5 = [uUID5 UUIDString];
  [v22 setAceId:uUIDString5];

  aceId4 = [v5 aceId];
  [v22 setRefId:aceId4];

  [v22 setCode:-1];
  v32 = v18;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  [v22 setCommands:v26];

  v31[0] = v13;
  v31[1] = v22;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  [requestCopy setCallbacks:v27];

  aceId5 = [v5 aceId];
  [requestCopy setRefId:aceId5];

  v29 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)runSiriKitExecutorCommandWithContext:(id)context parse:(id)parse appBundleId:(id)id
{
  idCopy = id;
  v8 = MEMORY[0x277D47438];
  parseCopy = parse;
  contextCopy = context;
  v11 = objc_alloc_init(v8);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v11 setAceId:uUIDString];

  [v11 setParameterPrompts:MEMORY[0x277CBEBF8]];
  [v11 setMultiUser:0];
  [v11 setDirectAction:1];
  [v11 setRequiresConditionalMultiUserGrounding:0];
  [v11 setUserInitiatedAction:*MEMORY[0x277D48518]];
  v14 = objc_alloc_init(MEMORY[0x277D47460]);
  [v11 setRemoteExecution:v14];

  [v11 setParse:parseCopy];
  [v11 setTextToSpeechEnabled:{objc_msgSend(contextCopy, "isTextToSpeechEnabled")}];
  [v11 setVoiceTriggerEnabled:{objc_msgSend(contextCopy, "isVoiceTriggerEnabled")}];
  interactionType = [contextCopy interactionType];
  [v11 setInteractionType:interactionType];

  inputOrigin = [contextCopy inputOrigin];
  [v11 setInputOrigin:inputOrigin];

  [v11 setEyesFree:{objc_msgSend(contextCopy, "isEyesFree")}];
  responseMode = [contextCopy responseMode];

  [v11 setMode:responseMode];
  if (idCopy && [idCopy length])
  {
    v18 = objc_alloc_init(MEMORY[0x277D47968]);
    [v18 setBundleId:idCopy];
    v19 = objc_alloc_init(MEMORY[0x277D47448]);
    [v19 setRequestedApp:v18];
    [v11 setAppSelectionState:v19];
  }

  return v11;
}

+ (id)makeParseWithDirectInvocationPayload:(id)payload
{
  v3 = MEMORY[0x277D473B8];
  payloadCopy = payload;
  v5 = objc_alloc_init(v3);
  identifier = [payloadCopy identifier];
  [v5 setInvocationIdentifier:identifier];

  v7 = MEMORY[0x277CCAC58];
  userData = [payloadCopy userData];

  v14 = 0;
  v9 = [v7 dataWithPropertyList:userData format:200 options:0 error:&v14];
  v10 = v14;
  [v5 setData:v9];

  if (v10)
  {
    v11 = SKIDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SKIDirectInvocation *)v10 makeParseWithDirectInvocationPayload:v11];
    }
  }

  v12 = objc_alloc_init(MEMORY[0x277D47400]);
  [v12 setType:*MEMORY[0x277D484E0]];
  [v12 setDirectInvocation:v5];

  return v12;
}

+ (void)makeParseWithDirectInvocationPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_267542000, a2, OS_LOG_TYPE_ERROR, "error serializing SKIDirectInvocationPayload: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end