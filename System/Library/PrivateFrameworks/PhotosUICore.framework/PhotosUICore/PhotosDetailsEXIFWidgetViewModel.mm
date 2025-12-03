@interface PhotosDetailsEXIFWidgetViewModel
- (void)photoLibraryDidChange:(id)change;
@end

@implementation PhotosDetailsEXIFWidgetViewModel

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1A46BFFC0();
}

@end