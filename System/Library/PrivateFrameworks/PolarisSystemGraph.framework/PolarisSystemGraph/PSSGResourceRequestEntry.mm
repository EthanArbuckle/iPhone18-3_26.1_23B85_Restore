@interface PSSGResourceRequestEntry
+ (id)entryWithKey:(id)key stride:(id)stride;
+ (id)entryWithKey:(id)key stride:(id)stride graphName:(id)name;
- (BOOL)isEqual:(id)equal;
- (PSSGResourceRequestEntry)initWithKey:(id)key stride:(id)stride graphName:(id)name;
- (id)description;
- (unint64_t)hash;
@end

@implementation PSSGResourceRequestEntry

- (PSSGResourceRequestEntry)initWithKey:(id)key stride:(id)stride graphName:(id)name
{
  keyCopy = key;
  strideCopy = stride;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = PSSGResourceRequestEntry;
  v12 = [(PSSGResourceRequestEntry *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_resourceKey, key);
    objc_storeStrong(&v13->_stride, stride);
    objc_storeStrong(&v13->_graphName, name);
    v14 = v13;
  }

  return v13;
}

+ (id)entryWithKey:(id)key stride:(id)stride
{
  strideCopy = stride;
  keyCopy = key;
  v7 = [[PSSGResourceRequestEntry alloc] initWithKey:keyCopy stride:strideCopy graphName:0];

  return v7;
}

+ (id)entryWithKey:(id)key stride:(id)stride graphName:(id)name
{
  nameCopy = name;
  strideCopy = stride;
  keyCopy = key;
  v10 = [[PSSGResourceRequestEntry alloc] initWithKey:keyCopy stride:strideCopy graphName:nameCopy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  resourceKey = [(PSSGResourceRequestEntry *)self resourceKey];
  resourceKey2 = [equalCopy resourceKey];
  if ([resourceKey isEqual:resourceKey2])
  {
    stride = [(PSSGResourceRequestEntry *)self stride];
    unsignedIntValue = [stride unsignedIntValue];
    stride2 = [equalCopy stride];
    v10 = unsignedIntValue == [stride2 unsignedIntValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  resourceKey = [(PSSGResourceRequestEntry *)self resourceKey];
  v4 = [resourceKey hash];
  stride = [(PSSGResourceRequestEntry *)self stride];
  v6 = [stride hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  resourceKey = [(PSSGResourceRequestEntry *)self resourceKey];
  stride = [(PSSGResourceRequestEntry *)self stride];
  v8 = [v3 stringWithFormat:@"<%@: %p, key %@, stride %@>", v5, self, resourceKey, stride];

  return v8;
}

@end