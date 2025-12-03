@interface PowerUIChargeSession
- (PowerUIChargeSession)initWithStartDate:(id)date withEndDate:(id)endDate withStartSoC:(id)c withEndSoC:(id)soC;
@end

@implementation PowerUIChargeSession

- (PowerUIChargeSession)initWithStartDate:(id)date withEndDate:(id)endDate withStartSoC:(id)c withEndSoC:(id)soC
{
  dateCopy = date;
  endDateCopy = endDate;
  cCopy = c;
  soCCopy = soC;
  v21.receiver = self;
  v21.super_class = PowerUIChargeSession;
  v15 = [(PowerUIChargeSession *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_startDate, date);
    objc_storeStrong(&v16->_endDate, endDate);
    objc_storeStrong(&v16->_startSoC, c);
    objc_storeStrong(&v16->_endSoC, soC);
    [endDateCopy timeIntervalSinceReferenceDate];
    v18 = v17;
    [dateCopy timeIntervalSinceReferenceDate];
    v16->_duration = v18 - v19;
  }

  return v16;
}

@end