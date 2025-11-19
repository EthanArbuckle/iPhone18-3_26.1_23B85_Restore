@interface NRDUpdateBrainLoader
+ (id)brainAtPath:(id)a3 delegate:(id)a4 error:(id *)a5;
@end

@implementation NRDUpdateBrainLoader

+ (id)brainAtPath:(id)a3 delegate:(id)a4 error:(id *)a5
{
  if (!load_trust_cache_at_path([objc_msgSend(a3 stringByAppendingPathComponent:{@".TrustCache", "fileSystemRepresentation"}], 0))
  {
    if (a5)
    {
      v22 = NSDebugDescriptionErrorKey;
      v23 = @"trust cache load failed";
      v15 = [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:100 userInfo:[NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1]];
LABEL_16:
      v10 = 0;
      *a5 = v15;
      return v10;
    }

    return 0;
  }

  v8 = [a3 stringByAppendingPathComponent:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.xpc", @"com.apple.NRD.UpdateBrainService"}];
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    if (a5)
    {
      v24 = NSDebugDescriptionErrorKey;
      v25 = @"xpc bundle does not exist";
      v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:[NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1]];
      goto LABEL_16;
    }

    return 0;
  }

  v9 = nrdSharedLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Loading NeRD update brain bundle at %{public}@", &buf, 0xCu);
  }

  [v8 fileSystemRepresentation];
  xpc_add_bundle();
  isLoaded = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v10 = [[NRDUpdateBrainClientImpl alloc] initWithDelegate:a4];
  v11 = v10;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __51__NRDUpdateBrainLoader_brainAtPath_delegate_error___block_invoke;
  v17[3] = &unk_1000189C0;
  v17[4] = &v18;
  v17[5] = &buf;
  [(NRDUpdateBrainClientImpl *)v10 ping:v17];
  if (!*(v19 + 24))
  {
    v10 = 0;
  }

  v12 = *(&buf + 1);
  v13 = *(*(&buf + 1) + 40);
  if (v13)
  {
    if (a5)
    {
      *a5 = v13;
      v13 = *(v12 + 40);
    }

    v14 = v13;
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v18, 8);
  return v10;
}

void *__51__NRDUpdateBrainLoader_brainAtPath_delegate_error___block_invoke(void *result, void *a2)
{
  v2 = result;
  if (a2)
  {
    result = [a2 copy];
    *(*(v2[5] + 8) + 40) = result;
  }

  else
  {
    *(*(result[4] + 8) + 24) = 1;
  }

  return result;
}

@end