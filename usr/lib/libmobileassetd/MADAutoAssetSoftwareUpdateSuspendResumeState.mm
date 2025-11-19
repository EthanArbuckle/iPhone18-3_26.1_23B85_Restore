@interface MADAutoAssetSoftwareUpdateSuspendResumeState
+ (BOOL)clear;
+ (BOOL)writeNewSuspendingStateWithNonce:(id)a3 setConfigurationsToEvict:(id)a4;
+ (id)_currentState;
+ (id)_nonceFileURL;
+ (id)_stateFileURL;
+ (int64_t)currentStatusWithStateHandle:(id *)a3;
- (BOOL)suspendedSetConfigurationsFromPreviousOS;
- (BOOL)suspendedSetConfigurationsHasCurrentNonce;
- (BOOL)write;
- (MADAutoAssetSoftwareUpdateSuspendResumeState)initWithCoder:(id)a3;
- (MADAutoAssetSoftwareUpdateSuspendResumeState)initWithNonce:(id)a3 status:(int64_t)a4 setConfigurationsToEvict:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoAssetSoftwareUpdateSuspendResumeState

- (MADAutoAssetSoftwareUpdateSuspendResumeState)initWithNonce:(id)a3 status:(int64_t)a4 setConfigurationsToEvict:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = MADAutoAssetSoftwareUpdateSuspendResumeState;
  v11 = [(MADAutoAssetSoftwareUpdateSuspendResumeState *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_nonce, a3);
    v12->_status = a4;
    v13 = MGCopyAnswer();
    build = v12->_build;
    v12->_build = v13;

    objc_storeStrong(&v12->_setConfigurationsToEvict, a5);
  }

  return v12;
}

- (BOOL)write
{
  if ([(MADAutoAssetSoftwareUpdateSuspendResumeState *)self suspendedSetConfigurationsHasCurrentNonce])
  {
    v15 = 0;
    v3 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v15];
    v4 = v15;
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = [objc_opt_class() _stateFileURL];
      v9 = _MADLog(@"AutoControl-SuspendResume");
      v10 = v9;
      if (v7)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          [(MADAutoAssetSoftwareUpdateSuspendResumeState *)self status];
          v11 = MAAutoAssetSuspendResumeForSoftwareUpdateStatusString();
          *buf = 138412290;
          v17 = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "{write} writing suspendResumeState | status:%@", buf, 0xCu);
        }

        v14 = 0;
        v8 = [v3 writeToURL:v7 options:1 error:&v14];
        v10 = v14;
        if ((v8 & 1) == 0)
        {
          v12 = _MADLog(@"AutoControl-SuspendResume");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v17 = v7;
            v18 = 2112;
            v19 = v10;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "{write} encountered error writing suspendResumeState | stateFileURL:%@ writeError:%@", buf, 0x16u);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{write} unable to resolve stateFileURL", buf, 2u);
        }

        v8 = 0;
      }
    }

    else
    {
      v7 = _MADLog(@"AutoControl-SuspendResume");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "{write} encountered error serializing suspendResumeState | error:%@", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    v5 = _MADLog(@"AutoControl-SuspendResume");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{write} attempting to write suspendResumeState but nonce is not current", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)suspendedSetConfigurationsFromPreviousOS
{
  v3 = MGCopyAnswer();
  LOBYTE(self) = [SUCore stringIsEqual:v3 to:self->_build];

  return self ^ 1;
}

- (BOOL)suspendedSetConfigurationsHasCurrentNonce
{
  v3 = [objc_opt_class() _nonceFileURL];
  if (!v3)
  {
    v4 = _MADLog(@"AutoControl-SuspendResume");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "{suspendedSetConfigurationsHasCurrentNonce} unable to resolve nonceFileURL", buf, 2u);
    }

    goto LABEL_12;
  }

  v4 = [NSData dataWithContentsOfURL:v3];
  if (!v4)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_15;
  }

  v12 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [(MADAutoAssetSoftwareUpdateSuspendResumeState *)self nonce];
    v10 = [SUCore objectIsEqual:v9 to:v5];
  }

  else
  {
    v9 = _MADLog(@"AutoControl-SuspendResume");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "{suspendedSetConfigurationsHasCurrentNonce} encountered reading suspendResumeNonce file | unarchiveError:%@", buf, 0xCu);
    }

    v10 = 0;
  }

LABEL_15:
  return v10;
}

- (MADAutoAssetSoftwareUpdateSuspendResumeState)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MADAutoAssetSoftwareUpdateSuspendResumeState;
  v5 = [(MADAutoAssetSoftwareUpdateSuspendResumeState *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v6;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    build = v5->_build;
    v5->_build = v8;

    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v16 count:2];
    v11 = [NSSet setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"setConfigurationsToEvict"];
    setConfigurationsToEvict = v5->_setConfigurationsToEvict;
    v5->_setConfigurationsToEvict = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  nonce = self->_nonce;
  v9 = v4;
  if (nonce)
  {
    [v4 encodeObject:nonce forKey:@"nonce"];
    v4 = v9;
  }

  status = self->_status;
  if (status)
  {
    [v9 encodeInteger:status forKey:@"status"];
    v4 = v9;
  }

  build = self->_build;
  if (build)
  {
    [v9 encodeObject:build forKey:@"build"];
    v4 = v9;
  }

  setConfigurationsToEvict = self->_setConfigurationsToEvict;
  if (setConfigurationsToEvict)
  {
    [v9 encodeObject:setConfigurationsToEvict forKey:@"setConfigurationsToEvict"];
    v4 = v9;
  }
}

+ (id)_currentState
{
  v2 = [objc_opt_class() _stateFileURL];
  if (!v2)
  {
    v3 = _MADLog(@"AutoControl-SuspendResume");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "{_currentState} unable to resolve stateFileURL", buf, 2u);
    }

    goto LABEL_12;
  }

  v3 = [NSData dataWithContentsOfURL:v2];
  if (!v3)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_15;
  }

  v11 = 0;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v8 = _MADLog(@"AutoControl-SuspendResume");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{_currentState} encountered reading suspendResumeState file | unarchiveError:%@", buf, 0xCu);
    }

    v9 = 0;
  }

LABEL_15:

  return v9;
}

+ (int64_t)currentStatusWithStateHandle:(id *)a3
{
  v4 = [a1 _currentState];
  v5 = v4;
  if (a3)
  {
    v6 = v4;
    *a3 = v5;
  }

  if (v5)
  {
    if (([v5 suspendedSetConfigurationsFromPreviousOS] & 1) != 0 || !objc_msgSend(v5, "suspendedSetConfigurationsHasCurrentNonce"))
    {
      v7 = &stru_20 + 69;
    }

    else
    {
      v7 = [v5 status];
    }
  }

  else
  {
    v7 = &stru_20 + 68;
  }

  return v7;
}

+ (BOOL)writeNewSuspendingStateWithNonce:(id)a3 setConfigurationsToEvict:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v22 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v22];
    v9 = v22;
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = _MADLog(@"AutoControl-SuspendResume");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v10;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "{writeNewSuspendingStateWithNonce} encountered error serializing nonce | error:%@", buf, 0xCu);
      }

      v13 = 0;
      goto LABEL_29;
    }

    v12 = [objc_opt_class() _nonceFileURL];
    if (!v12)
    {
      v16 = _MADLog(@"AutoControl-SuspendResume");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "{writeNewSuspendingStateWithNonce} unable to resolve nonceFileURL", buf, 2u);
      }

      v13 = 0;
      goto LABEL_28;
    }

    v21 = 0;
    v14 = [v8 writeToURL:v12 options:0 error:&v21];
    v15 = v21;
    v16 = v15;
    if (!v14 || v15)
    {
      p_super = _MADLog(@"AutoControl-SuspendResume");
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = v12;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_ERROR, "{writeNewSuspendingStateWithNonce} encountered error writing file | fileURL:%@ error:%@", buf, 0x16u);
      }
    }

    else
    {
      v17 = [[MADAutoAssetSoftwareUpdateSuspendResumeState alloc] initWithNonce:v5 status:201 setConfigurationsToEvict:v7];
      p_super = &v17->super;
      if (v17)
      {
        v13 = [(MADAutoAssetSoftwareUpdateSuspendResumeState *)v17 write];
LABEL_27:

LABEL_28:
LABEL_29:

        goto LABEL_30;
      }

      v19 = _MADLog(@"AutoControl-SuspendResume");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = v5;
        v25 = 2112;
        v26 = v7;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "{writeNewSuspendingStateWithNonce} unable to alloc/init suspendResumeState | nonce:%@ setConfigurationsToEvict:%@", buf, 0x16u);
      }
    }

    v13 = 0;
    goto LABEL_27;
  }

  v10 = _MADLog(@"AutoControl-SuspendResume");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v24 = v5;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{writeNewSuspendingStateWithNonce} missing required parameter | nonce:%@ setConfigurationsToEvict:%@", buf, 0x16u);
  }

  v13 = 0;
LABEL_30:

  return v13;
}

+ (BOOL)clear
{
  v3 = +[NSFileManager defaultManager];
  if (!v3)
  {
    v5 = _MADLog(@"AutoControl-SuspendResume");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "{clear} unable to resolve fileManager on clear";
LABEL_26:
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    }

LABEL_33:
    v13 = 0;
    goto LABEL_34;
  }

  v4 = objc_opt_new();
  if (!v4)
  {
    v5 = _MADLog(@"AutoControl-SuspendResume");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "{clear} unable to allow fileURLs";
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  v5 = v4;
  v6 = [a1 _nonceFileURL];
  if (!v6)
  {
    v25 = _MADLog(@"AutoControl-SuspendResume");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "{clear} unable to resolve nonceFileURL", buf, 2u);
    }

    goto LABEL_33;
  }

  v7 = v6;
  [v5 addObject:v6];

  v8 = [a1 _stateFileURL];
  if (!v8)
  {
    v26 = _MADLog(@"AutoControl-SuspendResume");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "{clear} unable to resolve stateFileURL", buf, 2u);
    }

    [v5 addObject:0];
    goto LABEL_33;
  }

  v9 = v8;
  [v5 addObject:v8];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v5;
  v10 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    v13 = 1;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [v15 path];
        v18 = [v3 fileExistsAtPath:v17];

        if (v18)
        {
          v28 = 0;
          v19 = [v3 removeItemAtURL:v15 error:&v28];
          v20 = v28;
          v21 = v20;
          if (v19)
          {
            v22 = v20 == 0;
          }

          else
          {
            v22 = 0;
          }

          if (!v22)
          {
            v23 = _MADLog(@"AutoControl-SuspendResume");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v34 = v15;
              v35 = 2112;
              v36 = v21;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "{clear} encountered error removing file | fileURL:%@ error:%@", buf, 0x16u);
            }

            v13 = 0;
          }
        }

        objc_autoreleasePoolPop(v16);
      }

      v11 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 1;
  }

LABEL_34:
  return v13 & 1;
}

+ (id)_stateFileURL
{
  v2 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/persisted");
  v3 = [v2 stringByAppendingPathComponent:@"MobileAssetSuspendSystemOptionalForSoftwareUpdate.active"];
  v4 = [NSURL fileURLWithPath:v3];

  return v4;
}

+ (id)_nonceFileURL
{
  v2 = [@"/.nofollow/private/var/run" stringByAppendingPathComponent:@"MobileAssetSuspendSystemOptionalForSoftwareUpdate.nonce"];
  v3 = [NSURL fileURLWithPath:v2];

  return v3;
}

@end