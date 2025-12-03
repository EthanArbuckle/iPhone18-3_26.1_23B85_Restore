@interface MANAutoAssetSetInfoDesire
- (MANAutoAssetSetInfoDesire)initWithCoder:(id)coder;
- (id)copy;
- (id)initForClientAssetSetPolicy:(id)policy reasonDesired:(id)desired awaitingDownloadOfDiscovered:(BOOL)discovered withCheckWaitTimeout:(int64_t)timeout withLockWaitTimeout:(int64_t)waitTimeout desiringProgress:(BOOL)progress;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetInfoDesire

- (id)initForClientAssetSetPolicy:(id)policy reasonDesired:(id)desired awaitingDownloadOfDiscovered:(BOOL)discovered withCheckWaitTimeout:(int64_t)timeout withLockWaitTimeout:(int64_t)waitTimeout desiringProgress:(BOOL)progress
{
  policyCopy = policy;
  desiredCopy = desired;
  v20.receiver = self;
  v20.super_class = MANAutoAssetSetInfoDesire;
  v17 = [(MANAutoAssetSetInfoDesire *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientAssetSetPolicy, policy);
    objc_storeStrong(&v18->_desireReason, desired);
    v18->_awaitDownloadingOfDiscovered = discovered;
    v18->_checkWaitTimeoutSecs = timeout;
    v18->_lockWaitTimeoutSecs = waitTimeout;
    v18->_downloadProgressDesired = progress;
  }

  return v18;
}

- (MANAutoAssetSetInfoDesire)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MANAutoAssetSetInfoDesire;
  v5 = [(MANAutoAssetSetInfoDesire *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientAssetSetPolicy"];
    clientAssetSetPolicy = v5->_clientAssetSetPolicy;
    v5->_clientAssetSetPolicy = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"desireReason"];
    desireReason = v5->_desireReason;
    v5->_desireReason = v8;

    v5->_awaitDownloadingOfDiscovered = [coderCopy decodeBoolForKey:@"awaitDownloadingOfDiscovered"];
    v5->_checkWaitTimeoutSecs = [coderCopy decodeIntegerForKey:@"checkWaitTimeoutSecs"];
    v5->_lockWaitTimeoutSecs = [coderCopy decodeIntegerForKey:@"lockWaitTimeoutSecs"];
    v5->_downloadProgressDesired = [coderCopy decodeBoolForKey:@"downloadProgressDesired"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientAssetSetPolicy = [(MANAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  [coderCopy encodeObject:clientAssetSetPolicy forKey:@"clientAssetSetPolicy"];

  desireReason = [(MANAutoAssetSetInfoDesire *)self desireReason];
  [coderCopy encodeObject:desireReason forKey:@"desireReason"];

  [coderCopy encodeBool:-[MANAutoAssetSetInfoDesire awaitDownloadingOfDiscovered](self forKey:{"awaitDownloadingOfDiscovered"), @"awaitDownloadingOfDiscovered"}];
  [coderCopy encodeInteger:-[MANAutoAssetSetInfoDesire checkWaitTimeoutSecs](self forKey:{"checkWaitTimeoutSecs"), @"checkWaitTimeoutSecs"}];
  [coderCopy encodeInteger:-[MANAutoAssetSetInfoDesire lockWaitTimeoutSecs](self forKey:{"lockWaitTimeoutSecs"), @"lockWaitTimeoutSecs"}];
  [coderCopy encodeBool:-[MANAutoAssetSetInfoDesire downloadProgressDesired](self forKey:{"downloadProgressDesired"), @"downloadProgressDesired"}];
}

- (id)copy
{
  v3 = [MANAutoAssetSetInfoDesire alloc];
  clientAssetSetPolicy = [(MANAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  v5 = [clientAssetSetPolicy copy];
  desireReason = [(MANAutoAssetSetInfoDesire *)self desireReason];
  v7 = [(MANAutoAssetSetInfoDesire *)v3 initForClientAssetSetPolicy:v5 reasonDesired:desireReason awaitingDownloadOfDiscovered:[(MANAutoAssetSetInfoDesire *)self awaitDownloadingOfDiscovered] withCheckWaitTimeout:[(MANAutoAssetSetInfoDesire *)self checkWaitTimeoutSecs] withLockWaitTimeout:[(MANAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs] desiringProgress:[(MANAutoAssetSetInfoDesire *)self downloadProgressDesired]];

  return v7;
}

- (id)summary
{
  clientAssetSetPolicy = [(MANAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  if (clientAssetSetPolicy)
  {
  }

  else
  {
    desireReason = [(MANAutoAssetSetInfoDesire *)self desireReason];

    if (!desireReason)
    {
      v11 = @"byPolicy";
      goto LABEL_13;
    }
  }

  v6 = [NSString alloc];
  clientAssetSetPolicy2 = [(MANAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  if (clientAssetSetPolicy2)
  {
    clientAssetSetPolicy3 = [(MANAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
    summary = [clientAssetSetPolicy3 summary];
  }

  else
  {
    summary = @"N";
  }

  desireReason2 = [(MANAutoAssetSetInfoDesire *)self desireReason];
  if (desireReason2)
  {
    desireReason3 = [(MANAutoAssetSetInfoDesire *)self desireReason];
    v11 = [v6 initWithFormat:@"clientAssetSetPolicy:%@|desireReason:%@", summary, desireReason3];
  }

  else
  {
    v11 = [v6 initWithFormat:@"clientAssetSetPolicy:%@|desireReason:%@", summary, @"N"];
  }

  if (clientAssetSetPolicy2)
  {
  }

LABEL_13:
  v12 = [[NSString alloc] initWithFormat:@"%ld", -[MANAutoAssetSetInfoDesire checkWaitTimeoutSecs](self, "checkWaitTimeoutSecs")];
  v13 = [[NSString alloc] initWithFormat:@"%ld", -[MANAutoAssetSetInfoDesire lockWaitTimeoutSecs](self, "lockWaitTimeoutSecs")];
  if ([(MANAutoAssetSetInfoDesire *)self checkWaitTimeoutSecs])
  {
    if ([(MANAutoAssetSetInfoDesire *)self checkWaitTimeoutSecs]!= -2)
    {
      goto LABEL_18;
    }

    v14 = @"DEFAULT";
  }

  else
  {
    v14 = @"NO_WAIT";
  }

  v12 = v14;
LABEL_18:
  if (![(MANAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs])
  {
    v15 = @"NO_WAIT";
    goto LABEL_24;
  }

  if ([(MANAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs]== -2)
  {
    v15 = @"DEFAULT";
LABEL_24:

    v13 = v15;
    goto LABEL_25;
  }

  if ([(MANAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs]== -3)
  {
    v15 = @"NO_WAIT_NOT_PERSISTED";
    goto LABEL_24;
  }

LABEL_25:
  if ([(MANAutoAssetSetInfoDesire *)self checkWaitTimeoutSecs]== -101 && [(MANAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs]== -101)
  {
    if ([(MANAutoAssetSetInfoDesire *)self awaitDownloadingOfDiscovered])
    {
      v16 = @"Y";
    }

    else
    {
      v16 = @"N";
    }

    if ([(MANAutoAssetSetInfoDesire *)self downloadProgressDesired])
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    [NSString stringWithFormat:@"%@|awaitDowload:%@|progressDesired:%@", v11, v16, v17, v25, v26];
  }

  else if ([(MANAutoAssetSetInfoDesire *)self checkWaitTimeoutSecs]== -101)
  {
    if ([(MANAutoAssetSetInfoDesire *)self awaitDownloadingOfDiscovered])
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    if ([(MANAutoAssetSetInfoDesire *)self downloadProgressDesired])
    {
      v19 = @"Y";
    }

    else
    {
      v19 = @"N";
    }

    [NSString stringWithFormat:@"%@|awaitDowload:%@|lockSecs:%@, progressDesired:%@", v11, v18, v13, v19, v26];
  }

  else
  {
    lockWaitTimeoutSecs = [(MANAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs];
    if ([(MANAutoAssetSetInfoDesire *)self awaitDownloadingOfDiscovered])
    {
      v21 = @"Y";
    }

    else
    {
      v21 = @"N";
    }

    if ([(MANAutoAssetSetInfoDesire *)self downloadProgressDesired])
    {
      v22 = @"Y";
    }

    else
    {
      v22 = @"N";
    }

    if (lockWaitTimeoutSecs == -101)
    {
      [NSString stringWithFormat:@"%@|awaitDowload:%@|checkSecs:%@, progressDesired:%@", v11, v21, v12, v22, v26];
    }

    else
    {
      [NSString stringWithFormat:@"%@|awaitDowload:%@|checkSecs:%@, lockSecs:%@, progressDesired:%@", v11, v21, v12, v13, v22];
    }
  }
  v23 = ;

  return v23;
}

@end