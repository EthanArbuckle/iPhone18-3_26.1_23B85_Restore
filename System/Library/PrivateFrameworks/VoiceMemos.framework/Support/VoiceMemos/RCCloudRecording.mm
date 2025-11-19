@interface RCCloudRecording
- (BOOL)_overwriteFileAtURL:(id)a3 withFileAtURL:(id)a4 error:(id *)a5;
- (int)_checkErrorDomainAndCode:(id)a3;
- (int)_getRecoveryStrategyForFile:(id)a3 withError:(id)a4;
- (void)_copyResourceFromLocation:(id)a3 toDirectory:(id)a4 usingName:(id)a5 andExtension:(id)a6 completion:(id)a7;
- (void)_removeTitleMetadata:(id)a3 completion:(id)a4;
- (void)_rewriteFileAtURL:(id)a3 withAsset:(id)a4 andMetadata:(id)a5 completion:(id)a6;
- (void)copyResourcesForSharingIntoDirectory:(id)a3 completion:(id)a4;
@end

@implementation RCCloudRecording

- (void)copyResourcesForSharingIntoDirectory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RCCloudRecording *)self url];
  v9 = [v8 pathExtension];
  if (([(RCCloudRecording *)self composedAssetHasMultipleTracks]& 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(RCCloudRecording *)self composedAssetIsSpatialRecording]^ 1;
  }

  v11 = RCAudioFileExtensionQTA;
  v12 = [v9 isEqualToString:RCAudioFileExtensionQTA];
  if ((v10 & 1) == 0 && (v12 & 1) == 0)
  {
    v13 = OSLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100034B1C();
    }

    v14 = v11;
    v9 = v14;
  }

  v15 = [(RCCloudRecording *)self fileNameForSharing];
  if (v15)
  {
    [(RCCloudRecording *)self _copyResourceFromLocation:v8 toDirectory:v6 usingName:v15 andExtension:v9 completion:v7];
  }

  else
  {
    v16 = OSLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100034BA8(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v24 = RCVoiceMemosErrorDomain;
    v27 = NSLocalizedDescriptionKey;
    v28 = @"Could not get file name for sharing";
    v25 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v26 = [NSError errorWithDomain:v24 code:1 userInfo:v25];

    v7[2](v7, 0, v26);
  }
}

- (void)_copyResourceFromLocation:(id)a3 toDirectory:(id)a4 usingName:(id)a5 andExtension:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = +[NSFileManager defaultManager];
  v18 = [v15 URLByAppendingPathComponent:v14];

  v19 = [v18 URLByAppendingPathExtension:v13];

  v25 = 0;
  LOBYTE(v18) = [v17 copyItemAtURL:v16 toURL:v19 error:&v25];

  v20 = v25;
  if (v18)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100007D90;
    v22[3] = &unk_1000554D0;
    v24 = v12;
    v23 = v19;
    [(RCCloudRecording *)self _removeTitleMetadata:v23 completion:v22];
  }

  else
  {
    v21 = OSLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100034C34();
    }

    (*(v12 + 2))(v12, 0, v20);
  }
}

- (void)_removeTitleMetadata:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [AVURLAsset assetWithURL:v6];
  v9 = [v8 rc_recordingMetadata];
  v10 = [v9 mutableCopy];

  [v10 setObject:0 forKeyedSubscript:@"title"];
  v21 = 0;
  v11 = [AVAsset rc_updateMetadataInFile:v6 withRecordingMetadata:v10 error:&v21];
  v12 = v21;
  if (v11)
  {
    v7[2](v7, 1, 0);
  }

  else
  {
    v13 = [(RCCloudRecording *)self _getRecoveryStrategyForFile:v6 withError:v12];
    v14 = OSLogForCategory();
    v15 = v14;
    if (v13 == 2)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100034D1C();
      }

      v20 = v12;
      v17 = [FragmentConsolidator consolidateMovieFragmentsForFileAt:v6 error:&v20];
      v18 = v20;

      if ((v17 & 1) == 0)
      {
        v19 = OSLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100034D90();
        }
      }

      (v7)[2](v7, v17, v18);
      v12 = v18;
    }

    else if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100034E04();
      }

      v16 = [RCCaptureFormat AVAssetAuthoringMetadataWithRecordingMetadata:v10];
      [(RCCloudRecording *)self _rewriteFileAtURL:v6 withAsset:v8 andMetadata:v16 completion:v7];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_100034E78();
      }

      (v7)[2](v7, 0, v12);
    }
  }
}

- (int)_getRecoveryStrategyForFile:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = [a3 pathExtension];
  v8 = [v7 isEqual:RCAudioFileExtensionM4A];

  if (v8)
  {
    v9 = v6;
    v10 = [(RCCloudRecording *)self _checkErrorDomainAndCode:v9];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      while (1)
      {
        v12 = [v9 userInfo];
        v13 = [v12 objectForKeyedSubscript:NSUnderlyingErrorKey];

        if (!v13)
        {
          break;
        }

        v14 = [v9 userInfo];
        v15 = [v14 objectForKeyedSubscript:NSUnderlyingErrorKey];

        v16 = [(RCCloudRecording *)self _checkErrorDomainAndCode:v15];
        v9 = v15;
        if (v16)
        {
          v11 = v16;
          v9 = v15;
          goto LABEL_9;
        }
      }

      v11 = 0;
    }

LABEL_9:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int)_checkErrorDomainAndCode:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqual:NSOSStatusErrorDomain])
  {
    v5 = [v3 code];

    if (v5 == -16430)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = [v3 domain];
  if (![v6 isEqual:NSOSStatusErrorDomain])
  {

LABEL_9:
    v9 = [v3 domain];
    if ([v9 isEqual:NSOSStatusErrorDomain])
    {
      v10 = [v3 code];

      if (v10 == -12894)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v11 = [v3 domain];
    if ([v11 isEqual:RCVoiceMemosErrorDomain])
    {
      v12 = [v3 code];

      if (v12 == 2)
      {
        v8 = 2;
        goto LABEL_18;
      }
    }

    else
    {
    }

LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v7 = [v3 code];

  if (v7 != -16438)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = 1;
LABEL_18:

  return v8;
}

- (void)_rewriteFileAtURL:(id)a3 withAsset:(id)a4 andMetadata:(id)a5 completion:(id)a6
{
  v10 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100008404;
  v14[3] = &unk_100055520;
  v15 = a5;
  v16 = self;
  v17 = v10;
  v18 = a6;
  v11 = v10;
  v12 = v15;
  v13 = v18;
  [_TtC10voicememod34RCExportSessionComposedAssetWriter createForAsset:a4 completionHandler:v14];
}

- (BOOL)_overwriteFileAtURL:(id)a3 withFileAtURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSFileManager defaultManager];
  v10 = [v7 path];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11 && ![v9 removeItemAtURL:v7 error:a5])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v9 copyItemAtURL:v8 toURL:v7 error:a5];
  }

  return v12;
}

@end