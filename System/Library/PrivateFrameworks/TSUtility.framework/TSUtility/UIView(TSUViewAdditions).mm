@interface UIView(TSUViewAdditions)
- (uint64_t)addBorderWithColor:()TSUViewAdditions;
@end

@implementation UIView(TSUViewAdditions)

- (uint64_t)addBorderWithColor:()TSUViewAdditions
{
  [objc_msgSend(self "layer")];
  cGColor = [a3 CGColor];
  layer = [self layer];

  return [layer setBorderColor:cGColor];
}

@end