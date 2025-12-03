@interface SXParsedDate
- (SXParsedDate)initWithDate:(id)date containedTime:(BOOL)time timeZone:(id)zone;
@end

@implementation SXParsedDate

- (SXParsedDate)initWithDate:(id)date containedTime:(BOOL)time timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  v14.receiver = self;
  v14.super_class = SXParsedDate;
  v11 = [(SXParsedDate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_date, date);
    v12->_containedTime = time;
    objc_storeStrong(&v12->_timeZone, zone);
  }

  return v12;
}

@end