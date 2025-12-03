@interface CloudUpdateLibraryOperation
- (BOOL)_ensureDeviceIsRegistered;
- (BOOL)_updateLibrary;
- (BOOL)_uploadLibrary;
- (CloudUpdateLibraryOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity reason:(int64_t)reason updateTaskHelper:(id)helper;
- (id)_determineResultsURLWhenReadyWithUpdateID:(id)d retryTimeout:(double)timeout responseStatusCode:(int64_t *)code;
- (void)_clearAllCloudIDs;
- (void)_prepareLibraryForInitialUpdate;
- (void)cancel;
- (void)dealloc;
- (void)main;
@end

@implementation CloudUpdateLibraryOperation

- (void)_clearAllCloudIDs
{
  if ([(CloudUpdateLibraryOperation *)self uploadingLibraryIsSupported])
  {
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10011E2CC;
    v4[3] = &unk_1001DEE98;
    v4[4] = self;
    [musicLibrary performDatabaseTransactionWithBlock:v4];
  }

  else
  {
    musicLibrary = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(musicLibrary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, musicLibrary, OS_LOG_TYPE_DEFAULT, "%{public}@ - Uploading is not supported, no temporary cloud ids to clear.", buf, 0xCu);
    }
  }
}

- (id)_determineResultsURLWhenReadyWithUpdateID:(id)d retryTimeout:(double)timeout responseStatusCode:(int64_t *)code
{
  dCopy = d;
  cuid = [(CloudUpdateLibraryOperation *)self cuid];
  troveID = [(CloudUpdateLibraryOperation *)self troveID];
  v11 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"auto-update", &__kCFBooleanFalse, @"incremental", &off_1001EDD80, @"min-itunes-match-compatible-version", &off_1001EDD98, @"itunes-match-protocol-version", cuid, @"cuid", troveID, @"troveid", dCopy, @"update-id", 0];

  v12 = sub_1000A760C(0, @"cloud-library-update-check", 3, v11, 60.0);
  if (v12)
  {
    *&v53 = 0;
    *(&v53 + 1) = &v53;
    v54 = 0x3032000000;
    v55 = sub_10011EA78;
    v56 = sub_10011EA88;
    v57 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_10011EA78;
    v45 = sub_10011EA88;
    v46 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_10011EA78;
    v39 = sub_10011EA88;
    v40 = 0;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10011EA90;
    v30[3] = &unk_1001DED08;
    v32 = &v53;
    v33 = &v41;
    v34 = &v35;
    v13 = dispatch_semaphore_create(0);
    v31 = v13;
    [v12 startGeniusRequestWithRetryTimeout:@"determineResultsURL" debugName:v30 connectionResponseBlock:timeout];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    v14 = v36[5];
    if (v14)
    {
      domain = [v14 domain];
      v16 = [domain isEqualToString:@"SSURLConnectionRequestGeniusAdditionsErrorDomain"];

      if (v16)
      {
        userInfo = [v36[5] userInfo];
        v18 = [userInfo objectForKeyedSubscript:@"server-status-code"];
        integerValue = [v18 integerValue];

        v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v42[5];
          *buf = 138543874;
          selfCopy3 = self;
          v49 = 2048;
          v50 = integerValue;
          v51 = 2114;
          v52 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to determine result URLs with server status code: %ld response: %{public}@", buf, 0x20u);
        }

        v22 = 0;
LABEL_18:

        if (!code)
        {
LABEL_20:
          v23 = v22;

          _Block_object_dispose(&v35, 8);
          _Block_object_dispose(&v41, 8);

          _Block_object_dispose(&v53, 8);
          v24 = v23;
          goto LABEL_21;
        }

LABEL_19:
        *code = integerValue;
        goto LABEL_20;
      }

      v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v28 = v36[5];
        *buf = 138543618;
        selfCopy3 = self;
        v49 = 2114;
        v50 = v28;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to determine result URLs with unknown error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v25 = v42[5];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = 0;
        integerValue = -1;
        if (!code)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v26 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v42[5];
        *buf = 138543618;
        selfCopy3 = self;
        v49 = 2114;
        v50 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ - Determine result URLs response: %{public}@", buf, 0x16u);
      }

      v20 = [v42[5] objectForKey:@"additional-fields-url"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [NSURL URLWithString:v20];
        integerValue = 0;
        goto LABEL_18;
      }
    }

    v22 = 0;
    integerValue = -1;
    goto LABEL_18;
  }

  v23 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v53) = 138543362;
    *(&v53 + 4) = self;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@ - Could not create determineResultsURLRequest", &v53, 0xCu);
  }

  v24 = 0;
LABEL_21:

  return v24;
}

- (BOOL)_updateLibrary
{
  connection = [(CloudLibraryOperation *)self connection];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v2 = +[ICDeviceInfo currentDeviceInfo];
  buildVersion = [v2 buildVersion];

  v176 = 0;
  v177 = &v176;
  v178 = 0x2020000000;
  v179 = 0;
  v172 = 0;
  v173 = &v172;
  v174 = 0x2020000000;
  v175 = 0;
  v168 = 0;
  v169 = &v168;
  v170 = 0x2020000000;
  v171 = 0;
  v164 = 0;
  v165 = &v164;
  v166 = 0x2020000000;
  v167 = 0;
  v160 = 0;
  v161 = &v160;
  v162 = 0x2020000000;
  v163 = 0;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v159 = 0;
  v154[0] = 0;
  v154[1] = v154;
  v154[2] = 0x2020000000;
  v155 = 0;
  v152[0] = 0;
  v152[1] = v152;
  v152[2] = 0x2020000000;
  v153 = 0;
  v148 = 0;
  v149 = &v148;
  v150 = 0x2020000000;
  v151 = 0;
  v142 = 0;
  v143 = &v142;
  v144 = 0x3032000000;
  v145 = sub_10011EA78;
  v146 = sub_10011EA88;
  v147 = 0;
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  sagaOnDiskDatabaseRevision = [musicLibrary2 sagaOnDiskDatabaseRevision];

  sagaInitiateClientResetSync = [musicLibrary sagaInitiateClientResetSync];
  v7 = [musicLibrary valueForDatabaseProperty:@"MLCloudNeedsContainerRefetch"];
  bOOLValue = [v7 BOOLValue];

  v9 = [musicLibrary valueForDatabaseProperty:@"MLCloudLibraryForcePerformDeltaSync"];
  bOOLValue2 = [v9 BOOLValue];

  musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
  sagaClientFeaturesVersion = [musicLibrary3 sagaClientFeaturesVersion];

  v117 = [ICUpdateRequest requestWithDatabaseRevision:1];
  selfCopy3 = self;
  [v117 setSagaClientFeaturesVersion:sagaClientFeaturesVersion];
  reason = self->_reason;
  if (reason <= 7 && ((1 << reason) & 0x8A) != 0)
  {
    v14 = 2;
  }

  else if ([(CloudUpdateLibraryOperation *)self allowNoisyAuthPrompt])
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [v117 setVerificationInteractionLevel:v14];
  if (MSVDeviceOSIsInternalInstall())
  {
    v15 = +[ICDefaults standardDefaults];
    shouldForceServerToUseDAAPDebugFeature = [v15 shouldForceServerToUseDAAPDebugFeature];

    selfCopy3 = self;
    if (shouldForceServerToUseDAAPDebugFeature)
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - Defaults to use DAAP debug feature is set.", buf, 0xCu);
      }

      [v117 setIncludeCloudLibraryDAAPDebugFeature:1];
      selfCopy3 = self;
    }
  }

  v18 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = selfCopy3;
    *&buf[12] = 1024;
    *&buf[14] = sagaOnDiskDatabaseRevision;
    *&buf[18] = 2114;
    *&buf[20] = sagaClientFeaturesVersion;
    *&buf[28] = 1024;
    *&buf[30] = sagaInitiateClientResetSync;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting update with onDiskDatabaseRevision=%u, onDiskClientFeaturesVersionString=%{public}@, sagaClientInitiateResetSync=%{BOOL}u", buf, 0x22u);
  }

  v19 = dispatch_semaphore_create(0);
  v129[0] = _NSConcreteStackBlock;
  v129[1] = 3221225472;
  v129[2] = sub_100120288;
  v129[3] = &unk_1001DEDF8;
  v133 = &v172;
  v134 = &v164;
  v135 = v154;
  v136 = &v156;
  v137 = v152;
  v138 = &v142;
  v139 = &v168;
  v140 = &v160;
  v141 = &v148;
  v132 = &v176;
  v129[4] = self;
  v111 = buildVersion;
  v130 = v111;
  dsema = v19;
  v131 = dsema;
  [connection sendRequest:v117 withResponseHandler:v129];
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    error = [(CloudLibraryOperation *)self error];
    v22 = *(v177 + 6);
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = error;
    *&buf[22] = 1024;
    *&buf[24] = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - Update finished with error=%{public}@, Server database revision: %u", buf, 0x1Cu);
  }

  if (*(v173 + 24) == 1)
  {
    v23 = *(v165 + 24);
    if (v23 == 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2 * (v23 == 2);
    }

    v25 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = ICCloudClientGetStringForAddToPlaylistBehavior();
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ - Update response contained add to playlist behavior: %{public}@", buf, 0x16u);
    }

    musicLibrary4 = [(CloudLibraryOperation *)self musicLibrary];
    [musicLibrary4 icd_setSagaCloudAddToPlaylistBehavior:v24];
  }

  if (*(v169 + 24) == 1)
  {
    v28 = *(v161 + 24);
    if (v28 == 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2 * (v28 == 2);
    }

    v30 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = ICCloudClientGetStringForAddToLibraryBehavior();
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ - Update response contained add to library behavior: %{public}@", buf, 0x16u);
    }

    musicLibrary5 = [(CloudLibraryOperation *)self musicLibrary];
    [musicLibrary5 icd_setSagaCloudFavoriteSongAddToLibraryBehavior:v29];
  }

  error2 = [(CloudLibraryOperation *)self error];

  if (!error2)
  {
    selfCopy13 = self;
    if ([(CloudUpdateLibraryOperation *)self isCancelled])
    {
      [(CloudLibraryOperation *)self setStatus:4];
      v43 = [NSError ic_cloudClientErrorWithCode:2001 userInfo:0];
      [(CloudLibraryOperation *)self setError:v43];
    }

    else
    {
      if (*(v177 + 6))
      {
        v44 = 1;
LABEL_47:
        v47 = sub_100004B8C() | v44 ^ 1;
        if (v47)
        {
          v48 = sagaOnDiskDatabaseRevision;
        }

        else
        {
          v48 = 0;
        }

        if (((v47 | sagaInitiateClientResetSync) & 1) == 0)
        {
          if (v149[3])
          {
            v48 = 0;
          }

          else if ([musicLibrary sagaNeedsFullUpdate])
          {
            v48 = 1;
          }

          else
          {
            v48 = sagaOnDiskDatabaseRevision;
          }
        }

        v49 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          sagaNeedsFullUpdate = [musicLibrary sagaNeedsFullUpdate];
          v51 = *(v157 + 24);
          *buf = 138544898;
          *&buf[4] = selfCopy13;
          *&buf[12] = 1024;
          *&buf[14] = v48;
          *&buf[18] = 1024;
          *&buf[20] = sagaInitiateClientResetSync;
          *&buf[24] = 1024;
          *&buf[26] = bOOLValue;
          *&buf[30] = 1024;
          *&buf[32] = bOOLValue2;
          v186 = 1024;
          v187 = sagaNeedsFullUpdate;
          v188 = 1024;
          v189 = v51;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ - onDiskDatabaseRevision=%d, sagaClientInitiateResetSync=%{BOOL}u, forceUpdate=%{BOOL}u, forcePerformDeltaSync=%{BOOL}u, needs full update (client=%{BOOL}u, server=%{BOOL}u)", buf, 0x30u);
        }

        if (!v44)
        {
          goto LABEL_120;
        }

        selfCopy6 = self;
        if (*(v177 + 6) == v48)
        {
          if (((bOOLValue | bOOLValue2) & 1) == 0)
          {
            [(CloudLibraryOperation *)self setStatus:1];
            v97 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = self;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%{public}@ - On-disk database revision is the same as the server database revision, skipping update.", buf, 0xCu);
            }

            v98 = [musicLibrary valueForDatabaseProperty:@"MLCloudLastLibraryUpdate"];
            intValue = [v98 intValue];

            if (!intValue)
            {
              v100 = +[NSDate date];
              v101 = sub_10010275C();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 1024;
                *&buf[14] = 0;
                *&buf[18] = 2114;
                *&buf[20] = v100;
                _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%{public}@ - lastSagaUpdateTimeOnDisk=%d. Setting it to %{public}@", buf, 0x1Cu);
              }

              musicLibrary6 = [(CloudLibraryOperation *)self musicLibrary];
              [musicLibrary6 setSagaLastLibraryUpdateTime:v100];
            }

            musicLibrary7 = [(CloudLibraryOperation *)self musicLibrary];
            sagaLastCloudUpdateClientBuildVersion = [musicLibrary7 sagaLastCloudUpdateClientBuildVersion];

            if (![sagaLastCloudUpdateClientBuildVersion length] || objc_msgSend(v111, "length") && (objc_msgSend(sagaLastCloudUpdateClientBuildVersion, "isEqualToString:", v111) & 1) == 0)
            {
              v105 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = sagaLastCloudUpdateClientBuildVersion;
                *&buf[22] = 2114;
                *&buf[24] = v111;
                _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "%{public}@ - clientBuildVersionOnDisk=%{public}@. Setting it to %{public}@", buf, 0x20u);
              }

              musicLibrary8 = [(CloudLibraryOperation *)self musicLibrary];
              [musicLibrary8 setSagaLastCloudUpdateClientBuildVersion:v111];
            }

            goto LABEL_120;
          }

          v53 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ - On-disk database revision is the same as the server database revision, but force update is TRUE.", buf, 0xCu);
          }

          selfCopy6 = self;
        }

        else if (bOOLValue2)
        {
          [musicLibrary setSagaForcePerformDeltaSync:0];
          bOOLValue2 = 0;
        }

        v54 = [SagaImporter alloc];
        v55 = *(v149 + 24);
        v56 = sagaClientFeaturesVersion;
        if ([v143[5] length])
        {
          v56 = v143[5];
        }

        clientIdentity = [(CloudLibraryOperation *)selfCopy6 clientIdentity];
        LODWORD(v108) = v48;
        HIDWORD(v108) = *(v177 + 6);
        v58 = [(SagaImporter *)v54 initWithConnection:connection serverInitiatedReset:v55 clientInitiatedReset:sagaInitiateClientResetSync clientInitiatedReloadForPins:bOOLValue2 clientFeaturesVersion:v56 clientIdentity:clientIdentity fromRevision:v108 toRevision:?];
        [(CloudUpdateLibraryOperation *)selfCopy6 setImporter:v58];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 0;
        v59 = dispatch_semaphore_create(0);
        importer = [(CloudUpdateLibraryOperation *)self importer];
        v126[0] = _NSConcreteStackBlock;
        v126[1] = 3221225472;
        v126[2] = sub_100120550;
        v126[3] = &unk_1001DEE20;
        v128 = buf;
        v126[4] = self;
        v110 = v59;
        v127 = v110;
        [importer performUpdateWithCompletionHandler:v126];

        dispatch_semaphore_wait(v110, 0xFFFFFFFFFFFFFFFFLL);
        selfCopy7 = self;
        [(CloudUpdateLibraryOperation *)self setImporter:0];
        if (MSVDeviceOSIsInternalInstall() && ((+[ICDefaults standardDefaults](ICDefaults, "standardDefaults"), v62 = objc_claimAutoreleasedReturnValue(), v63 = [v62 shouldTreatInitialSagaImportAsFailed], !v48) ? (v64 = v63) : (v64 = 0), v62, selfCopy7 = self, v64))
        {
          *(*&buf[8] + 24) = 0;
          v65 = *(v177 + 6);
          musicLibrary9 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary9 setSagaOnDiskDatabaseRevision:v65];

          self->_didEncounterFatalErrorImportingPayload = 1;
          v67 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *v181 = 138543362;
            selfCopy12 = self;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}@ - shouldTreatInitialSagaImportAsFailed is set. Will force initial import to fail.", v181, 0xCu);
          }

          [(CloudLibraryOperation *)self setStatus:3];
          v68 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
          [(CloudLibraryOperation *)self setError:v68];
        }

        else if (*(*&buf[8] + 24) == 1)
        {
          [(CloudLibraryOperation *)selfCopy7 setStatus:1];
          v69 = *(v177 + 6);
          musicLibrary10 = [(CloudLibraryOperation *)selfCopy7 musicLibrary];
          [musicLibrary10 setSagaOnDiskDatabaseRevision:v69];

          v71 = v143[5];
          musicLibrary11 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary11 setSagaClientFeaturesVersion:v71];

          musicLibrary12 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary12 setSagaLastCloudUpdateClientBuildVersion:v111];

          v74 = +[NSDate date];
          musicLibrary13 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary13 setSagaLastLibraryUpdateTime:v74];

          musicLibrary14 = [(CloudLibraryOperation *)self musicLibrary];
          LODWORD(musicLibrary13) = [musicLibrary14 sagaNeedsFullUpdate];

          if (musicLibrary13)
          {
            musicLibrary15 = [(CloudLibraryOperation *)self musicLibrary];
            [musicLibrary15 setSagaNeedsFullUpdate:0];

            v78 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              *v181 = 138543362;
              selfCopy12 = self;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ - Clearing flag to perform a reset sync.", v181, 0xCu);
            }
          }

          musicLibrary16 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary16 setSagaInitiateClientResetSync:0];

          musicLibrary17 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary17 setSagaForcePerformDeltaSync:0];

          if (!v48)
          {
            v81 = sub_10010275C();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              *v181 = 138543618;
              selfCopy12 = self;
              v183 = 2048;
              v184 = 710000;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting initial user version: %lli", v181, 0x16u);
            }

            musicLibrary18 = [(CloudLibraryOperation *)self musicLibrary];
            [musicLibrary18 icd_setSagaDatabaseUserVersion:710000];

            keyExistsAndHasValidFormat = 0;
            if (!CFPreferencesGetAppBooleanValue(@"MusicShowCloudMediaEnabledSetting", @"com.apple.mobileipod", &keyExistsAndHasValidFormat) && keyExistsAndHasValidFormat)
            {
              CFPreferencesSetAppValue(@"MusicShowCloudMediaEnabledSetting", 0, @"com.apple.mobileipod");
              CFPreferencesAppSynchronize(@"com.apple.mobileipod");
              notify_post("com.apple.mobileipod-prefsChanged");
            }

            v83 = sub_10010275C();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *v181 = 138543362;
              selfCopy12 = self;
              _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting cloud library availability did change notification (library became available)", v181, 0xCu);
            }

            [musicLibrary notifyCloudLibraryAvailabilityDidChange];
            v84 = +[NSMutableArray array];
            musicLibrary19 = [(CloudLibraryOperation *)self musicLibrary];
            v123[0] = _NSConcreteStackBlock;
            v123[1] = 3221225472;
            v123[2] = sub_1001205C0;
            v123[3] = &unk_1001DEE70;
            v123[4] = self;
            v109 = v84;
            v124 = v109;
            [musicLibrary19 databaseConnectionAllowingWrites:0 withBlock:v123];

            if ([v109 count])
            {
              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              obj = v109;
              v86 = [obj countByEnumeratingWithState:&v119 objects:v180 count:16];
              if (v86)
              {
                v87 = *v120;
                do
                {
                  for (i = 0; i != v86; i = i + 1)
                  {
                    if (*v120 != v87)
                    {
                      objc_enumerationMutation(obj);
                    }

                    longLongValue = [*(*(&v119 + 1) + 8 * i) longLongValue];
                    v90 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
                    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                    {
                      *v181 = 138543618;
                      selfCopy12 = self;
                      v183 = 2048;
                      v184 = longLongValue;
                      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%{public}@ - Triggering post-unification playlist artwork upload for playlist persistentID: %lld", v181, 0x16u);
                    }

                    configuration = [(CloudLibraryOperation *)self configuration];
                    v92 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration];
                    clientIdentity2 = [(CloudLibraryOperation *)self clientIdentity];
                    [v92 uploadArtworkForPlaylistWithPersistentID:longLongValue clientIdentity:clientIdentity2 completionHandler:0];
                  }

                  v86 = [obj countByEnumeratingWithState:&v119 objects:v180 count:16];
                }

                while (v86);
              }
            }
          }
        }

        else
        {
          selfCopy7->_didEncounterFatalErrorImportingPayload = 1;
          v96 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            *v181 = 138543362;
            selfCopy12 = selfCopy7;
            _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%{public}@ - Error importing cloud library payload. Will treat as permanent failure", v181, 0xCu);
          }

          [(CloudLibraryOperation *)self setStatus:3];
        }

        _Block_object_dispose(buf, 8);
LABEL_120:
        v46 = [(CloudLibraryOperation *)self status]== 1;
        goto LABEL_121;
      }

      [(CloudLibraryOperation *)self setStatus:5];
      v190 = NSLocalizedDescriptionKey;
      v191 = @"Failed to get a database revision during library update operation";
      v94 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v190 count:1];
      v95 = [NSError ic_cloudClientErrorWithCode:2002 userInfo:v94];
      [(CloudLibraryOperation *)self setError:v95];

      v43 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to get a non-zero server database revision.", buf, 0xCu);
      }
    }

    v44 = 0;
    selfCopy13 = self;
    goto LABEL_47;
  }

  error3 = [(CloudLibraryOperation *)self error];
  domain = [error3 domain];
  if (([domain isEqualToString:ICCloudClientErrorDomain] & 1) == 0)
  {

LABEL_42:
    [(CloudLibraryOperation *)self setStatus:5];
    v40 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      error4 = [(CloudLibraryOperation *)self error];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = error4;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@ - Received error when doing a library update request: %{public}@", buf, 0x16u);
    }

    goto LABEL_44;
  }

  error5 = [(CloudLibraryOperation *)self error];
  v37 = [error5 code] == 2019;

  if (!v37)
  {
    goto LABEL_42;
  }

  error6 = [(CloudLibraryOperation *)self error];
  userInfo = [error6 userInfo];
  v40 = [userInfo objectForKey:@"CloudLibraryConnectionRequestForbiddenAdditonalErrorCodeKey"];

  if ([v40 integerValue]== 950)
  {
    v41 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}@ - Server response indicates the subscription has lapsed", buf, 0xCu);
    }

    self->_didSubscriptionStatusLapse = 1;
    [(CloudLibraryOperation *)self setStatus:3];
  }

LABEL_44:

  v46 = 0;
LABEL_121:

  _Block_object_dispose(&v142, 8);
  _Block_object_dispose(&v148, 8);
  _Block_object_dispose(v152, 8);
  _Block_object_dispose(v154, 8);
  _Block_object_dispose(&v156, 8);
  _Block_object_dispose(&v160, 8);
  _Block_object_dispose(&v164, 8);
  _Block_object_dispose(&v168, 8);
  _Block_object_dispose(&v172, 8);
  _Block_object_dispose(&v176, 8);

  return v46;
}

- (void)_prepareLibraryForInitialUpdate
{
  [(CloudLibraryOperation *)self musicLibrary];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100120814;
  v9 = &unk_1001DEDD0;
  v11 = v10 = self;
  v3 = v11;
  [v3 performDatabaseTransactionWithBlock:&v6];
  v4 = [(CloudLibraryOperation *)self configuration:v6];
  v5 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v4];
  [v5 cancelPendingChangesForLibraryType:1];
}

- (BOOL)_uploadLibrary
{
  if (!CFPreferencesGetAppBooleanValue(@"DisableLibraryUpload", @"com.apple.itunescloudd", 0))
  {
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    sagaPrefersToMergeWithCloudLibrary = [musicLibrary sagaPrefersToMergeWithCloudLibrary];

    if (sagaPrefersToMergeWithCloudLibrary)
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        v8 = "%{public}@ - Setting should-upload to true because MLCloudLibraryPrefersToMerge is set to YES";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      }
    }

    else
    {
      if (!CFPreferencesGetAppBooleanValue(@"ForceLibraryUnification", @"com.apple.itunescloudd", 0))
      {
        v180 = 0;
LABEL_13:
        v9 = ML3TrackPropertyMediaType;
        v10 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyMediaType value:&off_1001EDD68 comparison:10];
        v266[0] = v10;
        v11 = [ML3PropertyPredicate predicateWithProperty:ML3TrackPropertyIsInMyLibrary];
        v266[1] = v11;
        v12 = [ML3PropertyPredicate predicateWithProperty:ML3TrackPropertyIsPlayable];
        v266[2] = v12;
        v13 = [NSArray arrayWithObjects:v266 count:3];
        v3 = [ML3AllCompoundPredicate predicateMatchingPredicates:v13];

        musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
        v187 = [ML3Track queryWithLibrary:musicLibrary2 predicate:v3];

        countOfEntities = [v187 countOfEntities];
        v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = countOfEntities;
          *&buf[22] = 2114;
          v263 = v187;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Found %lu songs to upload from query: %{public}@", buf, 0x20u);
        }

        cuid = [(CloudUpdateLibraryOperation *)self cuid];
        troveID = [(CloudUpdateLibraryOperation *)self troveID];
        v18 = [NSNumber numberWithUnsignedInteger:countOfEntities];
        v188 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"auto-update", &__kCFBooleanFalse, @"incremental", &off_1001EDD80, @"min-itunes-match-compatible-version", &off_1001EDD98, @"itunes-match-protocol-version", cuid, @"cuid", troveID, @"troveid", v18, @"num-tracks", 0];

        v234 = 0;
        v235 = &v234;
        v236 = 0x2050000000;
        v19 = qword_100213E48;
        v237 = qword_100213E48;
        if (!qword_100213E48)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100122FD8;
          v263 = &unk_1001DF318;
          v264 = &v234;
          sub_100122FD8(buf);
          v19 = v235[3];
        }

        v20 = v19;
        _Block_object_dispose(&v234, 8);
        if (v19)
        {
          v21 = objc_alloc_init(v19);
          v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v21 state] == 2);
          [v188 setObject:v22 forKey:@"restore-in-progress"];
        }

        v23 = sub_1000A760C(0, @"cloud-library-update-request", 0, v188, 60.0);
        [(CloudUpdateLibraryOperation *)self setUpdateRequest:v23];

        updateRequest = [(CloudUpdateLibraryOperation *)self updateRequest];
        LODWORD(v23) = updateRequest == 0;

        v25 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v23)
        {
          if (v26)
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ - Error creating updateRequest.", buf, 0xCu);
          }

          v4 = 0;
          goto LABEL_101;
        }

        if (v26)
        {
          updateRequest2 = [(CloudUpdateLibraryOperation *)self updateRequest];
          v28 = objc_opt_class();
          v29 = v28;
          updateRequest3 = [(CloudUpdateLibraryOperation *)self updateRequest];
          *buf = 138543874;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v28;
          *&buf[22] = 2048;
          v263 = updateRequest3;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ - Sending upload library request: <%{public}@ %p>", buf, 0x20u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v263 = sub_10011EA78;
        v264 = sub_10011EA88;
        v265 = 0;
        v234 = 0;
        v235 = &v234;
        v236 = 0x3032000000;
        v237 = sub_10011EA78;
        v238 = sub_10011EA88;
        v239 = 0;
        v232[0] = 0;
        v232[1] = v232;
        v232[2] = 0x3032000000;
        v232[3] = sub_10011EA78;
        v232[4] = sub_10011EA88;
        v233 = 0;
        v31 = dispatch_semaphore_create(0);
        updateRequest4 = [(CloudUpdateLibraryOperation *)self updateRequest];
        v227[0] = _NSConcreteStackBlock;
        v227[1] = 3221225472;
        v227[2] = sub_1001231C4;
        v227[3] = &unk_1001DED08;
        v229 = buf;
        v230 = &v234;
        v231 = v232;
        dsema = v31;
        v228 = dsema;
        [updateRequest4 startGeniusRequestWithRetryTimeout:@"libraryUpdateRequest" debugName:v227 connectionResponseBlock:300.0];

        dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
        v33 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(*&buf[8] + 40);
          v35 = objc_opt_class();
          v36 = *(*&buf[8] + 40);
          *v249 = 138543874;
          *&v249[4] = self;
          *&v249[12] = 2114;
          *&v249[14] = v35;
          *&v249[22] = 2048;
          v250 = v36;
          v37 = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ - Got upload library response: <%{public}@ %p>", v249, 0x20u);
        }

        [(CloudUpdateLibraryOperation *)self setUpdateRequest:0];
        v38 = v235[5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v235[5];
            *v249 = 138543618;
            *&v249[4] = self;
            *&v249[12] = 2114;
            *&v249[14] = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ - Upload library response body: %{public}@", v249, 0x16u);
          }

          v41 = [v235[5] objectForKey:@"url"];
          if (v41)
          {
            v179 = [NSURL URLWithString:v41];
          }

          else
          {
            v179 = 0;
          }

          v183 = [v235[5] objectForKey:@"update-id"];

          if (v179)
          {
            v42 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *v249 = 138543618;
              *&v249[4] = self;
              *&v249[12] = 2114;
              *&v249[14] = v179;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ - Determined upload URL: %{public}@", v249, 0x16u);
            }

            v43 = NSTemporaryDirectory();
            v261[0] = v43;
            v261[1] = @"CloudLibraryUpload.plist";
            v44 = [NSArray arrayWithObjects:v261 count:2];
            v178 = [NSURL fileURLWithPathComponents:v44];

            v45 = +[NSFileManager defaultManager];
            path = [v178 path];
            [v45 createFileAtPath:path contents:0 attributes:0];

            v226 = 0;
            v176 = [NSFileHandle fileHandleForWritingToURL:v178 error:&v226];
            v47 = v226;
            v48 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            v49 = v48;
            v175 = v47;
            if (v47)
            {
              v177 = v48;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *v249 = 138543618;
                *&v249[4] = self;
                *&v249[12] = 2114;
                *&v249[14] = v47;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to open file for writing library upload metadata plist with error: %{public}@", v249, 0x16u);
              }

              v4 = 0;
            }

            else
            {
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                path2 = [v178 path];
                *v249 = 138543618;
                *&v249[4] = self;
                *&v249[12] = 2114;
                *&v249[14] = path2;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ - Writing library upload metadata to plist at: %{public}@", v249, 0x16u);
              }

              v52 = [[MSVPropertyListEncoder alloc] initWithOutputFileHandle:v176];
              [v52 startDictionary];
              cuid2 = [(CloudUpdateLibraryOperation *)self cuid];
              [v52 setObject:cuid2 forKey:@"cuid"];

              troveID2 = [(CloudUpdateLibraryOperation *)self troveID];
              [v52 setObject:troveID2 forKey:@"troveid"];

              [v52 setObject:&off_1001EDD80 forKey:@"min-itunes-match-compatible-version"];
              [v52 setObject:&off_1001EDD98 forKey:@"itunes-match-protocol-version"];
              [v52 setObject:&off_1001EDD80 forKey:@"min-compatible-version"];
              [v52 setObject:&off_1001EDD80 forKey:@"protocol-version"];
              v55 = arc4random();
              v56 = [NSString stringWithFormat:@"%08X%08X", v55, arc4random()];
              [v52 setObject:v56 forKey:@"persistent-library-id"];

              v57 = [NSNumber numberWithBool:v180];
              [v52 setObject:v57 forKey:@"should-upload"];

              [v52 startArrayForKey:@"tracks"];
              v169 = objc_autoreleasePoolPush();
              v58 = objc_alloc_init(CloudGeniusUtilities);
              v260[0] = v9;
              v260[1] = ML3TrackPropertyBaseLocationID;
              v260[2] = ML3TrackPropertyStoreProtectionType;
              v260[3] = ML3TrackPropertyUserRatingIsDerived;
              v260[4] = ML3TrackPropertyUserAlbumRatingIsDerived;
              v59 = [NSArray arrayWithObjects:v260 count:5];
              allML3TrackPropertiesWithGeniusTrackProperties = [(CloudGeniusUtilities *)v58 allML3TrackPropertiesWithGeniusTrackProperties];
              v61 = [allML3TrackPropertiesWithGeniusTrackProperties arrayByAddingObjectsFromArray:v59];
              v174 = v59;

              v62 = [v61 count];
              v63 = [v59 count];
              allGeniusTrackPropertiesWithML3TrackProperties = [(CloudGeniusUtilities *)v58 allGeniusTrackPropertiesWithML3TrackProperties];
              v259[0] = @"persistent-id";
              v259[1] = @"kind";
              v65 = [NSArray arrayWithObjects:v259 count:2];
              v173 = [allGeniusTrackPropertiesWithML3TrackProperties arrayByAddingObjectsFromArray:v65];

              [NSDictionary sharedKeySetForKeys:v173];
              v220[0] = _NSConcreteStackBlock;
              v220[1] = 3221225472;
              v220[2] = sub_100123294;
              v220[3] = &unk_1001DED30;
              v168 = v220[4] = self;
              v221 = v168;
              v225 = v62 - v63;
              v222 = v61;
              v172 = v58;
              v223 = v172;
              v177 = v52;
              v224 = v177;
              v167 = v222;
              [v187 enumeratePersistentIDsAndProperties:v222 usingBlock:v220];
              [v177 endArray];
              context = objc_autoreleasePoolPush();
              if (v180)
              {
                [v177 setObject:&__kCFBooleanTrue forKey:@"process-playlists"];
                [v177 startArrayForKey:@"playlists"];
                v66 = ML3ContainerPropertyDistinguishedKind;
                v181 = [ML3ComparisonPredicate predicateWithProperty:"predicateWithProperty:equalToInteger:" equalToInteger:?];
                v257[0] = v181;
                v165 = [ML3ComparisonPredicate predicateWithProperty:v66 value:&off_1001EDDB0 comparison:4];
                v256[0] = v165;
                v163 = [ML3ComparisonPredicate predicateWithProperty:v66 value:&off_1001EDDC8 comparison:6];
                v256[1] = v163;
                v161 = [NSArray arrayWithObjects:v256 count:2];
                v160 = [ML3AllCompoundPredicate predicateMatchingPredicates:v161];
                v257[1] = v160;
                v159 = [NSArray arrayWithObjects:v257 count:2];
                v67 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v159];
                v258[0] = v67;
                v68 = ML3ContainerPropertyContainedMediaType;
                v69 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyContainedMediaType equalToInteger:0];
                v255[0] = v69;
                v70 = [ML3ComparisonPredicate predicateWithProperty:v68 value:&off_1001EDD68 comparison:10];
                v255[1] = v70;
                v71 = [NSArray arrayWithObjects:v255 count:2];
                v72 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v71];
                v258[1] = v72;
                v73 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyIsHidden equalToInteger:0];
                v258[2] = v73;
                v74 = [NSArray arrayWithObjects:v258 count:3];
                v158 = [ML3AllCompoundPredicate predicateMatchingPredicates:v74];

                musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
                v76 = [ML3Container queryWithLibrary:musicLibrary3 predicate:v158];

                countOfEntities2 = [v76 countOfEntities];
                v78 = sub_10010275C();
                v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
                if (countOfEntities2)
                {
                  if (v79)
                  {
                    *v249 = 138543874;
                    *&v249[4] = self;
                    *&v249[12] = 2048;
                    *&v249[14] = countOfEntities2;
                    *&v249[22] = 2114;
                    v250 = v76;
                    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ - Found %lu playlists to upload from query: %{public}@", v249, 0x20u);
                  }

                  v254[0] = ML3ContainerPropertyCloudGlobalID;
                  v254[1] = ML3ContainerPropertyCloudIsSubscribed;
                  v254[2] = ML3ContainerPropertyCloudIsCuratorPlaylist;
                  v254[3] = ML3ContainerPropertyIsExternalVendorPlaylist;
                  v254[4] = ML3ContainerPropertySmartIsFolder;
                  v254[5] = ML3ContainerPropertySmartCriteria;
                  v254[6] = ML3ContainerPropertySmartIsGenius;
                  v254[7] = ML3ContainerPropertySeedItemPersistentID;
                  v254[8] = ML3ContainerPropertySmartIsDynamic;
                  v254[9] = ML3ContainerPropertySmartIsFiltered;
                  v254[10] = ML3ContainerPropertySmartIsLimited;
                  v254[11] = ML3ContainerPropertySmartLimitKind;
                  v254[12] = ML3ContainerPropertySmartEvaluationOrder;
                  v254[13] = ML3ContainerPropertySmartLimitOrder;
                  v254[14] = ML3ContainerPropertySmartLimitValue;
                  v254[15] = ML3ContainerPropertySmartEnabledOnly;
                  v254[16] = ML3ContainerPropertySmartReverseLimitOrder;
                  v254[17] = v66;
                  v78 = [NSArray arrayWithObjects:v254 count:18];
                  allML3ContainerPropertiesWithGeniusPlaylistProperties = [(CloudGeniusUtilities *)v172 allML3ContainerPropertiesWithGeniusPlaylistProperties];
                  v81 = [allML3ContainerPropertiesWithGeniusPlaylistProperties arrayByAddingObjectsFromArray:v78];

                  v82 = [v81 count];
                  v83 = [v78 count];
                  allGeniusPlaylistPropertiesWithML3ContainerProperties = [(CloudGeniusUtilities *)v172 allGeniusPlaylistPropertiesWithML3ContainerProperties];
                  v253[0] = @"persistent-id";
                  v253[1] = @"kind";
                  v253[2] = @"items";
                  v253[3] = @"data";
                  v85 = [NSArray arrayWithObjects:v253 count:4];
                  v86 = [allGeniusPlaylistPropertiesWithML3ContainerProperties arrayByAddingObjectsFromArray:v85];

                  [NSDictionary sharedKeySetForKeys:v86];
                  v87 = v82 - v83;
                  v214[0] = _NSConcreteStackBlock;
                  v214[1] = 3221225472;
                  v214[2] = sub_100123548;
                  v214[3] = &unk_1001DED30;
                  v88 = v214[4] = self;
                  v215 = v88;
                  v219 = v87;
                  v89 = v81;
                  v216 = v89;
                  v217 = v172;
                  v218 = v177;
                  [v76 enumeratePersistentIDsAndProperties:v89 usingBlock:v214];
                }

                else if (v79)
                {
                  *v249 = 138543362;
                  *&v249[4] = self;
                  _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ - Found zero playlists to upload.", v249, 0xCu);
                }
              }

              [v177 close];
              v90 = v178;
              v91 = [NSMutableURLRequest requestWithURL:v179];
              [v91 setHTTPMethod:@"POST"];
              [v91 setTimeoutInterval:120.0];
              v92 = v90;
              v93 = [v92 URLByAppendingPathExtension:@"gz"];
              v94 = os_log_create("com.apple.amp.itunescloudd", "Genius");
              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                *v249 = 138543362;
                *&v249[4] = v93;
                _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Compressing plist to path: %{public}@", v249, 0xCu);
              }

              v95 = v92;
              if (MSVGzipCompressFile())
              {
                v95 = v93;
              }

              if (MSVDeviceOSIsInternalInstall())
              {
                v96 = MSVMediaLoggingDirectory();
                v97 = [NSURL fileURLWithPath:v96 isDirectory:1];

                lastPathComponent = [v95 lastPathComponent];
                v99 = [v97 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

                v100 = +[NSFileManager defaultManager];
                path3 = [v99 path];
                v102 = [v100 fileExistsAtPath:path3];

                if (v102)
                {
                  [v100 removeItemAtURL:v99 error:0];
                }

                [v100 linkItemAtURL:v95 toURL:v99 error:0];
              }

              v103 = [NSData mappedDataWithContentsOfTemporaryFileURL:v95 error:0];

              [v91 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
              [v91 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
              [v91 setHTTPBody:v103];
              v104 = [ICStoreRequestContext alloc];
              v105 = +[ICUserIdentity activeAccount];
              v106 = [v104 initWithIdentity:v105];

              v107 = [[ICStoreURLRequest alloc] initWithURLRequest:v91 requestContext:v106];
              [v107 setShouldUseMescalSigning:1];

              [(CloudUpdateLibraryOperation *)self setUploadLibraryRequest:v107];
              objc_autoreleasePoolPop(context);
              *v249 = 0;
              *&v249[8] = v249;
              *&v249[16] = 0x3032000000;
              v250 = sub_10011EA78;
              v251 = sub_10011EA88;
              v252 = 0;
              v208 = 0;
              v209 = &v208;
              v210 = 0x3032000000;
              v211 = sub_10011EA78;
              v212 = sub_10011EA88;
              v213 = 0;
              v108 = dispatch_semaphore_create(0);
              v109 = +[ICURLSessionManager defaultSession];
              uploadLibraryRequest = [(CloudUpdateLibraryOperation *)self uploadLibraryRequest];
              v204[0] = _NSConcreteStackBlock;
              v204[1] = 3221225472;
              v204[2] = sub_100123D14;
              v204[3] = &unk_1001DED80;
              v206 = &v208;
              v207 = v249;
              v111 = v108;
              v205 = v111;
              [v109 enqueueDataRequest:uploadLibraryRequest withCompletionHandler:v204];

              dispatch_semaphore_wait(v111, 0xFFFFFFFFFFFFFFFFLL);
              urlResponse = [v209[5] urlResponse];
              LODWORD(v109) = [urlResponse statusCode] == 200;

              if (v109)
              {
                v113 = dbl_10016AE50[countOfEntities > 0x2710];
                v203 = -1;
                v114 = [(CloudUpdateLibraryOperation *)self _determineResultsURLWhenReadyWithUpdateID:v183 retryTimeout:&v203 responseStatusCode:v113];
                [(CloudUpdateLibraryOperation *)self setUploadResponseStatus:v203];
                v115 = sub_10010275C();
                if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                {
                  *v245 = 138543618;
                  *&v245[4] = self;
                  *&v245[12] = 2114;
                  *&v245[14] = v114;
                  _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%{public}@ - Determined results URL: %{public}@", v245, 0x16u);
                }

                if (v114)
                {
                  v116 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_1001EDD80, @"min-itunes-match-compatible-version", &off_1001EDD98, @"itunes-match-protocol-version", 0];
                  v117 = sub_1000A760C(v114, 0, 0, v116, 120.0);
                  [(CloudUpdateLibraryOperation *)self setGetResultsRequest:v117];
                  v182 = v116;

                  *v245 = 0;
                  *&v245[8] = v245;
                  *&v245[16] = 0x3032000000;
                  v246 = sub_10011EA78;
                  v247 = sub_10011EA88;
                  v248 = 0;
                  v197 = 0;
                  v198 = &v197;
                  v199 = 0x3032000000;
                  v200 = sub_10011EA78;
                  v201 = sub_10011EA88;
                  v202 = 0;
                  v118 = +[ICURLSessionManager defaultSession];
                  getResultsRequest = [(CloudUpdateLibraryOperation *)self getResultsRequest];
                  v193[0] = _NSConcreteStackBlock;
                  v193[1] = 3221225472;
                  v193[2] = sub_100123DB0;
                  v193[3] = &unk_1001DED80;
                  v195 = &v197;
                  v196 = v245;
                  v120 = v111;
                  v194 = v120;
                  [v118 enqueueDataRequest:getResultsRequest withCompletionHandler:v193];

                  dispatch_semaphore_wait(v120, 0xFFFFFFFFFFFFFFFFLL);
                  [(CloudUpdateLibraryOperation *)self setGetResultsRequest:0];
                  urlResponse2 = [v198[5] urlResponse];
                  v122 = [urlResponse2 statusCode] == 200;

                  if (v122)
                  {
                    bodyData = [v198[5] bodyData];
                    if (bodyData)
                    {
                      v123 = NSTemporaryDirectory();
                      v244[0] = v123;
                      v244[1] = @"com.apple.MediaServices";
                      v124 = +[NSUUID UUID];
                      uUIDString = [v124 UUIDString];
                      v244[2] = uUIDString;
                      v244[3] = @"CloudLibraryUploadResults.plist";
                      v126 = [NSArray arrayWithObjects:v244 count:4];
                      v186 = [NSURL fileURLWithPathComponents:v126];

                      contexta = +[NSFileManager defaultManager];
                      uRLByDeletingLastPathComponent = [v186 URLByDeletingLastPathComponent];
                      [contexta createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

                      path4 = [v186 path];
                      [contexta createFileAtPath:path4 contents:0 attributes:0];

                      v129 = *(*&v249[8] + 40);
                      *(*&v249[8] + 40) = 0;

                      v130 = (*&v249[8] + 40);
                      obj = *(*&v249[8] + 40);
                      v164 = [NSFileHandle fileHandleForWritingToURL:v186 error:&obj];
                      objc_storeStrong(v130, obj);
                      if (v164)
                      {
                        [v164 writeData:bodyData];
                        [v164 closeFile];
                        v131 = sub_10010275C();
                        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                        {
                          path5 = [v186 path];
                          *v242 = 138543618;
                          *&v242[4] = self;
                          *&v242[12] = 2114;
                          *&v242[14] = path5;
                          _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "%{public}@ - Saved results plist to: %{public}@", v242, 0x16u);
                        }

                        if (MSVDeviceOSIsInternalInstall())
                        {
                          v133 = MSVMediaLoggingDirectory();
                          v134 = [NSURL fileURLWithPath:v133 isDirectory:1];

                          lastPathComponent2 = [v186 lastPathComponent];
                          v136 = [v134 URLByAppendingPathComponent:lastPathComponent2 isDirectory:0];

                          path6 = [v136 path];
                          v138 = [contexta fileExistsAtPath:path6];

                          if (v138)
                          {
                            [contexta removeItemAtURL:v136 error:0];
                          }

                          [contexta linkItemAtURL:v186 toURL:v136 error:0];
                        }

                        path7 = [v186 path];
                        v162 = [path7 dataUsingEncoding:4];

                        v140 = [ML3DatabaseImport alloc];
                        musicLibrary4 = [(CloudLibraryOperation *)self musicLibrary];
                        databasePath = [musicLibrary4 databasePath];
                        clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
                        v144 = [v140 initWithLibraryPath:databasePath trackData:v162 playlistData:v162 clientIdentity:clientIdentity];

                        *v242 = 0;
                        *&v242[8] = v242;
                        *&v242[16] = 0x2020000000;
                        LOBYTE(v243) = 0;
                        v145 = dispatch_semaphore_create(0);
                        v146 = +[MLMediaLibraryService sharedMediaLibraryService];
                        v189[0] = _NSConcreteStackBlock;
                        v189[1] = 3221225472;
                        v189[2] = sub_100123E4C;
                        v189[3] = &unk_1001DEDA8;
                        v189[4] = self;
                        v191 = v242;
                        v147 = v145;
                        v190 = v147;
                        [v146 performImport:v144 fromSource:9 withProgressBlock:0 completionHandler:v189];

                        dispatch_semaphore_wait(v147, 0xFFFFFFFFFFFFFFFFLL);
                        v4 = *(*&v242[8] + 24);
                        if ((v4 & 1) == 0)
                        {
                          v148 = sub_10010275C();
                          if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
                          {
                            *v240 = 138543362;
                            selfCopy = self;
                            _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "%{public}@ - Failed to import cloud-id mapping.", v240, 0xCu);
                          }
                        }

                        _Block_object_dispose(v242, 8);
                        v149 = v162;
                      }

                      else
                      {
                        v149 = sub_10010275C();
                        if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                        {
                          *v242 = 138543362;
                          *&v242[4] = self;
                          _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "%{public}@ - Received empty response when getting match results.", v242, 0xCu);
                        }

                        v4 = 0;
                      }

                      v154 = v186;
                    }

                    else
                    {
                      v154 = sub_10010275C();
                      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                      {
                        v155 = v198[5];
                        v156 = *(*&v245[8] + 40);
                        *v242 = 138543874;
                        *&v242[4] = self;
                        *&v242[12] = 2114;
                        *&v242[14] = v155;
                        *&v242[22] = 2114;
                        v243 = v156;
                        _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_ERROR, "%{public}@ - Received non-200 response when getting match results: %{public}@ error: %{public}@", v242, 0x20u);
                      }

                      v4 = 0;
                    }

                    v153 = bodyData;
                  }

                  else
                  {
                    v153 = sub_10010275C();
                    if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                    {
                      *v242 = 138543362;
                      *&v242[4] = self;
                      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to determined results URL", v242, 0xCu);
                    }

                    v4 = 0;
                  }

                  _Block_object_dispose(&v197, 8);
                  _Block_object_dispose(v245, 8);

                  v150 = v182;
                }

                else
                {
                  v150 = sub_10010275C();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    v151 = v209[5];
                    v152 = *(*&v249[8] + 40);
                    *v245 = 138543874;
                    *&v245[4] = self;
                    *&v245[12] = 2114;
                    *&v245[14] = v151;
                    *&v245[22] = 2114;
                    v246 = v152;
                    _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_ERROR, "%{public}@ - Received non-200 response when uploading library: %{public}@ error: %{public}@", v245, 0x20u);
                  }

                  v4 = 0;
                }
              }

              else
              {
                v4 = 1;
              }

              [(CloudUpdateLibraryOperation *)self setUploadLibraryRequest:0];

              _Block_object_dispose(&v208, 8);
              _Block_object_dispose(v249, 8);

              objc_autoreleasePoolPop(v169);
            }

            v50 = v179;
LABEL_100:

            _Block_object_dispose(v232, 8);
            _Block_object_dispose(&v234, 8);

            _Block_object_dispose(buf, 8);
LABEL_101:

            goto LABEL_102;
          }
        }

        else
        {
          v183 = 0;
        }

        v50 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *v249 = 138543362;
          *&v249[4] = self;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to determined upload URL, skipping upload", v249, 0xCu);
        }

        v4 = 0;
        goto LABEL_100;
      }

      v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        v8 = "%{public}@ - Setting should-upload to true because com.apple.itunescloudd:ForceLibraryUnification is set to YES";
        goto LABEL_11;
      }
    }

    v180 = 1;
    goto LABEL_13;
  }

  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping _uploadLibrary because com.apple.itunescloudd:DisableLibraryUpload is set to YES", buf, 0xCu);
  }

  v4 = 1;
LABEL_102:

  return v4;
}

- (BOOL)_ensureDeviceIsRegistered
{
  configuration = [(CloudLibraryOperation *)self configuration];
  v4 = sub_1000E54B0(configuration, [(CloudUpdateLibraryOperation *)self allowNoisyAuthPrompt], 0);

  if (v4)
  {
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    sagaCloudLibraryCUID = [musicLibrary sagaCloudLibraryCUID];
    [(CloudUpdateLibraryOperation *)self setCuid:sagaCloudLibraryCUID];

    musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
    sagaCloudLibraryTroveID = [musicLibrary2 sagaCloudLibraryTroveID];
    [(CloudUpdateLibraryOperation *)self setTroveID:sagaCloudLibraryTroveID];
  }

  return v4;
}

- (void)main
{
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  sagaOnDiskDatabaseRevision = [musicLibrary sagaOnDiskDatabaseRevision];

  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  sagaInitiateClientResetSync = [musicLibrary2 sagaInitiateClientResetSync];

  [(ICDCloudMusicLibrarySagaUpdateTaskHelper *)self->_updateTaskHelper startingUpdateOperationForLibraryType:1 isInitialImport:sagaOnDiskDatabaseRevision == 0];
  musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary3 setClientIdentity:clientIdentity];

  v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    reason = self->_reason;
    v11 = ICCloudClientGetStringForRequestReason();
    *buf = 138544642;
    selfCopy11 = self;
    v88 = 2114;
    *v89 = v11;
    *&v89[8] = 1024;
    *&v89[10] = sagaOnDiskDatabaseRevision == 0;
    v90 = 1024;
    isExplicitUserAction = [(CloudUpdateLibraryOperation *)self isExplicitUserAction];
    v92 = 1024;
    allowNoisyAuthPrompt = [(CloudUpdateLibraryOperation *)self allowNoisyAuthPrompt];
    v94 = 1024;
    v95 = sagaInitiateClientResetSync;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating cloud library operation (reason = %{public}@), isInitialImport=%{BOOL}u, isExplicitUserAction=%{BOOL}u, allowNoisyAuthPrompt=%{BOOL}u, sagaClientInitiatedResetSync=%{BOOL}u", buf, 0x2Eu);
  }

  if (!sagaOnDiskDatabaseRevision)
  {
    v21 = sub_100004B8C();
    v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v23)
      {
        *buf = 138543362;
        selfCopy11 = self;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping initial import on non standalone wOS platform", buf, 0xCu);
      }

      v85[0] = &off_1001EDC90;
      v84[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
      v84[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
      v24 = [NSNumber numberWithInteger:self->_reason];
      v85[1] = v24;
      v84[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
      v25 = [NSNumber numberWithBool:1];
      v85[2] = v25;
      v84[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
      v26 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
      v85[3] = v26;
      v27 = v85;
      v28 = v84;
LABEL_13:
      v29 = 4;
LABEL_42:
      v40 = [NSDictionary dictionaryWithObjects:v27 forKeys:v28 count:v29];

      goto LABEL_61;
    }

    if (v23)
    {
      *buf = 138543362;
      selfCopy11 = self;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - Preparing for initial library update...", buf, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, ICCloudClientStartingInitialCloudLibraryImportNotification, 0, 0, 1u);
    if (sagaInitiateClientResetSync & 1 | ![(CloudUpdateLibraryOperation *)self uploadingLibraryIsSupported])
    {
      goto LABEL_23;
    }

    if ([(CloudUpdateLibraryOperation *)self _ensureDeviceIsRegistered])
    {
      if ([(CloudUpdateLibraryOperation *)self isCancelled])
      {
        v41 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy11 = self;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cancelled after registering device", buf, 0xCu);
        }

        [(CloudLibraryOperation *)self setStatus:4];
        v81[0] = &off_1001EDCD8;
        v80[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
        v80[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
        v24 = [NSNumber numberWithInteger:self->_reason];
        v81[1] = v24;
        v80[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
        v25 = [NSNumber numberWithBool:1];
        v81[2] = v25;
        v80[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
        v26 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
        v81[3] = v26;
        v27 = v81;
        v28 = v80;
        goto LABEL_13;
      }

      if ([(CloudUpdateLibraryOperation *)self _uploadLibrary])
      {
        if ([(CloudUpdateLibraryOperation *)self isCancelled])
        {
          v45 = sub_10010275C();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy11 = self;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cancelled after uploading library metadata", buf, 0xCu);
          }

          [(CloudLibraryOperation *)self setStatus:4];
          v75[0] = &off_1001EDCD8;
          v74[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
          v74[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
          v35 = [NSNumber numberWithInteger:self->_reason];
          v75[1] = v35;
          v74[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
          v36 = [NSNumber numberWithBool:1];
          v75[2] = v36;
          v74[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
          v37 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
          v75[3] = v37;
          v38 = v75;
          v39 = v74;
          goto LABEL_27;
        }

LABEL_23:
        [(CloudUpdateLibraryOperation *)self _prepareLibraryForInitialUpdate];
        if (![(CloudUpdateLibraryOperation *)self isCancelled])
        {
          goto LABEL_4;
        }

        v34 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy11 = self;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cancelled after preparing library for cloud import", buf, 0xCu);
        }

        [(CloudLibraryOperation *)self setStatus:4];
        v73[0] = &off_1001EDCD8;
        v72[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
        v72[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
        v35 = [NSNumber numberWithInteger:self->_reason];
        v73[1] = v35;
        v72[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
        v36 = [NSNumber numberWithBool:1];
        v73[2] = v36;
        v72[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
        v37 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
        v73[3] = v37;
        v38 = v73;
        v39 = v72;
LABEL_27:
        v40 = [NSDictionary dictionaryWithObjects:v38 forKeys:v39 count:4];

        [(CloudUpdateLibraryOperation *)self _clearAllCloudIDs];
        goto LABEL_61;
      }

      if ([(CloudUpdateLibraryOperation *)self uploadResponseStatus]== 4011)
      {
        [(CloudLibraryOperation *)self setStatus:3];
        v54 = sub_10010275C();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          uploadResponseStatus = [(CloudUpdateLibraryOperation *)self uploadResponseStatus];
          *buf = 138543618;
          selfCopy11 = self;
          v88 = 1024;
          *v89 = uploadResponseStatus;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ - self.uploadResponseStatus=%d, treating as a hard failure", buf, 0x12u);
        }

        v79[0] = &off_1001EDCA8;
        v78[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
        v78[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
        v24 = [NSNumber numberWithInteger:self->_reason];
        v79[1] = v24;
        v78[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
        v25 = [NSNumber numberWithBool:1];
        v79[2] = v25;
        v79[3] = &off_1001EDCF0;
        v78[3] = @"ICDCloudMusicLibraryProgressPermanentFailureTypeKey";
        v78[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
        v26 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
        v79[4] = v26;
        v27 = v79;
        v28 = v78;
      }

      else
      {
        [(CloudLibraryOperation *)self setStatus:5];
        v56 = sub_10010275C();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          uploadResponseStatus2 = [(CloudUpdateLibraryOperation *)self uploadResponseStatus];
          *buf = 138543618;
          selfCopy11 = self;
          v88 = 1024;
          *v89 = uploadResponseStatus2;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ - self.uploadResponseStatus=%d, treating as a temporary failure", buf, 0x12u);
        }

        v77[0] = &off_1001EDD08;
        v76[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
        v76[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
        v24 = [NSNumber numberWithInteger:self->_reason];
        v77[1] = v24;
        v76[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
        v25 = [NSNumber numberWithBool:1];
        v77[2] = v25;
        v77[3] = &off_1001EDD20;
        v76[3] = @"ICDCloudMusicLibraryProgressTemporaryFialureTypeKey";
        v76[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
        v26 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
        v77[4] = v26;
        v27 = v77;
        v28 = v76;
      }
    }

    else
    {
      v44 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy11 = self;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to register device, bailing on initial library update", buf, 0xCu);
      }

      [(CloudLibraryOperation *)self setStatus:3];
      v83[0] = &off_1001EDCA8;
      v82[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
      v82[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
      v24 = [NSNumber numberWithInteger:self->_reason];
      v83[1] = v24;
      v82[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
      v25 = [NSNumber numberWithBool:1];
      v83[2] = v25;
      v83[3] = &off_1001EDCC0;
      v82[3] = @"ICDCloudMusicLibraryProgressPermanentFailureTypeKey";
      v82[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
      v26 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
      v83[4] = v26;
      v27 = v83;
      v28 = v82;
    }

    v29 = 5;
    goto LABEL_42;
  }

LABEL_4:
  self->_didSubscriptionStatusLapse = 0;
  self->_didEncounterFatalErrorImportingPayload = 0;
  _updateLibrary = [(CloudUpdateLibraryOperation *)self _updateLibrary];
  v13 = +[ICDefaults standardDefaults];
  if ([v13 shouldTreatSubscriptionStatusAsExpired])
  {
    v14 = MSVDeviceOSIsInternalInstall();

    if (v14)
    {
      v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy11 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - shouldTreatSubscriptionStatusAsExpired is set. Will force subscription status to be expired", buf, 0xCu);
      }

      [(CloudLibraryOperation *)self setStatus:3];
      v71[0] = &off_1001EDCA8;
      v70[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
      v70[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
      v16 = [NSNumber numberWithInteger:self->_reason];
      v71[1] = v16;
      v70[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
      v17 = [NSNumber numberWithBool:sagaOnDiskDatabaseRevision == 0];
      v71[2] = v17;
      v71[3] = &off_1001EDD20;
      v70[3] = @"ICDCloudMusicLibraryProgressPermanentFailureTypeKey";
      v70[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
      v18 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
      v71[4] = v18;
      v19 = v71;
      v20 = v70;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if ((_updateLibrary & 1) == 0)
  {
    if (!self->_didSubscriptionStatusLapse)
    {
      if (sagaOnDiskDatabaseRevision)
      {
        [(CloudLibraryOperation *)self setStatus:5];
        v61[0] = &off_1001EDD08;
        v60[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
        v60[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
        v16 = [NSNumber numberWithInteger:self->_reason];
        v61[1] = v16;
        v60[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
        v17 = [NSNumber numberWithBool:0];
        v61[2] = v17;
        v60[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
        v18 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
        v61[3] = v18;
        v30 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:4];
        v31 = @"load initial cloud library";
      }

      else
      {
        if (self->_didEncounterFatalErrorImportingPayload)
        {
          if (MSVDeviceSupportsMultipleLibraries())
          {
            [(CloudLibraryOperation *)self setStatus:5];
            v67[0] = &off_1001EDD08;
            v66[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
            v66[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
            v16 = [NSNumber numberWithInteger:self->_reason];
            v67[1] = v16;
            v66[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
            v17 = [NSNumber numberWithBool:1];
            v67[2] = v17;
            v67[3] = &off_1001EDD38;
            v66[3] = @"ICDCloudMusicLibraryProgressTemporaryFialureTypeKey";
            v66[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
            v18 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
            v67[4] = v18;
            v42 = v67;
            v43 = v66;
          }

          else
          {
            [(CloudLibraryOperation *)self setStatus:3];
            v65[0] = &off_1001EDCA8;
            v64[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
            v64[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
            v16 = [NSNumber numberWithInteger:self->_reason];
            v65[1] = v16;
            v64[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
            v17 = [NSNumber numberWithBool:1];
            v65[2] = v17;
            v65[3] = &off_1001EDD50;
            v64[3] = @"ICDCloudMusicLibraryProgressPermanentFailureTypeKey";
            v64[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
            v18 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
            v65[4] = v18;
            v42 = v65;
            v43 = v64;
          }
        }

        else
        {
          [(CloudLibraryOperation *)self setStatus:5];
          v63[0] = &off_1001EDD08;
          v62[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
          v62[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
          v16 = [NSNumber numberWithInteger:self->_reason];
          v63[1] = v16;
          v62[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
          v17 = [NSNumber numberWithBool:1];
          v63[2] = v17;
          v63[3] = &off_1001EDD38;
          v62[3] = @"ICDCloudMusicLibraryProgressTemporaryFialureTypeKey";
          v62[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
          v18 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
          v63[4] = v18;
          v42 = v63;
          v43 = v62;
        }

        v30 = [NSDictionary dictionaryWithObjects:v42 forKeys:v43 count:5];
        v31 = @"load initial cloud library - isInitialImport";
      }

      goto LABEL_51;
    }

    [(CloudLibraryOperation *)self setStatus:3];
    v69[0] = &off_1001EDCA8;
    v68[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
    v68[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
    v16 = [NSNumber numberWithInteger:self->_reason];
    v69[1] = v16;
    v68[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
    v17 = [NSNumber numberWithBool:sagaOnDiskDatabaseRevision == 0];
    v69[2] = v17;
    v69[3] = &off_1001EDD20;
    v68[3] = @"ICDCloudMusicLibraryProgressPermanentFailureTypeKey";
    v68[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
    v18 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
    v69[4] = v18;
    v19 = v69;
    v20 = v68;
LABEL_19:
    v30 = [NSDictionary dictionaryWithObjects:v19 forKeys:v20 count:5];
    v31 = @"subscription lapsed";
LABEL_51:

    v32 = 0;
    goto LABEL_52;
  }

  v30 = 0;
  v31 = 0;
  v32 = 1;
LABEL_52:
  v46 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    status = [(CloudLibraryOperation *)self status];
    *buf = 138543874;
    selfCopy11 = self;
    v88 = 1024;
    *v89 = status;
    *&v89[4] = 2114;
    *&v89[6] = v31;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}@ - finished with status=%d, failureReason=%{public}@", buf, 0x1Cu);
  }

  if (v32)
  {
    v59[0] = &off_1001EDC90;
    v48 = [NSNumber numberWithInteger:self->_reason, @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey", @"ICDCloudMusicLibraryProgressRequestReasonKey"];
    v59[1] = v48;
    v58[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
    v49 = [NSNumber numberWithBool:sagaOnDiskDatabaseRevision == 0];
    v59[2] = v49;
    v58[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
    v50 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
    v59[3] = v50;
    v40 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];

    if (!sagaOnDiskDatabaseRevision)
    {
      v51 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v51, ICCloudClientInitialCloudLibraryImportCompletedNotification, 0, 0, 1u);
    }
  }

  else
  {
    if (!sagaOnDiskDatabaseRevision && [(CloudLibraryOperation *)self status]== 3)
    {
      [(CloudUpdateLibraryOperation *)self _clearAllCloudIDs];
    }

    v40 = v30;
  }

LABEL_61:
  musicLibrary4 = [(CloudLibraryOperation *)self musicLibrary];
  v53 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary4 setClientIdentity:v53];

  [(ICDCloudMusicLibrarySagaUpdateTaskHelper *)self->_updateTaskHelper finishedUpdateOperationForLibraryType:1 withResponse:v40];
}

- (void)cancel
{
  v3 = +[ICURLSessionManager defaultSession];
  uploadLibraryRequest = [(CloudUpdateLibraryOperation *)self uploadLibraryRequest];

  if (uploadLibraryRequest)
  {
    uploadLibraryRequest2 = [(CloudUpdateLibraryOperation *)self uploadLibraryRequest];
    [v3 cancelRequest:uploadLibraryRequest2];
  }

  getResultsRequest = [(CloudUpdateLibraryOperation *)self getResultsRequest];

  if (getResultsRequest)
  {
    getResultsRequest2 = [(CloudUpdateLibraryOperation *)self getResultsRequest];
    [v3 cancelRequest:getResultsRequest2];
  }

  importer = [(CloudUpdateLibraryOperation *)self importer];
  [importer cancel];

  v9.receiver = self;
  v9.super_class = CloudUpdateLibraryOperation;
  [(CloudUpdateLibraryOperation *)&v9 cancel];
}

- (void)dealloc
{
  [(CloudUpdateLibraryOperation *)self cancel];
  v3.receiver = self;
  v3.super_class = CloudUpdateLibraryOperation;
  [(CloudUpdateLibraryOperation *)&v3 dealloc];
}

- (CloudUpdateLibraryOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity reason:(int64_t)reason updateTaskHelper:(id)helper
{
  helperCopy = helper;
  v15.receiver = self;
  v15.super_class = CloudUpdateLibraryOperation;
  v12 = [(CloudLibraryOperation *)&v15 initWithConfiguration:configuration clientIdentity:identity];
  v13 = v12;
  if (v12)
  {
    v12->_reason = reason;
    objc_storeStrong(&v12->_updateTaskHelper, helper);
  }

  return v13;
}

@end