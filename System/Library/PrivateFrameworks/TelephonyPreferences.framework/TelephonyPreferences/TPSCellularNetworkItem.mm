@interface TPSCellularNetworkItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCellularNetworkItem:(id)item;
- (TPSCellularNetworkItem)init;
- (TPSCellularNetworkItem)initWithIdentifier:(id)identifier name:(id)name localizedName:(id)localizedName;
- (unint64_t)hash;
@end

@implementation TPSCellularNetworkItem

- (TPSCellularNetworkItem)init
{
  [(TPSCellularNetworkItem *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCellularNetworkItem)initWithIdentifier:(id)identifier name:(id)name localizedName:(id)localizedName
{
  identifierCopy = identifier;
  nameCopy = name;
  localizedNameCopy = localizedName;
  v19.receiver = self;
  v19.super_class = TPSCellularNetworkItem;
  v11 = [(TPSCellularNetworkItem *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [localizedNameCopy copy];
    localizedName = v11->_localizedName;
    v11->_localizedName = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCellularNetworkItem *)self isEqualToCellularNetworkItem:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  identifier = [(TPSCellularNetworkItem *)self identifier];
  v4 = [identifier hash];
  name = [(TPSCellularNetworkItem *)self name];
  v6 = [name hash] ^ v4;
  localizedName = [(TPSCellularNetworkItem *)self localizedName];
  v8 = [localizedName hash];

  return v6 ^ v8;
}

- (BOOL)isEqualToCellularNetworkItem:(id)item
{
  itemCopy = item;
  identifier = [(TPSCellularNetworkItem *)self identifier];
  identifier2 = [itemCopy identifier];
  if ([identifier isEqualToString:identifier2])
  {
    name = [(TPSCellularNetworkItem *)self name];
    name2 = [itemCopy name];
    if ([name isEqualToString:name2])
    {
      localizedName = [(TPSCellularNetworkItem *)self localizedName];
      localizedName2 = [itemCopy localizedName];
      v11 = [localizedName isEqualToString:localizedName2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end