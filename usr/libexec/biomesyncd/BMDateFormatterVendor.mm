@interface BMDateFormatterVendor
+ (id)sharedInstance;
- (BMDateFormatterVendor)init;
@end

@implementation BMDateFormatterVendor

- (BMDateFormatterVendor)init
{
  v10.receiver = self;
  v10.super_class = BMDateFormatterVendor;
  v2 = [(BMDateFormatterVendor *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v3;

    v5 = objc_opt_new();
    dayStringFormatter = v2->_dayStringFormatter;
    v2->_dayStringFormatter = v5;

    [(NSDateFormatter *)v2->_dayStringFormatter setDateFormat:@"yyyyMMdd"];
    v7 = v2->_dayStringFormatter;
    v8 = [NSTimeZone timeZoneForSecondsFromGMT:0];
    [(NSDateFormatter *)v7 setTimeZone:v8];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10008BD88 != -1)
  {
    sub_10004D228();
  }

  v3 = qword_10008BD80;

  return v3;
}

@end