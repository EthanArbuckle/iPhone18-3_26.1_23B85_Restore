@interface TBFetchedTile
+ (id)fetchedTileWithKey:(unint64_t)a3 etag:(id)a4 created:(id)a5;
- (BOOL)_isEqualToFetchedTile:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TBFetchedTile)initWithKey:(unint64_t)a3 etag:(id)a4 created:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TBFetchedTile

+ (id)fetchedTileWithKey:(unint64_t)a3 etag:(id)a4 created:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithKey:a3 etag:v9 created:v8];

  return v10;
}

- (TBFetchedTile)initWithKey:(unint64_t)a3 etag:(id)a4 created:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = TBFetchedTile;
  v10 = [(TBFetchedTile *)&v15 init];
  etag = v10->_etag;
  v10->_key = a3;
  v10->_etag = v8;
  v12 = v8;

  created = v10->_created;
  v10->_created = v9;

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setKey:{-[TBFetchedTile key](self, "key")}];
  v5 = [(TBFetchedTile *)self etag];
  [v4 setEtag:v5];

  v6 = [(TBFetchedTile *)self created];
  [v4 setCreated:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TBFetchedTile *)self _isEqualToFetchedTile:v4];

  return v5;
}

- (BOOL)_isEqualToFetchedTile:(id)a3
{
  v4 = a3;
  v5 = [(TBFetchedTile *)self key];
  v6 = [v4 key];

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