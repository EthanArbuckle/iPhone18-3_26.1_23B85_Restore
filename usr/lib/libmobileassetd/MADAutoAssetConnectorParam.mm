@interface MADAutoAssetConnectorParam
- (MADAutoAssetConnectorParam)initWithCoder:(id)coder;
- (MADAutoAssetConnectorParam)initWithParamType:(int64_t)type withSafeSummary:(id)summary withMonitorMarkers:(id)markers withMarkersNoRetry:(id)retry withMarkersRequiringRetry:(id)requiringRetry withFinishedMarker:(id)marker withEventOSTransaction:(id)transaction withPotentialNetworkFailure:(BOOL)self0 withObservedNetworkPath:(id)self1;
- (id)_newSummary;
- (void)encodeWithCoder:(id)coder;
- (void)updateSafeSummary;
@end

@implementation MADAutoAssetConnectorParam

- (MADAutoAssetConnectorParam)initWithParamType:(int64_t)type withSafeSummary:(id)summary withMonitorMarkers:(id)markers withMarkersNoRetry:(id)retry withMarkersRequiringRetry:(id)requiringRetry withFinishedMarker:(id)marker withEventOSTransaction:(id)transaction withPotentialNetworkFailure:(BOOL)self0 withObservedNetworkPath:(id)self1
{
  summaryCopy = summary;
  markersCopy = markers;
  retryCopy = retry;
  requiringRetryCopy = requiringRetry;
  markerCopy = marker;
  transactionCopy = transaction;
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = MADAutoAssetConnectorParam;
  v19 = [(MADAutoAssetConnectorParam *)&v29 init];
  v20 = v19;
  if (v19)
  {
    v19->_paramType = type;
    objc_storeStrong(&v19->_monitorMarkers, markers);
    objc_storeStrong(&v20->_markersNoRetry, retry);
    objc_storeStrong(&v20->_markersRequiringRetry, requiringRetry);
    objc_storeStrong(&v20->_finishedMarker, marker);
    objc_storeStrong(&v20->_eventOSTransaction, transaction);
    v20->_potentialNetworkFailure = failure;
    objc_storeStrong(&v20->_observedNetworkPath, path);
    if (summaryCopy)
    {
      _newSummary = summaryCopy;
    }

    else
    {
      _newSummary = [(MADAutoAssetConnectorParam *)v20 _newSummary];
    }

    paramSafeSummary = v20->_paramSafeSummary;
    v20->_paramSafeSummary = _newSummary;
  }

  return v20;
}

- (MADAutoAssetConnectorParam)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = MADAutoAssetConnectorParam;
  v5 = [(MADAutoAssetConnectorParam *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paramSafeSummary"];
    paramSafeSummary = v5->_paramSafeSummary;
    v5->_paramSafeSummary = v6;

    v5->_paramType = [coderCopy decodeInt64ForKey:@"paramType"];
    v8 = [NSSet alloc];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v32 count:2];
    v10 = [v8 initWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"monitorMarkers"];
    monitorMarkers = v5->_monitorMarkers;
    v5->_monitorMarkers = v11;

    v13 = [NSSet alloc];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v14 = [NSArray arrayWithObjects:v31 count:2];
    v15 = [v13 initWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"markersNoRetry"];
    markersNoRetry = v5->_markersNoRetry;
    v5->_markersNoRetry = v16;

    v18 = [NSSet alloc];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v19 = [NSArray arrayWithObjects:v30 count:2];
    v20 = [v18 initWithArray:v19];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"markersRequiringRetry"];
    markersRequiringRetry = v5->_markersRequiringRetry;
    v5->_markersRequiringRetry = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"finishedMarker"];
    finishedMarker = v5->_finishedMarker;
    v5->_finishedMarker = v23;

    v5->_potentialNetworkFailure = [coderCopy decodeBoolForKey:@"potentialNetworkFailure"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"observedNetworkPath"];
    observedNetworkPath = v5->_observedNetworkPath;
    v5->_observedNetworkPath = v25;

    eventOSTransaction = v5->_eventOSTransaction;
    v5->_eventOSTransaction = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  paramSafeSummary = [(MADAutoAssetConnectorParam *)self paramSafeSummary];
  [coderCopy encodeObject:paramSafeSummary forKey:@"paramSafeSummary"];

  [coderCopy encodeInt64:-[MADAutoAssetConnectorParam paramType](self forKey:{"paramType"), @"paramType"}];
  monitorMarkers = [(MADAutoAssetConnectorParam *)self monitorMarkers];
  [coderCopy encodeObject:monitorMarkers forKey:@"monitorMarkers"];

  markersNoRetry = [(MADAutoAssetConnectorParam *)self markersNoRetry];
  [coderCopy encodeObject:markersNoRetry forKey:@"markersNoRetry"];

  markersRequiringRetry = [(MADAutoAssetConnectorParam *)self markersRequiringRetry];
  [coderCopy encodeObject:markersRequiringRetry forKey:@"markersRequiringRetry"];

  finishedMarker = [(MADAutoAssetConnectorParam *)self finishedMarker];
  [coderCopy encodeObject:finishedMarker forKey:@"finishedMarker"];

  [coderCopy encodeBool:-[MADAutoAssetConnectorParam potentialNetworkFailure](self forKey:{"potentialNetworkFailure"), @"potentialNetworkFailure"}];
  observedNetworkPath = [(MADAutoAssetConnectorParam *)self observedNetworkPath];
  [coderCopy encodeObject:observedNetworkPath forKey:@"observedNetworkPath"];
}

- (id)_newSummary
{
  paramType = [(MADAutoAssetConnectorParam *)self paramType];
  if (paramType <= 1)
  {
    if (!paramType)
    {
      return @"SUMMARY";
    }

    if (paramType == 1)
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

  if (paramType != 2)
  {
    if (paramType == 3)
    {
      v10 = [NSString alloc];
      absoluteString = [(NSURL *)self->_observedNetworkPath absoluteString];
      v12 = [v10 initWithFormat:@"OBSERVED_NETWORK_PATH|observedNWPath:%@", absoluteString];

      return v12;
    }

    return @"UNKNOWN_TYPE";
  }

  v13 = [NSString alloc];
  summary = [(MADMarker *)self->_finishedMarker summary];
  v15 = summary;
  if (self->_potentialNetworkFailure)
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v17 = [v13 initWithFormat:@"ACTIVE_FINISHED|marker:%@|NWFail:%@", summary, v16];

  return v17;
}

- (void)updateSafeSummary
{
  _newSummary = [(MADAutoAssetConnectorParam *)self _newSummary];
  [(MADAutoAssetConnectorParam *)self setParamSafeSummary:_newSummary];
}

@end