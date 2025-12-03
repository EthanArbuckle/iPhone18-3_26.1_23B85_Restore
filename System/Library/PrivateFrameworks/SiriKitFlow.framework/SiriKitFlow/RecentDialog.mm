@interface RecentDialog
- (void)encodeWithCoder:(id)coder;
@end

@implementation RecentDialog

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  RecentDialog.encode(with:)(coderCopy);
}

@end