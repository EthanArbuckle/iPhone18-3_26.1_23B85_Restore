@interface SagaLibraryPinBaseOperation
+ (BOOL)_shouldSetKeepLocalOnPinnedEntities;
+ (void)_runKeepLocalEvaluationToDownloadPins;
+ (void)_setKeepLocalOnPinnedEntityWithPersistentIDs:(id)a3 types:(id)a4 configuration:(id)a5;
+ (void)prepareAllPinsForAutomaticDownloadForConfiguration:(id)a3;
- (BOOL)canRunRequest;
- (SagaLibraryPinBaseOperation)initWithCoder:(id)a3;
- (SagaLibraryPinBaseOperation)initWithConfiguration:(id)a3 persistentID:(int64_t)a4 cloudID:(int64_t)a5 cloudLibraryID:(id)a6 type:(int64_t)a7 defaultAction:(int64_t)a8 clientIdentity:(id)a9 position:(int64_t)a10 completion:(id)a11;
- (int64_t)_ML3EntityTypeFromICLibraryPinEntityType:(int64_t)a3;
- (unsigned)currentDatabaseRevision;
- (void)encodeWithCoder:(id)a3;
- (void)preparePinForAutomaticDownload;
- (void)processResponse:(id)a3;
@end

@implementation SagaLibraryPinBaseOperation

- (int64_t)_ML3EntityTypeFromICLibraryPinEntityType:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_10016AF80[a3 - 1];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaLibraryPinBaseOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_sagaID forKey:{@"SagaLibraryPinBaseOperationSagaIDKey", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_persistentID forKey:@"SagaLibraryPinBaseOperationEntityPersistentIDKey"];
  [v4 encodeInt64:self->_pinPersistentID forKey:@"SagaLibraryPinBaseOperationPersistentIDKey"];
  [v4 encodeInteger:self->_entityType forKey:@"SagaLibraryPinBaseOperationEntityTypeIDKey"];
  [v4 encodeInteger:self->_action forKey:@"SagaLibraryPinBaseOperationDefaultActionKey"];
  [v4 encodeInteger:self->_position forKey:@"SagaLibraryPinBaseOperationPositionIDKey"];
  [v4 encodeObject:self->_cloudLibraryID forKey:@"SagaLibraryPinBaseOperationCloudLibraryIDKey"];
  [v4 encodeObject:self->_positionUUID forKey:@"SagaLibraryPinBaseOperationPositionUUIDKey"];
  [v4 encodeInteger:self->_state forKey:@"SagaLibraryPinBaseOperationStateKey"];
  [v4 encodeInteger:self->_ml3EntityType forKey:@"SagaLibraryPinBaseOperationML3EntityTypeIDKey"];
}

- (SagaLibraryPinBaseOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SagaLibraryPinBaseOperation;
  v5 = [(CloudLibraryOperation *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_sagaID = [v4 decodeInt64ForKey:@"SagaLibraryPinBaseOperationSagaIDKey"];
    v5->_persistentID = [v4 decodeInt64ForKey:@"SagaLibraryPinBaseOperationEntityPersistentIDKey"];
    v5->_entityType = [v4 decodeIntegerForKey:@"SagaLibraryPinBaseOperationEntityTypeIDKey"];
    v5->_action = [v4 decodeIntegerForKey:@"SagaLibraryPinBaseOperationDefaultActionKey"];
    v5->_pinPersistentID = [v4 decodeInt64ForKey:@"SagaLibraryPinBaseOperationPersistentIDKey"];
    v5->_position = [v4 decodeIntForKey:@"SagaLibraryPinBaseOperationPositionIDKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaLibraryPinBaseOperationCloudLibraryIDKey"];
    cloudLibraryID = v5->_cloudLibraryID;
    v5->_cloudLibraryID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaLibraryPinBaseOperationPositionUUIDKey"];
    positionUUID = v5->_positionUUID;
    v5->_positionUUID = v8;

    v5->_state = [v4 decodeIntegerForKey:@"SagaLibraryPinBaseOperationStateKey"];
    v5->_ml3EntityType = [v4 decodeIntegerForKey:@"SagaLibraryPinBaseOperationML3EntityTypeIDKey"];
  }

  return v5;
}

- (void)preparePinForAutomaticDownload
{
  if (+[SagaLibraryPinBaseOperation _shouldSetKeepLocalOnPinnedEntities])
  {
    v3 = [NSNumber numberWithLongLong:[(SagaLibraryPinBaseOperation *)self persistentID]];
    v9 = v3;
    v4 = [NSArray arrayWithObjects:&v9 count:1];
    v5 = [NSNumber numberWithInteger:[(SagaLibraryPinBaseOperation *)self ml3EntityType]];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
    v7 = [(CloudLibraryOperation *)self configuration];
    [SagaLibraryPinBaseOperation _setKeepLocalOnPinnedEntityWithPersistentIDs:v4 types:v6 configuration:v7];

    +[SagaLibraryPinBaseOperation _runKeepLocalEvaluationToDownloadPins];
  }
}

- (unsigned)currentDatabaseRevision
{
  v2 = [(CloudLibraryOperation *)self musicLibrary];
  v3 = [v2 sagaOnDiskDatabaseRevision];

  if (v3 <= 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)processResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 responseCode];
  if (v5 > 399)
  {
    if (v5 == 404 || v5 == 400)
    {
      v6 = 3;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = 1;
  if (v5 != 200 && v5 != 204)
  {
LABEL_8:
    v6 = 2;
  }

LABEL_9:
  [(CloudLibraryOperation *)self setStatus:v6];
  if ([(CloudLibraryOperation *)self status]== 1)
  {
    v7 = [v4 updateRequired];
    v8 = [v4 actionFailed];
    if (v7)
    {
      if (!v8)
      {
        v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543362;
          v17 = self;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting library update because response requires follow up update", &v16, 0xCu);
        }

        v10 = [(CloudLibraryOperation *)self configuration];
        v11 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v10];
        v12 = [(CloudLibraryOperation *)self clientIdentity];
        [v11 updateSagaLibraryWithClientIdentity:v12 forReason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:0];
LABEL_22:

        goto LABEL_25;
      }

LABEL_19:
      [(CloudLibraryOperation *)self setStatus:3];
      v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = self;
        v18 = 1024;
        LODWORD(v19) = 1;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting library update because pin operation failed actionFailed=%{BOOL}u", &v16, 0x12u);
      }

      v10 = [(CloudLibraryOperation *)self configuration];
      v11 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v10];
      v12 = [(CloudLibraryOperation *)self clientIdentity];
      [v11 updateSagaLibraryToReconcileLibraryPinsWithClientIdentity:v12 forReason:9 completionHandler:0];
      goto LABEL_22;
    }
  }

  else if ([(CloudLibraryOperation *)self status]== 3)
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(CloudLibraryOperation *)self error];
      v16 = 138543618;
      v17 = self;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Operation permanently failed with error=%{public}@", &v16, 0x16u);
    }

    goto LABEL_19;
  }

  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping library update because the response did not contain update-required flag", &v16, 0xCu);
  }

LABEL_25:
}

- (BOOL)canRunRequest
{
  v3 = +[ICUserIdentityStore defaultIdentityStore];
  v4 = [(CloudLibraryOperation *)self userIdentity];
  v16 = 0;
  v5 = [v3 getPropertiesForUserIdentity:v4 error:&v16];
  v6 = v16;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if ([v5 isActiveLocker])
    {
      if (self->_persistentID && (self->_sagaID || [(NSString *)self->_cloudLibraryID length]))
      {
        entityType = self->_entityType;
        if (entityType)
        {
          if (self->_sagaID && entityType >= 3)
          {
            [(CloudLibraryOperation *)self setStatus:3];
            v11 = ICErrorDomain;
            v12 = @"identifiers and entity type don't match (saga id)";
          }

          else
          {
            if ([(NSString *)self->_cloudLibraryID length]|| (self->_entityType - 3) > 1)
            {
              v14 = 1;
              goto LABEL_20;
            }

            [(CloudLibraryOperation *)self setStatus:3];
            v11 = ICErrorDomain;
            v12 = @"identifiers and entity type don't match (cloud id)";
          }
        }

        else
        {
          [(CloudLibraryOperation *)self setStatus:3];
          v11 = ICErrorDomain;
          v12 = @"invalid entity type to pin";
        }
      }

      else
      {
        [(CloudLibraryOperation *)self setStatus:3];
        v11 = ICErrorDomain;
        v12 = @"no valid cloud identifiers";
      }

      v13 = -8402;
    }

    else
    {
      [(CloudLibraryOperation *)self setStatus:3];
      v11 = ICErrorDomain;
      v12 = @"cloud library is not enabled";
      v13 = -8401;
    }

    v8 = [NSError msv_errorWithDomain:v11 code:v13 debugDescription:v12];
    [(CloudLibraryOperation *)self setError:v8];
  }

  else
  {
    [(CloudLibraryOperation *)self setStatus:3];
    v8 = [v6 msv_errorByRemovingUnsafeUserInfo];
    v9 = [NSError msv_errorWithDomain:ICErrorDomain code:-8400 underlyingError:v8 debugDescription:@"cannot load user identity properties"];
    [(CloudLibraryOperation *)self setError:v9];
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (SagaLibraryPinBaseOperation)initWithConfiguration:(id)a3 persistentID:(int64_t)a4 cloudID:(int64_t)a5 cloudLibraryID:(id)a6 type:(int64_t)a7 defaultAction:(int64_t)a8 clientIdentity:(id)a9 position:(int64_t)a10 completion:(id)a11
{
  v17 = a6;
  v18 = a11;
  v27.receiver = self;
  v27.super_class = SagaLibraryPinBaseOperation;
  v19 = [(CloudLibraryOperation *)&v27 initWithConfiguration:a3 clientIdentity:a9];
  v20 = v19;
  if (v19)
  {
    v19->_pinPersistentID = 0;
    positionUUID = v19->_positionUUID;
    v19->_positionUUID = 0;

    v20->_persistentID = a4;
    v22 = [v17 copy];
    cloudLibraryID = v20->_cloudLibraryID;
    v20->_cloudLibraryID = v22;

    v20->_entityType = a7;
    v20->_position = a10;
    v24 = objc_retainBlock(v18);
    localDatabaseUpdateCompletionHandler = v20->_localDatabaseUpdateCompletionHandler;
    v20->_localDatabaseUpdateCompletionHandler = v24;

    v20->_action = a8;
    v20->_sagaID = a5;
    v20->_ml3EntityType = [(SagaLibraryPinBaseOperation *)v20 _ML3EntityTypeFromICLibraryPinEntityType:v20->_entityType];
    v20->_state = 0;
  }

  return v20;
}

+ (BOOL)_shouldSetKeepLocalOnPinnedEntities
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AutomaticDownloadEnabledForLibraryPins", @"com.apple.mobileipod", 0);
  if (AppBooleanValue)
  {
    if (MSVDeviceIsiPhone() & 1) != 0 || (MSVDeviceIsiPad())
    {
      LOBYTE(AppBooleanValue) = 1;
    }

    else
    {

      LOBYTE(AppBooleanValue) = _MSVDeviceIsROSDevice();
    }
  }

  return AppBooleanValue;
}

+ (void)_runKeepLocalEvaluationToDownloadPins
{
  v4 = [[MSVXPCConnection alloc] initWithMachServiceName:@"com.apple.atc.xpc.runkeeplocaltask" options:0];
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MLSyncKeepLocalRequestListener];
  [v4 setRemoteObjectInterface:v2];
  [v4 resume];
  v3 = [v4 remoteObjectProxyWithErrorHandler:&stru_1001DD9F8];
  [v3 runKeepLocalEvaluationAndDownloadAssetsForPinningChangeWithCompletionBlock:&stru_1001DDA18];
}

+ (void)_setKeepLocalOnPinnedEntityWithPersistentIDs:(id)a3 types:(id)a4 configuration:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 userIdentity];
  v11 = [ML3MusicLibrary musicLibraryForUserAccount:v10];

  v12 = [v9 clientIdentity];

  [v11 setClientIdentity:v12];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E2FB4;
  v15[3] = &unk_1001DD9D8;
  v16 = v7;
  v17 = v8;
  v18 = 1032;
  v13 = v8;
  v14 = v7;
  [v11 databaseConnectionAllowingWrites:1 withBlock:v15];
}

+ (void)prepareAllPinsForAutomaticDownloadForConfiguration:(id)a3
{
  v3 = a3;
  if (+[SagaLibraryPinBaseOperation _shouldSetKeepLocalOnPinnedEntities])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3032000000;
    v17 = sub_1000E396C;
    v18 = sub_1000E397C;
    v19 = +[NSMutableArray array];
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1000E396C;
    v13 = sub_1000E397C;
    v14 = +[NSMutableArray array];
    v4 = [v3 userIdentity];
    v5 = [ML3MusicLibrary musicLibraryForUserAccount:v4];

    v6 = [v3 clientIdentity];
    [v5 setClientIdentity:v6];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E3984;
    v8[3] = &unk_1001DD9B0;
    v8[4] = &buf;
    v8[5] = &v9;
    [v5 databaseConnectionAllowingWrites:0 withBlock:v8];
    if ([*(*(&buf + 1) + 40) count])
    {
      [SagaLibraryPinBaseOperation _setKeepLocalOnPinnedEntityWithPersistentIDs:*(*(&buf + 1) + 40) types:v10[5] configuration:v3];
      +[SagaLibraryPinBaseOperation _runKeepLocalEvaluationToDownloadPins];
    }

    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not enabling downloads of library pins for configuration=%{public}@", &buf, 0xCu);
    }
  }
}

@end