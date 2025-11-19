@interface PhotosDetailsTimeWidgetViewModel
- (void)clipBoardChangedWithPasteboardNotification:(id)a3;
- (void)photoLibraryDidChange:(id)a3;
@end

@implementation PhotosDetailsTimeWidgetViewModel

- (void)clipBoardChangedWithPasteboardNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A3E94958(v4);
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A3E94C40(v4);
}

@end