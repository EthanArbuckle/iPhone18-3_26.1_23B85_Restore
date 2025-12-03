@interface PGResolvablePublicEventBusinessItem
- (PGResolvablePublicEventBusinessItem)initWithPublicEventNode:(id)node consolidatedAddress:(id)address businessItemMuid:(unint64_t)muid;
@end

@implementation PGResolvablePublicEventBusinessItem

- (PGResolvablePublicEventBusinessItem)initWithPublicEventNode:(id)node consolidatedAddress:(id)address businessItemMuid:(unint64_t)muid
{
  nodeCopy = node;
  addressCopy = address;
  v14.receiver = self;
  v14.super_class = PGResolvablePublicEventBusinessItem;
  v11 = [(PGResolvablePublicEventBusinessItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_publicEventNode, node);
    objc_storeStrong(&v12->_consolidatedAddress, address);
    v12->_businessItemMuid = muid;
  }

  return v12;
}

@end