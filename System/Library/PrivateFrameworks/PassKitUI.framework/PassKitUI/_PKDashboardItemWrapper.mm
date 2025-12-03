@interface _PKDashboardItemWrapper
- (_PKDashboardItemWrapper)initWithDashboardItem:(id)item;
@end

@implementation _PKDashboardItemWrapper

- (_PKDashboardItemWrapper)initWithDashboardItem:(id)item
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = _PKDashboardItemWrapper;
  v6 = [(_PKDashboardItemWrapper *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedItem, item);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = uUIDString;
  }

  return v7;
}

@end