id sub_100000DA8()
{
  if (qword_10000D020 != -1)
  {
    sub_1000039F4();
  }

  v1 = off_10000CDC8;

  return v1;
}

void sub_100000DEC(id a1)
{
  v1 = sub_1000010F4();
  off_10000CDC8 = os_log_create("com.apple.StreamingExtractor", v1);

  _objc_release_x1();
}

id sub_100000E30()
{
  if (qword_10000D028 != -1)
  {
    sub_100003A08();
  }

  v1 = off_10000CDD0;

  return v1;
}

void sub_100000E74(id a1)
{
  v1 = sub_1000010F4();
  off_10000CDD0 = os_log_create("com.apple.StreamingExtractor.signposts", v1);

  _objc_release_x1();
}

id sub_100000EB8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = [NSString stringWithFormat:@"[%s:%d][%s] %@", a7, a8, a6, v16];
  v20 = sub_100000DA8();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v25 = &stru_100008708;
    *buf = 136448002;
    v27 = "STCreateErrorWithInfo";
    v28 = 2080;
    if (v17)
    {
      v25 = v17;
    }

    v29 = a7;
    v30 = 1024;
    v31 = a8;
    v32 = 2080;
    v33 = a6;
    v34 = 2112;
    v35 = v15;
    v36 = 2048;
    v37 = a2;
    v38 = 2112;
    v39 = v16;
    v40 = 2112;
    v41 = v25;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s: Error [%s:%d][%s]: %@ - %ld - %@ %@\n", buf, 0x4Eu);
  }

  if (v18)
  {
    v21 = [v18 mutableCopy];
  }

  else
  {
    v21 = [NSMutableDictionary dictionaryWithCapacity:2];
  }

  v22 = v21;
  [v21 setObject:v19 forKey:NSDebugDescriptionErrorKey];
  if (v17)
  {
    [v22 setObject:v17 forKey:NSUnderlyingErrorKey];
  }

  v23 = [NSError errorWithDomain:v15 code:a2 userInfo:v22];

  return v23;
}

id sub_100001524(uint64_t a1)
{
  v2 = sub_100000DA8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) sessionID];
    v6 = 136446722;
    v7 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection interrupted [%@ - %@]", &v6, 0x20u);
  }

  return [*(a1 + 40) connectionInterrupted];
}

id sub_100001608(uint64_t a1)
{
  v2 = sub_100000DA8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) sessionID];
    v6 = 136446722;
    v7 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection invalidated [%@ - %@]", &v6, 0x20u);
  }

  [*(a1 + 40) connectionInvalidated];
  return [*(a1 + 40) setXpcConnection:0];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100000DA8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "main";
    v11 = 2080;
    v12 = "Oct 10 2025";
    v13 = 2080;
    v14 = "21:28:16";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Service started (built at %s %s)", &v9, 0x20u);
  }

  _set_user_dir_suffix();
  v4 = dispatch_get_global_queue(2, 0);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);

  dispatch_source_set_event_handler(v5, &stru_100008390);
  dispatch_resume(v5);
  v6 = objc_opt_new();
  v7 = +[NSXPCListener serviceListener];
  [v7 setDelegate:v6];
  [v7 resume];

  return 0;
}

void sub_100001868(id a1)
{
  v1 = sub_100000DA8();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "main_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%{public}s: SIGTERM received - suspending active extractions.", &v2, 0xCu);
  }

  xpc_transaction_exit_clean();
  +[STExtractionService setProcessTerminated];
}

id sub_100001FF4(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];

  if (v2)
  {
    if ([*(a1 + 32) extractionValid] && objc_msgSend(*(a1 + 32), "extractionPrepared"))
    {
      v3 = [*(a1 + 32) plugin];
      [v3 suspendStreamWithCompletionBlock:&stru_100008410];
    }

    v4 = [*(a1 + 32) plugin];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) plugin];
      [v6 invalidate];
    }
  }

  v7 = *(a1 + 32);

  return [v7 invalidate];
}

void sub_10000236C(uint64_t a1)
{
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_100002E98;
  v84[3] = &unk_100008480;
  v2 = (a1 + 32);
  v84[4] = *(a1 + 32);
  v85 = *(a1 + 64);
  v75 = objc_retainBlock(v84);
  v3 = [v2[1] objectForKeyedSubscript:@"STRemoteExtractorSessionID"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];

    v3 = v5;
  }

  v74 = v3;
  [*(a1 + 32) setSessionID:v3];
  v6 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorOptionsUsesReservePolicy"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*v2 setUsesReserveAccessPolicy:{objc_msgSend(v6, "BOOLValue")}];
  }

  v73 = v6;
  v7 = [*(a1 + 40) mutableCopy];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v8 = [*(a1 + 40) keyEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v81;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v81 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v80 + 1) + 8 * i);
        if ([v13 containsString:@"<Private>"])
        {
          [v7 setObject:@"<redacted>" forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v10);
  }

  v14 = sub_100000DA8();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 32) sessionID];
    v16 = *(a1 + 48);
    *buf = 138413059;
    *&buf[4] = v15;
    *&buf[12] = 2082;
    *&buf[14] = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    *&buf[22] = 2113;
    *&buf[24] = v16;
    v89 = 2112;
    v90 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: sandbox_token: %{private}@ - options: %@", buf, 0x2Au);
  }

  v17 = *(a1 + 32);
  [objc_opt_class() addActiveExtractionService:v17];
  v18 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginBundlePath"];
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_100003C48();
      v76 = v86;
      goto LABEL_69;
    }

    v19 = [NSURL fileURLWithPath:v18];
    if (v19)
    {
      v20 = v19;
      v76 = 0;
      goto LABEL_29;
    }
  }

  v21 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginBundleName"];
  objc_opt_class();
  v76 = v21;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_100003D60();
    v23 = v86;
    goto LABEL_75;
  }

  v22 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginDirectory"];
  if (v22)
  {
    v23 = v22;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v18;
      goto LABEL_26;
    }

    sub_100003E78(buf);
LABEL_75:
    v33 = *buf;

    goto LABEL_76;
  }

  v24 = v18;
  v23 = @"/System/Library/StreamingExtractorPlugins";
LABEL_26:
  v87[0] = v23;
  v25 = [NSString stringWithFormat:@"%@.bundle", v76];
  v87[1] = v25;
  v26 = [NSArray arrayWithObjects:v87 count:2];
  v27 = [NSString pathWithComponents:v26];
  v20 = [NSURL fileURLWithPath:v27];

  v28 = sub_100000DA8();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v20 path];
    *buf = 136446466;
    *&buf[4] = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s: pluginURL: %@", buf, 0x16u);
  }

  v18 = v24;
  if (!v20)
  {
    sub_1000045A0(buf);
LABEL_69:
    v33 = *buf;
    goto LABEL_76;
  }

LABEL_29:
  v30 = [NSBundle bundleWithURL:v20];
  if (!v30)
  {
    sub_10000443C(v20, buf);
    goto LABEL_69;
  }

  v31 = v30;
  v79 = 0;
  v32 = [v30 loadAndReturnError:&v79];
  v33 = v79;
  if ((v32 & 1) == 0)
  {
    v51 = sub_100000DA8();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_100003F9C();
    }

    v52 = sub_100000DA8();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_100004040(v2, v33, v52);
    }

    goto LABEL_76;
  }

  v34 = [v31 principalClass];
  if (!v34)
  {
    v53 = sub_100000DA8();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_100004398();
    }

    v54 = STExtractorErrorDomain;
    v55 = [NSString stringWithFormat:@"unable to get principal class from plugin: %@", v20];
    v56 = v54;
    v57 = v55;
    v58 = 314;
    goto LABEL_64;
  }

  v35 = v34;
  if (([(objc_class *)v34 conformsToProtocol:&OBJC_PROTOCOL___STExtractionPlugin]& 1) == 0)
  {
    v59 = sub_100000DA8();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_100004108();
    }

    v60 = STExtractorErrorDomain;
    v55 = [NSString stringWithFormat:@"principal class for plugin does not conform to STExtractorPlugin protocol: %@", v20];
    v56 = v60;
    v57 = v55;
    v58 = 315;
LABEL_64:
    v61 = sub_1000010E0(v56, 6, v57, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", v58);

    v33 = v61;
LABEL_76:
    v42 = v75;
LABEL_42:
    v45 = v73;
    v44 = v74;
    goto LABEL_48;
  }

  v36 = *(a1 + 48);
  if (v36 && ([v36 UTF8String], objc_msgSend(*v2, "setSandboxToken:", sandbox_extension_consume()), objc_msgSend(*v2, "sandboxToken") == -1))
  {
    v66 = v18;
    v67 = sub_100000DA8();
    v42 = v75;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_1000041AC();
    }

    v68 = STExtractorErrorDomain;
    v69 = __error();
    v70 = strerror(*v69);
    v71 = [NSString stringWithFormat:@"failed to consume sandbox token: %s (%d)", v70, *__error()];
    v72 = sub_1000010E0(v68, 10, v71, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 319);

    v33 = v72;
    v45 = v73;
    v44 = v74;
    v18 = v66;
  }

  else
  {
    if (![*v2 hasConnection])
    {
      goto LABEL_40;
    }

    if (*v2)
    {
      [*v2 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    [*(a1 + 56) fileSystemRepresentation];
    v37 = sandbox_check_by_audit_token();
    if (!v37)
    {
LABEL_40:
      v38 = [[v35 alloc] initWithOptions:*(a1 + 40) delegate:*(a1 + 32)];
      [*(a1 + 32) setPlugin:v38];

      v39 = [*(a1 + 32) plugin];

      if (v39)
      {
        v40 = [*(a1 + 32) plugin];
        v41 = *(a1 + 56);
        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_100002F34;
        v77[3] = &unk_1000084A8;
        v42 = v75;
        v43 = v75;
        v77[4] = *(a1 + 32);
        v78 = v43;
        [v40 prepareForExtractionToPath:v41 withCompletionBlock:v77];
      }

      else
      {
        v62 = sub_100000DA8();
        v42 = v75;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          sub_100004250();
        }

        v63 = STExtractorErrorDomain;
        v64 = [NSString stringWithFormat:@"failed to initialize plugin class: %@", v35];
        v65 = sub_1000010E0(v63, 6, v64, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 331);

        v33 = v65;
      }

      goto LABEL_42;
    }

    if (v37 == -1)
    {
      v46 = *__error();
    }

    else
    {
      v46 = 1;
    }

    v47 = sub_100000DA8();
    v42 = v75;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1000042F4();
    }

    v48 = STExtractorErrorDomain;
    v49 = [NSString stringWithFormat:@"cannot write to path: %s (%d)", strerror(v46), v46];
    v50 = sub_1000010E0(v48, 14, v49, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 327);

    v33 = v50;
    v45 = v73;
    v44 = v74;
  }

LABEL_48:

  if (v33)
  {
    (v42)[2](v42, 0, 0, v33);
  }
}

void sub_100002E98(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v6 = a4;
  if (v6)
  {
    [objc_opt_class() removeExtractionService:*(a1 + 32)];
  }

  else
  {
    *(*(a1 + 32) + 18) = 1;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100002F34(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v9 = [v5 plugin];
  v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 extractionMemoryFootprint]);
  v8 = [NSDictionary dictionaryWithObject:v7 forKey:@"STRemoteExtractorMemoryFootprint"];
  (*(v4 + 16))(v4, v8, a2, v6);
}

void sub_1000030E4(uint64_t a1)
{
  if (processTerminated == 1)
  {
    sub_1000048E8();
  }

  else
  {
    v2 = [*(a1 + 32) plugin];

    if (v2)
    {
      if ([*(a1 + 32) extractionValid])
      {
        v3 = [*(a1 + 32) plugin];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100003220;
        v7[3] = &unk_1000084F8;
        v4 = *(a1 + 40);
        v5 = *(a1 + 48);
        v7[4] = *(a1 + 32);
        v8 = v5;
        [v3 supplyBytes:v4 withCompletionBlock:v7];

        v6 = v8;
LABEL_5:

        return;
      }

      sub_1000046B8();
    }

    else
    {
      sub_1000047D0();
    }
  }

  v6 = v10;

  if (v10)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_5;
  }
}

void sub_100003220(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000032C0;
  block[3] = &unk_100008438;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_10000337C(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];

  if (v2)
  {
    v3 = [*(a1 + 32) plugin];
    [v3 suspendStreamWithCompletionBlock:*(a1 + 40)];

    v4 = *(a1 + 32);

    [v4 invalidate];
  }

  else
  {
    sub_100004A08(a1);
  }
}

void sub_1000034AC(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];

  if (v2)
  {
    v3 = [*(a1 + 32) plugin];
    [v3 finishStreamWithCompletionBlock:*(a1 + 40)];

    v4 = *(a1 + 32);

    [v4 invalidate];
  }

  else
  {
    sub_100004B40(a1);
  }
}

void sub_100003600(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];

  if (v2)
  {
    v3 = [*(a1 + 32) plugin];
    [v3 terminateStreamWithError:*(a1 + 40) completionBlock:*(a1 + 48)];

    v4 = *(a1 + 32);

    [v4 invalidate];
  }

  else
  {
    sub_100004C74(a1);
  }
}

void sub_100003938(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

void sub_100003958(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

void sub_100003978(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

uint64_t sub_1000039B8(uint64_t result)
{
  *v1 = result;
  v3 = *(v2 - 40);
  return result;
}

BOOL sub_1000039C4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_1000039DC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100003A1C(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: Rejecting process %@ since it is not properly entitled.", &v2, 0x16u);
}

void sub_100003AA8(void *a1)
{
  v3 = sub_100000DA8();
  if (sub_1000039DC(v3))
  {
    sub_1000038D4();
    sub_100003994();
    sub_100003900();
    sub_100003938(&_mh_execute_header, v4, v5, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v6, v7, v8, v9, 2u);
  }
}

void sub_100003B70()
{
  v0 = sub_100000DA8();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1[0] = 136447490;
    sub_1000038D4();
    sub_100003994();
    v2 = "";
    sub_100003900();
    v3 = 215;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v1, 0x3Au);
  }
}

uint64_t sub_100003C48()
{
  sub_1000039AC();
  v1 = sub_100000DA8();
  if (sub_1000039C4(v1))
  {
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003958(&_mh_execute_header, v7, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9, v10, v11, v12, 2u);
  }

  v2 = STExtractorErrorDomain;
  v3 = [NSString stringWithFormat:@"bundle path option is not an NSString"];
  sub_1000039A0(v3);
  v5 = sub_1000010E0(v2, 3, v4, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 282);
  return sub_1000039B8(v5);
}

uint64_t sub_100003D60()
{
  sub_1000039AC();
  v1 = sub_100000DA8();
  if (sub_1000039C4(v1))
  {
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003958(&_mh_execute_header, v7, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9, v10, v11, v12, 2u);
  }

  v2 = STExtractorErrorDomain;
  v3 = [NSString stringWithFormat:@"bundle name option is not an NSString"];
  sub_1000039A0(v3);
  v5 = sub_1000010E0(v2, 3, v4, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 290);
  return sub_1000039B8(v5);
}

void sub_100003E78(uint64_t *a1)
{
  v3 = sub_100000DA8();
  if (sub_1000039DC(v3))
  {
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003938(&_mh_execute_header, v6, v7, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v8, v9, v10, v11, 2u);
  }

  v4 = STExtractorErrorDomain;
  v5 = [NSString stringWithFormat:@"plugin directory option is not an NSString"];
  *a1 = sub_1000010E0(v4, 3, v5, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 294);
}

void sub_100003F9C()
{
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
}

void sub_100004040(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 sessionID];
  v6 = 138412802;
  v7 = v5;
  v8 = 2082;
  v9 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[%@] %{public}s: failed to load plugin: %@", &v6, 0x20u);
}

void sub_100004108()
{
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
}

void sub_1000041AC()
{
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
}

void sub_100004250()
{
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
}

void sub_1000042F4()
{
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
}

void sub_100004398()
{
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
}

void sub_10000443C(void *a1, uint64_t *a2)
{
  v5 = sub_100000DA8();
  if (sub_1000039C4(v5))
  {
    *buf = 136447490;
    v9 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    v10 = 2080;
    v11 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    v12 = 2080;
    v13 = "pluginBundle != nil";
    v14 = 2080;
    v15 = "";
    v16 = 2080;
    v17 = "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m";
    v18 = 1024;
    v19 = 310;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", buf, 0x3Au);
  }

  v6 = STExtractorErrorDomain;
  v7 = [NSString stringWithFormat:@"unable to get plugin bundle: %@", a1];
  *a2 = sub_1000010E0(v6, 6, v7, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 310);
}

void sub_1000045A0(uint64_t *a1)
{
  v3 = sub_100000DA8();
  if (sub_1000039DC(v3))
  {
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003938(&_mh_execute_header, v11, v12, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v13, v14, v15, v16, 2u);
  }

  v4 = [NSString stringWithFormat:@"unable to get plugin URL"];
  v5 = sub_100003924();
  *a1 = sub_1000010E0(v5, v6, v7, v8, v9, v10, 307);
}

uint64_t sub_1000046B8()
{
  sub_1000039AC();
  v1 = sub_100000DA8();
  if (sub_1000039C4(v1))
  {
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003958(&_mh_execute_header, v7, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9, v10, v11, v12, 2u);
  }

  v2 = STExtractorErrorDomain;
  v3 = [NSString stringWithFormat:@"extraction is invalid - it likely has already been finished, suspended or terminated"];
  sub_1000039A0(v3);
  v5 = sub_1000010E0(v2, 8, v4, 0, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 361);
  return sub_1000039B8(v5);
}

uint64_t sub_1000047D0()
{
  sub_1000039AC();
  v1 = sub_100000DA8();
  if (sub_1000039C4(v1))
  {
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003958(&_mh_execute_header, v7, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9, v10, v11, v12, 2u);
  }

  v2 = STExtractorErrorDomain;
  v3 = [NSString stringWithFormat:@"no plugin for -supplyBytes"];
  sub_1000039A0(v3);
  v5 = sub_1000010E0(v2, 6, v4, 0, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 360);
  return sub_1000039B8(v5);
}

uint64_t sub_1000048E8()
{
  sub_1000039AC();
  v1 = sub_100000DA8();
  if (sub_1000039C4(v1))
  {
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003958(&_mh_execute_header, v7, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9, v10, v11, v12, 2u);
  }

  v2 = STExtractorErrorDomain;
  v3 = [NSString stringWithFormat:@"extraction stopped - system is shutting down"];
  sub_1000039A0(v3);
  v5 = sub_100000EB8(v2, 13, v4, 0, &off_100008B80, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 359);
  return sub_1000039B8(v5);
}

void sub_100004A08(uint64_t a1)
{
  v3 = sub_100000DA8();
  if (sub_1000039DC(v3))
  {
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003938(&_mh_execute_header, v12, v13, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v14, v15, v16, v17, 2u);
  }

  v4 = [NSString stringWithFormat:@"no plugin for -suspendStream"];
  v5 = sub_100003924();
  v11 = sub_1000010E0(v5, v6, v7, v8, v9, v10, 391);

  if (v11)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100004B40(uint64_t a1)
{
  v3 = sub_100000DA8();
  if (sub_1000039DC(v3))
  {
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003938(&_mh_execute_header, v12, v13, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v14, v15, v16, v17, 2u);
  }

  v4 = [NSString stringWithFormat:@"no plugin for -finishStream"];
  v5 = sub_100003924();
  v11 = sub_1000010E0(v5, v6, v7, v8, v9, v10, 416);

  if (v11)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100004C74(uint64_t a1)
{
  v3 = sub_100000DA8();
  if (sub_1000039DC(v3))
  {
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003938(&_mh_execute_header, v12, v13, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v14, v15, v16, v17, 2u);
  }

  v4 = [NSString stringWithFormat:@"no plugin for -terminateStream"];
  v5 = sub_100003924();
  v11 = sub_1000010E0(v5, v6, v7, v8, v9, v10, 442);

  if (v11)
  {
    (*(*(a1 + 48) + 16))();
  }
}