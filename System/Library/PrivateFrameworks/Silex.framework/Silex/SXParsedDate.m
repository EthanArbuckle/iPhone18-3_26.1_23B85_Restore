@interface SXParsedDate
- (SXParsedDate)initWithDate:(id)a3 containedTime:(BOOL)a4 timeZone:(id)a5;
@end

@implementation SXParsedDate

- (SXParsedDate)initWithDate:(id)a3 containedTime:(BOOL)a4 timeZone:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SXParsedDate;
  v11 = [(SXParsedDate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_date, a3);
    v12->_containedTime = a4;
    objc_storeStrong(&v12->_timeZone, a5);
  }

  return v12;
}

@end