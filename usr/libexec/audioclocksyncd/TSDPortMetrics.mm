@interface TSDPortMetrics
- (TSDPortMetrics)initWithPort:(id)port;
- (id)getDelta:(id)delta;
- (void)calculatePercentages;
@end

@implementation TSDPortMetrics

- (void)calculatePercentages
{
  totalMeasurements = self->_totalMeasurements;
  if (totalMeasurements)
  {
    v3 = 100 * self->_droppedMeasurements / totalMeasurements;
    v4 = 100 * self->_discardedPpmLimitMeasurements / totalMeasurements;
    v5 = 100 * self->_discardedDelayLimitExceededMeasurements / totalMeasurements;
    v6 = 100 * self->_discardedOutOfBoundsMeasurements / totalMeasurements;
    v7 = 100 * self->_discardedTimestampsOutOfOrderMeasurements / totalMeasurements;
    totalMeasurements = 100 * self->_successfulMeasurements / totalMeasurements;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  self->_droppedPercentage = v3;
  self->_discardedPpmLimitPercentage = v4;
  self->_discardedDelayLimitExceededPercentage = v5;
  self->_discardedOutOfBoundsPercentage = v6;
  self->_discardedTimestampsOutOfOrderPercentage = v7;
  self->_successfulPercentage = totalMeasurements;
}

- (TSDPortMetrics)initWithPort:(id)port
{
  portCopy = port;
  objc_storeStrong(&self->_port, port);
  service = [(TSDgPTPPort *)self->_port service];
  iodProperties = [service iodProperties];

  self->_portNumber = [portCopy portNumber];
  v8 = [iodProperties objectForKeyedSubscript:@"SyncReceiptTimeoutCounter"];
  if (v8)
  {
    v9 = [iodProperties objectForKeyedSubscript:@"SyncReceiptTimeoutCounter"];
    self->_syncTimeouts = [v9 unsignedIntValue];
  }

  else
  {
    self->_syncTimeouts = 0;
  }

  port = self->_port;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementFilterResetDroppedLimitCounter"];
    if (v11)
    {
      v12 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementFilterResetDroppedLimitCounter"];
      self->_filterResetsDroppedLimit = [v12 unsignedIntValue];
    }

    else
    {
      self->_filterResetsDroppedLimit = 0;
    }

    v13 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementFilterResetOutOfBoundsCounter"];
    if (v13)
    {
      v14 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementFilterResetOutOfBoundsCounter"];
      self->_filterResetsOutOfBounds = [v14 unsignedIntValue];
    }

    else
    {
      self->_filterResetsOutOfBounds = 0;
    }

    v15 = [iodProperties objectForKeyedSubscript:@"LinkPropagationMeanDelay"];
    if (v15)
    {
      v16 = [iodProperties objectForKeyedSubscript:@"LinkPropagationMeanDelay"];
      self->_meanDelayTime = [v16 unsignedIntValue];
    }

    else
    {
      self->_meanDelayTime = 0;
    }

    v17 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDroppedCounter"];
    if (v17)
    {
      v18 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDroppedCounter"];
      self->_droppedMeasurements = [v18 unsignedIntValue];
    }

    else
    {
      self->_droppedMeasurements = 0;
    }

    v19 = [iodProperties objectForKeyedSubscript:@"RawDelayMeasurementCounter"];
    if (v19)
    {
      v20 = [iodProperties objectForKeyedSubscript:@"RawDelayMeasurementCounter"];
      unsignedIntValue = [v20 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }

    self->_totalMeasurements = self->_droppedMeasurements + unsignedIntValue;
    v22 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardPPMLimitCounter"];
    if (v22)
    {
      v23 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardPPMLimitCounter"];
      self->_discardedPpmLimitMeasurements = [v23 unsignedIntValue];
    }

    else
    {
      self->_discardedPpmLimitMeasurements = 0;
    }

    v24 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardDelayLimitExceededCounter"];
    if (v24)
    {
      v25 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardDelayLimitExceededCounter"];
      self->_discardedDelayLimitExceededMeasurements = [v25 unsignedIntValue];
    }

    else
    {
      self->_discardedDelayLimitExceededMeasurements = 0;
    }

    v26 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardOutOfBoundsCounter"];
    if (v26)
    {
      v27 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardOutOfBoundsCounter"];
      self->_discardedOutOfBoundsMeasurements = [v27 unsignedIntValue];
    }

    else
    {
      self->_discardedOutOfBoundsMeasurements = 0;
    }

    v28 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardTimestampsOutOfOrderCounter"];
    if (v28)
    {
      v29 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardTimestampsOutOfOrderCounter"];
      self->_discardedTimestampsOutOfOrderMeasurements = [v29 unsignedIntValue];
    }

    else
    {
      self->_discardedTimestampsOutOfOrderMeasurements = 0;
    }

    v30 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementSuccessCounter"];
    if (v30)
    {
      v31 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementSuccessCounter"];
      self->_successfulMeasurements = [v31 unsignedIntValue];
    }

    else
    {
      self->_successfulMeasurements = 0;
    }

    [(TSDPortMetrics *)self calculatePercentages];
  }

  return self;
}

- (id)getDelta:(id)delta
{
  deltaCopy = delta;
  v5 = objc_alloc_init(TSDPortMetrics);
  [(TSDPortMetrics *)v5 setPortNumber:self->_portNumber];
  -[TSDPortMetrics setSyncTimeouts:](v5, "setSyncTimeouts:", self->_syncTimeouts - [deltaCopy syncTimeouts]);
  port = self->_port;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[TSDPortMetrics setFilterResetsDroppedLimit:](v5, "setFilterResetsDroppedLimit:", self->_filterResetsDroppedLimit - [deltaCopy filterResetsDroppedLimit]);
    -[TSDPortMetrics setFilterResetsOutOfBounds:](v5, "setFilterResetsOutOfBounds:", self->_filterResetsOutOfBounds - [deltaCopy filterResetsOutOfBounds]);
    -[TSDPortMetrics setDroppedMeasurements:](v5, "setDroppedMeasurements:", self->_droppedMeasurements - [deltaCopy droppedMeasurements]);
    -[TSDPortMetrics setDiscardedPpmLimitMeasurements:](v5, "setDiscardedPpmLimitMeasurements:", self->_discardedPpmLimitMeasurements - [deltaCopy discardedPpmLimitMeasurements]);
    -[TSDPortMetrics setDiscardedDelayLimitExceededMeasurements:](v5, "setDiscardedDelayLimitExceededMeasurements:", self->_discardedDelayLimitExceededMeasurements - [deltaCopy discardedDelayLimitExceededMeasurements]);
    -[TSDPortMetrics setDiscardedOutOfBoundsMeasurements:](v5, "setDiscardedOutOfBoundsMeasurements:", self->_discardedOutOfBoundsMeasurements - [deltaCopy discardedOutOfBoundsMeasurements]);
    -[TSDPortMetrics setDiscardedTimestampsOutOfOrderMeasurements:](v5, "setDiscardedTimestampsOutOfOrderMeasurements:", self->_discardedTimestampsOutOfOrderMeasurements - [deltaCopy discardedTimestampsOutOfOrderMeasurements]);
    -[TSDPortMetrics setSuccessfulMeasurements:](v5, "setSuccessfulMeasurements:", self->_successfulMeasurements - [deltaCopy successfulMeasurements]);
    -[TSDPortMetrics setTotalMeasurements:](v5, "setTotalMeasurements:", self->_totalMeasurements - [deltaCopy totalMeasurements]);
    [(TSDPortMetrics *)v5 calculatePercentages];
  }

  return v5;
}

@end