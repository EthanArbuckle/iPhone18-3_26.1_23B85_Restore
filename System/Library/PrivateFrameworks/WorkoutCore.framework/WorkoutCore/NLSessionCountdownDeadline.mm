@interface NLSessionCountdownDeadline
+ (id)defaultDeadline;
- (NLSessionCountdownDeadline)initWithFireDate:(id)a3 minimumDelay:(double)a4 requiresPreciseFireDate:(BOOL)a5;
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

- (NLSessionCountdownDeadline)initWithFireDate:(id)a3 minimumDelay:(double)a4 requiresPreciseFireDate:(BOOL)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v11 = a5;
  v5 = v14;
  v14 = 0;
  v10.receiver = v5;
  v10.super_class = NLSessionCountdownDeadline;
  v14 = [(NLSessionCountdownDeadline *)&v10 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    objc_storeStrong(&v14->_fireDate, location[0]);
    v14->_minimumDelay = v12;
    v14->_requiresPreciseFireDate = v11;
  }

  v7 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v7;
}

@end