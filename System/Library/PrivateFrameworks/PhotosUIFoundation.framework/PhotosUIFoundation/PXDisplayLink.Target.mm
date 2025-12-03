@interface PXDisplayLink.Target
- (void)tickWithDisplayLink:(id)link;
@end

@implementation PXDisplayLink.Target

- (void)tickWithDisplayLink:(id)link
{
  linkCopy = link;

  sub_1B3FB4310();
}

@end