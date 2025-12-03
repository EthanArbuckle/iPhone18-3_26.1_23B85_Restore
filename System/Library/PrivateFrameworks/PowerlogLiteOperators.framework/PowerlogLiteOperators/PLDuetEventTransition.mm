@interface PLDuetEventTransition
- (id)description;
@end

@implementation PLDuetEventTransition

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  bundleID = [(PLDuetEventTransition *)self bundleID];
  date = [(PLDuetEventTransition *)self date];
  [date timeIntervalSince1970];
  v7 = [v3 stringWithFormat:@"bundleID=%@, date=%f, isStart=%i", bundleID, v6, -[PLDuetEventTransition isStart](self, "isStart")];

  return v7;
}

@end