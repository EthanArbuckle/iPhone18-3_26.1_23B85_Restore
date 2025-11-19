@interface PSSGResourceRequestEntry
+ (id)entryWithKey:(id)a3 stride:(id)a4;
+ (id)entryWithKey:(id)a3 stride:(id)a4 graphName:(id)a5;
- (BOOL)isEqual:(id)a3;
- (PSSGResourceRequestEntry)initWithKey:(id)a3 stride:(id)a4 graphName:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation PSSGResourceRequestEntry

- (PSSGResourceRequestEntry)initWithKey:(id)a3 stride:(id)a4 graphName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = PSSGResourceRequestEntry;
  v12 = [(PSSGResourceRequestEntry *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_resourceKey, a3);
    objc_storeStrong(&v13->_stride, a4);
    objc_storeStrong(&v13->_graphName, a5);
    v14 = v13;
  }

  return v13;
}

+ (id)entryWithKey:(id)a3 stride:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PSSGResourceRequestEntry alloc] initWithKey:v6 stride:v5 graphName:0];

  return v7;
}

+ (id)entryWithKey:(id)a3 stride:(id)a4 graphName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PSSGResourceRequestEntry alloc] initWithKey:v9 stride:v8 graphName:v7];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PSSGResourceRequestEntry *)self resourceKey];
  v6 = [v4 resourceKey];
  if ([v5 isEqual:v6])
  {
    v7 = [(PSSGResourceRequestEntry *)self stride];
    v8 = [v7 unsignedIntValue];
    v9 = [v4 stride];
    v10 = v8 == [v9 unsignedIntValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(PSSGResourceRequestEntry *)self resourceKey];
  v4 = [v3 hash];
  v5 = [(PSSGResourceRequestEntry *)self stride];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PSSGResourceRequestEntry *)self resourceKey];
  v7 = [(PSSGResourceRequestEntry *)self stride];
  v8 = [v3 stringWithFormat:@"<%@: %p, key %@, stride %@>", v5, self, v6, v7];

  return v8;
}

@end