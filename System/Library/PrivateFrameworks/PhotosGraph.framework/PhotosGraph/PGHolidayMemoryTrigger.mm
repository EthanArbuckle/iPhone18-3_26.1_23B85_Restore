@interface PGHolidayMemoryTrigger
- (PGHolidayMemoryTrigger)initWithLoggingConnection:(id)connection holidayService:(id)service;
@end

@implementation PGHolidayMemoryTrigger

- (PGHolidayMemoryTrigger)initWithLoggingConnection:(id)connection holidayService:(id)service
{
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = PGHolidayMemoryTrigger;
  v8 = [(PGMemoryTrigger *)&v11 initWithLoggingConnection:connection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_holidayService, service);
  }

  return v9;
}

@end