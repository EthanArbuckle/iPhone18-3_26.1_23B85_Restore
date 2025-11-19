@interface RUI
- (RUI)init;
@end

@implementation RUI

- (RUI)init
{
  v3.receiver = self;
  v3.super_class = RUI;
  return [(RUI *)&v3 init];
}

@end