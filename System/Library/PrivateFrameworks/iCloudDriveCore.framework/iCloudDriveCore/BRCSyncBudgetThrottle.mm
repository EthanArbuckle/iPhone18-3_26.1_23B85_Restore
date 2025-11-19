@interface BRCSyncBudgetThrottle
- (BRCSyncBudgetThrottle)init;
- (BRCSyncBudgetThrottle)initWithCoder:(id)a3;
- (double)_timeToLoseAmount:(float)a3 count:(int)a4;
- (double)nextDateWithBudgetWithDefaults:(id)a3;
- (float)availableBudgetWithDefaults:(id)a3;
- (id)debugDescriptionWithDefaults:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)updateForTime:(double)a3;
@end

@implementation BRCSyncBudgetThrottle

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(BRCSyncBudgetThrottle *)self lastMinute];
  v6 = v5;
  [(BRCSyncBudgetThrottle *)self lastHour];
  v8 = v7;
  [(BRCSyncBudgetThrottle *)self lastDay];
  return [v3 stringWithFormat:@"<%@ {  m:%.1f  h:%.1f  d:%.1f  }>", v4, *&v6, *&v8, v9];
}

- (BRCSyncBudgetThrottle)init
{
  v6.receiver = self;
  v6.super_class = BRCSyncBudgetThrottle;
  v2 = [(BRCSyncBudgetThrottle *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSince1970];
    v2->_t0 = v4;
  }

  return v2;
}

- (BRCSyncBudgetThrottle)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BRCSyncBudgetThrottle;
  v5 = [(BRCSyncBudgetThrottle *)&v13 init];
  if (v5)
  {
    v12 = 0;
    [v4 decodeDoubleForKey:@"t0"];
    v5->_t0 = v6;
    v7 = [v4 decodeBytesForKey:@"v" returnedLength:&v12];
    if (v12 == 32)
    {
      v8 = v7[1];
      *v5->_values = *v7;
      *&v5->_values[4] = v8;
    }

    else
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(BRCSyncBudgetThrottle *)&v12 initWithCoder:v9, v10];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  t0 = self->_t0;
  v5 = a3;
  [v5 encodeDouble:@"t0" forKey:t0];
  [v5 encodeBytes:self->_values length:32 forKey:@"v"];
}

- (void)updateForTime:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  t0 = self->_t0;
  v4 = vcvtmd_s64_f64((a3 - t0) / 60.0);
  if (v4 < 0)
  {
LABEL_12:
    self->_t0 = a3;
    goto LABEL_13;
  }

  if (v4)
  {
    v5 = 0;
    v6 = 0;
    values = self->_values;
    v8 = *&self->_values[4];
    v19[0] = *self->_values;
    v19[1] = v8;
    v9 = 0.0;
    do
    {
      v10 = __sums[v6];
      v11 = v10 <= v4;
      v12 = v10 - v4;
      if (v11)
      {
        values[v6] = 0.0;
      }

      else
      {
        if (v12 >= __sums[v5])
        {
          do
          {
            v13 = v5 + 1;
            v9 = v9 + *(v19 + v5);
            v14 = __sums[++v5];
          }

          while (v12 >= v14);
        }

        else
        {
          v13 = v5;
        }

        *&v15 = (v12 - __sums[v13 - 1]);
        v16 = *(v19 + v13) * *&v15;
        LOWORD(v15) = __intervals[v13];
        v17 = v9 + (v16 / v15);
        values[v6] = v17;
        v9 = v9 - v17;
        v5 = v13;
      }

      ++v6;
    }

    while (v6 != 8);
    a3 = t0 + v4 * 60.0;
    goto LABEL_12;
  }

LABEL_13:
  v18 = *MEMORY[0x277D85DE8];
}

- (double)_timeToLoseAmount:(float)a3 count:(int)a4
{
  if (a4 < 1)
  {
    v9 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = a4;
    while (1)
    {
      v7 = *(&self->_t0 + v6 + 1);
      if (a3 < v7)
      {
        break;
      }

      v8 = &__intervals[v6--];
      v5 += *(v8 - 1);
      a3 = a3 - v7;
      if ((v6 + 1) < 2)
      {
        v9 = v5;
        return v9 * 60.0;
      }
    }

    LOWORD(v4) = __intervals[v6 - 1];
    v9 = v5 + ceilf((a3 * v4) / v7);
  }

  return v9 * 60.0;
}

- (double)nextDateWithBudgetWithDefaults:(id)a3
{
  v4 = a3;
  [v4 syncUpMinimalBudget];
  v6 = v5;
  [(BRCSyncBudgetThrottle *)self lastDay];
  v8 = v6 + v7;
  [v4 syncUpDailyBudget];
  v10 = v8 - v9;
  v11 = 0.0;
  if (v10 <= 0.0 || ([(BRCSyncBudgetThrottle *)self _timeToLoseAmount:8 count:?], v11 = v12, v12 < 3600.0))
  {
    [(BRCSyncBudgetThrottle *)self lastHour];
    v14 = v6 + v13;
    [v4 syncUpHourlyBudget];
    if ((v14 - v15) > 0.0)
    {
      [(BRCSyncBudgetThrottle *)self _timeToLoseAmount:4 count:?];
      if (v11 < v16)
      {
        v11 = v16;
      }
    }
  }

  if (v11 < 60.0)
  {
    [(BRCSyncBudgetThrottle *)self lastMinute];
    v18 = v6 + v17;
    [v4 syncUpMinutelyBudget];
    if (v18 > v19)
    {
      v11 = 60.0;
    }
  }

  v20 = v11 + self->_t0;

  return v20;
}

- (float)availableBudgetWithDefaults:(id)a3
{
  v4 = a3;
  [v4 syncUpDailyBudget];
  v6 = v5;
  [(BRCSyncBudgetThrottle *)self lastDay];
  v8 = v6 - v7;
  [v4 syncUpHourlyBudget];
  v10 = v9;
  [(BRCSyncBudgetThrottle *)self lastHour];
  v12 = v10 - v11;
  [v4 syncUpMinutelyBudget];
  v14 = v13;

  [(BRCSyncBudgetThrottle *)self lastMinute];
  result = v14 - v15;
  if (v12 >= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v12;
  }

  if (result >= v17)
  {
    return v17;
  }

  return result;
}

- (id)debugDescriptionWithDefaults:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:64];
  [(BRCSyncBudgetThrottle *)self nextDateWithBudgetWithDefaults:v4];
  v7 = v6 - self->_t0;
  v8 = [MEMORY[0x277CBEAA8] date];
  [v8 timeIntervalSince1970];
  v10 = v9;
  t0 = self->_t0;

  if (v7 <= 0.0)
  {
    [v5 appendString:@"budget available {"];
  }

  else
  {
    [v5 appendFormat:@"no budget left for %.1fs {", *&v7];
  }

  v12 = v10 - t0;
  v13 = (fmod(v12, 3600.0) / 60);
  [v5 appendFormat:@"  %d:%02d:%02ds ago", (v12 / 3600.0), v13, fmod(v12, 60.0)];
  [(BRCSyncBudgetThrottle *)self lastMinute];
  v15 = v14 * 100.0;
  [v4 syncUpMinutelyBudget];
  v17 = (v15 / v16);
  [(BRCSyncBudgetThrottle *)self lastMinute];
  [v5 appendFormat:@"  m:%.1f%% (%.1f)", *&v17, v18];
  [(BRCSyncBudgetThrottle *)self lastHour];
  *&v17 = v19 * 100.0;
  [v4 syncUpHourlyBudget];
  v21 = (*&v17 / v20);
  [(BRCSyncBudgetThrottle *)self lastHour];
  [v5 appendFormat:@"  h:%.1f%% (%.1f)", *&v21, v22];
  [(BRCSyncBudgetThrottle *)self lastDay];
  *&v12 = v23 * 100.0;
  [v4 syncUpDailyBudget];
  v25 = (*&v12 / v24);
  [(BRCSyncBudgetThrottle *)self lastDay];
  [v5 appendFormat:@"  d:%.1f%% (%.1f)", *&v25, v26];
  [v5 appendString:@"  }"];

  return v5;
}

- (void)initWithCoder:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid length: %ld%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end