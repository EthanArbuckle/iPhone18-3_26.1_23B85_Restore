@interface TSClockMetrics
- (TSClockMetrics)initWithDaemonMetrics:(id)metrics;
- (TSClockMetrics)initWithInterfaceMetrics:(id *)metrics;
- (id)toDaemonMetrics;
- (void)printMetrics;
@end

@implementation TSClockMetrics

- (TSClockMetrics)initWithDaemonMetrics:(id)metrics
{
  metricsCopy = metrics;
  self->_clockIdentity = [metricsCopy clockIdentity];
  self->_gmChangesCount = [metricsCopy gmChangesCount];
  self->_timeToChangeGm = [metricsCopy timeToChangeGm];
  self->_timeToLock = [metricsCopy timeToLock];
  coreAudioReanchors = [metricsCopy coreAudioReanchors];

  self->_coreAudioReanchors = coreAudioReanchors;
  return self;
}

- (id)toDaemonMetrics
{
  v3 = [_TSF_TSDClockMetrics alloc];
  [(_TSF_TSDClockMetrics *)v3 setClockIdentity:self->_clockIdentity];
  [(_TSF_TSDClockMetrics *)v3 setGmChangesCount:self->_gmChangesCount];
  [(_TSF_TSDClockMetrics *)v3 setTimeToChangeGm:self->_timeToChangeGm];
  [(_TSF_TSDClockMetrics *)v3 setTimeToLock:self->_timeToLock];
  [(_TSF_TSDClockMetrics *)v3 setCoreAudioReanchors:self->_coreAudioReanchors];

  return v3;
}

- (TSClockMetrics)initWithInterfaceMetrics:(id *)metrics
{
  self->_clockIdentity = metrics->var0;
  v3 = *&metrics->var3;
  *&self->_gmChangesCount = *&metrics->var1;
  *&self->_timeToLock = v3;
  return self;
}

- (void)printMetrics
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Clock Metrics:", &v9, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    clockIdentity = self->_clockIdentity;
    v9 = 134217984;
    v10 = clockIdentity;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Clock Identity = %llx\n", &v9, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    gmChangesCount = self->_gmChangesCount;
    v9 = 134217984;
    v10 = gmChangesCount;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  GM Changes = %zu\n", &v9, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    timeToChangeGm = self->_timeToChangeGm;
    v9 = 134217984;
    v10 = timeToChangeGm;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Time to change GM = %zu\n", &v9, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    timeToLock = self->_timeToLock;
    v9 = 134217984;
    v10 = timeToLock;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Time to lock = %zu\n", &v9, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    coreAudioReanchors = self->_coreAudioReanchors;
    v9 = 134217984;
    v10 = coreAudioReanchors;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Core audio reanchors = %zu\n", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end