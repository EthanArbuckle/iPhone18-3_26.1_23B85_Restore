@interface RTTrustedTimeCache
- (RTTrustedTimeCache)init;
- (double)convertMachContinuousTicksToSeconds:(unint64_t)a3;
- (double)machContinuousTimeSeconds;
- (id)getApproximateTrustedDateNow;
- (id)getApproximateTrustedDateNowWithUnsecureFallback;
- (void)setBoundsForReferenceTimeWithMinimumDate:(id)a3 maximumDate:(id)a4;
@end

@implementation RTTrustedTimeCache

- (id)getApproximateTrustedDateNowWithUnsecureFallback
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(RTTrustedTimeCache *)self getApproximateTrustedDateNow];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_28:
    v15 = v5;
    goto LABEL_29;
  }

  [(RTTrustedTimeCache *)self machContinuousTimeSeconds];
  v7 = v6;
  v8 = v6 - self->_cachedReferenceTimeMachContSeconds;
  if (self->_cachedTrustedTimeCfatSeconds != 0.0 && v8 <= 300.0)
  {
    goto LABEL_21;
  }

  if (!TMGetReferenceTime())
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityTrustedTime);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "Reference time unavailable", buf, 2u);
    }

    goto LABEL_20;
  }

  minBoundReferenceTimeCfatSeconds = self->_minBoundReferenceTimeCfatSeconds;
  maxBoundReferenceTimeCfatSeconds = self->_maxBoundReferenceTimeCfatSeconds;
  if (maxBoundReferenceTimeCfatSeconds < -1.0 && maxBoundReferenceTimeCfatSeconds != 0.0)
  {
    if (v7 - self->_machContSecondsWhenReferenceTimeBoundsSet + 10.0 <= maxBoundReferenceTimeCfatSeconds - minBoundReferenceTimeCfatSeconds)
    {
LABEL_11:
      v11 = 0;
      goto LABEL_15;
    }

    self->_maxBoundReferenceTimeCfatSeconds = maxBoundReferenceTimeCfatSeconds + maxBoundReferenceTimeCfatSeconds - minBoundReferenceTimeCfatSeconds;
  }

  if (-1.0 + 10.0 < minBoundReferenceTimeCfatSeconds)
  {
    goto LABEL_11;
  }

  self->_cachedReferenceTimeCfatSeconds = -1.0;
  self->_cachedReferenceTimeMachContSeconds = v7;
  v8 = 0.0;
  v11 = 1;
LABEL_15:
  Current = CFAbsoluteTimeGetCurrent();
  v14 = _rt_log_facility_get_os_log(RTLogFacilityTrustedTime);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349568;
    v24 = Current - -1.0;
    v25 = 2050;
    v26 = -1.0;
    v27 = 1026;
    LODWORD(v28) = 0;
    _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "Reference time fetched with offset %{public}.3f,unc,%{public}.3f,rel,%{public}d", buf, 0x1Cu);
  }

  if ((v11 & 1) == 0)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityTrustedTime);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = self->_minBoundReferenceTimeCfatSeconds;
      v22 = self->_maxBoundReferenceTimeCfatSeconds;
      *buf = 134349568;
      v24 = -1.0;
      v25 = 2050;
      v26 = v21;
      v27 = 2050;
      v28 = v22;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Reference time %{public}.1f violated bounds %{public}.1f,%{public}.1f", buf, 0x20u);
    }

LABEL_20:
  }

LABEL_21:
  v15 = 0;
  cachedReferenceTimeCfatSeconds = self->_cachedReferenceTimeCfatSeconds;
  if (cachedReferenceTimeCfatSeconds != 0.0 && v8 < 14400.0)
  {
    v17 = v8 + cachedReferenceTimeCfatSeconds;
    v18 = CFAbsoluteTimeGetCurrent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityTrustedTime);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134349312;
        v24 = v8;
        v25 = 2050;
        v26 = v18 - v17;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "Reference time fetched with age %{public}.3f and offset %{public}.3f", buf, 0x16u);
      }
    }

    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v17];
    goto LABEL_28;
  }

LABEL_29:

  return v15;
}

- (id)getApproximateTrustedDateNow
{
  v21 = *MEMORY[0x277D85DE8];
  [(RTTrustedTimeCache *)self machContinuousTimeSeconds];
  v4 = v3;
  cachedTrustedTimeCfatSeconds = self->_cachedTrustedTimeCfatSeconds;
  v6 = v4 - self->_cachedTrustedTimeMachContSeconds;
  if (cachedTrustedTimeCfatSeconds == 0.0 || v6 > 300.0)
  {
    if (TMGetTrustedInterval())
    {
      self->_cachedTrustedTimeCfatSeconds = -1.0;
      self->_cachedTrustedTimeMachContSeconds = v4;
      Current = CFAbsoluteTimeGetCurrent();
      v8 = _rt_log_facility_get_os_log(RTLogFacilityTrustedTime);
      v6 = 0.0;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349312;
        v18 = Current - -1.0;
        v19 = 2050;
        v20 = -1.0;
        v9 = "Trusted interval fetched with offset %{public}.3f,unc,%{public}.3f";
        v10 = v8;
        v11 = 22;
LABEL_8:
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    else
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityTrustedTime);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "Trusted interval unavailable";
        v10 = v8;
        v11 = 2;
        goto LABEL_8;
      }
    }

    cachedTrustedTimeCfatSeconds = self->_cachedTrustedTimeCfatSeconds;
  }

  v12 = 0;
  if (cachedTrustedTimeCfatSeconds != 0.0 && v6 < 14400.0)
  {
    v13 = cachedTrustedTimeCfatSeconds + v6;
    v14 = CFAbsoluteTimeGetCurrent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityTrustedTime);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 134349312;
        v18 = v6;
        v19 = 2050;
        v20 = v14 - v13;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "Trusted interval fetched with age %{public}.3f and offset %{public}.3f", buf, 0x16u);
      }
    }

    v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v13];
  }

  return v12;
}

- (double)machContinuousTimeSeconds
{
  v3 = mach_continuous_time();

  [(RTTrustedTimeCache *)self convertMachContinuousTicksToSeconds:v3];
  return result;
}

- (RTTrustedTimeCache)init
{
  v3.receiver = self;
  v3.super_class = RTTrustedTimeCache;
  result = [(RTTrustedTimeCache *)&v3 init];
  if (result)
  {
    result->_machContSecondsWhenReferenceTimeBoundsSet = 0.0;
    *&result->_minBoundReferenceTimeCfatSeconds = 0u;
    *&result->_cachedReferenceTimeCfatSeconds = 0u;
    *&result->_cachedTrustedTimeCfatSeconds = 0u;
  }

  return result;
}

- (double)convertMachContinuousTicksToSeconds:(unint64_t)a3
{
  if (qword_2814A7D78 != -1)
  {
    dispatch_once(&qword_2814A7D78, &__block_literal_global_103);
  }

  return (_MergedGlobals_120 * a3 / *algn_2814A7D74) * 0.000000001;
}

- (void)setBoundsForReferenceTimeWithMinimumDate:(id)a3 maximumDate:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  self->_minBoundReferenceTimeCfatSeconds = 0.0;
  self->_maxBoundReferenceTimeCfatSeconds = 0.0;
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    self->_minBoundReferenceTimeCfatSeconds = v8;
  }

  if (v7)
  {
    [v7 timeIntervalSinceReferenceDate];
    self->_maxBoundReferenceTimeCfatSeconds = v9;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = _rt_log_facility_get_os_log(RTLogFacilityTrustedTime);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    minBoundReferenceTimeCfatSeconds = self->_minBoundReferenceTimeCfatSeconds;
    maxBoundReferenceTimeCfatSeconds = self->_maxBoundReferenceTimeCfatSeconds;
    v14 = 134349824;
    v15 = minBoundReferenceTimeCfatSeconds;
    v16 = 2050;
    v17 = maxBoundReferenceTimeCfatSeconds;
    v18 = 2050;
    v19 = Current - minBoundReferenceTimeCfatSeconds;
    v20 = 2050;
    v21 = Current - maxBoundReferenceTimeCfatSeconds;
    _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "Set reference time bounds to %{public}.1f,%{public}.1f, age, %{public}.1f,%{public}.1f", &v14, 0x2Au);
  }
}

@end