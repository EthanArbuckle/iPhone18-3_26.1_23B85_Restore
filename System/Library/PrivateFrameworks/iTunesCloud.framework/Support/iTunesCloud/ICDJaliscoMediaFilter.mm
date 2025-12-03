@interface ICDJaliscoMediaFilter
- (ICDJaliscoMediaFilter)initWithKindsToExclude:(id)exclude supportedMediaKindsHandler:(id)handler;
- (NSArray)supportedMediaKinds;
- (NSString)daapQueryFilterString;
@end

@implementation ICDJaliscoMediaFilter

- (NSString)daapQueryFilterString
{
  v3 = [@"com.apple.itunes.extended-media-kind" stringByReplacingOccurrencesOfString:@"-" withString:@"\\-"];
  supportedMediaKinds = [(ICDJaliscoMediaFilter *)self supportedMediaKinds];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [supportedMediaKinds count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  supportedMediaKinds2 = [(ICDJaliscoMediaFilter *)self supportedMediaKinds];
  v7 = [supportedMediaKinds2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(supportedMediaKinds2);
        }

        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"'%@:%d'", v3, [*(*(&v16 + 1) + 8 * i) intValue]);
        [v5 addObject:v11];
      }

      v8 = [supportedMediaKinds2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = [v5 componentsJoinedByString:{@", "}];
  v13 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Media importer query filter set to: %{public}@", buf, 0x16u);
  }

  v14 = [NSString stringWithFormat:@"(%@)", v12];

  return v14;
}

- (NSArray)supportedMediaKinds
{
  supportedMediaKinds = self->_supportedMediaKinds;
  if (!supportedMediaKinds)
  {
    if (self->_excludedKinds)
    {
      [NSSet setWithArray:?];
    }

    else
    {
      +[NSSet set];
    }
    v4 = ;
    v5 = [NSMutableSet setWithObject:&off_1001ED4E0];
    if (ICSystemApplicationIsInstalled())
    {
      if ([(ICDJaliscoSupportedMediaKindsHandler *)self->_supportedMediaKindsHandler shouldIncludeMediaKindSongForJaliscoImport])
      {
        [v5 addObject:&off_1001ED4F8];
      }

      [v5 addObject:&off_1001ED510];
      [v5 addObject:&off_1001ED528];
    }

    if (ICSystemApplicationIsInstalled())
    {
      [v5 addObject:&off_1001ED540];
      [v5 addObject:&off_1001ED558];
      [v5 addObject:&off_1001ED570];
    }

    if (ICSystemApplicationIsInstalled())
    {
      [v5 addObject:&off_1001ED588];
    }

    [v5 minusSet:v4];
    allObjects = [v5 allObjects];
    v7 = [ML3MusicLibrary jaliscoGetSortedMediaKinds:allObjects];
    v8 = self->_supportedMediaKinds;
    self->_supportedMediaKinds = v7;

    v9 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_supportedMediaKinds;
      v12 = 138543874;
      selfCopy = self;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Supported media kinds=%{public}@, Disabled media kinds=%{public}@", &v12, 0x20u);
    }

    supportedMediaKinds = self->_supportedMediaKinds;
  }

  return supportedMediaKinds;
}

- (ICDJaliscoMediaFilter)initWithKindsToExclude:(id)exclude supportedMediaKindsHandler:(id)handler
{
  excludeCopy = exclude;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = ICDJaliscoMediaFilter;
  v8 = [(ICDJaliscoMediaFilter *)&v12 init];
  if (v8)
  {
    v9 = [excludeCopy copy];
    excludedKinds = v8->_excludedKinds;
    v8->_excludedKinds = v9;

    objc_storeStrong(&v8->_supportedMediaKindsHandler, handler);
  }

  return v8;
}

@end