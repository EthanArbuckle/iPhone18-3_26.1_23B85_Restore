@interface PSResourceRequest
+ (id)requestWithKey:(id)key stride:(id)stride inputType:(int64_t)type graph:(id)graph;
- (BOOL)isEqual:(id)equal;
- (PSResourceRequest)initWithKey:(id)key stride:(id)stride inputType:(int64_t)type graph:(id)graph;
- (id)description;
- (id)resourceRequestEntry;
- (unint64_t)hash;
@end

@implementation PSResourceRequest

+ (id)requestWithKey:(id)key stride:(id)stride inputType:(int64_t)type graph:(id)graph
{
  graphCopy = graph;
  strideCopy = stride;
  keyCopy = key;
  v12 = [[PSResourceRequest alloc] initWithKey:keyCopy stride:strideCopy inputType:type graph:graphCopy];

  return v12;
}

- (PSResourceRequest)initWithKey:(id)key stride:(id)stride inputType:(int64_t)type graph:(id)graph
{
  keyCopy = key;
  strideCopy = stride;
  graphCopy = graph;
  v18.receiver = self;
  v18.super_class = PSResourceRequest;
  v14 = [(PSResourceRequest *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_resourceKey, key);
    objc_storeStrong(&v15->_stride, stride);
    v15->_inputType = type;
    objc_storeStrong(&v15->_graph, graph);
    v16 = v15;
  }

  return v15;
}

- (id)resourceRequestEntry
{
  v3 = +[PLSSettings currentSettings];
  enableFastTransition = [v3 enableFastTransition];

  v5 = MEMORY[0x277D3E828];
  resourceKey = [(PSResourceRequest *)self resourceKey];
  stride = [(PSResourceRequest *)self stride];
  if (enableFastTransition)
  {
    graph = [(PSResourceRequest *)self graph];
    name = [graph name];
    v10 = [v5 entryWithKey:resourceKey stride:stride graphName:name];
  }

  else
  {
    v10 = [v5 entryWithKey:resourceKey stride:stride graphName:0];
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  stride = [(PSResourceRequest *)self stride];
  unsignedIntValue = [stride unsignedIntValue];
  stride2 = [equalCopy stride];
  if (unsignedIntValue == [stride2 unsignedIntValue] && (v8 = -[PSResourceRequest inputType](self, "inputType"), v8 == objc_msgSend(equalCopy, "inputType")))
  {
    resourceKey = [(PSResourceRequest *)self resourceKey];
    resourceKey2 = [equalCopy resourceKey];
    v11 = [resourceKey isEqual:resourceKey2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  resourceKey = [(PSResourceRequest *)self resourceKey];
  v4 = [resourceKey hash];
  stride = [(PSResourceRequest *)self stride];
  v6 = [stride hash] ^ v4;
  v7 = v6 ^ ([(PSResourceRequest *)self inputType]<< 24);

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  resourceKey = [(PSResourceRequest *)self resourceKey];
  stride = [(PSResourceRequest *)self stride];
  v8 = [v3 stringWithFormat:@"<%@: %p, key %@, stride %@>", v5, self, resourceKey, stride];

  return v8;
}

@end