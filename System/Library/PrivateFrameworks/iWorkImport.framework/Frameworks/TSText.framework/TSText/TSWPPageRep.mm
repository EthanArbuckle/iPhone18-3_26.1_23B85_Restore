@interface TSWPPageRep
- (void)updateFromLayout;
@end

@implementation TSWPPageRep

- (void)updateFromLayout
{
  v2.receiver = self;
  v2.super_class = TSWPPageRep;
  [(TSDRep *)&v2 updateFromLayout];
}

@end