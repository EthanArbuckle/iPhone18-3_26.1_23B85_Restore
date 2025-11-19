@interface PGHolidayMemoryTrigger
- (PGHolidayMemoryTrigger)initWithLoggingConnection:(id)a3 holidayService:(id)a4;
@end

@implementation PGHolidayMemoryTrigger

- (PGHolidayMemoryTrigger)initWithLoggingConnection:(id)a3 holidayService:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PGHolidayMemoryTrigger;
  v8 = [(PGMemoryTrigger *)&v11 initWithLoggingConnection:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_holidayService, a4);
  }

  return v9;
}

@end