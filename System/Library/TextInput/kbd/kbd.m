BOOL sub_100001748(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = TYALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10000D054(v4, v5, v6);
  }

  return 1;
}

uint64_t _isTypologyURL(void *a1)
{
  v1 = a1;
  v12 = 0;
  v2 = [v1 getResourceValue:&v12 forKey:NSURLIsDirectoryKey error:0];
  v3 = v12;
  v4 = [v1 isFileURL];
  if (v2)
  {
    v5 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  v6 = [v1 lastPathComponent];
  v7 = [v6 hasPrefix:@"typology"];

  v8 = [v1 pathExtension];
  if ([v8 isEqualToString:@"log"])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v1 pathExtension];
    v9 = [v10 isEqualToString:@"plist"];
  }

  return v4 & v5 & v7 & v9 & v2;
}

id IXATestAppRelayLog()
{
  if (qword_100026530 != -1)
  {
    sub_10000D32C();
  }

  v1 = qword_100026528;

  return v1;
}

void sub_1000024F8(id a1)
{
  qword_100026528 = os_log_create("com.apple.inputanalytics", "testAppRelay");

  _objc_release_x1();
}

void sub_100002580(id a1)
{
  qword_100026538 = objc_alloc_init(IXATestAppRelayServer);

  _objc_release_x1();
}

void sub_100003190(id a1)
{
  qword_100026548 = objc_alloc_init(TIDiagnosticHelper);

  _objc_release_x1();
}

uint64_t sub_100003664(mach_msg_id_t a1)
{
  msg.msgh_remote_port = dword_100026558;
  msg.msgh_local_port = 0;
  *&msg.msgh_bits = 0x1800000015;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = a1;
  return mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
}

uint64_t sub_100003864(uint64_t a1)
{
  qword_100026560 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100003BC4(uint64_t a1)
{
  v2 = +[TIKeyboardInputManagerLoader sharedLoader];
  *(*(*(a1 + 32) + 8) + 24) = [v2 hasActiveInputManagers];
}

void sub_100003D8C(uint64_t a1)
{
  v2 = +[TIKeyboardInputManagerLoader sharedLoader];
  v3 = [v2 activeInputModeIdentifiers];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = TIInputModeGetSWLayout();
        if (v10 && [*(a1 + 32) isEqualToString:{v10, v11}])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;

          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

void sub_100004184(id a1)
{
  qword_100026570 = objc_alloc_init(TITypologyLogTransferServer);

  _objc_release_x1();
}

void sub_100004D40(id a1)
{
  qword_100026580 = objc_alloc_init(TIEmojiAlternativesServer);

  _objc_release_x1();
}

void sub_100004FEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 32))
  {
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v15 + 1) + 8 * v13) candidate];
          [v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_100005248(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100026590 = objc_opt_new();

  return _objc_release_x1();
}

uint64_t sub_1000056A4(uint64_t a1)
{
  v2 = +[TIAppAutofillManager sharedInstance];
  [v2 obtainCredential:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  kdebug_trace();
  v4 = kac_get_log();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0x3E8uLL, "kbdStartup.entryPoint", "", buf, 2u);
  }

  pthread_set_qos_class_self_np(QOS_CLASS_USER_INTERACTIVE, 0);
  v5 = +[TIDiagnosticHelper sharedInstance];
  v6 = [v5 registerForSignal:30 withBlock:&stru_10001C978];

  v7 = +[NSOperationQueue mainQueue];
  [v7 addOperationWithBlock:&stru_10001C998];

  +[TICoreAnalyticsEventController registerScheduledEventsActivity];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_10001C9D8);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, &stru_10001C9F8);

  out_token = 0;
  notify_register_dispatch("com.apple.language.changed", &out_token, &_dispatch_main_q, &stru_10001CA18);

  kdebug_trace();
  v8 = kac_get_log();
  if (os_signpost_enabled(v8))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0x3E8uLL, "kbdStartup.entryPoint", "", v12, 2u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = +[DDSServer sharedInstance];
  v10 = +[NSRunLoop mainRunLoop];
  [v10 run];

  return 0;
}

void sub_100005920(id a1, int a2)
{
  if (TICanLogMessageAtLevel())
  {
    v2 = TIOSLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D7AC();
    }
  }

  +[TILanguageModelLoaderManager performMaintenance];
}

void sub_10000597C(id a1)
{
  kdebug_trace();
  v1 = kac_get_log();
  if (os_signpost_enabled(v1))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_INTERVAL_BEGIN, 0x3E9uLL, "kbdStartup.dirCreate", "", buf, 2u);
  }

  v2 = +[NSFileManager defaultManager];
  v3 = +[TIKeyboardInputManager keyboardUserDirectory];
  v45 = 0;
  v4 = [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v45];
  v5 = v45;

  if ((v4 & 1) == 0 && TICanLogMessageAtLevel())
  {
    v6 = TIOSLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D850(v5);
    }
  }

  kdebug_trace();
  v7 = kac_get_log();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0x3E9uLL, "kbdStartup.dirCreate", "", buf, 2u);
  }

  kdebug_trace();
  v8 = kac_get_log();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0x3EAuLL, "kbdStartup.assetManager", "", buf, 2u);
  }

  v9 = +[TIAssetManager sharedAssetManager];
  kdebug_trace();
  v10 = kac_get_log();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0x3EAuLL, "kbdStartup.assetManager", "", buf, 2u);
  }

  kdebug_trace();
  v11 = kac_get_log();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0x3EBuLL, "kbdStartup.inputManagerServer", "", buf, 2u);
  }

  v12 = +[TIKeyboardInputManagerServer sharedKeyboardInputManagerServer];
  kdebug_trace();
  v13 = kac_get_log();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 0x3EBuLL, "kbdStartup.inputManagerServer", "", buf, 2u);
  }

  kdebug_trace();
  v14 = kac_get_log();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0x3ECuLL, "kbdStartup.remoteDataServer", "", buf, 2u);
  }

  v15 = +[TIRemoteDataServer sharedRemoteDataServer];
  kdebug_trace();
  v16 = kac_get_log();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0x3ECuLL, "kbdStartup.remoteDataServer", "", buf, 2u);
  }

  kdebug_trace();
  v17 = kac_get_log();
  if (os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0x3EDuLL, "kbdStartup.typingAssertion", "", buf, 2u);
  }

  v18 = +[TITypingAssertion sharedTypingAssertion];
  kdebug_trace();
  v19 = kac_get_log();
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0x3EDuLL, "kbdStartup.typingAssertion", "", buf, 2u);
  }

  kdebug_trace();
  v20 = kac_get_log();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0x3EEuLL, "kbdStartup.userDictionaryServer", "", buf, 2u);
  }

  v21 = +[TIUserDictionaryServer sharedInstance];
  [v21 startServer];

  kdebug_trace();
  v22 = kac_get_log();
  if (os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, 0x3EEuLL, "kbdStartup.userDictionaryServer", "", buf, 2u);
  }

  kdebug_trace();
  v23 = kac_get_log();
  if (os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0x3EFuLL, "kbdStartup.lexiconServer", "", buf, 2u);
  }

  v24 = +[TILexiconServer sharedLexiconServer];
  kdebug_trace();
  v25 = kac_get_log();
  if (os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, 0x3EFuLL, "kbdStartup.lexiconServer", "", buf, 2u);
  }

  kdebug_trace();
  v26 = kac_get_log();
  if (os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_BEGIN, 0x3F0uLL, "kbdStartup.emojiPreferencesService", "", buf, 2u);
  }

  v27 = [EMFEmojiPreferencesService sharedServiceWithMachName:0];
  kdebug_trace();
  v28 = kac_get_log();
  if (os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, 0x3F0uLL, "kbdStartup.emojiPreferencesService", "", buf, 2u);
  }

  kdebug_trace();
  v29 = kac_get_log();
  if (os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, 0x3F1uLL, "kbdStartup.accessibilityServer", "", buf, 2u);
  }

  v30 = +[TIAccessibilityServer sharedAccessibilityServer];
  kdebug_trace();
  v31 = kac_get_log();
  if (os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, 0x3F1uLL, "kbdStartup.accessibilityServer", "", buf, 2u);
  }

  kdebug_trace();
  v32 = kac_get_log();
  if (os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_BEGIN, 0x3F2uLL, "kbdStartup.imageCacheServer", "", buf, 2u);
  }

  v33 = +[TIImageCacheServer sharedInstance];
  kdebug_trace();
  v34 = kac_get_log();
  if (os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, 0x3F2uLL, "kbdStartup.imageCacheServer", "", buf, 2u);
  }

  kdebug_trace();
  v35 = kac_get_log();
  if (os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_BEGIN, 0x3F3uLL, "kbdStartup.preferencesControllerService", "", buf, 2u);
  }

  v36 = +[TIPreferencesControllerService sharedPreferencesController];
  kdebug_trace();
  v37 = kac_get_log();
  if (os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, 0x3F3uLL, "kbdStartup.preferencesControllerService", "", buf, 2u);
  }

  kdebug_trace();
  v38 = kac_get_log();
  if (os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_BEGIN, 0x3F4uLL, "kbdStartup.autofillServer", "", buf, 2u);
  }

  v39 = +[TIAutofillServer sharedAutofillServer];
  kdebug_trace();
  v40 = kac_get_log();
  if (os_signpost_enabled(v40))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, 0x3F4uLL, "kbdStartup.autofillServer", "", buf, 2u);
  }

  v41 = +[TIKeyboardInputManagerLoader sharedLoader];
  [v41 registerMaintenanceActivity];

  v42 = +[TITypologyLogTransferServer sharedServer];
  v43 = +[TYATypologyAccessServer sharedServer];
  v44 = +[IXATestAppRelayServer sharedServer];
}

void sub_100006524(id a1, OS_xpc_object *a2)
{
  xdict = a2;
  v2 = xpc_get_type(xdict) == &_xpc_type_dictionary;
  v3 = xdict;
  if (v2)
  {
    v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, _xpc_event_key_name)];
    if ([@"AppleKeyboardsPreferencesChangedNotification" isEqualToString:v4])
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 postNotificationName:TIAppleKeyboardsPreferencesChangedNotification_Private object:0];
    }

    v3 = xdict;
  }
}

void sub_1000065EC(id a1, OS_xpc_object *a2)
{
  xdict = a2;
  v2 = xpc_get_type(xdict) == &_xpc_type_dictionary;
  v3 = xdict;
  if (v2)
  {
    v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, _xpc_event_key_name)];
    if ([@"com.apple.LaunchServices.applicationUnregistered" isEqualToString:v4])
    {
      v5 = xpc_dictionary_get_value(xdict, "UserInfo");
      if (xpc_get_type(v5) == &_xpc_type_dictionary)
      {
        v6 = _CFXPCCreateCFObjectFromXPCObject();
        v7 = +[NSNotificationCenter defaultCenter];
        v8 = TIApplicationUnregisteredNotification_Private;
        v9 = [v6 objectForKeyedSubscript:@"bundleIDs"];
        [v7 postNotificationName:v8 object:v9];
      }
    }

    v3 = xdict;
  }
}

void sub_100006734(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_debug_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 0xCu);
}

uint64_t sub_1000067F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000265A0 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100006E18(uint64_t a1)
{
  v2 = +[TITypingAssertion sharedTypingAssertion];
  [v2 restResetTouches];

  v3 = +[TITransientLexiconManager sharedInstance];
  v4 = [v3 supplementalLexicons];
  [v4 clearActiveLexicon];

  v5 = +[TIKeyboardInputManagerLoader sharedLoader];
  v6 = [v5 interactingConnection];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    v8 = +[TIKeyboardInputManagerLoader sharedLoader];
    [v8 setInteractingConnection:0];
  }
}

uint64_t sub_100007410(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000265B0 = objc_opt_new();

  return _objc_release_x1();
}

uint64_t sub_100007900(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000265C0 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100007F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [TILexiconEntry entryWithDocumentText:a2 userInput:0];
  [v2 addObject:v3];
}

uint64_t sub_100008130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100008148(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(TIWordTokenizer);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKey:*(*(&v16 + 1) + 8 * v9)];
        [*(a1 + 32) addContact:v10 toEntries:*(*(*(a1 + 48) + 8) + 40) usingTokenizer:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = +[TIUserDictionaryServer sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100008318;
  v14[3] = &unk_10001CA90;
  v14[4] = *(a1 + 32);
  v13 = *(a1 + 40);
  v12 = v13;
  v15 = v13;
  [v11 getPhraseShortcutPairs:v14];
}

void sub_100008318(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i < v4; i += 2)
    {
      v6 = *(*(*(a1 + 48) + 8) + 40);
      v7 = [v10 objectAtIndex:i];
      v8 = [v10 objectAtIndex:i + 1];
      v9 = [TILexiconEntry entryWithDocumentText:v7 userInput:v8];
      [v6 addObject:v9];
    }
  }

  [*(a1 + 32) finishRequestWithEntries:*(*(*(a1 + 48) + 8) + 40) completion:*(a1 + 40)];
}

void sub_100008B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  if (v10)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    NSLog(@"%@: Account query failed with error: %@", v6, v10);

    v7 = [*(a1 + 32) cond];
    [v7 lock];

    [*(a1 + 32) setValid:0];
    v8 = [*(a1 + 32) cond];
    [v8 broadcast];

    v9 = [*(a1 + 32) cond];
    [v9 unlock];
  }

  else
  {
    [*(a1 + 32) searchAccounts:a2];
  }
}

void sub_100009630(id a1)
{
  qword_1000265D0 = objc_alloc_init(TYATypologyAccessServer);

  _objc_release_x1();
}

id TYALog()
{
  if (qword_1000265E8 != -1)
  {
    sub_10000DBE0();
  }

  v1 = qword_1000265E0;

  return v1;
}

void sub_100009D68(id a1)
{
  qword_1000265E0 = os_log_create("com.apple.TextInput", "typologyAccess");

  _objc_release_x1();
}

void sub_100009EC8(id a1)
{
  qword_1000265F0 = objc_alloc_init(TILinguisticAssetDownloadServer);

  _objc_release_x1();
}

void sub_100009F04(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.TextInput.linguistic-asset-download-server", v3);
  v2 = qword_100026600;
  qword_100026600 = v1;
}

void sub_10000A0F4(uint64_t a1)
{
  if ([*(a1 + 32) isStarted])
  {
    v2 = +[TIAssetManager sharedAssetManager];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000A1E8;
    v5[3] = &unk_10001CB90;
    v3 = *(a1 + 40);
    v6 = *(a1 + 48);
    [v2 requestAssetDownloadForLanguage:v3 completion:v5];
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

uint64_t sub_10000A1E8(uint64_t a1, uint64_t a2)
{
  [TILinguisticAssetDownloadServer serverResultForAssetManagerResult:a2];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

Class sub_10000A51C(uint64_t a1)
{
  if (!dlopen([@"/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices" UTF8String], 1))
  {
    sub_10000DC1C(a1);
  }

  result = objc_getClass("AFPreferences");
  qword_100026620 = result;
  return result;
}

uint64_t sub_10000A614(uint64_t a1)
{
  [*(a1 + 32) resolveAssistantFrameworkClasses];
  v2 = *(a1 + 32);
  qword_100026628 = objc_opt_new();

  return _objc_release_x1();
}

void sub_10000ADE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v11 = v3;
    v5 = [NSArray arrayWithObjects:&v11 count:1];
    v6 = [CNContactVCardSerialization dataWithContacts:v5 error:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = +[TIRemoteDataServer sharedRemoteDataServer];
  v8 = [v7 dispatchQueue];
  v10 = *(a1 + 32);
  v9 = v6;
  TIDispatchAsync();
}

void sub_10000B084(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[TIRemoteDataServer sharedRemoteDataServer];
  v5 = [v4 dispatchQueue];
  v7 = *(a1 + 32);
  v6 = v3;
  TIDispatchAsync();
}

void sub_10000B180(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [NSClassFromString(@"LSApplicationWorkspace") defaultWorkspace];
  v6 = [NSURL URLWithString:v4];

  v8 = 0;
  LOBYTE(v4) = [v5 openSensitiveURL:v6 withOptions:v3 error:&v8];

  v7 = v8;
  if ((v4 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000DF68();
  }
}

void sub_10000B3C8(uint64_t a1)
{
  if (qword_100026638)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    error = 0;
    v4 = [*(a1 + 32) notificationDetailsForType:*(a1 + 48)];
    if (*(a1 + 48) == 2)
    {
      v5 = 35;
    }

    else
    {
      v5 = 0;
    }

    qword_100026638 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, v5, &error, v4);
    v6 = *(a1 + 40);
    qword_100026640 = *(a1 + 48);
    if (error)
    {
      v6[2](v6, 0);
    }

    else
    {
      v7 = [v6 copy];
      v8 = qword_100026610;
      qword_100026610 = v7;

      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, qword_100026638, sub_10000B53C, 0);
      if (RunLoopSource)
      {
        v10 = RunLoopSource;
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, v10, kCFRunLoopCommonModes);
        CFRelease(v10);
      }

      else
      {
        (*(qword_100026610 + 16))(qword_100026610, 0);
        if (qword_100026638)
        {
          CFUserNotificationCancel(qword_100026638);
          CFRelease(qword_100026638);
          qword_100026638 = 0;
        }
      }
    }
  }
}

void sub_10000B53C(uint64_t a1, uint64_t a2)
{
  if (qword_100026638 != a1)
  {
    NSLog(@"Unexpected notification response received");
    return;
  }

  if (!qword_100026610)
  {
    sub_10000E064();
  }

  if (a2)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        v4 = 0;
        goto LABEL_14;
      }

      v3 = qword_100026640;
      if (!qword_100026640)
      {
        v9 = [qword_100026620 sharedPreferences];
        v4 = 1;
        [v9 setDictationIsEnabled:1];

        goto LABEL_14;
      }

      if (qword_100026640 == 1)
      {
        sub_10000B180(@"prefs:root=General&path=Keyboard/KEYBOARDS/AddNewKeyboard", 0);
        v4 = 1;
        goto LABEL_14;
      }

      if (qword_100026640 != 2)
      {
        v4 = 1;
        goto LABEL_15;
      }
    }

    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

LABEL_14:
  v3 = qword_100026640;
LABEL_15:
  if (v3 == 3)
  {
    v7 = [qword_100026620 sharedPreferences];
    [v7 setSiriDataSharingOptInAlertPresented:1 completion:0];
  }

  else if (v3 == 2)
  {
    if (v4 == 3)
    {
      v5 = [qword_100026620 sharedPreferences];
      [v5 setSiriDataSharingOptInAlertPresented:1 completion:0];

      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    sub_10000BEB4(v6);
  }

  (*(qword_100026610 + 16))(qword_100026610, v4);
  if (qword_100026638)
  {
    CFUserNotificationCancel(qword_100026638);
    CFRelease(qword_100026638);
    qword_100026638 = 0;
  }

  v8 = qword_100026610;
  qword_100026610 = 0;
}

id sub_10000BC44()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100026668;
  v7 = qword_100026668;
  if (!qword_100026668)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000CE54;
    v3[3] = &unk_10001C838;
    v3[4] = &v4;
    sub_10000CE54(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

uint64_t sub_10000BDA0(uint64_t a1)
{
  v2 = qword_100026638;
  if (qword_100026638)
  {
    if (!qword_100026610)
    {
      sub_10000E168(&v6);
      v2 = v6;
    }

    CFUserNotificationCancel(v2);
    CFRelease(qword_100026638);
    qword_100026638 = 0;
    (*(qword_100026610 + 16))(qword_100026610, 0);
    v3 = qword_100026610;
    qword_100026610 = 0;
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_10000BEB4(uint64_t a1)
{
  v2 = [qword_100026620 sharedPreferences];
  v3 = objc_opt_respondsToSelector();

  v4 = [qword_100026620 sharedPreferences];
  v5 = v4;
  if (v3)
  {
    [v4 setSiriDataSharingOptInStatus:a1 propagateToHomeAccessories:0 source:10 reason:@"Keyboard Dictation Onboarding Alerts" completion:0];
  }

  else
  {
    [v4 setSiriDataSharingOptInStatus:a1 completion:0];
  }
}

void sub_10000C038(uint64_t a1)
{
  +[TIKeyboardInputManagerLoaderSyncHelper deleteCloudKitBackup];
  +[TIKeyboardInputManager removeAllDynamicDictionaries];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:TIKeyboardInputManagerDynamicDictionariesRemovedNotification object:*(a1 + 32)];

  v3 = +[TIKeyboardInputManager keyboardUserDirectory];
  [TILanguageModelLoaderManager clearDynamicResourcesAtPath:v3];

  v4 = +[TILanguageModelOfflineLearningAgent sharedLearningAgent];
  [v4 handleRemovalOfLearnedModels];

  +[TIKeyboardInputManager resetResponseKit];
  v5 = [EMFEmojiPreferencesService sharedServiceWithMachName:0];
  v8 = [v5 preferences];

  [v8 resetEmojiDefaults];
  [v8 writeEmojiDefaults];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleEmojiKeyboardPreferencesChangedNotification", 0, 0, 1u);
  v7 = objc_alloc_init(_STKImageGlyphRecencyObjCFacade);
  [v7 resetRecentsWithCompletionHandler:&stru_10001CCB8];

  notify_post([TIKeyboardInputManagerDynamicDictionariesRemovedDarwinNotificationName UTF8String]);
  (*(*(a1 + 40) + 16))();
}

void sub_10000C1A8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000E294(v2);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000E334();
  }
}

void sub_10000C80C(uint64_t a1)
{
  v2 = +[TIEmojiAlternativesServer sharedInstance];
  [v2 updateForActiveLocaleIdentifiers:*(a1 + 32)];
}

void sub_10000C8FC(uint64_t a1)
{
  v2 = +[TIEmojiAlternativesServer sharedInstance];
  [v2 updateKeyboardType:*(a1 + 40) appIdentifier:*(a1 + 32)];
}

void sub_10000CA08(uint64_t a1)
{
  v2 = +[TIEmojiAlternativesServer sharedInstance];
  [v2 alternativesForText:*(a1 + 32) completionHandler:*(a1 + 40)];
}

void *sub_10000CB18(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100026650)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000CC40;
    v4[4] = &unk_10001C810;
    v4[5] = v4;
    v5 = off_10001CD00;
    v6 = 0;
    qword_100026650 = _sl_dlopen();
  }

  v2 = qword_100026650;
  if (!qword_100026650)
  {
    sub_10000E664(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "AFDeviceHighestLanguageModelCapabilityIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100026648 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000CC40(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100026650 = result;
  return result;
}

Class sub_10000CCB4(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_100026660)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10000CDE0;
    v3[4] = &unk_10001C810;
    v3[5] = v3;
    v4 = off_10001CD18;
    v5 = 0;
    qword_100026660 = _sl_dlopen();
  }

  if (!qword_100026660)
  {
    sub_10000E760(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("OBBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000E6E4();
  }

  qword_100026658 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000CDE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100026660 = result;
  return result;
}

Class sub_10000CE54(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_100026670)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10000CF80;
    v3[4] = &unk_10001C810;
    v3[5] = v3;
    v4 = off_10001CD30;
    v5 = 0;
    qword_100026670 = _sl_dlopen();
  }

  if (!qword_100026670)
  {
    sub_10000E85C(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VTUIDictationDataSharingOptInPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000E7E0();
  }

  qword_100026668 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000CF80(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100026670 = result;
  return result;
}

void sub_10000D054(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 relativePath];
  sub_10000249C();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to enumerate typology url at path=%@ (error=%@)", v6, 0x16u);
}

void sub_10000D140(void *a1, NSObject *a2)
{
  v3 = [a1 lastPathComponent];
  [v3 UTF8String];
  sub_10000249C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension for typology url with name %{private}s", v4, 0xCu);
}

void sub_10000D1DC()
{
  sub_10000249C();
  sub_1000024A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D24C()
{
  sub_10000249C();
  sub_1000024A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D2BC()
{
  sub_10000249C();
  sub_1000024A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D354()
{
  sub_100003140();
  sub_1000024A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D390()
{
  sub_100003140();
  sub_1000024A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D440()
{
  sub_100003140();
  sub_1000024A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D47C()
{
  sub_100003140();
  sub_1000024A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D52C(uint64_t *a1)
{
  v6 = *a1;
  sub_1000024A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000D5CC()
{
  v0 = 136315138;
  v1 = "[TITypologyLogTransferServer syncTypologyLogs]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s  Couldn't find a paired device, failing to sync typology logs", &v0, 0xCu);
}

void sub_10000D654()
{
  v0 = 136315138;
  v1 = "[TITypologyLogTransferServer service:account:incomingResourceAtURL:fromID:context:]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s  Incoming URL path is bad, not saving file", &v0, 0xCu);
}

void sub_10000D6F0(void *a1, NSObject *a2)
{
  v3 = [NSString stringWithFormat:@"%s Could not read entitlement: %@", "[TIAutofillServer checkEntitlementForAddEntryStringWithAuditToken:]", *a1];
  *buf = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
}

void sub_10000D7AC()
{
  v0 = [NSString stringWithFormat:@"%s Manually saving language models"];
  sub_100006734(&_mh_execute_header, v1, v2, "%@", v3, v4, v5, v6, "main_block_invoke", v7, 2u);
}

void sub_10000D850(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"%s Couldn't create keyboard user directory: %@"];
  sub_100006734(&_mh_execute_header, v2, v3, "%@", v4, v5, v6, v7, "main_block_invoke", a1, 2u);
}

void sub_10000D8F8(void *a1)
{
  v8 = [a1 processIdentifier];
  v1 = [NSString stringWithFormat:@"%s process %d tried to connect to the kbd accessibility server, but it was not entitled!"];
  sub_100006734(&_mh_execute_header, v2, v3, "%@", v4, v5, v6, v7, "[TIAccessibilityServer listener:shouldAcceptNewConnection:]", v8, 2u);
}

void sub_10000D9A4(void *a1)
{
  v8 = [a1 processIdentifier];
  v1 = [NSString stringWithFormat:@"%s Allowing connection from pid %d to kbd accessibility server"];
  sub_100006734(&_mh_execute_header, v2, v3, "%@", v4, v5, v6, v7, "[TIAccessibilityServer listener:shouldAcceptNewConnection:]", v8, 2u);
}

void sub_10000DA50(void *a1, NSObject *a2)
{
  v3 = [NSString stringWithFormat:@"%s Could not read entitlement: %@", "[TILexiconDataHandler checkEntitlementForAddEntryStringWithAuditToken:]", *a1];
  *buf = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
}

void sub_10000DB64(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not read entitlement: %@", &v3, 0xCu);
}

void sub_10000DC1C(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"TIRemoteDataServer.m" lineNumber:242 description:@"Could not load AssistantServices.framework"];
}

void sub_10000DC88(void *a1)
{
  v8 = [a1 processIdentifier];
  v1 = [NSString stringWithFormat:@"%s Establishing connection with PID %d"];
  sub_10000D008();
  sub_100006734(&_mh_execute_header, v2, v3, "%@", v4, v5, v6, v7, "[TIRemoteDataServer listener:shouldAcceptNewConnection:]", v8, v9);
}

void sub_10000DD30(uint64_t *a1)
{
  v8 = *a1;
  v1 = [NSString stringWithFormat:@"%s Could not read entitlement: %@"];
  sub_10000D008();
  sub_100006734(&_mh_execute_header, v2, v3, "%@", v4, v5, v6, v7, "+[TIRemoteDataHandle shouldAcceptRequestForMeCardWithAuditToken:]", v8, v9);
}

void sub_10000DDD8()
{
  v0 = +[NSXPCConnection currentConnection];
  v8 = [v0 processIdentifier];
  v1 = [NSString stringWithFormat:@"%s Rejecting request for me card from PID %d"];
  sub_10000D008();
  sub_100006734(&_mh_execute_header, v2, v3, "%@", v4, v5, v6, v7, "[TIRemoteDataHandle requestMeCardWithCompletionHandler:]", v8, v9);
}

void sub_10000DEA0()
{
  v0 = +[NSXPCConnection currentConnection];
  v8 = [v0 processIdentifier];
  v1 = [NSString stringWithFormat:@"%s Rejecting request for me card from PID %d"];
  sub_10000D008();
  sub_100006734(&_mh_execute_header, v2, v3, "%@", v4, v5, v6, v7, "[TIRemoteDataHandle requestMeContactWithCompletionHandler:]", v8, v9);
}

void sub_10000DF68()
{
  v0[0] = 136315394;
  sub_10000CFF4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s  Unable to launch Keyboard Settings (error: %@)", v0, 0x16u);
}

void sub_10000DFF0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TIRemoteDataServer.m" lineNumber:414 description:@"Required completion handler is missing"];
}

void sub_10000E064()
{
  v1 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"void _HandleUserNotificationCallBack(CFUserNotificationRef, CFOptionFlags)"];
  [v1 handleFailureInFunction:v0 file:@"TIRemoteDataServer.m" lineNumber:154 description:@"Required completion handler is missing"];
}

void sub_10000E0F0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSInteger _AFDeviceHighestLanguageModelCapabilityIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"TIRemoteDataServer.m" lineNumber:54 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_10000E168(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void _DismissUserNotification(void)"];
  [v2 handleFailureInFunction:v3 file:@"TIRemoteDataServer.m" lineNumber:218 description:@"Required completion handler is missing"];

  *a1 = qword_100026638;
}

void sub_10000E1F4()
{
  v0 = [NSString stringWithFormat:@"%s Received request to delete all learned keyboard dictionaries."];
  sub_10000D008();
  sub_100006734(&_mh_execute_header, v1, v2, "%@", v3, v4, v5, v6, "[TIRemoteDataHandle removeAllDynamicDictionariesWithCompletionHandler:]", v7, v8);
}

void sub_10000E294(void *a1)
{
  v1 = [a1 localizedDescription];
  v2[0] = 136315394;
  sub_10000CFF4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s  Could not reset unified emoji and stickers recents. Error: '%@'", v2, 0x16u);
}

void sub_10000E334()
{
  v0 = 136315138;
  v1 = "[TIRemoteDataHandle removeAllDynamicDictionariesWithCompletionHandler:]_block_invoke";
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s  Reset unified emoji and stickers recents.", &v0, 0xCu);
}

void sub_10000E3BC(char a1, uint64_t a2, NSObject *a3)
{
  v4 = "NO";
  if (a1)
  {
    v4 = "YES";
  }

  v5 = [NSString stringWithFormat:@"%s Responding with isExempt = %s for string %@", "[TIRemoteDataHandle string:isExemptFromTextCheckerWithCompletionHandler:]", v4, a2];
  *buf = 138412290;
  v7 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
}

void sub_10000E490()
{
  v0 = [NSString stringWithFormat:@"%s Reading UITextChecker local dictionary"];
  sub_10000D008();
  sub_100006734(&_mh_execute_header, v1, v2, "%@", v3, v4, v5, v6, "[TIRemoteDataHandle requestTextCheckerLocalDictionaryWithCompletionHandler:]", v7, v8);
}

void sub_10000E530(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"%s Appending %@ to UITextChecker local dictionary"];
  sub_10000D008();
  sub_100006734(&_mh_execute_header, v2, v3, "%@", v4, v5, v6, v7, "[TIRemoteDataHandle appendWordToTextCheckerLocalDictionary:]", a1, v9);
}

void sub_10000E5D4()
{
  v2[0] = 136315650;
  sub_10000CFF4();
  v3 = v0;
  v4 = v1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s  Called ingestion pipeline for parsed phrases for inline completions personalization with:\n sentence: %@ \n for language: %@", v2, 0x20u);
}

void sub_10000E664(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TIRemoteDataServer.m" lineNumber:53 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10000E6E4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getOBBundleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TIRemoteDataServer.m" lineNumber:60 description:{@"Unable to find class %s", "OBBundle"}];

  __break(1u);
}

void sub_10000E760(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *OnBoardingKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TIRemoteDataServer.m" lineNumber:59 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10000E7E0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getVTUIDictationDataSharingOptInPresenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TIRemoteDataServer.m" lineNumber:86 description:{@"Unable to find class %s", "VTUIDictationDataSharingOptInPresenter"}];

  __break(1u);
}

void sub_10000E85C(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *VoiceTriggerUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TIRemoteDataServer.m" lineNumber:85 description:{@"%s", *a1}];

  __break(1u);
  CFBooleanGetTypeID();
}