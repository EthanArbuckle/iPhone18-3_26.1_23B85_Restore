@interface TLKDescriptionContainerBoxView
- (id)calculateViewForFirstBaselineLayout;
@end

@implementation TLKDescriptionContainerBoxView

- (id)calculateViewForFirstBaselineLayout
{
  selfCopy = self;
  viewForFirstAndLastBaseline = [(TLKDescriptionContainerBoxView *)self viewForFirstAndLastBaseline];
  v4 = viewForFirstAndLastBaseline;
  if (viewForFirstAndLastBaseline)
  {
    selfCopy = viewForFirstAndLastBaseline;
  }

  v5 = selfCopy;

  return selfCopy;
}

@end