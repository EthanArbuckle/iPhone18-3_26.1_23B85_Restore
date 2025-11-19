@interface _TVRUIMediaItem
+ (id)itemWithFactoidItem:(id)a3;
+ (id)itemWithRole:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpandable;
- (BOOL)isFactoid;
- (BOOL)isRole;
- (_TVRUIMediaItem)initWithFactoidItem:(id)a3 role:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _TVRUIMediaItem

- (_TVRUIMediaItem)initWithFactoidItem:(id)a3 role:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _TVRUIMediaItem;
  v9 = [(_TVRUIMediaItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_factoidItem, a3);
    objc_storeStrong(&v10->_role, a4);
    v11 = [MEMORY[0x277CCAD78] UUID];
    identifier = v10->_identifier;
    v10->_identifier = v11;
  }

  return v10;
}

+ (id)itemWithFactoidItem:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFactoidItem:v4 role:0];

  return v5;
}

+ (id)itemWithRole:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFactoidItem:0 role:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[_TVRUIMediaItem isFactoid](self, "isFactoid")}];
  v7 = [(_TVRUIMediaItem *)self factoidItem];
  v8 = [(_TVRUIMediaItem *)self role];
  v9 = [v3 stringWithFormat:@"<%@ %p: isFactoid=%@ factoid=%@; role=%@>", v5, self, v6, v7, v8];;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(_TVRUIMediaItem *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(_TVRUIMediaItem *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isFactoid
{
  v2 = [(_TVRUIMediaItem *)self factoidItem];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isRole
{
  v2 = [(_TVRUIMediaItem *)self role];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isExpandable
{
  v2 = [(_TVRUIMediaItem *)self factoidItem];
  v3 = ([v2 factoidOptions] >> 2) & 1;

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(_TVRUIMediaItem *)self factoidItem];
  v6 = [(_TVRUIMediaItem *)self role];
  v7 = [v4 initWithFactoidItem:v5 role:v6];

  return v7;
}

@end