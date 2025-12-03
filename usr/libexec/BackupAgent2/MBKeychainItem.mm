@interface MBKeychainItem
+ (id)keychainItemWithAttributes:(id)attributes;
- (MBKeychainItem)initWithAttributes:(id)attributes;
- (void)dealloc;
@end

@implementation MBKeychainItem

+ (id)keychainItemWithAttributes:(id)attributes
{
  v3 = [[MBKeychainItem alloc] initWithAttributes:attributes];

  return v3;
}

- (MBKeychainItem)initWithAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = MBKeychainItem;
  v4 = [(MBKeychainItem *)&v6 init];
  if (v4)
  {
    v4->_attributes = [attributes mutableCopy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBKeychainItem;
  [(MBKeychainItem *)&v3 dealloc];
}

@end