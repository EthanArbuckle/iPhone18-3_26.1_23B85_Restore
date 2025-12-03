@interface PurchaseManifestItem
- (PurchaseManifestItem)init;
- (PurchaseManifestItem)initWithManifestItemDictionary:(id)dictionary;
- (void)_setValue:(id)value forKey:(id)key;
- (void)dealloc;
@end

@implementation PurchaseManifestItem

- (PurchaseManifestItem)init
{
  v4.receiver = self;
  v4.super_class = PurchaseManifestItem;
  v2 = [(PurchaseManifestItem *)&v4 init];
  if (v2)
  {
    v2->_dictionary = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (PurchaseManifestItem)initWithManifestItemDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = PurchaseManifestItem;
  v4 = [(PurchaseManifestItem *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [dictionary mutableCopy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PurchaseManifestItem;
  [(PurchaseManifestItem *)&v3 dealloc];
}

- (void)_setValue:(id)value forKey:(id)key
{
  dictionary = self->_dictionary;
  if (value)
  {
    [(NSMutableDictionary *)dictionary setObject:value forKey:key];
  }

  else
  {
    [(NSMutableDictionary *)dictionary removeObjectForKey:key];
  }
}

@end