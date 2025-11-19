@interface CTSActivity
- (id)description;
- (int64_t)deadlineTime;
- (int64_t)eligibleTime;
- (int64_t)totalElapsed;
- (void)advanceBaseTime;
- (void)loadBaseTime;
- (void)markStopped:(int64_t)a3;
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

  v3 = self;
  sub_2A58();
  v4 = [(CTSActivity *)v3 name];

  if (!v4)
  {
    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(qword_15400, v4);
  if (!Value)
  {
    goto LABEL_13;
  }

  AbsoluteTime = CFDateGetAbsoluteTime(Value);
  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v8 = [(CTSActivity *)v3 random_initial_delay];
  v9 = 1000000000 * v8;
  if ((v8 * 1000000000) >> 64 != (1000000000 * v8) >> 63)
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
    v16 = sub_3FDC(v3);
    if (__OFADD__(v15, v16))
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15 + v16;
    }

    v18 = [(CTSActivity *)v3 name];
    sub_4A54(v18, v17);
  }

  [(CTSActivity *)v3 setBaseTime:v17];
  v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v20 = [(CTSActivity *)v3 interval];
  v21 = 1000000000 * v20;
  if ((v20 * 1000000000) >> 64 != (1000000000 * v20) >> 63)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v22 = v19 - v21;
  if ([(CTSActivity *)v3 baseTime]< v22)
  {
    goto LABEL_24;
  }
}

- (id)description
{
  v3 = [(CTSActivity *)self name];
  v4 = [NSString stringWithFormat:@"%@ (%p)", v3, self];

  return v4;
}

- (int64_t)eligibleTime
{
  v3 = [(CTSActivity *)self baseTime];
  v4 = [(CTSActivity *)self tempDelay];
  if (!v4)
  {
    v4 = [(CTSActivity *)self delay];
  }

  v5 = 1000000000 * v4;
  if ((v4 * 1000000000) >> 64 != (1000000000 * v4) >> 63)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = __OFADD__(v3, v5);
  v7 = v3 + v5;
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
  v3 = [(CTSActivity *)self eligibleTime];
  if ([(CTSActivity *)self grace_period]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(CTSActivity *)self repeating];
  v6 = [(CTSActivity *)self baseTime];
  if (v5)
  {
    v7 = [(CTSActivity *)self interval];
  }

  else
  {
    v7 = [(CTSActivity *)self delay];
  }

  v8 = v7;
  v9 = [(CTSActivity *)self grace_period];
  v10 = v8 + v9;
  v11 = __OFADD__(v8, v9);
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

  v18 = __OFADD__(v6, v17);
  v19 = v6 + v17;
  if (!v18)
  {
    v15 = v19;
  }

  if (v15 <= v3)
  {
    return v3;
  }

  else
  {
    return v15;
  }
}

- (void)advanceBaseTime
{
  v3 = [(CTSActivity *)self repeating];
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v5 = v4;
  if (!v3)
  {
    v11 = 0;
    v12 = v4;
    goto LABEL_49;
  }

  v6 = [(CTSActivity *)self interval];
  if ((v6 * 1000000000) >> 64 == (1000000000 * v6) >> 63)
  {
    v7 = 1000000000 * v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [(CTSActivity *)self delay];
  if ((v8 * 1000000000) >> 64 == (1000000000 * v8) >> 63)
  {
    v9 = 1000000000 * v8;
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
    v13 = [(CTSActivity *)self grace_period];
    if ((v13 * 1000000000) >> 64 == (1000000000 * v13) >> 63)
    {
      v10 = 1000000000 * v13;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v14 = [(CTSActivity *)self baseTime];
  if (__OFADD__(v14, v7))
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v14 + v7;
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
      v19 = [(CTSActivity *)self name];
      *v36 = 138543362;
      *&v36[4] = v19;
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
      v19 = [(CTSActivity *)self name];
      *v36 = 138543362;
      *&v36[4] = v19;
      v20 = "newBaseTime is less than interval+gracePeriod ago, moving forward for %{public}@";
LABEL_29:
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, v20, v36, 0xCu);
    }
  }

  v12 = v16;
LABEL_31:
  if (v9)
  {
    v23 = [(CTSActivity *)self startTime];
    v11 = 0;
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v5;
    }

    v25 = __OFSUB__(v24, v12);
    v26 = v24 - v12;
    if (!v25 && v26 >= 1)
    {
      v27 = [(CTSActivity *)self startTime];
      if (v27)
      {
        v28 = v27;
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
        v34 = [(CTSActivity *)self name];
        *v36 = 134218242;
        *&v36[4] = v11;
        *&v36[12] = 2114;
        *&v36[14] = v34;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "Using temporary delay of %lld seconds to account for late fire of %{public}@", v36, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v35 = [(CTSActivity *)self name];
  sub_4A54(v35, v12);

LABEL_49:
  [(CTSActivity *)self setBaseTime:v12];
  [(CTSActivity *)self setTempDelay:v11];
}

- (void)resetBaseTime
{
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = [(CTSActivity *)self name];
  sub_4A54(v4, v3);

  [(CTSActivity *)self setBaseTime:v3];
  [(CTSActivity *)self setElapsedTime:0];

  [(CTSActivity *)self setStartTime:0];
}

- (void)markStopped:(int64_t)a3
{
  [(CTSActivity *)self setElapsedTime:[(CTSActivity *)self elapsedTime]+ a3 - [(CTSActivity *)self startTime]];

  [(CTSActivity *)self setStartTime:0];
}

- (int64_t)totalElapsed
{
  v3 = [(CTSActivity *)self elapsedTime];
  if ([(CTSActivity *)self startTime])
  {
    v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v5 = v4 - [(CTSActivity *)self startTime];
  }

  else
  {
    v5 = 0;
  }

  return v5 + v3;
}

@end