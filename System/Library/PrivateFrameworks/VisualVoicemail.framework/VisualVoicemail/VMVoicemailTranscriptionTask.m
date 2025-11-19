@interface VMVoicemailTranscriptionTask
+ (void)resetRetranscriptionTaskState;
- (BOOL)alreadyAttemptedVoicemailTranscriptionForVoicemail:(id)a3;
- (BOOL)confidenceModelExistsOnDevice;
- (BOOL)deviceHasSpeechAssets;
- (BOOL)speechAssetHasConfidenceModel:(id)a3;
- (BOOL)voicemailWasTranscribedWithoutConfidence:(id)a3;
- (VMTranscriptionService)transcriptionService;
- (VMVoicemailTranscriptionTask)initWithTranscriptionService:(id)a3;
- (id)allVoicemailsTranscribedWithoutConfidence;
- (id)lastTaskExecutionDate;
- (id)speechAssetsOnDevice;
- (id)speechAssetsWithConfidenceModelsOnDevice;
- (id)voicemailsMatchingFlags:(unsigned int)a3 withoutFlags:(unsigned int)a4;
- (void)_endRetranscribingTask;
- (void)_startRetranscribingVoicemailsIfNecessaryTranscribingAllVoicemails:(BOOL)a3;
- (void)cancelAttemptedVoicemailTranscriptionForVoicemail:(id)a3;
- (void)dealloc;
- (void)processTranscriptForVoicemail:(id)a3;
- (void)retranscribeAllVoicemails;
- (void)setAttemptedVoicemailTranscriptionForVoicemail:(id)a3;
- (void)setLastExecutionDate:(id)a3;
@end

@implementation VMVoicemailTranscriptionTask

- (VMVoicemailTranscriptionTask)initWithTranscriptionService:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VMVoicemailTranscriptionTask;
  v5 = [(VMVoicemailTranscriptionTask *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.voicemail.retranscribingTaskQueue", 0);
    taskQueue = v5->_taskQueue;
    v5->_taskQueue = v6;

    objc_storeWeak(&v5->_transcriptionService, v4);
  }

  return v5;
}

- (void)dealloc
{
  [(VMVoicemailTranscriptionTask *)self _endRetranscribingTask];
  v3.receiver = self;
  v3.super_class = VMVoicemailTranscriptionTask;
  [(VMVoicemailTranscriptionTask *)&v3 dealloc];
}

+ (void)resetRetranscriptionTaskState
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist"];

  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v8 = 0;
    v5 = [v4 removeItemAtPath:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist" error:&v8];
    v6 = v8;

    if ((v5 & 1) == 0)
    {
      v7 = vm_vmd_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10009DA40();
      }
    }
  }
}

- (void)setLastExecutionDate:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist"];

  if (v6)
  {
    [NSMutableDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist"];
  }

  else
  {
    +[NSMutableDictionary dictionary];
  }
  v7 = ;
  [v7 setObject:v4 forKey:@"VMVoicemailTranscriptionTaskLastExecutionDate"];
  v14 = 0;
  v8 = [v7 writeToFile:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist" options:268435457 error:&v14];
  v9 = v14;
  v10 = vm_vmd_log();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      v13 = [NSString stringWithFormat:@"Saved last execution date of %@ to retranscription task plist.", v4];
      *buf = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10009DAF0();
  }
}

- (id)lastTaskExecutionDate
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist"];

  if (v4)
  {
    v5 = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist"];
    v6 = [v5 objectForKey:@"VMVoicemailTranscriptionTaskLastExecutionDate"];
    v7 = vm_vmd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(a2);
      v9 = [NSString stringWithFormat:@"Got a last execution date of: %@", v6];
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v11 = [NSString stringWithFormat:@"Returning nil since the task dictionary doesn't exist."];
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)deviceHasSpeechAssets
{
  v2 = [(VMVoicemailTranscriptionTask *)self speechAssetsOnDevice];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)speechAssetsOnDevice
{
  v2 = +[NSFileManager defaultManager];
  v9 = 0;
  v3 = [v2 contentsOfDirectoryAtPath:@"/var/MobileAsset/Assets/com_apple_MobileAsset_EmbeddedSpeech" error:&v9];
  v4 = v9;

  if (v4)
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009DBA0();
    }
  }

  v6 = [NSPredicate predicateWithBlock:&stru_1000EF0B8];
  v7 = [v3 filteredArrayUsingPredicate:v6];

  return v7;
}

- (id)speechAssetsWithConfidenceModelsOnDevice
{
  v3 = [(VMVoicemailTranscriptionTask *)self speechAssetsOnDevice];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006903C;
  v7[3] = &unk_1000EF0E0;
  v7[4] = self;
  v4 = [NSPredicate predicateWithBlock:v7];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (BOOL)speechAssetHasConfidenceModel:(id)a3
{
  v4 = a3;
  v5 = [v4 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];

  v7 = [&off_1000F5AA0 containsObject:v6];
  v8 = vm_vmd_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10009DC50();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"It looks like we have a model that supports confidence on this device."];
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: %@", &v13, 0x16u);
  }

  return v7 ^ 1;
}

- (BOOL)confidenceModelExistsOnDevice
{
  v2 = [(VMVoicemailTranscriptionTask *)self speechAssetsWithConfidenceModelsOnDevice];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setAttemptedVoicemailTranscriptionForVoicemail:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist"];

  if (v6)
  {
    [NSMutableDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist"];
  }

  else
  {
    +[NSMutableDictionary dictionary];
  }
  v7 = ;
  v8 = [v7 objectForKey:@"VMVoicemailTranscriptionPreviouslyAttemptedVoicemails"];

  if (v8)
  {
    v9 = [v7 objectForKey:@"VMVoicemailTranscriptionPreviouslyAttemptedVoicemails"];
    v10 = [v9 mutableCopy];
  }

  else
  {
    v10 = +[NSMutableArray array];
  }

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 identifier]);
  [v10 addObject:v11];

  [v7 setObject:v10 forKey:@"VMVoicemailTranscriptionPreviouslyAttemptedVoicemails"];
  v18 = 0;
  v12 = [v7 writeToFile:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist" options:268435457 error:&v18];
  v13 = v18;
  v14 = vm_vmd_log();
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Noted in plist that we have attempted to transcribe voicemail with identifier: %lu.", [v4 identifier]);
      *buf = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10009DAF0();
  }
}

- (void)cancelAttemptedVoicemailTranscriptionForVoicemail:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist"];

  if (v6)
  {
    v7 = [NSMutableDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist"];
    v8 = [v7 objectForKey:@"VMVoicemailTranscriptionPreviouslyAttemptedVoicemails"];
    v9 = [v8 mutableCopy];

    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 identifier]);
    v11 = [v9 containsObject:v10];

    if (v11)
    {
      v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 identifier]);
      [v9 removeObject:v12];

      [v7 setObject:v9 forKey:@"VMVoicemailTranscriptionPreviouslyAttemptedVoicemails"];
      v19 = 0;
      v13 = [v7 writeToFile:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist" options:268435457 error:&v19];
      v14 = v19;
      v15 = vm_vmd_log();
      v16 = v15;
      if (v13)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = NSStringFromSelector(a2);
          v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Removing from plist that we have attempted to transcribe voicemail with identifier: %lu.", [v4 identifier]);
          *buf = 138412546;
          v21 = v17;
          v22 = 2112;
          v23 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10009DAF0();
      }
    }
  }
}

- (BOOL)alreadyAttemptedVoicemailTranscriptionForVoicemail:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist"];

  if (v6)
  {
    v7 = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Voicemail/com.apple.voicemail.transcriptiontask.plist"];
    v8 = [v7 objectForKey:@"VMVoicemailTranscriptionPreviouslyAttemptedVoicemails"];
    v9 = vm_vmd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Got previous attempts of: %@, will check to see if %lu is in it.", v8, [v4 identifier]);
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }

    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 identifier]);
    v13 = [v8 containsObject:v12];
  }

  else
  {
    v7 = vm_vmd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      v15 = [NSString stringWithFormat:@"Returning NO since the task dictionary doesn't exist."];
      *buf = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)voicemailsMatchingFlags:(unsigned int)a3 withoutFlags:(unsigned int)a4
{
  v4 = VMStoreCopyOfAllRecordsWithFlags(a3, a4, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100069A38;
  v8[3] = &unk_1000EF108;
  v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v5 = v9;
  [v4 enumerateObjectsUsingBlock:v8];
  v6 = [NSArray arrayWithArray:v5];

  return v6;
}

- (BOOL)voicemailWasTranscribedWithoutConfidence:(id)a3
{
  v3 = [a3 transcript];
  [v3 confidence];
  v5 = v4 <= 0.00000011921;

  return v5;
}

- (id)allVoicemailsTranscribedWithoutConfidence
{
  v3 = [(VMVoicemailTranscriptionTask *)self allVoicemailsWithTranscription];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100069BDC;
  v7[3] = &unk_1000EF130;
  v7[4] = self;
  v4 = [NSPredicate predicateWithBlock:v7];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)processTranscriptForVoicemail:(id)a3
{
  v5 = a3;
  v6 = _os_feature_enabled_impl();
  v7 = [(VMVoicemailTranscriptionTask *)self transcriptionService];
  v8 = [v5 identifier];
  if (v6)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100069D48;
    v14[3] = &unk_1000EF158;
    v15[1] = self;
    v15[2] = a2;
    v9 = v15;
    v15[0] = v5;
    v10 = v5;
    [v7 processSpeechAnalyzerTranscriptForRecordWithIdentifier:v8 priority:-4 completion:v14];
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100069E48;
    v12[3] = &unk_1000EF158;
    v13[1] = self;
    v13[2] = a2;
    v9 = v13;
    v13[0] = v5;
    v11 = v5;
    [v7 processTranscriptForRecordWithIdentifier:v8 priority:-4 completion:v12];
  }
}

- (void)_startRetranscribingVoicemailsIfNecessaryTranscribingAllVoicemails:(BOOL)a3
{
  v6 = [(VMVoicemailTranscriptionTask *)self isTaskRunning];
  v7 = vm_vmd_log();
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      v10 = [NSString stringWithFormat:@"Starting task to retranscribe voicemails"];
      *buf = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }

    [(VMVoicemailTranscriptionTask *)self setTaskRunning:1];
    if (!self->_hasInsomniaAssertion)
    {
      v11 = vm_vmd_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromSelector(a2);
        v13 = [NSString stringWithFormat:@"Taking an insomnia assertion until we complete the task."];
        *buf = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
      }

      +[VVService obtainInsomniaAssertion];
      self->_hasInsomniaAssertion = 1;
    }

    if ([(VMVoicemailTranscriptionTask *)self deviceHasSpeechAssets])
    {
      if (a3)
      {
        v14 = +[NSDate date];
        [(VMVoicemailTranscriptionTask *)self setLastExecutionDate:v14];

        v15 = [(VMVoicemailTranscriptionTask *)self allVoicemails];
        v16 = vm_vmd_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = NSStringFromSelector(a2);
          v18 = [NSString stringWithFormat:@"Found %lu voicemails on device, and we were asked to transcribe all of them.", [v15 count]];
          *buf = 138412546;
          v23 = v17;
          v24 = 2112;
          v25 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
        }

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10006A3A8;
        v21[3] = &unk_1000EF180;
        v21[4] = self;
        v21[5] = a2;
        [v15 enumerateObjectsUsingBlock:v21];
        goto LABEL_23;
      }

      if ([(VMVoicemailTranscriptionTask *)self shouldRunTranscriptionTask])
      {
        v15 = +[NSDate date];
        [(VMVoicemailTranscriptionTask *)self setLastExecutionDate:v15];
        goto LABEL_23;
      }

      v15 = vm_vmd_log();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v19 = NSStringFromSelector(a2);
      v20 = [NSString stringWithFormat:@"Cancelling retranscription task since we were told not to run it."];
      *buf = 138412546;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
    }

    else
    {
      v15 = vm_vmd_log();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_23:

        [(VMVoicemailTranscriptionTask *)self _endRetranscribingTask];
        return;
      }

      v19 = NSStringFromSelector(a2);
      v20 = [NSString stringWithFormat:@"Cancelling retranscription task since our device has no speech assets downloaded."];
      *buf = 138412546;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
    }

    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);

    goto LABEL_23;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10009DD00(a2);
  }
}

- (void)_endRetranscribingTask
{
  v4 = [(VMVoicemailTranscriptionTask *)self isTaskRunning];
  v5 = vm_vmd_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      v8 = [NSString stringWithFormat:@"Ending task to retranscribe voicemails"];
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: %@", &v12, 0x16u);
    }

    self->_taskRunning = 0;
    if (self->_hasInsomniaAssertion)
    {
      v9 = vm_vmd_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = NSStringFromSelector(a2);
        v11 = [NSString stringWithFormat:@"Releasing insomnia assertion so we can exit vmd if necessary."];
        v12 = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: %@", &v12, 0x16u);
      }

      +[VVService releaseInsomniaAssertion];
      self->_hasInsomniaAssertion = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009DDAC(a2);
    }
  }
}

- (void)retranscribeAllVoicemails
{
  taskQueue = self->_taskQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A704;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(taskQueue, block);
}

- (VMTranscriptionService)transcriptionService
{
  WeakRetained = objc_loadWeakRetained(&self->_transcriptionService);

  return WeakRetained;
}

@end