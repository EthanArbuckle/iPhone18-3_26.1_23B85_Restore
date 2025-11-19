uint64_t sub_100057D94(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v4 transcriptionController:v5 transcriptionStatusChanged:v6];
  }

  return result;
}

void sub_100057E60(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = *v12;
    do
    {
      v4 = 0;
      do
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v11 + 1) + 8 * v4);
        v6 = [*(a1 + 32) delegateToQueue];
        v7 = [v6 objectForKey:v5];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100058038;
        block[3] = &unk_1000EE520;
        v8 = *(a1 + 32);
        block[4] = v5;
        block[5] = v8;
        block[6] = *(a1 + 40);
        dispatch_async(v7, block);

        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v2);
  }
}

uint64_t sub_100058038(double *a1)
{
  v2 = *(a1 + 4);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 4);
    v5 = *(a1 + 5);
    v6 = a1[6];

    return [v4 transcriptionController:v5 transcriptionProgressFractionCompletedChanged:v6];
  }

  return result;
}

void sub_100058100(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = *v13;
    do
    {
      v4 = 0;
      do
      {
        if (*v13 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v12 + 1) + 8 * v4);
        v6 = [*(a1 + 32) delegateToQueue];
        v7 = [v6 objectForKey:v5];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000582D4;
        block[3] = &unk_1000EE520;
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        block[4] = v5;
        block[5] = v8;
        block[6] = v9;
        dispatch_async(v7, block);

        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v2);
  }
}

uint64_t sub_1000582D4(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 transcriptionController:v5 transcriptionProgressTotalUnitCountChanged:v6];
  }

  return result;
}

void sub_1000583D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000583E8(uint64_t a1)
{
  v2 = [SFSpeechAssetManager installedLanguagesForTaskHint:kVM_NGASRTaskHint];
  v3 = [*(a1 + 32) speechRecognizer];
  v4 = [v3 locale];
  v5 = [v4 languageIdentifier];
  *(*(*(a1 + 40) + 8) + 24) = [v2 containsObject:v5];

  v6 = sub_10005435C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 24);
    v11 = asNSStringBOOL();
    v12 = [*(a1 + 32) locale];
    v13 = [v12 languageIdentifier];
    v14 = [*(a1 + 32) speechRecognizer];
    v15 = [v14 locale];
    v16 = [v15 languageIdentifier];
    v17 = 138413570;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@ %p> isDictationModelInstalled %@ [self language: %@, speech language: %@, installed assets: %@]", &v17, 0x3Eu);
  }
}

void sub_10005870C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100058724(uint64_t a1)
{
  result = +[SFSpeechAssetManager isLanguageDetectorInstalled];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10005886C(uint64_t a1)
{
  v2 = [*(a1 + 32) transcriptionOperationQueue];
  [v2 cancelAllOperations];

  v3 = [*(a1 + 32) speechAnalyzerOperationQueue];
  [v3 cancelAllOperations];
}

void sub_100058994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100058B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100058B70(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 13) != v2)
  {
    *(v1 + 13) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

id sub_100058C24(uint64_t a1)
{
  if ([*(a1 + 32) isDictationModelInstalled])
  {
    v2 = sub_10005435C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = [v3 speechRecognizer];
      v5 = [v4 locale];
      v6 = [v5 localeIdentifier];
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Dictation model for locale %@ is installed, request to install Transcription asset model is not processed.", buf, 0x16u);
    }

    return [*(a1 + 32) setTranscriptionAssetModelProcessed:1];
  }

  else
  {
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100058DC0;
    v9[3] = &unk_1000EEDD8;
    v9[4] = v8;
    return [v8 requestTranscriptionAssetModelOperationWithCompletion:v9];
  }
}

void sub_100058DC0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_10005435C();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Request to install Transcription asset model completed successfully.", &v9, 0xCu);
    }

    [*(a1 + 32) setTranscriptionAssetModelProcessed:1];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009D488(a1);
    }
  }
}

void sub_100058F54(uint64_t a1)
{
  if ([*(a1 + 32) isLanguageIDModelInstalled])
  {
    v2 = sub_10005435C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Language ID model is installed, request to install is not processed.", buf, 0xCu);
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100059068;
    v5[3] = &unk_1000EEDD8;
    v5[4] = v4;
    [v4 requestLanguageIDModelOperationWithCompletion:v5];
  }
}

void sub_100059068(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_10005435C();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Request to fetch/install Language ID model completed successfully.", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10009D4F4(a1);
  }
}

void sub_100059218(uint64_t a1)
{
  v2 = +[VMConfiguration getVMLocaleSpeechAssetTypeforLocale:gasrEnabled:](VMConfiguration, "getVMLocaleSpeechAssetTypeforLocale:gasrEnabled:", *(a1 + 32), [*(a1 + 40) isGasrModelAvailable]);
  if ([*(a1 + 40) isSpeechAnalyzerTranscriptionModelInstalledForTaskHint:*(a1 + 32) taskHint:v2])
  {
    v3 = sub_10005435C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) localeIdentifier];
      *buf = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Transcription model for locale %@ is installed, request to install is not processed.", buf, 0x16u);
    }
  }

  else
  {
    v6 = [*(a1 + 40) assetModel];
    v7 = [*(a1 + 32) localeIdentifier];
    v8 = [*(a1 + 40) serialDispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005942C;
    v11[3] = &unk_1000EEE00;
    v10 = *(a1 + 32);
    v9 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    v13 = v2;
    [v6 performInstallAssetModelWithType:1 speechTaskHint:v2 language:v7 queue:v8 completion:v11];
  }
}

void sub_10005942C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_10005435C();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v8 getSpeechAnalyzerAssetIDForLocaleWithTaskHint:*(a1 + 40) taskHint:*(a1 + 48)];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Request to install Transcription model %@ completed successfully.", &v12, 0x16u);
    }

    [*(a1 + 32) setTranscriptionAssetModelProcessed:1];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = [v10 getSpeechAnalyzerAssetIDForLocaleWithTaskHint:*(a1 + 40) taskHint:*(a1 + 48)];
      v12 = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@: Request to install Transcription model %@ failed with error %@.", &v12, 0x20u);
    }
  }
}

void sub_100059654(uint64_t a1)
{
  v2 = objc_alloc_init(VMTranscriptionSanitizeDatabaseOperation);
  v3 = sub_10005435C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Adding transcription database sanitization operation", &v6, 0xCu);
  }

  v5 = [*(a1 + 32) transcriptionOperationQueue];
  [v5 addOperation:v2];
}

void sub_100059A2C(uint64_t a1)
{
  v3 = [SFSpeechAssetManager installedLanguagesForTaskHint:*(a1 + 56)];
  v2 = [*(a1 + 32) getSpeechAnalyzerAssetIDForLocaleWithTaskHint:*(a1 + 40) taskHint:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = [v3 containsObject:v2];
}

void sub_100059BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100059BD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100059CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_100059E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_100059F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10005A040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10005A62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v15;

  _Unwind_Resume(a1);
}

void sub_10005A674(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void sub_10005A868(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_10005AB1C(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "tspt.ctr");
  v2 = qword_10010D950;
  qword_10010D950 = v1;
}

void sub_10005AFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10005B01C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = sub_100002850();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = *(a2 + 16);
      v7 = *(a2 + 20);
      v10 = 136316418;
      v11 = "";
      v12 = 2080;
      v13 = "";
      v14 = 2112;
      v15 = v5;
      v16 = 2048;
      v17 = WeakRetained;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Received state dump request for api %d, reason %d", &v10, 0x36u);
    }

    if (*(a2 + 16) == 3)
    {
      [WeakRetained dumpState];
    }
  }

  return 0;
}

void sub_10005B14C(uint64_t a1)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005B1D8;
  handler[3] = &unk_1000EE650;
  v2 = *(a1 + 32);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);
}

void sub_10005B1D8(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (string && ([NSString stringWithUTF8String:string], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    [*(a1 + 32) executeHandlerForNotificationWithName:v4 userInfo:0];
  }

  else
  {
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009D734(a1, v5);
    }
  }
}

id sub_10005B480(uint64_t a1)
{
  [*(*(a1 + 32) + 48) loadTranscriptionService];
  [*(a1 + 32) queryAndInitVoicemailServices];
  v2 = *(a1 + 32);

  return [v2 dumpState];
}

void sub_10005BA08(uint64_t a1)
{
  v2 = sub_100002850();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v17 = 136316162;
    v18 = "";
    v19 = 2080;
    v20 = "";
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling %@ with user info %@", &v17, 0x34u);
  }

  if ([*(a1 + 40) isEqualToString:kCTIndicatorsVoiceMailNotification])
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [v8 objectForKeyedSubscript:kCTIndicatorVoiceMailSubInstance];
      if (v9)
      {
        v10 = [[NSUUID alloc] initWithUUIDString:v9];
        if (v10)
        {
          v11 = v10;
          v12 = [*(a1 + 32) findContextInfoWithSubscriptionUUID:v10];
          if (v12)
          {
            [*(a1 + 32) executeHandlerForVoicemailInfoNotification:v12 userInfo:*(a1 + 48)];
          }

          else
          {
            v13 = sub_100002850();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(a1 + 32);
              v15 = objc_opt_class();
              v17 = 136315906;
              v18 = "";
              v19 = 2080;
              v20 = "";
              v21 = 2112;
              v22 = v15;
              v23 = 2112;
              v24 = v9;
              v16 = v15;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ subscription for UUID %@ not found", &v17, 0x2Au);
            }
          }
        }
      }
    }
  }

  else
  {
    [*(a1 + 32) handleNotificationWithName:*(a1 + 40) userInfo:*(a1 + 48)];
  }
}

id sub_10005C978(void *a1, void *a2)
{
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a1 subscriptions];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 labelID];
        v11 = [v3 UUIDString];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          v13 = v9;

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = objc_opt_new();
LABEL_11:

  return v13;
}

void sub_10005DEC4(uint64_t a1)
{
  v2 = sub_100002850();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) labelUUIDToService];
    *buf = 136315650;
    v16 = "";
    v17 = 2080;
    v18 = "";
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sPerforming synchronize for all services %@", buf, 0x20u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 32) labelUUIDToService];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) synchronize:1 reason:@"SyncServices"];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void sub_10005E14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005E164(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005E17C(uint64_t a1)
{
  v2 = [*(a1 + 32) telephonyClient];
  v17 = [v2 contexts];

  v3 = [v17 voicePreferred];
  v4 = [v17 findForUuid:v3];

  v5 = [NSUUID alloc];
  v6 = [v4 labelID];
  v7 = [v5 initWithUUIDString:v6];

  v8 = [*(a1 + 32) labelUUIDToService];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v12 = [*(a1 + 32) labelUUIDToService];
    v13 = [v12 allValues];
    v14 = [v13 firstObject];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

void sub_10005E38C(uint64_t a1)
{
  v2 = sub_100002850();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) labelID];
    v4 = v3;
    v5 = *(a1 + 48);
    v10 = 136315906;
    v11 = "";
    if (v5)
    {
      v6 = "";
    }

    else
    {
      v6 = "NOT ";
    }

    v12 = 2080;
    v13 = "";
    v14 = 2112;
    v15 = v3;
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sReport account with labelID %@ is %ssubscribed", &v10, 0x2Au);
  }

  v7 = [*(a1 + 40) telephonyClient];
  v8 = [*(a1 + 32) context];
  v9 = [v7 setVisualVoicemailState:v8 subscribed:*(a1 + 48)];
}

void sub_10005E57C(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 objectForKey:*(a1 + 40)];

  v4 = sub_100002850();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v9 = 136315906;
    v10 = "";
    v11 = 2080;
    v12 = "";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sDo M2A merge for account %@, service %@", &v9, 0x2Au);
  }

  if (v3)
  {
    [v3 do_M2A_merge];
  }

  else
  {
    v6 = sub_100002850();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) labelUUIDToService];
      v9 = 136315906;
      v10 = "";
      v11 = 2080;
      v12 = "";
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sM2A merge cannot find account %@ - fatal error. ALL:%@", &v9, 0x2Au);
    }
  }
}

void sub_10005E868(uint64_t a1)
{
  v2 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v26 = a1;
    v6 = 0;
    v7 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        [v9 integerValue];
        v10 = VMStoreCopyRecordWithIdentifier();
        if (v10)
        {
          v11 = v10;
          v12 = VMStoreRecordCopyDescription(v10);
          if (v12)
          {
            v13 = v12;
            v14 = sub_100002850();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v37 = "";
              v38 = 2080;
              v39 = "";
              v40 = 2112;
              v41 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding Trashed flag to record %@", buf, 0x20u);
            }

            CFRelease(v13);
          }

          if (sub_10008CF88(v11, 1))
          {
            Token = VMStoreRecordGetToken(v11);
            if (Token)
            {
              [v2 addObject:Token];
            }

            else
            {
              v18 = sub_100002850();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = sub_100087658(v11);
                *buf = 136315650;
                v37 = "";
                v38 = 2080;
                v39 = "";
                v40 = 2112;
                v41 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsWithIdentifiersToTrash: No token for record: %@", buf, 0x20u);
              }
            }

            v6 = 1;
          }

          VMStoreRecordRelease(v11);
        }

        else
        {
          v16 = vm_vmd_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v9 integerValue];
            *buf = 134217984;
            v37 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "moveRecordsWithIdentifiersToTrash: record with identifier %ld not found", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v5);

    a1 = v26;
    if (v6)
    {
      VMStoreSave();
    }
  }

  else
  {
  }

  if ([v2 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = [*(a1 + 40) labelUUIDToService];
    v21 = [v20 allValues];

    v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v27 + 1) + 8 * j) moveRecordsToTrash:v2];
        }

        v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }
}

void sub_10005ED54(uint64_t a1)
{
  v2 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v26 = a1;
    v6 = 0;
    v7 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        [v9 integerValue];
        v10 = VMStoreCopyRecordWithIdentifier();
        if (v10)
        {
          v11 = v10;
          v12 = VMStoreRecordCopyDescription(v10);
          if (v12)
          {
            v13 = v12;
            v14 = sub_100002850();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v37 = "";
              v38 = 2080;
              v39 = "";
              v40 = 2112;
              v41 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving Trashed flag from record %@", buf, 0x20u);
            }

            CFRelease(v13);
          }

          if (sub_10008CF88(v11, 0))
          {
            Token = VMStoreRecordGetToken(v11);
            if (Token)
            {
              [v2 addObject:Token];
            }

            else
            {
              v18 = sub_100002850();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = sub_100087658(v11);
                *buf = 136315650;
                v37 = "";
                v38 = 2080;
                v39 = "";
                v40 = 2112;
                v41 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsWithIdentifiersToInbox: No token for record: %@", buf, 0x20u);
              }
            }

            v6 = 1;
          }

          VMStoreRecordRelease(v11);
        }

        else
        {
          v16 = vm_vmd_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v9 integerValue];
            *buf = 134217984;
            v37 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "moveRecordsWithIdentifiersToInbox: record with identifier %ld not found", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v5);

    a1 = v26;
    if (v6)
    {
      VMStoreSave();
    }
  }

  else
  {
  }

  if ([v2 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = [*(a1 + 40) labelUUIDToService];
    v21 = [v20 allValues];

    v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v27 + 1) + 8 * j) moveRecordsToInbox:v2];
        }

        v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }
}

void sub_10005F240(uint64_t a1)
{
  v2 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        [v8 integerValue];
        v9 = VMStoreCopyRecordWithIdentifier();
        if (v9)
        {
          v10 = v9;
          Token = VMStoreRecordGetToken(v9);
          if (Token)
          {
            [v2 addObject:Token];
          }

          else
          {
            v14 = sub_100002850();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = sub_100087658(v10);
              *buf = 136315650;
              v33 = "";
              v34 = 2080;
              v35 = "";
              v36 = 2112;
              v37 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsWithIdentifiersToDeleted: No token for record: %@", buf, 0x20u);
            }
          }

          VMStoreRemoveRecord(v10);
          v16 = VMStoreCopyRecordToDeleted(v10);
          VMStoreRecordRelease(v16);
          VMStoreRecordRelease(v10);
        }

        else
        {
          v12 = vm_vmd_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v8 integerValue];
            *buf = 134217984;
            v33 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "moveRecordsWithIdentifiersToDeleted: record with identifier %ld not found", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    VMStoreSave();
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = [*(a1 + 40) labelUUIDToService];
    v18 = [v17 allValues];

    v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v23 + 1) + 8 * j) moveRecordsToDeleted:v2];
        }

        v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v20);
    }
  }
}

void sub_10005F5FC(uint64_t a1)
{
  v2 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v26 = a1;
    v6 = 0;
    v7 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        [v9 integerValue];
        v10 = VMStoreCopyRecordWithIdentifier();
        if (v10)
        {
          v11 = v10;
          if (sub_10008D0B4(v10, 1))
          {
            v12 = VMStoreRecordCopyDescription(v11);
            if (v12)
            {
              v13 = v12;
              v14 = sub_100002850();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v37 = "";
                v38 = 2080;
                v39 = "";
                v40 = 2112;
                v41 = v13;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding Read flag to record %@", buf, 0x20u);
              }

              CFRelease(v13);
            }

            Token = VMStoreRecordGetToken(v11);
            if (Token)
            {
              [v2 addObject:Token];
            }

            else
            {
              v18 = sub_100002850();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = sub_100087658(v11);
                *buf = 136315650;
                v37 = "";
                v38 = 2080;
                v39 = "";
                v40 = 2112;
                v41 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsWithIdentifiersAsRead: No token for record: %@", buf, 0x20u);
              }
            }

            v6 = 1;
          }

          VMStoreRecordRelease(v11);
        }

        else
        {
          v16 = vm_vmd_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v9 integerValue];
            *buf = 134217984;
            v37 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "markRecordsWithIdentifiersAsRead: record with identifier %ld not found", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v5);

    a1 = v26;
    if (v6)
    {
      VMStoreSave();
    }
  }

  else
  {
  }

  if ([v2 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = [*(a1 + 40) labelUUIDToService];
    v21 = [v20 allValues];

    v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v27 + 1) + 8 * j) markRecordsAsRead:v2];
        }

        v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }
}

void sub_10005FAE8(uint64_t a1)
{
  v2 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v26 = a1;
    v6 = 0;
    v7 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = sub_10008C108(v9);
        if (v10)
        {
          v11 = v10;
          v12 = VMStoreRecordCopyDescription(v10);
          if (v12)
          {
            v13 = v12;
            v14 = sub_100002850();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v37 = "";
              v38 = 2080;
              v39 = "";
              v40 = 2112;
              v41 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding Trashed flag to record %@", buf, 0x20u);
            }

            CFRelease(v13);
          }

          if (sub_10008CF88(v11, 1))
          {
            Token = VMStoreRecordGetToken(v11);
            if (Token)
            {
              [v2 addObject:Token];
            }

            else
            {
              v18 = sub_100002850();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = sub_100087658(v11);
                *buf = 136315650;
                v37 = "";
                v38 = 2080;
                v39 = "";
                v40 = 2112;
                v41 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsWithUniqueIdentifiersToTrash: No token for record: %@", buf, 0x20u);
              }
            }

            v6 = 1;
          }

          VMStoreRecordRelease(v11);
        }

        else
        {
          v16 = vm_vmd_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v9 UUIDString];
            *buf = 138412290;
            v37 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "moveRecordsWithUniqueIdentifiersToTrash: record with UUID %@ not found", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v5);

    a1 = v26;
    if (v6)
    {
      VMStoreSave();
    }
  }

  else
  {
  }

  if ([v2 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = [*(a1 + 40) labelUUIDToService];
    v21 = [v20 allValues];

    v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v27 + 1) + 8 * j) moveRecordsToTrash:v2];
        }

        v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }
}

void sub_10005FFDC(uint64_t a1)
{
  v2 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v26 = a1;
    v6 = 0;
    v7 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = sub_10008C108(v9);
        if (v10)
        {
          v11 = v10;
          v12 = VMStoreRecordCopyDescription(v10);
          if (v12)
          {
            v13 = v12;
            v14 = sub_100002850();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v37 = "";
              v38 = 2080;
              v39 = "";
              v40 = 2112;
              v41 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving Trashed flag from record %@", buf, 0x20u);
            }

            CFRelease(v13);
          }

          if (sub_10008CF88(v11, 0))
          {
            Token = VMStoreRecordGetToken(v11);
            if (Token)
            {
              [v2 addObject:Token];
            }

            else
            {
              v18 = sub_100002850();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = sub_100087658(v11);
                *buf = 136315650;
                v37 = "";
                v38 = 2080;
                v39 = "";
                v40 = 2112;
                v41 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsWithUniqueIdentifiersToInbox: No token for record: %@", buf, 0x20u);
              }
            }

            v6 = 1;
          }

          VMStoreRecordRelease(v11);
        }

        else
        {
          v16 = vm_vmd_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v9 UUIDString];
            *buf = 138412290;
            v37 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "moveRecordsWithUniqueIdentifiersToInbox: record with UUID %@ not found", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v5);

    a1 = v26;
    if (v6)
    {
      VMStoreSave();
    }
  }

  else
  {
  }

  if ([v2 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = [*(a1 + 40) labelUUIDToService];
    v21 = [v20 allValues];

    v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v27 + 1) + 8 * j) moveRecordsToInbox:v2];
        }

        v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }
}

void sub_1000604D0(uint64_t a1)
{
  v2 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = sub_10008C108(v8);
        if (v9)
        {
          v10 = v9;
          Token = VMStoreRecordGetToken(v9);
          if (Token)
          {
            [v2 addObject:Token];
          }

          else
          {
            v14 = sub_100002850();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = sub_100087658(v10);
              *buf = 136315650;
              v33 = "";
              v34 = 2080;
              v35 = "";
              v36 = 2112;
              v37 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsWithUniqueIdentifiersToDeleted: No token for record: %@", buf, 0x20u);
            }
          }

          VMStoreRemoveRecord(v10);
          v16 = VMStoreCopyRecordToDeleted(v10);
          VMStoreRecordRelease(v16);
          VMStoreRecordRelease(v10);
        }

        else
        {
          v12 = vm_vmd_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v8 UUIDString];
            *buf = 138412290;
            v33 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "moveRecordsWithUniqueIdentifiersToDeleted: record with UUID %@ not found", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    VMStoreSave();
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = [*(a1 + 40) labelUUIDToService];
    v18 = [v17 allValues];

    v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v23 + 1) + 8 * j) moveRecordsToDeleted:v2];
        }

        v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v20);
    }
  }
}

void sub_100060894(uint64_t a1)
{
  v2 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v26 = a1;
    v6 = 0;
    v7 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = sub_10008C108(v9);
        if (v10)
        {
          v11 = v10;
          if (sub_10008D0B4(v10, 1))
          {
            v12 = VMStoreRecordCopyDescription(v11);
            if (v12)
            {
              v13 = v12;
              v14 = sub_100002850();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v37 = "";
                v38 = 2080;
                v39 = "";
                v40 = 2112;
                v41 = v13;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding Read flag to record %@", buf, 0x20u);
              }

              CFRelease(v13);
            }

            Token = VMStoreRecordGetToken(v11);
            if (Token)
            {
              [v2 addObject:Token];
            }

            else
            {
              v18 = sub_100002850();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = sub_100087658(v11);
                *buf = 136315650;
                v37 = "";
                v38 = 2080;
                v39 = "";
                v40 = 2112;
                v41 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsWithUniqueIdentifiersAsRead: No token for record: %@", buf, 0x20u);
              }
            }

            v6 = 1;
          }

          VMStoreRecordRelease(v11);
        }

        else
        {
          v16 = vm_vmd_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v9 UUIDString];
            *buf = 138412290;
            v37 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "markRecordsWithUniqueIdentifiersAsRead: record with UUID %@ not found", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v5);

    a1 = v26;
    if (v6)
    {
      VMStoreSave();
    }
  }

  else
  {
  }

  if ([v2 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = [*(a1 + 40) labelUUIDToService];
    v21 = [v20 allValues];

    v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v27 + 1) + 8 * j) markRecordsAsRead:v2];
        }

        v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }
}

uint64_t sub_100060D08(uint64_t a1)
{
  v2 = sub_100002850();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v17 = 136315906;
    v18 = "";
    v19 = 2080;
    v20 = "";
    v21 = 2112;
    v22 = v3;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived remapAccount from:%@ to:%@", &v17, 0x2Au);
  }

  v5 = VMMain_StoreCopyMainRecordsWithLabelID(*(a1 + 32));
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        VMStoreRecordSetLabel(ValueAtIndex, *(a1 + 40));
        ++v7;
      }

      while (v7 < CFArrayGetCount(v6));
    }

    v9 = sub_100002850();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      Count = CFArrayGetCount(v6);
      v17 = 136315650;
      v18 = "";
      v19 = 2080;
      v20 = "";
      v21 = 1024;
      LODWORD(v22) = Count;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sremapped %d records", &v17, 0x1Cu);
    }

    CFRelease(v6);
  }

  else
  {
    v11 = sub_100002850();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "";
      v19 = 2080;
      v20 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%snothing to remap", &v17, 0x16u);
    }
  }

  v12 = VMMap_copyAccountForLabel(*(a1 + 32));
  if (v12)
  {
    v13 = v12;
    v14 = VMMap_copyRecordWithLabel(*(a1 + 32));
    if (v14)
    {
      v15 = v14;
      VMMap_removeRecord();
      CFRelease(v15);
    }

    sub_100093258(v13);
    CFRelease(v13);
  }

  return VMStoreSave();
}

void sub_100060FD8(uint64_t a1)
{
  v2 = sub_100002850();
  v3 = &qword_1000C9000;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "";
    v42 = 2080;
    v43 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sresetNetworkSettings called", buf, 0x16u);
  }

  v4 = [*(a1 + 32) labelUUIDToService];
  [v4 removeAllObjects];

  v5 = [*(a1 + 32) labelUUIDToGreetingController];
  [v5 removeAllObjects];

  v6 = sub_100002850();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "";
    v42 = 2080;
    v43 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sreleased all service controllers", buf, 0x16u);
  }

  v7 = +[VMPreferences sharedInstance];
  [v7 setPreferencesValue:0 forKey:@"LastActiveAccounts"];

  v8 = sub_10008546C();
  v9 = [v8 path];
  v10 = opendir([v9 UTF8String]);

  if (v10)
  {
    for (i = readdir(v10); i; i = readdir(v10))
    {
      d_namlen = i->d_namlen;
      if (i->d_type == 4)
      {
        if (d_namlen < 3)
        {
          continue;
        }

        d_name = i->d_name;
        if (i->d_name[0] != 65 || i->d_name[1] != 45)
        {
          continue;
        }

        v14 = sub_100002850();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v41 = "";
          v42 = 2080;
          v43 = "";
          v44 = 2080;
          v45 = d_name;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving account dir = %s", buf, 0x20u);
        }

        v15 = sub_10008546C();
        v16 = [NSString stringWithUTF8String:d_name];
        v17 = [v15 URLByAppendingPathComponent:v16 isDirectory:1];

        v18 = +[NSFileManager defaultManager];
        v39 = 0;
        v19 = [v18 removeItemAtURL:v17 error:&v39];
        v20 = v39;

        v21 = sub_100002850();
        v22 = v21;
        if (v19)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v41 = "";
            v42 = 2080;
            v43 = "";
            v44 = 2112;
            v45 = v17;
            v23 = v22;
            v24 = "#I %s%sRemoved account directory at %@";
LABEL_23:
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v41 = "";
          v42 = 2080;
          v43 = "";
          v44 = 2112;
          v45 = v17;
          v46 = 2112;
          v47 = v20;
          v32 = v22;
          v33 = "#E %s%sCould not remove directory at %@ due to error %@";
          goto LABEL_31;
        }
      }

      else
      {
        if (d_namlen < 5)
        {
          continue;
        }

        v25 = i->d_name;
        if (strncmp(i->d_name, "SMS-", 4uLL))
        {
          continue;
        }

        v26 = sub_100002850();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v41 = "";
          v42 = 2080;
          v43 = "";
          v44 = 2080;
          v45 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving account SMS plist = %s", buf, 0x20u);
        }

        v27 = sub_10008546C();
        v28 = [NSString stringWithUTF8String:v25];
        v17 = [v27 URLByAppendingPathComponent:v28 isDirectory:0];

        v29 = +[NSFileManager defaultManager];
        v38 = 0;
        v30 = [v29 removeItemAtURL:v17 error:&v38];
        v20 = v38;

        v31 = sub_100002850();
        v22 = v31;
        if (v30)
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v41 = "";
            v42 = 2080;
            v43 = "";
            v44 = 2112;
            v45 = v17;
            v23 = v22;
            v24 = "#I %s%sRemoved account SMS file at %@";
            goto LABEL_23;
          }
        }

        else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v41 = "";
          v42 = 2080;
          v43 = "";
          v44 = 2112;
          v45 = v17;
          v46 = 2112;
          v47 = v20;
          v32 = v22;
          v33 = "#E %s%sCould not remove account SMS file at %@ due to error %@";
LABEL_31:
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x2Au);
        }
      }
    }

    closedir(v10);
    v3 = &qword_1000C9000;
  }

  else
  {
    v34 = sub_100002850();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = sub_10008546C();
      v36 = [v35 path];
      *buf = 136315650;
      v41 = "";
      v42 = 2080;
      v43 = "";
      v44 = 2112;
      v45 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%sunable to open %@", buf, 0x20u);
    }
  }

  v37 = sub_100002850();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = v3[4];
    v41 = "";
    v42 = 2080;
    v43 = "";
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%sresetNetworkSettings complete", buf, 0x16u);
  }
}

void sub_100061770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100061788(uint64_t a1)
{
  v5 = [*(a1 + 32) labelUUIDToService];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100061894(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = VMStoreRecordGetLabel(*(a1 + 40));
  v4 = [*(a1 + 32) serviceForLabel:v3];
  [v4 retrieveDataForRecord:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
  v5 = *(a1 + 40);

  CFRelease(v5);
}

void sub_1000619B4(uint64_t a1)
{
  v2 = [*(a1 + 32) transcriptionService];
  [v2 reportTranscriptionProblemForRecord:*(a1 + 40)];

  v3 = *(a1 + 40);

  CFRelease(v3);
}

void sub_100061AAC(uint64_t a1)
{
  v2 = [*(a1 + 32) transcriptionService];
  [v2 reportTranscriptionRatedAccurate:*(a1 + 48) forRecord:*(a1 + 40)];

  v3 = *(a1 + 40);

  CFRelease(v3);
}

void sub_100061C00(uint64_t a1)
{
  v4 = [*(a1 + 32) transcriptionService];
  v2 = [*(a1 + 40) path];
  v3 = [*(a1 + 48) path];
  [v4 processTranscriptForFileAtPath:v2 transcription:v3 priority:4 completion:*(a1 + 56)];
}

void sub_100061D6C(uint64_t a1)
{
  v3 = [*(a1 + 32) transcriptionService];
  v2 = [*(a1 + 40) path];
  [v3 processPersonalizedTranscriptForFileAtPath:v2 priority:4 completion:*(a1 + 48)];
}

void sub_100062064(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"VVServiceCheckSubscriptionStatusNotification" object:0 userInfo:0];
}

void sub_10006317C(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 isSubscribed];
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 getServiceObjLogPrefix];
      v7 = @"not subscribed";
      v8 = *(a1 + 40);
      v10 = 136315650;
      v11 = v6;
      if (v4)
      {
        v7 = @"subscribed";
      }

      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s Service state is '%@' for account UUID %@", &v10, 0x20u);
    }
  }

  else
  {
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = 136315650;
      v11 = "";
      v12 = 2080;
      v13 = "";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not retrieve subscribed status for account UUID %@", &v10, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000633FC(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 isOnline];
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 getServiceObjLogPrefix];
      v7 = @"offline";
      v8 = *(a1 + 40);
      v10 = 136315650;
      v11 = v6;
      if (v4)
      {
        v7 = @"online";
      }

      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s Service state is '%@' for account UUID %@", &v10, 0x20u);
    }
  }

  else
  {
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = 136315650;
      v11 = "";
      v12 = 2080;
      v13 = "";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not retrieve online status for account UUID %@", &v10, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100063734(uint64_t a1)
{
  v2 = [*(a1 + 32) findContextInfoWithLabelUUID:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) telephonyClient];
    v4 = [v3 carrierBundle:v2];

    if (![v4 isServiceSupportedForSubscription])
    {
      v6 = sub_100002850();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v16 = 136315650;
        v17 = "";
        v18 = 2080;
        v19 = "";
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sCall voicemail is not supported for account UUID %@, voicemail service in not supported in carrier bundle", &v16, 0x20u);
      }

      goto LABEL_16;
    }

    v5 = [*(a1 + 32) telephonyClient];
    v6 = [v5 voicemailPhoneNumber:v2];

    v7 = sub_100002850();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = *(a1 + 40);
        v16 = 136315906;
        v17 = "";
        v18 = 2080;
        v19 = "";
        v20 = 2112;
        v21 = v6;
        v22 = 2112;
        v23 = v9;
        v10 = "#I %s%sCall voicemail with phoneNumber '%@' is supported for account UUID %@";
        v11 = v7;
        v12 = 42;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
      }
    }

    else if (v8)
    {
      v15 = *(a1 + 40);
      v16 = 136315650;
      v17 = "";
      v18 = 2080;
      v19 = "";
      v20 = 2112;
      v21 = v15;
      v10 = "#I %s%sCall voicemail is not supported for account UUID %@, invalid voicemail phoneNumber";
      v11 = v7;
      v12 = 32;
      goto LABEL_14;
    }

LABEL_16:
    goto LABEL_17;
  }

  v4 = sub_100002850();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    v16 = 136315650;
    v17 = "";
    v18 = 2080;
    v19 = "";
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%sCall voicemail is not supported for account UUID %@, could not find context", &v16, 0x20u);
  }

LABEL_17:

  (*(*(a1 + 48) + 16))();
}

void sub_100063AD0(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = (a1 + 40);
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 32) findContextInfoWithLabelUUID:*(a1 + 40)];
    if (v5)
    {
      v6 = [*(a1 + 32) telephonyClient];
      v7 = [v6 carrierBundle:v5];

      v8 = [v7 isPasswordChangeSupportedForSubscription];
      v9 = sub_100002850();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v4 getServiceObjLogPrefix];
        v11 = @"not supported";
        v12 = *v3;
        v14 = 136315650;
        v15 = v10;
        if (v8)
        {
          v11 = @"supported";
        }

        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s Passcode change is %@ for account UUID %@", &v14, 0x20u);
      }
    }

    else
    {
      v7 = sub_100002850();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10009D8D0(v4, (a1 + 40), v7);
      }
    }
  }

  else
  {
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *v3;
      v14 = 136315650;
      v15 = "";
      v16 = 2080;
      v17 = "";
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sRetrieving passcode change information failed for account UUID %@, could not find service", &v14, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100063DD8(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 minimumPasswordLength];
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 getServiceObjLogPrefix];
      v7 = *(a1 + 40);
      v9 = 136315650;
      v10 = v6;
      v11 = 2048;
      v12 = v4;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s Minimum passcode length is %ld for account UUID %@", &v9, 0x20u);
    }
  }

  else
  {
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = 136315650;
      v10 = "";
      v11 = 2080;
      v12 = "";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sRetrieving minimum passcode length failed for account UUID %@, could not find service", &v9, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100064044(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 maximumPasswordLength];
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 getServiceObjLogPrefix];
      v7 = *(a1 + 40);
      v9 = 136315650;
      v10 = v6;
      v11 = 2048;
      v12 = v4;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s Maximum passcode length is %ld for account UUID %@", &v9, 0x20u);
    }
  }

  else
  {
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = 136315650;
      v10 = "";
      v11 = 2080;
      v12 = "";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sRetrieving maximum passcode length failed for account UUID %@, could not find service", &v9, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000642D8(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = sub_100002850();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v3 getServiceObjLogPrefix];
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 136315906;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v3;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s Setting passcode %@ for service %@, accountUUID %@", buf, 0x2Au);
    }

    [v3 setPasscode:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 40);
      *buf = 136315650;
      v17 = "";
      v18 = 2080;
      v19 = "";
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%sSet passcode failed for account UUID %@, could not find service", buf, 0x20u);
    }

    v10 = *(a1 + 56);
    v11 = kVVErrorDomain;
    v14 = NSLocalizedDescriptionKey;
    v15 = @"Could not find service";
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [NSError errorWithDomain:v11 code:1029 userInfo:v12];
    (*(v10 + 16))(v10, 0, v13);
  }
}

void sub_1000645B4(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 mailboxUsage];
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 getServiceObjLogPrefix];
      v7 = *(a1 + 40);
      *buf = 136315650;
      v15 = v6;
      v16 = 2048;
      v17 = v4;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s Storage usage is %lu for account UUID %@", buf, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v9 = kVVErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Could not find service";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [NSError errorWithDomain:v9 code:1021 userInfo:v10];

    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 136315650;
      v15 = "";
      v16 = 2080;
      v17 = "";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sRetrieving storage usage failed for account UUID %@, could not find service", buf, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100064BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100064BE8(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 48) objectForKeyedSubscript:kVMAccountSubscribedKey];
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "";
      v58 = 2080;
      v59 = "";
      v60 = 2112;
      v61 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sSubscribed property %@", buf, 0x20u);
    }

    v6 = [*(a1 + 48) objectForKeyedSubscript:kVMAccountOnlineKey];
    v7 = sub_100002850();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "";
      v58 = 2080;
      v59 = "";
      v60 = 2112;
      v61 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sOnline property %@", buf, 0x20u);
    }

    v8 = [*(a1 + 48) objectForKeyedSubscript:kVMAccountProvisionedKey];
    v9 = sub_100002850();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "";
      v58 = 2080;
      v59 = "";
      v60 = 2112;
      v61 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sProvisioned property %@", buf, 0x20u);
    }

    v10 = [*(a1 + 48) objectForKeyedSubscript:kVMAccountCallVoicemailSupportedKey];
    v11 = sub_100002850();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "";
      v58 = 2080;
      v59 = "";
      v60 = 2112;
      v61 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sCallVoicemailSupported property %@", buf, 0x20u);
    }

    v12 = [*(a1 + 48) objectForKeyedSubscript:kVMAccountUsageKey];
    v13 = sub_100002850();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "";
      v58 = 2080;
      v59 = "";
      v60 = 2112;
      v61 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sMailbox usage property %@", buf, 0x20u);
    }

    if (!(v4 | v8))
    {
      goto LABEL_37;
    }

    v14 = v3;
    v15 = v4;
    v16 = v10;
    v17 = v6;
    v18 = +[NSMutableDictionary dictionary];
    v49 = [*(a1 + 32) findContextInfoWithLabelUUID:*(a1 + 40)];
    [v49 uuid];
    v19 = v51 = v8;
    v20 = [v19 UUIDString];
    v50 = v18;
    [v18 setObject:v20 forKey:kCTIndicatorVoiceMailSubInstance];

    if (v51)
    {
      if ([v51 BOOLValue])
      {
        v21 = @"STATE?state=Active";
      }

      else
      {
        v21 = @"STATE?state=NewAccount";
      }

      v23 = v18;
      [v18 setObject:v21 forKey:kCTIndicatorsVoiceMailURL];
      v6 = v17;
      v10 = v16;
      v4 = v15;
      v3 = v14;
      goto LABEL_34;
    }

    v23 = v18;
    v6 = v17;
    v10 = v16;
    v4 = v15;
    v3 = v14;
    if (v4)
    {
      if ([v4 BOOLValue])
      {
        v47 = v12;
        v48 = v10;
        v24 = [*(a1 + 32) carrierAccountDataSource];
        v25 = [v24 accounts];

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v26 = v25;
        v27 = [v26 countByEnumeratingWithState:&v52 objects:v66 count:16];
        if (v27)
        {
          v28 = v27;
          v44 = v6;
          v45 = v4;
          v46 = v14;
          v29 = 0;
          v30 = 0;
          v31 = *v53;
          do
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v53 != v31)
              {
                objc_enumerationMutation(v26);
              }

              v33 = *(*(&v52 + 1) + 8 * i);
              v34 = [v33 UUID];
              v35 = [v34 isEqual:*(a1 + 40)];

              if (v35)
              {
                v30 = [v33 isProvisioned];
                v29 = 1;
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v52 objects:v66 count:16];
          }

          while (v28);

          if (v29)
          {
            v4 = v45;
            v3 = v46;
            v6 = v44;
            v23 = v50;
            if ((v30 & 1) == 0)
            {
LABEL_31:
              v36 = @"STATE?state=NewAccount";
LABEL_52:
              [v23 setObject:v36 forKey:kCTIndicatorsVoiceMailURL];

              v12 = v47;
              v10 = v48;
              goto LABEL_34;
            }

LABEL_51:
            v36 = @"STATE?state=Active";
            goto LABEL_52;
          }

          v4 = v45;
          v3 = v46;
          v6 = v44;
        }

        else
        {

          v30 = 0;
        }

        v23 = v50;
        v42 = sub_100002850();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(a1 + 40);
          *buf = 136315650;
          v57 = "";
          v58 = 2080;
          v59 = "";
          v60 = 2112;
          v61 = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not find account service for account UUID %@", buf, 0x20u);
        }

        if ((v30 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_51;
      }

      [v50 setObject:@"STATE?state=NotAvailable" forKey:kCTIndicatorsVoiceMailURL];
    }

LABEL_34:
    v37 = sub_100002850();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 40);
      *buf = 136315906;
      v57 = "";
      v58 = 2080;
      v59 = "";
      v60 = 2112;
      v61 = v23;
      v62 = 2112;
      v63 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%sPosting notification %@ for account UUID %@", buf, 0x2Au);
    }

    [*(a1 + 32) executeHandlerForNotificationWithName:kCTIndicatorsVoiceMailNotification userInfo:v23];
    v8 = v51;
LABEL_37:
    if (v6)
    {
      [v3 setOnline:{objc_msgSend(v6, "BOOLValue")}];
    }

    if (v12)
    {
      [v3 setMailboxUsage:{objc_msgSend(v12, "unsignedIntValue")}];
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v39 = sub_100002850();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 40);
      v40 = *(a1 + 48);
      *buf = 136316162;
      v57 = "";
      v58 = 2080;
      v59 = "";
      v60 = 2112;
      v61 = v40;
      v62 = 2112;
      v63 = v3;
      v64 = 2112;
      v65 = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sSetting properties %@ for service %@: accountUUID: %@", buf, 0x34u);
    }

    goto LABEL_44;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v4 = sub_100002850();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 40);
    *buf = 136315650;
    v57 = "";
    v58 = 2080;
    v59 = "";
    v60 = 2112;
    v61 = v22;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not retrieve service provider for account UUID %@", buf, 0x20u);
  }

LABEL_44:
}

void sub_1000654B8(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToGreetingController];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 greetingWithCompletion:*(a1 + 48)];
  }

  else
  {
    v4 = sub_100002850();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 136315650;
      v13 = "";
      v14 = 2080;
      v15 = "";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%sRetrieving greeting failed for account UUID %@, could not find service", buf, 0x20u);
    }

    v6 = *(a1 + 48);
    v7 = kVVErrorDomain;
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Could not find service";
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [NSError errorWithDomain:v7 code:1034 userInfo:v8];
    (*(v6 + 16))(v6, 0, v9);
  }
}

void sub_100065758(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToGreetingController];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 setGreeting:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v4 = sub_100002850();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 136315650;
      v13 = "";
      v14 = 2080;
      v15 = "";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%sSet greeting failed for account UUID %@, could not find service", buf, 0x20u);
    }

    v6 = *(a1 + 56);
    v7 = kVVErrorDomain;
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Could not find service";
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [NSError errorWithDomain:v7 code:1036 userInfo:v8];
    (*(v6 + 16))(v6, 0, v9);
  }
}

void sub_1000659D0(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v4 = sub_100002850();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v12 = *(a1 + 40);
    v17 = 136315650;
    v18 = "";
    v19 = 2080;
    v20 = "";
    v21 = 2112;
    v22 = v12;
    v13 = "#W %s%sRetrieving greeting change information failed for account UUID %@, could not find service";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v13, &v17, 0x20u);
    goto LABEL_18;
  }

  if (![v3 isSubscribed])
  {
    v4 = sub_100002850();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v14 = [v3 getServiceObjLogPrefix];
    v15 = *(a1 + 40);
    v17 = 136315650;
    v18 = v14;
    v19 = 2112;
    v20 = @"not supported";
    v21 = 2112;
    v22 = v15;
    v13 = "#I %s Greeting change is %@ for account UUID %@, service state is not subscribed";
    goto LABEL_13;
  }

  v4 = [*(a1 + 32) findContextInfoWithLabelUUID:*(a1 + 40)];
  if (v4)
  {
    v5 = [*(a1 + 32) telephonyClient];
    v6 = [v5 carrierBundle:v4];

    v7 = [v6 isGreetingChangeSupportedForSubscription];
    v8 = sub_100002850();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 getServiceObjLogPrefix];
      v10 = @"not supported";
      v11 = *(a1 + 40);
      v17 = 136315650;
      v18 = v9;
      if (v7)
      {
        v10 = @"supported";
      }

      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s Greeting change is %@ for account UUID %@", &v17, 0x20u);
    }
  }

  else
  {
    v6 = sub_100002850();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = 136315650;
      v18 = "";
      v19 = 2080;
      v20 = "";
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%sRetrieving greeting change information failed for account UUID %@, could not find context", &v17, 0x20u);
    }
  }

LABEL_18:
  (*(*(a1 + 48) + 16))();
}

void sub_100065D80(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 maximumGreetingDuration];
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 getServiceObjLogPrefix];
      v7 = *(a1 + 40);
      v10 = 136315650;
      v11 = v6;
      v12 = 2048;
      v13 = v4;
      v14 = 2112;
      v15 = v7;
      v8 = "#I %s Maximum greeting duration is %lu for account UUID %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x20u);
    }
  }

  else
  {
    v5 = sub_100002850();
    v4 = 0.0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = 136315650;
      v11 = "";
      v12 = 2080;
      v13 = "";
      v14 = 2112;
      v15 = v9;
      v8 = "#W %s%sRetrieving maximum greeting duration failed for account UUID %@, could not find service";
      goto LABEL_6;
    }
  }

  (*(*(a1 + 48) + 16))(v4);
}

void sub_100066CD4(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "main.ctl");
  v2 = qword_10010D960;
  qword_10010D960 = v1;
}

void sub_100066D38(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_100066F0C(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_1000670B0;
          v11[3] = &unk_1000ED450;
          v10 = *(a1 + 32);
          v11[4] = v7;
          v11[5] = v10;
          dispatch_async(v9, v11);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_10006721C(uint64_t a1)
{
  v4 = [*(a1 + 32) accountDir];
  v1 = [v4 URLByAppendingPathComponent:@"Checkpoint.plist" isDirectory:0];
  v2 = [v1 path];
  v3 = qword_10010D970;
  qword_10010D970 = v2;
}

void sub_100067858(uint64_t a1)
{
  v2 = [NSArray alloc];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v7 pathForResource:@"VerifierKeys" ofType:@"plist"];
  v4 = [v2 initWithContentsOfFile:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

BOOL sub_100068F2C(id a1, NSString *a2, NSDictionary *a3)
{
  v3 = [(NSString *)a2 pathExtension];
  v4 = [v3 isEqualToString:@"asset"];

  return v4;
}

id sub_10006903C(uint64_t a1, uint64_t a2)
{
  v3 = [@"/var/MobileAsset/Assets/com_apple_MobileAsset_EmbeddedSpeech" stringByAppendingPathComponent:a2];
  v4 = [*(a1 + 32) speechAssetHasConfidenceModel:v3];

  return v4;
}

void sub_100069A38(uint64_t a1, uint64_t a2)
{
  v3 = [VMVoicemail messageForRecord:a2 forContexts:0 andIsoCodes:0];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

id sub_100069D48(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = vm_vmd_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromSelector(*(v2 + 6));
      v5 = [NSString stringWithFormat:@"Transcription cancelled for voicemail: %@. Removing from attempted voicemails.", *(v2 + 4)];
      *buf = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }

    return [*(v2 + 5) cancelAttemptedVoicemailTranscriptionForVoicemail:*(v2 + 4)];
  }

  return result;
}

id sub_100069E48(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = vm_vmd_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromSelector(*(v2 + 6));
      v5 = [NSString stringWithFormat:@"Transcription cancelled for voicemail: %@. Removing from attempted voicemails.", *(v2 + 4)];
      *buf = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }

    return [*(v2 + 5) cancelAttemptedVoicemailTranscriptionForVoicemail:*(v2 + 4)];
  }

  return result;
}

void sub_10006A3A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = [NSString stringWithFormat:@"Queueing voicemail for retranscription: %@", v3];
    *buf = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  [*(a1 + 32) processTranscriptForVoicemail:v3];
}

void sub_10006A7C8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void sub_10006A80C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_10006B834()
{
  if (qword_10010D990 != -1)
  {
    sub_10009DF60();
  }

  v1 = qword_10010D988;

  return v1;
}

void sub_10006B878(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "imap.syn");
  v2 = qword_10010D988;
  qword_10010D988 = v1;
}

void sub_10006C3C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = v8;
  if (v8 && a4 && a5)
  {
    [v8 onVMStoreRecordFlagsChangedNotification:a3 object:a4 userInfo:a5];
  }

  else
  {
    v10 = vm_vmd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10009DFB8(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

void sub_10006C45C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = v8;
  if (v8 && a4 && a5)
  {
    [v8 onVMStoreRecordFlagsDidChangeNotification:a3 object:a4 userInfo:a5];
  }

  else
  {
    v10 = vm_vmd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10009DFF0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

void sub_10006C4F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = v8;
  if (v8 && a4 && a5)
  {
    [v8 onVMStoreRecordFlagsWillChangeNotification:a3 object:a4 userInfo:a5];
  }

  else
  {
    v10 = vm_vmd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10009E028(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

id sub_10006C594(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [NSNumber numberWithInteger:1];
  [v2 setObject:v3 forKey:@"NotAvailable"];

  v4 = [NSNumber numberWithInteger:2];
  [v2 setObject:v4 forKey:@"NewAccount"];

  v5 = [NSNumber numberWithInteger:3];
  [v2 setObject:v5 forKey:@"Active"];

  if (v1)
  {
    v6 = [v2 objectForKeyedSubscript:v1];
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10006C890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = IMAPService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10006CAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006CB90(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 441) != v2)
  {
    *(v1 + 441) = v2;
  }

  return result;
}

void sub_10006CD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id sub_10006CD40(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10006CD74(uint64_t a1)
{
  v2 = objc_retainBlock(*(*(a1 + 32) + 448));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10006CE74(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 448) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 448);
    *(v5 + 448) = v4;
  }
}

void sub_10006CFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10006CFE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006D0C0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 456);
  if (v3 != v2)
  {
    [v3 invalidateServiceAccount];
    [*(a1 + 32) scheduleReleaseAllAccountConnections:*(*(a1 + 32) + 456) reason:@"setServiceAccount" forService:*(a1 + 32)];
    v4 = *(a1 + 40);
    v5 = (*(a1 + 32) + 456);

    objc_storeStrong(v5, v4);
  }
}

void sub_10006D238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006D2E0(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 416) != v2)
  {
    *(v1 + 416) = v2;
  }

  return result;
}

void sub_10006D3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006D450(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 417) != v2)
  {
    *(v1 + 417) = v2;
  }

  return result;
}

void sub_10006D520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFString *sub_10006E134(int a1)
{
  v1 = @"Unknown";
  if (a1 == 30)
  {
    v1 = @"IPv6";
  }

  if (a1 == 2)
  {
    return @"IPv4";
  }

  else
  {
    return v1;
  }
}

BOOL sub_10006E170(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 >= 8)
  {
    v3 = a2;
    v4 = a1;
    v5 = a3 >> 3;
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = *v4++;
      if (v6 != v8)
      {
        return 0;
      }
    }

    while (--v5);
  }

  return (a3 & 7) == 0 || !((a1[a3 >> 3] ^ a2[a3 >> 3]) >> (8 - (a3 & 7)));
}

void sub_10007045C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [MFMonitoredInvocation invocationWithSelector:"releaseAllConnections" target:*(a1 + 32) taskName:@"releaseAllConnections" priority:3 canBeCancelled:0];
    [v3 retainArguments];
    v4 = [WeakRetained _messageChangeQueue];
    v5 = sub_100026660(WeakRetained[53]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained getServiceObjLogPrefix];
      v7 = [v3 monitor];
      v8 = [v3 monitor];
      v9 = *(a1 + 40);
      v14 = 136316674;
      v15 = v6;
      v16 = 2080;
      v17 = " ";
      v18 = 2112;
      v19 = v4;
      v20 = 2048;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: %@; dropping connections => %@", &v14, 0x48u);
    }

    v10 = *(a1 + 48);
    v11 = [v3 monitor];
    [v10 addScheduledActivity:v11];

    [v4 addInvocation:v3];
  }

  else
  {
    v12 = vm_imap_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "doing postmortem releaseAllConnections %@;", &v14, 0xCu);
    }

    [*(a1 + 32) releaseAllConnections];
  }
}

void sub_100071E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100071EC4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = sub_100026660(WeakRetained[53]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = [v5 getServiceObjLogPrefix];
      v12 = 2080;
      v13 = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sPerforming STATE request beacon retry.", &v10, 0x16u);
    }

    if (xpc_activity_get_state(v3) == 2)
    {
      [v5 setBeaconActive:0];
      [v5 _startBeacon];
      if (!xpc_activity_set_state(v3, 5))
      {
        v7 = sub_100026660(v5[53]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v5 getServiceObjLogPrefix];
          v9 = [v5 beaconRetryActivityIdentifier];
          v10 = 136315650;
          v11 = v8;
          v12 = 2080;
          v13 = " ";
          v14 = 2112;
          v15 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sUnable to transition %@ activity to state done", &v10, 0x20u);
        }
      }
    }
  }
}

id sub_1000722F4(uint64_t a1)
{
  [*(a1 + 32) cancelDelayedSynchronize:@"AuthenticationFailed"];
  v2 = *(a1 + 32);

  return [v2 resetDelayedSynchronizationAttemptCount];
}

uint64_t sub_100073494(const __CFArray *a1, const __CFArray *a2)
{
  v3 = [CFArrayGetValueAtIndex(a1 1)];
  v4 = [CFArrayGetValueAtIndex(a2 1)];
  if (v3 < v4)
  {
    return -1;
  }

  else
  {
    return v3 > v4;
  }
}

void sub_100073B30(uint64_t a1)
{
  v2 = sub_100026660(*(*(a1 + 32) + 424));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) getServiceObjLogPrefix];
    v4 = *(a1 + 32);
    v7 = 136315650;
    v8 = v3;
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    v12 = objc_opt_class();
    v5 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ posting VVServiceMailboxUsageChangedNotification", &v7, 0x20u);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"VVServiceMailboxUsageChangedNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

void sub_100074F2C(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v4 = a1[6];
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v2 _syncCompletedWithError:&v4 error:a1[5]];
  if (v5)
  {
    sub_100083FCC(v5);
  }
}

void sub_100074F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100083FCC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100074FA0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100074FBC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_100083FCC(v1);
  }
}

id sub_1000754A8(uint64_t a1)
{
  [*(a1 + 32) cancelDelayedSynchronize:@"SyncCompleted"];
  v2 = *(a1 + 32);

  return [v2 resetDelayedSynchronizationAttemptCount];
}

void sub_10007599C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained scheduleSyncTask:*(a1 + 48) reason:*(a1 + 32)];
  }
}

void sub_100076BD0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x100076B74);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007789C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    v17 = sub_100026660(*&v9[v13]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10009E148([v9 getServiceObjLogPrefix], v16, &a9);
    }

    [IMAPServiceActivityController setRemainingBodyRetries:0];
    objc_end_catch();
    JUMPOUT(0x100077864);
  }

  _Unwind_Resume(a1);
}

void sub_100077F18(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);

  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_100077F6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = sub_100026660(WeakRetained[53]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 getServiceObjLogPrefix];
      v6 = *(a1 + 40);
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = " ";
      v11 = 1024;
      v12 = v6;
      v13 = 2080;
      v14 = asStringBOOL();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sDone processing transcription for record: %d finished: %s", &v7, 0x26u);
    }
  }
}

void sub_1000780A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = sub_100026660(WeakRetained[53]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 getServiceObjLogPrefix];
      v6 = *(a1 + 40);
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = " ";
      v11 = 1024;
      v12 = v6;
      v13 = 2080;
      v14 = asStringBOOL();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sDone processing transcription for record: %d finished: %s", &v7, 0x26u);
    }
  }
}

void sub_100078E84(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceAccount];
  v3 = [v2 accountStore];

  v4 = sub_1000931E8(v3, *(a1 + 40));
  v5 = v4;
  if (v4)
  {
    v6 = VMStoreRecordCopyDescription(v4);
    v7 = sub_100026660(*(*(a1 + 32) + 424));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) getServiceObjLogPrefix];
      v29 = 136315906;
      v30 = v8;
      v31 = 2080;
      v32 = " ";
      v33 = 2112;
      v34 = v3;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved audio data for account store %@, record %@", &v29, 0x2Au);
    }

    sub_100092B3C(v3, v5, 2);
    [v3 save];
    v9 = sub_100092820(v3, v5);
    v10 = +[NSDate date];
    v11 = [NSDate dateWithTimeIntervalSince1970:v9];
    [v10 timeIntervalSinceDate:v11];
    v13 = v12;

    if (v13 >= 3600.0)
    {
      v17 = sub_100026660(*(*(a1 + 32) + 424));
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [*(a1 + 32) getServiceObjLogPrefix];
        v29 = 136315394;
        v30 = v23;
        v31 = 2080;
        v32 = " ";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sNot reporting voicemail message length because voicemail is too old", &v29, 0x16u);
      }
    }

    else
    {
      v14 = sub_100092850(v3, v5);
      v15 = [*(a1 + 32) contextInfo];
      v16 = [v15 slotID];

      v17 = [*(a1 + 32) serviceMCC];
      v18 = [*(a1 + 32) serviceMNC];
      v19 = +[VMAWDReporter sharedInstance];
      [v19 reportVoicemailDownloadedWithDuration:v14 slotID:v16 mcc:v17 mnc:v18];
    }

    v24 = sub_100092A8C(v3, v5);
    DeletedRecordWithToken = VMStoreCopyFirstDeletedRecordWithToken(v24, 0);
    v26 = *(a1 + 32);
    if (DeletedRecordWithToken)
    {
      v27 = sub_100026660(v26[53]);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [*(a1 + 32) getServiceObjLogPrefix];
        v29 = 136315650;
        v30 = v28;
        v31 = 2080;
        v32 = " ";
        v33 = 2112;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%sRecord with the same token '%@' is found in the deleted table, cancel copying the audio data", &v29, 0x20u);
      }

      CFRelease(DeletedRecordWithToken);
    }

    else
    {
      [v26 addDataForRecord:v5];
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    CFRelease(v5);
  }

  else
  {
    v20 = sub_100026660(*(*(a1 + 32) + 424));
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 32) getServiceObjLogPrefix];
      v22 = *(a1 + 40);
      v29 = 136315906;
      v30 = v21;
      v31 = 2080;
      v32 = " ";
      v33 = 2112;
      v34 = v3;
      v35 = 1024;
      LODWORD(v36) = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved audio data for account store %@, record with identifier %u not found", &v29, 0x26u);
    }
  }
}

void sub_10007D908(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  if (WeakRetained)
  {
    [v3 setSyncScheduled:0];
    [*(a1 + 32) _attemptDelayedSynchronize];
  }

  else
  {
    v4 = sub_100026660(v3[53]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) getServiceObjLogPrefix];
      v6 = 136315394;
      v7 = v5;
      v8 = 2080;
      v9 = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sscheduleDelayedMerge: delayed merge canceled", &v6, 0x16u);
    }
  }
}

NSString *__cdecl sub_10007E5FC(id a1, NSString *a2, NSString *a3, BOOL a4)
{
  v5 = a2;
  v6 = a3;
  if ([(NSString *)v5 length]&& [(NSString *)v5 characterAtIndex:1])
  {
    v7 = sub_100025188(v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10007E6A4(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = VMStoreRecordCopyCallbackNumber(a2);
  if (v5)
  {
    v6 = (*(*(a1 + 32) + 16))();
    if ([v6 length])
    {
      VMStoreRecordSetCallbackNumber(a2);
    }
  }

  v7 = VMStoreRecordCopyReceiver(a2);
  if (v7)
  {
    v8 = (*(*(a1 + 32) + 16))();
    if ([v8 length])
    {
      VMStoreRecordSetReceiver(a2);
    }
  }

  v9 = VMStoreRecordCopySender(a2);
  if (v9)
  {
    v10 = (*(*(a1 + 32) + 16))();
    if ([v10 length])
    {
      VMStoreRecordSetSender(a2);
    }
  }
}

void sub_10007F138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {

    if (a2 == 2)
    {
      v29 = objc_begin_catch(exception_object);
      v30 = sub_100026660(*&v22[v26]);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10009E190([v22 getServiceObjLogPrefix], v29, &a22);
      }

      objc_end_catch();
      JUMPOUT(0x10007F044);
    }

    objc_begin_catch(exception_object);
    JUMPOUT(0x10007F048);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10007F334(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100083F24();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_10007FD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *exc_buf, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a2)
  {

    if (a2 == 2)
    {
      v40 = objc_begin_catch(a1);
      v41 = sub_100026660(*&v32[a15]);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10009E1D8([v32 getServiceObjLogPrefix], v40, &a30);
      }

      objc_end_catch();
      JUMPOUT(0x10007FBC8);
    }

    objc_begin_catch(a1);
    JUMPOUT(0x10007FBCCLL);
  }

  _Unwind_Resume(a1);
}

void sub_100081910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_100083FCC(a17);
  }

  _Unwind_Resume(a1);
}

void sub_100081E08(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.visualvoicemail.VVVerifierChanged", 0, 0, 1u);
  v3 = sub_100026660(*(*(a1 + 32) + 424));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) getServiceObjLogPrefix];
    *buf = 136315394;
    v11 = v4;
    v12 = 2080;
    v13 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sPosting VMCarrierIMAPParametersChangedNotification", buf, 0x16u);
  }

  v5 = [*(a1 + 32) serviceLabelID];
  v8[1] = @"VMCarrierNotificationUserInfoIMAPParameters";
  v9[0] = v5;
  v9[1] = *(a1 + 40);
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"VMCarrierIMAPParametersChangedNotification" object:0 userInfo:v6];
}

void sub_1000827B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100082800(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _onQueue_setPasscode:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 40);
    v7 = NSLocalizedDescriptionKey;
    v8 = @"Cannot execute on deleted object";
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:kVVErrorDomain code:1029 userInfo:v5];
    (*(v4 + 16))(v4, 0, v6);
  }
}

void sub_100083F3C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100083F98(exception, a1);
}

std::logic_error *sub_100083F98(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100083FCC(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_100084038(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    sub_100083FCC(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100083FCC(v3);
  }

  return a1;
}

uint64_t sub_100084090(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  *(a2 + 12) = 2080;
  return result;
}

uint64_t sub_1000840A4(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2080;
  return result;
}

void sub_1000840B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 14) = v3;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
}

void sub_1000840CC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_1000840E8(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x20u);
}

void sub_100084104(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_100084120()
{
  if ((byte_10010D5B8 & 1) == 0)
  {
    byte_10010D5B8 = 1;
    return __cxa_atexit(sub_100083F20, &stru_10010D568, &_mh_execute_header);
  }

  return result;
}

void sub_1000841FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10010D998;
  qword_10010D998 = v2;
}

void sub_100084364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 2);

  _Unwind_Resume(a1);
}

void sub_1000843F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 2);

  _Unwind_Resume(a1);
}

void sub_1000844D0(uint64_t a1)
{
  v2 = +[CPNetworkObserver sharedNetworkObserver];
  [v2 addNetworkReachableObserver:*(a1 + 32) selector:"networkReachabilityChanged:"];
}

void sub_1000845D4(uint64_t a1)
{
  v2 = +[CPNetworkObserver sharedNetworkObserver];
  [v2 removeNetworkReachableObserver:*(a1 + 32)];
}

void sub_100084864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  os_unfair_lock_unlock(v12 + 2);

  _Unwind_Resume(a1);
}

id sub_10008546C()
{
  if (qword_10010D9B0 != -1)
  {
    sub_10009E2A8();
  }

  v1 = qword_10010D9A8;

  return v1;
}

void sub_1000854B0(id a1)
{
  if (qword_10010D9E0 != -1)
  {
    sub_10009E2BC();
  }

  v3 = qword_10010D9D8;
  v1 = [v3 URLByAppendingPathComponent:@"Voicemail" isDirectory:1];
  v2 = qword_10010D9A8;
  qword_10010D9A8 = v1;
}

id sub_100085530()
{
  if (qword_10010D9C0 != -1)
  {
    sub_10009E2D0();
  }

  v1 = qword_10010D9B8;

  return v1;
}

void sub_100085574(id a1)
{
  v3 = sub_10008546C();
  v1 = [v3 URLByAppendingPathComponent:@"voicemail.db" isDirectory:0];
  v2 = qword_10010D9B8;
  qword_10010D9B8 = v1;
}

id sub_1000855D4(void *a1)
{
  v1 = a1;
  v2 = [objc_opt_class() hashedUUID:v1];

  v3 = [v2 UUIDString];
  v4 = [NSString stringWithFormat:@"A-%@", v3];

  v5 = sub_10008546C();
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:1];

  return v6;
}

id sub_1000856C8(void *a1)
{
  v1 = a1;
  v2 = sub_10008546C();
  v3 = [v2 URLByAppendingPathComponent:v1 isDirectory:1];

  return v3;
}

id sub_100085730()
{
  if (qword_10010D9D0 != -1)
  {
    sub_10009E2E4();
  }

  v1 = qword_10010D9C8;

  return v1;
}

void sub_100085774(id a1)
{
  v3 = sub_10008546C();
  v1 = [v3 URLByAppendingPathComponent:@"sms" isDirectory:1];
  v2 = qword_10010D9C8;
  qword_10010D9C8 = v1;
}

id sub_1000857D4(void *a1)
{
  v1 = a1;
  v2 = [objc_opt_class() hashedUUID:v1];

  v3 = [v2 UUIDString];
  v4 = [NSString stringWithFormat:@"SMS-%@.plist", v3];

  v5 = sub_100085730();
  v6 = [v5 URLByAppendingPathComponent:v4];

  return v6;
}

void sub_1000858A0(id a1)
{
  if (qword_10010D9F0 != -1)
  {
    sub_10009E2F8();
  }

  v1 = [qword_10010D9E8 URLByAppendingPathComponent:@"Library" isDirectory:1];
  v2 = qword_10010D9D8;
  qword_10010D9D8 = v1;
}

void sub_100085904(id a1)
{
  if (qword_10010DA00 != -1)
  {
    sub_10009E30C();
  }

  qword_10010D9E8 = CFCopyHomeDirectoryURLForUser();
}

void sub_100086350(uint64_t a1)
{
  v2 = [*(a1 + 32) contextualizedTranscriberMultisegmentResult];
  if ([v2 earResultType] == 4)
  {
  }

  else
  {
    v3 = [*(a1 + 32) contextualizedTranscriberMultisegmentResult];
    v4 = [v3 earResultType];

    if (v4 != 3)
    {
      return;
    }
  }

  v16 = [[VMVoicemailTranscript alloc] initWithTranscriberResult:*(a1 + 32)];
  v5 = [*(a1 + 40) transcript];

  if (v5)
  {
    [v16 confidence];
    v7 = v6;
    v8 = [*(a1 + 40) transcript];
    [v8 confidence];
    *&v10 = (v7 + v9) * 0.5;
    [v16 setConfidence:v10];

    v11 = [*(a1 + 40) transcript];
    v12 = [v11 transcriptionString];
    v13 = [*(a1 + 40) delimiter];
    v14 = [v16 transcriptionString];
    v15 = [NSString stringWithFormat:@"%@%@%@", v12, v13, v14];
    [v16 setTranscriptionString:v15];
  }

  [*(a1 + 40) setTranscript:v16];
}

void sub_1000865B8(uint64_t a1)
{
  v2 = sub_100002894();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "VMSpeechAnalyzerTranscribeOperation didStopTranscriptionWithError. Error? %@", &v11, 0xCu);
  }

  [*(a1 + 40) duration];
  v5 = v4;
  v6 = [*(a1 + 40) progress];
  [v6 setCompletedUnitCount:v5];

  v7 = [*(a1 + 40) transcribeOperationCompletion];

  if (v7)
  {
    v8 = [*(a1 + 40) transcribeOperationCompletion];
    v9 = [*(a1 + 40) transcript];
    (v8)[2](v8, v9, *(a1 + 32));
  }

  v10 = [*(a1 + 40) semaphore];
  dispatch_semaphore_signal(v10);
}

void sub_100086788(uint64_t a1)
{
  v2 = sub_100002894();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) transcript];
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "VMSpeechAnalyzerTranscribeOperation speechAnalyzerDidProduceAllTranscriberResults. Transcript result saved: %@", &v11, 0xCu);
  }

  [*(a1 + 32) duration];
  v5 = v4;
  v6 = [*(a1 + 32) progress];
  [v6 setCompletedUnitCount:v5];

  v7 = [*(a1 + 32) transcribeOperationCompletion];

  if (v7)
  {
    v8 = [*(a1 + 32) transcribeOperationCompletion];
    v9 = [*(a1 + 32) transcript];
    (v8)[2](v8, v9, 0);
  }

  v10 = [*(a1 + 32) semaphore];
  dispatch_semaphore_signal(v10);
}

void sub_100086A90(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "tspt.asr");
  v2 = qword_10010DA08;
  qword_10010DA08 = v1;
}

void sub_100086B6C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v3 = qword_10010DA18++;
  a1[2] = v3;
  operator new();
}

void sub_100086E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  pthread_mutex_unlock(&stru_10010D568);

  v19 = *(v15 + 40);
  if (v19)
  {
    sub_100083FCC(v19);
  }

  sub_10002BF94(v16, 0);
  _Unwind_Resume(a1);
}

uint64_t *sub_100086F80(uint64_t *a1)
{
  v2 = (a1 + 3);
  v3 = sub_100026660(a1[3]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[1];
    v4 = a1[2];
    v6 = *a1;
    v9 = 136315906;
    v10 = v5;
    v11 = 2080;
    v12 = " ";
    v13 = 2048;
    v14 = v4;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sJetsam assertion [%lu, %s] deleted", &v9, 0x2Au);
  }

  v7 = a1[5];
  if (v7)
  {
    sub_100083FCC(v7);
  }

  sub_10002BF94(v2, 0);
  return a1;
}

void sub_100087084(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000924C(a1);
}

void sub_100087350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VMSharedJetsamAssertion;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10008745C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1000874DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000874F0(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1000874F0(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100086F80(v2);
    operator delete();
  }

  return a1;
}

void sub_10008753C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_100087574(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_100086F80(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1000875B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000875F8()
{
  if ((byte_10010D5B8 & 1) == 0)
  {
    byte_10010D5B8 = 1;
    return __cxa_atexit(sub_100083F20, &stru_10010D568, &_mh_execute_header);
  }

  return result;
}

CFStringRef VMStoreRecordCopyDescription(uint64_t a1)
{
  ID = CSDBRecordGetID();
  RemoteUID = VMStoreRecordGetRemoteUID(a1);
  v4 = VMStoreRecordCopySender(a1);
  v5 = VMStoreRecordCopyReceiver(a1);
  v17 = VMStoreRecordCopyCallbackNumber(a1);
  Duration = VMStoreRecordGetDuration(a1);
  Flags = VMStoreRecordGetFlags(a1);
  v8 = VMStoreRecordCopyFlagsDescription(Flags);
  v9 = VMStoreRecordGetLabel(a1);
  v10 = [v9 UUIDString];

  v11 = [NSNumber numberWithUnsignedInt:ID];
  v12 = [NSNumber numberWithUnsignedInt:RemoteUID];
  v13 = [NSNumber numberWithInt:VMStoreRecordGetDate(a1)];
  v14 = [NSNumber numberWithInt:Duration];
  v15 = CFStringCreateWithFormat(0, 0, @"<VMStoreRecord %p identifier=%@, remoteUID=%@, date=%@, sender=%@, receiver=%@, callback=%@, duration=%@, flags=%@, label=%@>", a1, v11, v12, v13, v4, v5, v17, v14, v8, v10);

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v15;
}

void VMStoreRecordRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t VMStoreRecordGetRemoteUID(uint64_t Property)
{
  pthread_mutex_lock(&stru_10010D620);
  if (Property)
  {
    Property = CSDBRecordGetProperty();
  }

  pthread_mutex_unlock(&stru_10010D620);
  return Property;
}

uint64_t VMStoreRecordSetRemoteUID(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    CSDBRecordSetProperty();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t VMStoreRecordGetDate(uint64_t Property)
{
  pthread_mutex_lock(&stru_10010D620);
  if (Property)
  {
    Property = CSDBRecordGetProperty();
  }

  pthread_mutex_unlock(&stru_10010D620);
  return Property;
}

const void *VMStoreRecordGetToken(const void *Property)
{
  pthread_mutex_lock(&stru_10010D620);
  if (Property)
  {
    Property = CSDBRecordGetProperty();
  }

  pthread_mutex_unlock(&stru_10010D620);

  return sub_100087978(Property);
}

const void *sub_100087978(const void *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *VMStoreRecordCopyToken(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    Property = CSDBRecordGetProperty();
  }

  else
  {
    Property = 0;
  }

  v3 = sub_100087978(Property);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  pthread_mutex_unlock(&stru_10010D620);
  return v4;
}

uint64_t VMStoreRecordSetToken(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    CSDBRecordSetProperty();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t VMStoreRecordSetCallbackNumber(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    CSDBRecordSetProperty();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t VMStoreRecordSetReceiver(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    CSDBRecordSetProperty();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t VMStoreRecordSetSender(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    CSDBRecordSetProperty();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t VMStoreRecordSetLabel(uint64_t a1, void *a2)
{
  [a2 UUIDString];
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    CSDBRecordSetProperty();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t sub_100087C0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  pthread_mutex_lock(&stru_10010D620);
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
  }

  CSDBRecordStoreGetDatabase();
  if (CSDBSqliteDatabaseConnectionForReading())
  {
    v7 = [NSString stringWithFormat:@"SELECT * FROM %@ WHERE %@ = ?", a1, a3];;
    v8 = CSDBSqliteConnectionStatementForSQL();
    if (v8)
    {
      sqlite3_bind_text(*(v8 + 8), 1, [a4 UTF8String], -1, 0);
      v9 = CSDBRecordStoreProcessStatement();
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

  pthread_mutex_unlock(&stru_10010D620);
  return v9;
}

uint64_t VMStoreInitialize()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_10010DA20)
  {
    goto LABEL_57;
  }

  context = v0;
  memset(&v62, 0, sizeof(v62));
  v1 = sub_10008552C();
  v2 = sub_100085530();
  v3 = [v2 path];
  v4 = stat([v3 UTF8String], &v62);

  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "";
    if (v4 < 0)
    {
      v6 = " not";
    }

    *buf = 136315138;
    v55 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Database file does%s exist", buf, 0xCu);
  }

  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v1 path];
    *buf = 138412290;
    v55 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating directories to %@", buf, 0xCu);
  }

  v9 = [v1 path];
  v10 = [v9 UTF8String];
  v11 = sub_100011F44();
  v12 = sub_100011F7C();
  sub_100011C90(v10, v11, v12, 0x1EDu);

  [v2 path];
  v13 = CSDBRecordStoreCreateWithPath();
  qword_10010DA20 = v13;
  v14 = vm_vmd_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Voicemail store is NOT valid", buf, 2u);
    }

    goto LABEL_28;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Voicemail store is valid", buf, 2u);
  }

  CSDBRecordStoreRegisterClass();
  CSDBRecordStoreSetSetupHandler();
  Database = CSDBRecordStoreGetDatabase();
  if (Database)
  {
    v17 = Database;
    v18 = vm_vmd_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "db is valid", buf, 2u);
    }

    CSDBSqliteDatabaseSetDataProtectionClass();
    CSDBSqliteDatabaseSetVersion();
    *(v17 + 24) = sub_10008DA28;
    CSDBSqliteDatabaseSetMigrationHandlers();
    v19 = CSDBSqliteDatabaseCopyValueForProperty();
    if (v19)
    {
      CFRelease(v19);
    }
  }

  v20 = [v2 path];
  v21 = stat([v20 UTF8String], &v62);

  v22 = vm_vmd_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = " not";
    if (!v21)
    {
      v23 = "";
    }

    *buf = 136315138;
    v55 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "DB does%s exist", buf, 0xCu);
  }

  if (!v21 && (sub_100011F7C() != v62.st_gid || sub_100011F44() != v62.st_uid))
  {
    v24 = vm_vmd_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Chowning data base", buf, 2u);
    }

    v14 = [v2 path];
    v25 = [v14 UTF8String];
    v26 = sub_100011F44();
    v27 = sub_100011F7C();
    chown(v25, v26, v27);
LABEL_28:
  }

  v51 = v2;
  v52 = v1;
  v50 = v4;
  v28 = 0;
  v29 = &off_1000EF8D8;
  do
  {
    v30 = *v29;
    dword_10010DA34[v28] = CSDBRecordIndexOfPropertyNamed();
    v31 = vm_vmd_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = dword_10010DA34[v28];
      *buf = 134218754;
      v55 = v28;
      v56 = 2080;
      v57 = v30;
      v58 = 2048;
      v59 = v28;
      v60 = 1024;
      v61 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%lu] Property ID of %s (%lu) is %d", buf, 0x26u);
    }

    ++v28;
    v29 += 5;
  }

  while (v28 != 12);
  v33 = 0;
  v34 = 1;
  do
  {
    v35 = v34;
    v36 = (&off_1000EF888)[5 * v33];
    dword_10010DA28[v33] = CSDBRecordIndexOfPropertyNamed();
    v37 = vm_vmd_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = dword_10010DA28[v33];
      *buf = 134218754;
      v55 = v33;
      v56 = 2080;
      v57 = v36;
      v58 = 2048;
      v59 = v33;
      v60 = 1024;
      v61 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%lu] Property ID of %s (%lu) is %d", buf, 0x26u);
    }

    v34 = 0;
    v33 = 1;
  }

  while ((v35 & 1) != 0);
  CSDBRecordStoreGetDatabase();
  v39 = CSDBSqliteDatabaseConnectionForWriting();
  v40 = CSDBSqliteDatabaseCopyValueForProperty();
  if (!v40)
  {
    goto LABEL_52;
  }

  v41 = v40;
  v42 = vm_vmd_log();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Perform UUID migration", buf, 2u);
  }

  sub_10008EBE0(qword_10010DA20, &off_1000EF618);
  sub_10008EBE0(qword_10010DA20, &off_1000EF6B8);
  if (!v39)
  {
    v43 = vm_vmd_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Can't find sql connection for UUID migration", buf, 2u);
    }

    goto LABEL_51;
  }

  v43 = [[NSString alloc] initWithFormat:@"DELETE FROM _SqliteDatabaseProperties WHERE key = '%@';", @"UUIDMigration"];
  v44 = CSDBSqliteConnectionPerformSQL();
  if (v44 != 101 && v44)
  {
    v45 = vm_vmd_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v46 = "Can't remove property for UUID migration";
      goto LABEL_49;
    }
  }

  else
  {
    v45 = vm_vmd_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v46 = "Removed property for UUID migration";
LABEL_49:
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v46, buf, 2u);
    }
  }

LABEL_51:
  CFRelease(v41);
LABEL_52:

  v47 = vm_vmd_log();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = " not";
    if (v50 < 0)
    {
      v48 = "";
    }

    v62.st_dev = 136315138;
    *&v62.st_mode = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Voicemail initialization occured while%s previously existing", &v62, 0xCu);
  }

  v0 = context;
LABEL_57:
  objc_autoreleasePoolPop(v0);
  return 0;
}

CFTypeRef VMMap_copyRecordWithLabel(void *a1)
{
  v1 = sub_100087C0C(@"map", &off_1000EF578, @"label", [a1 UUIDString]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (CFArrayGetCount(v1))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    v4 = CFRetain(ValueAtIndex);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

const void *VMMap_copyAccountForLabel(void *a1)
{
  v1 = VMMap_copyRecordWithLabel(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Property = CSDBRecordGetProperty();
  v4 = sub_100087978(Property);
  v5 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  CFRelease(v2);
  return v5;
}

CFTypeRef VMMap_copyRecordWithAccount(void *a1)
{
  v1 = sub_100087C0C(@"map", &off_1000EF578, @"account", a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (CFArrayGetCount(v1))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    v4 = CFRetain(ValueAtIndex);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

uint64_t VMMap_addRecord(uint64_t a1, void *a2)
{
  v2 = a2;
  pthread_mutex_lock(&stru_10010D620);
  v3 = CSDBRecordCreate();
  if (v3)
  {
    CSDBRecordSetProperty();
    [v2 UUIDString];
    CSDBRecordSetProperty();
    CSDBRecordStoreAddRecord();
  }

  pthread_mutex_unlock(&stru_10010D620);

  return v3;
}

uint64_t VMMap_removeRecord()
{
  pthread_mutex_lock(&stru_10010D620);
  CSDBRecordStoreRemoveRecord();

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t VMMain_StoreCopyMainRecordsWithLabelID(void *a1)
{
  v1 = [a1 UUIDString];

  return sub_100087C0C(@"voicemail", &off_1000EF618, @"label", v1);
}

uint64_t VMStoreRecordSetUUID(uint64_t a1, void *a2)
{
  [a2 UUIDString];
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    CSDBRecordSetProperty();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

id VMStoreRecordGetUUID(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    Property = CSDBRecordGetProperty();
  }

  else
  {
    Property = 0;
  }

  v3 = sub_100087978(Property);
  if (v3)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock(&stru_10010D620);

  return v4;
}

uint64_t VMStoreRecordGetSender(uint64_t Property)
{
  pthread_mutex_lock(&stru_10010D620);
  if (Property)
  {
    Property = CSDBRecordGetProperty();
  }

  pthread_mutex_unlock(&stru_10010D620);
  return Property;
}

const void *VMStoreRecordCopySender(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    Property = CSDBRecordGetProperty();
  }

  else
  {
    Property = 0;
  }

  v3 = sub_100087978(Property);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  pthread_mutex_unlock(&stru_10010D620);
  return v4;
}

const void *VMStoreRecordCopyReceiver(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    Property = CSDBRecordGetProperty();
  }

  else
  {
    Property = 0;
  }

  v3 = sub_100087978(Property);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  pthread_mutex_unlock(&stru_10010D620);
  return v4;
}

id VMStoreRecordGetLabel(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    Property = CSDBRecordGetProperty();
  }

  else
  {
    Property = 0;
  }

  v3 = sub_100087978(Property);
  if (v3)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock(&stru_10010D620);

  return v4;
}

const void *VMStoreRecordGetCallbackNumber(const void *Property)
{
  pthread_mutex_lock(&stru_10010D620);
  if (Property)
  {
    Property = CSDBRecordGetProperty();
  }

  pthread_mutex_unlock(&stru_10010D620);

  return sub_100087978(Property);
}

const void *VMStoreRecordCopyCallbackNumber(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    Property = CSDBRecordGetProperty();
  }

  else
  {
    Property = 0;
  }

  v3 = sub_100087978(Property);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  pthread_mutex_unlock(&stru_10010D620);
  return v4;
}

uint64_t VMStoreRecordGetDuration(uint64_t Property)
{
  pthread_mutex_lock(&stru_10010D620);
  if (Property)
  {
    Property = CSDBRecordGetProperty();
  }

  pthread_mutex_unlock(&stru_10010D620);
  return Property;
}

uint64_t VMStoreRecordSetDuration(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    CSDBRecordSetProperty();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t VMStoreRecordGetExpirationDate(uint64_t Property)
{
  pthread_mutex_lock(&stru_10010D620);
  if (Property)
  {
    Property = CSDBRecordGetProperty();
  }

  pthread_mutex_unlock(&stru_10010D620);
  return Property;
}

uint64_t VMStoreRecordSetExpirationDate(uint64_t a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
    CSDBRecordSetProperty();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t VMStoreRecordGetTrashedDate(uint64_t Property)
{
  pthread_mutex_lock(&stru_10010D620);
  if (Property)
  {
    Property = CSDBRecordGetProperty();
  }

  pthread_mutex_unlock(&stru_10010D620);
  return Property;
}

uint64_t VMStoreRecordGetFlags(uint64_t Property)
{
  pthread_mutex_lock(&stru_10010D620);
  if (Property)
  {
    Property = CSDBRecordGetProperty();
  }

  pthread_mutex_unlock(&stru_10010D620);
  return Property;
}

uint64_t VMStoreRecordCopyDataPath()
{
  v0 = sub_10008546C();
  v1 = [NSString stringWithFormat:@"%d%s", CSDBRecordGetID(), ".amr"];
  v2 = [v0 URLByAppendingPathComponent:v1];
  v3 = [v2 path];

  return v3;
}

uint64_t VMStoreRecordCopyTranscriptionPath()
{
  v0 = sub_10008546C();
  v1 = [NSString stringWithFormat:@"%d%s", CSDBRecordGetID(), ".transcript"];
  v2 = [v0 URLByAppendingPathComponent:v1];
  v3 = [v2 path];

  return v3;
}

uint64_t VMStoreRecordCopySummarizationPath()
{
  v0 = sub_10008546C();
  v1 = [NSString stringWithFormat:@"%d%s", CSDBRecordGetID(), ".summary"];
  v2 = [v0 URLByAppendingPathComponent:v1];
  v3 = [v2 path];

  return v3;
}

uint64_t VMStoreSave()
{
  pthread_mutex_lock(&stru_10010D620);
  if (qword_10010DA20)
  {
    CSDBRecordSaveStore();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.voicemail.changed", 0, 0, 1u);
    ++dword_10010DA30;
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

void VMStoreChangedExternally()
{
  pthread_mutex_lock(&stru_10010D620);
  if (dword_10010DA30 <= 0)
  {
    if (qword_10010DA20)
    {
      CSDBRecordStoreDestroy();
      qword_10010DA20 = 0;
    }

    pthread_mutex_unlock(&stru_10010D620);
    LocalCenter = CFNotificationCenterGetLocalCenter();

    CFNotificationCenterPostNotification(LocalCenter, @"com.apple.voicemail.changed", 0, 0, 1u);
  }

  else
  {
    --dword_10010DA30;

    pthread_mutex_unlock(&stru_10010D620);
  }
}

uint64_t VMStoreDestroy()
{
  pthread_mutex_lock(&stru_10010D620);
  if (qword_10010DA20)
  {
    CSDBRecordStoreInvalidateCachesWithStore();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t VMStoreInitializeLocked()
{
  pthread_mutex_lock(&stru_10010D620);
  VMStoreInitialize();
  pthread_mutex_unlock(&stru_10010D620);
  return 0;
}

uint64_t VMStoreInvalidateCaches()
{
  pthread_mutex_lock(&stru_10010D620);
  if (qword_10010DA20)
  {
    CSDBRecordStoreInvalidateCachesWithStore();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

id sub_100089170(uint64_t a1, const __CFString *a2)
{
  CSDBRecordStoreGetDatabase();
  v3 = sub_100089228(a2);
  v4 = CSDBSqliteDatabaseCopyValueForProperty();
  if (!v4)
  {
    v8 = 0;
    if (!v3)
    {
      return v8;
    }

    goto LABEL_3;
  }

  v5 = v4;
  v6 = objc_alloc_init(NSNumberFormatter);
  [v6 setNumberStyle:1];
  v7 = [v6 numberFromString:v5];
  v8 = [v7 unsignedIntValue];
  CFRelease(v5);

  if (v3)
  {
LABEL_3:
    CFRelease(v3);
  }

  return v8;
}

__CFString *sub_100089228(const __CFString *a1)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    MutableCopy = CFStringCreateMutableCopy(0, Length + 12, @"uid_validity");
    CFStringAppend(MutableCopy, a1);
    return MutableCopy;
  }

  else
  {

    return CFRetain(@"uid_validity");
  }
}

void sub_10008928C(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = &stru_1000F0098;
  }

  CSDBRecordStoreGetDatabase();
  v5 = CFStringCreateWithFormat(0, 0, @"%u", a3);
  v6 = sub_100089228(v4);
  CSDBSqliteDatabaseSetValueForProperty();
  CFRelease(v5);

  CFRelease(v6);
}

uint64_t VMStoreCreateAndAddRecord(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = a10;
  pthread_mutex_lock(&stru_10010D620);
  v12 = CSDBRecordCreate();
  if (v12)
  {
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    [v11 UUIDString];
    CSDBRecordSetProperty();
    if (a3 && CFStringGetLength(a3))
    {
      v13 = [NSUUID hashedUUID:a3];
    }

    else
    {
      v13 = +[NSUUID UUID];
    }

    v14 = v13;
    [v13 UUIDString];
    CSDBRecordSetProperty();

    CSDBRecordStoreAddRecord();
  }

  pthread_mutex_unlock(&stru_10010D620);

  return v12;
}

uint64_t sub_1000894EC(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&stru_10010D620);
  v3 = CSDBRecordCreate();
  if (v3)
  {
    if (a2)
    {
      CSDBRecordGetProperty();
      CSDBRecordSetProperty();
      CSDBRecordGetProperty();
      CSDBRecordSetProperty();
      CSDBRecordGetProperty();
      CSDBRecordSetProperty();
      CSDBRecordGetProperty();
      CSDBRecordSetProperty();
      CSDBRecordGetProperty();
      CSDBRecordSetProperty();
      CSDBRecordGetProperty();
      CSDBRecordSetProperty();
      CSDBRecordGetProperty();
      CSDBRecordSetProperty();
      CSDBRecordGetProperty();
      CSDBRecordSetProperty();
      CSDBRecordGetProperty();
      CSDBRecordSetProperty();
      CSDBRecordGetProperty();
    }

    else
    {
      CSDBRecordSetProperty();
      CSDBRecordSetProperty();
      CSDBRecordSetProperty();
      CSDBRecordSetProperty();
      CSDBRecordSetProperty();
      CSDBRecordSetProperty();
      CSDBRecordSetProperty();
      CSDBRecordSetProperty();
      CSDBRecordSetProperty();
    }

    CSDBRecordSetProperty();
    CSDBRecordStoreAddRecord();
  }

  pthread_mutex_unlock(&stru_10010D620);
  return v3;
}

uint64_t VMStoreRemoveRecord(uint64_t a1)
{
  v2 = VMStoreRecordCopyDescription(a1);
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remove record %@", &v11, 0xCu);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  pthread_mutex_lock(&stru_10010D620);
  if (a1 && (CSDBRecordGetProperty() & 2) != 0)
  {
    v4 = VMStoreRecordCopyDataPath();
    if (v4)
    {
      v5 = v4;
      if (CFStringGetFileSystemRepresentation(v4, &v11, 256))
      {
        unlink(&v11);
      }

      CFRelease(v5);
    }

    v6 = VMStoreRecordCopyTranscriptionPath();
    if (v6)
    {
      v7 = v6;
      if (CFStringGetFileSystemRepresentation(v6, &v11, 256))
      {
        unlink(&v11);
      }

      CFRelease(v7);
    }

    v8 = VMStoreRecordCopySummarizationPath();
    if (v8)
    {
      v9 = v8;
      if (CFStringGetFileSystemRepresentation(v8, &v11, 256))
      {
        unlink(&v11);
      }

      CFRelease(v9);
    }
  }

  CSDBRecordStoreRemoveRecord();
  return pthread_mutex_unlock(&stru_10010D620);
}

void sub_1000898BC(int a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VMStoreCopyOfAllRecordsWithFlags(0, 0, v3);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          VMStoreRemoveRecord(ValueAtIndex);
        }
      }

      VMStoreSave();
      CFRelease(v5);
    }

    else
    {
      v14 = vm_vmd_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Did not find any records for label %@; skipping record removal.", &v15, 0xCu);
      }
    }
  }

  else
  {
    pthread_mutex_lock(&stru_10010D620);
    if (qword_10010DA20)
    {
      v10 = vm_vmd_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Destroying voicemail store", &v15, 2u);
      }

      CSDBRecordStoreDestroy();
    }

    qword_10010DA20 = 0;
    v11 = sub_10008546C();
    v12 = [v11 fullPath];
    sub_100089B2C([v12 UTF8String], a1);

    VMStoreInitialize();
    pthread_mutex_unlock(&stru_10010D620);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.voicemail.changed", 0, 0, 1u);
    ++dword_10010DA30;
  }
}

uint64_t VMStoreCopyOfAllRecordsWithFlags(int a1, int a2, void *a3)
{
  v5 = a3;
  pthread_mutex_lock(&stru_10010D620);
  v6 = qword_10010DA20;
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    v6 = qword_10010DA20;
  }

  v7 = sub_10008AC8C(v6, &off_1000EF618, a1, a2, v5);
  pthread_mutex_unlock(&stru_10010D620);

  return v7;
}

void sub_100089B2C(const char *a1, int a2)
{
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    d_name = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing all contents of %s", buf, 0xCu);
  }

  v5 = opendir(a1);
  if (v5)
  {
    v6 = v5;
    v7 = vm_vmd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Opened dir", buf, 2u);
    }

    v8 = [NSString stringWithUTF8String:a1];
    v9 = vm_vmd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      d_name = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Subpath = %@", buf, 0xCu);
    }

    *&v10 = 138412290;
    v22 = v10;
    while (1)
    {
      do
      {
        v11 = readdir(v6);
        v12 = vm_vmd_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          d_name = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "entry = %p", buf, 0xCu);
        }

        if (!v11)
        {
          closedir(v6);

          return;
        }
      }

      while (!v11->d_namlen || v11->d_name[0] == 46);
      v13 = vm_vmd_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        d_name = v11->d_name;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "entry name = %s", buf, 0xCu);
      }

      if (a2)
      {
        d_namlen = v11->d_namlen;
        if (!strncmp(v11->d_name, "Greeting.amr", d_namlen))
        {
          v15 = vm_vmd_log();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_37;
          }

          *buf = 0;
          v16 = v15;
          v17 = "Skipping greeting deletion";
          goto LABEL_31;
        }

        if (strncmp(v11->d_name, "voicemail.db", d_namlen) && (d_namlen < 5 || strncmp(&v11->d_reclen + d_namlen + 1, ".amr", 4uLL)))
        {
          v15 = vm_vmd_log();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_37;
          }

          *buf = 0;
          v16 = v15;
          v17 = "Skipping";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
          goto LABEL_37;
        }

        if (v11->d_type != 4)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v11->d_type == 4)
        {
          v15 = [NSString stringWithUTF8String:v11->d_name];
          v18 = [v8 stringByAppendingPathComponent:v15];
          v19 = vm_vmd_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            d_name = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cleaning %@", buf, 0xCu);
          }

          sub_100089B2C([v18 UTF8String], 0);
          v20 = vm_vmd_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            d_name = v18;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Removing %@", buf, 0xCu);
          }

          rmdir([v18 UTF8String]);
          goto LABEL_36;
        }

LABEL_33:
        v15 = [NSString stringWithUTF8String:v11->d_name, v22];
        v18 = [v8 stringByAppendingPathComponent:v15];
        v21 = vm_vmd_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v22;
          d_name = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Unlinking %@", buf, 0xCu);
        }

        unlink([v18 UTF8String]);
LABEL_36:

LABEL_37:
      }
    }
  }
}

void VMStoreCleanBackingFiles()
{
  v0 = sub_10008546C();
  pthread_mutex_lock(&stru_10010D620);
  if (qword_10010DA20 || (VMStoreInitialize(), qword_10010DA20))
  {
    v1 = vm_vmd_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Voicemail store is valid", buf, 2u);
    }

    v2 = CSDBRecordStoreCopyValueForProperty();
    v3 = v2;
    if (v2 && CFStringGetLength(v2))
    {
      goto LABEL_38;
    }

    v4 = vm_vmd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CLEANING BACKING FILES\n", buf, 2u);
    }

    v5 = [v0 fullPath];
    v6 = opendir([v5 UTF8String]);

    if (v6)
    {
      v7 = readdir(v6);
      if (v7)
      {
        v9 = v7;
        Mutable = 0;
        *&v8 = 136315138;
        v19 = v8;
        do
        {
          if (v9->d_namlen)
          {
            d_name = v9->d_name;
            if (v9->d_name[0] != 46)
            {
              v12 = vm_vmd_log();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *v20 = v19;
                v21 = v9->d_name;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Entry name %s", v20, 0xCu);
              }

              d_namlen = v9->d_namlen;
              v14 = strncmp(v9->d_name, "Greeting.amr", d_namlen);
              if (d_namlen >= 5)
              {
                if (v14)
                {
                  if (!strncmp(&d_name[d_namlen - 4], ".amr", 4uLL))
                  {
                    v15 = memchr(v9->d_name, 46, d_namlen);
                    if (v15)
                    {
                      v16 = (v15 - d_name);
                      if ((v15 - d_name) <= 0xFE)
                      {
                        __memcpy_chk();
                        buf[v16] = 0;
                        v17 = atoi(buf);
                        v18 = vm_vmd_log();
                        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                        {
                          *v20 = 67109120;
                          LODWORD(v21) = v17;
                          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Record ID = %d", v20, 8u);
                        }

                        if (!Mutable)
                        {
                          Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
                        }

                        CFSetAddValue(Mutable, [NSNumber numberWithInt:v17]);
                      }
                    }
                  }
                }
              }
            }
          }

          v9 = readdir(v6);
        }

        while (v9);
        closedir(v6);
        if (Mutable)
        {
          if (CSDBRecordStoreGetDatabase() && CSDBSqliteDatabaseConnectionForReading() && CSDBSqliteConnectionStatementForSQL())
          {
            CSDBSqliteStatementSendResults();
          }

          if (CFSetGetCount(Mutable))
          {
            CFSetApplyFunction(Mutable, sub_10008A4D4, 0);
          }

          CFRelease(Mutable);
        }
      }

      else
      {
        closedir(v6);
      }
    }

    CSDBRecordStoreSetValueForProperty();
    CSDBRecordSaveStore();
    if (v3)
    {
LABEL_38:
      CFRelease(v3);
    }
  }

  pthread_mutex_unlock(&stru_10010D620);
}

uint64_t sub_10008A3F4(uint64_t a1, __CFSet *a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  if (a2)
  {
    v4 = v3;
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing uid %d", v7, 8u);
    }

    CFSetRemoveValue(a2, [NSNumber numberWithUnsignedInt:v4]);
  }

  return 0;
}

void sub_10008A4D4(uint64_t a1)
{
  v2 = vm_vmd_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Record ID = %d", buf, 8u);
  }

  v3 = sub_10008546C();
  v4 = [v3 fullPath];
  v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%d.amr", v4, a1);

  if (v5)
  {
    if (CFStringGetFileSystemRepresentation(v5, buf, 1024))
    {
      v6 = vm_vmd_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 136315138;
        v8 = buf;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DELETING FILE %s\n", v7, 0xCu);
      }

      unlink(buf);
    }

    CFRelease(v5);
  }
}

void VMStoreRecordSetData(void *a1, const void *a2, void *a3)
{
  v5 = a1;
  v6 = objc_autoreleasePoolPush();
  v7 = a3;
  v8 = VMStoreRecordCopyDataPath();
  if (v8)
  {
    v17 = 0;
    v9 = [v7 writeToFile:v8 options:268435457 error:&v17];
    v10 = v17;
    v11 = v10;
    if (v9)
    {

      v12 = +[NSFileManager defaultManager];
      v18 = NSFilePosixPermissions;
      v19 = &off_1000F5938;
      v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v16 = 0;
      v14 = [v12 setAttributes:v13 ofItemAtPath:v8 error:&v16];
      v11 = v16;

      if ((v14 & 1) == 0)
      {
        NSLog(@"Permissions (0700) for file %@ could not be set, error: %@", v8, v11);
      }

      VMStoreRecordSetFlag(v5, a2, 2u);
      VMStoreSave();
    }

    else
    {
      NSLog(@"Data for file %@ could not be written out, error: %@", v8, v10);
    }
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    v15 = [NSString stringWithUTF8String:"void VMStoreRecordSetData(NSUUID *__strong, VMStoreRecord, CFDataRef)"];
    [v11 handleFailureInFunction:v15 file:@"VoicemailStore.m" lineNumber:1507 description:{@"Unable to get data path for record %@", a2}];
  }

  objc_autoreleasePoolPop(v6);
}

void VMStoreRecordSetFlag(void *a1, const void *a2, unsigned int a3)
{
  v6 = a1;
  Flags = VMStoreRecordGetFlags(a2);
  VMStoreRecordSetFlagsFromServer(v6, a2, Flags | a3, 0);
}

uint64_t VMStoreGetRecordCountWithMailboxType(uint64_t a1, const __CFBoolean *a2)
{
  pthread_mutex_lock(&stru_10010D620);
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
  }

  if (a2)
  {
    v4 = 19;
  }

  else
  {
    v4 = 18;
  }

  if (kCFBooleanTrue == a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = v4 | 0x80;
  v7 = v5 | 0x80;
  v8 = v4 | 8;
  v9 = v5 | 8;
  if (a1 != 3)
  {
    v9 = v5;
    v8 = v4;
  }

  if (a1 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = v4 | 4;
  if (a1 == 1)
  {
    v4 |= 0x8Cu;
  }

  if (!a1)
  {
    v4 = v10;
  }

  v11 = a1 <= 1;
  if (a1 <= 1)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (v11)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  if (CSDBRecordStoreGetDatabase() && CSDBSqliteDatabaseConnectionForReading())
  {
    v14 = [NSString stringWithFormat:@"SELECT COUNT(*) FROM voicemail WHERE ((flags & ?) = ?)"];;
    v15 = CSDBSqliteConnectionStatementForSQL();
    if (v15)
    {
      v16 = v15;
      sqlite3_bind_int(*(v15 + 8), 1, v13);
      sqlite3_bind_int(*(v16 + 8), 2, v12);
      v17 = CSDBSqliteStatementIntegerResult();
      CSDBSqliteStatementReset();
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  pthread_mutex_unlock(&stru_10010D620);
  return v17;
}

uint64_t sub_10008AA10(uint64_t a1, uint64_t a2, uint64_t a3, const __CFBoolean *a4, int a5, int a6)
{
  if (a4)
  {
    v8 = 19;
  }

  else
  {
    v8 = 18;
  }

  if (kCFBooleanTrue == a4)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = v8 | 0x80;
  v11 = v8 | 8;
  if (a3 == 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (a3 != 3)
  {
    v11 = v8;
  }

  if (a3 == 2)
  {
    v12 = 0;
  }

  else
  {
    v10 = v11;
  }

  v13 = v8 | 4;
  if (a3 == 1)
  {
    v8 |= 0x8Cu;
  }

  if (!a3)
  {
    v8 = v13;
  }

  if (a3 <= 1)
  {
    v14 = v9;
  }

  else
  {
    v14 = v12;
  }

  if (a3 <= 1)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  if (!CSDBRecordStoreGetDatabase() || !CSDBSqliteDatabaseConnectionForReading())
  {
    return 0;
  }

  v16 = [NSString stringWithFormat:@"SELECT * FROM voicemail WHERE ((flags & ?) = ?) ORDER BY date DESC LIMIT ? OFFSET ?"];;
  v17 = CSDBSqliteConnectionStatementForSQL();
  if (v17)
  {
    v18 = v17;
    sqlite3_bind_int(*(v17 + 8), 1, v15);
    sqlite3_bind_int(*(v18 + 8), 2, v14);
    sqlite3_bind_int(*(v18 + 8), 3, a5);
    sqlite3_bind_int(*(v18 + 8), 4, a6);
    v19 = CSDBRecordStoreProcessStatement();
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t sub_10008AB78(uint64_t a1, uint64_t a2, uint64_t a3, const __CFBoolean *a4, int a5, int a6)
{
  pthread_mutex_lock(&stru_10010D620);
  v12 = sub_10008AA10(a1, a2, a3, a4, a5, a6);
  pthread_mutex_unlock(&stru_10010D620);
  return v12;
}

uint64_t VMStoreCopyRecordsWithMailboxType(uint64_t a1, const __CFBoolean *a2, int a3, int a4)
{
  pthread_mutex_lock(&stru_10010D620);
  v8 = qword_10010DA20;
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    v8 = qword_10010DA20;
  }

  v9 = sub_10008AA10(v8, &off_1000EF618, a1, a2, a3, a4);
  pthread_mutex_unlock(&stru_10010D620);
  return v9;
}

uint64_t sub_10008AC8C(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v8 = a5;
  CSDBRecordStoreGetDatabase();
  if (CSDBSqliteDatabaseConnectionForReading())
  {
    v9 = *a2;
    v10 = @" AND label = ? ";
    if (!v8)
    {
      v10 = @" ";
    }

    v11 = [NSString stringWithFormat:@"SELECT * FROM %s WHERE ((flags & ?) = ?)%@ORDER BY date DESC, ROWID DESC", *a2, v10];;
    v12 = CSDBSqliteConnectionStatementForSQL();
    if (v12)
    {
      v13 = v12;
      sqlite3_bind_int(*(v12 + 8), 1, a4 | a3);
      sqlite3_bind_int(*(v13 + 8), 2, a3);
      if (v8)
      {
        v14 = *(v13 + 8);
        v15 = [v8 UUIDString];
        sqlite3_bind_text(v14, 3, [v15 UTF8String], -1, 0);
      }

      v16 = CSDBRecordStoreProcessStatement();
      CSDBSqliteStatementReset();
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t sub_10008ADE0(uint64_t a1, void *a2)
{
  CSDBRecordStoreGetDatabase();
  if (!CSDBSqliteDatabaseConnectionForReading())
  {
    return 0;
  }

  v3 = [NSString stringWithFormat:@"SELECT * FROM %s", *a2];;
  if (CSDBSqliteConnectionStatementForSQL())
  {
    v4 = CSDBRecordStoreProcessStatement();
    CSDBSqliteStatementReset();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10008AE98(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v9 = a5;
  pthread_mutex_lock(&stru_10010D620);
  v10 = sub_10008AC8C(a1, a2, a3, a4, v9);

  pthread_mutex_unlock(&stru_10010D620);
  return v10;
}

uint64_t VMStoreCopyOfAllDeletedRecords()
{
  pthread_mutex_lock(&stru_10010D620);
  v0 = qword_10010DA20;
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    v0 = qword_10010DA20;
  }

  v1 = sub_10008AC8C(v0, &off_1000EF6B8, 0, 0, 0);
  pthread_mutex_unlock(&stru_10010D620);
  return v1;
}

uint64_t sub_10008AF80()
{
  pthread_mutex_lock(&stru_10010D620);
  if ((qword_10010DA20 || (VMStoreInitialize(), qword_10010DA20)) && (CSDBRecordStoreGetDatabase(), CSDBSqliteDatabaseConnectionForWriting()) && CSDBSqliteDatabaseStatementForReading())
  {
    v0 = CSDBSqliteStatementIntegerResult();
    CSDBSqliteStatementReset();
  }

  else
  {
    v0 = 0;
  }

  pthread_mutex_unlock(&stru_10010D620);
  return v0;
}

uint64_t sub_10008B014(sqlite3_int64 a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
  }

  if (CSDBRecordStoreGetDatabase() && (v2 = CSDBSqliteDatabaseStatementForReading()) != 0 && (v3 = *(v2 + 8)) != 0)
  {
    sqlite3_bind_int64(v3, 1, a1);
    v4 = CSDBRecordStoreProcessStatement();
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock(&stru_10010D620);
  return v4;
}

uint64_t sub_10008B0C4(uint64_t a1, int a2, int a3, void *a4)
{
  v6 = a4;
  CSDBRecordStoreGetDatabase();
  if (CSDBSqliteDatabaseConnectionForReading())
  {
    v7 = @" AND label = ? ";
    if (!v6)
    {
      v7 = @" ";
    }

    v8 = [NSString stringWithFormat:@"SELECT remote_uid FROM voicemail WHERE (flags & ?) = ?%@ORDER BY remote_uid ASC", v7];;
    v9 = CSDBSqliteConnectionStatementForSQL();
    if (v9)
    {
      v10 = v9;
      v11 = *(v9 + 8);
      if (a3)
      {
        v12 = 24;
      }

      else
      {
        v12 = 56;
      }

      sqlite3_bind_int(v11, 1, v12);
      if (a2)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      sqlite3_bind_int(*(v10 + 8), 2, v13);
      if (v6)
      {
        v14 = *(v10 + 8);
        v15 = [v6 UUIDString];
        sqlite3_bind_text(v14, 3, [v15 UTF8String], -1, 0);
      }

      CSDBSqliteStatementSendResults();
    }
  }

  return 0;
}

uint64_t sub_10008B214(uint64_t a1, __CFArray **a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  Mutable = *a2;
  if (!*a2)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    *a2 = Mutable;
  }

  CFArrayAppendValue(Mutable, [NSNumber numberWithUnsignedInt:v3]);
  return 0;
}

const void *sub_10008B290(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  v10 = a6;
  Database = CSDBRecordStoreGetDatabase();
  v12 = CSDBSqliteDatabaseConnectionForReading();
  if (v12)
  {
    v13 = v12;
    v14 = @" AND label = ? ";
    if (!v10)
    {
      v14 = @" ";
    }

    v15 = [NSString stringWithFormat:@"SELECT * FROM voicemail WHERE remote_uid = ? AND (flags & ?) = ?%@ORDER BY date DESC", v14];;
    v16 = CSDBSqliteConnectionStatementForSQL();
    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = v16;
    sqlite3_bind_int(*(v16 + 8), 1, a3);
    sqlite3_bind_int(*(v17 + 8), 2, a5 | a4);
    sqlite3_bind_int(*(v17 + 8), 3, a4);
    if (v10)
    {
      v18 = a5;
      v19 = v15;
      v20 = *(v17 + 8);
      [v10 UUIDString];
      v21 = cfa = a3;
      v22 = [v21 UTF8String];
      v23 = v20;
      v15 = v19;
      a5 = v18;
      sqlite3_bind_text(v23, 4, v22, -1, 0);

      a3 = cfa;
    }

    v24 = CSDBRecordStoreProcessStatement();
    if (v24)
    {
      v25 = v24;
      if (CFArrayGetCount(v24))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v25, 0);
        v27 = VMStoreRecordCopyFlagsDescription(a4);
        cf = VMStoreRecordCopyFlagsDescription(a5);
        v28 = vm_vmd_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          Count = CFArrayGetCount(v25);
          v30 = *Database;
          *buf = 67111170;
          v35 = a3;
          v36 = 2112;
          v37 = v27;
          v38 = 2112;
          v39 = cf;
          v40 = 2112;
          v41 = v10;
          v42 = 1024;
          v43 = Count;
          v44 = 2048;
          v45 = a1;
          v46 = 2048;
          v47 = Database;
          v48 = 2112;
          v49 = v30;
          v50 = 2048;
          v51 = v13;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "VMStoreCopyRecordWithRemoteUID for UID=%u <flagsToHave=%@, flagsToNotHave=%@ label=%@> found %d records (store=%p, db=%p path=%@, connection=%p)", buf, 0x54u);
        }

        if (v27)
        {
          CFRelease(v27);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }
      }

      else
      {
        ValueAtIndex = 0;
      }

      CFRelease(v25);
    }

    else
    {
LABEL_17:
      ValueAtIndex = 0;
    }
  }

  else
  {
    ValueAtIndex = 0;
  }

  return ValueAtIndex;
}

__CFString *VMStoreRecordCopyFlagsDescription(int a1)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, @"(");
  v3 = 1;
  v4 = &off_1000EF760;
  v5 = 19;
  do
  {
    if ((*(v4 - 1) & a1) != 0)
    {
      if ((v3 & 1) == 0)
      {
        CFStringAppend(MutableCopy, @", ");
      }

      CFStringAppend(MutableCopy, *v4);
      v3 = 0;
    }

    v4 += 2;
    --v5;
  }

  while (v5);
  CFStringAppend(MutableCopy, @""));
  return MutableCopy;
}

const void *sub_10008B60C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  v11 = a6;
  pthread_mutex_lock(&stru_10010D620);
  v12 = sub_10008B290(a1, a2, a3, a4, a5, v11);

  pthread_mutex_unlock(&stru_10010D620);
  return v12;
}

const void *VMStoreCopyRecordWithRemoteUID(int a1, int a2, int a3, void *a4)
{
  v7 = a4;
  pthread_mutex_lock(&stru_10010D620);
  v8 = qword_10010DA20;
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    v8 = qword_10010DA20;
  }

  v9 = sub_10008B290(v8, &off_1000EF618, a1, a2, a3, v7);
  pthread_mutex_unlock(&stru_10010D620);

  return v9;
}

uint64_t VMStoreCopyRecordWithIdentifier()
{
  pthread_mutex_lock(&stru_10010D620);
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
  }

  v0 = CSDBRecordStoreCopyInstanceOfClassWithUID();
  pthread_mutex_unlock(&stru_10010D620);
  return v0;
}

uint64_t sub_10008B794(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  if (a4 > 3)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = dword_1000C9530[a4];
    v7 = dword_1000C9540[a4];
  }

  CSDBRecordStoreGetDatabase();
  if (!CSDBSqliteDatabaseConnectionForReading())
  {
    return 0;
  }

  v8 = [NSString stringWithFormat:@"SELECT * FROM %s WHERE token = ? AND ((flags & ?) = ?) ORDER BY ROWID ASC", *a2];;
  v9 = CSDBSqliteConnectionStatementForSQL();
  if (v9)
  {
    v10 = v9;
    sqlite3_bind_text(*(v9 + 8), 1, [a3 UTF8String], -1, 0);
    sqlite3_bind_int(*(v10 + 8), 2, v7);
    sqlite3_bind_int(*(v10 + 8), 3, v6);
    v11 = CSDBRecordStoreProcessStatement();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

CFTypeRef sub_10008B8D0(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v4 = sub_10008B794(a1, a2, a3, a4);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFArrayGetCount(v4) < 1)
  {
    v7 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    v7 = CFRetain(ValueAtIndex);
  }

  CFRelease(v5);
  return v7;
}

uint64_t sub_10008B934(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  pthread_mutex_lock(&stru_10010D620);
  v8 = sub_10008B794(a1, a2, a3, a4);
  pthread_mutex_unlock(&stru_10010D620);
  return v8;
}

CFTypeRef sub_10008B9A4(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  pthread_mutex_lock(&stru_10010D620);
  v8 = sub_10008B8D0(a1, a2, a3, a4);
  pthread_mutex_unlock(&stru_10010D620);
  return v8;
}

uint64_t VMStoreCopyRecordsWithTokenInMailbox(void *a1, unint64_t a2)
{
  pthread_mutex_lock(&stru_10010D620);
  v4 = qword_10010DA20;
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    v4 = qword_10010DA20;
  }

  v5 = sub_10008B794(v4, &off_1000EF618, a1, a2);
  pthread_mutex_unlock(&stru_10010D620);
  return v5;
}

CFTypeRef VMStoreCopyFirstRecordWithTokenInMailbox(void *a1, unint64_t a2)
{
  pthread_mutex_lock(&stru_10010D620);
  v4 = qword_10010DA20;
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    v4 = qword_10010DA20;
  }

  v5 = sub_10008B8D0(v4, &off_1000EF618, a1, a2);
  pthread_mutex_unlock(&stru_10010D620);
  return v5;
}

uint64_t sub_10008BAFC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  CSDBRecordStoreGetDatabase();
  if (CSDBSqliteDatabaseConnectionForReading())
  {
    v7 = *a2;
    v8 = @" AND label = ?";
    if (!v6)
    {
      v8 = &stru_1000F0098;
    }

    v9 = [NSString stringWithFormat:@"SELECT * FROM %s WHERE token = ?%@ ORDER BY ROWID ASC", *a2, v8];;
    v10 = CSDBSqliteConnectionStatementForSQL();
    if (v10)
    {
      v11 = v10;
      sqlite3_bind_text(*(v10 + 8), 1, [a3 UTF8String], -1, 0);
      if (v6)
      {
        v12 = *(v11 + 8);
        v13 = [v6 UUIDString];
        sqlite3_bind_text(v12, 2, [v13 UTF8String], -1, 0);
      }

      v14 = CSDBRecordStoreProcessStatement();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

CFTypeRef sub_10008BC4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = sub_10008BAFC(a1, a2, a3, a4);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFArrayGetCount(v4) < 1)
  {
    v7 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    v7 = CFRetain(ValueAtIndex);
  }

  CFRelease(v5);
  return v7;
}

uint64_t sub_10008BCB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  pthread_mutex_lock(&stru_10010D620);
  v8 = sub_10008BAFC(a1, a2, a3, v7);

  pthread_mutex_unlock(&stru_10010D620);
  return v8;
}

CFTypeRef sub_10008BD28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  pthread_mutex_lock(&stru_10010D620);
  v8 = sub_10008BC4C(a1, a2, a3, v7);

  pthread_mutex_unlock(&stru_10010D620);
  return v8;
}

uint64_t VMStoreCopyRecordsWithToken(void *a1, void *a2)
{
  v3 = a2;
  pthread_mutex_lock(&stru_10010D620);
  v4 = qword_10010DA20;
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    v4 = qword_10010DA20;
  }

  v5 = sub_10008BAFC(v4, &off_1000EF618, a1, v3);
  pthread_mutex_unlock(&stru_10010D620);

  return v5;
}

CFTypeRef VMStoreCopyFirstRecordWithToken(void *a1, void *a2)
{
  v3 = a2;
  pthread_mutex_lock(&stru_10010D620);
  v4 = qword_10010DA20;
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    v4 = qword_10010DA20;
  }

  v5 = sub_10008BC4C(v4, &off_1000EF618, a1, v3);
  pthread_mutex_unlock(&stru_10010D620);

  return v5;
}

CFTypeRef VMStoreCopyFirstDeletedRecordWithToken(void *a1, void *a2)
{
  v3 = a2;
  pthread_mutex_lock(&stru_10010D620);
  v4 = qword_10010DA20;
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    v4 = qword_10010DA20;
  }

  v5 = sub_10008BC4C(v4, &off_1000EF6B8, a1, v3);
  pthread_mutex_unlock(&stru_10010D620);

  return v5;
}

CFTypeRef sub_10008BF14(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  CSDBRecordStoreGetDatabase();
  if (CSDBSqliteDatabaseConnectionForReading())
  {
    v5 = [NSString stringWithFormat:@"SELECT * FROM %s where uuid = ? ORDER BY ROWID ASC", *a2];;
    v6 = CSDBSqliteConnectionStatementForSQL();
    if (v6)
    {
      v7 = *(v6 + 8);
      v8 = [v4 UUIDString];
      sqlite3_bind_text(v7, 1, [v8 UTF8String], -1, 0);

      v9 = CSDBRecordStoreProcessStatement();
      if (v9)
      {
        v10 = v9;
        Count = CFArrayGetCount(v9);
        if (Count < 1)
        {
          v14 = 0;
        }

        else
        {
          v12 = Count;
          ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
          v14 = CFRetain(ValueAtIndex);
          if (v12 != 1)
          {
            v15 = vm_vmd_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v4 UUIDString];
              *buf = 134218242;
              v19 = v12;
              v20 = 2112;
              v21 = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Warning: Found %ld records for UUID '%@'", buf, 0x16u);
            }
          }
        }

        CFRelease(v10);
      }

      else
      {
        v14 = 0;
      }

      CSDBSqliteStatementReset();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

CFTypeRef sub_10008C108(void *a1)
{
  v1 = a1;
  pthread_mutex_lock(&stru_10010D620);
  v2 = sub_10008BF14(qword_10010DA20, &off_1000EF618, v1);

  pthread_mutex_unlock(&stru_10010D620);
  return v2;
}

uint64_t VMStoreCopyRecordsWithLabelID(void *a1)
{
  v1 = a1;
  pthread_mutex_lock(&stru_10010D620);
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
  }

  CSDBRecordStoreGetDatabase();
  v2 = CSDBSqliteDatabaseConnectionForReading();
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"SELECT * FROM voicemail WHERE label = ? ORDER BY ROWID ASC"];;
    v4 = CSDBSqliteConnectionStatementForSQL();
    v2 = v4;
    if (v4)
    {
      v5 = *(v4 + 8);
      v6 = [v1 UUIDString];
      sqlite3_bind_text(v5, 1, [v6 UTF8String], -1, 0);

      v2 = CSDBRecordStoreProcessStatement();
    }
  }

  pthread_mutex_unlock(&stru_10010D620);

  return v2;
}

uint64_t VMStoreCopyRecordsWithReceiver(void *a1)
{
  pthread_mutex_lock(&stru_10010D620);
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
  }

  CSDBRecordStoreGetDatabase();
  if (CSDBSqliteDatabaseConnectionForReading())
  {
    v2 = [NSString stringWithFormat:@"SELECT * FROM voicemail WHERE receiver = ? ORDER BY ROWID ASC"];;
    v3 = CSDBSqliteConnectionStatementForSQL();
    if (v3)
    {
      sqlite3_bind_text(*(v3 + 8), 1, [a1 UTF8String], -1, 0);
      v4 = CSDBRecordStoreProcessStatement();
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock(&stru_10010D620);
  return v4;
}

const __CFArray *sub_10008C370(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, void *a7)
{
  v12 = a7;
  Database = CSDBRecordStoreGetDatabase();
  v14 = CSDBSqliteDatabaseConnectionForReading();
  v15 = a4 | 0x10;
  v29 = a5;
  v30 = a6;
  if (v14)
  {
    v16 = @" AND label = ? ";
    if (!v12)
    {
      v16 = @" ";
    }

    v17 = [NSString stringWithFormat:@"SELECT * FROM voicemail WHERE (flags & ?) = ? AND remote_uid >= ? AND remote_uid <= ?%@ORDER BY remote_uid", v16];;
    v18 = CSDBSqliteConnectionStatementForSQL();
    if (v18)
    {
      v19 = v18;
      sqlite3_bind_int(*(v18 + 8), 1, v15 | a3);
      sqlite3_bind_int(*(v19 + 8), 2, a3);
      sqlite3_bind_int(*(v19 + 8), 3, a5);
      sqlite3_bind_int(*(v19 + 8), 4, a6);
      if (v12)
      {
        v20 = *(v19 + 8);
        v21 = [v12 UUIDString];
        sqlite3_bind_text(v20, 5, [v21 UTF8String], -1, 0);
      }

      v22 = CSDBRecordStoreProcessStatement();
      CSDBSqliteStatementReset();
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = VMStoreRecordCopyFlagsDescription(a3);
  v24 = VMStoreRecordCopyFlagsDescription(v15);
  v25 = vm_vmd_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    Count = CFArrayGetCount(v22);
    v27 = *Database;
    *buf = 67111938;
    v32 = v29;
    v33 = 1024;
    v34 = v30;
    v35 = 2112;
    v36 = v23;
    v37 = 2112;
    v38 = v24;
    v39 = 2112;
    v40 = v12;
    v41 = 1024;
    v42 = v15 | a3;
    v43 = 1024;
    v44 = a3;
    v45 = 1024;
    v46 = Count;
    v47 = 2048;
    v48 = a1;
    v49 = 2048;
    v50 = Database;
    v51 = 2112;
    v52 = v27;
    v53 = 2048;
    v54 = v14;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "VMStoreCopyOfAllRecordsWithFlagsInRemoteUIDRange <lowUID=%u, highUID=%u> <flagsToHave=%@, flagsToNotHave=%@ label=%@> ((flags & %d) = %d) found %d records (store=%p, db=%p path=%@, connection=%p)", buf, 0x66u);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v22;
}

const __CFArray *sub_10008C624(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, void *a7)
{
  v13 = a7;
  pthread_mutex_lock(&stru_10010D620);
  v14 = sub_10008C370(a1, a2, a3, a4, a5, a6, v13);

  pthread_mutex_unlock(&stru_10010D620);
  return v14;
}

const __CFArray *VMStoreCopyOfAllRecordsWithFlagsInRemoteUIDRange(int a1, int a2, int a3, int a4, void *a5)
{
  v9 = a5;
  pthread_mutex_lock(&stru_10010D620);
  v10 = qword_10010DA20;
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    v10 = qword_10010DA20;
  }

  v11 = sub_10008C370(v10, &off_1000EF618, a1, a2, a3, a4, v9);
  pthread_mutex_unlock(&stru_10010D620);

  return v11;
}

uint64_t sub_10008C758(uint64_t a1, int a2, int a3)
{
  CSDBRecordStoreGetDatabase();
  if (!CSDBSqliteDatabaseConnectionForReading())
  {
    return 0;
  }

  v5 = CSDBSqliteConnectionStatementForSQL();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  sqlite3_bind_int(*(v5 + 8), 1, a3 | a2);
  sqlite3_bind_int(*(v6 + 8), 2, a2);
  v7 = CSDBSqliteStatementIntegerResult();
  CSDBSqliteStatementReset();
  return v7;
}

uint64_t sub_10008C7E8(uint64_t a1, int a2, int a3)
{
  pthread_mutex_lock(&stru_10010D620);
  v6 = sub_10008C758(a1, a2, a3);
  pthread_mutex_unlock(&stru_10010D620);
  return v6;
}

uint64_t VMStoreCountOfRecordsWithFlagsGeneric(int a1, int a2)
{
  pthread_mutex_lock(&stru_10010D620);
  v4 = qword_10010DA20;
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    v4 = qword_10010DA20;
  }

  v5 = sub_10008C758(v4, a1, a2);
  pthread_mutex_unlock(&stru_10010D620);
  return v5;
}

uint64_t VMStoreCountOfRecordsWithFlags(int a1, int a2, void *a3)
{
  v5 = a3;
  pthread_mutex_lock(&stru_10010D620);
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
  }

  CSDBRecordStoreGetDatabase();
  v6 = CSDBSqliteDatabaseConnectionForReading();
  if (v6)
  {
    v7 = @" AND label = ? ";
    if (!v5)
    {
      v7 = @" ";
    }

    v8 = [NSString stringWithFormat:@"SELECT COUNT(*) FROM voicemail WHERE ((flags & ?) = ?)%@", v7];;
    v9 = CSDBSqliteConnectionStatementForSQL();
    if (v9)
    {
      v10 = v9;
      sqlite3_bind_int(*(v9 + 8), 1, a2 | a1);
      sqlite3_bind_int(*(v10 + 8), 2, a1);
      if (v5)
      {
        v11 = *(v10 + 8);
        v12 = [v5 UUIDString];
        sqlite3_bind_text(v11, 3, [v12 UTF8String], -1, 0);
      }

      v6 = CSDBSqliteStatementIntegerResult();
      CSDBSqliteStatementReset();
    }

    else
    {
      v6 = 0;
    }
  }

  pthread_mutex_unlock(&stru_10010D620);
  v13 = VMStoreRecordCopyFlagsDescription(a1);
  v14 = VMStoreRecordCopyFlagsDescription(a2);
  v15 = vm_vmd_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    *buf = 138413058;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v5;
    v27 = 1024;
    v28 = v6;
    v17 = "VMStoreCountOfRecordsWithFlags <flagsToHave=%@, flagsToNotHave=%@ label=%@> found %d records";
    v18 = v15;
    v19 = 38;
  }

  else
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    *buf = 138412802;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    v25 = 1024;
    LODWORD(v26) = v6;
    v17 = "VMStoreCountOfRecordsWithFlags <flagsToHave=%@, flagsToNotHave=%@> found %d records";
    v18 = v15;
    v19 = 28;
  }

  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_18:

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v6;
}

void VMStoreRecordSetFlagLocal(uint64_t a1, int a2)
{
  Flags = VMStoreRecordGetFlags(a1);
  v5 = VMStoreRecordCopyDescription(a1);
  v6 = VMStoreRecordCopyFlagsDescription(a2);
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "VMStoreRecordSetFlagLocal <record=%@, flagsToEnable=%@>", &v9, 0x16u);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v8 = Flags | a2;
  if (v5)
  {
    CFRelease(v5);
  }

  if (v8 != Flags)
  {
    pthread_mutex_lock(&stru_10010D620);
    if (a1)
    {
      CSDBRecordSetProperty();
    }

    pthread_mutex_unlock(&stru_10010D620);
  }
}

void VMStoreRecordSetFlagsFromServer(void *a1, const void *a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = VMStoreRecordCopyDescription(a2);
  v9 = VMStoreRecordCopyFlagsDescription(a3);
  v10 = vm_vmd_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"YES";
    v19 = 138412802;
    v20 = v8;
    v21 = 2112;
    if (!a4)
    {
      v11 = @"NO";
    }

    v22 = v11;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "VMStoreRecordSetFlagsFromServer <record=%@, fromServer=%@, flags=%@>", &v19, 0x20u);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  pthread_mutex_lock(&stru_10010D620);
  if (!qword_10010DA20)
  {
    VMStoreInitialize();
    if (!qword_10010DA20)
    {
      goto LABEL_20;
    }
  }

  if (!a2)
  {
    if (a3)
    {
      Property = 0;
      goto LABEL_16;
    }

LABEL_20:
    pthread_mutex_unlock(&stru_10010D620);
    goto LABEL_27;
  }

  Property = CSDBRecordGetProperty();
  if (Property == a3)
  {
    goto LABEL_20;
  }

  CSDBRecordSetProperty();
LABEL_16:
  pthread_mutex_unlock(&stru_10010D620);
  Mutable = CFDictionaryCreateMutable(0, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = Mutable;
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"VMStoreRecordChangedFlagsFromServer", &off_1000F5950);
  }

  if (v7)
  {
    CFDictionarySetValue(v14, @"VMStoreRecordChangedFlagsLabel", [v7 UUIDString]);
  }

  else
  {
    v15 = vm_vmd_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=== VMStoreRecordSetFlagsFromServer, NO LABEL ID given - notifications will not work properly!!!! ====", &v19, 2u);
    }
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"VMStoreRecordFlagsWIllChange", a2, v14, 1u);
  CFDictionarySetValue(v14, @"VMStoreRecordOldFlags", [NSNumber numberWithUnsignedInt:Property]);
  CFDictionarySetValue(v14, @"VMStoreRecordNewFlags", [NSNumber numberWithUnsignedInt:a3]);
  CFDictionarySetValue(v14, @"VMStoreRecordChangedFlags", [NSNumber numberWithUnsignedInt:Property ^ a3]);
  v17 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(v17, @"VMStoreRecordFlagsDidChange", a2, v14, 1u);
  if ((Property ^ a3) != 2)
  {
    v18 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(v18, @"VMStoreRecordFlagsChanged", a2, v14, 1u);
  }

  CFRelease(v14);
LABEL_27:
}

uint64_t sub_10008CF88(uint64_t a1, int a2)
{
  Flags = VMStoreRecordGetFlags(a1);
  if (a2)
  {
    if ((Flags & 8) == 0)
    {
      pthread_mutex_lock(&stru_10010D620);
      if (a1)
      {
        CSDBRecordSetProperty();
      }

      pthread_mutex_unlock(&stru_10010D620);
      CFAbsoluteTimeGetCurrent();
      pthread_mutex_lock(&stru_10010D620);
      if (!a1)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    return 0;
  }

  if ((Flags & 8) == 0)
  {
    return 0;
  }

  pthread_mutex_lock(&stru_10010D620);
  if (!a1)
  {
    pthread_mutex_unlock(&stru_10010D620);
    pthread_mutex_lock(&stru_10010D620);
    goto LABEL_13;
  }

  CSDBRecordSetProperty();
  pthread_mutex_unlock(&stru_10010D620);
  pthread_mutex_lock(&stru_10010D620);
LABEL_11:
  CSDBRecordSetProperty();
LABEL_13:
  pthread_mutex_unlock(&stru_10010D620);
  return 1;
}

uint64_t sub_10008D0B4(uint64_t a1, int a2)
{
  Flags = VMStoreRecordGetFlags(a1);
  if (a2)
  {
    if ((Flags & 1) == 0)
    {
      pthread_mutex_lock(&stru_10010D620);
      if (a1)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    return 0;
  }

  if ((Flags & 1) == 0)
  {
    return 0;
  }

  pthread_mutex_lock(&stru_10010D620);
  if (a1)
  {
LABEL_8:
    CSDBRecordSetProperty();
  }

LABEL_9:
  pthread_mutex_unlock(&stru_10010D620);
  return 1;
}

void *VMStoreRecordCopyArrayDescription(const __CFArray *a1)
{
  v2 = objc_opt_new();
  objc_msgSend(v2, "appendFormat:", @"(\n");
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v7 = VMStoreRecordCopyDescription(ValueAtIndex);
        [v2 appendFormat:@"  '%@'\n", v7];
        if (v7)
        {
          CFRelease(v7);
        }
      }
    }
  }

  [v2 appendFormat:@"\n"]);
  return v2;
}

uint64_t sub_10008D210()
{
  pthread_mutex_lock(&stru_10010D620);
  if (qword_10010DA20 || (VMStoreInitialize(), qword_10010DA20))
  {
    CSDBRecordStoreGetDatabase();
    CSDBSqliteDatabaseSetValueForProperty();
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t sub_10008D280(const __CFString *a1)
{
  v1 = sub_10008D2FC(a1);
  pthread_mutex_lock(&stru_10010D620);
  if (qword_10010DA20)
  {
    CSDBRecordStoreGetDatabase();
    v2 = CSDBSqliteDatabaseCopyValueForProperty();
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&stru_10010D620);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

__CFString *sub_10008D2FC(const __CFString *a1)
{
  MutableCopy = @"token";
  if (CFStringCompare(a1, @"token", 0))
  {
    if (a1 && (Length = CFStringGetLength(a1), Length >= 1))
    {
      MutableCopy = CFStringCreateMutableCopy(0, Length + 6, @"token-");
      CFStringAppend(MutableCopy, a1);
    }

    else
    {
      return 0;
    }
  }

  return MutableCopy;
}

void sub_10008D374(uint64_t a1, const __CFString *a2)
{
  v3 = sub_10008D2FC(a2);
  if (v3)
  {
    v4 = v3;
    pthread_mutex_lock(&stru_10010D620);
    if (qword_10010DA20 || (VMStoreInitialize(), qword_10010DA20))
    {
      if (CSDBRecordStoreGetDatabase() && CSDBSqliteDatabaseConnectionForWriting())
      {
        CSDBSqliteConnectionBegin();
        CSDBSqliteConnectionSetValueForProperty();
        if (CFStringCompare(@"token", a2, 0))
        {
          CSDBSqliteConnectionSetValueForProperty();
        }

        CSDBSqliteConnectionCommit();
      }
    }

    pthread_mutex_unlock(&stru_10010D620);

    CFRelease(v4);
  }

  else
  {

    sub_10008D210();
  }
}

uint64_t VMStoreCopyKeyedTokens()
{
  pthread_mutex_lock(&stru_10010D620);
  if (qword_10010DA20 || (VMStoreInitialize(), qword_10010DA20))
  {
    if (CSDBRecordStoreGetDatabase() && CSDBSqliteDatabaseConnectionForReading())
    {
      CSDBSqliteConnectionCopyValuesForPropertiesLike();
    }
  }

  pthread_mutex_unlock(&stru_10010D620);
  return 0;
}

void VMStoreSetTimestampForTokenWithKey(uint64_t a1, const __CFString *a2)
{
  v3 = sub_10008D5D8(a2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  pthread_mutex_lock(&stru_10010D620);
  if (qword_10010DA20 || (VMStoreInitialize(), qword_10010DA20))
  {
    v5 = CFStringCreateWithFormat(0, 0, @"%u", a1);
    if (CSDBRecordStoreGetDatabase())
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      CSDBSqliteDatabaseSetValueForProperty();
    }

    CFRelease(v5);
  }

LABEL_13:
  pthread_mutex_unlock(&stru_10010D620);

  CFRelease(v4);
}

__CFString *sub_10008D5D8(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, Length + 10, @"timestamp-");
  CFStringAppend(MutableCopy, a1);
  return MutableCopy;
}

uint64_t VMStoreGetTimestampForTokenWithKey(const __CFString *a1)
{
  v1 = sub_10008D5D8(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  pthread_mutex_lock(&stru_10010D620);
  if ((qword_10010DA20 || (VMStoreInitialize(), qword_10010DA20)) && CSDBRecordStoreGetDatabase() && (v3 = CSDBSqliteDatabaseCopyValueForProperty()) != 0)
  {
    v4 = v3;
    IntValue = CFStringGetIntValue(v3);
    CFRelease(v4);
  }

  else
  {
    IntValue = 0;
  }

  pthread_mutex_unlock(&stru_10010D620);
  CFRelease(v2);
  return IntValue;
}

void sub_10008D6D8(uint64_t a1, uint64_t a2)
{
  v2 = [NSString stringWithFormat:@"%u", a2];
  CSDBRecordStoreGetDatabase();
  CSDBSqliteDatabaseSetValueForProperty();
}

uint64_t sub_10008D74C()
{
  CSDBRecordStoreGetDatabase();
  result = CSDBSqliteDatabaseCopyValueForProperty();
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(NSNumberFormatter);
    [v2 setNumberStyle:1];
    v3 = [v2 numberFromString:v1];
    v4 = [v3 unsignedIntValue];
    CFRelease(v1);

    return v4;
  }

  return result;
}

BOOL sub_10008D7D0(uint64_t a1, uint64_t a2, const void *a3)
{
  pthread_mutex_lock(&stru_10010D620);
  if ((qword_10010DA20 || (VMStoreInitialize(), qword_10010DA20)) && (v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@_%@", a2, a1)) != 0)
  {
    v7 = v6;
    CSDBRecordStoreGetDatabase();
    v8 = CSDBSqliteDatabaseCopyValueForProperty();
    if (v8)
    {
      v9 = v8;
      v10 = CFEqual(v8, a3) != 0;
      CFRelease(v9);
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v10 = 0;
  }

  pthread_mutex_unlock(&stru_10010D620);
  return v10;
}

uint64_t sub_10008D8AC(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&stru_10010D620);
  if (qword_10010DA20 || (VMStoreInitialize(), qword_10010DA20))
  {
    v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@_%@", a2, a1);
    if (v4)
    {
      v5 = v4;
      CSDBRecordStoreGetDatabase();
      CSDBSqliteDatabaseSetValueForProperty();
      CFRelease(v5);
    }
  }

  return pthread_mutex_unlock(&stru_10010D620);
}

uint64_t sub_10008D998()
{
  sub_10008E728(&off_1000EF618);
  sub_10008E728(&off_1000EF6B8);
  sub_10008E728(&off_1000EF578);
  sub_10008E7EC();
  sub_10008E7EC();

  return CSDBSqliteConnectionSetValueForProperty();
}

BOOL sub_10008DA38(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = a3;
    v8 = 2048;
    v9 = 11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "The current VM database is v%d.  The current schema version is v%ld", v7, 0x12u);
  }

  if (a3 <= 0xA)
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Voicemail DB can be migrated.", v7, 2u);
    }
  }

  return a3 < 0xB;
}

uint64_t sub_10008DB40(uint64_t a1, NSObject *a2, int a3)
{
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v45 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "==> VMStoreMigrationHandler with version: %d", buf, 8u);
  }

  if (a3)
  {
    goto LABEL_12;
  }

  a3 = CSDBSqliteConnectionIntegerForProperty();
  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v45 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "oldVersion = %d", buf, 8u);
  }

  if (a3 != 11)
  {
LABEL_12:
    if (a3 > 5)
    {
      if (a3 != 6)
      {
        v10 = a3;
        if (a3 != 7)
        {
LABEL_44:
          if (v10 == 10)
          {
            goto LABEL_72;
          }

          if (v10 == 9)
          {
LABEL_56:
            v29 = vm_vmd_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v45 = 9;
              *&v45[4] = 1024;
              *&v45[6] = 10;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Migrating database from schema version %d to schema version %d", buf, 0xEu);
            }

            if (!CSDBSqliteConnectionStatementForSQL())
            {
              goto LABEL_64;
            }

            v30 = CSDBSqliteStatementIntegerResult();
            v31 = vm_vmd_log();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v45 = v30;
              *&v45[4] = 1024;
              *&v45[6] = 101;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "'ROWID' count in 'map' is %d (statement result: %d", buf, 0xEu);
            }

            CSDBSqliteStatementReset();
            if (v30)
            {
              v32 = vm_vmd_log();
              if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
LABEL_69:

                v35 = vm_vmd_log();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v45 = 10;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Migrated database to schema version %d", buf, 8u);
                }

LABEL_72:
                v36 = vm_vmd_log();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v45 = 10;
                  *&v45[4] = 1024;
                  *&v45[6] = 11;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Migrating database from schema version %d to schema version %d", buf, 0xEu);
                }

                v37 = vm_vmd_log();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *v45 = @"uuid";
                  *&v45[8] = 2112;
                  v46 = @"voicemail";
                  v47 = 2112;
                  v48 = @"deleted";
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Adding column of type: TEXT with name: %@ to table: %@ and table: %@", buf, 0x20u);
                }

                v38 = sub_10008E844(a2, @"uuid", @"voicemail");
                v39 = sub_10008E844(a2, @"uuid", @"deleted");
                if (v38 && v39)
                {
                  CSDBSqliteConnectionSetValueForProperty();
                  v40 = vm_vmd_log();
                  v10 = 11;
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v45 = 11;
                    v41 = "Migrated database to schema version %d";
LABEL_82:
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 8u);
                  }
                }

                else
                {
                  v40 = vm_vmd_log();
                  v10 = 10;
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v45 = 10;
                    v41 = "Could not migrate database from schema version %d";
                    goto LABEL_82;
                  }
                }

LABEL_84:
                if (v10 == 11)
                {
                  v42 = vm_vmd_log();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109376;
                    *v45 = a3;
                    *&v45[4] = 1024;
                    *&v45[6] = 11;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Successfully migrated database from schema version %d to schema version %d; setting result to CSDBSqliteMigrationDone ", buf, 0xEu);
                  }

                  v9 = 0;
LABEL_94:

                  CSDBSqliteConnectionCommit();
                  return v9;
                }

LABEL_91:
                v42 = vm_vmd_log();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v45 = a3;
                  *&v45[4] = 1024;
                  *&v45[6] = v10;
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Failed to migrate database from schema version %d to schema version %d; setting result to CSDBSqliteMigrationDelete ", buf, 0xEu);
                }

                v9 = 3;
                goto LABEL_94;
              }

              *buf = 0;
              v33 = "'ROWID' EXIST in 'map' - everything is correct";
            }

            else
            {
LABEL_64:
              v34 = vm_vmd_log();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "'ROWID' column is missing in 'map', table need to be recreated", buf, 2u);
              }

              [NSString stringWithFormat:@"DROP TABLE %@;", @"map"];
              sub_10008E7EC();
              sub_10008E728(&off_1000EF578);
              v32 = vm_vmd_log();
              if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_69;
              }

              *buf = 0;
              v33 = "table 'map' recreated";
            }

            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
            goto LABEL_69;
          }

          if (v10 != 8)
          {
            goto LABEL_84;
          }

          v24 = vm_vmd_log();
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          if (a3 == 8)
          {
            if (v25)
            {
              *buf = 67109376;
              *v45 = 8;
              *&v45[4] = 1024;
              *&v45[6] = 9;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Migrating database from schema version %d to schema version %d", buf, 0xEu);
            }

            [NSString stringWithFormat:@"DROP TABLE %@;", @"map"];
            sub_10008E7EC();
            sub_10008E728(&off_1000EF578);
            v24 = vm_vmd_log();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_55;
            }

            *buf = 67109120;
            *v45 = 9;
            v26 = "Migrated database to schema version %d";
            v27 = v24;
            v28 = 8;
          }

          else
          {
            if (!v25)
            {
LABEL_55:

              goto LABEL_56;
            }

            *buf = 67109376;
            *v45 = 8;
            *&v45[4] = 1024;
            *&v45[6] = 9;
            v26 = "Migrated database from schema version %d to schema version %d (nothing to do)";
            v27 = v24;
            v28 = 14;
          }

          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
          goto LABEL_55;
        }

LABEL_33:
        v18 = vm_vmd_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v45 = 7;
          *&v45[4] = 1024;
          *&v45[6] = 8;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Migrating database from schema version %d to schema version %d", buf, 0xEu);
        }

        v19 = vm_vmd_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v45 = @"label";
          *&v45[8] = 2112;
          v46 = @"voicemail";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Adding column of type: TEXT with name: %@ to table: %@", buf, 0x16u);
        }

        v20 = sub_10008E844(a2, @"label", @"voicemail");
        sub_10008E728(&off_1000EF6B8);
        sub_10008E728(&off_1000EF578);
        v21 = vm_vmd_log();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          v10 = 8;
          if (v22)
          {
            *buf = 67109120;
            *v45 = 8;
            v23 = "Migrated database to schema version %d";
LABEL_42:
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 8u);
          }
        }

        else
        {
          v10 = 7;
          if (v22)
          {
            *buf = 67109120;
            *v45 = 7;
            v23 = "Could not migrate database from schema version %d";
            goto LABEL_42;
          }
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (a3 == 4)
      {
        v11 = vm_vmd_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v45 = 4;
          *&v45[4] = 1024;
          *&v45[6] = 5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Migrating database from schema version %d to schema version %d", buf, 0xEu);
        }

        v12 = vm_vmd_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v45 = @"voicemail";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Adding column of type: TEXT with name: receiver to table: %@", buf, 0xCu);
        }

        v13 = sub_10008E844(a2, @"receiver", @"voicemail");
        v14 = vm_vmd_log();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (!v13)
        {
          if (v15)
          {
            *buf = 67109120;
            *v45 = 4;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not migrate database from schema version %d", buf, 8u);
          }

          v10 = 4;
          goto LABEL_91;
        }

        if (v15)
        {
          *buf = 67109120;
          *v45 = 5;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Migrated database to schema version %d", buf, 8u);
        }
      }

      else
      {
        v10 = a3;
        if (a3 != 5)
        {
          goto LABEL_44;
        }
      }

      v16 = vm_vmd_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v45 = 5;
        *&v45[4] = 1024;
        *&v45[6] = 6;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Migrated database from schema version %d to schema version %d (nothing to do)", buf, 0xEu);
      }
    }

    v17 = vm_vmd_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v45 = 6;
      *&v45[4] = 1024;
      *&v45[6] = 7;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Migrated database from schema version %d to schema version %d (nothing to do)", buf, 0xEu);
    }

    goto LABEL_33;
  }

  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "database has correct version, migration is a no-op\n", buf, 2u);
  }

  v8 = vm_vmd_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Determined that there is no need to perform migration", buf, 2u);
  }

  return 3;
}

uint64_t sub_10008E728(uint64_t *a1)
{
  v2 = vm_vmd_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Create %s table", &v5, 0xCu);
  }

  return CSDBRecordStoreCreateTablesForClass();
}

uint64_t sub_10008E7EC()
{
  result = CSDBSqliteConnectionStatementForSQL();
  if (result)
  {
    CSDBSqliteStatementPerform();

    return CSDBSqliteStatementReset();
  }

  return result;
}

uint64_t sub_10008E844(NSObject *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && -[NSObject length](v5, "length") && [@"TEXT" length] && objc_msgSend(v6, "length"))
  {
    v7 = [[NSString alloc] initWithFormat:@"SELECT %@ FROM %@", v5, v6];
    v8 = CSDBSqliteConnectionPerformSQL();
    if ((v8 - 100) < 2 || v8 == 0)
    {
      v15 = vm_vmd_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v26 = v5;
        v27 = 2112;
        *v28 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "The %@ column already exists on %@, skipping this step.", buf, 0x16u);
      }

      v10 = 1;
      goto LABEL_35;
    }

    v12 = [[NSString alloc] initWithFormat:@"Voicemail database migration failed to add column %@ to the %@ table.", v5, v6];
    v13 = [[NSString alloc] initWithFormat:@"Added %@ column to the %@ table.", v5, v6];
    v14 = [[NSString alloc] initWithFormat:@"ALTER TABLE %@ ADD COLUMN %@ %@;", v6, v5, @"TEXT"];
    v15 = v12;
    v16 = v13;
    v17 = v14;
    if (![v17 length])
    {
      v21 = vm_vmd_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No migration block to execute!", buf, 2u);
      }

      v10 = 1;
      goto LABEL_34;
    }

    v18 = CSDBSqliteConnectionPerformSQL();
    if (v18)
    {
      v19 = v18 == 101;
    }

    else
    {
      v19 = 1;
    }

    v10 = v19;
    if (v18 && (v20 = v18, v18 != 101))
    {
      v21 = vm_vmd_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v26 = v15;
        v27 = 1024;
        *v28 = v20;
        *&v28[4] = 2080;
        *&v28[6] = CSDBSqliteErrMsg();
        v22 = "%@ SQLiteResult: %d SQLite Message: %s";
        v23 = v21;
        v24 = 28;
        goto LABEL_33;
      }
    }

    else
    {
      v21 = vm_vmd_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v16;
        v22 = "VMMessageStore migration complete: %@";
        v23 = v21;
        v24 = 12;
LABEL_33:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      }
    }

LABEL_34:

LABEL_35:
    goto LABEL_16;
  }

  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v26 = a1;
    v27 = 2112;
    *v28 = v5;
    *&v28[8] = 2112;
    *&v28[10] = @"TEXT";
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cannot perform migration because of %@, %@, %@, %@", buf, 0x2Au);
  }

  v10 = 1;
LABEL_16:

  return v10;
}

void sub_10008EBE0(uint64_t a1, CFIndex *a2)
{
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 136315138;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Perform UUID migration for table %s", buf, 0xCu);
  }

  v6 = sub_10008ADE0(a1, a2);
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    v9 = vm_vmd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = Count;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found %ld records for UUID migration", buf, 0xCu);
    }

    if (Count >= 1)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
        if (ValueAtIndex)
        {
          Property = CSDBRecordGetProperty();
          v14 = sub_100087978(Property);
          v15 = CSDBRecordGetProperty();
        }

        else
        {
          v14 = sub_100087978(0);
          v15 = 0;
        }

        v16 = sub_100087978(v15);
        if ([v16 length])
        {
          v17 = vm_vmd_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218498;
            v26 = v11;
            v27 = 2112;
            v28 = v16;
            v29 = 2112;
            v30 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%ld] Found UUID %@ for token %@", buf, 0x20u);
          }

          goto LABEL_26;
        }

        if (v14 && [v14 length])
        {
          v17 = [NSUUID hashedUUID:v14];
          [v17 UUIDString];
          if (ValueAtIndex)
          {
            CSDBRecordSetProperty();
          }

          v18 = vm_vmd_log();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_25;
          }

          v19 = [v17 UUIDString];
          *buf = 134218498;
          v26 = v11;
          v27 = 2112;
          v28 = v19;
          v29 = 2112;
          v30 = v14;
          v20 = v18;
          v21 = "[%ld] Added UUID %@ for token %@";
          v22 = 32;
        }

        else
        {
          v17 = +[NSUUID UUID];
          [v17 UUIDString];
          if (ValueAtIndex)
          {
            CSDBRecordSetProperty();
          }

          v18 = vm_vmd_log();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_25;
          }

          v19 = [v17 UUIDString];
          *buf = 134218242;
          v26 = v11;
          v27 = 2112;
          v28 = v19;
          v20 = v18;
          v21 = "[%ld] Added UUID %@ for empty token";
          v22 = 22;
        }

        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);

LABEL_25:
        v10 = 1;
LABEL_26:

        if (Count == ++v11)
        {
          if (v10)
          {
            v23 = vm_vmd_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Saving store after UUID migration", buf, 2u);
            }

            CSDBRecordSaveStore();
          }

          break;
        }
      }
    }

    CFRelease(v7);
  }

  else
  {
    v24 = vm_vmd_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Did not find any records for UUID migration", buf, 2u);
    }
  }
}

uint64_t sub_10008FE44()
{
  CSDBRecordStoreCreateTablesForClass();
  result = CSDBSqliteConnectionStatementForSQL();
  if (result)
  {
    CSDBSqliteStatementPerform();

    return CSDBSqliteStatementReset();
  }

  return result;
}

void sub_1000900C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000900D8(uint64_t a1)
{
  result = [*(a1 + 32) getRecordProperty_sync:*(a1 + 48) property:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

unsigned int *sub_1000901D8(unsigned int *result)
{
  v1 = *(result + 5);
  if (v1)
  {
    return [*(result + 4) setRecordProperty_sync:v1 property:result[14] value:*(result + 6)];
  }

  return result;
}

void sub_1000902B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000902D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = CSDBRecordGetID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

id sub_1000903A0(uint64_t a1)
{
  v2 = nullsub_8([*(a1 + 32) getRecordProperty_sync:*(a1 + 40) property:8]);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_1000878B8(v3 | v2);

  return [v5 setRecordProperty_sync:v4 property:8 value:v6];
}

id sub_1000904A0(uint64_t a1)
{
  v2 = nullsub_8([*(a1 + 32) getRecordProperty_sync:*(a1 + 40) property:8]);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_1000878B8(v2 & ~v3);

  return [v5 setRecordProperty_sync:v4 property:8 value:v6];
}

void sub_100090684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009069C(uint64_t a1)
{
  [*(a1 + 32) getRecordDescriptor];
  *(*(*(a1 + 72) + 8) + 24) = CSDBRecordCreate();
  v2 = *(*(*(a1 + 72) + 8) + 24);
  if (v2)
  {
    [*(a1 + 32) setRecordProperty_sync:v2 property:0 value:sub_1000878B8(*(a1 + 80))];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:1 value:sub_100088C40(*(a1 + 84))];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:2 value:nullsub_8(*(a1 + 40))];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:3 value:nullsub_8(*(a1 + 48))];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:4 value:nullsub_8(*(a1 + 56))];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:5 value:sub_100088C40(*(a1 + 88))];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:6 value:sub_100088C40(*(a1 + 92))];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:8 value:sub_100088C40(*(a1 + 96))];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:9 value:nullsub_8(*(a1 + 64))];
    [*(a1 + 32) getStore];
    v3 = *(*(*(a1 + 72) + 8) + 24);
    CSDBRecordStoreAddRecord();
    [*(a1 + 32) getStore];
    CSDBRecordSaveStore();
    v4 = VMStoreRecordCopyDescription(*(*(*(a1 + 72) + 8) + 24));
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Add record %@ for account %@", &v7, 0x16u);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

uint64_t sub_1000909D0(uint64_t a1)
{
  v2 = VMStoreRecordCopyDescription(*(a1 + 40));
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412546;
    v12 = v2;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remove record %@ for account %@", buf, 0x16u);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if ((nullsub_8([*(a1 + 32) getRecordProperty_sync:*(a1 + 40) property:8]) & 2) != 0)
  {
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d%s", [*(a1 + 32) getRecordIdentifier_sync:*(a1 + 40)], VMStoreGetDataFileExtension());
    v6 = [*(a1 + 32) accountDir];
    v7 = [v6 URLByAppendingPathComponent:v5 isDirectory:0];

    v8 = [v7 path];
    unlink([v8 UTF8String]);
  }

  [*(a1 + 32) getStore];
  v9 = *(a1 + 40);
  return CSDBRecordStoreRemoveRecord();
}