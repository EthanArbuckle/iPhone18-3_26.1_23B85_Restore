@interface PSResourceRequest
+ (id)requestWithKey:(id)a3 stride:(id)a4 inputType:(int64_t)a5 graph:(id)a6;
- (BOOL)isEqual:(id)a3;
- (PSResourceRequest)initWithKey:(id)a3 stride:(id)a4 inputType:(int64_t)a5 graph:(id)a6;
- (id)description;
- (id)resourceRequestEntry;
- (unint64_t)hash;
@end

@implementation PSResourceRequest

+ (id)requestWithKey:(id)a3 stride:(id)a4 inputType:(int64_t)a5 graph:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[PSResourceRequest alloc] initWithKey:v11 stride:v10 inputType:a5 graph:v9];

  return v12;
}

- (PSResourceRequest)initWithKey:(id)a3 stride:(id)a4 inputType:(int64_t)a5 graph:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = PSResourceRequest;
  v14 = [(PSResourceRequest *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_resourceKey, a3);
    objc_storeStrong(&v15->_stride, a4);
    v15->_inputType = a5;
    objc_storeStrong(&v15->_graph, a6);
    v16 = v15;
  }

  return v15;
}

- (id)resourceRequestEntry
{
  v3 = +[PLSSettings currentSettings];
  v4 = [v3 enableFastTransition];

  v5 = MEMORY[0x277D3E828];
  v6 = [(PSResourceRequest *)self resourceKey];
  v7 = [(PSResourceRequest *)self stride];
  if (v4)
  {
    v8 = [(PSResourceRequest *)self graph];
    v9 = [v8 name];
    v10 = [v5 entryWithKey:v6 stride:v7 graphName:v9];
  }

  else
  {
    v10 = [v5 entryWithKey:v6 stride:v7 graphName:0];
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PSResourceRequest *)self stride];
  v6 = [v5 unsignedIntValue];
  v7 = [v4 stride];
  if (v6 == [v7 unsignedIntValue] && (v8 = -[PSResourceRequest inputType](self, "inputType"), v8 == objc_msgSend(v4, "inputType")))
  {
    v9 = [(PSResourceRequest *)self resourceKey];
    v10 = [v4 resourceKey];
    v11 = [v9 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(PSResourceRequest *)self resourceKey];
  v4 = [v3 hash];
  v5 = [(PSResourceRequest *)self stride];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ ([(PSResourceRequest *)self inputType]<< 24);

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PSResourceRequest *)self resourceKey];
  v7 = [(PSResourceRequest *)self stride];
  v8 = [v3 stringWithFormat:@"<%@: %p, key %@, stride %@>", v5, self, v6, v7];

  return v8;
}

@end