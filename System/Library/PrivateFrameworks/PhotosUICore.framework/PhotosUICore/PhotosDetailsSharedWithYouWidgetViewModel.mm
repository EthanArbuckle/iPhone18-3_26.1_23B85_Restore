@interface PhotosDetailsSharedWithYouWidgetViewModel
- (void)syndicationAttributionInfoDidChange:(id)change;
@end

@implementation PhotosDetailsSharedWithYouWidgetViewModel

- (void)syndicationAttributionInfoDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1A418D074(changeCopy);
}

@end