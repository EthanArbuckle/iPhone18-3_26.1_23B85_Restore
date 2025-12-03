@interface SagaLibraryPinBaseOperation
+ (BOOL)_shouldSetKeepLocalOnPinnedEntities;
+ (void)_runKeepLocalEvaluationToDownloadPins;
+ (void)_setKeepLocalOnPinnedEntityWithPersistentIDs:(id)ds types:(id)types configuration:(id)configuration;
+ (void)prepareAllPinsForAutomaticDownloadForConfiguration:(id)configuration;
- (BOOL)canRunRequest;
- (SagaLibraryPinBaseOperation)initWithCoder:(id)coder;
- (SagaLibraryPinBaseOperation)initWithConfiguration:(id)configuration persistentID:(int64_t)d cloudID:(int64_t)iD cloudLibraryID:(id)libraryID type:(int64_t)type defaultAction:(int64_t)action clientIdentity:(id)identity position:(int64_t)self0 completion:(id)self1;
- (int64_t)_ML3EntityTypeFromICLibraryPinEntityType:(int64_t)type;
- (unsigned)currentDatabaseRevision;
- (void)encodeWithCoder:(id)coder;
- (void)preparePinForAutomaticDownload;
- (void)processResponse:(id)response;
@end

@implementation SagaLibraryPinBaseOperation

- (int64_t)_ML3EntityTypeFromICLibraryPinEntityType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_10016AF80[type - 1];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaLibraryPinBaseOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_sagaID forKey:{@"SagaLibraryPinBaseOperationSagaIDKey", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_persistentID forKey:@"SagaLibraryPinBaseOperationEntityPersistentIDKey"];
  [coderCopy encodeInt64:self->_pinPersistentID forKey:@"SagaLibraryPinBaseOperationPersistentIDKey"];
  [coderCopy encodeInteger:self->_entityType forKey:@"SagaLibraryPinBaseOperationEntityTypeIDKey"];
  [coderCopy encodeInteger:self->_action forKey:@"SagaLibraryPinBaseOperationDefaultActionKey"];
  [coderCopy encodeInteger:self->_position forKey:@"SagaLibraryPinBaseOperationPositionIDKey"];
  [coderCopy encodeObject:self->_cloudLibraryID forKey:@"SagaLibraryPinBaseOperationCloudLibraryIDKey"];
  [coderCopy encodeObject:self->_positionUUID forKey:@"SagaLibraryPinBaseOperationPositionUUIDKey"];
  [coderCopy encodeInteger:self->_state forKey:@"SagaLibraryPinBaseOperationStateKey"];
  [coderCopy encodeInteger:self->_ml3EntityType forKey:@"SagaLibraryPinBaseOperationML3EntityTypeIDKey"];
}

- (SagaLibraryPinBaseOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SagaLibraryPinBaseOperation;
  v5 = [(CloudLibraryOperation *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_sagaID = [coderCopy decodeInt64ForKey:@"SagaLibraryPinBaseOperationSagaIDKey"];
    v5->_persistentID = [coderCopy decodeInt64ForKey:@"SagaLibraryPinBaseOperationEntityPersistentIDKey"];
    v5->_entityType = [coderCopy decodeIntegerForKey:@"SagaLibraryPinBaseOperationEntityTypeIDKey"];
    v5->_action = [coderCopy decodeIntegerForKey:@"SagaLibraryPinBaseOperationDefaultActionKey"];
    v5->_pinPersistentID = [coderCopy decodeInt64ForKey:@"SagaLibraryPinBaseOperationPersistentIDKey"];
    v5->_position = [coderCopy decodeIntForKey:@"SagaLibraryPinBaseOperationPositionIDKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaLibraryPinBaseOperationCloudLibraryIDKey"];
    cloudLibraryID = v5->_cloudLibraryID;
    v5->_cloudLibraryID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaLibraryPinBaseOperationPositionUUIDKey"];
    positionUUID = v5->_positionUUID;
    v5->_positionUUID = v8;

    v5->_state = [coderCopy decodeIntegerForKey:@"SagaLibraryPinBaseOperationStateKey"];
    v5->_ml3EntityType = [coderCopy decodeIntegerForKey:@"SagaLibraryPinBaseOperationML3EntityTypeIDKey"];
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
    configuration = [(CloudLibraryOperation *)self configuration];
    [SagaLibraryPinBaseOperation _setKeepLocalOnPinnedEntityWithPersistentIDs:v4 types:v6 configuration:configuration];

    +[SagaLibraryPinBaseOperation _runKeepLocalEvaluationToDownloadPins];
  }
}

- (unsigned)currentDatabaseRevision
{
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  sagaOnDiskDatabaseRevision = [musicLibrary sagaOnDiskDatabaseRevision];

  if (sagaOnDiskDatabaseRevision <= 1)
  {
    return 1;
  }

  else
  {
    return sagaOnDiskDatabaseRevision;
  }
}

- (void)processResponse:(id)response
{
  responseCopy = response;
  responseCode = [responseCopy responseCode];
  if (responseCode > 399)
  {
    if (responseCode == 404 || responseCode == 400)
    {
      v6 = 3;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = 1;
  if (responseCode != 200 && responseCode != 204)
  {
LABEL_8:
    v6 = 2;
  }

LABEL_9:
  [(CloudLibraryOperation *)self setStatus:v6];
  if ([(CloudLibraryOperation *)self status]== 1)
  {
    updateRequired = [responseCopy updateRequired];
    actionFailed = [responseCopy actionFailed];
    if (updateRequired)
    {
      if (!actionFailed)
      {
        v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543362;
          selfCopy4 = self;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting library update because response requires follow up update", &v16, 0xCu);
        }

        configuration = [(CloudLibraryOperation *)self configuration];
        v11 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration];
        clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
        [v11 updateSagaLibraryWithClientIdentity:clientIdentity forReason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:0];
LABEL_22:

        goto LABEL_25;
      }

LABEL_19:
      [(CloudLibraryOperation *)self setStatus:3];
      v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        selfCopy4 = self;
        v18 = 1024;
        LODWORD(v19) = 1;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting library update because pin operation failed actionFailed=%{BOOL}u", &v16, 0x12u);
      }

      configuration = [(CloudLibraryOperation *)self configuration];
      v11 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration];
      clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
      [v11 updateSagaLibraryToReconcileLibraryPinsWithClientIdentity:clientIdentity forReason:9 completionHandler:0];
      goto LABEL_22;
    }
  }

  else if ([(CloudLibraryOperation *)self status]== 3)
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      error = [(CloudLibraryOperation *)self error];
      v16 = 138543618;
      selfCopy4 = self;
      v18 = 2114;
      v19 = error;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Operation permanently failed with error=%{public}@", &v16, 0x16u);
    }

    goto LABEL_19;
  }

  configuration = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(configuration, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, configuration, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping library update because the response did not contain update-required flag", &v16, 0xCu);
  }

LABEL_25:
}

- (BOOL)canRunRequest
{
  v3 = +[ICUserIdentityStore defaultIdentityStore];
  userIdentity = [(CloudLibraryOperation *)self userIdentity];
  v16 = 0;
  v5 = [v3 getPropertiesForUserIdentity:userIdentity error:&v16];
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

    msv_errorByRemovingUnsafeUserInfo = [NSError msv_errorWithDomain:v11 code:v13 debugDescription:v12];
    [(CloudLibraryOperation *)self setError:msv_errorByRemovingUnsafeUserInfo];
  }

  else
  {
    [(CloudLibraryOperation *)self setStatus:3];
    msv_errorByRemovingUnsafeUserInfo = [v6 msv_errorByRemovingUnsafeUserInfo];
    v9 = [NSError msv_errorWithDomain:ICErrorDomain code:-8400 underlyingError:msv_errorByRemovingUnsafeUserInfo debugDescription:@"cannot load user identity properties"];
    [(CloudLibraryOperation *)self setError:v9];
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (SagaLibraryPinBaseOperation)initWithConfiguration:(id)configuration persistentID:(int64_t)d cloudID:(int64_t)iD cloudLibraryID:(id)libraryID type:(int64_t)type defaultAction:(int64_t)action clientIdentity:(id)identity position:(int64_t)self0 completion:(id)self1
{
  libraryIDCopy = libraryID;
  completionCopy = completion;
  v27.receiver = self;
  v27.super_class = SagaLibraryPinBaseOperation;
  v19 = [(CloudLibraryOperation *)&v27 initWithConfiguration:configuration clientIdentity:identity];
  v20 = v19;
  if (v19)
  {
    v19->_pinPersistentID = 0;
    positionUUID = v19->_positionUUID;
    v19->_positionUUID = 0;

    v20->_persistentID = d;
    v22 = [libraryIDCopy copy];
    cloudLibraryID = v20->_cloudLibraryID;
    v20->_cloudLibraryID = v22;

    v20->_entityType = type;
    v20->_position = position;
    v24 = objc_retainBlock(completionCopy);
    localDatabaseUpdateCompletionHandler = v20->_localDatabaseUpdateCompletionHandler;
    v20->_localDatabaseUpdateCompletionHandler = v24;

    v20->_action = action;
    v20->_sagaID = iD;
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

+ (void)_setKeepLocalOnPinnedEntityWithPersistentIDs:(id)ds types:(id)types configuration:(id)configuration
{
  dsCopy = ds;
  typesCopy = types;
  configurationCopy = configuration;
  userIdentity = [configurationCopy userIdentity];
  v11 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];

  clientIdentity = [configurationCopy clientIdentity];

  [v11 setClientIdentity:clientIdentity];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E2FB4;
  v15[3] = &unk_1001DD9D8;
  v16 = dsCopy;
  v17 = typesCopy;
  v18 = 1032;
  v13 = typesCopy;
  v14 = dsCopy;
  [v11 databaseConnectionAllowingWrites:1 withBlock:v15];
}

+ (void)prepareAllPinsForAutomaticDownloadForConfiguration:(id)configuration
{
  configurationCopy = configuration;
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
    userIdentity = [configurationCopy userIdentity];
    v5 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];

    clientIdentity = [configurationCopy clientIdentity];
    [v5 setClientIdentity:clientIdentity];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E3984;
    v8[3] = &unk_1001DD9B0;
    v8[4] = &buf;
    v8[5] = &v9;
    [v5 databaseConnectionAllowingWrites:0 withBlock:v8];
    if ([*(*(&buf + 1) + 40) count])
    {
      [SagaLibraryPinBaseOperation _setKeepLocalOnPinnedEntityWithPersistentIDs:*(*(&buf + 1) + 40) types:v10[5] configuration:configurationCopy];
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
      *(&buf + 4) = configurationCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not enabling downloads of library pins for configuration=%{public}@", &buf, 0xCu);
    }
  }
}

@end