@interface NLSessionCountdownDeadline
+ (id)defaultDeadline;
- (NLSessionCountdownDeadline)initWithFireDate:(id)date minimumDelay:(double)delay requiresPreciseFireDate:(BOOL)fireDate;
@end

@implementation NLSessionCountdownDeadline

+ (id)defaultDeadline
{
  v3 = [NLSessionCountdownDeadline alloc];
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [NLSessionCountdownDeadline initWithFireDate:v3 minimumDelay:"initWithFireDate:minimumDelay:requiresPreciseFireDate:" requiresPreciseFireDate:0.1];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (NLSessionCountdownDeadline)initWithFireDate:(id)date minimumDelay:(double)delay requiresPreciseFireDate:(BOOL)fireDate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  delayCopy = delay;
  fireDateCopy = fireDate;
  v5 = selfCopy;
  selfCopy = 0;
  v10.receiver = v5;
  v10.super_class = NLSessionCountdownDeadline;
  selfCopy = [(NLSessionCountdownDeadline *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_fireDate, location[0]);
    selfCopy->_minimumDelay = delayCopy;
    selfCopy->_requiresPreciseFireDate = fireDateCopy;
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

@end