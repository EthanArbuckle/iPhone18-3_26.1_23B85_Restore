@interface LinkViewDelegate
- (void)_linkViewMetadataDidBecomeComplete:(id)complete;
@end

@implementation LinkViewDelegate

- (void)_linkViewMetadataDidBecomeComplete:(id)complete
{
  completeCopy = complete;
  selfCopy = self;
  sub_267FF3E3C(completeCopy);
}

@end