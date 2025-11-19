@interface PurchaseManifestItem
- (PurchaseManifestItem)init;
- (PurchaseManifestItem)initWithManifestItemDictionary:(id)a3;
- (void)_setValue:(id)a3 forKey:(id)a4;
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

- (PurchaseManifestItem)initWithManifestItemDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = PurchaseManifestItem;
  v4 = [(PurchaseManifestItem *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [a3 mutableCopy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PurchaseManifestItem;
  [(PurchaseManifestItem *)&v3 dealloc];
}

- (void)_setValue:(id)a3 forKey:(id)a4
{
  dictionary = self->_dictionary;
  if (a3)
  {
    [(NSMutableDictionary *)dictionary setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)dictionary removeObjectForKey:a4];
  }
}

@end