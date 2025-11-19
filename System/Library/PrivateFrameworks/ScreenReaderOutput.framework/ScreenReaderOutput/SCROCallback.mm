@interface SCROCallback
- (SCROCallback)initWithCoder:(id)a3;
- (SCROCallback)initWithKey:(int)a3 object:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCROCallback

- (SCROCallback)initWithKey:(int)a3 object:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SCROCallback;
  v8 = [(SCROCallback *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_key = a3;
    objc_storeStrong(&v8->_object, a4);
  }

  return v9;
}

- (SCROCallback)initWithCoder:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"_key"];
  if (initWithCoder__onceToken != -1)
  {
    [SCROCallback initWithCoder:];
  }

  v6 = [v4 decodeObjectOfClasses:initWithCoder__classes forKey:@"_object"];
  v7 = [(SCROCallback *)self initWithKey:v5 object:v6];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void __30__SCROCallback_initWithCoder___block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:11];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14}];
  v3 = initWithCoder__classes;
  initWithCoder__classes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 encodeInt:key forKey:@"_key"];
  [v5 encodeObject:self->_object forKey:@"_object"];
}

@end