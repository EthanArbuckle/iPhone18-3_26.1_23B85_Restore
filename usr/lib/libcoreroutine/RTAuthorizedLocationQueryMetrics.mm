@interface RTAuthorizedLocationQueryMetrics
- (RTAuthorizedLocationQueryMetrics)init;
- (void)endTimer;
- (void)setMotionSpeedLimitRejectionCodeFromLookbackHours:(double)a3;
- (void)startTimer;
@end

@implementation RTAuthorizedLocationQueryMetrics

- (RTAuthorizedLocationQueryMetrics)init
{
  v13.receiver = self;
  v13.super_class = RTAuthorizedLocationQueryMetrics;
  v2 = [(RTAuthorizedLocationQueryMetrics *)&v13 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 0;
    *(v2 + 12) = 0xC2C80000BF800000;
    *(v2 + 20) = 0xFFFFFFFF00000000;
    __asm { FMOV            V0.2S, #-1.0 }

    *(v2 + 28) = _D0;
    *(v2 + 9) = -1;
    *(v2 + 5) = -1;
    *(v2 + 6) = 0xBF800000FFFFFFFFLL;
    v9 = *(v2 + 12);
    *(v2 + 12) = 0;

    endDate = v3->_endDate;
    v3->_endDate = 0;

    *&v3->_authorizedLocationConfirmationTriggerReason = 0xFFFFFFFF00000000;
    v3->_isLocationRequestedPeriodically = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v3->_timeSinceLastPeriodicLocRequest = _Q0;
    v3->_timeSincePreviousXPCSchedule = 0.0;
    v3->_timeSinceLastUserQuery = 0.0;
  }

  return v3;
}

- (void)startTimer
{
  if (!self->_startDate)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    startDate = self->_startDate;
    self->_startDate = v3;
  }

  endDate = self->_endDate;
  self->_endDate = 0;
}

- (void)endTimer
{
  v3 = [MEMORY[0x277CBEAA8] now];
  endDate = self->_endDate;
  self->_endDate = v3;

  if (self->_startDate)
  {
    v5 = self->_endDate;
    if (v5)
    {
      [(NSDate *)v5 timeIntervalSinceDate:?];
      *&v6 = v6 * 1000.0;
      self->_daemonResponseLatencyMs = *&v6;
    }
  }
}

- (void)setMotionSpeedLimitRejectionCodeFromLookbackHours:(double)a3
{
  if (a3 >= 1.0)
  {
    if (a3 >= 2.0)
    {
      if (a3 >= 3.0)
      {
        if (a3 >= 4.0)
        {
          if (a3 >= 5.0)
          {
            v3 = 6;
          }

          else
          {
            v3 = 5;
          }
        }

        else
        {
          v3 = 4;
        }
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 1;
  }

  self->_historicalRejectionReasonCode = v3;
}

@end