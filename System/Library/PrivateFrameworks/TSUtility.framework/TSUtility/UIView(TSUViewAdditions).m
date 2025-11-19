@interface UIView(TSUViewAdditions)
- (uint64_t)addBorderWithColor:()TSUViewAdditions;
@end

@implementation UIView(TSUViewAdditions)

- (uint64_t)addBorderWithColor:()TSUViewAdditions
{
  [objc_msgSend(a1 "layer")];
  v5 = [a3 CGColor];
  v6 = [a1 layer];

  return [v6 setBorderColor:v5];
}

@end