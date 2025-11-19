@interface PLPidAndProcessName
- (id)description;
@end

@implementation PLPidAndProcessName

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PLPidAndProcessName *)self pid];
  v5 = [(PLPidAndProcessName *)self processName];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end