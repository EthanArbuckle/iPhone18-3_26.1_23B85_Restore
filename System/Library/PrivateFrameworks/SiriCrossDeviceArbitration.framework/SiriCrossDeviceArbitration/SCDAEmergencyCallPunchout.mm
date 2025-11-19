@interface SCDAEmergencyCallPunchout
- (SCDAEmergencyCallPunchout)init;
@end

@implementation SCDAEmergencyCallPunchout

void __56__SCDAEmergencyCallPunchout_initiateEmergencyCallMyriad__block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[SCDAEmergencyCallPunchout initiateEmergencyCallMyriad]_block_invoke";
    _os_log_impl(&dword_1DA758000, v0, OS_LOG_TYPE_INFO, "%s Punching out to Phone app to make emergency call", buf, 0xCu);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v1 = getTUCallProviderManagerClass_softClass;
  v20 = getTUCallProviderManagerClass_softClass;
  if (!getTUCallProviderManagerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getTUCallProviderManagerClass_block_invoke;
    v22 = &unk_1E85D3638;
    v23 = &v17;
    TelephonyUtilitiesLibraryCore();
    Class = objc_getClass("TUCallProviderManager");
    *(v23[1] + 24) = Class;
    getTUCallProviderManagerClass_softClass = *(v23[1] + 24);
    v1 = v18[3];
  }

  v3 = v1;
  _Block_object_dispose(&v17, 8);
  v4 = objc_alloc_init(v1);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v5 = getTUDialRequestClass_softClass;
  v20 = getTUDialRequestClass_softClass;
  if (!getTUDialRequestClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getTUDialRequestClass_block_invoke;
    v22 = &unk_1E85D3638;
    v23 = &v17;
    TelephonyUtilitiesLibraryCore();
    v6 = objc_getClass("TUDialRequest");
    *(v23[1] + 24) = v6;
    getTUDialRequestClass_softClass = *(v23[1] + 24);
    v5 = v18[3];
  }

  v7 = v5;
  _Block_object_dispose(&v17, 8);
  v8 = [v5 alloc];
  v9 = [v4 emergencyProvider];
  v10 = [v8 initWithProvider:v9];

  [v10 setPerformDialAssist:0];
  [v10 setDialType:1];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v11 = getTUCallSourceIdentifierSpeakerRouteSymbolLoc_ptr;
  v20 = getTUCallSourceIdentifierSpeakerRouteSymbolLoc_ptr;
  if (!getTUCallSourceIdentifierSpeakerRouteSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getTUCallSourceIdentifierSpeakerRouteSymbolLoc_block_invoke;
    v22 = &unk_1E85D3638;
    v23 = &v17;
    __getTUCallSourceIdentifierSpeakerRouteSymbolLoc_block_invoke(buf);
    v11 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v11)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  [v10 setAudioSourceIdentifier:*v11];
  v12 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[SCDAEmergencyCallPunchout initiateEmergencyCallMyriad]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s Emergency beacon handling created dial request %@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__SCDAEmergencyCallPunchout_initiateEmergencyCallMyriad__block_invoke_24;
  v15[3] = &unk_1E85D2920;
  v16 = v10;
  v13 = v10;
  [v4 launchAppForDialRequest:v13 completion:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __56__SCDAEmergencyCallPunchout_initiateEmergencyCallMyriad__block_invoke_24(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SCDALogContextCore;
  if (v3)
  {
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[SCDAEmergencyCallPunchout initiateEmergencyCallMyriad]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1DA758000, v4, OS_LOG_TYPE_ERROR, "%s Emergency beacon initiated call failed, error: %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[SCDAEmergencyCallPunchout initiateEmergencyCallMyriad]_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s Emergency beacon initiated call created: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (SCDAEmergencyCallPunchout)init
{
  v6.receiver = self;
  v6.super_class = SCDAEmergencyCallPunchout;
  v2 = [(SCDAEmergencyCallPunchout *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.myriad_emergncy_call", 0);
    myriadEmergencyCallingQueue = v2->_myriadEmergencyCallingQueue;
    v2->_myriadEmergencyCallingQueue = v3;
  }

  return v2;
}

@end