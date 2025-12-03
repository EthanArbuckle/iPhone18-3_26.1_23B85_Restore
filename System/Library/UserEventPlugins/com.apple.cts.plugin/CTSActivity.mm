@interface CTSActivity
- (id)description;
- (int64_t)deadlineTime;
- (int64_t)eligibleTime;
- (int64_t)totalElapsed;
- (void)advanceBaseTime;
- (void)loadBaseTime;
- (void)markStopped:(int64_t)stopped;
- (void)resetBaseTime;
@end

@implementation CTSActivity

- (void)loadBaseTime
{
  if (![(CTSActivity *)self repeating])
  {
    v23 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v24 = sub_3FDC(self);
    if (__OFADD__(v23, v24))
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v23 + v24;
    }

LABEL_24:

    [(CTSActivity *)self setBaseTime:v22];
    return;
  }

  selfCopy = self;
  sub_2A58();
  name = [(CTSActivity *)selfCopy name];

  if (!name)
  {
    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(qword_15400, name);
  if (!Value)
  {
    goto LABEL_13;
  }

  AbsoluteTime = CFDateGetAbsoluteTime(Value);
  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  random_initial_delay = [(CTSActivity *)selfCopy random_initial_delay];
  v9 = 1000000000 * random_initial_delay;
  if ((random_initial_delay * 1000000000) >> 64 != (1000000000 * random_initial_delay) >> 63)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = __OFADD__(v7, v9);
  v11 = v7 + v9;
  v12 = v10 ? 0x7FFFFFFFFFFFFFFFLL : v11;
  sub_2BAC(v12);
  if (AbsoluteTime > 0.0 && AbsoluteTime <= v13)
  {
    v25 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v17 = v25 + ((AbsoluteTime - CFAbsoluteTimeGetCurrent()) * 1000000000.0);
  }

  else
  {
LABEL_13:
    v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v16 = sub_3FDC(selfCopy);
    if (__OFADD__(v15, v16))
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15 + v16;
    }

    name2 = [(CTSActivity *)selfCopy name];
    sub_4A54(name2, v17);
  }

  [(CTSActivity *)selfCopy setBaseTime:v17];
  v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  interval = [(CTSActivity *)selfCopy interval];
  v21 = 1000000000 * interval;
  if ((interval * 1000000000) >> 64 != (1000000000 * interval) >> 63)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v22 = v19 - v21;
  if ([(CTSActivity *)selfCopy baseTime]< v22)
  {
    goto LABEL_24;
  }
}

- (id)description
{
  name = [(CTSActivity *)self name];
  v4 = [NSString stringWithFormat:@"%@ (%p)", name, self];

  return v4;
}

- (int64_t)eligibleTime
{
  baseTime = [(CTSActivity *)self baseTime];
  tempDelay = [(CTSActivity *)self tempDelay];
  if (!tempDelay)
  {
    tempDelay = [(CTSActivity *)self delay];
  }

  v5 = 1000000000 * tempDelay;
  if ((tempDelay * 1000000000) >> 64 != (1000000000 * tempDelay) >> 63)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = __OFADD__(baseTime, v5);
  v7 = baseTime + v5;
  if (v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

- (int64_t)deadlineTime
{
  eligibleTime = [(CTSActivity *)self eligibleTime];
  if ([(CTSActivity *)self grace_period]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  repeating = [(CTSActivity *)self repeating];
  baseTime = [(CTSActivity *)self baseTime];
  if (repeating)
  {
    interval = [(CTSActivity *)self interval];
  }

  else
  {
    interval = [(CTSActivity *)self delay];
  }

  v8 = interval;
  grace_period = [(CTSActivity *)self grace_period];
  v10 = v8 + grace_period;
  v11 = __OFADD__(v8, grace_period);
  v12 = v10;
  v13 = v10 != v10 || v11;
  v14 = v13 == 0;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v14)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v16 * 1000000000) >> 64 == (1000000000 * v16) >> 63)
  {
    v17 = 1000000000 * v16;
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18 = __OFADD__(baseTime, v17);
  v19 = baseTime + v17;
  if (!v18)
  {
    v15 = v19;
  }

  if (v15 <= eligibleTime)
  {
    return eligibleTime;
  }

  else
  {
    return v15;
  }
}

- (void)advanceBaseTime
{
  repeating = [(CTSActivity *)self repeating];
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v5 = v4;
  if (!repeating)
  {
    v11 = 0;
    v12 = v4;
    goto LABEL_49;
  }

  interval = [(CTSActivity *)self interval];
  if ((interval * 1000000000) >> 64 == (1000000000 * interval) >> 63)
  {
    v7 = 1000000000 * interval;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  delay = [(CTSActivity *)self delay];
  if ((delay * 1000000000) >> 64 == (1000000000 * delay) >> 63)
  {
    v9 = 1000000000 * delay;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(CTSActivity *)self grace_period]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    grace_period = [(CTSActivity *)self grace_period];
    if ((grace_period * 1000000000) >> 64 == (1000000000 * grace_period) >> 63)
    {
      v10 = 1000000000 * grace_period;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  baseTime = [(CTSActivity *)self baseTime];
  if (__OFADD__(baseTime, v7))
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = baseTime + v7;
  }

  v15 = v7 + v10;
  if (__OFADD__(v7, v10))
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = v5 - v15;
  if (__OFSUB__(v5, v15) || v16 <= v12)
  {
    v21 = 2 * v7;
    if (__OFADD__(v7, v7))
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v16 = v5 + v21;
    if (__OFADD__(v5, v21) || v16 >= v12)
    {
      goto LABEL_31;
    }

    v22 = qword_154A0;
    if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
    {
      v18 = v22;
      name = [(CTSActivity *)self name];
      *v36 = 138543362;
      *&v36[4] = name;
      v20 = "newBaseTime is greater than 2*interval from now, moving back for %{public}@";
      goto LABEL_29;
    }
  }

  else
  {
    v17 = qword_154A0;
    if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      name = [(CTSActivity *)self name];
      *v36 = 138543362;
      *&v36[4] = name;
      v20 = "newBaseTime is less than interval+gracePeriod ago, moving forward for %{public}@";
LABEL_29:
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, v20, v36, 0xCu);
    }
  }

  v12 = v16;
LABEL_31:
  if (v9)
  {
    startTime = [(CTSActivity *)self startTime];
    v11 = 0;
    if (startTime)
    {
      v24 = startTime;
    }

    else
    {
      v24 = v5;
    }

    v25 = __OFSUB__(v24, v12);
    v26 = v24 - v12;
    if (!v25 && v26 >= 1)
    {
      startTime2 = [(CTSActivity *)self startTime];
      if (startTime2)
      {
        v28 = startTime2;
      }

      else
      {
        v28 = v5;
      }

      v25 = __OFADD__(v28, v9);
      v29 = v28 + v9;
      if (v25)
      {
        v29 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v25 = __OFSUB__(v29, v12);
      v30 = v29 - v12;
      if (v25)
      {
        v31 = 0x8000000000000000;
      }

      else
      {
        v31 = v30;
      }

      v32 = qword_154A0;
      v11 = v31 / 1000000000;
      if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
      {
        v33 = v32;
        name2 = [(CTSActivity *)self name];
        *v36 = 134218242;
        *&v36[4] = v11;
        *&v36[12] = 2114;
        *&v36[14] = name2;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "Using temporary delay of %lld seconds to account for late fire of %{public}@", v36, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  name3 = [(CTSActivity *)self name];
  sub_4A54(name3, v12);

LABEL_49:
  [(CTSActivity *)self setBaseTime:v12];
  [(CTSActivity *)self setTempDelay:v11];
}

- (void)resetBaseTime
{
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  name = [(CTSActivity *)self name];
  sub_4A54(name, v3);

  [(CTSActivity *)self setBaseTime:v3];
  [(CTSActivity *)self setElapsedTime:0];

  [(CTSActivity *)self setStartTime:0];
}

- (void)markStopped:(int64_t)stopped
{
  [(CTSActivity *)self setElapsedTime:[(CTSActivity *)self elapsedTime]+ stopped - [(CTSActivity *)self startTime]];

  [(CTSActivity *)self setStartTime:0];
}

- (int64_t)totalElapsed
{
  elapsedTime = [(CTSActivity *)self elapsedTime];
  if ([(CTSActivity *)self startTime])
  {
    v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v5 = v4 - [(CTSActivity *)self startTime];
  }

  else
  {
    v5 = 0;
  }

  return v5 + elapsedTime;
}

@end