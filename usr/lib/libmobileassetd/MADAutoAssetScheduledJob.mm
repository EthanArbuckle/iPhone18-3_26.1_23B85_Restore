@interface MADAutoAssetScheduledJob
- (MADAutoAssetScheduledJob)initWithCoder:(id)coder;
- (id)copy;
- (id)initForAssetSelector:(id)selector withActivityInterval:(int64_t)interval forPushedJob:(BOOL)job forSetJob:(BOOL)setJob withSetPolicy:(id)policy withPushedPolicy:(id)pushedPolicy requiringRetry:(BOOL)retry;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoAssetScheduledJob

- (id)initForAssetSelector:(id)selector withActivityInterval:(int64_t)interval forPushedJob:(BOOL)job forSetJob:(BOOL)setJob withSetPolicy:(id)policy withPushedPolicy:(id)pushedPolicy requiringRetry:(BOOL)retry
{
  selectorCopy = selector;
  policyCopy = policy;
  pushedPolicyCopy = pushedPolicy;
  v22.receiver = self;
  v22.super_class = MADAutoAssetScheduledJob;
  v19 = [(MADAutoAssetScheduledJob *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_assetSelector, selector);
    v20->_intervalSecs = interval;
    v20->_remainingSecs = interval;
    v20->_pushedJob = job;
    v20->_setJob = setJob;
    objc_storeStrong(&v20->_setPolicy, policy);
    objc_storeStrong(&v20->_pushedPolicy, pushedPolicy);
    v20->_requiringRetry = retry;
  }

  return v20;
}

- (MADAutoAssetScheduledJob)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MADAutoAssetScheduledJob;
  v5 = [(MADAutoAssetScheduledJob *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v6;

    v5->_intervalSecs = [coderCopy decodeInt64ForKey:@"intervalSecs"];
    v5->_remainingSecs = [coderCopy decodeInt64ForKey:@"remainingSecs"];
    v5->_pushedJob = [coderCopy decodeBoolForKey:@"pushedJob"];
    v5->_setJob = [coderCopy decodeBoolForKey:@"setJob"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setPolicy"];
    setPolicy = v5->_setPolicy;
    v5->_setPolicy = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushedPolicy"];
    pushedPolicy = v5->_pushedPolicy;
    v5->_pushedPolicy = v10;

    v5->_requiringRetry = [coderCopy decodeBoolForKey:@"requiringRetry"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetSelector = [(MADAutoAssetScheduledJob *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  [coderCopy encodeInt64:-[MADAutoAssetScheduledJob intervalSecs](self forKey:{"intervalSecs"), @"intervalSecs"}];
  [coderCopy encodeInt64:-[MADAutoAssetScheduledJob remainingSecs](self forKey:{"remainingSecs"), @"remainingSecs"}];
  [coderCopy encodeBool:-[MADAutoAssetScheduledJob pushedJob](self forKey:{"pushedJob"), @"pushedJob"}];
  [coderCopy encodeBool:-[MADAutoAssetScheduledJob setJob](self forKey:{"setJob"), @"setJob"}];
  setPolicy = [(MADAutoAssetScheduledJob *)self setPolicy];
  [coderCopy encodeObject:setPolicy forKey:@"setPolicy"];

  pushedPolicy = [(MADAutoAssetScheduledJob *)self pushedPolicy];
  [coderCopy encodeObject:pushedPolicy forKey:@"pushedPolicy"];

  [coderCopy encodeBool:-[MADAutoAssetScheduledJob requiringRetry](self forKey:{"requiringRetry"), @"requiringRetry"}];
}

- (id)copy
{
  v3 = [MADAutoAssetScheduledJob alloc];
  assetSelector = [(MADAutoAssetScheduledJob *)self assetSelector];
  intervalSecs = [(MADAutoAssetScheduledJob *)self intervalSecs];
  pushedJob = [(MADAutoAssetScheduledJob *)self pushedJob];
  setJob = [(MADAutoAssetScheduledJob *)self setJob];
  setPolicy = [(MADAutoAssetScheduledJob *)self setPolicy];
  pushedPolicy = [(MADAutoAssetScheduledJob *)self pushedPolicy];
  LOBYTE(v12) = [(MADAutoAssetScheduledJob *)self requiringRetry];
  v10 = [(MADAutoAssetScheduledJob *)v3 initForAssetSelector:assetSelector withActivityInterval:intervalSecs forPushedJob:pushedJob forSetJob:setJob withSetPolicy:setPolicy withPushedPolicy:pushedPolicy requiringRetry:v12];

  [v10 setRemainingSecs:{-[MADAutoAssetScheduledJob remainingSecs](self, "remainingSecs")}];
  return v10;
}

- (id)summary
{
  assetSelector = [(MADAutoAssetScheduledJob *)self assetSelector];
  summary = [assetSelector summary];
  v16 = [MADAutoAssetControlManager allocIntervalString:[(MADAutoAssetScheduledJob *)self intervalSecs]];
  v4 = [MADAutoAssetControlManager allocIntervalString:[(MADAutoAssetScheduledJob *)self remainingSecs]];
  summary2 = @"N";
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

  setPolicy = [(MADAutoAssetScheduledJob *)self setPolicy];
  if (setPolicy)
  {
    setPolicy2 = [(MADAutoAssetScheduledJob *)self setPolicy];
    summary2 = [setPolicy2 summary];
  }

  pushedPolicy = [(MADAutoAssetScheduledJob *)self pushedPolicy];
  if (pushedPolicy)
  {
    pushedPolicy2 = [(MADAutoAssetScheduledJob *)self pushedPolicy];
    summary3 = [pushedPolicy2 summary];
  }

  else
  {
    summary3 = @"N";
  }

  if ([(MADAutoAssetScheduledJob *)self requiringRetry])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v12 = [NSString stringWithFormat:@"selector:%@|intervalSecs:%@|remainingSecs:%@|pushedJob:%@||setJob:%@|setPolicy:%@|pushedPolicy:%@|requiringRetry:%@", summary, v16, v4, v15, v7, summary2, summary3, v11];
  if (pushedPolicy)
  {
  }

  if (setPolicy)
  {
  }

  return v12;
}

@end