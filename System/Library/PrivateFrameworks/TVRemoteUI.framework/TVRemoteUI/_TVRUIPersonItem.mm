@interface _TVRUIPersonItem
+ (id)itemWithFactoidItem:(id)item;
+ (id)itemWithMediaInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpandable;
- (BOOL)isFactoid;
- (BOOL)isMediaInfo;
- (_TVRUIPersonItem)initWithFactoidItem:(id)item mediaInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation _TVRUIPersonItem

- (_TVRUIPersonItem)initWithFactoidItem:(id)item mediaInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = _TVRUIPersonItem;
  v9 = [(_TVRUIPersonItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_factoidItem, item);
    objc_storeStrong(&v10->_mediaInfo, info);
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v10->_identifier;
    v10->_identifier = uUID;
  }

  return v10;
}

+ (id)itemWithFactoidItem:(id)item
{
  itemCopy = item;
  v5 = [[self alloc] initWithFactoidItem:itemCopy mediaInfo:0];

  return v5;
}

+ (id)itemWithMediaInfo:(id)info
{
  infoCopy = info;
  v5 = [[self alloc] initWithFactoidItem:0 mediaInfo:infoCopy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[_TVRUIPersonItem isFactoid](self, "isFactoid")}];
  factoidItem = [(_TVRUIPersonItem *)self factoidItem];
  mediaInfo = [(_TVRUIPersonItem *)self mediaInfo];
  title = [mediaInfo title];
  v10 = [v3 stringWithFormat:@"<%@ %p: isFactoid=%@ factoidItem=%@; name=%@>", v5, self, v6, factoidItem, title];;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    identifier = [(_TVRUIPersonItem *)self identifier];
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
  identifier = [(_TVRUIPersonItem *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isFactoid
{
  factoidItem = [(_TVRUIPersonItem *)self factoidItem];
  v3 = factoidItem != 0;

  return v3;
}

- (BOOL)isMediaInfo
{
  mediaInfo = [(_TVRUIPersonItem *)self mediaInfo];
  v3 = mediaInfo != 0;

  return v3;
}

- (BOOL)isExpandable
{
  factoidItem = [(_TVRUIPersonItem *)self factoidItem];
  v3 = ([factoidItem factoidOptions] >> 2) & 1;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  factoidItem = [(_TVRUIPersonItem *)self factoidItem];
  mediaInfo = [(_TVRUIPersonItem *)self mediaInfo];
  v7 = [v4 initWithFactoidItem:factoidItem mediaInfo:mediaInfo];

  return v7;
}

@end