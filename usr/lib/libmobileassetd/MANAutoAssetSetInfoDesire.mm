@interface MANAutoAssetSetInfoDesire
- (MANAutoAssetSetInfoDesire)initWithCoder:(id)a3;
- (id)copy;
- (id)initForClientAssetSetPolicy:(id)a3 reasonDesired:(id)a4 awaitingDownloadOfDiscovered:(BOOL)a5 withCheckWaitTimeout:(int64_t)a6 withLockWaitTimeout:(int64_t)a7 desiringProgress:(BOOL)a8;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetInfoDesire

- (id)initForClientAssetSetPolicy:(id)a3 reasonDesired:(id)a4 awaitingDownloadOfDiscovered:(BOOL)a5 withCheckWaitTimeout:(int64_t)a6 withLockWaitTimeout:(int64_t)a7 desiringProgress:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = MANAutoAssetSetInfoDesire;
  v17 = [(MANAutoAssetSetInfoDesire *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientAssetSetPolicy, a3);
    objc_storeStrong(&v18->_desireReason, a4);
    v18->_awaitDownloadingOfDiscovered = a5;
    v18->_checkWaitTimeoutSecs = a6;
    v18->_lockWaitTimeoutSecs = a7;
    v18->_downloadProgressDesired = a8;
  }

  return v18;
}

- (MANAutoAssetSetInfoDesire)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MANAutoAssetSetInfoDesire;
  v5 = [(MANAutoAssetSetInfoDesire *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientAssetSetPolicy"];
    clientAssetSetPolicy = v5->_clientAssetSetPolicy;
    v5->_clientAssetSetPolicy = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"desireReason"];
    desireReason = v5->_desireReason;
    v5->_desireReason = v8;

    v5->_awaitDownloadingOfDiscovered = [v4 decodeBoolForKey:@"awaitDownloadingOfDiscovered"];
    v5->_checkWaitTimeoutSecs = [v4 decodeIntegerForKey:@"checkWaitTimeoutSecs"];
    v5->_lockWaitTimeoutSecs = [v4 decodeIntegerForKey:@"lockWaitTimeoutSecs"];
    v5->_downloadProgressDesired = [v4 decodeBoolForKey:@"downloadProgressDesired"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MANAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  [v6 encodeObject:v4 forKey:@"clientAssetSetPolicy"];

  v5 = [(MANAutoAssetSetInfoDesire *)self desireReason];
  [v6 encodeObject:v5 forKey:@"desireReason"];

  [v6 encodeBool:-[MANAutoAssetSetInfoDesire awaitDownloadingOfDiscovered](self forKey:{"awaitDownloadingOfDiscovered"), @"awaitDownloadingOfDiscovered"}];
  [v6 encodeInteger:-[MANAutoAssetSetInfoDesire checkWaitTimeoutSecs](self forKey:{"checkWaitTimeoutSecs"), @"checkWaitTimeoutSecs"}];
  [v6 encodeInteger:-[MANAutoAssetSetInfoDesire lockWaitTimeoutSecs](self forKey:{"lockWaitTimeoutSecs"), @"lockWaitTimeoutSecs"}];
  [v6 encodeBool:-[MANAutoAssetSetInfoDesire downloadProgressDesired](self forKey:{"downloadProgressDesired"), @"downloadProgressDesired"}];
}

- (id)copy
{
  v3 = [MANAutoAssetSetInfoDesire alloc];
  v4 = [(MANAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  v5 = [v4 copy];
  v6 = [(MANAutoAssetSetInfoDesire *)self desireReason];
  v7 = [(MANAutoAssetSetInfoDesire *)v3 initForClientAssetSetPolicy:v5 reasonDesired:v6 awaitingDownloadOfDiscovered:[(MANAutoAssetSetInfoDesire *)self awaitDownloadingOfDiscovered] withCheckWaitTimeout:[(MANAutoAssetSetInfoDesire *)self checkWaitTimeoutSecs] withLockWaitTimeout:[(MANAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs] desiringProgress:[(MANAutoAssetSetInfoDesire *)self downloadProgressDesired]];

  return v7;
}

- (id)summary
{
  v4 = [(MANAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  if (v4)
  {
  }

  else
  {
    v5 = [(MANAutoAssetSetInfoDesire *)self desireReason];

    if (!v5)
    {
      v11 = @"byPolicy";
      goto LABEL_13;
    }
  }

  v6 = [NSString alloc];
  v7 = [(MANAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  if (v7)
  {
    v2 = [(MANAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
    v8 = [v2 summary];
  }

  else
  {
    v8 = @"N";
  }

  v9 = [(MANAutoAssetSetInfoDesire *)self desireReason];
  if (v9)
  {
    v10 = [(MANAutoAssetSetInfoDesire *)self desireReason];
    v11 = [v6 initWithFormat:@"clientAssetSetPolicy:%@|desireReason:%@", v8, v10];
  }

  else
  {
    v11 = [v6 initWithFormat:@"clientAssetSetPolicy:%@|desireReason:%@", v8, @"N"];
  }

  if (v7)
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
    v20 = [(MANAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs];
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

    if (v20 == -101)
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