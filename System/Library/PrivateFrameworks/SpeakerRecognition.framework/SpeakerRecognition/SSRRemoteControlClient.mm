@interface SSRRemoteControlClient
- (BOOL)_isImplicitTrainingRequiredForVoiceProfileId:(id)a3 locale:(id)a4 error:(id *)a5;
- (BOOL)isConnected;
- (BOOL)waitingForConnection:(double)a3 error:(id *)a4;
- (SSRRemoteControlClient)initWithRemoteDeviceUUID:(id)a3;
- (void)_handleServerError:(id)a3;
- (void)_handleServerEvent:(id)a3;
- (void)addImplicitTrainingUtteranceToRemoteFilePath:(id)a3 forVoiceProfileId:(id)a4 withVoiceTriggerCtxt:(id)a5 locale:(id)a6 withOtherCtxt:(id)a7 completion:(id)a8;
- (void)dealloc;
- (void)didDeviceConnect:(id)a3;
- (void)didDeviceDisconnect:(id)a3;
@end

@implementation SSRRemoteControlClient

- (BOOL)_isImplicitTrainingRequiredForVoiceProfileId:(id)a3 locale:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v10, "COMMAND", "queryImplicitTrainingRequired");
    xpc_dictionary_set_string(v10, "languageCode", [v9 UTF8String]);
    if (v8)
    {
      xpc_dictionary_set_string(v10, "voiceProfileId", [v8 UTF8String]);
    }

    if (self->_connection)
    {
      v11 = xpc_remote_connection_send_message_with_reply_sync();
      v12 = MEMORY[0x22AA717E0]();
      v13 = MEMORY[0x277D01970];
      if (v11 && xpc_dictionary_get_BOOL(v11, "replyResult"))
      {
        v14 = 0;
      }

      else
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1004 userInfo:&unk_2839335B8];
        v17 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          v27 = 136315138;
          v28 = "[SSRRemoteControlClient _isImplicitTrainingRequiredForVoiceProfileId:locale:error:]";
          _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s Failed to fetch reply", &v27, 0xCu);
        }
      }

      if (v12 == MEMORY[0x277D86468])
      {
        v22 = objc_alloc(MEMORY[0x277CBEAC0]);
        v23 = [v22 _cs_initWithXPCObject:v11];

        if (v23)
        {
          v16 = [v23 objectForKeyedSubscript:@"isImplicitTrainingRequiredReply"];

          if (v16)
          {
            v24 = [v23 objectForKeyedSubscript:@"isImplicitTrainingRequiredReply"];
            LOBYTE(v16) = [v24 BOOLValue];
          }
        }

        else
        {
          LOBYTE(v16) = 0;
        }

        if (!a5)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1005 userInfo:&unk_2839335E0];

        v19 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          v27 = 136315138;
          v28 = "[SSRRemoteControlClient _isImplicitTrainingRequiredForVoiceProfileId:locale:error:]";
          _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s Wrong reply type received", &v27, 0xCu);
        }

        LOBYTE(v16) = 0;
        v14 = v18;
        if (!a5)
        {
          goto LABEL_18;
        }
      }

      v20 = v14;
      *a5 = v14;
LABEL_18:

LABEL_32:
      goto LABEL_33;
    }

    v21 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v27 = 136315138;
      v28 = "[SSRRemoteControlClient _isImplicitTrainingRequiredForVoiceProfileId:locale:error:]";
      _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s attempt to send message while connection does not exsit", &v27, 0xCu);
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else if (a5)
    {
LABEL_21:
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1003 userInfo:&unk_283933608];
      *a5 = LOBYTE(v16) = 0;
      goto LABEL_32;
    }

    LOBYTE(v16) = 0;
    goto LABEL_32;
  }

  v15 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v27 = 136315138;
    v28 = "[SSRRemoteControlClient _isImplicitTrainingRequiredForVoiceProfileId:locale:error:]";
    _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s Invalid locale", &v27, 0xCu);
    if (a5)
    {
      goto LABEL_10;
    }

LABEL_29:
    LOBYTE(v16) = 0;
    goto LABEL_33;
  }

  if (!a5)
  {
    goto LABEL_29;
  }

LABEL_10:
  [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933590];
  *a5 = LOBYTE(v16) = 0;
LABEL_33:

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)addImplicitTrainingUtteranceToRemoteFilePath:(id)a3 forVoiceProfileId:(id)a4 withVoiceTriggerCtxt:(id)a5 locale:(id)a6 withOtherCtxt:(id)a7 completion:(id)a8
{
  v43 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = [v13 lastPathComponent];
  v19 = [@"VoiceTrigger/SAT_implicit/audio/" stringByAppendingPathComponent:v18];

  v20 = MEMORY[0x277D01970];
  v21 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v38 = "[SSRRemoteControlClient addImplicitTrainingUtteranceToRemoteFilePath:forVoiceProfileId:withVoiceTriggerCtxt:locale:withOtherCtxt:completion:]";
    v39 = 2114;
    v40 = v13;
    v41 = 2114;
    v42 = v14;
    _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s %{public}@, voiceProfileId %{public}@", buf, 0x20u);
  }

  if (v13 && v19)
  {
    v22 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v22 fileExistsAtPath:v13])
    {
      if (v16)
      {
        queue = self->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __142__SSRRemoteControlClient_addImplicitTrainingUtteranceToRemoteFilePath_forVoiceProfileId_withVoiceTriggerCtxt_locale_withOtherCtxt_completion___block_invoke;
        block[3] = &unk_278578318;
        block[4] = self;
        v31 = v14;
        v32 = v16;
        v36 = v17;
        v33 = v15;
        v34 = v19;
        v35 = v13;
        dispatch_async(queue, block);

LABEL_17:
        goto LABEL_18;
      }

      v27 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v38 = "[SSRRemoteControlClient addImplicitTrainingUtteranceToRemoteFilePath:forVoiceProfileId:withVoiceTriggerCtxt:locale:withOtherCtxt:completion:]";
        _os_log_error_impl(&dword_225E12000, v27, OS_LOG_TYPE_ERROR, "%s Invalid locale", buf, 0xCu);
        if (!v17)
        {
          goto LABEL_17;
        }
      }

      else if (!v17)
      {
        goto LABEL_17;
      }

      v25 = MEMORY[0x277CCA9B8];
      v26 = &unk_283933518;
    }

    else
    {
      v24 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v38 = "[SSRRemoteControlClient addImplicitTrainingUtteranceToRemoteFilePath:forVoiceProfileId:withVoiceTriggerCtxt:locale:withOtherCtxt:completion:]";
        v39 = 2114;
        v40 = v13;
        _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s File does not exists : %{public}@", buf, 0x16u);
        if (!v17)
        {
          goto LABEL_17;
        }
      }

      else if (!v17)
      {
        goto LABEL_17;
      }

      v25 = MEMORY[0x277CCA9B8];
      v26 = &unk_2839334F0;
    }

    v28 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:v26];
    (*(v17 + 2))(v17, v28);

    goto LABEL_17;
  }

  if (v17)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_2839334C8];
    (*(v17 + 2))(v17, v22);
    goto LABEL_17;
  }

LABEL_18:

  v29 = *MEMORY[0x277D85DE8];
}

void __142__SSRRemoteControlClient_addImplicitTrainingUtteranceToRemoteFilePath_forVoiceProfileId_withVoiceTriggerCtxt_locale_withOtherCtxt_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v30 = 0;
  v5 = [v2 _isImplicitTrainingRequiredForVoiceProfileId:v3 locale:v4 error:&v30];
  v6 = v30;
  v7 = MEMORY[0x277D01970];
  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"is not";
    if (v5)
    {
      v9 = @"is";
    }

    *buf = 136315394;
    v32 = "[SSRRemoteControlClient addImplicitTrainingUtteranceToRemoteFilePath:forVoiceProfileId:withVoiceTriggerCtxt:locale:withOtherCtxt:completion:]_block_invoke";
    v33 = 2114;
    v34 = v9;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Implicit training %{public}@ required", buf, 0x16u);
  }

  if (v5)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v10, "COMMAND", "addImplicitTrainingUtterance");
    v11 = [*(a1 + 56) _cs_xpcObject];
    xpc_dictionary_set_value(v10, "voiceTriggerEventInfo", v11);

    xpc_dictionary_set_string(v10, "filePath", [*(a1 + 64) UTF8String]);
    v12 = *(a1 + 40);
    if (v12)
    {
      xpc_dictionary_set_string(v10, "voiceProfileId", [v12 UTF8String]);
    }

    [*(a1 + 72) UTF8String];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __142__SSRRemoteControlClient_addImplicitTrainingUtteranceToRemoteFilePath_forVoiceProfileId_withVoiceTriggerCtxt_locale_withOtherCtxt_completion___block_invoke_46;
    v27 = &unk_2785782F0;
    v28 = *(a1 + 72);
    v29 = *(a1 + 80);
    v13 = xpc_file_transfer_create_with_path();
    if (v13)
    {
      xpc_dictionary_set_value(v10, "fileTx", v13);
      v14 = *(a1 + 32);
      v15 = *(v14 + 8);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __142__SSRRemoteControlClient_addImplicitTrainingUtteranceToRemoteFilePath_forVoiceProfileId_withVoiceTriggerCtxt_locale_withOtherCtxt_completion___block_invoke_58;
      v21[3] = &unk_278579218;
      v21[4] = v14;
      v22 = v10;
      v23 = *(a1 + 80);
      dispatch_async(v15, v21);
    }

    else
    {
      v17 = *v7;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v32 = "[SSRRemoteControlClient addImplicitTrainingUtteranceToRemoteFilePath:forVoiceProfileId:withVoiceTriggerCtxt:locale:withOtherCtxt:completion:]_block_invoke";
        _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s Failed to create xpc file transfer", buf, 0xCu);
      }

      v18 = *(a1 + 80);
      if (v18)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1006 userInfo:&unk_283933540];
        (*(v18 + 16))(v18, v19);
      }
    }
  }

  else
  {
    v16 = *(a1 + 80);
    if (v16)
    {
      (*(v16 + 16))(v16, v6);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __142__SSRRemoteControlClient_addImplicitTrainingUtteranceToRemoteFilePath_forVoiceProfileId_withVoiceTriggerCtxt_locale_withOtherCtxt_completion___block_invoke_46(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (a2)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 136315650;
      v17 = "[SSRRemoteControlClient addImplicitTrainingUtteranceToRemoteFilePath:forVoiceProfileId:withVoiceTriggerCtxt:locale:withOtherCtxt:completion:]_block_invoke";
      v18 = 2114;
      v19 = v13;
      v20 = 1026;
      v21 = a2;
      _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s Transfer of file %{public}@ failed : %{public}d", buf, 0x1Cu);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = [MEMORY[0x277CCABB0] numberWithInt:{a2, @"reason"}];
      v15 = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = [v6 errorWithDomain:@"com.apple.speakerrecognition" code:1006 userInfo:v8];
      (*(v5 + 16))(v5, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 136315394;
      v17 = "[SSRRemoteControlClient addImplicitTrainingUtteranceToRemoteFilePath:forVoiceProfileId:withVoiceTriggerCtxt:locale:withOtherCtxt:completion:]_block_invoke";
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Transfer of file %{public}@ succeed", buf, 0x16u);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __142__SSRRemoteControlClient_addImplicitTrainingUtteranceToRemoteFilePath_forVoiceProfileId_withVoiceTriggerCtxt_locale_withOtherCtxt_completion___block_invoke_58(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1[4] + 16))
  {
    v2 = a1[5];
    v3 = *MEMORY[0x277D85DE8];

    xpc_remote_connection_send_message();
  }

  else
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[SSRRemoteControlClient addImplicitTrainingUtteranceToRemoteFilePath:forVoiceProfileId:withVoiceTriggerCtxt:locale:withOtherCtxt:completion:]_block_invoke";
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s attempt to send message while connection does not exsit", &v8, 0xCu);
    }

    v5 = a1[6];
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1003 userInfo:&unk_283933568];
      (*(v5 + 16))(v5, v6);
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)_handleServerError:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    if (v4 == MEMORY[0x277D863F8] || v4 == MEMORY[0x277D863F0])
    {
      v6 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "[SSRRemoteControlClient _handleServerError:]";
        _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s connection disconnected", &v11, 0xCu);
      }

      if (self->_device)
      {
        remote_device_cancel();
      }
    }

    else
    {
      string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86400]);
      v8 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "[SSRRemoteControlClient _handleServerError:]";
        v13 = 2082;
        v14 = string;
        _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s connection error: %{public}s", &v11, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleServerEvent:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    if (MEMORY[0x22AA717E0](v4) == MEMORY[0x277D86480])
    {
      v5 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v8 = 136315138;
        v9 = "[SSRRemoteControlClient _handleServerEvent:]";
        _os_log_error_impl(&dword_225E12000, v5, OS_LOG_TYPE_ERROR, "%s remoteXPC connection get failed", &v8, 0xCu);
      }

      [(SSRRemoteControlClient *)self _handleServerError:v4];
    }
  }

  else
  {
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[SSRRemoteControlClient _handleServerEvent:]";
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s cannot handle server event since event is nil", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__SSRRemoteControlClient_isConnected__block_invoke;
  v5[3] = &unk_2785797D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__SSRRemoteControlClient_isConnected__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 16))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)waitingForConnection:(double)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = [(CSDispatchGroup *)self->_deviceWaitingGroup waitWithTimeout:dispatch_time(0, (a3 * 1000000000.0))];
  if (!v7)
  {
    if ([(SSRRemoteControlClient *)self isConnected])
    {
      v10 = 1;
      goto LABEL_15;
    }

    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[SSRRemoteControlClient waitingForConnection:error:]";
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Device is connected but RemoteXPC service is not connected", &v15, 0xCu);
      if (!a4)
      {
        goto LABEL_14;
      }
    }

    else if (!a4)
    {
      goto LABEL_14;
    }

    v9 = 1003;
    goto LABEL_10;
  }

  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_FAULT))
  {
    v15 = 136315394;
    v16 = "[SSRRemoteControlClient waitingForConnection:error:]";
    v17 = 2050;
    v18 = a3;
    _os_log_fault_impl(&dword_225E12000, v8, OS_LOG_TYPE_FAULT, "%s Device connection waiting %{public}.3f seconds timed out", &v15, 0x16u);
    if (a4)
    {
      goto LABEL_4;
    }
  }

  else if (a4)
  {
LABEL_4:
    v9 = 1002;
LABEL_10:
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:v9 userInfo:0];
    v10 = 0;
    *a4 = v12;
    goto LABEL_15;
  }

LABEL_14:
  v10 = 0;
LABEL_15:
  if (v7)
  {
    result = 0;
  }

  else
  {
    result = v10;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didDeviceDisconnect:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[SSRRemoteControlClient didDeviceDisconnect:]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SSRRemoteControlClient_didDeviceDisconnect___block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__SSRRemoteControlClient_didDeviceDisconnect___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (void)didDeviceConnect:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[SSRRemoteControlClient didDeviceConnect:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SSRRemoteControlClient_didDeviceConnect___block_invoke;
  v9[3] = &unk_278579350;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __43__SSRRemoteControlClient_didDeviceConnect___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  type = remote_device_get_type();
  if (type == 11)
  {
    v4 = *(a1 + 32);
    v5 = remote_device_copy_service();
    if (v5)
    {
      v6 = *(*(a1 + 40) + 8);
      v7 = xpc_remote_connection_create_with_remote_service();
      objc_initWeak(location, *(a1 + 40));
      objc_copyWeak(&v12, location);
      xpc_remote_connection_set_event_handler();
      xpc_remote_connection_activate();
      objc_storeStrong((*(a1 + 40) + 16), v7);
      [*(*(a1 + 40) + 24) leave];
      objc_destroyWeak(&v12);
      objc_destroyWeak(location);
    }

    else
    {
      v10 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *location = 136315394;
        *&location[4] = "[SSRRemoteControlClient didDeviceConnect:]_block_invoke";
        v14 = 2082;
        v15 = "com.apple.corespeech.xpc.remote.control";
        _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s Service: %{public}s not found", location, 0x16u);
      }

      [*(*(a1 + 40) + 24) leave];
    }
  }

  else
  {
    v8 = type;
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[SSRRemoteControlClient didDeviceConnect:]_block_invoke";
      v14 = 2048;
      v15 = v8;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s Connected to unexpected device type : %lu", location, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __43__SSRRemoteControlClient_didDeviceConnect___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleServerEvent:v3];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SSRRemoteControlClient dealloc]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Dealloc of SSRRemoteControlClient, it should close connection", buf, 0xCu);
  }

  if (self->_connection)
  {
    xpc_remote_connection_cancel();
  }

  if (self->_device)
  {
    remote_device_cancel();
  }

  v5.receiver = self;
  v5.super_class = SSRRemoteControlClient;
  [(SSRRemoteControlClient *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (SSRRemoteControlClient)initWithRemoteDeviceUUID:(id)a3
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D018F8] isDarwinOS])
  {
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  if (!v4)
  {
    v18 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[SSRRemoteControlClient initWithRemoteDeviceUUID:]";
      _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s invalid remote deviceUUIDString", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v24.receiver = self;
  v24.super_class = SSRRemoteControlClient;
  v5 = [(SSRRemoteControlClient *)&v24 init];
  if (v5)
  {
    v6 = dispatch_queue_create("SSRRemoteControlClient", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = objc_alloc_init(MEMORY[0x277D01710]);
    deviceWaitingGroup = v5->_deviceWaitingGroup;
    v5->_deviceWaitingGroup = v8;

    objc_initWeak(&location, v5);
    v10 = v5->_queue;
    v29[0] = 0;
    v29[1] = 0;
    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
    [v11 getUUIDBytes:v29];
    v12 = remote_device_copy_device_with_uuid();
    device = v5->_device;
    v5->_device = v12;

    [(CSDispatchGroup *)v5->_deviceWaitingGroup enter];
    v14 = v5->_device;
    v21[1] = MEMORY[0x277D85DD0];
    v21[2] = 3221225472;
    v21[3] = __51__SSRRemoteControlClient_initWithRemoteDeviceUUID___block_invoke;
    v21[4] = &unk_278578548;
    objc_copyWeak(&v22, &location);
    remote_device_set_connected_callback();
    v15 = v5->_device;
    objc_copyWeak(v21, &location);
    remote_device_set_disconnected_callback();
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[SSRRemoteControlClient initWithRemoteDeviceUUID:]";
      v27 = 2114;
      v28 = v4;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s Creating remoteControlClient for deviceUUID %{public}@", buf, 0x16u);
    }

    objc_destroyWeak(v21);
    objc_destroyWeak(&v22);

    objc_destroyWeak(&location);
  }

  self = v5;
  v17 = self;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

void __51__SSRRemoteControlClient_initWithRemoteDeviceUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDeviceConnect:v3];
}

void __51__SSRRemoteControlClient_initWithRemoteDeviceUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDeviceDisconnect:v3];
}

@end