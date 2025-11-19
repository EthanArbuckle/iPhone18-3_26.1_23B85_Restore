@interface _PKDashboardItemWrapper
- (_PKDashboardItemWrapper)initWithDashboardItem:(id)a3;
@end

@implementation _PKDashboardItemWrapper

- (_PKDashboardItemWrapper)initWithDashboardItem:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _PKDashboardItemWrapper;
  v6 = [(_PKDashboardItemWrapper *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedItem, a3);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = v9;
  }

  return v7;
}

@end