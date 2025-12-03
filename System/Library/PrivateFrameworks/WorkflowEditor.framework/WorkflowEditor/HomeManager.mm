@interface HomeManager
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeManager

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  sub_274453D10();
}

@end