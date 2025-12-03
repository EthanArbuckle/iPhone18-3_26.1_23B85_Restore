@interface TBFetchedTile
+ (id)fetchedTileWithKey:(unint64_t)key etag:(id)etag created:(id)created;
- (BOOL)_isEqualToFetchedTile:(id)tile;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TBFetchedTile)initWithKey:(unint64_t)key etag:(id)etag created:(id)created;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TBFetchedTile

+ (id)fetchedTileWithKey:(unint64_t)key etag:(id)etag created:(id)created
{
  createdCopy = created;
  etagCopy = etag;
  v10 = [[self alloc] initWithKey:key etag:etagCopy created:createdCopy];

  return v10;
}

- (TBFetchedTile)initWithKey:(unint64_t)key etag:(id)etag created:(id)created
{
  etagCopy = etag;
  createdCopy = created;
  v15.receiver = self;
  v15.super_class = TBFetchedTile;
  v10 = [(TBFetchedTile *)&v15 init];
  etag = v10->_etag;
  v10->_key = key;
  v10->_etag = etagCopy;
  v12 = etagCopy;

  created = v10->_created;
  v10->_created = createdCopy;

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setKey:{-[TBFetchedTile key](self, "key")}];
  etag = [(TBFetchedTile *)self etag];
  [v4 setEtag:etag];

  created = [(TBFetchedTile *)self created];
  [v4 setCreated:created];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TBFetchedTile *)self _isEqualToFetchedTile:equalCopy];

  return v5;
}

- (BOOL)_isEqualToFetchedTile:(id)tile
{
  tileCopy = tile;
  v5 = [(TBFetchedTile *)self key];
  v6 = [tileCopy key];

  return v5 == v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p ", v5, self];

  [v6 appendFormat:@"key: %llu", -[TBFetchedTile key](self, "key")];
  [v6 appendString:@">"];

  return v6;
}

@end