@interface _TSF_TSDPortMetrics
- (_TSF_TSDPortMetrics)initWithPort:(id)a3;
- (id)getDelta:(id)a3;
- (void)calculatePercentages;
@end

@implementation _TSF_TSDPortMetrics

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

- (_TSF_TSDPortMetrics)initWithPort:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_port, a3);
  v6 = [(_TSF_TSDgPTPPort *)self->_port service];
  v7 = [v6 iodProperties];

  self->_portNumber = [v5 portNumber];
  v8 = [v7 objectForKeyedSubscript:@"SyncReceiptTimeoutCounter"];
  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"SyncReceiptTimeoutCounter"];
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
    v11 = [v7 objectForKeyedSubscript:@"SyncMeasurementFilterResetDroppedLimitCounter"];
    if (v11)
    {
      v12 = [v7 objectForKeyedSubscript:@"SyncMeasurementFilterResetDroppedLimitCounter"];
      self->_filterResetsDroppedLimit = [v12 unsignedIntValue];
    }

    else
    {
      self->_filterResetsDroppedLimit = 0;
    }

    v13 = [v7 objectForKeyedSubscript:@"SyncMeasurementFilterResetOutOfBoundsCounter"];
    if (v13)
    {
      v14 = [v7 objectForKeyedSubscript:@"SyncMeasurementFilterResetOutOfBoundsCounter"];
      self->_filterResetsOutOfBounds = [v14 unsignedIntValue];
    }

    else
    {
      self->_filterResetsOutOfBounds = 0;
    }

    v15 = [v7 objectForKeyedSubscript:@"LinkPropagationMeanDelay"];
    if (v15)
    {
      v16 = [v7 objectForKeyedSubscript:@"LinkPropagationMeanDelay"];
      self->_meanDelayTime = [v16 unsignedIntValue];
    }

    else
    {
      self->_meanDelayTime = 0;
    }

    v17 = [v7 objectForKeyedSubscript:@"SyncMeasurementDroppedCounter"];
    if (v17)
    {
      v18 = [v7 objectForKeyedSubscript:@"SyncMeasurementDroppedCounter"];
      self->_droppedMeasurements = [v18 unsignedIntValue];
    }

    else
    {
      self->_droppedMeasurements = 0;
    }

    v19 = [v7 objectForKeyedSubscript:@"RawDelayMeasurementCounter"];
    if (v19)
    {
      v20 = [v7 objectForKeyedSubscript:@"RawDelayMeasurementCounter"];
      v21 = [v20 unsignedIntValue];
    }

    else
    {
      v21 = 0;
    }

    self->_totalMeasurements = self->_droppedMeasurements + v21;
    v22 = [v7 objectForKeyedSubscript:@"SyncMeasurementDiscardPPMLimitCounter"];
    if (v22)
    {
      v23 = [v7 objectForKeyedSubscript:@"SyncMeasurementDiscardPPMLimitCounter"];
      self->_discardedPpmLimitMeasurements = [v23 unsignedIntValue];
    }

    else
    {
      self->_discardedPpmLimitMeasurements = 0;
    }

    v24 = [v7 objectForKeyedSubscript:@"SyncMeasurementDiscardDelayLimitExceededCounter"];
    if (v24)
    {
      v25 = [v7 objectForKeyedSubscript:@"SyncMeasurementDiscardDelayLimitExceededCounter"];
      self->_discardedDelayLimitExceededMeasurements = [v25 unsignedIntValue];
    }

    else
    {
      self->_discardedDelayLimitExceededMeasurements = 0;
    }

    v26 = [v7 objectForKeyedSubscript:@"SyncMeasurementDiscardOutOfBoundsCounter"];
    if (v26)
    {
      v27 = [v7 objectForKeyedSubscript:@"SyncMeasurementDiscardOutOfBoundsCounter"];
      self->_discardedOutOfBoundsMeasurements = [v27 unsignedIntValue];
    }

    else
    {
      self->_discardedOutOfBoundsMeasurements = 0;
    }

    v28 = [v7 objectForKeyedSubscript:@"SyncMeasurementDiscardTimestampsOutOfOrderCounter"];
    if (v28)
    {
      v29 = [v7 objectForKeyedSubscript:@"SyncMeasurementDiscardTimestampsOutOfOrderCounter"];
      self->_discardedTimestampsOutOfOrderMeasurements = [v29 unsignedIntValue];
    }

    else
    {
      self->_discardedTimestampsOutOfOrderMeasurements = 0;
    }

    v30 = [v7 objectForKeyedSubscript:@"SyncMeasurementSuccessCounter"];
    if (v30)
    {
      v31 = [v7 objectForKeyedSubscript:@"SyncMeasurementSuccessCounter"];
      self->_successfulMeasurements = [v31 unsignedIntValue];
    }

    else
    {
      self->_successfulMeasurements = 0;
    }

    [(_TSF_TSDPortMetrics *)self calculatePercentages];
  }

  return self;
}

- (id)getDelta:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_TSF_TSDPortMetrics);
  [(_TSF_TSDPortMetrics *)v5 setPortNumber:self->_portNumber];
  -[_TSF_TSDPortMetrics setSyncTimeouts:](v5, "setSyncTimeouts:", self->_syncTimeouts - [v4 syncTimeouts]);
  port = self->_port;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[_TSF_TSDPortMetrics setFilterResetsDroppedLimit:](v5, "setFilterResetsDroppedLimit:", self->_filterResetsDroppedLimit - [v4 filterResetsDroppedLimit]);
    -[_TSF_TSDPortMetrics setFilterResetsOutOfBounds:](v5, "setFilterResetsOutOfBounds:", self->_filterResetsOutOfBounds - [v4 filterResetsOutOfBounds]);
    -[_TSF_TSDPortMetrics setDroppedMeasurements:](v5, "setDroppedMeasurements:", self->_droppedMeasurements - [v4 droppedMeasurements]);
    -[_TSF_TSDPortMetrics setDiscardedPpmLimitMeasurements:](v5, "setDiscardedPpmLimitMeasurements:", self->_discardedPpmLimitMeasurements - [v4 discardedPpmLimitMeasurements]);
    -[_TSF_TSDPortMetrics setDiscardedDelayLimitExceededMeasurements:](v5, "setDiscardedDelayLimitExceededMeasurements:", self->_discardedDelayLimitExceededMeasurements - [v4 discardedDelayLimitExceededMeasurements]);
    -[_TSF_TSDPortMetrics setDiscardedOutOfBoundsMeasurements:](v5, "setDiscardedOutOfBoundsMeasurements:", self->_discardedOutOfBoundsMeasurements - [v4 discardedOutOfBoundsMeasurements]);
    -[_TSF_TSDPortMetrics setDiscardedTimestampsOutOfOrderMeasurements:](v5, "setDiscardedTimestampsOutOfOrderMeasurements:", self->_discardedTimestampsOutOfOrderMeasurements - [v4 discardedTimestampsOutOfOrderMeasurements]);
    -[_TSF_TSDPortMetrics setSuccessfulMeasurements:](v5, "setSuccessfulMeasurements:", self->_successfulMeasurements - [v4 successfulMeasurements]);
    -[_TSF_TSDPortMetrics setTotalMeasurements:](v5, "setTotalMeasurements:", self->_totalMeasurements - [v4 totalMeasurements]);
    [(_TSF_TSDPortMetrics *)v5 calculatePercentages];
  }

  return v5;
}

@end