@interface PowerUIChargeSession
- (PowerUIChargeSession)initWithStartDate:(id)a3 withEndDate:(id)a4 withStartSoC:(id)a5 withEndSoC:(id)a6;
@end

@implementation PowerUIChargeSession

- (PowerUIChargeSession)initWithStartDate:(id)a3 withEndDate:(id)a4 withStartSoC:(id)a5 withEndSoC:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = PowerUIChargeSession;
  v15 = [(PowerUIChargeSession *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_startDate, a3);
    objc_storeStrong(&v16->_endDate, a4);
    objc_storeStrong(&v16->_startSoC, a5);
    objc_storeStrong(&v16->_endSoC, a6);
    [v12 timeIntervalSinceReferenceDate];
    v18 = v17;
    [v11 timeIntervalSinceReferenceDate];
    v16->_duration = v18 - v19;
  }

  return v16;
}

@end