@interface MBKeychainItem
+ (id)keychainItemWithAttributes:(id)a3;
- (MBKeychainItem)initWithAttributes:(id)a3;
- (void)dealloc;
@end

@implementation MBKeychainItem

+ (id)keychainItemWithAttributes:(id)a3
{
  v3 = [[MBKeychainItem alloc] initWithAttributes:a3];

  return v3;
}

- (MBKeychainItem)initWithAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = MBKeychainItem;
  v4 = [(MBKeychainItem *)&v6 init];
  if (v4)
  {
    v4->_attributes = [a3 mutableCopy];
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