@interface ICSFreeBusyTime
- (ICSFreeBusyTime)initWithPeriod:(id)period;
- (unint64_t)fbtype;
- (void)setFbtype:(unint64_t)fbtype;
@end

@implementation ICSFreeBusyTime

- (ICSFreeBusyTime)initWithPeriod:(id)period
{
  v4.receiver = self;
  v4.super_class = ICSFreeBusyTime;
  return [(ICSProperty *)&v4 initWithValue:period type:5009];
}

- (unint64_t)fbtype
{
  v2 = [(ICSProperty *)self parameterValueForName:@"FBTYPE"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setFbtype:(unint64_t)fbtype
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:fbtype];
  [(ICSProperty *)self setParameterValue:v4 forName:@"FBTYPE"];
}

@end