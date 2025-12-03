@interface HomeManager
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeManager

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  sub_268BBEF10(homesCopy);
}

@end