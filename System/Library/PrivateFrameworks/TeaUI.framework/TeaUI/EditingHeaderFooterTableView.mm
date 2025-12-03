@interface EditingHeaderFooterTableView
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
@end

@implementation EditingHeaderFooterTableView

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  EditingHeaderFooterTableView.setEditing(_:animated:)(editing, animated);
}

@end