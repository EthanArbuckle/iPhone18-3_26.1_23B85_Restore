@interface _TVRUIMediaItem
+ (id)itemWithFactoidItem:(id)item;
+ (id)itemWithRole:(id)role;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpandable;
- (BOOL)isFactoid;
- (BOOL)isRole;
- (_TVRUIMediaItem)initWithFactoidItem:(id)item role:(id)role;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation _TVRUIMediaItem

- (_TVRUIMediaItem)initWithFactoidItem:(id)item role:(id)role
{
  itemCopy = item;
  roleCopy = role;
  v14.receiver = self;
  v14.super_class = _TVRUIMediaItem;
  v9 = [(_TVRUIMediaItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_factoidItem, item);
    objc_storeStrong(&v10->_role, role);
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v10->_identifier;
    v10->_identifier = uUID;
  }

  return v10;
}

+ (id)itemWithFactoidItem:(id)item
{
  itemCopy = item;
  v5 = [[self alloc] initWithFactoidItem:itemCopy role:0];

  return v5;
}

+ (id)itemWithRole:(id)role
{
  roleCopy = role;
  v5 = [[self alloc] initWithFactoidItem:0 role:roleCopy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[_TVRUIMediaItem isFactoid](self, "isFactoid")}];
  factoidItem = [(_TVRUIMediaItem *)self factoidItem];
  role = [(_TVRUIMediaItem *)self role];
  v9 = [v3 stringWithFormat:@"<%@ %p: isFactoid=%@ factoid=%@; role=%@>", v5, self, v6, factoidItem, role];;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    identifier = [(_TVRUIMediaItem *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(_TVRUIMediaItem *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isFactoid
{
  factoidItem = [(_TVRUIMediaItem *)self factoidItem];
  v3 = factoidItem != 0;

  return v3;
}

- (BOOL)isRole
{
  role = [(_TVRUIMediaItem *)self role];
  v3 = role != 0;

  return v3;
}

- (BOOL)isExpandable
{
  factoidItem = [(_TVRUIMediaItem *)self factoidItem];
  v3 = ([factoidItem factoidOptions] >> 2) & 1;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  factoidItem = [(_TVRUIMediaItem *)self factoidItem];
  role = [(_TVRUIMediaItem *)self role];
  v7 = [v4 initWithFactoidItem:factoidItem role:role];

  return v7;
}

@end