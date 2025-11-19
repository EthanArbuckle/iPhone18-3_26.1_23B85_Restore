@interface ICSFreeBusyTime
- (ICSFreeBusyTime)initWithPeriod:(id)a3;
- (unint64_t)fbtype;
- (void)setFbtype:(unint64_t)a3;
@end

@implementation ICSFreeBusyTime

- (ICSFreeBusyTime)initWithPeriod:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICSFreeBusyTime;
  return [(ICSProperty *)&v4 initWithValue:a3 type:5009];
}

- (unint64_t)fbtype
{
  v2 = [(ICSProperty *)self parameterValueForName:@"FBTYPE"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setFbtype:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(ICSProperty *)self setParameterValue:v4 forName:@"FBTYPE"];
}

@end