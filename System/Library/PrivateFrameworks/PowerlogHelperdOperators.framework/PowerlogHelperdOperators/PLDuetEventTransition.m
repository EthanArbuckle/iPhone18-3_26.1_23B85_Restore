@interface PLDuetEventTransition
- (id)description;
@end

@implementation PLDuetEventTransition

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PLDuetEventTransition *)self bundleID];
  v5 = [(PLDuetEventTransition *)self date];
  [v5 timeIntervalSince1970];
  v7 = [v3 stringWithFormat:@"bundleID=%@, date=%f, isStart=%i", v4, v6, -[PLDuetEventTransition isStart](self, "isStart")];

  return v7;
}

@end