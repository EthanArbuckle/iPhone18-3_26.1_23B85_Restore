@interface XPCManager
- (void)didReceiveEvent:(id)a3;
- (void)didReceiveMessage:(id)a3;
@end

@implementation XPCManager

- (void)didReceiveMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22B1025B0(v4);
}

- (void)didReceiveEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22B1027A8(v4);
}

@end