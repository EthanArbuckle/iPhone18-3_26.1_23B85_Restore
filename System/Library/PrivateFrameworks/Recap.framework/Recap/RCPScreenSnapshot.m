@interface RCPScreenSnapshot
- (RCPScreenSnapshot)init;
- (id)description;
@end

@implementation RCPScreenSnapshot

- (RCPScreenSnapshot)init
{
  v5.receiver = self;
  v5.super_class = RCPScreenSnapshot;
  v2 = [(RCPScreenSnapshot *)&v5 init];
  v2->_timestamp = mach_absolute_time();
  v3 = init_i++;
  v2->_index = v3;
  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p timestamp=%llu>", v5, self, -[RCPScreenSnapshot timestamp](self, "timestamp")];

  return v6;
}

@end