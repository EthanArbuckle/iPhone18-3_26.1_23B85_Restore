id RDASRWSpeechRecognitionTokenGetTokenName(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenGetTokenName(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenGetTokenName(a1);
  }
}

id RDASRWSpeechRecognitionTokenGetStart(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenGetStart(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenGetStart(a1);
  }
}

id RDASRWSpeechRecognitionTokenGetEnd(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenGetEnd(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenGetEnd(a1);
  }
}

id RDASRWSpeechRecognitionTokenGetSilenceStart(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenGetSilenceStart(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenGetSilenceStart(a1);
  }
}

id RDASRWSpeechRecognitionTokenGetConfidence(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenGetConfidence(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenGetConfidence(a1);
  }
}

id RDASRWSpeechRecognitionTokenHasSpaceAfter(void *a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerTranscriptionTokenHasSpaceAfter(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionTokenHasSpaceAfter(a1);
  }
}

uint64_t RDASRWSpeechRecognitionGetTokens(uint64_t a1)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerSpeechRecognitionGetTokens(a1);
  }

  else
  {

    return RDEARCSpeechRecognitionGetTokens(a1);
  }
}

uint64_t RDPeer::RDPeer(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = off_1000FF400;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void RDPeer::~RDPeer(RDPeer *this)
{
  *this = off_1000FF400;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = [v2 connection];
    [v3 invalidate];

    v4 = *(this + 1);
    *(this + 1) = 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 4) = 0;

    v5 = *(this + 4);
  }
}

{
  RDPeer::~RDPeer(this);

  operator delete();
}

CFTypeRef RDPeer::ClientHello(RDPeer *this, CFTypeRef cf)
{
  result = CFRetain(cf);
  *(this + 3) = cf;
  return result;
}

uint64_t RDPeer::ClientUpdate(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 24))
    {
      v4 = RXOSLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 24);
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client Hello %@", &v10, 0xCu);
      }
    }

    v6 = xpc_copy_description(v3);
    v7 = RXOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client Update %s", &v10, 0xCu);
    }

    free(v6);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 24) = 0;
  }

  return 0;
}

void RDPeer::GetAudio(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 16) == 1)
  {
    length = 0;
    xpc_dictionary_get_data(v6, kRDKeyAudioData, &length);
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uint64 = xpc_dictionary_get_uint64(v5, kRDKeyResultID);
      v10 = xpc_dictionary_get_uint64(v5, kRDKeyStartTime);
      v11 = xpc_dictionary_get_uint64(v5, kRDKeyEndTime);
      *buf = 134218752;
      v14 = uint64;
      v15 = 2048;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      v19 = 2048;
      v20 = length;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Get Audio %llx[%llu, %llu] -> %lu samples\n", buf, 0x2Au);
    }
  }
}

void RDPeer::ReleaseResult(RDPeer *this, uint64_t a2)
{
  if (*(this + 16) == 1)
  {
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Release Result %llx\n", &v4, 0xCu);
    }
  }
}

void RDPeer::SetSecureFieldFocused(RDPeer *this, int a2)
{
  if (*(this + 16) == 1)
  {
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"NO";
      if (a2)
      {
        v4 = @"YES";
      }

      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Focus on secure field %@", &v5, 0xCu);
    }
  }
}

void RDPeer::AddLeadingContext(RDPeer *this, NSString *a2)
{
  v3 = a2;
  if (*(this + 16) == 1)
  {
    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Leading context %@", &v5, 0xCu);
    }
  }
}

void RDPeer::AddOtherContext(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 16) == 1)
  {
    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Other context %@", &v5, 0xCu);
    }
  }
}

void RDPeer::ResetRecognition(RDPeer *this)
{
  if (*(this + 16) == 1)
  {
    v5 = v1;
    v6 = v2;
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting recogition", v4, 2u);
    }
  }
}

void RDPeer::SetResetRecognitionMode(RDPeer *this)
{
  if (*(this + 16) == 1)
  {
    v5 = v1;
    v6 = v2;
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting recognition reset mode", v4, 2u);
    }
  }
}

void RDPeer::SaveUserProfileToFile(RDPeer *this, const char *a2)
{
  if (*(this + 16) == 1)
  {
    v6 = v2;
    v7 = v3;
    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saving user profile to file", v5, 2u);
    }
  }
}

id RDPeer::PhoneticNeighborsForText(RDPeer *this, NSString *a2)
{
  v2 = objc_opt_new();

  return v2;
}

void RDPeer::ServerIsRunning(RDPeer *this, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (a2)
  {
    v6 = 204;
  }

  else
  {
    v6 = 203;
  }

  xpc_dictionary_set_int64(v4, kRDKeyMessage, v6);
  if (*(this + 16) == 1)
  {
    v7 = xpc_copy_description(v5);
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Server Response %s", &v9, 0xCu);
    }

    free(v7);
  }

  RDPeer::SendClientMessage(this, v5);
}

void RDPeer::SendClientMessage(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = [v3 proxy];
      v5 = xpc_wrap_uint64s_in_object(v7);
      v6 = _CFXPCCreateCFObjectFromXPCObject();
      [v4 legacyClientEventWithMessage:v6];
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }
}

void RDPeer::CreatePeer(void *a1, __CFString *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a1;
  if (qword_10010E530)
  {
    if (CFStringCompare(qword_10010E530, a2, 0))
    {
      v10 = RXOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "A client attempted to configure the service with a different locale than the service was initially configured for.", &v16, 2u);
      }

      exit(0);
    }
  }

  else
  {
    qword_10010E530 = CFRetain(a2);
  }

  v11 = RXOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138413058;
    v17 = v9;
    v18 = 2112;
    v19 = a2;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CreatePeer, %@, %@, %llx, %p", &v16, 0x2Au);
  }

  if (a4)
  {
    v12 = a2;
    v13 = [(__CFString *)a2 UTF8String];
    RDKeyword::SetLocale(v13, v14);
  }

  v15 = RXOSLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Creating QSR peer", &v16, 2u);
  }

  *a5 = 1;
  RDCreateQSRPeer(v9);
}

uint64_t sub_10003E974(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10003E9EC(id a1)
{
  qword_10010E540 = objc_alloc_init(RDAssetManager2);

  _objc_release_x1();
}

uint64_t sub_10003F370(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003F388(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 _queryAndCopyInstallationStatusForLanguagesWithError:&v9];
  v4 = v9;
  v5 = v9;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *(*(a1[5] + 8) + 40);
  if (!v8 || ![v8 count])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

void sub_10003F5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10003F60C(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

intptr_t sub_10003FE08(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_1000402D0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  [v2 _cancelDownloadForLanguageWithError:v3 withError:&obj];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_1000407FC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v10 = 0;
  [SFSpeechAssetManager setAssetsPurgeability:v2 forLanguages:v3 error:&v10];
  v4 = v10;
  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    *buf = 138412802;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setPurgeabilityForLanguages, languages=%@  purgeability= %d error=%@", buf, 0x1Cu);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v4;
}

void sub_100040BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100040BD4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 _installedAssetForLanguage:v3 error:&v10];
  v5 = v10;
  v6 = v10;
  v7 = [v4 copy];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(a1[6] + 8) + 40))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

void sub_100041158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100041180(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v9 copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10004170C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000417DC;
  v10[3] = &unk_1000FF600;
  v10[4] = v7;
  v9 = v6;
  v14 = *(a1 + 56);
  v11 = v9;
  v13 = a2;
  v12 = *(a1 + 48);
  v15 = *(a1 + 60);
  v16 = a3;
  dispatch_async(v8, v10);
}

void sub_1000417DC(uint64_t a1)
{
  if ([*(a1 + 32) _isActiveDownloadForLanguage:*(a1 + 40) downloadId:*(a1 + 64)])
  {
    v2 = fmin(*(a1 + 56) / 100.0, 1.0);
    v3 = +[NSDate date];
    [v3 timeIntervalSinceDate:*(a1 + 48)];
    v5 = v4;

    v6 = -1.0;
    if (v2 > 0.0)
    {
      v7 = 0.0;
      if (v5 >= 0.0)
      {
        v7 = v5;
      }

      v8 = v7;
      v6 = (1.0 - v2) * v8 / v2;
    }

    v9 = *(a1 + 68) * v2;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (*(a1 + 72))
    {
      [v10 _stalledDownloadForLanguage:v11];
      v12 = RXOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = (v9 / *(a1 + 68));
        v14 = *(a1 + 64);
        v15 = [*(a1 + 32) _downloadStatusDescription];
        v29 = 134218754;
        *v30 = v13;
        *&v30[8] = 2048;
        *&v30[10] = v6;
        v31 = 1024;
        v32 = v14;
        v33 = 2112;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Asset Download Progress stalled at : %.2f ratio , ~%.2f seconds remaining, downloadId=%d, %@", &v29, 0x26u);
      }

      if ([*(a1 + 32) _sendCallback])
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        LODWORD(v18) = *(a1 + 68);
        v21 = @"Stalled";
        LODWORD(v16) = -1.0;
LABEL_20:
        *&v17 = v9;
        [v19 _sendDownloadCallbackDictionaryWithLanguage:v20 downloadPhase:v21 timeRemaining:0 bytesWritten:v16 bytesTotal:v17 error:v18];
      }
    }

    else
    {
      if ([v10 _isDownloadingStalledForLanguage:v11])
      {
        [*(a1 + 32) _resumeStalledDownloadForLanguage:*(a1 + 40)];
      }

      v25 = RXOSLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = (v9 / *(a1 + 68));
        v27 = *(a1 + 64);
        v28 = [*(a1 + 32) _downloadStatusDescription];
        v29 = 134218754;
        *v30 = v26;
        *&v30[8] = 2048;
        *&v30[10] = v6;
        v31 = 1024;
        v32 = v27;
        v33 = 2112;
        v34 = v28;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Asset Download progress: %.2f ratio , ~%.2f seconds remaining, downloadId=%d, %@", &v29, 0x26u);
      }

      if ([*(a1 + 32) _sendCallback])
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        LODWORD(v18) = *(a1 + 68);
        v21 = @"Downloading";
        *&v16 = v6;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v22 = RXOSLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 64);
      v24 = [*(a1 + 32) _downloadStatusDescription];
      v29 = 67109378;
      *v30 = v23;
      *&v30[4] = 2112;
      *&v30[6] = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Ignoring non-active asset download progress downloadId=%d, %@", &v29, 0x12u);
    }
  }
}

void sub_100041AFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041BE8;
  block[3] = &unk_1000FF650;
  block[4] = v8;
  v10 = v7;
  v17 = *(a1 + 48);
  v14 = v10;
  v15 = v6;
  v16 = v5;
  v18 = *(a1 + 52);
  v11 = v5;
  v12 = v6;
  dispatch_async(v9, block);
}

void sub_100041BE8(uint64_t a1)
{
  if ([*(a1 + 32) _isActiveDownloadForLanguage:*(a1 + 40) downloadId:*(a1 + 64)])
  {
    [*(a1 + 32) _endAllDownloadsForLanguage:*(a1 + 40)];
    v2 = *(a1 + 48);
    if ([*(a1 + 56) length])
    {
      v3 = sub_10004274C(*(a1 + 56), 0, @"DictationCC");
    }

    else
    {
      v3 = 0;
    }

    if ([*(a1 + 56) length] && (v3 & 1) == 0)
    {
      v33 = NSLocalizedFailureReasonErrorKey;
      v34 = @"Asset is incompatible";
      v6 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v7 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v6];

      v2 = v7;
    }

    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = [*(a1 + 32) _downloadStatusDescription];
      v25 = 138413314;
      *v26 = v9;
      *&v26[8] = 2112;
      *&v26[10] = v2;
      v27 = 1024;
      v28 = v3;
      v29 = 1024;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asset downloaded, assetPath=%@, error=%@, isCompatibleAsset=%d, downloadId=%d, %@", &v25, 0x2Cu);
    }

    v12 = RXOSLog();
    v13 = v12;
    if (v3)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Asset download successful", &v25, 2u);
      }

      v14 = *(a1 + 68);
      if ([*(a1 + 32) _sendCallback])
      {
        LODWORD(v16) = *(a1 + 68);
        LODWORD(v15) = v14;
        [*(a1 + 32) _sendDownloadCallbackDictionaryWithLanguage:*(a1 + 40) downloadPhase:@"Downloading" timeRemaining:0 bytesWritten:0.0 bytesTotal:v15 error:v16];
        LODWORD(v17) = *(a1 + 68);
        LODWORD(v18) = v14;
        [*(a1 + 32) _sendDownloadCallbackDictionaryWithLanguage:*(a1 + 40) downloadPhase:@"Downloaded" timeRemaining:0 bytesWritten:0.0 bytesTotal:v18 error:v17];
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Asset download failed", &v25, 2u);
      }

      if ([*(a1 + 32) _sendCallback])
      {
        v20 = *(a1 + 32);
        v19 = *(a1 + 40);
        v21 = [v2 description];
        LODWORD(v22) = -1.0;
        LODWORD(v23) = -1.0;
        LODWORD(v24) = -1.0;
        [v20 _sendDownloadCallbackDictionaryWithLanguage:v19 downloadPhase:@"DownloadFailed" timeRemaining:v21 bytesWritten:v22 bytesTotal:v23 error:v24];
      }
    }
  }

  else
  {
    v2 = RXOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 64);
      v5 = [*(a1 + 32) _downloadStatusDescription];
      v25 = 67109378;
      *v26 = v4;
      *&v26[4] = 2112;
      *&v26[6] = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring non-active asset download downloadId=%d, %@", &v25, 0x12u);
    }
  }
}

id sub_10004274C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ([v5 length])
  {
    v7 = [v5 stringByAppendingPathComponent:@"mini.json"];
    v8 = +[NSFileManager defaultManager];
    if (([v8 fileExistsAtPath:v7] & 1) == 0)
    {
      v9 = RXOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = @"mini.json";
        v33 = 2112;
        v34 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ does not exist at: %@ ", buf, 0x16u);
      }

      v13 = 0;
      goto LABEL_26;
    }

    v9 = [NSData dataWithContentsOfFile:v7];
    if (!v9)
    {
      v11 = RXOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "could not read contents from : %@", buf, 0xCu);
      }

      v13 = 0;
      goto LABEL_25;
    }

    v30 = 0;
    v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v30];
    v11 = v30;
    if (v11)
    {
      v12 = RXOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ : not a valid json", buf, 0xCu);
      }

      v13 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = 0;
        goto LABEL_24;
      }

      v12 = v10;
      v14 = +[_EARSpeechRecognizer minimumSupportedConfigurationVersion];
      [v14 floatValue];
      v16 = v15;

      v17 = +[_EARSpeechRecognizer maximumSupportedConfigurationVersion];
      [v17 floatValue];
      v19 = v18;

      v20 = [v12 objectForKey:@"version-major"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v20 floatValue], v21 >= v16) && (objc_msgSend(v20, "floatValue"), v22 <= v19))
      {
        v29 = [v12 objectForKey:@"model-info"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v29;
          v28 = [v27 objectForKey:@"version"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (a2 && (isKindOfClass & 1) != 0)
          {
            *a2 = v28;
          }

          v25 = [v27 objectForKey:@"tasks"];
          v26 = v25;
          if ([v28 length] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v13 = [v25 containsObject:v6];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

LABEL_24:
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v7 = RXOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "empty quasarModelPath", buf, 2u);
  }

  v13 = 0;
LABEL_27:

  return v13;
}

void sub_100043308(id a1)
{
  qword_10010E550 = objc_alloc_init(RDAssetManager);

  _objc_release_x1();
}

void sub_10004349C(uint64_t a1)
{
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"with";
    }

    else
    {
      v3 = @"without";
    }

    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Kicking off catalog download %@ urgency", buf, 0xCu);
  }

  if (([*(a1 + 32) catalogDownloadInProgress] & 1) == 0)
  {
    if (*(a1 + 40) == 1)
    {
      v4 = *(a1 + 32);
LABEL_13:
      [v4 setCatalogDownloadInProgress:1];
      v9 = RXOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Downloading EmbeddedSpeech catalog", buf, 2u);
      }

      v10 = sub_1000436DC(*(a1 + 40));
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100043740;
      v11[3] = &unk_1000FF6E8;
      v11[4] = *(a1 + 32);
      [MAAsset startCatalogDownload:@"com.apple.MobileAsset.EmbeddedSpeech" options:v10 then:v11];

      return;
    }

    v5 = +[NSDate date];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v4 = *(a1 + 32);
    if (v7 - v4[1] >= 86400.0)
    {
      goto LABEL_13;
    }

    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Too early since last catalog download. Returning.", buf, 2u);
    }
  }
}

id sub_1000436DC(int a1)
{
  v2 = objc_alloc_init(MADownloadOptions);
  [v2 setAllowsCellularAccess:0];
  [v2 setDiscretionary:a1 ^ 1u];
  [v2 setRequiresPowerPluggedIn:0];

  return v2;
}

void sub_100043740(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCatalogDownloadInProgress:0];
  v4 = RXOSLog();
  v5 = v4;
  if (!a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sucessfully downloaded the catalog", buf, 2u);
    }

    v12 = +[NSDate date];
    [v12 timeIntervalSinceReferenceDate];
    *(*(a1 + 32) + 8) = v13;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [*(a1 + 32) requestedLanguagesForDownload];
    v14 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v8);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = *(a1 + 32);
          v20 = *(v19 + 24);
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1000439C4;
          v21[3] = &unk_1000FF6C0;
          v21[4] = v19;
          v21[5] = v18;
          dispatch_async(v20, v21);
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v15);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) _errorStringForDownloadResult:a2];
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "The MobileAsset catalog download failed: error = %@", buf, 0xCu);
  }

  if ([*(a1 + 32) sendCallback])
  {
    v7 = *(a1 + 32);
    v8 = [v7 _errorStringForDownloadResult:a2];
    LODWORD(v9) = -1.0;
    LODWORD(v10) = -1.0;
    LODWORD(v11) = -1.0;
    [v7 _sendDownloadCallbackDictionaryWithLanguage:0 downloadPhase:@"DownloadFailed" timeRemaining:v8 bytesWritten:v9 bytesTotal:v10 error:v11];
LABEL_15:
  }
}

uint64_t sub_100043B14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100043B2C(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 queryAndCopyInstallationStatusForLangaugesWithError:&v9];
  v4 = v9;
  v5 = v9;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *(*(a1[5] + 8) + 40);
  if (!v8 || ![v8 count])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

id sub_100044290(void *a1)
{
  v1 = [a1 stringByAppendingPathComponent:@"mini.json"];
  v2 = +[NSFileManager defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v3 = [NSData dataWithContentsOfFile:v1];
    if (!v3)
    {
      v5 = RXOSLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "could not read contents from : %@", buf, 0xCu);
      }

      v7 = 0;
      goto LABEL_19;
    }

    v10 = 0;
    v4 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v10];
    v5 = v10;
    if (v5)
    {
      v6 = RXOSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v1;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ : not a valid json", buf, 0xCu);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_18;
      }

      v6 = [v4 objectForKey:@"model-info"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v6 objectForKey:@"tasks"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v8 containsObject:@"DictationCC"];
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_17;
      }
    }

    v7 = 0;
LABEL_17:

LABEL_18:
LABEL_19:

    goto LABEL_20;
  }

  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = @"mini.json";
    v13 = 2112;
    v14 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ does not exist at: %@ ", buf, 0x16u);
  }

  v7 = 0;
LABEL_20:

  return v7;
}

void sub_100044A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100044A38(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  [v2 _cancelDownloadForLangaugeWithError:v3 withError:&obj];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_100045048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100045074(uint64_t a1)
{
  v2 = [*(a1 + 32) catalogDownloadInProgress];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 requestedLanguagesForDownload];
    v5 = [v4 containsObject:*(a1 + 40)];

    if (v5)
    {
      return;
    }

    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Catalog download is in progress, caching %@", buf, 0xCu);
    }

    v8 = [*(a1 + 32) requestedLanguagesForDownload];
    [v8 addObject:*(a1 + 40)];

    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = @"Catalog download in progress";
    v11 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v12 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:v11];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
    goto LABEL_8;
  }

  v15 = *(a1 + 40);
  v22 = 0;
  v16 = [v3 _installedAssetForLanguage:v15 error:&v22];
  v11 = v22;
  v17 = [v16 _es_quasarModelPath];
  v18 = [v17 copy];
  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v21 = *(*(a1 + 56) + 8);
    v11 = v11;
    v14 = *(v21 + 40);
    *(v21 + 40) = v11;
LABEL_8:
  }
}

void sub_100045358(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100045408;
  v6[3] = &unk_1000FF760;
  v10 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  dispatch_async(v3, v6);
}

void sub_100045408(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    v4 = [*(a1 + 32) results];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = 0;
    v7 = [v5 _installedAssetFromFoundAssets:v4 language:v6 error:&v9];
    v2 = v9;
    if (!v7)
    {
      v8 = RXOSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote fetch asset fetch got assets but none have been installed yet: %@", buf, 0xCu);
      }
    }

    goto LABEL_9;
  }

  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _errorStringForQueryResult:*(a1 + 56)];
    *buf = 138412546;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Async asset query failed for query=%@, error=%@", buf, 0x16u);
LABEL_9:
  }
}

void sub_1000467E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isStalled];
  v5 = RXOSLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v23 = 134218240;
      v24 = COERCE_DOUBLE([v3 totalWritten]);
      v25 = 2048;
      v26 = [v3 totalExpected];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asset Download Progress stalled at %lld of %lld bytes", &v23, 0x16u);
    }

    if ([*(a1 + 32) sendCallback])
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) _es_language];
      v9 = [v3 totalWritten];
      *&v10 = [v3 totalExpected];
      v11 = @"Stalled";
      LODWORD(v12) = -1.0;
      v13 = v7;
      v14 = v8;
      *&v15 = v9;
LABEL_10:
      [v13 _sendDownloadCallbackDictionaryWithLanguage:v14 downloadPhase:v11 timeRemaining:0 bytesWritten:v12 bytesTotal:v15 error:v10];
    }
  }

  else
  {
    if (v6)
    {
      v16 = [v3 totalWritten];
      v17 = (v16 / [v3 totalExpected]);
      [v3 expectedTimeRemaining];
      v23 = 134218240;
      v24 = v17;
      v25 = 2048;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asset Download progress: %.2f percent , ~%.2f seconds remaining", &v23, 0x16u);
    }

    if ([*(a1 + 32) sendCallback])
    {
      v19 = *(a1 + 32);
      v8 = [*(a1 + 40) _es_language];
      [v3 expectedTimeRemaining];
      v21 = v20;
      v22 = [v3 totalWritten];
      *&v10 = [v3 totalExpected];
      v11 = @"Downloading";
      v13 = v19;
      v14 = v8;
      *&v12 = v21;
      *&v15 = v22;
      goto LABEL_10;
    }
  }
}

void sub_1000469F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if ([*(a1 + 32) sendCallback])
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) _es_language];
      v6 = [*(a1 + 32) _errorStringForDownloadResult:a2];
      LODWORD(v7) = -1.0;
      LODWORD(v8) = -1.0;
      LODWORD(v9) = -1.0;
      [v4 _sendDownloadCallbackDictionaryWithLanguage:v5 downloadPhase:@"DownloadFailed" timeRemaining:v6 bytesWritten:v7 bytesTotal:v8 error:v9];
    }

    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) _errorStringForDownloadResult:a2];
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Asset download failed: %@", &v17, 0xCu);
    }

    goto LABEL_10;
  }

  v12 = RXOSLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Asset download successful", &v17, 2u);
  }

  if ([*(a1 + 32) sendCallback])
  {
    v13 = *(a1 + 32);
    v10 = [*(a1 + 40) _es_language];
    LODWORD(v14) = -1.0;
    LODWORD(v15) = -1.0;
    LODWORD(v16) = -1.0;
    [v13 _sendDownloadCallbackDictionaryWithLanguage:v10 downloadPhase:@"Downloaded" timeRemaining:0 bytesWritten:v14 bytesTotal:v15 error:v16];
LABEL_10:
  }
}

void sub_100046BAC(uint64_t a1, uint64_t a2)
{
  v4 = RXOSLog();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) _errorStringForPurgeResult:a2];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to purge %@: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Purged %@", &v9, 0xCu);
  }
}

void *sub_100046CDC(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.EmbeddedSpeech"];
  v5 = [v4 queryMetaDataSync];
  if (!v5)
  {
    v20 = v4;
    [v4 results];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v24 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v22;
      v14 = ASAttributeUnarchivedSize;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 _es_isInstalled])
          {
            buf[0] = 0;
            v3[2](v3, v16, buf);
            if (buf[0] == 1)
            {
              goto LABEL_18;
            }

            v17 = [v16 attributes];
            v18 = [v17 objectForKey:v14];
            v12 += [v18 longLongValue];
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

LABEL_18:

    a1 = [NSNumber numberWithLongLong:v12];
    v4 = v20;
    goto LABEL_19;
  }

  v6 = v5;
  v7 = RXOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MobileAsset is sad: %ld", buf, 0xCu);
  }

  if (a1)
  {
    v26 = @"MAQueryResult";
    v8 = [NSNumber numberWithInteger:v6];
    v27 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *a1 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v9];

    a1 = 0;
LABEL_19:
  }

  return a1;
}

void sub_1000470A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000470BC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = RXOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Purging asset for CacheDelete: %@", buf, 0xCu);
  }

  v7 = [v5 purgeSync];
  if (v7)
  {
    v8 = [NSNumber numberWithInteger:v7, @"MAPurgeResult"];
    v16 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:102 userInfo:v9];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = RXOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Purging failed: %@", buf, 0xCu);
    }

    *a3 = 1;
  }
}

RDSpeechDonation *RDSpeechDonationInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [[NSLocale alloc] initWithLocaleIdentifier:a3];
  v8 = [[RDSpeechDonation alloc] initWithBundleID:a1 donorReferenceID:a2 locale:v7 taskHint:a4];

  return v8;
}

uint64_t RDQSRPeer::RDQSRPeer(uint64_t a1, void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  RDPeer::RDPeer(a1, v9);
  *a1 = off_1000FFAF8;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 152) = 0;
  *(a1 + 160) = a5;
  *(a1 + 200) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 201) = a5 != 0;
  *(a1 + 202) = 256;
  *(a1 + 208) = a3;
  *(a1 + 216) = 0;
  CFRetain(a3);
  v10 = gRDServerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047EEC;
  block[3] = &unk_1000FFB70;
  v15 = a1;
  v16 = a4;
  v14 = v9;
  v11 = v9;
  dispatch_async(v10, block);
  if ((a4 & 8) != 0)
  {
    *(a1 + 205) = 1;
  }

  return a1;
}

void sub_100047E90(_Unwind_Exception *a1)
{
  sub_10001A178(v7, *(v1 + 18));
  sub_10001A178(v6, *(v1 + 15));
  sub_100019334(v5, *(v1 + 12));
  sub_10004B29C(v4, *(v1 + 9));
  sub_10001A178(v3, *(v1 + 6));
  RDPeer::~RDPeer(v1);

  _Unwind_Resume(a1);
}

void sub_100047EEC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (RDQSREngine::Instantiate(*(v2 + 208), *(a1 + 48)))
  {
    RDPeer::ServerIsRunning(v2, 1);
    if ((*(a1 + 48) & 8) != 0)
    {
      v3 = RDQSREngine::fullModelDir(RDQSREngine::sInstance);
      if (v3)
      {
        v4 = v3;
        if (!CFStringGetCStringPtr(v3, 0x8000100u))
        {
          Length = CFStringGetLength(v4);
          CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          operator new[]();
        }
      }

      [*(v2 + 208) UTF8String];
      *(v2 + 216) = SRSSPhoneticCheckerCreate();
    }
  }

  else
  {
    RDPeer::ServerIsRunning(v2, 0);
    v6 = [*(a1 + 32) connection];
    [v6 invalidate];
  }
}

void RDQSRPeer::Terminate(id *this)
{
  v2 = [this[1] connection];
  [v2 invalidate];

  v3 = this[1];
  this[1] = 0;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048134;
  block[3] = &unk_1000FDCD8;
  block[4] = this;
  dispatch_async(gRDServerQueue, block);
}

uint64_t sub_100048134(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void RDQSRPeer::~RDQSRPeer(CFTypeRef *this)
{
  *this = off_1000FFAF8;
  CFRelease(this[26]);
  v2 = RDQSREngine::sInstance;
  v3 = this[5];
  if (v3 != (this + 6))
  {
    do
    {
      RDQSREngine::RemoveGrammar(v2, *(*(v3 + 4) + 16));
      v4 = *(v3 + 4);
      if (v4)
      {

        v5 = *(v4 + 40);
        *(v4 + 40) = 0;
        if (v5)
        {
          v13 = (v5 + 32);
          sub_10002A0F4(&v13);
          v6 = *(v5 + 24);
          *(v5 + 24) = 0;
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }

          v7 = *(v5 + 16);
          *(v5 + 16) = 0;
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }

          operator delete();
        }

        operator delete();
      }

      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v11 = *v9 == v3;
          v3 = v9;
        }

        while (!v11);
      }

      v3 = v9;
    }

    while (v9 != (this + 6));
  }

  v10 = this[20];
  if (v10)
  {
    RDAudioObject::~RDAudioObject(v10);
    operator delete();
  }

  v11 = *(this + 205) != 1 || v2 == 0;
  if (!v11)
  {
    RDQSREngine::removeLogAudioFile(v2);
  }

  v12 = this[27];
  if (v12)
  {
    CFRelease(v12);
    this[27] = 0;
  }

  if (*(this + 200) == 1)
  {
    RDQSREngine::RemovePeer(v2, this);
  }

  sub_10001A178((this + 17), this[18]);
  sub_10001A178((this + 14), this[15]);
  sub_100019334((this + 11), this[12]);
  sub_10004B29C((this + 8), this[9]);
  sub_10001A178((this + 5), this[6]);
  RDPeer::~RDPeer(this);
}

{
  RDQSRPeer::~RDQSRPeer(this);

  operator delete();
}

uint64_t sub_1000483AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    v6 = (v2 + 32);
    sub_10002A0F4(&v6);
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete();
  }

  return a1;
}

void RDQSRPeer::UpdateOrReleaseObject(uint64_t a1, unint64_t a2, void *a3)
{
  v59 = a2;
  v6 = a3;
  if (!*(a1 + 8))
  {
    goto LABEL_65;
  }

  v7 = *(a1 + 96);
  v8 = (a1 + 88);
  if (!v7)
  {
    goto LABEL_15;
  }

  v9 = a1 + 96;
  do
  {
    v10 = *(v7 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * v12);
  }

  while (v7);
  if (v9 != a1 + 96 && *(v9 + 32) <= a2 && (v14 = (v9 + 40), (v13 = *(v9 + 40)) != 0))
  {
    type = xpc_get_type(v13);
    if (type != &_xpc_type_dictionary)
    {
      v16 = RXOSLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = type;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "API misuse while updating objects : XPC_TYPE_DICTIONARY expected, passed %@ ", buf, 0xCu);
      }

      goto LABEL_65;
    }

    if (xpc_dictionary_get_int64(*v14, kRDKeyObjectType) == 1)
    {
      if (v6)
      {
        if (xpc_dictionary_get_BOOL(v6, kRDKeyIsListening))
        {
          v29 = RXOSLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v59;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Activating recognizer %llu", buf, 0xCu);
          }
        }

        goto LABEL_73;
      }

      sub_10002FD0C((a1 + 112), &v59);
    }

    else if (xpc_dictionary_get_BOOL(*v14, kRDKeyTopLevelLM))
    {
      *buf = v59;
      v62 = 0;
      v63 = 0;
      v61 = 0;
      v64 = 1;
      v65 = 0;
      v58 = buf;
      v37 = sub_10004B2FC(a1 + 40, &v58);
      v38 = v37;
      if (a1 + 48 == v37)
      {
        if (v6)
        {
          operator new();
        }
      }

      else
      {
        if (v6)
        {
          *(*(v37 + 32) + 48) = 1;
          sub_1000483AC(buf);
LABEL_73:
          objc_storeStrong((v9 + 40), a3);
          goto LABEL_65;
        }

        RDQSREngine::RemoveGrammar(RDQSREngine::sInstance, *(*(v37 + 32) + 16));
        v50 = v38[4];
        if (v50)
        {
          sub_1000483AC(v50);
          operator delete();
        }

        sub_10002FD90((a1 + 40), v38);
        operator delete(v38);
      }

      sub_1000483AC(buf);
    }

    else if (v6)
    {
      int64 = xpc_dictionary_get_int64(v6, kRDKeyObjectType);
      if (int64 <= 0xD && ((1 << int64) & 0x2C00) != 0)
      {
        RDQSRPeer::checkAndUpdateLMCache(a1, v6);
      }

      goto LABEL_73;
    }

    v53 = *(a1 + 72);
    v52 = a1 + 72;
    v51 = v53;
    if (v53)
    {
      v54 = v52;
      do
      {
        v55 = *(v51 + 32);
        v11 = v55 >= v59;
        v56 = v55 < v59;
        if (v11)
        {
          v54 = v51;
        }

        v51 = *(v51 + 8 * v56);
      }

      while (v51);
      if (v54 != v52 && v59 >= *(v54 + 32))
      {
        sub_10004B53C((v52 - 8), v54);
      }
    }

    sub_10004B57C(v8, v9);
  }

  else
  {
LABEL_15:
    if (v6)
    {
      v17 = xpc_dictionary_get_int64(v6, kRDKeyObjectType);
      if (v17)
      {
        *buf = v59;
        v18 = v6;
        *&buf[8] = v18;
        sub_10004B5B8(a1 + 88, buf);

        if (v17 == 1)
        {
          v19 = RXOSLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v59;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Adding new recognizer %llu", buf, 0xCu);
          }

          sub_10004B6A4(a1 + 112, &v59);
        }

        else if (xpc_dictionary_get_BOOL(v18, kRDKeyTopLevelLM))
        {
          operator new();
        }
      }

      else
      {
        v20 = xpc_dictionary_get_value(v6, kRDKeyURL);
        v21 = v20;
        if (v20)
        {
          bytes_ptr = xpc_data_get_bytes_ptr(v20);
          length = xpc_data_get_length(v21);
          v24 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, bytes_ptr, length, kCFAllocatorNull);
          if (v24)
          {
            v27 = CFURLCreateByResolvingBookmarkData(kCFAllocatorDefault, v24, 0x100uLL, 0, 0, 0, 0);
            if (v27)
            {
              RDQSREngine::UseFileAudio(RDQSREngine::sInstance, v27, v25, v26);
            }

            CFRelease(v24);
          }
        }

        else
        {
          v28 = xpc_dictionary_get_value(v6, kRDKeyAudioData);
          if (v28)
          {
            RDQSREngine::UseCannedAudio(RDQSREngine::sInstance, v28);
          }

          if (*(a1 + 160))
          {
            if (RXAutomationModeResult() || RXAutomationModeSynthesis() || RXAutomationModeFileName())
            {
              v31 = RDQSREngine::sInstance;
              v32 = RXAutomationSimulateOpenMic();
              RDQSREngine::UseMixedAudio(v31, v32);
            }

            else
            {
              RDQSREngine::UseLiveAudio(RDQSREngine::sInstance, *(a1 + 160), v30);
            }
          }
        }

        v33 = xpc_dictionary_get_value(v6, kRDKeyTextToBeRecognized);
        v34 = v33;
        if (v33)
        {
          string_ptr = xpc_string_get_string_ptr(v33);
          v36 = CFStringCreateWithCString(0, string_ptr, 0x8000100u);
          if (RXAutomationModeResult())
          {
            RDQSREngine::RecognizeText(RDQSREngine::sInstance, v36);
          }

          else if (RXAutomationModeSynthesis())
          {
            RDQSREngine::SynthesizeText(RDQSREngine::sInstance, v36);
          }

          else if (RXAutomationModeFileName())
          {
            RDQSREngine::RecognizeAudioFile(RDQSREngine::sInstance, v36);
          }

          else
          {
            v39 = RXOSLog();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Unknown Audio mode specified", buf, 2u);
            }
          }

          if (v36)
          {
            CFRelease(v36);
          }
        }

        v40 = xpc_dictionary_get_value(v6, kRDKeyFilterProfanity);
        v41 = v40;
        if (v40)
        {
          v42 = *(a1 + 204);
          if (v42 != xpc_BOOL_get_value(v40))
          {
            v43 = (*(a1 + 204) & 1) == 0;
            *(a1 + 204) = v43;
            RDQSREngine::FilterProfanity(RDQSREngine::sInstance, v43);
          }
        }

        v44 = xpc_dictionary_get_value(v6, kRDKeyIsListening);
        v45 = v44;
        if (v44)
        {
          *(a1 + 202) = 1;
          v46 = *(a1 + 203);
          if (v46 != xpc_BOOL_get_value(v44))
          {
            v47 = (*(a1 + 203) & 1) == 0;
            *(a1 + 203) = v47;
            RDQSREngine::CanListen(RDQSREngine::sInstance, a1, v47);
            v48 = dispatch_time(0, 1000000000);
            v57[0] = _NSConcreteStackBlock;
            v57[1] = 3221225472;
            v57[2] = sub_10004955C;
            v57[3] = &unk_1000FDCD8;
            v57[4] = a1;
            dispatch_after(v48, gRDServerQueue, v57);
          }
        }

        *(a1 + 184) = xpc_dictionary_get_uint64(v6, kRDKeyObjectID);
        *(a1 + 192) = xpc_dictionary_get_uint64(v6, kRDKeyCallbacks);
      }
    }
  }

LABEL_65:
}

void sub_100048D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_10001A178(va, v11);
  sub_1000483AC(va1);

  _Unwind_Resume(a1);
}

void RDQSRPeer::updateLMCache(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  type = xpc_get_type(v5);
  if (type != &_xpc_type_dictionary)
  {
    v7 = RXOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *&buf[4] = type;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "API misuse while updating LM : XPC_TYPE_DICTIONARY expected, passed %@ ", buf, 0xCu);
    }

    goto LABEL_4;
  }

  if ((xpc_dictionary_get_int64(v5, kRDKeyObjectType) & 0xFFFFFFFFFFFFFFFELL) != 0xA)
  {
    goto LABEL_5;
  }

  v7 = xpc_dictionary_get_value(v5, kRDKeyChildren);
  count = xpc_array_get_count(v7);
  if (count)
  {
    v9 = 0;
    v10 = (a1 + 72);
    do
    {
      uint64 = xpc_array_get_uint64(v7, v9);
      *buf = &uint64;
      v11 = sub_100018774(a1 + 88, &uint64)[5];
      v12 = *v10;
      if (*v10)
      {
        v13 = (a1 + 72);
        do
        {
          v14 = v12[4];
          v15 = v14 >= uint64;
          v16 = v14 < uint64;
          if (v15)
          {
            v13 = v12;
          }

          v12 = v12[v16];
        }

        while (v12);
        if (v13 != v10 && uint64 >= v13[4] && v13[7] == *(a3 + 16))
        {
          v18 = v13[5];
          v19 = v13 + 6;
          if (v18 == v19)
          {
            goto LABEL_18;
          }

          v20 = *a3;
          while (v18[4] == v20[4])
          {
            v21 = v18[1];
            v22 = v18;
            if (v21)
            {
              do
              {
                v18 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v18 = v22[2];
                v23 = *v18 == v22;
                v22 = v18;
              }

              while (!v23);
            }

            v24 = v20[1];
            if (v24)
            {
              do
              {
                v25 = v24;
                v24 = *v24;
              }

              while (v24);
            }

            else
            {
              do
              {
                v25 = v20[2];
                v23 = *v25 == v20;
                v20 = v25;
              }

              while (!v23);
            }

            v20 = v25;
            if (v18 == v19)
            {
              goto LABEL_18;
            }
          }
        }
      }

      *buf = &uint64;
      v17 = sub_10004B770(a1 + 64, &uint64);
      sub_1000499C4((v17 + 5), *a3, (a3 + 8));
      RDQSRPeer::updateLMCache(a1, v11, a3);
LABEL_18:

      ++v9;
    }

    while (v9 != count);
  }

LABEL_4:

LABEL_5:
}

void RDQSRPeer::checkAndUpdateLMCache(uint64_t a1, void *a2)
{
  xdict = a2;
  uint64 = xpc_dictionary_get_uint64(xdict, kRDKeyObjectID);
  v26 = uint64;
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = a1 + 72;
    do
    {
      v7 = *(v5 + 32);
      v8 = v7 >= uint64;
      v9 = v7 < uint64;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * v9);
    }

    while (v5);
    if (v6 != a1 + 72 && uint64 >= *(v6 + 32))
    {
      *buf = &v26;
      v11 = sub_10004B770(a1 + 64, &v26);
      string = xpc_dictionary_get_string(xdict, kRDKeyCategoryID);
      v13 = v11[5];
      if (v13 == v11 + 6)
      {
LABEL_38:
        RDQSRPeer::updateLMCache(a1, xdict, (v11 + 5));
        goto LABEL_12;
      }

      v14 = string;
      while (1)
      {
        *buf = v13[4];
        v31 = 0;
        v32 = 0;
        v30 = 0;
        v33 = 1;
        v34 = 0;
        *__s = buf;
        v15 = sub_10004B2FC(a1 + 40, __s);
        if (a1 + 48 != v15)
        {
          if (v14)
          {
            sub_1000113AC(__s, v14);
            doesSupportCategory = rd_userprofile_util::doesSupportCategory(__s);
            v17 = doesSupportCategory;
            if (v28 < 0)
            {
              operator delete(*__s);
              if (v17)
              {
LABEL_19:
                if (RXLogServerGrammar())
                {
                  v18 = RXOSLog();
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    *__s = 136315138;
                    *&__s[4] = v14;
                    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating category -> %s", __s, 0xCu);
                  }
                }

                objc_storeStrong((*(v15 + 32) + 64), a2);
                goto LABEL_26;
              }
            }

            else if (doesSupportCategory)
            {
              goto LABEL_19;
            }
          }

          *(*(v15 + 32) + 48) = 1;
        }

LABEL_26:

        v19 = v32;
        v32 = 0;
        if (v19)
        {
          *__s = v19 + 32;
          sub_10002A0F4(__s);
          v20 = *(v19 + 24);
          *(v19 + 24) = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }

          v21 = *(v19 + 16);
          *(v19 + 16) = 0;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }

          operator delete();
        }

        v22 = v13[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v13[2];
            v24 = *v23 == v13;
            v13 = v23;
          }

          while (!v24);
        }

        v13 = v23;
        if (v23 == v11 + 6)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v10 = RXOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = v26;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "LMCache: Language ID %llu was not stored in cache and is updated", buf, 0xCu);
  }

LABEL_12:
}

void sub_10004955C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (RDQSREngine::PeerExists(RDQSREngine::sInstance, v1) && (*(RDQSREngine::sInstance + 85) & 1) == 0)
  {

    RDQSRPeer::EndUtt(v1);
  }
}

void RDQSRPeer::EndUtt(RDQSRPeer *this)
{
  if (*(this + 202) == 1 && (*(this + 203) & 1) == 0)
  {
    v2 = RDQSREngine::sInstance;
    v3 = *(this + 17);
    v26 = this + 136;
    v4 = this + 144;
    if (v3 != this + 144)
    {
      v5 = this + 48;
      do
      {
        v27[0] = *(v3 + 4);
        v27[1] = 0;
        v28 = 0;
        v29 = 0;
        v27[3] = 0;
        v30 = 1;
        v31 = 0;
        *__p = v27;
        v6 = sub_10004B2FC(this + 40, __p);
        v7 = v6;
        if (v5 != v6 && xpc_dictionary_get_string(*(*(v6 + 32) + 32), kRDKeyCommandID))
        {
          string = xpc_dictionary_get_string(*(*(v7 + 32) + 32), kRDKeyCommandID);
          sub_1000113AC(__p, string);
          v9 = RXOSLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = __p;
            if (v34[9] < 0)
            {
              v10 = *__p;
            }

            *buf = 136315138;
            v37 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Deactivate Grammar after End of utterance: CommandID -> %s", buf, 0xCu);
          }

          if ((v34[9] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v11 = RXOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(v7 + 32) + 16);
          v13 = *(this + 202);
          v14 = *(this + 203);
          *__p = 134218496;
          *&__p[4] = v12;
          v33 = 1024;
          *v34 = v13;
          *&v34[4] = 1024;
          *&v34[6] = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deactivating Grammar after end of utterance -> %zu, fClientActivated = %d, fCanListen = %d", __p, 0x18u);
        }

        v15 = RDQSRPeer::CopyCommandsInGrammar(this, *(*(v7 + 32) + 32));
        v16 = RXOSLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(v7 + 32);
          v18 = *v17;
          v19 = v17[2];
          *__p = 134218498;
          *&__p[4] = v18;
          v33 = 2048;
          *v34 = v19;
          *&v34[8] = 2112;
          v35 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Deactivating Grammar after end of utterance -> lmid = %llu, grammarID = %zu, %@", __p, 0x20u);
        }

        CFRelease(v15);
        RDQSREngine::GrammarIsLive(v2, *(*(v7 + 32) + 16), 0);

        v20 = v29;
        v29 = 0;
        if (v20)
        {
          *__p = v20 + 32;
          sub_10002A0F4(__p);
          v21 = *(v20 + 24);
          *(v20 + 24) = 0;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }

          v22 = *(v20 + 16);
          *(v20 + 16) = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          operator delete();
        }

        v23 = *(v3 + 1);
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = *(v3 + 2);
            v25 = *v24 == v3;
            v3 = v24;
          }

          while (!v25);
        }

        v3 = v24;
      }

      while (v24 != v4);
    }

    sub_10001A178(v26, *(this + 18));
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(this + 17) = v4;
    RDQSREngine::BuildCombinedGrammar(v2, 0);
  }
}

void sub_10004997C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_1000483AC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1000499C4(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10004B4A4(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t RDQSRPeer::EngineIsRunning(RDQSRPeer *this)
{
  if (RDQSREngine::sInstance && *(RDQSREngine::sInstance + 16))
  {
    if ((*(this + 200) & 1) == 0)
    {
      RDQSREngine::AddPeer(RDQSREngine::sInstance, this);
      *(this + 200) = 1;
    }

    if (!RXVeryVerbose())
    {
      return 1;
    }

    v2 = RXOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Engine is running", v5, 2u);
    }

    v3 = 1;
  }

  else
  {
    if (!RXVeryVerbose())
    {
      return 0;
    }

    v2 = RXOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Engine is not running", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t RDQSRPeer::ClientUpdate(RDQSRPeer *a1, void *a2)
{
  v3 = a2;
  if (RDQSRPeer::EngineIsRunning(a1))
  {
    RDPeer::ClientUpdate(a1, v3);
    *(a1 + 22) = xpc_dictionary_get_uint64(v3, kRDKeyEpoch);
    v4 = xpc_dictionary_get_value(v3, kRDKeyObjects);
    v5 = v4;
    if (v4)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_100049CEC;
      applier[3] = &unk_1000FFB90;
      applier[4] = a1;
      xpc_array_apply(v4, applier);
    }

    v6 = xpc_dictionary_get_value(v3, kRDKeyDead);
    v7 = v6;
    if (v6)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100049D50;
      v10[3] = &unk_1000FFB90;
      v10[4] = a1;
      xpc_array_apply(v6, v10);
    }

    v8 = RDQSRPeer::ScanRecognizers(a1);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100049CEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  uint64 = xpc_dictionary_get_uint64(v4, kRDKeyObjectID);
  RDQSRPeer::UpdateOrReleaseObject(v5, uint64, v4);

  return 1;
}

uint64_t sub_100049D50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  value = xpc_uint64_get_value(v4);
  RDQSRPeer::UpdateOrReleaseObject(v5, value, 0);

  return 1;
}

uint64_t RDQSRPeer::ScanRecognizers(RDQSRPeer *this)
{
  *(this + 103) = 0;
  v47 = RDQSREngine::sInstance;
  v57[0] = 0;
  v57[1] = 0;
  v56 = v57;
  v2 = *(this + 14);
  v3 = this + 120;
  v45 = v2 != this + 120;
  if (v2 == this + 120)
  {
LABEL_31:
    v24 = *(this + 17);
    if (v24 != (this + 144))
    {
      do
      {
        v25 = v57[0];
        v26 = *(v24 + 4);
        if (!v57[0])
        {
          goto LABEL_40;
        }

        v27 = v57;
        do
        {
          v28 = v25[4];
          v29 = v28 >= v26;
          v30 = v28 < v26;
          if (v29)
          {
            v27 = v25;
          }

          v25 = v25[v30];
        }

        while (v25);
        if (v27 == v57 || v26 < v27[4])
        {
LABEL_40:
          v48 = *(v24 + 4);
          v49 = 0;
          v51 = 0;
          v52 = 0;
          v50 = 0;
          v53 = 1;
          v54 = 0;
          *buf = &v48;
          v31 = sub_10004B2FC(this + 40, buf);
          v32 = v31;
          if ((this + 48) != v31)
          {
            v33 = RDQSRPeer::CopyCommandsInGrammar(this, *(v31[4] + 32));
            v34 = RXOSLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v32[4];
              v36 = *v35;
              v37 = v35[2];
              *buf = 134218498;
              *&buf[4] = v36;
              v59 = 2048;
              v60 = v37;
              v61 = 2112;
              v62 = v33;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Deactivating Grammar  -> lmid = %llu, grammarID = %zu, %@", buf, 0x20u);
            }

            CFRelease(v33);
            RDQSREngine::GrammarIsLive(v47, *(v32[4] + 16), 0);
          }

          v38 = v52;
          v52 = 0;
          if (v38)
          {
            *buf = v38 + 32;
            sub_10002A0F4(buf);
            v39 = *(v38 + 24);
            *(v38 + 24) = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }

            v40 = *(v38 + 16);
            *(v38 + 16) = 0;
            if (v40)
            {
              (*(*v40 + 8))(v40);
            }

            operator delete();
          }
        }

        v41 = *(v24 + 1);
        if (v41)
        {
          do
          {
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v42 = *(v24 + 2);
            v23 = *v42 == v24;
            v24 = v42;
          }

          while (!v23);
        }

        v24 = v42;
      }

      while (v42 != (this + 144));
    }

    sub_10004B84C(this + 17, &v56);
    RDQSREngine::BuildCombinedGrammar(v47, 0);
    v43 = v45;
  }

  else
  {
    v46 = this + 48;
    while (*(this + 203) == 1)
    {
      v48 = v2 + 32;
      v4 = sub_100018774(this + 88, v2 + 4)[5];
      v5 = v4;
      if (v4)
      {
        if (xpc_dictionary_get_BOOL(v4, kRDKeyIsListening))
        {
          uint64 = xpc_dictionary_get_uint64(v5, kRDKeyLanguageModel);
          v55 = uint64;
          if (uint64)
          {
            v48 = uint64;
            v49 = 0;
            v51 = 0;
            v52 = 0;
            v50 = 0;
            v53 = 1;
            v54 = 0;
            *buf = &v48;
            v7 = sub_10004B2FC(this + 40, buf);
            if (v46 == v7)
            {
              v17 = RXOSLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                *&buf[4] = v55;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "ScanRecognizers:: Gram entry not found for lmID %llu", buf, 0xCu);
              }
            }

            else
            {
              *buf = &v55;
              v8 = sub_100018774(this + 88, &v55);
              objc_storeStrong((*(v7 + 32) + 32), v8[5]);
              *(*(v7 + 32) + 8) = xpc_dictionary_get_uint64(v5, kRDKeyObjectID);
              *(*(v7 + 32) + 56) = xpc_dictionary_get_uint64(v5, kRDKeyMaxResults);
              *(*(v7 + 32) + 49) = xpc_dictionary_get_BOOL(v5, kRDKeyUseStreaming);
              *(*(v7 + 32) + 50) = xpc_dictionary_get_BOOL(v5, kRDKeyAllowCloseMatch);
              *(*(v7 + 32) + 51) = xpc_dictionary_get_BOOL(v5, kRDKeySpellingMode);
              v9 = xpc_dictionary_get_BOOL(v5, kRDKeyNumberMode);
              v10 = *(v7 + 32);
              *(v10 + 52) = v9;
              v11 = RDQSRPeer::CopyCommandsInGrammar(this, *(v10 + 32));
              v12 = RXOSLog();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = *(v7 + 32);
                v14 = *v13;
                v15 = v13[2];
                *buf = 134218498;
                *&buf[4] = v14;
                v59 = 2048;
                v60 = v15;
                v61 = 2112;
                v62 = v11;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Activating Grammar  -> lmid = %llu, grammarID = %zu, %@", buf, 0x20u);
              }

              CFRelease(v11);
              RDQSREngine::GrammarIsLive(v47, *(*(v7 + 32) + 16), 1);
              v16 = *(v7 + 32);
              if (*(v16 + 51) == 1)
              {
                *(this + 206) = 1;
              }

              if (*(v16 + 52) == 1)
              {
                *(this + 207) = 1;
              }

              sub_10004B6A4(&v56, &v55);
            }

            v18 = v52;
            v52 = 0;
            if (v18)
            {
              *buf = v18 + 32;
              sub_10002A0F4(buf);
              v19 = *(v18 + 24);
              *(v18 + 24) = 0;
              if (v19)
              {
                (*(*v19 + 8))(v19);
              }

              v20 = *(v18 + 16);
              *(v18 + 16) = 0;
              if (v20)
              {
                (*(*v20 + 8))(v20);
              }

              operator delete();
            }
          }
        }
      }

      v21 = *(v2 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v2 + 2);
          v23 = *v22 == v2;
          v2 = v22;
        }

        while (!v23);
      }

      v2 = v22;
      if (v22 == v3)
      {
        goto LABEL_31;
      }
    }

    v43 = 1;
  }

  sub_10001A178(&v56, v57[0]);
  return v43;
}

uint64_t RDQSRPeer::SetSecureFieldFocused(RDQSRPeer *this, char a2)
{
  result = RDQSRPeer::EngineIsRunning(this);
  if (result)
  {
    v4 = RDQSREngine::sInstance;

    return RDQSREngine::SetSecureFieldFocused(v4, a2);
  }

  return result;
}

void RDQSRPeer::AddLeadingContext(RDQSRPeer *this, NSString *a2)
{
  v3 = a2;
  if (RDQSRPeer::EngineIsRunning(this))
  {
    RDQSREngine::AddLeadingContextData(RDQSREngine::sInstance, v3);
  }
}

void RDQSRPeer::AddOtherContext(RDQSRPeer *a1, void *a2)
{
  v3 = a2;
  if (RDQSRPeer::EngineIsRunning(a1))
  {
    RDQSREngine::AddOtherContextData(RDQSREngine::sInstance, v3);
  }
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep RDQSRPeer::ResetRecognition(RDQSRPeer *this)
{
  result = RDQSRPeer::EngineIsRunning(this);
  if (result)
  {
    v2 = RDQSREngine::sInstance;

    return RDQSREngine::ResetRecognition(v2);
  }

  return result;
}

void RDQSRPeer::SetResetRecognitionMode(RDQSRPeer *this, unsigned __int8 a2)
{
  if (RDQSRPeer::EngineIsRunning(this))
  {
    v3 = RDQSREngine::sInstance;

    RDQSREngine::SetResetRecognitionMode(v3, a2);
  }
}

void RDQSRPeer::SaveUserProfileToFile(RDQSRPeer *this, const char *a2)
{
  if (RDQSRPeer::EngineIsRunning(this))
  {
    v3 = RDQSREngine::sInstance;

    RDQSREngine::SaveUserProfileToFile(v3, a2);
  }
}

id RDQSRPeer::PhoneticNeighborsForText(RDQSRPeer *this, NSString *a2)
{
  v3 = a2;
  if (RDQSRPeer::EngineIsRunning(this) && *(this + 27))
  {
    [(NSString *)v3 UTF8String];
    v4 = objc_opt_new();
    v5 = *(this + 27);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = SRSSPhoneticCheckerCopyGuesses();
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 text];
          v12 = v11 == 0;

          if (!v12)
          {
            v13 = [v10 text];
            [v4 addObject:v13];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

__CFArray *RDQSRPeer::CopyCommandsInGrammar(uint64_t a1, void *a2)
{
  v3 = a2;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  RDQSRPeer::GetCommandsInGrammar(a1, v3, Mutable);

  return Mutable;
}

void RDQSRPeer::GetCommandsInGrammar(uint64_t a1, void *a2, __CFArray *a3)
{
  v5 = a2;
  if (v5)
  {
    v14 = v5;
    v6 = xpc_dictionary_get_value(v5, kRDKeyChildren);
    v7 = v6;
    if (v6)
    {
      count = xpc_array_get_count(v6);
      if (count)
      {
        v9 = 0;
        do
        {
          v10 = xpc_array_get_value(v7, v9);
          v15[0] = 0;
          v15[0] = xpc_uint64_get_value(v10);
          v15[2] = v15;
          v11 = sub_100018774(a1 + 88, v15)[5];
          v12 = v11;
          if (v11)
          {
            if (xpc_dictionary_get_string(v11, kRDKeyCommandID))
            {
              string = xpc_dictionary_get_string(v12, kRDKeyCommandID);
              if (string)
              {
                CFArrayAppendValue(a3, [NSString stringWithUTF8String:string]);
              }
            }
          }

          if (v10)
          {
            RDQSRPeer::GetCommandsInGrammar(a1, v10, a3);
          }

          ++v9;
        }

        while (count != v9);
      }
    }

    v5 = v14;
  }
}

void RDQSRPeer::LogMatchedCommandID(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v15 = v3;
    v5 = xpc_dictionary_get_value(v3, kRDKeyChildren);
    v6 = v5;
    if (v5)
    {
      count = xpc_array_get_count(v5);
      if (count)
      {
        for (i = 0; i != count; ++i)
        {
          v9 = xpc_array_get_value(v6, i);
          uint64 = xpc_dictionary_get_uint64(v9, kRDKeyObjectID);
          *buf = &uint64;
          v10 = sub_100018774(a1 + 88, &uint64)[5];
          v11 = v10;
          if (v10 && xpc_dictionary_get_string(v10, kRDKeyCommandID))
          {
            string = xpc_dictionary_get_string(v11, kRDKeyCommandID);
            v13 = RXOSLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = "";
              if (string)
              {
                v14 = string;
              }

              *buf = 136446210;
              *&buf[4] = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Matched Grammar: CommandID -> %{public}s", buf, 0xCu);
            }

            v4 = v15;
          }

          if (v9)
          {
            RDQSRPeer::LogMatchedCommandID(a1, v9);
          }
        }
      }
    }
  }
}

void RDQSRPeer::ServerResponse(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(RDQSREngine::sInstance + 48);
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v10, kRDKeyMessage, 200);
  xpc_dictionary_set_uint64(v10, kRDKeyEpoch, *(a1 + 176));
  if (v7)
  {
    xpc_dictionary_set_uint64(v7, kRDKeyUtteranceID, *(RDQSREngine::sInstance + 168));
  }

  if (a3)
  {
    *buf = a3 + 8;
    v11 = sub_100018774(a1 + 88, (a3 + 8));
    v12 = xpc_copy(v11[5]);
    xpc_dictionary_set_value(v12, kRDKeyLanguageModel, v7);
    if (v7)
    {
      if (*(a1 + 160))
      {
        RDPeer::KeepSystemAwake(a1);
      }

      v9 = 1;
    }

    xpc_dictionary_set_value(v10, kRDKeyRecognizer, v12);
  }

  if (*(a1 + 16) == 1)
  {
    v13 = xpc_copy_description(v10);
    v14 = RXOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Server Response %s", buf, 0xCu);
    }

    free(v13);
  }

  if (((v7 != 0) & v9) == 1 && v10 != 0)
  {
    v16 = *(a1 + 8);
    if (v16)
    {
      v17 = [v16 proxy];
      v18 = xpc_wrap_uint64s_in_object(v10);
      v19 = _CFXPCCreateCFObjectFromXPCObject();
      [v17 recognizedEventWithLegacyMessage:v19 result:v8];
      if (v19)
      {
        CFRelease(v19);
      }
    }
  }
}

void RDQSRPeer::EndPhrase(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v8 = a5;
  RDQSRPeer::LogMatchedCommandID(a1, v9);
  RDQSRPeer::ServerResponse(a1, v9, a3, v8);
}

void RDQSRPeer::ReachedEndofAudioFile(RDQSRPeer *this)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, kRDKeyMessage, 205);
  xpc_dictionary_set_uint64(xdict, kRDKeyCallbacks, 2uLL);
  xpc_dictionary_set_uint64(xdict, kRDKeyObjectID, *(this + 23));
  RDPeer::SendClientMessage(this, xdict);
}

void RDQSRPeer::BeginUtt(RDQSRPeer *this)
{
  if (*(this + 192))
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(xdict, kRDKeyMessage, 205);
    xpc_dictionary_set_uint64(xdict, kRDKeyUtteranceID, *(RDQSREngine::sInstance + 168));
    xpc_dictionary_set_uint64(xdict, kRDKeyCallbacks, 1uLL);
    xpc_dictionary_set_uint64(xdict, kRDKeyObjectID, *(this + 23));
    RDPeer::SendClientMessage(this, xdict);
  }
}

void sub_10004B29C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10004B29C(a1, *a2);
    sub_10004B29C(a1, a2[1]);
    sub_10001A178((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t sub_10004B2FC(uint64_t a1, unint64_t **a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = **a2;
  v6 = v2;
  do
  {
    v7 = **(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < **(v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_10004B350(uint64_t a1, unint64_t **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = **a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = **(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_10004B424(void *a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_10004B4A4(a1, v4, a2++);
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10004B4A4(void *a1, void *a2, unint64_t *a3)
{
  v3 = *sub_10001918C(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_10004B53C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002FD90(a1, a2);
  sub_10001A178(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t *sub_10004B57C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002FD90(a1, a2);

  operator delete(a2);
  return v3;
}

void *sub_10004B5B8(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_10004B6A4(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_10004B770(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_10004B84C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

void RDKeyword::SetLocale(RDKeyword *this, const char *a2)
{
  v3 = sub_10004B92C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004B970;
  block[3] = &unk_1000FDCD8;
  block[4] = this;
  dispatch_sync(v3, block);
}

id sub_10004B92C()
{
  if (qword_10010E578 != -1)
  {
    sub_1000C93AC();
  }

  v1 = qword_10010E570;

  return v1;
}

CFStringRef sub_10004B970(CFStringRef result)
{
  if (!qword_10010E560)
  {
    result = CFStringCreateWithCString(0, result[1].isa, 0x8000100u);
    qword_10010E560 = result;
  }

  return result;
}

void sub_10004B9B0(id a1)
{
  v1 = dispatch_queue_create("RDKeyword", 0);
  v2 = qword_10010E570;
  qword_10010E570 = v1;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10004BA1C, @"com.apple.speech.recognition.AppleSpeechRecognition.KeywordChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_10004BA1C()
{
  v0 = sub_10004B92C();
  dispatch_sync(v0, &stru_1000FFBE8);

  return RDPeer::KeywordChanged(v1);
}

void sub_10004BA64(id a1)
{
  free(qword_10010E568);
  qword_10010E568 = 0;
  byte_10010E580 = 0;

  CFPreferencesAppSynchronize(@"com.apple.speech.recognition.AppleSpeechRecognition.prefs");
}

void sub_10004BEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL sub_10004BEC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained != 0;

  return v2;
}

void sub_10004BEF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gRDServerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004BFC0;
  v8[3] = &unk_1000FFC38;
  v12 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, v8);
}

void sub_10004BFC0(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0 && qword_10010E588 && [qword_10010E588 isEqual:*(a1 + 32)])
  {
    v2 = RXOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 40) + 16);
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Skipping profile update for %@ because user data has not actually changed", &v11, 0xCu);
    }
  }

  else
  {
    objc_storeStrong(&qword_10010E588, *(a1 + 32));
    v4 = +[NSProcessInfo processInfo];
    [v4 systemUptime];
    v6 = v5;

    [*(a1 + 40) adaptUserProfileWithUserData:*(a1 + 32)];
    v7 = +[NSProcessInfo processInfo];
    [v7 systemUptime];
    v9 = v8;

    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = (v9 - v6) * 1000.0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Contacts added to profile in %.2fms", &v11, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

id sub_10004C874(void *a1, void *a2)
{
  v3 = a1;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 stringByAppendingPathComponent:@"/SpeechRecognitionCore"];
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:a2];

    if (v8)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v13 = 0;
    }

    else
    {
      v10 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

      v11 = [v6 stringByAppendingPathComponent:@"SpeechProfile"];
      v12 = [v11 stringByAppendingString:@"_"];
      v13 = [v12 stringByAppendingString:v10];

      v3 = v10;
    }
  }

  else if (a2)
  {
    [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    *a2 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_10004CE08(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [_EARWordPart alloc];
  v8 = +[NSSet set];
  v9 = sub_10004CECC(v6);

  v10 = [v7 initWithOrthography:v5 pronunciations:v8 tag:v9];
  [*(a1 + 32) addObject:v10];
}

id sub_10004CECC(void *a1)
{
  v1 = qword_10010E598;
  v2 = a1;
  if (v1 != -1)
  {
    sub_1000C93C0();
  }

  v3 = [qword_10010E590 objectForKeyedSubscript:v2];

  v4 = [v3 integerValue];
  return v4;
}

void sub_10004D36C(id a1)
{
  v1 = qword_10010E590;
  qword_10010E590 = &off_100106A50;
}

RDVAVisionKWSSpotter *RDKeywordSpotterInit(uint64_t a1, uint64_t a2)
{
  v4 = RXAutomationSaveKeywordsAudio();
  v5 = RXIsVoiceActionsVisionKWSEnabled();
  v6 = RXOSLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using VisionKWS", buf, 2u);
    }

    v8 = [[RDVAVisionKWSSpotterDelegateImpl alloc] initWithDelegate:a2];
    v9 = [[RDVAVisionKWSSpotter alloc] initWithDelegate:v8];
    [(RDVAVisionKWSSpotter *)v9 start:a1 saveRuntimeAudio:v4];
  }

  else
  {
    if (v7)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using FSTSpotter", v11, 2u);
    }

    v8 = [[RDVAFSTSpotterDelegate alloc] initWithDelegate:a2];
    v9 = [[VATKeywordSpotter alloc] init:a1 delegate:v8 silenceLookback:0 silenceExpect:0 batchDecode:0 enableAudioDebugging:v4];
    [(RDVAVisionKWSSpotterDelegateImpl *)v8 setMaxFrameSizeForKeywords:100];
  }

  return v9;
}

id RDKeywordSpotterAddAudioSamples(void *a1, uint64_t a2, uint64_t a3)
{
  RXIsVoiceActionsVisionKWSEnabled();

  return [a1 addAudioSamples:a2 count:a3];
}

uint64_t multithread_forloop(size_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a1)
  {
    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "multithread_forloop: 0 threads are specified, defaulting to 1", v9, 2u);
    }

    v5 = 1;
  }

  v7 = vcvtps_u32_f32(a2 / v5);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10004D6B0;
  block[3] = &unk_1000FFCC8;
  if (v7 >= a2)
  {
    v7 = a2;
  }

  block[4] = v7;
  block[5] = a2;
  sub_10004D780(v11, a3);
  dispatch_apply(v5, 0, block);
  return sub_10001866C(v11);
}

uint64_t sub_10004D6B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = v2 * a2;
  v4 = v2 * a2 + v2;
  if (*(result + 40) >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(result + 40);
  }

  if (v3 < v5)
  {
    v7 = result;
    do
    {
      result = sub_10004D714(v7 + 48, v3++, a2);
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_10004D714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100003B9C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_10004D780(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

id sub_10004D8EC(uint64_t a1)
{
  [*(*(a1 + 32) + 32) endAudio];
  v2 = *(a1 + 32);

  return [v2 createCaesuraSPG];
}

void sub_10004DAD0(uint64_t a1)
{
  v2 = [NSData dataWithBytes:*(a1 + 40) length:2 * *(a1 + 48)];
  [*(*(a1 + 32) + 32) addAudio:v2 numSamples:*(a1 + 48)];
}

EARCaesuraSPGHelper *RDOSDInit(uint64_t a1)
{
  v2 = [EARCaesuraSPGHelper alloc];

  return [(EARCaesuraSPGHelper *)v2 initWithDelegate:a1];
}

int main(int argc, const char **argv, const char **envp)
{
  byte_10010E5A0 = 1;
  qword_10010E5A8 = 0xEE006E6F69746365;
  speechrecognitiond_intialize_queue();
  qword_10010E818 = [objc_allocWithZone(type metadata accessor for ServiceDelegate(0)) init];
  qword_10010E820 = [objc_opt_self() serviceListener];
  [qword_10010E820 setDelegate:qword_10010E818];
  [qword_10010E820 resume];
  return 0;
}

void sub_10004DEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000C9AF4();
  (*(a3 + 16))(a3);
}

uint64_t sub_10004E01C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v7 = sub_1000C9A84();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C9AA4();
  v28 = *(v11 - 8);
  v29 = v11;
  v12 = *(v28 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = sub_1000C96A4();
  v17 = sub_1000C9CC4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "PeerConnection: received legacy message %@", v18, 0xCu);
    sub_100052E5C(v19);
  }

  [v15 copy];
  sub_1000C9DA4();
  result = swift_unknownObjectRelease();
  v22 = gRDServerQueue;
  if (gRDServerQueue)
  {
    sub_100052DFC(v34, v33);
    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    sub_100053464(v33, (v23 + 24));
    *(v23 + 56) = v27;
    *(v23 + 64) = a3;
    aBlock[4] = sub_100053474;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100360;
    v24 = _Block_copy(aBlock);
    v25 = v22;
    v26 = v4;

    sub_1000C9A94();
    v31 = &_swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v24);

    (*(v30 + 8))(v10, v7);
    (*(v28 + 8))(v14, v29);
    sub_100052DB0(v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004E46C(void *a1)
{
  v2 = v1;
  v4 = sub_1000C9A84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C9AA4();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = sub_1000C96A4();
  v15 = sub_1000C9CC4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v12;
    v18 = v8;
    v19 = v2;
    v20 = v4;
    v21 = v9;
    v22 = v5;
    v23 = v17;
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "PeerConnection: received client update : %@", v16, 0xCu);
    sub_100052E5C(v23);
    v5 = v22;
    v9 = v21;
    v4 = v20;
    v2 = v19;
    v8 = v18;
    v12 = v33;
  }

  result = _CFXPCCreateXPCObjectFromCFObject();
  v26 = result;
  if (result)
  {
    v27 = gRDServerQueue;
    if (gRDServerQueue)
    {
      v28 = swift_allocObject();
      *(v28 + 16) = v2;
      *(v28 + 24) = v26;
      aBlock[4] = sub_100053390;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100054990;
      aBlock[3] = &unk_100100310;
      v29 = _Block_copy(aBlock);
      v30 = v27;
      v31 = v2;
      swift_unknownObjectRetain();
      sub_1000C9A94();
      v35 = &_swiftEmptyArrayStorage;
      sub_100052C64();
      sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
      sub_100052D04();
      sub_1000C9DB4();
      sub_1000C9D34();
      _Block_release(v29);
      swift_unknownObjectRelease();

      (*(v5 + 8))(v8, v4);
      (*(v34 + 8))(v12, v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10004E878()
{
  v1 = sub_1000C9A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C9AA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0;
  v12 = sub_1000C96A4();
  v13 = sub_1000C9CE4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = [*(*(&v11->isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier];

    _os_log_impl(&_mh_execute_header, v12, v13, "PeerConnection: received connectionLostHandler() for pid %d", v14, 8u);
  }

  else
  {

    v12 = v11;
  }

  v15 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    aBlock[4] = sub_100053298;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_1001002C0;
    v17 = _Block_copy(aBlock);
    v18 = v11;
    v19 = v15;
    sub_1000C9A94();
    v20[1] = &_swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v17);

    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004EBC4(char a1)
{
  v2 = v1;
  v4 = sub_1000C9A84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C9AA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C96A4();
  v15 = sub_1000C9CC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22[0] = v2;
    *v16 = 67109120;
    *(v16 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "PeerConnection: received setSecureFieldFocused: %{BOOL}d", v16, 8u);
    v2 = v22[0];
  }

  v17 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = a1 & 1;
    aBlock[4] = sub_100053264;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100270;
    v19 = _Block_copy(aBlock);
    v20 = v17;
    v21 = v2;
    sub_1000C9A94();
    v22[1] = &_swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v19);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004EF5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C9A84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C9AA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C96A4();
  v15 = sub_1000C9CC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22[0] = v2;
    *v16 = 134217984;
    *(v16 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v14, v15, "PeerConnection: received releaseResult: %llu", v16, 0xCu);
    v2 = v22[0];
  }

  v17 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = a1;
    aBlock[4] = sub_1000531F8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100220;
    v19 = _Block_copy(aBlock);
    v20 = v17;
    v21 = v2;
    sub_1000C9A94();
    v22[1] = &_swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v19);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004F2E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000C9A84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C9AA4();
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_1000C96A4();
  v16 = sub_1000C9CC4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100050ED0(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v15, v16, "PeerConnection: received addLeadingContext: %s", v18, 0xCu);
    sub_100052DB0(v19);

    v7 = v25;
  }

  v20 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v21 = swift_allocObject();
    v21[2] = v3;
    v21[3] = a1;
    v21[4] = a2;
    aBlock[4] = sub_100053180;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_1001001D0;
    v22 = _Block_copy(aBlock);

    v23 = v20;
    v24 = v3;
    sub_1000C9A94();
    v28 = &_swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v22);

    (*(v7 + 8))(v10, v6);
    (*(v26 + 8))(v14, v27);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004F670(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C9A84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C9AA4();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_1000C96A4();
  v14 = sub_1000C9CC4();

  v15 = os_log_type_enabled(v13, v14);
  v36 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v35 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = v9;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    v20 = sub_1000C9B84();
    v22 = v12;
    v23 = v8;
    v24 = v4;
    v25 = v2;
    v26 = sub_100050ED0(v20, v21, aBlock);

    *(v17 + 4) = v26;
    v2 = v25;
    v4 = v24;
    v8 = v23;
    v12 = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "PeerConnection: received addOtherContext: %s", v17, 0xCu);
    sub_100052DB0(v19);
    v9 = v34;

    v5 = v35;
  }

  v27 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v28 = swift_allocObject();
    v29 = v36;
    *(v28 + 16) = v2;
    *(v28 + 24) = v29;
    aBlock[4] = sub_1000530C0;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100180;
    v30 = _Block_copy(aBlock);

    v31 = v27;
    v32 = v2;
    sub_1000C9A94();
    v38 = &_swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v30);

    (*(v5 + 8))(v8, v4);
    (*(v37 + 8))(v12, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004FB34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v29 = a3;
  v8 = v5;
  v31 = a1;
  v9 = sub_1000C9A84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000C9AA4();
  v14 = *(v30 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v30);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C96A4();
  v19 = sub_1000C9CE4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = v9;
    *v20 = 134217984;
    *(v20 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v18, v19, v28, v20, 0xCu);
    v9 = v27;
  }

  v21 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v22 = swift_allocObject();
    v23 = v31;
    *(v22 + 16) = v8;
    *(v22 + 24) = v23;
    aBlock[4] = a4;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = a5;
    v24 = _Block_copy(aBlock);
    v25 = v21;
    v26 = v8;
    sub_1000C9A94();
    v32 = &_swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v24);

    (*(v10 + 8))(v13, v9);
    (*(v14 + 8))(v17, v30);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004FEB4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000C9A84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C9AA4();
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_1000C96A4();
  v16 = sub_1000C9CE4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100050ED0(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v15, v16, "PeerConnection: received saveUserProfileToFile %s", v18, 0xCu);
    sub_100052DB0(v19);

    v7 = v25;
  }

  v20 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v21 = swift_allocObject();
    v21[2] = v3;
    v21[3] = a1;
    v21[4] = a2;
    aBlock[4] = sub_100052FCC;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100090;
    v22 = _Block_copy(aBlock);

    v23 = v20;
    v24 = v3;
    sub_1000C9A94();
    v28 = &_swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v22);

    (*(v7 + 8))(v10, v6);
    (*(v26 + 8))(v14, v27);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005023C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1000C9B04();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_10005040C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v6 = v4;
  v7 = sub_1000C9A84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C9AA4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C96A4();
  v18 = sub_1000C9CE4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v6;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, v27, v19, 2u);
    v6 = v26;
  }

  v20 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v6;
    aBlock[4] = v29;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = a4;
    v22 = _Block_copy(aBlock);
    v23 = v20;
    v24 = v6;
    sub_1000C9A94();
    v30 = &_swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v22);

    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_100050774(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v8 = sub_1000C9A84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C9AA4();
  v36 = *(v13 - 8);
  v37 = v13;
  v14 = *(v36 + 64);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v34 = v4;
  v17 = sub_1000C96A4();
  v18 = sub_1000C9CC4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v32 = v9;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    v23 = a1;
    *(v20 + 4) = sub_100050ED0(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "PeerConnection: received phoneticNeighbors for %s", v20, 0xCu);
    sub_100052DB0(v22);
    v9 = v32;

    a4 = v33;
  }

  else
  {
    v23 = a1;
  }

  v24 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v25 = swift_allocObject();
    v27 = v34;
    v26 = v35;
    v25[2] = v34;
    v25[3] = v23;
    v25[4] = a2;
    v25[5] = v26;
    v25[6] = a4;
    aBlock[4] = sub_100052A48;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_1000FFFA0;
    v28 = _Block_copy(aBlock);

    v29 = v24;
    v30 = v27;

    sub_1000C9A94();
    v38 = &_swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v28);

    (*(v9 + 8))(v12, v8);
    (*(v36 + 8))(v16, v37);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100050CAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_100050E20(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100050ED0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100050F9C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100052DFC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100052DB0(v11);
  return v7;
}

unint64_t sub_100050F9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000510A8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000C9E34();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1000510A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000510F4(a1, a2);
  sub_100051224(&off_1000FFD20);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_1000510F4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100051310(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000C9E34();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000C9B34();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100051310(v10, 0);
        result = sub_1000C9E04();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100051224(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100051384(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100051310(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100052CBC(&unk_10010DA40, &unk_1000D1BF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100051384(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100052CBC(&unk_10010DA40, &unk_1000D1BF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_10005147C(void *a1)
{
  v2 = v1;
  v4 = sub_1000C96D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer__logger;
  v12 = sub_10005F190();
  v13 = *v12;
  v14 = v12[1];

  sub_1000C96B4();
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_audioDevice] = 0;
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_peerContext] = 0;
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext] = 0;
  v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_isQuasar] = 1;
  v37 = v11;
  v38 = v5;
  v15 = *(v5 + 16);
  v40 = v4;
  v15(v10, &v2[v11], v4);
  v16 = a1;
  v17 = sub_1000C96A4();
  v18 = sub_1000C9CE4();
  if (os_log_type_enabled(v17, v18))
  {
    v36 = v15;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v16;
    *v20 = v16;
    *(v19 + 12) = 1024;
    *(v19 + 14) = [v16 processIdentifier];
    _os_log_impl(&_mh_execute_header, v17, v18, "PeerConnection: creating peer connection for %@ [%d]", v19, 0x12u);
    sub_100052E5C(v20);

    v21 = v38;
    v22 = v39;
    v15 = v36;
  }

  else
  {

    v17 = v16;
    v21 = v38;
    v22 = v39;
  }

  v23 = *(v21 + 8);
  v24 = v40;
  v23(v10, v40);
  type metadata accessor for RDServiceClientConnection();
  v25 = v16;
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection] = sub_10005E9D0(v25);
  v26 = [objc_opt_self() anonymousListener];
  v27 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceListener;
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceListener] = v26;
  [v26 setDelegate:qword_10010E818];
  [*&v2[v27] resume];
  v15(v22, &v2[v37], v24);
  v28 = v25;
  v29 = sub_1000C96A4();
  v30 = sub_1000C9CE4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412546;
    *(v31 + 4) = v28;
    *v32 = v28;
    *(v31 + 12) = 1024;
    *(v31 + 14) = [v28 processIdentifier];
    _os_log_impl(&_mh_execute_header, v29, v30, "PeerConnection: finished creating peer connection for %@ [%d]", v31, 0x12u);
    sub_100052E5C(v32);

    v24 = v40;
  }

  else
  {

    v29 = v28;
  }

  v23(v22, v24);
  v33 = type metadata accessor for SRDPeer(0);
  v41.receiver = v2;
  v41.super_class = v33;
  return objc_msgSendSuper2(&v41, "init");
}

uint64_t sub_1000518D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a2;
  v29 = a4;
  v11 = sub_1000C9A84();
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000C9AA4();
  v15 = *(v32 - 8);
  v16 = *(v15 + 64);
  result = __chkstk_darwin(v32);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v21 = swift_allocObject();
    v22 = v31;
    *(v21 + 16) = v31;
    *(v21 + 24) = a1 & 1;
    v23 = v29;
    *(v21 + 32) = v28;
    *(v21 + 40) = a3;
    *(v21 + 48) = v23;
    *(v21 + 56) = a5;
    *(v21 + 64) = v30;
    *(v21 + 72) = sub_1000537C4;
    *(v21 + 80) = a7;
    aBlock[4] = sub_10005381C;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_1001004F0;
    v24 = _Block_copy(aBlock);

    v25 = v20;
    v26 = v22;
    sub_1000C9A94();
    v34 = &_swiftEmptyArrayStorage;
    sub_100052C64();
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_100052D04();
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v24);

    (*(v33 + 8))(v14, v11);
    (*(v15 + 8))(v19, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100051BBC(void (*a1)(void))
{
  v3 = v1;
  v4 = sub_1000C96A4();
  v5 = sub_1000C9CE4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = [*(*(&v3->isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier];

    _os_log_impl(&_mh_execute_header, v4, v5, "PeerConnection: Broker introduced itself: %d", v6, 8u);
  }

  else
  {

    v4 = v3;
  }

  if (a1)
  {
    v7 = [*(&v3->isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceListener) endpoint];
    a1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100051D0C(void *a1)
{
  v2 = sub_1000C9AF4();
  v3 = [a1 valueForEntitlement:v2];

  if (!v3)
  {
    return 0;
  }

  sub_1000C9DA4();
  swift_unknownObjectRelease();
  sub_100053464(&aBlock, &v39);
  v4 = swift_dynamicCast();
  result = 0;
  if (v4 && (v38 & 1) != 0)
  {
    v6 = a1;
    v7 = sub_1000C96A4();
    v8 = sub_1000C9CE4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = [v6 processIdentifier];

      _os_log_impl(&_mh_execute_header, v7, v8, "PeerConnection: listener callback %d", v9, 8u);
    }

    else
    {

      v7 = v6;
    }

    v10 = objc_opt_self();
    v11 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP21SpeechRecognitionCore11SRDProtocol_];
    [v6 setExportedInterface:v11];

    v12 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL___SRDInternalClientProtocol];
    [v6 setRemoteObjectInterface:v12];

    sub_100052CBC(&qword_10010DB18, &qword_1000D1838);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000D1770;
    v14 = sub_100053C64(0, &qword_10010DB20, NSArray_ptr);
    *(v13 + 56) = sub_100052CBC(&qword_10010DB28, &qword_1000D1840);
    *(v13 + 32) = v14;
    v15 = sub_100053C64(0, &qword_10010DB30, NSNumber_ptr);
    *(v13 + 88) = sub_100052CBC(&qword_10010DB38, &qword_1000D1848);
    *(v13 + 64) = v15;
    v16 = sub_100053C64(0, &qword_10010DB40, NSString_ptr);
    *(v13 + 120) = sub_100052CBC(&qword_10010DB48, &qword_1000D1850);
    *(v13 + 96) = v16;
    v17 = sub_100053C64(0, &qword_10010DB50, SRDTranscriptionToken_ptr);
    *(v13 + 152) = sub_100052CBC(&qword_10010DB58, &qword_1000D1858);
    *(v13 + 128) = v17;
    v18 = objc_allocWithZone(NSSet);
    isa = sub_1000C9B64().super.isa;

    v20 = [v18 initWithArray:isa];

    *&aBlock = 0;
    sub_1000C9CA4();

    if (aBlock)
    {
      v21 = [v6 remoteObjectInterface];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1000C9C94().super.isa;

        [v22 setClasses:v23 forSelector:"recognizedEventWithLegacyMessage:result:" argumentIndex:1 ofReply:0];
      }

      else
      {
      }
    }

    v24 = objc_allocWithZone(type metadata accessor for SRDPeer(0));
    v25 = v6;
    v26 = sub_10005147C(v25);

    [v25 setExportedObject:v26];
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    v36 = sub_100053CE4;
    v37 = v27;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v34 = sub_100054990;
    v35 = &unk_100100540;
    v28 = _Block_copy(&aBlock);
    v29 = v26;

    [v25 setInvalidationHandler:v28];
    _Block_release(v28);
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    v36 = sub_1000549E4;
    v37 = v30;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v34 = sub_100054990;
    v35 = &unk_100100590;
    v31 = _Block_copy(&aBlock);
    v32 = v29;

    [v25 setInterruptionHandler:v31];
    _Block_release(v31);
    [v25 resume];

    return 1;
  }

  return result;
}

uint64_t sub_100052314(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005234C()
{
  result = sub_1000C96D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100052410()
{
  result = sub_1000C96D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000524F4(uint64_t a1, RDQSRPeer *a2)
{
  sub_1000524A0();
  RDQSRPeer::~RDQSRPeer(a2);
  return a1;
}

RDQSRPeer *sub_10005252C(RDQSRPeer *a1, RDQSRPeer *a2)
{
  RDQSRPeer::~RDQSRPeer(a1);
  sub_1000524A0();
  RDQSRPeer::~RDQSRPeer(a2);
  return a1;
}

uint64_t sub_10005256C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 208);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000525C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 208) = a2;
    }
  }

  return result;
}

uint64_t sub_100052668(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_100052698(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = off_1000FF400;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_1000526FC(RDPeer *a1, uint64_t a2)
{
  RDPeer::~RDPeer(a1);

  return sub_100052698(v3, a2);
}

uint64_t sub_100052734(uint64_t a1, RDPeer *a2)
{
  sub_100052698(a1, a2);
  RDPeer::~RDPeer(a2);
  return a1;
}

RDPeer *sub_100052768(RDPeer *a1, RDPeer *a2)
{
  RDPeer::~RDPeer(a1);
  sub_100052698(v4, a2);
  RDPeer::~RDPeer(a2);
  return a1;
}

uint64_t sub_1000527A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000527EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100052848(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1000528C8(uint64_t a1, RDAudioObject *a2)
{
  RDAudioObject::RDAudioObject(a1, a2);
  RDAudioObject::~RDAudioObject(a2);
  return a1;
}

RDAudioObject *sub_100052900(RDAudioObject *a1, RDAudioObject *a2)
{
  RDAudioObject::~RDAudioObject(a1);
  RDAudioObject::RDAudioObject(v4, a2);
  RDAudioObject::~RDAudioObject(a2);
  return a1;
}

uint64_t sub_100052940(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10005299C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100052A00()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100052A48()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = [objc_allocWithZone(NSArray) init];
  v7 = *(v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v7)
  {
    v8 = sub_1000C9AF4();
    v9 = RDQSRPeer::PhoneticNeighborsForText(v7, v8);

    if (!v9)
    {
      __break(1u);
      return;
    }

    v6 = v9;
  }

  v16 = v6;
  v10 = sub_1000C96A4();
  v11 = sub_1000C9CC4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_100050ED0(v1, v3, &v17);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v16;
    *v13 = v16;
    v15 = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "PeerConnection: returning phoneticNeighbors for %s as %@", v12, 0x16u);
    sub_100052E5C(v13);

    sub_100052DB0(v14);
  }

  v4(v16);
}

uint64_t sub_100052C4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100052C64()
{
  result = qword_10010DA28;
  if (!qword_10010DA28)
  {
    sub_1000C9A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010DA28);
  }

  return result;
}

uint64_t sub_100052CBC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100052D04()
{
  result = qword_10010DA38;
  if (!qword_10010DA38)
  {
    sub_100052D68(&qword_10010DA30, &unk_1000D1810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010DA38);
  }

  return result;
}

uint64_t sub_100052D68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100052DB0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100052DFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100052E5C(uint64_t a1)
{
  v2 = sub_100052CBC(&unk_10010DF10, &unk_1000D1820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100052EC4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v1)
  {
    empty = xpc_dictionary_create_empty();
    sub_100052F30(v1, empty);

    swift_unknownObjectRelease();
  }
}

void sub_100052F30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = a2;
  v2 = a2;
}

uint64_t sub_100052F70()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (result)
  {
    return sub_100052FA4(result);
  }

  return result;
}

void sub_100052FCC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = sub_1000C9AF4();
    v5 = [v4 UTF8String];
    v6 = v4;
    if (v5)
    {
      RDQSRPeer::SaveUserProfileToFile(v1, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100053044()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v1)
  {
    RDQSRPeer::SetResetRecognitionMode(v1, *(v0 + 24));
  }
}

RDQSRPeer *sub_100053078()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (result)
  {
    return RDQSRPeer::ResetRecognition(result);
  }

  return result;
}

void sub_1000530C0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v1)
  {
    v2 = *(v0 + 24);
    isa = sub_1000C9B64().super.isa;
    RDQSRPeer::AddOtherContext(v1, isa);
  }
}

uint64_t sub_100053140()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100053180()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = sub_1000C9AF4();
    RDQSRPeer::AddLeadingContext(v1, v4);
  }
}

RDQSRPeer *sub_1000531F8()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (result)
  {
    return RDQSRPeer::ReleaseResult(result, *(v0 + 24));
  }

  return result;
}

uint64_t sub_10005322C()
{

  return _swift_deallocObject(v0, 25, 7);
}

RDQSRPeer *sub_100053264()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
  if (result)
  {
    return RDQSRPeer::SetSecureFieldFocused(result, *(v0 + 24));
  }

  return result;
}

void sub_100053298()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_peerContext;
  v3 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_peerContext);
  if (v3)
  {
    speechrecognitiond_peer_is_dead([*(*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier], v3);
    v4 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext;
    v5 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_qsrPeerContext);
    if (v5)
    {
      RDQSRPeer::Terminate(v5);
    }

    *(v1 + v2) = 0;
    *(v1 + v4) = 0;
  }
}

uint64_t sub_100053340(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

void sub_100053390()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_peerContext);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = [*(*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier];
    v5 = v4;
    speechrecognitiond_peer_client_update(v4, v2, v3);
    speechrecognitiond_peer_is_alive(v5, v2);
  }
}

uint64_t sub_10005341C()
{
  sub_100052DB0((v0 + 24));
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

_OWORD *sub_100053464(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100053474()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_peerContext);
  if (v2)
  {
    v3 = v0;
    v5 = v0[7];
    v4 = v0[8];
    sub_100052DFC((v3 + 3), v9);
    sub_100052CBC(&qword_10010DAB0, &qword_1000D1830);
    swift_dynamicCast();
    isa = sub_1000C9AB4().super.isa;

    v7 = speechrecognitiond_peer_legacy_msg_handler(isa, [*(*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection) + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier], v2);

    if (v7)
    {
      sub_1000C9AC4();

      v8 = sub_1000C9AB4().super.isa;

      v5(v8);
    }
  }
}

void sub_1000535E8()
{
  v1 = *(v0 + 16);
  v2 = sub_1000C96A4();
  v3 = sub_1000C9CE4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = [*(*&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection] + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier];

    _os_log_impl(&_mh_execute_header, v2, v3, "peer(%d) killed me", v4, 8u);

    abort();
  }

  abort();
}

uint64_t sub_1000536D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005374C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053784(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000537CC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

void sub_10005381C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);
  v3 = *(v0 + 56);
  v22 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v21 = *(v0 + 80);
  v23 = 0;
  v6 = v1;
  v7 = sub_1000C96A4();
  v8 = sub_1000C9CE4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = [*(*&v6[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection] + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection) processIdentifier];

    _os_log_impl(&_mh_execute_header, v7, v8, "Hello from %d", v9, 8u);

    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {

    if (!v2)
    {
LABEL_3:
      v10 = *&v6[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection];
      v11 = sub_1000C9AF4();
      RDPeer::CreatePeer(v10, v11, v4, 0, &v23);
    }
  }

  v12 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_audioDevice;
  if (!*&v6[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_audioDevice])
  {
    if (v20)
    {
      v13 = sub_1000C9AF4();
      RDAudioObject::CreateRDAudioObject(v13, v14);
    }

    v15 = sub_1000C9AF4();
    RDAudioObject::CreateRDAudioObject(v15, v16);
  }

  v17 = *&v6[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer_serviceClientConnection];
  v18 = sub_1000C9AF4();
  RDPeer::CreatePeer(v17, v18, v4, *&v6[v12], &v23);
}

uint64_t sub_100053C64(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100053CAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100053D88(void *a1, void *a2)
{
  sub_100054124(a1, a2);
  sub_100053D10(a2);
  return a1;
}

void *sub_100053DD4(void *a1, void *a2, uint64_t a3, void (*a4)(void))
{
  a4();
  sub_100054124(a1, a2);
  (a4)(a2);
  return a1;
}

uint64_t sub_100053E28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100053E48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void *sub_100053F08(void *a1, void *a2)
{
  sub_100054124(a1, a2);
  sub_100053E90(a2);
  return a1;
}

void *sub_100053FE8(void *a1, void *a2)
{
  sub_100054124(a1, a2);
  sub_100053F70(a2);
  return a1;
}

void *sub_1000540F0(void *a1, void *a2)
{
  sub_100054124(a1, a2);
  sub_100054078(a2);
  return a1;
}

void *sub_100054124(void *result, void *a2)
{
  *result = *a2;
  v2 = a2 + 1;
  v3 = a2[1];
  result[1] = v3;
  v4 = result + 1;
  v5 = a2[2];
  result[2] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  else
  {
    *result = v4;
  }

  return result;
}

void sub_10005418C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000541D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = off_1000FF400;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 32) = v5;
  *a1 = off_1000FFAF8;
  v6 = v4;
  v7 = v5;
  sub_1000545C4((a1 + 40), a2 + 40);
  sub_100054364((a1 + 64), a2 + 64);
  sub_100018FF0((a1 + 88), a2 + 88);
  sub_10005430C((a1 + 112), a2 + 112);
  sub_10005430C((a1 + 136), a2 + 136);
  v8 = *(a2 + 160);
  v9 = *(a2 + 176);
  v10 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v10;
  *(a1 + 160) = v8;
  *(a1 + 176) = v9;
  return a1;
}

void sub_1000542A8(_Unwind_Exception *a1)
{
  sub_10001A178(v1 + 112, *(v1 + 15));
  sub_100019334(v1 + 88, *(v1 + 12));
  sub_10004B29C(v1 + 64, *(v1 + 9));
  sub_10001A178(v1 + 40, *(v1 + 6));
  RDPeer::~RDPeer(v1);
  _Unwind_Resume(a1);
}

void *sub_10005430C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000499C4(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100054364(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000543BC(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1000543BC(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100054444(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100054444(void *a1, void *a2, unint64_t *a3)
{
  result = *sub_10001918C(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1000544C8();
  }

  return result;
}

void sub_100054548(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100054564(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100054564(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10001A178((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_1000545C4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10005461C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100054634(uint64_t result, void *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, void *, void *))
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = result;
    do
    {
      result = a4(v7, v7 + 8, v6 + 4, v6 + 4);
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != a3);
  }

  return result;
}

uint64_t sub_1000546C4(void *a1, uint64_t *a2, unint64_t **a3)
{
  v3 = *sub_10005475C(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_10005475C(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unint64_t **a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = **a5, v7 = *a2[4], v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = **a5;
    if (*v10[4] < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = **(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = **(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t variable initialization expression of RDSwiftSpeechDonation.logger()
{
  v0 = sub_10005F190();
  v1 = *v0;
  v2 = v0[1];

  return sub_1000C96B4();
}

id RDSwiftSpeechDonation.__allocating_init(donorBundleID:donorReferenceID:recordingDate:locale:taskHint:transcription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = objc_allocWithZone(v10);
  v18 = &v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_taskHint];
  *v18 = 0;
  v41 = v18;
  v18[8] = 1;
  *&v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_audioFormat] = 0;
  *&v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_file] = 0;
  v19 = sub_10005F190();
  v20 = *v19;
  v21 = v19[1];

  v22 = a5;
  v23 = a6;
  v24 = a8;
  sub_1000C96B4();
  v25 = &v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_donorReferenceID];
  *v25 = a3;
  *(v25 + 1) = a4;
  v26 = &v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_donorBundleID];
  *v26 = a1;
  *(v26 + 1) = a2;
  v27 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_recordingDate;
  v28 = sub_1000C9514();
  v29 = *(v28 - 8);
  (*(v29 + 16))(&v17[v27], v22, v28);
  v30 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_locale;
  v31 = sub_1000C9564();
  v32 = *(v31 - 8);
  (*(v32 + 16))(&v17[v30], v23, v31);
  v33 = &v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_transcription];
  *v33 = a9;
  *(v33 + 1) = a10;
  v34 = &v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_audioPath];
  *v34 = 0xD000000000000015;
  *(v34 + 1) = 0x80000001000E7170;
  if (a7 == 0x6F69746174636944 && v24 == 0xEB0000000043436ELL || (sub_1000C9EB4() & 1) != 0)
  {

    v35 = 1005;
  }

  else if (a7 == 0x43436C6C657053 && v24 == 0xE700000000000000)
  {

    v35 = 1006;
  }

  else
  {
    v38 = sub_1000C9EB4();

    v35 = 1005;
    if (v38)
    {
      v35 = 1006;
    }
  }

  *v41 = v35;
  v41[8] = 0;
  v43.receiver = v17;
  v43.super_class = v42;
  v36 = objc_msgSendSuper2(&v43, "init", a2);
  (*(v32 + 8))(v23, v31);
  (*(v29 + 8))(v22, v28);
  return v36;
}

id RDSwiftSpeechDonation.init(donorBundleID:donorReferenceID:recordingDate:locale:taskHint:transcription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = &v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_taskHint];
  *v17 = 0;
  v37 = v17;
  v17[8] = 1;
  *&v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_audioFormat] = 0;
  *&v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_file] = 0;
  v18 = sub_10005F190();
  v20 = *v18;
  v19 = v18[1];

  sub_1000C96B4();
  v21 = &v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_donorReferenceID];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_donorBundleID];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_recordingDate;
  v24 = sub_1000C9514();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v10[v23], a5, v24);
  v26 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_locale;
  v27 = sub_1000C9564();
  v28 = *(v27 - 8);
  (*(v28 + 16))(&v10[v26], a6, v27);
  v29 = &v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_transcription];
  *v29 = a9;
  *(v29 + 1) = a10;
  v30 = &v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_audioPath];
  *v30 = 0xD000000000000015;
  *(v30 + 1) = 0x80000001000E7170;
  if (a7 == 0x6F69746174636944 && a8 == 0xEB0000000043436ELL || (sub_1000C9EB4() & 1) != 0)
  {

    v31 = 1005;
  }

  else if (a7 == 0x43436C6C657053 && a8 == 0xE700000000000000)
  {

    v31 = 1006;
  }

  else
  {
    v34 = sub_1000C9EB4();

    v31 = 1005;
    if (v34)
    {
      v31 = 1006;
    }
  }

  *v37 = v31;
  v37[8] = 0;
  v38.receiver = v10;
  v38.super_class = type metadata accessor for RDSwiftSpeechDonation();
  v32 = objc_msgSendSuper2(&v38, "init");
  (*(v28 + 8))(a6, v27);
  (*(v25 + 8))(a5, v24);
  return v32;
}

Swift::Void __swiftcall RDSwiftSpeechDonation.donate(audioBuffers:logAudioFile:)(Swift::OpaquePointer audioBuffers, Swift::Bool logAudioFile)
{
  v52 = logAudioFile;
  rawValue = audioBuffers._rawValue;
  v3 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v51 = v45 - v5;
  v6 = sub_100052CBC(&qword_10010DCC8, &qword_1000D1B28);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v49 = v45 - v8;
  v9 = sub_100052CBC(&qword_10010DCD0, &qword_1000D1B30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v53 = v45 - v11;
  v12 = sub_1000C9564();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[2] = v16;
  v17 = sub_1000C9514();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000C9784();
  v46 = *(v48 - 8);
  v22 = *(v46 + 64);
  v23 = __chkstk_darwin(v48);
  v47 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v45 - v24;
  v26 = *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_donorBundleID + 8];
  v45[3] = *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_donorBundleID];
  (*(v18 + 16))(v21, &v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_recordingDate], v17);
  (*(v13 + 16))(v16, &v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_locale], v12);
  v27 = *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_transcription + 8];
  v45[1] = *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_transcription];
  v28 = sub_1000C9764();
  (*(*(v28 - 8) + 56))(v53, 1, 1, v28);
  v29 = *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_taskHint];
  LOBYTE(v18) = v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_taskHint + 8];
  v30 = sub_1000C9744();
  (*(*(v30 - 8) + 56))(v49, 1, 1, v30);

  v31 = rawValue;

  v32 = v46;
  sub_1000C9754();
  v33 = sub_1000C9C34();
  v34 = v51;
  (*(*(v33 - 8) + 56))(v51, 1, 1, v33);
  v35 = *(v32 + 16);
  v36 = v47;
  v53 = v25;
  v37 = v25;
  v38 = v48;
  v35(v47, v37, v48);
  v39 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  (*(v32 + 32))(v40 + v39, v36, v38);
  v41 = v40 + ((v39 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v41 = v2;
  *(v41 + 8) = v52;
  *(v40 + ((v39 + v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v31;

  v2;
  sub_100055D64(0, 0, v34, &unk_1000D1B40, v40);

  v42 = sub_1000C96A4();
  v43 = sub_1000C9CC4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "donated speech buffers", v44, 2u);
  }

  (*(v32 + 8))(v53, v38);
}

uint64_t sub_10005582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 16) = a5;
  *(v7 + 24) = a7;
  v8 = *(*(sub_100052CBC(&qword_10010DD10, &qword_1000D1BE8) - 8) + 64) + 15;
  *(v7 + 32) = swift_task_alloc();
  *(v7 + 40) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v7 + 48) = v9;
  v10 = async function pointer to SpeechDonation.donate()[1];
  v11 = swift_task_alloc();
  *(v7 + 56) = v11;
  *v11 = v7;
  v11[1] = sub_100055924;

  return SpeechDonation.donate()(v9);
}

uint64_t sub_100055924()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_100055A20, 0, 0);
}

uint64_t sub_100055A20()
{
  v29 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = sub_1000C9534();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  if (v5(v1, 1, v3) == 1)
  {
    v6 = sub_1000C96A4();
    v7 = sub_1000C9CE4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "VoiceControl::SpeechDonation::DonationID is nil", v8, 2u);
    }
  }

  else
  {
    sub_100057274(v1, *(v0 + 40), &qword_10010DD10, &qword_1000D1BE8);
    v9 = sub_1000C96A4();
    v10 = sub_1000C9CE4();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 40);
    if (v11)
    {
      v13 = *(v0 + 32);
      v14 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v14 = 136315138;
      sub_100057274(v12, v13, &qword_10010DD10, &qword_1000D1BE8);
      result = v5(v13, 1, v3);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v16 = *(v0 + 32);
      v17 = *(v0 + 40);
      v18 = sub_1000C9524();
      v20 = v19;
      sub_100057214(v17, &qword_10010DD10, &qword_1000D1BE8);
      (*(v4 + 8))(v16, v3);
      v21 = sub_100050ED0(v18, v20, &v28);

      *(v14 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "VoiceControl::SpeechDonation::DonationID=%s", v14, 0xCu);
      sub_100052DB0(v27);
    }

    else
    {

      sub_100057214(v12, &qword_10010DD10, &qword_1000D1BE8);
    }

    if (*(v0 + 64) == 1)
    {
      v23 = *(v0 + 16);
      v22 = *(v0 + 24);
      sub_1000560D8();
    }
  }

  v24 = *(v0 + 40);
  v25 = *(v0 + 32);
  sub_100057214(*(v0 + 48), &qword_10010DD10, &qword_1000D1BE8);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100055D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100057274(a3, v27 - v11, &qword_10010DCC0, &qword_1000D1B20);
  v13 = sub_1000C9C34();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100057214(v12, &qword_10010DCC0, &qword_1000D1B20);
  }

  else
  {
    sub_1000C9C24();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000C9BF4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000C9B14() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_1000560D8()
{
  v1 = v0;
  v54 = 0;
  v2 = sub_1000C94D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v51 - v9;
  v56 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_file;
  v57 = v8;
  if (!*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_file))
  {
    v12 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_audioPath);
    v11 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation_audioPath + 8);

    sub_1000C94A4();

    sub_1000C9494();
    v13 = *(v3 + 8);
    v55 = v3 + 8;
    v53 = v13;
    v13(v7, v2);
    v14 = v57 & 0xC000000000000001;
    if ((v57 & 0xC000000000000001) != 0)
    {
      v15 = sub_1000C9E24();
    }

    else
    {
      if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v15 = *(v57 + 32);
    }

    v16 = v15;
    v17 = [v15 format];

    v18 = [v17 settings];
    sub_1000C9AC4();

    if (v14)
    {
      v19 = sub_1000C9E24();
    }

    else
    {
      v19 = *(v57 + 32);
    }

    v20 = v19;
    v21 = [v19 format];

    v52 = [v21 commonFormat];
    if (v14)
    {
      v22 = sub_1000C9E24();
    }

    else
    {
      v22 = *(v57 + 32);
    }

    v23 = v22;
    v24 = [v22 format];

    v25 = [v24 isInterleaved];
    v26 = objc_allocWithZone(AVAudioFile);
    sub_1000C94B4(v27);
    v29 = v28;
    isa = sub_1000C9AB4().super.isa;

    v58 = 0;
    v31 = [v26 initForWriting:v29 settings:isa commonFormat:v52 interleaved:v25 error:&v58];

    v32 = v58;
    if (v31)
    {
      v53(v10, v2);
      v33 = *(v1 + v56);
      *(v1 + v56) = v31;
    }

    else
    {
      v34 = v32;
      sub_1000C9484();

      swift_willThrow();
      v35 = sub_1000C96A4();
      v36 = sub_1000C9CE4();
      v54 = 0;
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "VoiceControl::SpeechDonation::DonationID, error opening file", v37, 2u);
      }

      v53(v10, v2);
    }

    v8 = v57;
  }

  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v8 = v57)
  {
    v39 = 0;
    v40 = v8 & 0xC000000000000001;
    v55 = v8 & 0xFFFFFFFFFFFFFF8;
    v53 = i;
    while (1)
    {
      if (v40)
      {
        v41 = sub_1000C9E24();
      }

      else
      {
        if (v39 >= *(v55 + 16))
        {
          goto LABEL_34;
        }

        v41 = *(v8 + 8 * v39 + 32);
      }

      v42 = v41;
      v43 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v44 = *(v1 + v56);
      if (v44)
      {
        v58 = 0;
        if ([v44 writeFromBuffer:v42 error:&v58])
        {
          v45 = v58;
        }

        else
        {
          v46 = v58;
          sub_1000C9484();

          swift_willThrow();
          v47 = sub_1000C96A4();
          v48 = sub_1000C9CE4();
          v54 = 0;
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&_mh_execute_header, v47, v48, "VoiceControl::SpeechDonation::DonationID, error writing to file", v49, 2u);
            i = v53;
          }

          v42 = v47;
        }
      }

      ++v39;
      v8 = v57;
      if (v43 == i)
      {
        return [*(v1 + v56) close];
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    i = sub_1000C9E64();
  }

  return [*(v1 + v56) close];
}

void sub_1000566E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x1000566ECLL);
  }

  _Unwind_Resume(a1);
}

id RDSwiftSpeechDonation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDSwiftSpeechDonation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RDSwiftSpeechDonation()
{
  result = qword_10010E648;
  if (!qword_10010E648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000569A8()
{
  v1 = sub_1000C9784();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_100056A98()
{
  v2 = *(sub_1000C9784() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100056BBC;

  return sub_10005582C(v9, v10, v11, v0 + v3, v6, v7, v8);
}

uint64_t sub_100056BBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100056CB8()
{
  result = sub_1000C9514();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1000C9564();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_1000C96D4();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void type metadata accessor for SFSpeechRecognitionTaskHint()
{
  if (!qword_10010DD00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10010DD00);
    }
  }
}

unint64_t sub_100056E30()
{
  result = qword_10010DD08;
  if (!qword_10010DD08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10010DD08);
  }

  return result;
}

uint64_t sub_100056E7C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100056F74;

  return v7(a1);
}

uint64_t sub_100056F74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10005706C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000570A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000572E0;

  return sub_100056E7C(a1, v5);
}

uint64_t sub_10005715C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100056BBC;

  return sub_100056E7C(a1, v5);
}

uint64_t sub_100057214(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100052CBC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100057274(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100052CBC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000572E4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t sub_10005731C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_10005742C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_1000C96C4();
  swift_beginAccess();
  *(v5 + 16) = a1;
  return v5;
}

uint64_t sub_1000574A4()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    v2 = result;
    sub_1000C9664();
    v3 = sub_1000C9AF4();

    sub_1000C9654();
    v5 = v4;
    v6 = sub_1000C9624();
    v7 = sub_1000C9644();
    v8 = sub_1000C9634();
    LODWORD(v9) = v5;
    [v2 didDetectKeywordWithKeyword:v3 score:v6 & 1 silenceAfter:v7 & 1 silenceBefore:v8 & 1 speechDuring:v9];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000576D8()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond33RDVASwiftVisionKWSSpotterDelegate_logger;
  v3 = sub_1000C96D4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10005777C()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_listeningTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1000577C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_listeningTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100057880()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_swiftDelegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1000578C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_swiftDelegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10005798C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_1000C96D4();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_100057A1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_1000C96D4();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

id sub_100057B08(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1000583C4(a1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_100057B90()
{
  v1 = v0;
  v2 = sub_1000C95F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C95E4();

  sub_1000C95D4();
  sub_1000C95B4();
  sub_1000C95A4();
  sub_1000C95C4();
  v7 = *(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_spotter);
  v8 = sub_1000C9584();
  (*((swift_isaMask & *v1) + 0x78))(v8);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100057DD0()
{
  result = (*((swift_isaMask & *v0) + 0x70))();
  if (result)
  {
    sub_100052CBC(&qword_10010DD30, &qword_1000D1C20);
    sub_1000C9C74();
  }

  return result;
}

void sub_100057F38()
{
  v1 = *(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_spotter);
  v2 = (*((swift_isaMask & *v0) + 0xD8))();
  mach_absolute_time();
  sub_1000C9594();
}

void *sub_10005816C(uint64_t a1)
{
  v9 = 0x40CF400000000000;
  v10 = xmmword_1000D1C00;
  v11 = xmmword_1000D1C10;
  v2 = [objc_allocWithZone(AVAudioFormat) initWithStreamDescription:&v9];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 16);
  if (HIDWORD(v3))
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v4 = objc_allocWithZone(AVAudioPCMBuffer);
  v5 = [v4 initWithPCMFormat:v2 frameCapacity:v3, v9, v10, v11];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = [v5 int16ChannelData];
  if (v7)
  {
    v7 = *v7;
  }

  memcpy(v7, (a1 + 32), 2 * v3);
  [v6 setFrameLength:v3];

  return v6;
}

void sub_100058294(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005829CLL);
  }

  _Unwind_Resume(a1);
}

id sub_1000582EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDVASwiftVisionKWSSpotter(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000583C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C9574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_listeningTask] = 0;
  sub_1000C96C4();
  v9 = type metadata accessor for RDVASwiftVisionKWSSpotterDelegate(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  swift_unknownObjectRetain();
  sub_1000C96C4();
  swift_beginAccess();
  v13 = *(v12 + 16);
  *(v12 + 16) = a1;
  swift_unknownObjectRelease();
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_swiftDelegate] = v12;
  sub_1000C9614();
  (*(v5 + 104))(v8, enum case for VAComputeUnits.cpuAndNeuralEngine(_:), v4);

  v14 = sub_1000C9604();

  (*(v5 + 8))(v8, v4);
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_spotter] = v14;
  v15 = type metadata accessor for RDVASwiftVisionKWSSpotter(0);
  v17.receiver = v2;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_10005866C()
{
  result = sub_1000C96D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100058710()
{
  result = sub_1000C96D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t variable initialization expression of RDSoundInputImpl_iOS_AV_Coexist._logger()
{
  v0 = sub_10005F190();
  v1 = *v0;
  v2 = v0[1];

  return sub_1000C96B4();
}

uint64_t variable initialization expression of RDSoundInputImpl_iOS_AV_Coexist.RDSoundInputImpl_iOS_AV_CoexistKey()
{
  v0 = sub_100052CBC(&qword_10010DE40, &qword_1000D1CA0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1000C9A74();
}

char *RDSoundInputImpl_iOS_AV_Coexist.init(expectedFormat:deliverSamples:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v69 = a3;
  v65 = a1;
  v66 = a2;
  v5 = sub_1000C96D4();
  v6 = *(v5 - 8);
  v67 = v5;
  v68 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v58 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v57 - v10;
  v11 = sub_1000C9D24();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  __chkstk_darwin(v11);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C9CF4();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = sub_1000C9AA4();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist__logger;
  v19 = sub_10005F190();
  v20 = *v19;
  v21 = v19[1];

  v59 = v18;
  sub_1000C96B4();
  v22 = &v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples];
  *v22 = 0;
  v22[1] = 0;
  *&v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_converter] = 0;
  v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_onceInitialized] = 0;
  v23 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_RDSoundInputImpl_iOS_AV_CoexistKey;
  v24 = sub_100052CBC(&qword_10010DE40, &qword_1000D1CA0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *&v4[v23] = sub_1000C9A74();
  v61 = sub_100053C64(0, &qword_10010DE48, OS_dispatch_queue_ptr);
  sub_1000C9A94();
  v71 = &_swiftEmptyArrayStorage;
  sub_10005C248(&qword_10010DE50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100052CBC(&qword_10010DE58, &qword_1000D1CA8);
  sub_10005C290(&qword_10010DE60, &qword_10010DE58, &qword_1000D1CA8);
  sub_1000C9DB4();
  (*(v63 + 104))(v62, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v64);
  *&v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue] = sub_1000C9D44();
  v27 = v65;
  *&v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_expectedFormat] = v65;
  v28 = *v22;
  v29 = v22[1];
  v30 = v69;
  *v22 = v66;
  v22[1] = v30;
  v31 = v27;

  sub_100053784(v28);
  v32 = [objc_allocWithZone(AVAudioEngine) init];
  *&v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine] = v32;
  v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionSetupCompleted] = 0;
  v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionIsActivated] = 0;
  v33 = [objc_allocWithZone(AVAudioSessionRouteControl) init];
  v34 = [objc_allocWithZone(AVAudioSession) initSessionForIndependentInputRoute];
  v35 = v60;
  *&v4[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession] = v34;
  v36 = sub_1000C9AF4();
  v37 = kCFBooleanTrue;
  v38 = sub_1000C9AF4();
  CFPreferencesSetAppValue(v36, v37, v38);
  v65 = v33;
  v66 = v31;

  v39 = v67;
  v40 = *(v68 + 16);
  v40(v35, &v4[v59], v67);
  v41 = sub_1000C96A4();
  v42 = sub_1000C9CE4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Device supports input audio coexistence", v43, 2u);
    v39 = v67;
  }

  v44 = *(v68 + 8);
  v44(v35, v39);
  v45 = type metadata accessor for RDSoundInputImpl_iOS_AV_Coexist();
  v70.receiver = v4;
  v70.super_class = v45;
  v46 = objc_msgSendSuper2(&v70, "init");
  v47 = *&v46[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue];
  v48 = *&v46[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_RDSoundInputImpl_iOS_AV_CoexistKey];
  v71 = v46;
  v49 = v47;

  sub_1000C9D14();

  v50 = sub_1000590C4();
  v46[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionSetupCompleted] = v50 & 1;
  if (v50)
  {
  }

  else
  {
    v51 = v58;
    v52 = v67;
    v40(v58, &v46[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist__logger], v67);
    v53 = sub_1000C96A4();
    v54 = sub_1000C9CD4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "AVC: ERROR in setting up the coexisting audio session", v55, 2u);
    }

    else
    {
    }

    v44(v51, v52);
    return 0;
  }

  return v46;
}

uint64_t type metadata accessor for RDSoundInputImpl_iOS_AV_Coexist()
{
  result = qword_10010E6C8;
  if (!qword_10010E6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000590C4()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession;
  [*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine) setAudioSession:*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession)];
  v2 = *(v0 + v1);
  v27 = 0;
  v3 = [v2 setCategory:AVAudioSessionCategoryRecord withOptions:131073 error:&v27];
  v4 = v27;
  if (v3)
  {
    v5 = *(v0 + v1);
    v27 = 0;
    v6 = v4;
    v7 = [v5 setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v27];
    v4 = v27;
    if (v7)
    {
      v8 = *(v0 + v1);
      v9 = v27;
      v10 = v8;
      v11 = sub_1000C9AF4();
      isa = sub_1000C9BE4().super.super.isa;
      v27 = 0;
      v13 = [v10 setMXSessionProperty:v11 value:isa error:&v27];

      if (v13)
      {
        v14 = v27;
        return 1;
      }

      v22 = v27;
      sub_1000C9484();

      swift_willThrow();
      swift_errorRetain();
      v17 = sub_1000C96A4();
      v23 = sub_1000C9CD4();

      if (os_log_type_enabled(v17, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v17, v23, "AVC:Error setting MX property for non-interruption. %@", v24, 0xCu);
        sub_100052E5C(v25);

        return 0;
      }

      goto LABEL_7;
    }
  }

  v16 = v4;
  sub_1000C9484();

  swift_willThrow();
  swift_errorRetain();
  v17 = sub_1000C96A4();
  v18 = sub_1000C9CD4();

  if (!os_log_type_enabled(v17, v18))
  {
LABEL_7:

    return 0;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  *v19 = 138412290;
  swift_errorRetain();
  v21 = _swift_stdlib_bridgeErrorToNSError();
  *(v19 + 4) = v21;
  *v20 = v21;
  _os_log_impl(&_mh_execute_header, v17, v18, "AVC: ERROr setting up echo cancelled independent route. %@", v19, 0xCu);
  sub_100052E5C(v20);

  return 0;
}

void sub_100059440(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100059448);
  }

  _Unwind_Resume(a1);
}

void sub_100059464()
{
  v1 = v0;
  v2 = sub_1000C96A4();
  v3 = sub_1000C9CC4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AVC: AV activateNotifications", v4, 2u);
  }

  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:v1 selector:"handleConfigurationChangeNotificationWithNote:" name:AVAudioEngineConfigurationChangeNotification object:*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine)];
}

void sub_10005957C()
{
  v1 = v0;
  v2 = sub_1000C96A4();
  v3 = sub_1000C9CE4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AVC: AV deactivateNotifications", v4, 2u);
  }

  v5 = [objc_opt_self() defaultCenter];
  [v5 removeObserver:v1 name:AVAudioEngineConfigurationChangeNotification object:*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine)];
}

void sub_10005968C(void *a1)
{
  v2 = sub_1000C9A84();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C9AA4();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  v11 = sub_1000C96A4();
  v12 = sub_1000C9CE4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "AVC: Audio configuration changed = %@", v13, 0xCu);
    sub_100052E5C(v14);
  }

  v16 = gRDServerQueue;
  if (gRDServerQueue)
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10005C53C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100A28;
    v18 = _Block_copy(aBlock);
    v19 = v16;

    sub_1000C9A94();
    v23 = &_swiftEmptyArrayStorage;
    sub_10005C248(&qword_10010DA28, &type metadata accessor for DispatchWorkItemFlags);
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_10005C290(&qword_10010DA38, &qword_10010DA30, &unk_1000D1810);
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v18);

    (*(v22 + 8))(v5, v2);
    (*(v20 + 8))(v9, v21);
  }

  else
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall RDSoundInputImpl_iOS_AV_Coexist.startRecording()()
{
  v0 = sub_1000C96A4();
  v1 = sub_1000C9CE4();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "AVC: startRecording", v2, 2u);
  }

  v3 = [objc_opt_self() isSystemSleeping];
  if (v3)
  {
    v4 = sub_1000C96A4();
    v5 = sub_1000C9CE4();
    if (!os_log_type_enabled(v4, v5))
    {
      v10 = 0;
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "AVC: System is sleeping, so don't strat recording";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    v10 = v3 ^ 1;

LABEL_13:

    return v10;
  }

  v8 = sub_100059CC0();
  v9 = objc_opt_self();
  if (v8)
  {
    [v9 sendLiveRecordingOnNotification];
    v4 = sub_1000C96A4();
    v5 = sub_1000C9CE4();
    if (!os_log_type_enabled(v4, v5))
    {
      v10 = 1;
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "AVC:startedRecording";
    goto LABEL_9;
  }

  [v9 sendLiveRecordingOffNotificationWithInterrupt:1];
  return 0;
}

uint64_t sub_100059CC0()
{
  v1 = v0;
  if (![*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine) isRunning])
  {
    if (*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionSetupCompleted) == 1)
    {
      v6 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionIsActivated;
      if ((*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionIsActivated) & 1) == 0)
      {
        v7 = *(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession);
        v31 = 0;
        if (![v7 setActive:1 error:&v31])
        {
          v20 = v31;
          sub_1000C9484();

          swift_willThrow();
          swift_errorRetain();
          v21 = sub_1000C96A4();
          v22 = sub_1000C9CD4();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            *v23 = 138412290;
            swift_errorRetain();
            v25 = _swift_stdlib_bridgeErrorToNSError();
            *(v23 + 4) = v25;
            *v24 = v25;
            _os_log_impl(&_mh_execute_header, v21, v22, "AVC: Audio session could not be activated: %@", v23, 0xCu);
            sub_100052E5C(v24);

            return 0;
          }

LABEL_26:

          return 0;
        }

        v8 = v31;
        v9 = sub_1000C96A4();
        v10 = sub_1000C9CE4();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "AVC: Audio Session activated", v11, 2u);
        }

        *(v1 + v6) = 1;
      }
    }

    sub_100059464();
    if (sub_10005A214())
    {
      return 1;
    }

    v12 = sub_1000C96A4();
    v13 = sub_1000C9CE4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "AVC: Could not start recording from AV, deactivating audio session", v14, 2u);
    }

    if (*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionIsActivated) != 1)
    {
      return 0;
    }

    v15 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession);
    v31 = 0;
    if ([v15 setActive:0 error:&v31])
    {
      v16 = v31;
      v17 = sub_1000C96A4();
      v18 = sub_1000C9CE4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "AVC:Could not start recording from AV, Audio Session deactivated", v19, 2u);
      }

      return 0;
    }

    v26 = v31;
    sub_1000C9484();

    swift_willThrow();
    swift_errorRetain();
    v21 = sub_1000C96A4();
    v27 = sub_1000C9CD4();

    if (os_log_type_enabled(v21, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v21, v27, "AVC: Could not deavtivate audio session: %@", v28, 0xCu);
      sub_100052E5C(v29);

      return 0;
    }

    goto LABEL_26;
  }

  v2 = sub_1000C96A4();
  v3 = sub_1000C9CE4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AVC: AV is already running", v4, 2u);
  }

  return 1;
}

void sub_10005A1F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005A200);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005A214()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine;
  v2 = [*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine) inputNode];
  v3 = [v2 inputFormatForBus:0];
  if ([v3 channelCount])
  {
    [v2 removeTapOnBus:0];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10005C4CC;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005A904;
    aBlock[3] = &unk_1001009B0;
    v5 = _Block_copy(aBlock);
    v6 = v3;

    [v2 installTapOnBus:0 bufferSize:1024 format:v6 block:v5];
    _Block_release(v5);

    v7 = *(v0 + v1);
    aBlock[0] = 0;
    if ([v7 startAndReturnError:aBlock])
    {
      v8 = *(v0 + v1);
      v9 = *(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession);
      v10 = aBlock[0];
      v11 = v8;
      v12 = v9;
      [v11 setAudioSession:v12];

      return 1;
    }

    v17 = aBlock[0];
    sub_1000C9484();

    swift_willThrow();
    swift_errorRetain();
    v18 = sub_1000C96A4();
    v19 = sub_1000C9CD4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "AVI:Error Starting engine: %@", v20, 0xCu);
      sub_100052E5C(v21);
    }

    else
    {
    }
  }

  else
  {
    v14 = sub_1000C96A4();
    v15 = sub_1000C9CD4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "AVC:No audio input available, channel count 0", v16, 2u);
    }
  }

  return 0;
}

void sub_10005A5BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005A5C4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005A5F8(void *a1)
{
  v2 = sub_1000C9A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C9AA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = v3;
    v22 = v7;
    v13 = *(result + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue);
    v14 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1;
    aBlock[4] = sub_10005C514;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054990;
    aBlock[3] = &unk_100100A00;
    v16 = _Block_copy(aBlock);
    v17 = v13;
    v20 = v14;
    v18 = a1;
    sub_1000C9A94();
    v23 = &_swiftEmptyArrayStorage;
    sub_10005C248(&qword_10010DA28, &type metadata accessor for DispatchWorkItemFlags);
    sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
    sub_10005C290(&qword_10010DA38, &qword_10010DA30, &unk_1000D1810);
    sub_1000C9DB4();
    sub_1000C9D34();
    _Block_release(v16);

    (*(v21 + 8))(v6, v2);
    (*(v8 + 8))(v11, v22);
  }

  return result;
}

void sub_10005A904(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

id sub_10005A988()
{
  v1 = v0;
  v2 = sub_1000C96A4();
  v3 = sub_1000C9CE4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AVC:stopRunningAudioEngine", v4, 2u);
  }

  v5 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine;
  v6 = [*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioEngine) inputNode];
  [v6 removeTapOnBus:0];

  return [*(v1 + v5) stop];
}

Swift::Void __swiftcall RDSoundInputImpl_iOS_AV_Coexist.stopRecording()()
{
  v1 = v0;
  v2 = sub_1000C9A84();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C9AA4();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist__logger;
  v10 = sub_1000C96A4();
  v11 = sub_1000C9CE4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "AVC:StopRecording from AV", v12, 2u);
  }

  sub_10005957C();
  sub_10005A988();
  v13 = *&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue];
  v14 = swift_allocObject();
  v14[2] = v1;
  aBlock[4] = sub_10005C20C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100054990;
  aBlock[3] = &unk_100100898;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v30 = v1;
  sub_1000C9A94();
  v34 = &_swiftEmptyArrayStorage;
  sub_10005C248(&qword_10010DA28, &type metadata accessor for DispatchWorkItemFlags);
  sub_100052CBC(&qword_10010DA30, &unk_1000D1810);
  sub_10005C290(&qword_10010DA38, &qword_10010DA30, &unk_1000D1810);
  sub_1000C9DB4();
  sub_1000C9D34();
  _Block_release(v15);

  (*(v33 + 8))(v5, v2);
  (*(v31 + 8))(v9, v32);

  v17 = v30;
  v18 = *&v30[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSession];
  aBlock[0] = 0;
  v19 = [v18 setActive:0 error:aBlock];
  v20 = aBlock[0];
  if (v19)
  {
    v17[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_audioSessionIsActivated] = 0;
    v21 = objc_opt_self();
    v22 = v20;
    [v21 sendLiveRecordingOffNotificationWithInterrupt:0];
  }

  else
  {
    v23 = aBlock[0];
    sub_1000C9484();

    swift_willThrow();
    swift_errorRetain();
    v24 = sub_1000C96A4();
    v25 = sub_1000C9CD4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "AVC:stopRecording : error stopping AVAudioSession:%@", v26, 0xCu);
      sub_100052E5C(v27);
    }

    else
    {
    }
  }
}

void sub_10005AF70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005AF78);
  }

  _Unwind_Resume(a1);
}

uint64_t RDSoundInputImpl_iOS_AV_Coexist.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_1000C96D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist__logger, v2);
  v7 = sub_1000C96A4();
  v8 = sub_1000C9CE4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "AVC:Deinitializing AV Coexist", v9, 2u);
  }

  v10 = (*(v3 + 8))(v6, v2);
  if ((*((swift_isaMask & *v1) + 0x1F0))(v10))
  {
    (*((swift_isaMask & *v1) + 0x1E8))();
  }

  sub_10005957C();
  v11 = (v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples);
  v12 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples);
  if (v12)
  {
    v13 = v11[1];
    *v11 = 0;
    v11[1] = 0;
    sub_100053784(v12);
  }

  v14 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue;
  v15 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_RDSoundInputImpl_iOS_AV_CoexistKey;
  v16 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_RDSoundInputImpl_iOS_AV_CoexistKey);
  v17 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_avAudioBufferQueue);

  sub_1000C9D04();

  if (aBlock[0] && aBlock[0] == v1)
  {
    goto LABEL_10;
  }

  v18 = *(v1 + v14);
  aBlock[4] = nullsub_25;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005B39C;
  aBlock[3] = &unk_1001008C0;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  dispatch_sync(v20, v19);

  _Block_release(v19);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
LABEL_10:
    v22 = *(v1 + v14);
    v23 = *(v1 + v15);
    aBlock[0] = 0;
    v24 = v22;

    sub_1000C9D14();

    v25 = type metadata accessor for RDSoundInputImpl_iOS_AV_Coexist();
    v26.receiver = v1;
    v26.super_class = v25;
    return objc_msgSendSuper2(&v26, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10005B4CC(void *a1)
{
  v2 = v1;
  sub_100053C64(0, &qword_10010DE98, NSObject_ptr);
  v4 = [a1 format];
  v5 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_expectedFormat);
  v6 = sub_1000C9D54();

  if (v6)
  {
    sub_10005BD84();
    v7 = [a1 int16ChannelData];
    if (v7)
    {
      v8 = *v7;
      v9 = [a1 frameLength];
      v10 = v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples;
      v11 = *(v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples);
      if (v11)
      {
        v12 = *(v10 + 8);
        v13 = v9;

        v11(v8, v13);

        sub_100053784(v11);
      }
    }

    else
    {
      oslog = sub_1000C96A4();
      v14 = sub_1000C9CD4();
      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v14, "AVC: Invalid audio format", v15, 2u);
      }
    }
  }

  else
  {

    sub_10005B6DC(a1);
  }
}

void sub_10005B6DC(void *a1)
{
  v2 = v1;
  v45 = [a1 format];
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_expectedFormat;
  v4 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_expectedFormat);
  v48 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_converter;
  v5 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_converter);
  if (!v5)
  {
    v11 = v4;
LABEL_6:
    sub_10005BD84();
    v12 = [objc_allocWithZone(AVAudioConverter) initFromFormat:v45 toFormat:v4];
    v13 = *(v2 + v48);
    *(v2 + v48) = v12;

    goto LABEL_7;
  }

  v6 = v4;
  v7 = [v5 inputFormat];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  sub_100053C64(0, &qword_10010DE90, AVAudioFormat_ptr);
  v9 = v45;
  v10 = sub_1000C9D54();

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v14 = *(v2 + v48);
  if (v14)
  {
    [v14 setSampleRateConverterQuality:127];
  }

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:*(v2 + v3) frameCapacity:8000];
  v17 = v16;
  if (!v16)
  {
    __break(1u);
  }

  v44 = v4;
  [v16 setFrameLength:8000];
  v18 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = a1;
  v20 = *(v2 + v48);
  if (v20)
  {
    v21 = v19;
    v22 = v2 + v18;
    v46 = v2 + v18;
    while (1)
    {
      aBlock[4] = sub_10005C410;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10005BD18;
      aBlock[3] = &unk_100100960;
      v23 = _Block_copy(aBlock);

      v49 = a1;
      v24 = v20;

      aBlock[0] = 0;
      v25 = [v24 convertToBuffer:v17 error:aBlock withInputFromBlock:v23];
      _Block_release(v23);

      v20 = aBlock[0];
      if (v25 == 2)
      {

        return;
      }

      if (v25 == 3)
      {
        goto LABEL_21;
      }

      v26 = [v17 int16ChannelData];
      if (!v26)
      {
        break;
      }

      v27 = v15;
      v28 = v2;
      v29 = *v26;
      v30 = [v17 frameLength];
      v31 = *v22;
      if (*v22)
      {
        v32 = *(v22 + 8);
        v33 = v30;

        v22 = v46;
        v31(v29, v33);
        v2 = v28;
        v15 = v27;

        sub_100053784(v31);
        if (v25 == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {

        v2 = v28;
        v15 = v27;
        if (v25 == 1)
        {
LABEL_28:

          return;
        }
      }

      v21 = swift_allocObject();
      v21[2] = v15;
      v21[3] = v49;
      v20 = *(v2 + v48);
      if (!v20)
      {
        goto LABEL_20;
      }
    }

    v40 = v20;
    v41 = sub_1000C96A4();
    v42 = sub_1000C9CD4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "AVC: Invalid audio format while converting", v43, 2u);
    }
  }

  else
  {
LABEL_20:
    __break(1u);
LABEL_21:
    v34 = v20;
    v35 = sub_1000C96A4();
    v36 = sub_1000C9CD4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "AVC:Could not run audio converter %@", v37, 0xCu);
      sub_100052E5C(v38);
    }
  }
}

void sub_10005BCCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005BCD4);
  }

  _Unwind_Resume(a1);
}

id sub_10005BD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

void sub_10005BD84()
{
  v26 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_converter;
  if (*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_converter))
  {
    v1 = v0;
    v2 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:*(v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_expectedFormat) frameCapacity:8000];
    v3 = v2;
    if (v2)
    {
      [v2 setFrameLength:8000];
      v4 = *(v0 + v26);
      if (v4)
      {
        v5 = v0 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist_deliverSamples;
        while (1)
        {
          aBlock[4] = sub_10005C15C;
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10005BD18;
          aBlock[3] = &unk_1001008E8;
          v6 = _Block_copy(aBlock);
          v7 = v4;

          aBlock[0] = 0;
          v8 = [v7 convertToBuffer:v3 error:aBlock withInputFromBlock:v6];
          _Block_release(v6);

          v4 = aBlock[0];
          if (v8 == 2)
          {
            goto LABEL_13;
          }

          if (v8 == 3)
          {
            break;
          }

          v9 = [v3 int16ChannelData];
          if (!v9)
          {
            v17 = sub_1000C96A4();
            v23 = sub_1000C9CD4();
            if (os_log_type_enabled(v17, v23))
            {
              v24 = swift_slowAlloc();
              *v24 = 0;
              _os_log_impl(&_mh_execute_header, v17, v23, "AVC: Invalid audio format while draining", v24, 2u);
              v18 = v4;
LABEL_18:
            }

            else
            {
              v18 = v4;
            }

            goto LABEL_21;
          }

          v10 = *v9;
          v11 = [v3 frameLength];
          v12 = *v5;
          if (*v5)
          {
            v13 = *(v5 + 8);
            v14 = v1;
            v15 = v11;

            v16 = v15;
            v1 = v14;
            v12(v10, v16);
            sub_100053784(v12);
          }

          if (v8 == 1)
          {
            goto LABEL_23;
          }

          v4 = *(v1 + v26);
          if (!v4)
          {
            goto LABEL_12;
          }
        }

        v18 = sub_1000C96A4();
        v19 = sub_1000C9CD4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v4;
          *v21 = v4;
          v22 = v4;
          _os_log_impl(&_mh_execute_header, v18, v19, "AVC:Could not drain converter %@", v20, 0xCu);
          sub_100052E5C(v21);

          v17 = v3;
          v3 = v4;
          goto LABEL_18;
        }

        v17 = v3;
        v3 = v4;
LABEL_21:

        goto LABEL_22;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      v17 = v4;
LABEL_22:

LABEL_23:
      v25 = *(v1 + v26);
      *(v1 + v26) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10005C130(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10005C138);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005C1D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005C248(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005C290(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100052D68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005C2EC()
{
  result = sub_1000C96D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005C3D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10005C410(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_beginAccess();
  v6 = 1;
  if (*(v5 + 16))
  {
    v4 = 0;
  }

  else
  {
    swift_beginAccess();
    *(v5 + 16) = 1;
    v7 = v4;
    v6 = 0;
  }

  *a2 = v6;
  return v4;
}

uint64_t sub_10005C494()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C4D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10005C514()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_10005B4CC(v1);
}

void sub_10005C53C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (((*((swift_isaMask & *Strong) + 0x1C0))() & 1) == 0)
    {
      v2 = sub_1000C96A4();
      v3 = sub_1000C9CD4();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "AVC: Could not start recording after Configuration change", v4, 2u);
      }
    }
  }
}

uint64_t sub_10005C64C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10005C6E4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1000C9434();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9424();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = v6;
  v11 = v10;
  sub_10005CCBC(a1, 0x4E544974736F70, 0xE700000000000000, a3 & 1);
  sub_100052CBC(&qword_10010DEA0, &qword_1000D1D20);
  isa = sub_1000C9B64().super.isa;

  [v11 setTokenSausage:isa];

  sub_10005DCB4();
  sub_100052CBC(&qword_10010DEA8, &qword_1000D1D28);
  v13 = sub_1000C9B64().super.isa;

  [v11 setNBestResults:v13];

  sub_10005E2F8(a1, 0x4E544974736F70, 0xE700000000000000, a3 & 1);
  v14 = sub_1000C9AF4();

  [v11 setFirstBestResult:v14];

  sub_10005CCBC(a2, 0x4E5449657270, 0xE600000000000000, a3 & 1);
  v15 = sub_1000C9B64().super.isa;

  [v11 setPreITN_tokenSausage:v15];

  sub_10005DCB4();
  v16 = sub_1000C9B64().super.isa;

  [v11 setPreITN_nBestResults:v16];

  sub_10005E2F8(a2, 0x4E5449657270, 0xE600000000000000, a3 & 1);
  v17 = sub_1000C9AF4();

  [v11 setPreITN_firstBestResult:v17];

  [v11 setIsPartialResult:a3 & 1];
  v18 = sub_1000C9834();
  v19 = *(*(v18 - 8) + 8);
  v19(a2, v18);
  v19(a1, v18);
  (*(v22 + 8))(v9, v21);
  return v11;
}