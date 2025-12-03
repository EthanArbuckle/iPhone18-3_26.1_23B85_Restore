@interface TSPortMetrics
- (TSPortMetrics)initWithDaemonMetrics:(id)metrics;
- (TSPortMetrics)initWithInterfaceMetrics:(id *)metrics;
- (id)toDaemonMetrics;
- (void)printMetrics;
@end

@implementation TSPortMetrics

- (TSPortMetrics)initWithDaemonMetrics:(id)metrics
{
  metricsCopy = metrics;
  self->_portNumber = [metricsCopy portNumber];
  self->_syncTimeouts = [metricsCopy syncTimeouts];
  self->_filterResetsDroppedLimit = [metricsCopy filterResetsDroppedLimit];
  self->_filterResetsOutOfBounds = [metricsCopy filterResetsOutOfBounds];
  self->_meanDelayTime = [metricsCopy meanDelayTime];
  self->_droppedMeasurements = [metricsCopy droppedMeasurements];
  self->_discardedPpmLimitMeasurements = [metricsCopy discardedPpmLimitMeasurements];
  self->_discardedDelayLimitExceededMeasurements = [metricsCopy discardedDelayLimitExceededMeasurements];
  self->_discardedOutOfBoundsMeasurements = [metricsCopy discardedOutOfBoundsMeasurements];
  self->_discardedTimestampsOutOfOrderMeasurements = [metricsCopy discardedTimestampsOutOfOrderMeasurements];
  self->_successfulMeasurements = [metricsCopy successfulMeasurements];
  self->_totalMeasurements = [metricsCopy totalMeasurements];
  self->_droppedPercentage = [metricsCopy droppedPercentage];
  self->_discardedPpmLimitPercentage = [metricsCopy discardedPpmLimitPercentage];
  self->_discardedDelayLimitExceededPercentage = [metricsCopy discardedDelayLimitExceededPercentage];
  self->_discardedOutOfBoundsPercentage = [metricsCopy discardedOutOfBoundsPercentage];
  self->_discardedTimestampsOutOfOrderPercentage = [metricsCopy discardedTimestampsOutOfOrderPercentage];
  successfulPercentage = [metricsCopy successfulPercentage];

  self->_successfulPercentage = successfulPercentage;
  return self;
}

- (id)toDaemonMetrics
{
  v3 = [_TSF_TSDPortMetrics alloc];
  [(_TSF_TSDPortMetrics *)v3 setPortNumber:self->_portNumber];
  [(_TSF_TSDPortMetrics *)v3 setSyncTimeouts:self->_syncTimeouts];
  [(_TSF_TSDPortMetrics *)v3 setFilterResetsDroppedLimit:self->_filterResetsDroppedLimit];
  [(_TSF_TSDPortMetrics *)v3 setFilterResetsOutOfBounds:self->_filterResetsOutOfBounds];
  [(_TSF_TSDPortMetrics *)v3 setMeanDelayTime:self->_meanDelayTime];
  [(_TSF_TSDPortMetrics *)v3 setDroppedMeasurements:self->_droppedMeasurements];
  [(_TSF_TSDPortMetrics *)v3 setDiscardedPpmLimitMeasurements:self->_discardedPpmLimitMeasurements];
  [(_TSF_TSDPortMetrics *)v3 setDiscardedDelayLimitExceededMeasurements:self->_discardedDelayLimitExceededMeasurements];
  [(_TSF_TSDPortMetrics *)v3 setDiscardedOutOfBoundsMeasurements:self->_discardedOutOfBoundsMeasurements];
  [(_TSF_TSDPortMetrics *)v3 setDiscardedTimestampsOutOfOrderMeasurements:self->_discardedTimestampsOutOfOrderMeasurements];
  [(_TSF_TSDPortMetrics *)v3 setSuccessfulMeasurements:self->_successfulMeasurements];
  [(_TSF_TSDPortMetrics *)v3 setTotalMeasurements:self->_totalMeasurements];
  [(_TSF_TSDPortMetrics *)v3 setDroppedPercentage:self->_droppedPercentage];
  [(_TSF_TSDPortMetrics *)v3 setDiscardedPpmLimitPercentage:self->_discardedPpmLimitPercentage];
  [(_TSF_TSDPortMetrics *)v3 setDiscardedDelayLimitExceededPercentage:self->_discardedDelayLimitExceededPercentage];
  [(_TSF_TSDPortMetrics *)v3 setDiscardedOutOfBoundsPercentage:self->_discardedOutOfBoundsPercentage];
  [(_TSF_TSDPortMetrics *)v3 setDiscardedTimestampsOutOfOrderPercentage:self->_discardedTimestampsOutOfOrderPercentage];
  [(_TSF_TSDPortMetrics *)v3 setSuccessfulPercentage:self->_successfulPercentage];

  return v3;
}

- (TSPortMetrics)initWithInterfaceMetrics:(id *)metrics
{
  self->_portNumber = metrics->var0;
  v3 = *(&metrics->var2 + 2);
  *&self->_syncTimeouts = *(&metrics->var0 + 1);
  *&self->_filterResetsOutOfBounds = v3;
  v4 = *(&metrics->var6 + 2);
  *&self->_droppedMeasurements = *(&metrics->var4 + 2);
  *&self->_discardedDelayLimitExceededMeasurements = v4;
  v5 = *(&metrics->var10 + 2);
  *&self->_discardedTimestampsOutOfOrderMeasurements = *(&metrics->var8 + 2);
  *&self->_totalMeasurements = v5;
  v6 = *(&metrics->var14 + 2);
  *&self->_discardedPpmLimitPercentage = *(&metrics->var12 + 2);
  *&self->_discardedOutOfBoundsPercentage = v6;
  self->_successfulPercentage = *(&metrics->var16 + 2);
  return self;
}

- (void)printMetrics
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    portNumber = self->_portNumber;
    v22 = 67109120;
    LODWORD(v23) = portNumber;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Port = %u\n", &v22, 8u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    syncTimeouts = self->_syncTimeouts;
    v22 = 134217984;
    v23 = syncTimeouts;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Sync Timeouts = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    filterResetsDroppedLimit = self->_filterResetsDroppedLimit;
    v22 = 134217984;
    v23 = filterResetsDroppedLimit;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Filter Resets (Dropped Limit) = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    filterResetsOutOfBounds = self->_filterResetsOutOfBounds;
    v22 = 134217984;
    v23 = filterResetsOutOfBounds;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Filter Resets (Out Of Bounds) = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    meanDelayTime = self->_meanDelayTime;
    v22 = 134217984;
    v23 = meanDelayTime;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Mean Delay Time = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    droppedMeasurements = self->_droppedMeasurements;
    v22 = 134217984;
    v23 = droppedMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Dropped Measurements = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedPpmLimitMeasurements = self->_discardedPpmLimitMeasurements;
    v22 = 134217984;
    v23 = discardedPpmLimitMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded PPM Limit Measurements = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedDelayLimitExceededMeasurements = self->_discardedDelayLimitExceededMeasurements;
    v22 = 134217984;
    v23 = discardedDelayLimitExceededMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Delay Limit Exceeded Measurements = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedOutOfBoundsMeasurements = self->_discardedOutOfBoundsMeasurements;
    v22 = 134217984;
    v23 = discardedOutOfBoundsMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Out Of Bounds Measurements = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedTimestampsOutOfOrderMeasurements = self->_discardedTimestampsOutOfOrderMeasurements;
    v22 = 134217984;
    v23 = discardedTimestampsOutOfOrderMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Timestamps Out Of Order Measurements = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    successfulMeasurements = self->_successfulMeasurements;
    v22 = 134217984;
    v23 = successfulMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Successful Measurements = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    totalMeasurements = self->_totalMeasurements;
    v22 = 134217984;
    v23 = totalMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Total Measurements = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    droppedPercentage = self->_droppedPercentage;
    v22 = 134217984;
    v23 = droppedPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Dropped Percentage = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedPpmLimitPercentage = self->_discardedPpmLimitPercentage;
    v22 = 134217984;
    v23 = discardedPpmLimitPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded PPM Limit Percentage = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedDelayLimitExceededPercentage = self->_discardedDelayLimitExceededPercentage;
    v22 = 134217984;
    v23 = discardedDelayLimitExceededPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Delay Limit Exceeded Percentage = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedOutOfBoundsPercentage = self->_discardedOutOfBoundsPercentage;
    v22 = 134217984;
    v23 = discardedOutOfBoundsPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Out Of Bounds Percentage = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedTimestampsOutOfOrderPercentage = self->_discardedTimestampsOutOfOrderPercentage;
    v22 = 134217984;
    v23 = discardedTimestampsOutOfOrderPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Timestamps Out Of Order Percentage = %zu\n", &v22, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    successfulPercentage = self->_successfulPercentage;
    v22 = 134217984;
    v23 = successfulPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Successful Percentage = %zu\n", &v22, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end