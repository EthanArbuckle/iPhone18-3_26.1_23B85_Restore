@interface RCCloudRecording
- (BOOL)_overwriteFileAtURL:(id)l withFileAtURL:(id)rL error:(id *)error;
- (int)_checkErrorDomainAndCode:(id)code;
- (int)_getRecoveryStrategyForFile:(id)file withError:(id)error;
- (void)_copyResourceFromLocation:(id)location toDirectory:(id)directory usingName:(id)name andExtension:(id)extension completion:(id)completion;
- (void)_removeTitleMetadata:(id)metadata completion:(id)completion;
- (void)_rewriteFileAtURL:(id)l withAsset:(id)asset andMetadata:(id)metadata completion:(id)completion;
- (void)copyResourcesForSharingIntoDirectory:(id)directory completion:(id)completion;
@end

@implementation RCCloudRecording

- (void)copyResourcesForSharingIntoDirectory:(id)directory completion:(id)completion
{
  directoryCopy = directory;
  completionCopy = completion;
  v8 = [(RCCloudRecording *)self url];
  pathExtension = [v8 pathExtension];
  if (([(RCCloudRecording *)self composedAssetHasMultipleTracks]& 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(RCCloudRecording *)self composedAssetIsSpatialRecording]^ 1;
  }

  v11 = RCAudioFileExtensionQTA;
  v12 = [pathExtension isEqualToString:RCAudioFileExtensionQTA];
  if ((v10 & 1) == 0 && (v12 & 1) == 0)
  {
    v13 = OSLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100034B1C();
    }

    v14 = v11;
    pathExtension = v14;
  }

  fileNameForSharing = [(RCCloudRecording *)self fileNameForSharing];
  if (fileNameForSharing)
  {
    [(RCCloudRecording *)self _copyResourceFromLocation:v8 toDirectory:directoryCopy usingName:fileNameForSharing andExtension:pathExtension completion:completionCopy];
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

    completionCopy[2](completionCopy, 0, v26);
  }
}

- (void)_copyResourceFromLocation:(id)location toDirectory:(id)directory usingName:(id)name andExtension:(id)extension completion:(id)completion
{
  completionCopy = completion;
  extensionCopy = extension;
  nameCopy = name;
  directoryCopy = directory;
  locationCopy = location;
  v17 = +[NSFileManager defaultManager];
  v18 = [directoryCopy URLByAppendingPathComponent:nameCopy];

  v19 = [v18 URLByAppendingPathExtension:extensionCopy];

  v25 = 0;
  LOBYTE(v18) = [v17 copyItemAtURL:locationCopy toURL:v19 error:&v25];

  v20 = v25;
  if (v18)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100007D90;
    v22[3] = &unk_1000554D0;
    v24 = completionCopy;
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

    (*(completionCopy + 2))(completionCopy, 0, v20);
  }
}

- (void)_removeTitleMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  v8 = [AVURLAsset assetWithURL:metadataCopy];
  rc_recordingMetadata = [v8 rc_recordingMetadata];
  v10 = [rc_recordingMetadata mutableCopy];

  [v10 setObject:0 forKeyedSubscript:@"title"];
  v21 = 0;
  v11 = [AVAsset rc_updateMetadataInFile:metadataCopy withRecordingMetadata:v10 error:&v21];
  v12 = v21;
  if (v11)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v13 = [(RCCloudRecording *)self _getRecoveryStrategyForFile:metadataCopy withError:v12];
    v14 = OSLogForCategory();
    v15 = v14;
    if (v13 == 2)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100034D1C();
      }

      v20 = v12;
      v17 = [FragmentConsolidator consolidateMovieFragmentsForFileAt:metadataCopy error:&v20];
      v18 = v20;

      if ((v17 & 1) == 0)
      {
        v19 = OSLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100034D90();
        }
      }

      (completionCopy)[2](completionCopy, v17, v18);
      v12 = v18;
    }

    else if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100034E04();
      }

      v16 = [RCCaptureFormat AVAssetAuthoringMetadataWithRecordingMetadata:v10];
      [(RCCloudRecording *)self _rewriteFileAtURL:metadataCopy withAsset:v8 andMetadata:v16 completion:completionCopy];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_100034E78();
      }

      (completionCopy)[2](completionCopy, 0, v12);
    }
  }
}

- (int)_getRecoveryStrategyForFile:(id)file withError:(id)error
{
  errorCopy = error;
  pathExtension = [file pathExtension];
  v8 = [pathExtension isEqual:RCAudioFileExtensionM4A];

  if (v8)
  {
    v9 = errorCopy;
    v10 = [(RCCloudRecording *)self _checkErrorDomainAndCode:v9];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      while (1)
      {
        userInfo = [v9 userInfo];
        v13 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

        if (!v13)
        {
          break;
        }

        userInfo2 = [v9 userInfo];
        v15 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

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

- (int)_checkErrorDomainAndCode:(id)code
{
  codeCopy = code;
  domain = [codeCopy domain];
  if ([domain isEqual:NSOSStatusErrorDomain])
  {
    code = [codeCopy code];

    if (code == -16430)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  domain2 = [codeCopy domain];
  if (![domain2 isEqual:NSOSStatusErrorDomain])
  {

LABEL_9:
    domain3 = [codeCopy domain];
    if ([domain3 isEqual:NSOSStatusErrorDomain])
    {
      code2 = [codeCopy code];

      if (code2 == -12894)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    domain4 = [codeCopy domain];
    if ([domain4 isEqual:RCVoiceMemosErrorDomain])
    {
      code3 = [codeCopy code];

      if (code3 == 2)
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

  code4 = [codeCopy code];

  if (code4 != -16438)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = 1;
LABEL_18:

  return v8;
}

- (void)_rewriteFileAtURL:(id)l withAsset:(id)asset andMetadata:(id)metadata completion:(id)completion
{
  lCopy = l;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100008404;
  v14[3] = &unk_100055520;
  metadataCopy = metadata;
  selfCopy = self;
  v17 = lCopy;
  completionCopy = completion;
  v11 = lCopy;
  v12 = metadataCopy;
  v13 = completionCopy;
  [_TtC10voicememod34RCExportSessionComposedAssetWriter createForAsset:asset completionHandler:v14];
}

- (BOOL)_overwriteFileAtURL:(id)l withFileAtURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v9 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v11 = [v9 fileExistsAtPath:path];

  if (v11 && ![v9 removeItemAtURL:lCopy error:error])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v9 copyItemAtURL:rLCopy toURL:lCopy error:error];
  }

  return v12;
}

@end