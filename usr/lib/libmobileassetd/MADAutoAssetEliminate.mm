@interface MADAutoAssetEliminate
- (MADAutoAssetEliminate)initWithClientRequest:(id)a3 withAssetSelector:(id)a4 forClientDomain:(id)a5 forSetIdentifier:(id)a6 withDownloadedSetDescriptors:(id)a7 awaitingUnlocked:(BOOL)a8;
- (MADAutoAssetEliminate)initWithCoder:(id)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoAssetEliminate

- (MADAutoAssetEliminate)initWithClientRequest:(id)a3 withAssetSelector:(id)a4 forClientDomain:(id)a5 forSetIdentifier:(id)a6 withDownloadedSetDescriptors:(id)a7 awaitingUnlocked:(BOOL)a8
{
  v15 = a3;
  v52 = a4;
  v16 = a5;
  v17 = a6;
  v51 = a7;
  v53.receiver = self;
  v53.super_class = MADAutoAssetEliminate;
  v18 = [(MADAutoAssetEliminate *)&v53 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_27;
  }

  objc_storeStrong(&v18->_clientRequest, a3);
  objc_storeStrong(&v19->_assetSelector, a4);
  objc_storeStrong(&v19->_clientDomainName, a5);
  objc_storeStrong(&v19->_assetSetIdentifier, a6);
  if (v16)
  {
    v20 = v17 == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  v19->_eliminatingSet = v21;
  objc_storeStrong(&v19->_downloadedSetDescriptors, a7);
  v19->_awaitingUnlocked = a8;
  if (!v19->_eliminatingSet)
  {
    if (!v15)
    {
LABEL_24:
      assetSelector = v19->_assetSelector;
      if (!assetSelector || ([(MAAutoAssetSelector *)assetSelector assetType], v41 = objc_claimAutoreleasedReturnValue(), v41, !v41))
      {
        v45 = _MADLog(@"Auto");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          if (v15)
          {
            v46 = [v15 summary];
          }

          else
          {
            v46 = @"N";
          }

          if (v52)
          {
            v47 = [v52 summary];
          }

          else
          {
            v47 = @"N";
          }

          *buf = 138543618;
          v55 = v46;
          v56 = 2114;
          v57 = v47;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "{AUTO-ELIMINATE:initWithClientRequest} invalid asset-selector | clientRequest:%{public}@, fullAssetSelector:%{public}@", buf, 0x16u);
          if (v52)
          {
          }

          if (v15)
          {
          }
        }

        v44 = 0;
        goto LABEL_40;
      }

      goto LABEL_26;
    }

    v25 = [v15 clientRequestMessage];
    v26 = [v25 message];

    v27 = [v26 safeObjectForKey:@"instance" ofClass:objc_opt_class()];
    v28 = v27;
    if (!v27)
    {
LABEL_23:

      goto LABEL_24;
    }

    v29 = [v27 clientAssetSelector];
    v30 = [v29 assetVersion];
    if (v30)
    {
    }

    else
    {
      v31 = [v28 clientAssetSelector];
      v32 = [v31 assetSpecifier];
      v33 = [SUCore stringIsEqual:v32 to:@"MAAutoAsset-all-asset-specifiers"];

      if (v33)
      {
        v34 = [MAAutoAssetSelector alloc];
        v35 = [v28 clientAssetSelector];
        v36 = [v35 assetType];
        v37 = [v34 initForAssetType:v36];
        v38 = v19->_assetSelector;
        v19->_assetSelector = v37;

LABEL_22:
        goto LABEL_23;
      }
    }

    v39 = [v28 clientAssetSelector];
    v35 = v19->_assetSelector;
    v19->_assetSelector = v39;
    goto LABEL_22;
  }

  if (v15 && v16 && v17)
  {
LABEL_26:
    *&v19->_awaitingSchedulerAck = 0;
    v19->_awaitingStagerAck = 0;
    v19->_awaitingSecureOperations = 0;
    v42 = objc_alloc_init(NSMutableDictionary);
    activeJobsByUUID = v19->_activeJobsByUUID;
    v19->_activeJobsByUUID = v42;

    v19->_limitedToCancelActivity = 0;
LABEL_27:
    v44 = v19;
LABEL_40:
    v23 = v51;
    goto LABEL_41;
  }

  v22 = _MADLog(@"Auto");
  v23 = v51;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    if (v15)
    {
      v24 = [v15 summary];
    }

    else
    {
      v24 = @"N";
    }

    if (v16)
    {
      v49 = v16;
    }

    else
    {
      v49 = @"N";
    }

    *buf = 138543874;
    if (v17)
    {
      v50 = v17;
    }

    else
    {
      v50 = @"N";
    }

    v55 = v24;
    v56 = 2114;
    v57 = v49;
    v58 = 2114;
    v59 = v50;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "{AUTO-ELIMINATE:initWithClientRequest} MISSING required auto-asset-set information | clientRequest:%{public}@, clientDomainName:%{public}@, assetSetIdentifier:%{public}@", buf, 0x20u);
    if (v15)
    {
    }
  }

  v44 = 0;
LABEL_41:

  return v44;
}

- (MADAutoAssetEliminate)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MADAutoAssetEliminate;
  v5 = [(MADAutoAssetEliminate *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientRequest"];
    clientRequest = v5->_clientRequest;
    v5->_clientRequest = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v12;

    v5->_eliminatingSet = [v4 decodeBoolForKey:@"eliminatingSet"];
    v14 = [NSSet alloc];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v15 = [NSArray arrayWithObjects:v27 count:2];
    v16 = [v14 initWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"downloadedSetDescriptors"];
    downloadedSetDescriptors = v5->_downloadedSetDescriptors;
    v5->_downloadedSetDescriptors = v17;

    v5->_awaitingUnlocked = [v4 decodeBoolForKey:@"awaitingUnlocked"];
    v5->_awaitingSchedulerAck = [v4 decodeBoolForKey:@"awaitingSchedulerAck"];
    v5->_awaitingCancelActivityAck = [v4 decodeBoolForKey:@"awaitingCancelActivityAck"];
    v5->_awaitingStagerAck = [v4 decodeBoolForKey:@"awaitingStagerAck"];
    v5->_awaitingSecureOperations = [v4 decodeIntegerForKey:@"awaitingSecureOperations"];
    v19 = [NSSet alloc];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v20 = [NSArray arrayWithObjects:v26 count:2];
    v21 = [v19 initWithArray:v20];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"activeJobsByUUID"];
    activeJobsByUUID = v5->_activeJobsByUUID;
    v5->_activeJobsByUUID = v22;

    v5->_limitedToCancelActivity = [v4 decodeBoolForKey:@"limitedToCancelActivity"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(MADAutoAssetEliminate *)self clientRequest];
  [v10 encodeObject:v4 forKey:@"clientRequest"];

  v5 = [(MADAutoAssetEliminate *)self assetSelector];
  [v10 encodeObject:v5 forKey:@"assetSelector"];

  v6 = [(MADAutoAssetEliminate *)self clientDomainName];
  [v10 encodeObject:v6 forKey:@"clientDomainName"];

  v7 = [(MADAutoAssetEliminate *)self assetSetIdentifier];
  [v10 encodeObject:v7 forKey:@"assetSetIdentifier"];

  [v10 encodeBool:-[MADAutoAssetEliminate eliminatingSet](self forKey:{"eliminatingSet"), @"eliminatingSet"}];
  v8 = [(MADAutoAssetEliminate *)self downloadedSetDescriptors];
  [v10 encodeObject:v8 forKey:@"downloadedSetDescriptors"];

  [v10 encodeBool:-[MADAutoAssetEliminate awaitingUnlocked](self forKey:{"awaitingUnlocked"), @"awaitingUnlocked"}];
  [v10 encodeBool:-[MADAutoAssetEliminate awaitingSchedulerAck](self forKey:{"awaitingSchedulerAck"), @"awaitingSchedulerAck"}];
  [v10 encodeBool:-[MADAutoAssetEliminate awaitingCancelActivityAck](self forKey:{"awaitingCancelActivityAck"), @"awaitingCancelActivityAck"}];
  [v10 encodeBool:-[MADAutoAssetEliminate awaitingStagerAck](self forKey:{"awaitingStagerAck"), @"awaitingStagerAck"}];
  [v10 encodeInteger:-[MADAutoAssetEliminate awaitingSecureOperations](self forKey:{"awaitingSecureOperations"), @"awaitingSecureOperations"}];
  v9 = [(MADAutoAssetEliminate *)self activeJobsByUUID];
  [v10 encodeObject:v9 forKey:@"activeJobsByUUID"];

  [v10 encodeBool:-[MADAutoAssetEliminate limitedToCancelActivity](self forKey:{"limitedToCancelActivity"), @"limitedToCancelActivity"}];
}

- (id)summary
{
  v4 = [(MADAutoAssetEliminate *)self eliminatingSet];
  v5 = [(MADAutoAssetEliminate *)self clientRequest];
  v39 = v5;
  if (v4)
  {
    if (v5)
    {
      v36 = [(MADAutoAssetEliminate *)self clientRequest];
      v37 = [v36 summary];
    }

    else
    {
      v37 = @"N";
    }

    v34 = [(MADAutoAssetEliminate *)self clientDomainName];
    v32 = [(MADAutoAssetEliminate *)self assetSetIdentifier];
    v30 = [(MADAutoAssetEliminate *)self downloadedSetDescriptors];
    v29 = [v30 count];
    if ([(MADAutoAssetEliminate *)self awaitingUnlocked])
    {
      v6 = @"Y";
    }

    else
    {
      v6 = @"N";
    }

    v28 = v6;
    if ([(MADAutoAssetEliminate *)self awaitingSchedulerAck])
    {
      v7 = @"Y";
    }

    else
    {
      v7 = @"N";
    }

    v27 = v7;
    if ([(MADAutoAssetEliminate *)self awaitingCancelActivityAck])
    {
      v8 = @"Y";
    }

    else
    {
      v8 = @"N";
    }

    if ([(MADAutoAssetEliminate *)self awaitingStagerAck])
    {
      v9 = @"Y";
    }

    else
    {
      v9 = @"N";
    }

    v10 = [(MADAutoAssetEliminate *)self awaitingSecureOperations];
    v11 = [(MADAutoAssetEliminate *)self activeJobsByUUID];
    v12 = [v11 count];
    if (v12)
    {
      v2 = [(MADAutoAssetEliminate *)self activeJobsByUUID];
      v13 = [v2 safeSummary];
    }

    else
    {
      v13 = @"N";
    }

    if ([(MADAutoAssetEliminate *)self limitedToCancelActivity])
    {
      v22 = @"Y";
    }

    else
    {
      v22 = @"N";
    }

    v23 = v37;
    v24 = [NSString stringWithFormat:@"[clientRequest:%@|clientDomain:%@|setIdentifier:%@|downloadedSetDescriptors:%ld|awaitingUnlocked:%@|awaitingSchedulerAck:%@|awaitingCancelActivityAck:%@|awaitingStagerAck:%@|awaitingSecureOperations:%d|activeJobsByUUID:%@|limitedToCancelActivity:%@]", v37, v34, v32, v29, v28, v27, v8, v9, v10, v13, v22];
    if (v12)
    {
    }
  }

  else
  {
    if (v5)
    {
      v36 = [(MADAutoAssetEliminate *)self clientRequest];
      v38 = [v36 summary];
    }

    else
    {
      v38 = @"N";
    }

    v35 = [(MADAutoAssetEliminate *)self assetSelector];
    v14 = [v35 summary];
    if ([(MADAutoAssetEliminate *)self awaitingSchedulerAck])
    {
      v15 = @"Y";
    }

    else
    {
      v15 = @"N";
    }

    v33 = v15;
    if ([(MADAutoAssetEliminate *)self awaitingCancelActivityAck])
    {
      v16 = @"Y";
    }

    else
    {
      v16 = @"N";
    }

    v31 = v16;
    if ([(MADAutoAssetEliminate *)self awaitingStagerAck])
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    v18 = [(MADAutoAssetEliminate *)self awaitingSecureOperations];
    v19 = [(MADAutoAssetEliminate *)self activeJobsByUUID];
    v20 = [v19 count];
    if (v20)
    {
      v2 = [(MADAutoAssetEliminate *)self activeJobsByUUID];
      v21 = [v2 safeSummary];
    }

    else
    {
      v21 = @"N";
    }

    if ([(MADAutoAssetEliminate *)self limitedToCancelActivity])
    {
      v25 = @"Y";
    }

    else
    {
      v25 = @"N";
    }

    v23 = v38;
    v24 = [NSString stringWithFormat:@"[clientRequest:%@|assetSelector:%@|awaitingSchedulerAck:%@|awaitingCancelActivityAck:%@|awaitingStagerAck:%@|awaitingSecureOperations:%d|activeJobsByUUID:%@|limitedToCancelActivity:%@]", v38, v14, v33, v31, v17, v18, v21, v25];
    if (v20)
    {
    }
  }

  if (v39)
  {
  }

  return v24;
}

@end