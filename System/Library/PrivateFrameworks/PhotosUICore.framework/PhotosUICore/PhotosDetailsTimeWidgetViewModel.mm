@interface PhotosDetailsTimeWidgetViewModel
- (void)clipBoardChangedWithPasteboardNotification:(id)notification;
- (void)photoLibraryDidChange:(id)change;
@end

@implementation PhotosDetailsTimeWidgetViewModel

- (void)clipBoardChangedWithPasteboardNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1A3E94958(notificationCopy);
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1A3E94C40(changeCopy);
}

@end