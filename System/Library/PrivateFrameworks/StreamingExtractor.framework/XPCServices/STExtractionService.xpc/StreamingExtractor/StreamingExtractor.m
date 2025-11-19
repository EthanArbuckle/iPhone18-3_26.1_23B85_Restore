void *sub_100000D08()
{
  if (qword_10000D020 != -1)
  {
    sub_100003668();
  }

  return off_10000CDC8;
}

void sub_100000D38(id a1)
{
  v1 = sub_100000FF0();
  v2 = os_log_create("com.apple.StreamingExtractor", v1);
  v3 = off_10000CDC8;
  off_10000CDC8 = v2;
}

void *sub_100000D68()
{
  if (qword_10000D028 != -1)
  {
    sub_10000367C();
  }

  return off_10000CDD0;
}

void sub_100000D98(id a1)
{
  v1 = sub_100000FF0();
  v2 = os_log_create("com.apple.StreamingExtractor.signposts", v1);
  v3 = off_10000CDD0;
  off_10000CDD0 = v2;
}

id sub_100000DC8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"[%s:%d][%s] %@", a7, a8, a6, v16]);
  v20 = sub_100000D08();
  v21 = objc_claimAutoreleasedReturnValue(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v26 = &stru_100008708;
    *buf = 136448002;
    v28 = "STCreateErrorWithInfo";
    v29 = 2080;
    if (v17)
    {
      v26 = v17;
    }

    v30 = a7;
    v31 = 1024;
    v32 = a8;
    v33 = 2080;
    v34 = a6;
    v35 = 2112;
    v36 = v15;
    v37 = 2048;
    v38 = a2;
    v39 = 2112;
    v40 = v16;
    v41 = 2112;
    v42 = v26;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s: Error [%s:%d][%s]: %@ - %ld - %@ %@\n", buf, 0x4Eu);
  }

  if (v18)
  {
    v22 = [v18 mutableCopy];
  }

  else
  {
    v22 = objc_claimAutoreleasedReturnValue([NSMutableDictionary dictionaryWithCapacity:2]);
  }

  v23 = v22;
  [v22 setObject:v19 forKey:NSDebugDescriptionErrorKey];
  if (v17)
  {
    [v23 setObject:v17 forKey:NSUnderlyingErrorKey];
  }

  v24 = objc_claimAutoreleasedReturnValue([NSError errorWithDomain:v15 code:a2 userInfo:v23]);

  return v24;
}

id sub_100001424(uint64_t a1)
{
  v2 = sub_100000D08();
  v3 = objc_claimAutoreleasedReturnValue(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_claimAutoreleasedReturnValue([*(a1 + 40) sessionID]);
    v7 = 136446722;
    v8 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection interrupted [%@ - %@]", &v7, 0x20u);
  }

  return [*(a1 + 40) connectionInterrupted];
}

id sub_100001504(uint64_t a1)
{
  v2 = sub_100000D08();
  v3 = objc_claimAutoreleasedReturnValue(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_claimAutoreleasedReturnValue([*(a1 + 40) sessionID]);
    v7 = 136446722;
    v8 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection invalidated [%@ - %@]", &v7, 0x20u);
  }

  [*(a1 + 40) connectionInvalidated];
  return [*(a1 + 40) setXpcConnection:0];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100000D08();
  v4 = objc_claimAutoreleasedReturnValue(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446722;
    v12 = "main";
    v13 = 2080;
    v14 = "Oct 10 2025";
    v15 = 2080;
    v16 = "21:28:18";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Service started (built at %s %s)", &v11, 0x20u);
  }

  _set_user_dir_suffix("com.apple.STExtractionService");
  global_queue = dispatch_get_global_queue(2, 0);
  v6 = objc_claimAutoreleasedReturnValue(global_queue);
  v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v6);

  dispatch_source_set_event_handler(v7, &stru_100008390);
  dispatch_resume(v7);
  v8 = objc_opt_new(STExtractionServiceDelegate);
  v9 = objc_claimAutoreleasedReturnValue(+[NSXPCListener serviceListener]);
  [v9 setDelegate:v8];
  [v9 resume];

  return 0;
}

void sub_10000175C(id a1)
{
  v1 = sub_100000D08();
  v2 = objc_claimAutoreleasedReturnValue(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446210;
    v4 = "main_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: SIGTERM received - suspending active extractions.", &v3, 0xCu);
  }

  xpc_transaction_exit_clean();
  +[STExtractionService setProcessTerminated];
}

id sub_100001EB4(uint64_t a1)
{
  v2 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);

  if (v2)
  {
    if ([*(a1 + 32) extractionValid] && objc_msgSend(*(a1 + 32), "extractionPrepared"))
    {
      v3 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);
      [v3 suspendStreamWithCompletionBlock:&stru_100008410];
    }

    v4 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);
    v5 = objc_opt_respondsToSelector(v4, "invalidate");

    if (v5)
    {
      v6 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);
      [v6 invalidate];
    }
  }

  return [*(a1 + 32) invalidate];
}

void sub_1000021B4(uint64_t a1)
{
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_100002CA8;
  v104[3] = &unk_100008480;
  v2 = (a1 + 32);
  v104[4] = *(a1 + 32);
  v105 = *(a1 + 64);
  v95 = objc_retainBlock(v104);
  v3 = objc_claimAutoreleasedReturnValue([v2[1] objectForKeyedSubscript:@"STRemoteExtractorSessionID"]);
  if (!v3 || (v4 = objc_opt_class(NSString), (objc_opt_isKindOfClass(v3, v4) & 1) == 0))
  {
    v5 = objc_claimAutoreleasedReturnValue(+[NSUUID UUID]);
    v6 = objc_claimAutoreleasedReturnValue([v5 UUIDString]);

    v3 = v6;
  }

  v94 = v3;
  [*(a1 + 32) setSessionID:v3];
  v7 = objc_claimAutoreleasedReturnValue([*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorOptionsUsesReservePolicy"]);
  v8 = objc_opt_class(NSNumber);
  if (objc_opt_isKindOfClass(v7, v8))
  {
    [*v2 setUsesReserveAccessPolicy:{objc_msgSend(v7, "BOOLValue")}];
  }

  v93 = v7;
  v9 = [*(a1 + 40) mutableCopy];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v10 = objc_claimAutoreleasedReturnValue([*(a1 + 40) keyEnumerator]);
  v11 = [v10 countByEnumeratingWithState:&v100 objects:v111 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v101;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v101 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v100 + 1) + 8 * i);
        if ([v15 containsString:@"<Private>"])
        {
          [v9 setObject:@"<redacted>" forKeyedSubscript:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v100 objects:v111 count:16];
    }

    while (v12);
  }

  v16 = sub_100000D08();
  v17 = objc_claimAutoreleasedReturnValue(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_claimAutoreleasedReturnValue([*(a1 + 32) sessionID]);
    v19 = *(a1 + 48);
    *buf = 138413059;
    *&buf[4] = v18;
    *&buf[12] = 2082;
    *&buf[14] = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    *&buf[22] = 2113;
    *&buf[24] = v19;
    v109 = 2112;
    v110 = v9;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: sandbox_token: %{private}@ - options: %@", buf, 0x2Au);
  }

  [objc_opt_class(*(a1 + 32)) addActiveExtractionService:*(a1 + 32)];
  v20 = objc_claimAutoreleasedReturnValue([*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginBundlePath"]);
  if (v20)
  {
    v21 = objc_opt_class(NSString);
    if ((objc_opt_isKindOfClass(v20, v21) & 1) == 0)
    {
      sub_100003898();
      v96 = v106;
      goto LABEL_69;
    }

    v22 = objc_claimAutoreleasedReturnValue([NSURL fileURLWithPath:v20]);
    if (v22)
    {
      v23 = v22;
      v96 = 0;
      goto LABEL_29;
    }
  }

  v24 = objc_claimAutoreleasedReturnValue([*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginBundleName"]);
  v25 = objc_opt_class(NSString);
  v96 = v24;
  if ((objc_opt_isKindOfClass(v24, v25) & 1) == 0)
  {
    sub_1000039A8();
    v27 = v106;
    goto LABEL_75;
  }

  v26 = objc_claimAutoreleasedReturnValue([*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginDirectory"]);
  if (v26)
  {
    v27 = v26;
    v28 = objc_opt_class(NSString);
    if (objc_opt_isKindOfClass(v27, v28))
    {
      v29 = v20;
      goto LABEL_26;
    }

    sub_100003AB8(buf);
LABEL_75:
    v39 = *buf;

    goto LABEL_76;
  }

  v29 = v20;
  v27 = @"/System/Library/StreamingExtractorPlugins";
LABEL_26:
  v107[0] = v27;
  v30 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"%@.bundle", v96]);
  v107[1] = v30;
  v31 = objc_claimAutoreleasedReturnValue([NSArray arrayWithObjects:v107 count:2]);
  v32 = objc_claimAutoreleasedReturnValue([NSString pathWithComponents:v31]);
  v23 = objc_claimAutoreleasedReturnValue([NSURL fileURLWithPath:v32]);

  v33 = sub_100000D08();
  v34 = objc_claimAutoreleasedReturnValue(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = objc_claimAutoreleasedReturnValue([v23 path]);
    *buf = 136446466;
    *&buf[4] = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s: pluginURL: %@", buf, 0x16u);
  }

  v20 = v29;
  if (!v23)
  {
    sub_1000041A4(buf);
LABEL_69:
    v39 = *buf;
    goto LABEL_76;
  }

LABEL_29:
  v36 = objc_claimAutoreleasedReturnValue([NSBundle bundleWithURL:v23]);
  if (!v36)
  {
    sub_10000404C(v23, buf);
    goto LABEL_69;
  }

  v37 = v36;
  v99 = 0;
  v38 = [v36 loadAndReturnError:&v99];
  v39 = v99;
  if ((v38 & 1) == 0)
  {
    v61 = sub_100000D08();
    v62 = objc_claimAutoreleasedReturnValue(v61);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_100003BCC();
    }

    v63 = sub_100000D08();
    v64 = objc_claimAutoreleasedReturnValue(v63);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_100003C6C(v2, v39, v64);
    }

    goto LABEL_76;
  }

  v40 = [v37 principalClass];
  if (!v40)
  {
    v65 = sub_100000D08();
    v66 = objc_claimAutoreleasedReturnValue(v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_100003FAC();
    }

    v67 = STExtractorErrorDomain;
    v68 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"unable to get principal class from plugin: %@", v23]);
    v69 = v67;
    v70 = v68;
    v71 = 314;
    goto LABEL_64;
  }

  v41 = v40;
  if (([(objc_class *)v40 conformsToProtocol:&OBJC_PROTOCOL___STExtractionPlugin]& 1) == 0)
  {
    v72 = sub_100000D08();
    v73 = objc_claimAutoreleasedReturnValue(v72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_100003D2C();
    }

    v74 = STExtractorErrorDomain;
    v68 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"principal class for plugin does not conform to STExtractorPlugin protocol: %@", v23]);
    v69 = v74;
    v70 = v68;
    v71 = 315;
LABEL_64:
    v75 = sub_100000FDC(v69, 6, v70, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", v71);
    v76 = objc_claimAutoreleasedReturnValue(v75);

    v39 = v76;
LABEL_76:
    v49 = v95;
LABEL_42:
    v52 = v93;
    v51 = v94;
    goto LABEL_48;
  }

  v42 = *(a1 + 48);
  if (v42 && ([*v2 setSandboxToken:{sandbox_extension_consume(objc_msgSend(v42, "UTF8String"))}], objc_msgSend(*v2, "sandboxToken") == -1))
  {
    v83 = v20;
    v84 = sub_100000D08();
    v85 = objc_claimAutoreleasedReturnValue(v84);
    v49 = v95;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      sub_100003DCC();
    }

    v86 = STExtractorErrorDomain;
    v87 = __error();
    v88 = strerror(*v87);
    v89 = [NSString stringWithFormat:@"failed to consume sandbox token: %s (%d)", v88, *__error()];
    v90 = objc_claimAutoreleasedReturnValue(v89);
    v91 = sub_100000FDC(v86, 10, v90, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 319);
    v92 = objc_claimAutoreleasedReturnValue(v91);

    v39 = v92;
    v52 = v93;
    v51 = v94;
    v20 = v83;
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

    v43 = SANDBOX_CHECK_NOFOLLOW | SANDBOX_CHECK_CANONICAL;
    [*(a1 + 56) fileSystemRepresentation];
    v44 = sandbox_check_by_audit_token(buf, "file-write-create", v43 | 1u);
    if (!v44)
    {
LABEL_40:
      v45 = [[v41 alloc] initWithOptions:*(a1 + 40) delegate:*(a1 + 32)];
      [*(a1 + 32) setPlugin:v45];

      v46 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);
      if (v46)
      {
        v47 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);
        v48 = *(a1 + 56);
        v97[0] = _NSConcreteStackBlock;
        v97[1] = 3221225472;
        v97[2] = sub_100002D2C;
        v97[3] = &unk_1000084A8;
        v49 = v95;
        v50 = v95;
        v97[4] = *(a1 + 32);
        v98 = v50;
        [v47 prepareForExtractionToPath:v48 withCompletionBlock:v97];
      }

      else
      {
        v77 = sub_100000D08();
        v78 = objc_claimAutoreleasedReturnValue(v77);
        v49 = v95;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          sub_100003E6C();
        }

        v79 = STExtractorErrorDomain;
        v80 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"failed to initialize plugin class: %@", v41]);
        v81 = sub_100000FDC(v79, 6, v80, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 331);
        v82 = objc_claimAutoreleasedReturnValue(v81);

        v39 = v82;
      }

      goto LABEL_42;
    }

    if (v44 == -1)
    {
      v53 = *__error();
    }

    else
    {
      v53 = 1;
    }

    v54 = sub_100000D08();
    v55 = objc_claimAutoreleasedReturnValue(v54);
    v49 = v95;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_100003F0C();
    }

    v56 = STExtractorErrorDomain;
    v57 = [NSString stringWithFormat:@"cannot write to path: %s (%d)", strerror(v53), v53];
    v58 = objc_claimAutoreleasedReturnValue(v57);
    v59 = sub_100000FDC(v56, 14, v58, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 327);
    v60 = objc_claimAutoreleasedReturnValue(v59);

    v39 = v60;
    v52 = v93;
    v51 = v94;
  }

LABEL_48:

  if (v39)
  {
    (v49)[2](v49, 0, 0, v39);
  }
}

void sub_100002CA8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  v7 = *(a1 + 32);
  if (v6)
  {
    [objc_opt_class(v7) removeExtractionService:*(a1 + 32)];
  }

  else
  {
    *(v7 + 18) = 1;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100002D2C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v9 = objc_claimAutoreleasedReturnValue([v5 plugin]);
  v7 = objc_claimAutoreleasedReturnValue(+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 extractionMemoryFootprint]));
  v8 = objc_claimAutoreleasedReturnValue([NSDictionary dictionaryWithObject:v7 forKey:@"STRemoteExtractorMemoryFootprint"]);
  (*(v4 + 16))(v4, v8, a2, v6);
}

void sub_100002EA8(uint64_t a1)
{
  if (processTerminated == 1)
  {
    sub_1000044CC();
  }

  else
  {
    v2 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);

    if (v2)
    {
      if ([*(a1 + 32) extractionValid])
      {
        v3 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100002FC4;
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

      sub_1000042AC();
    }

    else
    {
      sub_1000043BC();
    }
  }

  v6 = v10;

  if (v10)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_5;
  }
}

void sub_100002FC4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = objc_claimAutoreleasedReturnValue([*(a1 + 32) messageQueue]);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003044;
  block[3] = &unk_100008438;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_1000030E4(uint64_t a1)
{
  v2 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);

  if (v2)
  {
    v3 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);
    [v3 suspendStreamWithCompletionBlock:*(a1 + 40)];

    [*(a1 + 32) invalidate];
  }

  else
  {
    sub_1000045E4(a1);
  }
}

void sub_1000031E4(uint64_t a1)
{
  v2 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);

  if (v2)
  {
    v3 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);
    [v3 finishStreamWithCompletionBlock:*(a1 + 40)];

    [*(a1 + 32) invalidate];
  }

  else
  {
    sub_100004704(a1);
  }
}

void sub_100003308(uint64_t a1)
{
  v2 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);

  if (v2)
  {
    v3 = objc_claimAutoreleasedReturnValue([*(a1 + 32) plugin]);
    [v3 terminateStreamWithError:*(a1 + 40) completionBlock:*(a1 + 48)];

    [*(a1 + 32) invalidate];
  }

  else
  {
    sub_100004818(a1);
  }
}

uint64_t sub_10000363C(uint64_t result)
{
  *v1 = result;
  v3 = *(v2 - 40);
  return result;
}

void sub_100003690(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: Rejecting process %@ since it is not properly entitled.", &v2, 0x16u);
}

void sub_100003718(void *a1)
{
  v3 = sub_100000D08();
  v4 = objc_claimAutoreleasedReturnValue(v3);
  if (sub_1000035F0(v4))
  {
    sub_100003564();
    sub_100003618();
    sub_1000035C0();
    sub_10000358C(&_mh_execute_header, v5, v6, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v7, v8, v9, v10, 2u);
  }

  sub_100003648();
}

void sub_1000037D4()
{
  v0 = sub_100000D08();
  v1 = objc_claimAutoreleasedReturnValue(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 136447490;
    sub_100003564();
    sub_100003618();
    v4 = "";
    sub_1000035C0();
    v5 = 215;
    sub_1000035B4(&_mh_execute_header, v1, v2, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v3);
  }

  sub_100003648();
}

void sub_100003898()
{
  sub_100003630();
  v1 = sub_100000D08();
  v2 = objc_claimAutoreleasedReturnValue(v1);
  if (sub_1000035E4(v2))
  {
    v9[0] = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    *(&v9[13] + 2) = 282;
    sub_1000035B4(&_mh_execute_header, v0, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9);
  }

  v3 = STExtractorErrorDomain;
  v4 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"bundle path option is not an NSString"]);
  sub_100003624(v4);
  v6 = sub_100000FDC(v3, 3, v5, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 282);
  v7 = objc_claimAutoreleasedReturnValue(v6);
  sub_10000363C(v7);
  sub_10000357C();
}

void sub_1000039A8()
{
  sub_100003630();
  v1 = sub_100000D08();
  v2 = objc_claimAutoreleasedReturnValue(v1);
  if (sub_1000035E4(v2))
  {
    v9[0] = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    *(&v9[13] + 2) = 290;
    sub_1000035B4(&_mh_execute_header, v0, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9);
  }

  v3 = STExtractorErrorDomain;
  v4 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"bundle name option is not an NSString"]);
  sub_100003624(v4);
  v6 = sub_100000FDC(v3, 3, v5, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 290);
  v7 = objc_claimAutoreleasedReturnValue(v6);
  sub_10000363C(v7);
  sub_10000357C();
}

void sub_100003AB8(void *a1)
{
  v3 = sub_100000D08();
  v4 = objc_claimAutoreleasedReturnValue(v3);
  if (sub_1000035F0(v4))
  {
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    sub_10000358C(&_mh_execute_header, v8, v9, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v10, v11, v12, v13, 2u);
  }

  v5 = STExtractorErrorDomain;
  v6 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"plugin directory option is not an NSString"]);
  v7 = sub_100000FDC(v5, 3, v6, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 294);
  *a1 = objc_claimAutoreleasedReturnValue(v7);

  sub_10000357C();
}

void sub_100003BCC()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 311;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_100003C6C(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_claimAutoreleasedReturnValue([*a1 sessionID]);
  v6 = 138412802;
  v7 = v5;
  v8 = 2082;
  v9 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[%@] %{public}s: failed to load plugin: %@", &v6, 0x20u);

  sub_100003610();
}

void sub_100003D2C()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 315;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_100003DCC()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 319;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_100003E6C()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 331;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_100003F0C()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 327;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_100003FAC()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 314;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_10000404C(void *a1, void *a2)
{
  v5 = sub_100000D08();
  v6 = objc_claimAutoreleasedReturnValue(v5);
  if (sub_1000035E4(v6))
  {
    v11 = 136447490;
    v12 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    v13 = 2080;
    v14 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    v15 = 2080;
    v16 = "pluginBundle != nil";
    v17 = 2080;
    v18 = "";
    v19 = 2080;
    v20 = "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m";
    v21 = 1024;
    v22 = 310;
    sub_1000035B4(&_mh_execute_header, v2, v7, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", &v11);
  }

  v8 = STExtractorErrorDomain;
  v9 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"unable to get plugin bundle: %@", a1]);
  v10 = sub_100000FDC(v8, 6, v9, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 310);
  *a2 = objc_claimAutoreleasedReturnValue(v10);
}

void sub_1000041A4(void *a1)
{
  v3 = sub_100000D08();
  v4 = objc_claimAutoreleasedReturnValue(v3);
  if (sub_1000035F0(v4))
  {
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    sub_10000358C(&_mh_execute_header, v13, v14, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v15, v16, v17, v18, 2u);
  }

  v5 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"unable to get plugin URL"]);
  v6 = sub_1000035FC();
  v12 = sub_100000FDC(v6, v7, v8, v9, v10, v11, 307);
  *a1 = objc_claimAutoreleasedReturnValue(v12);

  sub_10000357C();
}

void sub_1000042AC()
{
  sub_100003630();
  v1 = sub_100000D08();
  v2 = objc_claimAutoreleasedReturnValue(v1);
  if (sub_1000035E4(v2))
  {
    v9[0] = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    *(&v9[13] + 2) = 361;
    sub_1000035B4(&_mh_execute_header, v0, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9);
  }

  v3 = STExtractorErrorDomain;
  v4 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"extraction is invalid - it likely has already been finished, suspended or terminated"]);
  sub_100003624(v4);
  v6 = sub_100000FDC(v3, 8, v5, 0, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 361);
  v7 = objc_claimAutoreleasedReturnValue(v6);
  sub_10000363C(v7);
  sub_10000357C();
}

void sub_1000043BC()
{
  sub_100003630();
  v1 = sub_100000D08();
  v2 = objc_claimAutoreleasedReturnValue(v1);
  if (sub_1000035E4(v2))
  {
    v9[0] = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    *(&v9[13] + 2) = 360;
    sub_1000035B4(&_mh_execute_header, v0, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9);
  }

  v3 = STExtractorErrorDomain;
  v4 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"no plugin for -supplyBytes"]);
  sub_100003624(v4);
  v6 = sub_100000FDC(v3, 6, v5, 0, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 360);
  v7 = objc_claimAutoreleasedReturnValue(v6);
  sub_10000363C(v7);
  sub_10000357C();
}

void sub_1000044CC()
{
  sub_100003630();
  v1 = sub_100000D08();
  v2 = objc_claimAutoreleasedReturnValue(v1);
  if (sub_1000035E4(v2))
  {
    v9[0] = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    *(&v9[13] + 2) = 359;
    sub_1000035B4(&_mh_execute_header, v0, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9);
  }

  v3 = STExtractorErrorDomain;
  v4 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"extraction stopped - system is shutting down"]);
  sub_100003624(v4);
  v6 = sub_100000DC8(v3, 13, v5, 0, &off_100008B80, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 359);
  v7 = objc_claimAutoreleasedReturnValue(v6);
  sub_10000363C(v7);
  sub_10000357C();
}

void sub_1000045E4(uint64_t a1)
{
  v3 = sub_100000D08();
  v4 = objc_claimAutoreleasedReturnValue(v3);
  if (sub_1000035F0(v4))
  {
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    sub_10000358C(&_mh_execute_header, v13, v14, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v15, v16, v17, v18, 2u);
  }

  v5 = STExtractorErrorDomain;
  objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"no plugin for -suspendStream"]);
  v6 = sub_1000035FC();
  v12 = sub_100000FDC(v6, v7, v8, v9, v10, v11, 391);
  objc_claimAutoreleasedReturnValue(v12);
  sub_100003654();
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  sub_10000357C();
}

void sub_100004704(uint64_t a1)
{
  v3 = sub_100000D08();
  v4 = objc_claimAutoreleasedReturnValue(v3);
  if (sub_1000035F0(v4))
  {
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    sub_10000358C(&_mh_execute_header, v13, v14, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v15, v16, v17, v18, 2u);
  }

  v5 = STExtractorErrorDomain;
  objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"no plugin for -finishStream"]);
  v6 = sub_1000035FC();
  v12 = sub_100000FDC(v6, v7, v8, v9, v10, v11, 416);
  objc_claimAutoreleasedReturnValue(v12);
  sub_100003654();
  if (v5)
  {
    sub_10000365C(*(a1 + 40));
  }

  sub_10000357C();
}

void sub_100004818(uint64_t a1)
{
  v3 = sub_100000D08();
  v4 = objc_claimAutoreleasedReturnValue(v3);
  if (sub_1000035F0(v4))
  {
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    sub_10000358C(&_mh_execute_header, v13, v14, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v15, v16, v17, v18, 2u);
  }

  v5 = STExtractorErrorDomain;
  objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"no plugin for -terminateStream"]);
  v6 = sub_1000035FC();
  v12 = sub_100000FDC(v6, v7, v8, v9, v10, v11, 442);
  objc_claimAutoreleasedReturnValue(v12);
  sub_100003654();
  if (v5)
  {
    sub_10000365C(*(a1 + 48));
  }

  sub_10000357C();
}