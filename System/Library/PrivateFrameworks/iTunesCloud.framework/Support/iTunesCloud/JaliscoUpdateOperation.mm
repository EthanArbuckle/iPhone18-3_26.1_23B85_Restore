@interface JaliscoUpdateOperation
+ (OS_os_log)logCategory;
+ (OS_os_log)oversizeLogCategory;
- (BOOL)preflightImport;
- (JaliscoUpdateOperation)initWithConfiguration:(id)configuration reason:(int64_t)reason clientIdentity:(id)identity;
- (JaliscoUpdateOperation)initWithReason:(int64_t)reason;
- (id)newImporter;
- (id)queryFilterPercentEscaped;
- (int64_t)localDatabaseRevision;
- (void)cancel;
- (void)handleSuccess:(int64_t)success;
- (void)main;
- (void)performUpdate;
@end

@implementation JaliscoUpdateOperation

- (void)main
{
  v3 = [MSVXPCTransaction alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = [v3 initWithName:v5];

  [v10 beginTransaction];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary setClientIdentity:clientIdentity];

  [(JaliscoUpdateOperation *)self performUpdate];
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  v9 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary2 setClientIdentity:v9];

  [v10 endTransaction];
}

- (void)performUpdate
{
  [(JaliscoUpdateOperation *)self beginPerformUpdate];
  if (![(JaliscoUpdateOperation *)self preflightImport])
  {
    logCategory = [objc_opt_class() logCategory];
    if (os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy8 = self;
      _os_log_impl(&_mh_execute_header, logCategory, OS_LOG_TYPE_DEFAULT, "%{public}@ - No library for import.", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (![(JaliscoUpdateOperation *)self localDatabaseRevision]&& sub_100004B8C())
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy8 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping initial import on non standalone wOS platform", buf, 0xCu);
    }

    return;
  }

  v5 = [(JaliscoUpdateOperation *)self _serverDatabaseRevision:1];
  if ([(JaliscoUpdateOperation *)self isCancelled])
  {

    [(CloudLibraryOperation *)self setStatus:4];
    return;
  }

  error = [(CloudLibraryOperation *)self error];

  if (!error)
  {
    if (v5)
    {
      localDatabaseRevision = [(JaliscoUpdateOperation *)self localDatabaseRevision];
      logCategory2 = [objc_opt_class() logCategory];
      if (os_log_type_enabled(logCategory2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy8 = self;
        v46 = 1024;
        LODWORD(v47) = localDatabaseRevision;
        _os_log_impl(&_mh_execute_header, logCategory2, OS_LOG_TYPE_DEFAULT, "%{public}@ - On-disk database revision: %u", buf, 0x12u);
      }

      newImporter = [(JaliscoUpdateOperation *)self newImporter];
      importer = self->_importer;
      self->_importer = newImporter;

      needsUpdateForTokens = [(JaliscoImporter *)self->_importer needsUpdateForTokens];
      if ((localDatabaseRevision != v5) | needsUpdateForTokens & 1)
      {
        if (needsUpdateForTokens)
        {
          [(JaliscoImporter *)self->_importer clearNeedsUpdateForTokens];
        }

        v14 = +[NSProcessInfo processInfo];
        [v14 systemUptime];
        v16 = v15;

        logCategory3 = [objc_opt_class() logCategory];
        if (os_log_type_enabled(logCategory3, OS_LOG_TYPE_DEFAULT))
        {
          v18 = self->_importer;
          v19 = objc_opt_class();
          v20 = self->_importer;
          *buf = 138543874;
          selfCopy8 = self;
          v46 = 2114;
          v47 = v19;
          v48 = 2048;
          v49 = v20;
          v21 = v19;
          _os_log_impl(&_mh_execute_header, logCategory3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Importer: <%{public}@ %p>", buf, 0x20u);
        }

        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v43 = 0;
        v22 = dispatch_semaphore_create(0);
        [ICDPowerEventLogger logEvent:self->_powerEventBeginName payload:self->_powerEventPayload];
        v23 = self->_importer;
        clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100100D4C;
        v37[3] = &unk_1001DEE20;
        v39 = &v40;
        v37[4] = self;
        v25 = v22;
        v38 = v25;
        [(JaliscoImporter *)v23 importTracksUpToRevision:v5 clientIdentity:clientIdentity withCompletionHandler:v37];

        dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
        [ICDPowerEventLogger logEvent:self->_powerEventEndName payload:self->_powerEventPayload];
        v26 = +[NSProcessInfo processInfo];
        [v26 systemUptime];
        v28 = v27;

        logCategory4 = [objc_opt_class() logCategory];
        if (os_log_type_enabled(logCategory4, OS_LOG_TYPE_DEFAULT))
        {
          v30 = self->_importer;
          v31 = objc_opt_class();
          v32 = self->_importer;
          *buf = 138544130;
          selfCopy8 = self;
          v46 = 2114;
          v47 = v31;
          v48 = 2048;
          v49 = v32;
          v50 = 2048;
          v51 = v28 - v16;
          v33 = v31;
          _os_log_impl(&_mh_execute_header, logCategory4, OS_LOG_TYPE_DEFAULT, "%{public}@ - <%{public}@ %p> required: %gs to process", buf, 0x2Au);
        }

        if (([(JaliscoUpdateOperation *)self isCancelled]& 1) != 0)
        {
          v34 = 4;
        }

        else if (*(v41 + 24) == 1)
        {
          [(JaliscoUpdateOperation *)self handleSuccess:v5];
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        [(CloudLibraryOperation *)self setStatus:v34];

        _Block_object_dispose(&v40, 8);
      }

      else
      {
        logCategory5 = [objc_opt_class() logCategory];
        if (os_log_type_enabled(logCategory5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy8 = self;
          _os_log_impl(&_mh_execute_header, logCategory5, OS_LOG_TYPE_DEFAULT, "%{public}@ - On-disk database revision is the same as the server revision, skipping update...", buf, 0xCu);
        }

        [(CloudLibraryOperation *)self setStatus:1];
      }

      v36 = self->_importer;
      self->_importer = 0;

      goto LABEL_10;
    }

    logCategory = [objc_opt_class() logCategory];
    if (os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy8 = self;
      _os_log_impl(&_mh_execute_header, logCategory, OS_LOG_TYPE_DEFAULT, "%{public}@ - No database revision to update to.", buf, 0xCu);
    }

LABEL_9:

    [(CloudLibraryOperation *)self setStatus:1];
LABEL_10:
    [(JaliscoUpdateOperation *)self endPerformUpdate];
    return;
  }

  logCategory6 = [objc_opt_class() logCategory];
  if (os_log_type_enabled(logCategory6, OS_LOG_TYPE_ERROR))
  {
    error2 = [(CloudLibraryOperation *)self error];
    *buf = 138543618;
    selfCopy8 = self;
    v46 = 2114;
    v47 = error2;
    _os_log_impl(&_mh_execute_header, logCategory6, OS_LOG_TYPE_ERROR, "%{public}@ - Received error when doing an update request: %{public}@", buf, 0x16u);
  }

  [(CloudLibraryOperation *)self setStatus:2];
}

- (void)handleSuccess:(int64_t)success
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:133 description:@"Must Subclass"];
}

- (id)newImporter
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:128 description:@"Must Subclass"];

  return 0;
}

- (BOOL)preflightImport
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:123 description:@"Must Subclass"];

  return 0;
}

- (int64_t)localDatabaseRevision
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:114 description:@"Must Subclass"];

  return 0;
}

- (id)queryFilterPercentEscaped
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:109 description:@"Must Subclass"];

  return 0;
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = JaliscoUpdateOperation;
  [(JaliscoUpdateOperation *)&v5 cancel];
  logCategory = [objc_opt_class() logCategory];
  if (os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, logCategory, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cancelling update...", buf, 0xCu);
  }

  v4 = [[NSError alloc] initWithDomain:@"JaliscoImporterErrorDomain" code:-2 userInfo:0];
  [(CloudLibraryOperation *)self setError:v4];

  [(CloudLibraryOperation *)self setStatus:4];
  [(JaliscoImporter *)self->_importer cancel];
}

- (JaliscoUpdateOperation)initWithConfiguration:(id)configuration reason:(int64_t)reason clientIdentity:(id)identity
{
  v21.receiver = self;
  v21.super_class = JaliscoUpdateOperation;
  v6 = [(CloudLibraryOperation *)&v21 initWithConfiguration:configuration clientIdentity:identity];
  v7 = v6;
  if (v6)
  {
    localDatabaseRevision = [(JaliscoUpdateOperation *)v6 localDatabaseRevision];
    [(JaliscoUpdateOperation *)v7 setInitialImport:localDatabaseRevision == 0];
    [(JaliscoUpdateOperation *)v7 setReason:reason];
    powerEventBeginName = v7->_powerEventBeginName;
    v7->_powerEventBeginName = @"UpdateOperationBegin";

    powerEventEndName = v7->_powerEventEndName;
    v7->_powerEventEndName = @"UpdateOperationEnd";

    if (localDatabaseRevision)
    {
      v22[0] = @"reason";
      v11 = [NSNumber numberWithInteger:reason];
      v22[1] = @"class";
      v23[0] = v11;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v23[1] = v13;
      v14 = v23;
      v15 = v22;
      v16 = 2;
    }

    else
    {
      v24[0] = @"reason";
      v11 = [NSNumber numberWithInteger:reason];
      v25[0] = v11;
      v24[1] = @"class";
      v17 = objc_opt_class();
      v13 = NSStringFromClass(v17);
      v24[2] = @"initial";
      v25[1] = v13;
      v25[2] = &off_1001ED8B8;
      v14 = v25;
      v15 = v24;
      v16 = 3;
    }

    v18 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:v16];
    powerEventPayload = v7->_powerEventPayload;
    v7->_powerEventPayload = v18;
  }

  return v7;
}

- (JaliscoUpdateOperation)initWithReason:(int64_t)reason
{
  v5 = objc_opt_new();
  v6 = MSVTCCIdentityForCurrentProcess();
  v7 = [(JaliscoUpdateOperation *)self initWithConfiguration:v5 clientIdentity:v6 reason:reason];

  return v7;
}

+ (OS_os_log)oversizeLogCategory
{
  v4 = [JaliscoUpdateOperation instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:36 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"JaliscoUpdateOperation"}];
  }

  return &_os_log_default;
}

+ (OS_os_log)logCategory
{
  v4 = [JaliscoUpdateOperation instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:31 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"JaliscoUpdateOperation"}];
  }

  return &_os_log_default;
}

@end