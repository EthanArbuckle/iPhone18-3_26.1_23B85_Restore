@interface PLPidAndProcessName
- (id)description;
@end

@implementation PLPidAndProcessName

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PLPidAndProcessName *)self pid];
  processName = [(PLPidAndProcessName *)self processName];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, processName];

  return v6;
}

@end