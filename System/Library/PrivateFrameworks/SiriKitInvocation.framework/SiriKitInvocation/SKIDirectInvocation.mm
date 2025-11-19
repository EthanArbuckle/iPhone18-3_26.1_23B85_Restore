@interface SKIDirectInvocation
+ (id)makeParseWithDirectInvocationPayload:(id)a3;
+ (id)runSiriKitExecutorCommandWithContext:(id)a3 parse:(id)a4 appBundleId:(id)a5;
+ (id)runSiriKitExecutorCommandWithContext:(id)a3 payload:(id)a4;
+ (id)wrapCommandInStartLocalRequest:(id)a3;
@end

@implementation SKIDirectInvocation

+ (id)runSiriKitExecutorCommandWithContext:(id)a3 payload:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    +[SKIDirectInvocation runSiriKitExecutorCommandWithContext:payload:];
  }

  v7 = v6;
  if (!v6)
  {
    +[SKIDirectInvocation runSiriKitExecutorCommandWithContext:payload:];
  }

  v8 = [SKIDirectInvocation makeParseWithDirectInvocationPayload:v6];
  v9 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v5 parse:v8 appBundleId:0];

  return v9;
}

+ (id)wrapCommandInStartLocalRequest:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D47940];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  [v5 setAceId:v7];

  v34[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [v5 setClientBoundCommands:v8];

  v9 = objc_alloc_init(MEMORY[0x277D476E8]);
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v10 UUIDString];
  [v9 setAceId:v11];

  v12 = [v5 aceId];
  [v9 setRefId:v12];

  v13 = objc_alloc_init(MEMORY[0x277D476F0]);
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v14 UUIDString];
  [v13 setAceId:v15];

  v16 = [v5 aceId];
  [v13 setRefId:v16];

  [v13 setCode:0];
  v33 = v9;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  [v13 setCommands:v17];

  v18 = objc_alloc_init(MEMORY[0x277D47208]);
  v19 = [MEMORY[0x277CCAD78] UUID];
  v20 = [v19 UUIDString];
  [v18 setAceId:v20];

  v21 = [v5 aceId];
  [v18 setRefId:v21];

  v22 = objc_alloc_init(MEMORY[0x277D476F0]);
  v23 = [MEMORY[0x277CCAD78] UUID];
  v24 = [v23 UUIDString];
  [v22 setAceId:v24];

  v25 = [v5 aceId];
  [v22 setRefId:v25];

  [v22 setCode:-1];
  v32 = v18;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  [v22 setCommands:v26];

  v31[0] = v13;
  v31[1] = v22;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  [v4 setCallbacks:v27];

  v28 = [v5 aceId];
  [v4 setRefId:v28];

  v29 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)runSiriKitExecutorCommandWithContext:(id)a3 parse:(id)a4 appBundleId:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277D47438];
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  [v11 setAceId:v13];

  [v11 setParameterPrompts:MEMORY[0x277CBEBF8]];
  [v11 setMultiUser:0];
  [v11 setDirectAction:1];
  [v11 setRequiresConditionalMultiUserGrounding:0];
  [v11 setUserInitiatedAction:*MEMORY[0x277D48518]];
  v14 = objc_alloc_init(MEMORY[0x277D47460]);
  [v11 setRemoteExecution:v14];

  [v11 setParse:v9];
  [v11 setTextToSpeechEnabled:{objc_msgSend(v10, "isTextToSpeechEnabled")}];
  [v11 setVoiceTriggerEnabled:{objc_msgSend(v10, "isVoiceTriggerEnabled")}];
  v15 = [v10 interactionType];
  [v11 setInteractionType:v15];

  v16 = [v10 inputOrigin];
  [v11 setInputOrigin:v16];

  [v11 setEyesFree:{objc_msgSend(v10, "isEyesFree")}];
  v17 = [v10 responseMode];

  [v11 setMode:v17];
  if (v7 && [v7 length])
  {
    v18 = objc_alloc_init(MEMORY[0x277D47968]);
    [v18 setBundleId:v7];
    v19 = objc_alloc_init(MEMORY[0x277D47448]);
    [v19 setRequestedApp:v18];
    [v11 setAppSelectionState:v19];
  }

  return v11;
}

+ (id)makeParseWithDirectInvocationPayload:(id)a3
{
  v3 = MEMORY[0x277D473B8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 identifier];
  [v5 setInvocationIdentifier:v6];

  v7 = MEMORY[0x277CCAC58];
  v8 = [v4 userData];

  v14 = 0;
  v9 = [v7 dataWithPropertyList:v8 format:200 options:0 error:&v14];
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