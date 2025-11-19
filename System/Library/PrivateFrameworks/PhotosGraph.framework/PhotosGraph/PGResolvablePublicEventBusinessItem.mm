@interface PGResolvablePublicEventBusinessItem
- (PGResolvablePublicEventBusinessItem)initWithPublicEventNode:(id)a3 consolidatedAddress:(id)a4 businessItemMuid:(unint64_t)a5;
@end

@implementation PGResolvablePublicEventBusinessItem

- (PGResolvablePublicEventBusinessItem)initWithPublicEventNode:(id)a3 consolidatedAddress:(id)a4 businessItemMuid:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PGResolvablePublicEventBusinessItem;
  v11 = [(PGResolvablePublicEventBusinessItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_publicEventNode, a3);
    objc_storeStrong(&v12->_consolidatedAddress, a4);
    v12->_businessItemMuid = a5;
  }

  return v12;
}

@end