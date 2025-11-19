@interface MADAutoAssetConnectorParam
- (MADAutoAssetConnectorParam)initWithCoder:(id)a3;
- (MADAutoAssetConnectorParam)initWithParamType:(int64_t)a3 withSafeSummary:(id)a4 withMonitorMarkers:(id)a5 withMarkersNoRetry:(id)a6 withMarkersRequiringRetry:(id)a7 withFinishedMarker:(id)a8 withEventOSTransaction:(id)a9 withPotentialNetworkFailure:(BOOL)a10 withObservedNetworkPath:(id)a11;
- (id)_newSummary;
- (void)encodeWithCoder:(id)a3;
- (void)updateSafeSummary;
@end

@implementation MADAutoAssetConnectorParam

- (MADAutoAssetConnectorParam)initWithParamType:(int64_t)a3 withSafeSummary:(id)a4 withMonitorMarkers:(id)a5 withMarkersNoRetry:(id)a6 withMarkersRequiringRetry:(id)a7 withFinishedMarker:(id)a8 withEventOSTransaction:(id)a9 withPotentialNetworkFailure:(BOOL)a10 withObservedNetworkPath:(id)a11
{
  v16 = a4;
  v17 = a5;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  v25 = a9;
  v18 = a11;
  v29.receiver = self;
  v29.super_class = MADAutoAssetConnectorParam;
  v19 = [(MADAutoAssetConnectorParam *)&v29 init];
  v20 = v19;
  if (v19)
  {
    v19->_paramType = a3;
    objc_storeStrong(&v19->_monitorMarkers, a5);
    objc_storeStrong(&v20->_markersNoRetry, a6);
    objc_storeStrong(&v20->_markersRequiringRetry, a7);
    objc_storeStrong(&v20->_finishedMarker, a8);
    objc_storeStrong(&v20->_eventOSTransaction, a9);
    v20->_potentialNetworkFailure = a10;
    objc_storeStrong(&v20->_observedNetworkPath, a11);
    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = [(MADAutoAssetConnectorParam *)v20 _newSummary];
    }

    paramSafeSummary = v20->_paramSafeSummary;
    v20->_paramSafeSummary = v21;
  }

  return v20;
}

- (MADAutoAssetConnectorParam)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MADAutoAssetConnectorParam;
  v5 = [(MADAutoAssetConnectorParam *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paramSafeSummary"];
    paramSafeSummary = v5->_paramSafeSummary;
    v5->_paramSafeSummary = v6;

    v5->_paramType = [v4 decodeInt64ForKey:@"paramType"];
    v8 = [NSSet alloc];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v32 count:2];
    v10 = [v8 initWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"monitorMarkers"];
    monitorMarkers = v5->_monitorMarkers;
    v5->_monitorMarkers = v11;

    v13 = [NSSet alloc];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v14 = [NSArray arrayWithObjects:v31 count:2];
    v15 = [v13 initWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"markersNoRetry"];
    markersNoRetry = v5->_markersNoRetry;
    v5->_markersNoRetry = v16;

    v18 = [NSSet alloc];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v19 = [NSArray arrayWithObjects:v30 count:2];
    v20 = [v18 initWithArray:v19];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"markersRequiringRetry"];
    markersRequiringRetry = v5->_markersRequiringRetry;
    v5->_markersRequiringRetry = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"finishedMarker"];
    finishedMarker = v5->_finishedMarker;
    v5->_finishedMarker = v23;

    v5->_potentialNetworkFailure = [v4 decodeBoolForKey:@"potentialNetworkFailure"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"observedNetworkPath"];
    observedNetworkPath = v5->_observedNetworkPath;
    v5->_observedNetworkPath = v25;

    eventOSTransaction = v5->_eventOSTransaction;
    v5->_eventOSTransaction = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnectorParam *)self paramSafeSummary];
  [v4 encodeObject:v5 forKey:@"paramSafeSummary"];

  [v4 encodeInt64:-[MADAutoAssetConnectorParam paramType](self forKey:{"paramType"), @"paramType"}];
  v6 = [(MADAutoAssetConnectorParam *)self monitorMarkers];
  [v4 encodeObject:v6 forKey:@"monitorMarkers"];

  v7 = [(MADAutoAssetConnectorParam *)self markersNoRetry];
  [v4 encodeObject:v7 forKey:@"markersNoRetry"];

  v8 = [(MADAutoAssetConnectorParam *)self markersRequiringRetry];
  [v4 encodeObject:v8 forKey:@"markersRequiringRetry"];

  v9 = [(MADAutoAssetConnectorParam *)self finishedMarker];
  [v4 encodeObject:v9 forKey:@"finishedMarker"];

  [v4 encodeBool:-[MADAutoAssetConnectorParam potentialNetworkFailure](self forKey:{"potentialNetworkFailure"), @"potentialNetworkFailure"}];
  v10 = [(MADAutoAssetConnectorParam *)self observedNetworkPath];
  [v4 encodeObject:v10 forKey:@"observedNetworkPath"];
}

- (id)_newSummary
{
  v3 = [(MADAutoAssetConnectorParam *)self paramType];
  if (v3 <= 1)
  {
    if (!v3)
    {
      return @"SUMMARY";
    }

    if (v3 == 1)
    {
      v4 = [NSString alloc];
      v5 = [(NSArray *)self->_monitorMarkers count];
      v6 = [(NSArray *)self->_markersNoRetry count];
      v7 = [(NSArray *)self->_markersRequiringRetry count];
      if (self->_eventOSTransaction)
      {
        v8 = @"Y";
      }

      else
      {
        v8 = @"N";
      }

      return [v4 initWithFormat:@"MONITOR_WITH_MARKERS|monitor:%ld|noRetry:%ld|requiringRetry:%ld|osTrans:%@", v5, v6, v7, v8];
    }

    return @"UNKNOWN_TYPE";
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      v10 = [NSString alloc];
      v11 = [(NSURL *)self->_observedNetworkPath absoluteString];
      v12 = [v10 initWithFormat:@"OBSERVED_NETWORK_PATH|observedNWPath:%@", v11];

      return v12;
    }

    return @"UNKNOWN_TYPE";
  }

  v13 = [NSString alloc];
  v14 = [(MADMarker *)self->_finishedMarker summary];
  v15 = v14;
  if (self->_potentialNetworkFailure)
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v17 = [v13 initWithFormat:@"ACTIVE_FINISHED|marker:%@|NWFail:%@", v14, v16];

  return v17;
}

- (void)updateSafeSummary
{
  v3 = [(MADAutoAssetConnectorParam *)self _newSummary];
  [(MADAutoAssetConnectorParam *)self setParamSafeSummary:v3];
}

@end