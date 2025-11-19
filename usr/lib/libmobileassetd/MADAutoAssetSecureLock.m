@interface MADAutoAssetSecureLock
- (MADAutoAssetSecureLock)initWithCoder:(id)a3;
- (id)initProcessLifeLock:(id)a3 forAssetSelector:(id)a4 forClientProcessName:(id)a5 forClientProcessID:(int64_t)a6;
- (id)name;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoAssetSecureLock

- (id)initProcessLifeLock:(id)a3 forAssetSelector:(id)a4 forClientProcessName:(id)a5 forClientProcessID:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28.receiver = self;
  v28.super_class = MADAutoAssetSecureLock;
  v13 = [(MADAutoAssetSecureLock *)&v28 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v13->_clientProcessName, a5);
  v14->_clientProcessID = a6;
  v15 = objc_alloc_init(NSMutableDictionary);
  lockedAssetSelectors = v14->_lockedAssetSelectors;
  v14->_lockedAssetSelectors = v15;

  if (!v11)
  {
    v25 = _MADLog(@"Auto");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v30 = v10;
      v31 = 2114;
      v32 = v12;
      v33 = 2048;
      v34 = a6;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "[AUTO-SECURE-LOCK] {_initProcessLifeLock} ERROR | MISSING fullAssetSelector | activityName:%{public}@ | clientProcessName:%{public}@ | clientProcessID:%ld", buf, 0x20u);
    }

    goto LABEL_13;
  }

  v17 = [v11 assetType];
  if (!v17)
  {
LABEL_11:
    v25 = _MADLog(@"Auto");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v11 summary];
      *buf = 138544130;
      v30 = v10;
      v31 = 2114;
      v32 = v12;
      v33 = 2048;
      v34 = a6;
      v35 = 2114;
      v36 = v26;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "[AUTO-SECURE-LOCK] {_initProcessLifeLock} ERROR | incomplete asset-selector | activityName:%{public}@ | clientProcessName:%{public}@ | clientProcessID:%ld | fullAssetSelector:%{public}@", buf, 0x2Au);
    }

LABEL_13:

    v24 = 0;
    goto LABEL_14;
  }

  v18 = v17;
  v19 = [v11 assetSpecifier];
  if (!v19)
  {

    goto LABEL_11;
  }

  v20 = v19;
  v21 = [v11 assetVersion];

  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = v14->_lockedAssetSelectors;
  v23 = [v11 persistedEntryID];
  [(NSMutableDictionary *)v22 setObject:v11 forKey:v23];

LABEL_7:
  v24 = v14;
LABEL_14:

  return v24;
}

- (MADAutoAssetSecureLock)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MADAutoAssetSecureLock;
  v5 = [(MADAutoAssetSecureLock *)&v15 init];
  if (v5)
  {
    v6 = [NSSet alloc];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessName"];
    clientProcessName = v5->_clientProcessName;
    v5->_clientProcessName = v10;

    v5->_clientProcessID = [v4 decodeIntegerForKey:@"clientProcessID"];
    v12 = [v4 decodeObjectOfClasses:v9 forKey:@"lockedAssetSelectors"];
    lockedAssetSelectors = v5->_lockedAssetSelectors;
    v5->_lockedAssetSelectors = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetSecureLock *)self clientProcessName];
  [v4 encodeObject:v5 forKey:@"clientProcessName"];

  [v4 encodeInteger:-[MADAutoAssetSecureLock clientProcessID](self forKey:{"clientProcessID"), @"clientProcessID"}];
  v6 = [(MADAutoAssetSecureLock *)self lockedAssetSelectors];
  [v4 encodeObject:v6 forKey:@"lockedAssetSelectors"];
}

- (id)summary
{
  v3 = [(MADAutoAssetSecureLock *)self clientProcessName];
  v4 = [(MADAutoAssetSecureLock *)self clientProcessID];
  v5 = [(MADAutoAssetSecureLock *)self lockedAssetSelectors];
  v6 = [NSDictionary safeSummaryForDictionary:v5];
  v7 = [NSString stringWithFormat:@"clientProcessName:%@(pid:%ld)|lockedAssetSelectors:%@", v3, v4, v6];

  return v7;
}

- (id)name
{
  v3 = [(MADAutoAssetSecureLock *)self clientProcessName];
  v4 = [NSString stringWithFormat:@"%@_%ld", v3, [(MADAutoAssetSecureLock *)self clientProcessID]];

  return v4;
}

@end