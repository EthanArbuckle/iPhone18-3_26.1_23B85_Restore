@interface MADAutoAssetSecureLock
- (MADAutoAssetSecureLock)initWithCoder:(id)coder;
- (id)initProcessLifeLock:(id)lock forAssetSelector:(id)selector forClientProcessName:(id)name forClientProcessID:(int64_t)d;
- (id)name;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoAssetSecureLock

- (id)initProcessLifeLock:(id)lock forAssetSelector:(id)selector forClientProcessName:(id)name forClientProcessID:(int64_t)d
{
  lockCopy = lock;
  selectorCopy = selector;
  nameCopy = name;
  v28.receiver = self;
  v28.super_class = MADAutoAssetSecureLock;
  v13 = [(MADAutoAssetSecureLock *)&v28 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v13->_clientProcessName, name);
  v14->_clientProcessID = d;
  v15 = objc_alloc_init(NSMutableDictionary);
  lockedAssetSelectors = v14->_lockedAssetSelectors;
  v14->_lockedAssetSelectors = v15;

  if (!selectorCopy)
  {
    v25 = _MADLog(@"Auto");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v30 = lockCopy;
      v31 = 2114;
      v32 = nameCopy;
      v33 = 2048;
      dCopy2 = d;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "[AUTO-SECURE-LOCK] {_initProcessLifeLock} ERROR | MISSING fullAssetSelector | activityName:%{public}@ | clientProcessName:%{public}@ | clientProcessID:%ld", buf, 0x20u);
    }

    goto LABEL_13;
  }

  assetType = [selectorCopy assetType];
  if (!assetType)
  {
LABEL_11:
    v25 = _MADLog(@"Auto");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      summary = [selectorCopy summary];
      *buf = 138544130;
      v30 = lockCopy;
      v31 = 2114;
      v32 = nameCopy;
      v33 = 2048;
      dCopy2 = d;
      v35 = 2114;
      v36 = summary;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "[AUTO-SECURE-LOCK] {_initProcessLifeLock} ERROR | incomplete asset-selector | activityName:%{public}@ | clientProcessName:%{public}@ | clientProcessID:%ld | fullAssetSelector:%{public}@", buf, 0x2Au);
    }

LABEL_13:

    v24 = 0;
    goto LABEL_14;
  }

  v18 = assetType;
  assetSpecifier = [selectorCopy assetSpecifier];
  if (!assetSpecifier)
  {

    goto LABEL_11;
  }

  v20 = assetSpecifier;
  assetVersion = [selectorCopy assetVersion];

  if (!assetVersion)
  {
    goto LABEL_11;
  }

  v22 = v14->_lockedAssetSelectors;
  persistedEntryID = [selectorCopy persistedEntryID];
  [(NSMutableDictionary *)v22 setObject:selectorCopy forKey:persistedEntryID];

LABEL_7:
  v24 = v14;
LABEL_14:

  return v24;
}

- (MADAutoAssetSecureLock)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MADAutoAssetSecureLock;
  v5 = [(MADAutoAssetSecureLock *)&v15 init];
  if (v5)
  {
    v6 = [NSSet alloc];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessName"];
    clientProcessName = v5->_clientProcessName;
    v5->_clientProcessName = v10;

    v5->_clientProcessID = [coderCopy decodeIntegerForKey:@"clientProcessID"];
    v12 = [coderCopy decodeObjectOfClasses:v9 forKey:@"lockedAssetSelectors"];
    lockedAssetSelectors = v5->_lockedAssetSelectors;
    v5->_lockedAssetSelectors = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientProcessName = [(MADAutoAssetSecureLock *)self clientProcessName];
  [coderCopy encodeObject:clientProcessName forKey:@"clientProcessName"];

  [coderCopy encodeInteger:-[MADAutoAssetSecureLock clientProcessID](self forKey:{"clientProcessID"), @"clientProcessID"}];
  lockedAssetSelectors = [(MADAutoAssetSecureLock *)self lockedAssetSelectors];
  [coderCopy encodeObject:lockedAssetSelectors forKey:@"lockedAssetSelectors"];
}

- (id)summary
{
  clientProcessName = [(MADAutoAssetSecureLock *)self clientProcessName];
  clientProcessID = [(MADAutoAssetSecureLock *)self clientProcessID];
  lockedAssetSelectors = [(MADAutoAssetSecureLock *)self lockedAssetSelectors];
  v6 = [NSDictionary safeSummaryForDictionary:lockedAssetSelectors];
  v7 = [NSString stringWithFormat:@"clientProcessName:%@(pid:%ld)|lockedAssetSelectors:%@", clientProcessName, clientProcessID, v6];

  return v7;
}

- (id)name
{
  clientProcessName = [(MADAutoAssetSecureLock *)self clientProcessName];
  v4 = [NSString stringWithFormat:@"%@_%ld", clientProcessName, [(MADAutoAssetSecureLock *)self clientProcessID]];

  return v4;
}

@end