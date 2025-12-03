@interface JaliscoImporter
+ (OS_os_log)logCategory;
+ (OS_os_log)oversizeLogCategory;
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (JaliscoImporter)initWithConnection:(id)connection;
- (NSString)description;
- (void)_performNextItemsPageRequestWithCompletion:(id)completion;
- (void)_processItemsPageResponse:(id)response withCompletion:(id)completion;
- (void)importTracksUpToRevision:(unsigned int)revision clientIdentity:(id)identity withCompletionHandler:(id)handler;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length;
@end

@implementation JaliscoImporter

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  if (code == 1836081511)
  {
    v8 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
    currentPaginationToken = self->_currentPaginationToken;
    self->_currentPaginationToken = v8;

    _objc_release_x1();
  }
}

- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length
{
  if (code == 1836413554)
  {
    self->_shouldRestart = 1;
  }
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  v4 = code == 1836081511 || code == 1836413554;
  v5 = code == 1633968755 || v4;
  return !self->_shouldRestart && v5;
}

- (void)_processItemsPageResponse:(id)response withCompletion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  itemsFiles = self->_itemsFiles;
  responseDataFileURL = [responseCopy responseDataFileURL];
  [(NSMutableArray *)itemsFiles addObject:responseDataFileURL];

  self->_shouldRestart = 0;
  currentPaginationToken = self->_currentPaginationToken;
  self->_currentPaginationToken = 0;

  responseDataFileURL2 = [responseCopy responseDataFileURL];
  v12 = [NSInputStream inputStreamWithURL:responseDataFileURL2];

  v13 = [[DKDAAPParser alloc] initWithStream:v12];
  [v13 setDelegate:self];
  [v13 parse];
  if (self->_shouldRestart)
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      restartCount = self->_restartCount;
      v23 = 138543618;
      selfCopy4 = self;
      v25 = 1024;
      LODWORD(v26) = restartCount;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Server requested restart. restartCount=%u", &v23, 0x12u);
    }

    v16 = self->_currentPaginationToken;
    self->_currentPaginationToken = 0;

    [(NSMutableArray *)self->_itemsFiles removeAllObjects];
    v17 = self->_restartCount + 1;
    self->_currentPageNumber = 1;
    self->_restartCount = v17;
    goto LABEL_6;
  }

  if (self->_currentPaginationToken)
  {
LABEL_6:
    [(JaliscoImporter *)self _performNextItemsPageRequestWithCompletion:completionCopy];
    goto LABEL_7;
  }

  v18 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543362;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetched last batch of items - performing import", &v23, 0xCu);
  }

  v19 = [(JaliscoImporter *)self updateLibraryFromRevision:self->_updateFromRevision toRevision:self->_updateToRevision withResponse:responseCopy clientIdentity:self->_clientIdentity itemsFiles:self->_itemsFiles];
  v20 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      msv_description = [v19 msv_description];
      v23 = 138543618;
      selfCopy4 = self;
      v25 = 2114;
      v26 = msv_description;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@ Import completed error=%{public}@", &v23, 0x16u);
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543362;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Import completed", &v23, 0xCu);
  }

  completionCopy[2](completionCopy, v19);
LABEL_7:
}

- (void)_performNextItemsPageRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  currentPageNumber = self->_currentPageNumber;
  self->_currentPageNumber = currentPageNumber + 1;
  currentPageNumber = [NSString stringWithFormat:@"items_%u.daap", currentPageNumber];
  v39[0] = self->_updateBaseDirectory;
  v39[1] = currentPageNumber;
  v30 = currentPageNumber;
  v6 = [NSArray arrayWithObjects:v39 count:2];
  v7 = [NSURL fileURLWithPathComponents:v6];

  if (self->_currentPaginationToken)
  {
    purchaseTokens = 0;
  }

  else
  {
    purchaseTokens = [(JaliscoImporter *)self purchaseTokens];
  }

  connection = [(JaliscoImporter *)self connection];
  databaseID = [connection databaseID];
  metadataKeys = [(JaliscoImporter *)self metadataKeys];
  v12 = [metadataKeys componentsJoinedByString:{@", "}];
  queryFilter = [(JaliscoImporter *)self queryFilter];
  v14 = [ICItemsRequest requestWithDatabaseID:databaseID metadataFilter:v12 queryFilter:queryFilter purchaseTokens:purchaseTokens includeHiddenItems:[(JaliscoImporter *)self includeHiddenItems] includePreorders:[(JaliscoImporter *)self includePreorders] paginationToken:self->_currentPaginationToken];

  [v14 setResponseDataDestinationFileURL:v7];
  if ([(JaliscoImporter *)self includeFlavors])
  {
    [v14 setValue:@"1" forArgument:@"includeItemFlavors"];
  }

  updateFromRevision = self->_updateFromRevision;
  if (updateFromRevision && self->_updateToRevision > updateFromRevision)
  {
    v16 = &v35 + 1;
    quot = self->_updateFromRevision;
    do
    {
      quot = div(quot, 10).quot;
      v18 = HIDWORD(quot);
      if (quot < 0)
      {
        LODWORD(v18) = -HIDWORD(quot);
      }

      *(v16 - 2) = v18 + 48;
      v19 = (v16 - 2);
      --v16;
    }

    while (quot);
    if ((updateFromRevision & 0x80000000) != 0)
    {
      *(v16 - 2) = 45;
      v19 = (v16 - 2);
    }

    v20 = CFStringCreateWithBytes(0, v19, &v35 - v19, 0x8000100u, 0);
    [v14 setValue:v20 forArgument:@"delta"];

    updateToRevision = self->_updateToRevision;
    if (updateToRevision)
    {
      v22 = &v35 + 1;
      v23 = self->_updateToRevision;
      do
      {
        v23 = div(v23, 10).quot;
        v24 = HIDWORD(v23);
        if (v23 < 0)
        {
          LODWORD(v24) = -HIDWORD(v23);
        }

        *(v22 - 2) = v24 + 48;
        v25 = (v22 - 2);
        --v22;
      }

      while (v23);
      if ((updateToRevision & 0x80000000) != 0)
      {
        *(v22 - 2) = 45;
        v25 = (v22 - 2);
      }

      v26 = CFStringCreateWithBytes(0, v25, &v35 - v25, 0x8000100u, 0);
    }

    else
    {
      v26 = @"0";
    }

    [v14 setValue:v26 forArgument:@"revision-id"];
  }

  v27 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v35 = 2114;
    v36 = v14;
    v37 = 2114;
    v38 = connection;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending items request %{public}@ on connection %{public}@", buf, 0x20u);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100054F98;
  v31[3] = &unk_1001DB368;
  v31[4] = self;
  v32 = completionCopy;
  v28 = completionCopy;
  [connection sendRequest:v14 withResponseHandler:v31];
}

- (NSString)description
{
  v3 = objc_opt_class();
  configuration = [(JaliscoImporter *)self configuration];
  userIdentity = [configuration userIdentity];
  v6 = [NSString stringWithFormat:@"<%@ %p [identity=%@, revision %u --> %u]>", v3, self, userIdentity, self->_updateFromRevision, self->_updateToRevision];

  return v6;
}

- (void)importTracksUpToRevision:(unsigned int)revision clientIdentity:(id)identity withCompletionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  self->_shouldRestart = 0;
  currentPaginationToken = self->_currentPaginationToken;
  self->_currentPaginationToken = 0;

  *&self->_currentPageNumber = 1;
  v11 = NSTemporaryDirectory();
  v32[0] = v11;
  v32[1] = @"com.apple.MediaServices";
  v12 = +[NSUUID UUID];
  uUIDString = [v12 UUIDString];
  v32[2] = uUIDString;
  v14 = [NSArray arrayWithObjects:v32 count:3];
  v15 = [NSString pathWithComponents:v14];
  updateBaseDirectory = self->_updateBaseDirectory;
  self->_updateBaseDirectory = v15;

  self->_updateToRevision = revision;
  self->_updateFromRevision = [(JaliscoImporter *)self onDiskRevision];
  v17 = [NSMutableArray arrayWithCapacity:3];
  itemsFiles = self->_itemsFiles;
  self->_itemsFiles = v17;

  clientIdentity = self->_clientIdentity;
  self->_clientIdentity = identityCopy;
  v20 = identityCopy;

  v21 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    updateFromRevision = self->_updateFromRevision;
    *buf = 138543874;
    selfCopy = self;
    v28 = 1024;
    revisionCopy = revision;
    v30 = 1024;
    v31 = updateFromRevision;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Importing tracks up to revision %u. onDiskRevision=%u", buf, 0x18u);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000554CC;
  v24[3] = &unk_1001DD8F0;
  v25 = handlerCopy;
  v23 = handlerCopy;
  [(JaliscoImporter *)self _performNextItemsPageRequestWithCompletion:v24];
}

- (JaliscoImporter)initWithConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"JaliscoImporter.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  v16.receiver = self;
  v16.super_class = JaliscoImporter;
  v7 = [(JaliscoImporter *)&v16 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_connection, connection);
    configuration = [connectionCopy configuration];
    configuration = v8->_configuration;
    v8->_configuration = configuration;

    userIdentity = [connectionCopy userIdentity];
    v12 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];
    musicLibrary = v8->_musicLibrary;
    v8->_musicLibrary = v12;
  }

  return v8;
}

+ (OS_os_log)oversizeLogCategory
{
  v4 = [JaliscoImporter instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"JaliscoImporter.m" lineNumber:51 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"JaliscoImporter"}];
  }

  return &_os_log_default;
}

+ (OS_os_log)logCategory
{
  v4 = [JaliscoImporter instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"JaliscoImporter.m" lineNumber:46 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"JaliscoImporter"}];
  }

  return &_os_log_default;
}

@end