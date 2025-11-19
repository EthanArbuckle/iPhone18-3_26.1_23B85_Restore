@interface WFScanChannel
- (NSString)description;
- (WFScanChannel)init;
- (WFScanChannel)initWithChannel:(int64_t)a3 flags:(int64_t)a4;
@end

@implementation WFScanChannel

- (WFScanChannel)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFScanChannel init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: Channel: %d Flags: %d>", v5, -[WFScanChannel channel](self, "channel"), -[WFScanChannel flags](self, "flags")];

  return v6;
}

- (WFScanChannel)initWithChannel:(int64_t)a3 flags:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = WFScanChannel;
  result = [(WFScanChannel *)&v7 init];
  if (result)
  {
    result->_channel = a3;
    result->_flags = a4;
  }

  return result;
}

@end