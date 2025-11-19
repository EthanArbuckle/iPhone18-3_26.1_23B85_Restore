@interface MADAutoAssetScheduledJob
- (MADAutoAssetScheduledJob)initWithCoder:(id)a3;
- (id)copy;
- (id)initForAssetSelector:(id)a3 withActivityInterval:(int64_t)a4 forPushedJob:(BOOL)a5 forSetJob:(BOOL)a6 withSetPolicy:(id)a7 withPushedPolicy:(id)a8 requiringRetry:(BOOL)a9;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoAssetScheduledJob

- (id)initForAssetSelector:(id)a3 withActivityInterval:(int64_t)a4 forPushedJob:(BOOL)a5 forSetJob:(BOOL)a6 withSetPolicy:(id)a7 withPushedPolicy:(id)a8 requiringRetry:(BOOL)a9
{
  v16 = a3;
  v17 = a7;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = MADAutoAssetScheduledJob;
  v19 = [(MADAutoAssetScheduledJob *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_assetSelector, a3);
    v20->_intervalSecs = a4;
    v20->_remainingSecs = a4;
    v20->_pushedJob = a5;
    v20->_setJob = a6;
    objc_storeStrong(&v20->_setPolicy, a7);
    objc_storeStrong(&v20->_pushedPolicy, a8);
    v20->_requiringRetry = a9;
  }

  return v20;
}

- (MADAutoAssetScheduledJob)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MADAutoAssetScheduledJob;
  v5 = [(MADAutoAssetScheduledJob *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v6;

    v5->_intervalSecs = [v4 decodeInt64ForKey:@"intervalSecs"];
    v5->_remainingSecs = [v4 decodeInt64ForKey:@"remainingSecs"];
    v5->_pushedJob = [v4 decodeBoolForKey:@"pushedJob"];
    v5->_setJob = [v4 decodeBoolForKey:@"setJob"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setPolicy"];
    setPolicy = v5->_setPolicy;
    v5->_setPolicy = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushedPolicy"];
    pushedPolicy = v5->_pushedPolicy;
    v5->_pushedPolicy = v10;

    v5->_requiringRetry = [v4 decodeBoolForKey:@"requiringRetry"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MADAutoAssetScheduledJob *)self assetSelector];
  [v7 encodeObject:v4 forKey:@"assetSelector"];

  [v7 encodeInt64:-[MADAutoAssetScheduledJob intervalSecs](self forKey:{"intervalSecs"), @"intervalSecs"}];
  [v7 encodeInt64:-[MADAutoAssetScheduledJob remainingSecs](self forKey:{"remainingSecs"), @"remainingSecs"}];
  [v7 encodeBool:-[MADAutoAssetScheduledJob pushedJob](self forKey:{"pushedJob"), @"pushedJob"}];
  [v7 encodeBool:-[MADAutoAssetScheduledJob setJob](self forKey:{"setJob"), @"setJob"}];
  v5 = [(MADAutoAssetScheduledJob *)self setPolicy];
  [v7 encodeObject:v5 forKey:@"setPolicy"];

  v6 = [(MADAutoAssetScheduledJob *)self pushedPolicy];
  [v7 encodeObject:v6 forKey:@"pushedPolicy"];

  [v7 encodeBool:-[MADAutoAssetScheduledJob requiringRetry](self forKey:{"requiringRetry"), @"requiringRetry"}];
}

- (id)copy
{
  v3 = [MADAutoAssetScheduledJob alloc];
  v4 = [(MADAutoAssetScheduledJob *)self assetSelector];
  v5 = [(MADAutoAssetScheduledJob *)self intervalSecs];
  v6 = [(MADAutoAssetScheduledJob *)self pushedJob];
  v7 = [(MADAutoAssetScheduledJob *)self setJob];
  v8 = [(MADAutoAssetScheduledJob *)self setPolicy];
  v9 = [(MADAutoAssetScheduledJob *)self pushedPolicy];
  LOBYTE(v12) = [(MADAutoAssetScheduledJob *)self requiringRetry];
  v10 = [(MADAutoAssetScheduledJob *)v3 initForAssetSelector:v4 withActivityInterval:v5 forPushedJob:v6 forSetJob:v7 withSetPolicy:v8 withPushedPolicy:v9 requiringRetry:v12];

  [v10 setRemainingSecs:{-[MADAutoAssetScheduledJob remainingSecs](self, "remainingSecs")}];
  return v10;
}

- (id)summary
{
  v18 = [(MADAutoAssetScheduledJob *)self assetSelector];
  v17 = [v18 summary];
  v16 = [MADAutoAssetControlManager allocIntervalString:[(MADAutoAssetScheduledJob *)self intervalSecs]];
  v4 = [MADAutoAssetControlManager allocIntervalString:[(MADAutoAssetScheduledJob *)self remainingSecs]];
  v5 = @"N";
  if ([(MADAutoAssetScheduledJob *)self pushedJob])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v15 = v6;
  if ([(MADAutoAssetScheduledJob *)self setJob])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v8 = [(MADAutoAssetScheduledJob *)self setPolicy];
  if (v8)
  {
    v14 = [(MADAutoAssetScheduledJob *)self setPolicy];
    v5 = [v14 summary];
  }

  v9 = [(MADAutoAssetScheduledJob *)self pushedPolicy];
  if (v9)
  {
    v2 = [(MADAutoAssetScheduledJob *)self pushedPolicy];
    v10 = [v2 summary];
  }

  else
  {
    v10 = @"N";
  }

  if ([(MADAutoAssetScheduledJob *)self requiringRetry])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v12 = [NSString stringWithFormat:@"selector:%@|intervalSecs:%@|remainingSecs:%@|pushedJob:%@||setJob:%@|setPolicy:%@|pushedPolicy:%@|requiringRetry:%@", v17, v16, v4, v15, v7, v5, v10, v11];
  if (v9)
  {
  }

  if (v8)
  {
  }

  return v12;
}

@end